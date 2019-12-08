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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1124 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 2, i64* %RAX.i1124, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i, align 4
  %15 = add i64 %10, 11
  store i64 %15, i64* %PC.i, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RSI.i1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI.i1502, align 8
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1608 = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -20
  %26 = load i32, i32* %EDX.i1608, align 4
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1628 = bitcast %union.anon* %30 to i32*
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i32, i32* %ECX.i1628, align 4
  %34 = load i64, i64* %PC.i, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC.i, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -32
  %39 = load i64, i64* %R8.i, align 8
  %40 = load i64, i64* %PC.i, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %42, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -40
  %45 = load i64, i64* %R9.i, align 8
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %RCX.i1621 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = load i64, i64* %PC.i, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC.i, align 8
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RCX.i1621, align 8
  %EAX.i1618 = bitcast %union.anon* %11 to i32*
  %56 = add i64 %49, -56
  %57 = load i32, i32* %EAX.i1618, align 4
  %58 = add i64 %51, 6
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %ECX.i1628, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %PC.i, align 8
  store i64 %61, i64* %RAX.i1124, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %65 = sext i32 %60 to i64
  %66 = lshr i64 %65, 32
  store i64 %66, i64* %63, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -56
  %69 = add i64 %62, 6
  store i64 %69, i64* %PC.i, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RCX.i1621, align 8
  %73 = add i64 %62, 8
  store i64 %73, i64* %PC.i, align 8
  %74 = zext i32 %60 to i64
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %76 = sext i32 %71 to i64
  %77 = shl nuw i64 %66, 32
  %78 = or i64 %77, %74
  %79 = sdiv i64 %78, %76
  %80 = shl i64 %79, 32
  %81 = ashr exact i64 %80, 32
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %85, label %83

; <label>:83:                                     ; preds = %entry
  %84 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %73, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EDX.i1608, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  %.pre21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %routine_idivl__ecx.exit1606

; <label>:85:                                     ; preds = %entry
  %86 = srem i64 %78, %76
  %87 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %88 = and i64 %79, 4294967295
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %90 = and i64 %86, 4294967295
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %93, align 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %95, align 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %96, align 1
  %97 = trunc i64 %86 to i32
  br label %routine_idivl__ecx.exit1606

routine_idivl__ecx.exit1606:                      ; preds = %85, %83
  %.pre-phi31 = phi i8* [ %96, %85 ], [ %.pre30, %83 ]
  %.pre-phi29 = phi i8* [ %95, %85 ], [ %.pre28, %83 ]
  %.pre-phi27 = phi i8* [ %94, %85 ], [ %.pre26, %83 ]
  %.pre-phi25 = phi i8* [ %93, %85 ], [ %.pre24, %83 ]
  %.pre-phi23 = phi i8* [ %92, %85 ], [ %.pre22, %83 ]
  %.pre-phi = phi i8* [ %91, %85 ], [ %.pre21, %83 ]
  %98 = phi i64 [ %73, %85 ], [ %.pre2, %83 ]
  %99 = phi i32 [ %97, %85 ], [ %.pre1, %83 ]
  %100 = phi i64 [ %67, %85 ], [ %.pre, %83 ]
  %101 = phi %struct.Memory* [ %2, %85 ], [ %84, %83 ]
  %102 = add i64 %100, -44
  %103 = add i64 %98, 3
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %102 to i32*
  store i32 %99, i32* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -44
  %107 = load i64, i64* %PC.i, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC.i, align 8
  %109 = inttoptr i64 %106 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, -1
  %112 = icmp eq i32 %110, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %.pre-phi, align 1
  %114 = and i32 %111, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %.pre-phi23, align 1
  %119 = xor i32 %110, %111
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %.pre-phi25, align 1
  %123 = icmp eq i32 %111, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %.pre-phi27, align 1
  %125 = lshr i32 %111, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %.pre-phi29, align 1
  %127 = lshr i32 %110, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %.pre-phi31, align 1
  %132 = icmp ne i8 %126, 0
  %133 = xor i1 %132, %130
  %.v = select i1 %133, i64 122, i64 10
  %134 = add i64 %107, %.v
  store i64 %134, i64* %3, align 8
  br i1 %133, label %block_.L_4020b9, label %block_402049

block_402049:                                     ; preds = %routine_idivl__ecx.exit1606
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC.i, align 8
  %136 = load i32, i32* %109, align 4
  %137 = add i32 %136, -1
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX.i1124, align 8
  %139 = icmp eq i32 %136, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %.pre-phi, align 1
  %141 = and i32 %137, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %.pre-phi23, align 1
  %146 = xor i32 %136, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %.pre-phi25, align 1
  %150 = icmp eq i32 %137, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %.pre-phi27, align 1
  %152 = lshr i32 %137, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %.pre-phi29, align 1
  %154 = lshr i32 %136, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %.pre-phi31, align 1
  %159 = add i64 %134, 9
  store i64 %159, i64* %PC.i, align 8
  store i32 %137, i32* %109, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -48
  %162 = load i64, i64* %PC.i, align 8
  %163 = add i64 %162, 7
  store i64 %163, i64* %PC.i, align 8
  %164 = inttoptr i64 %161 to i32*
  store i32 0, i32* %164, align 4
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %166 = bitcast [32 x %union.VectorReg]* %165 to i8*
  %167 = bitcast [32 x %union.VectorReg]* %165 to float*
  %168 = getelementptr inbounds i8, i8* %166, i64 4
  %169 = bitcast i8* %168 to float*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %171 = bitcast i64* %170 to float*
  %172 = getelementptr inbounds i8, i8* %166, i64 12
  %173 = bitcast i8* %172 to float*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %175 = bitcast %union.VectorReg* %174 to i8*
  %176 = bitcast %union.VectorReg* %174 to float*
  %177 = getelementptr inbounds i8, i8* %175, i64 4
  %178 = bitcast i8* %177 to float*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %180 = bitcast i64* %179 to float*
  %181 = getelementptr inbounds i8, i8* %175, i64 12
  %182 = bitcast i8* %181 to float*
  %RDX.i1556 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %183 = bitcast %union.VectorReg* %174 to <2 x float>*
  %184 = bitcast i64* %179 to <2 x i32>*
  %185 = bitcast i8* %177 to i32*
  %186 = bitcast i64* %179 to i32*
  %187 = bitcast i8* %181 to i32*
  %188 = bitcast [32 x %union.VectorReg]* %165 to <2 x float>*
  %189 = bitcast i64* %170 to <2 x i32>*
  %190 = bitcast %union.VectorReg* %174 to <2 x float>*
  %191 = bitcast i8* %168 to i32*
  %192 = bitcast i64* %170 to i32*
  %193 = bitcast i8* %172 to i32*
  %194 = bitcast [32 x %union.VectorReg]* %165 to <2 x float>*
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_402059

block_.L_402059:                                  ; preds = %block_402065, %block_402049
  %195 = phi i64 [ %390, %block_402065 ], [ %.pre3, %block_402049 ]
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -48
  %198 = add i64 %195, 3
  store i64 %198, i64* %PC.i, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX.i1124, align 8
  %202 = add i64 %196, -4
  %203 = add i64 %195, 6
  store i64 %203, i64* %PC.i, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = sub i32 %200, %205
  %207 = icmp ult i32 %200, %205
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %.pre-phi, align 1
  %209 = and i32 %206, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %.pre-phi23, align 1
  %214 = xor i32 %205, %200
  %215 = xor i32 %214, %206
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %.pre-phi25, align 1
  %219 = icmp eq i32 %206, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %.pre-phi27, align 1
  %221 = lshr i32 %206, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %.pre-phi29, align 1
  %223 = lshr i32 %200, 31
  %224 = lshr i32 %205, 31
  %225 = xor i32 %224, %223
  %226 = xor i32 %221, %223
  %227 = add nuw nsw i32 %226, %225
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %.pre-phi31, align 1
  %230 = icmp ne i8 %222, 0
  %231 = xor i1 %230, %228
  %.v33 = select i1 %231, i64 12, i64 91
  %232 = add i64 %195, %.v33
  store i64 %232, i64* %3, align 8
  br i1 %231, label %block_402065, label %block_.L_4020b4

block_402065:                                     ; preds = %block_.L_402059
  %233 = add i64 %196, -16
  %234 = add i64 %232, 4
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RAX.i1124, align 8
  %237 = add i64 %232, 8
  store i64 %237, i64* %PC.i, align 8
  %238 = load i32, i32* %199, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %RCX.i1621, align 8
  %240 = shl nsw i64 %239, 2
  %241 = add i64 %240, %236
  %242 = add i64 %232, 13
  store i64 %242, i64* %PC.i, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = bitcast [32 x %union.VectorReg]* %165 to i32*
  store i32 %244, i32* %245, align 1
  store float 0.000000e+00, float* %169, align 1
  store float 0.000000e+00, float* %171, align 1
  store float 0.000000e+00, float* %173, align 1
  %246 = add i64 %196, -32
  %247 = add i64 %232, 17
  store i64 %247, i64* %PC.i, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RAX.i1124, align 8
  %250 = add i64 %196, -44
  %251 = add i64 %232, 21
  store i64 %251, i64* %PC.i, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX.i1621, align 8
  %255 = shl nsw i64 %254, 2
  %256 = add i64 %255, %249
  %257 = add i64 %232, 26
  store i64 %257, i64* %PC.i, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = bitcast %union.VectorReg* %174 to i32*
  store i32 %259, i32* %260, align 1
  store float 0.000000e+00, float* %178, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %182, align 1
  %261 = add i64 %196, -40
  %262 = add i64 %232, 30
  store i64 %262, i64* %PC.i, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX.i1124, align 8
  %265 = add i64 %196, -24
  %266 = add i64 %232, 33
  store i64 %266, i64* %PC.i, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX.i1556, align 8
  %270 = add i64 %232, 37
  store i64 %270, i64* %PC.i, align 8
  %271 = load i32, i32* %252, align 4
  %272 = sext i32 %268 to i64
  %273 = sext i32 %271 to i64
  %274 = mul nsw i64 %273, %272
  %275 = trunc i64 %274 to i32
  %276 = and i64 %274, 4294967295
  store i64 %276, i64* %RDX.i1556, align 8
  %277 = shl i64 %274, 32
  %278 = ashr exact i64 %277, 32
  %279 = icmp ne i64 %278, %274
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %.pre-phi, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %286 = lshr i32 %275, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %.pre-phi29, align 1
  store i8 %280, i8* %.pre-phi31, align 1
  %288 = add i64 %232, 40
  store i64 %288, i64* %PC.i, align 8
  %289 = trunc i64 %274 to i32
  %290 = load i32, i32* %199, align 4
  %291 = add i32 %290, %289
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RDX.i1556, align 8
  %293 = icmp ult i32 %291, %289
  %294 = icmp ult i32 %291, %290
  %295 = or i1 %293, %294
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %.pre-phi, align 1
  %297 = and i32 %291, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %.pre-phi23, align 1
  %302 = xor i32 %290, %289
  %303 = xor i32 %302, %291
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %.pre-phi25, align 1
  %307 = icmp eq i32 %291, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %.pre-phi27, align 1
  %309 = lshr i32 %291, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %.pre-phi29, align 1
  %311 = lshr i32 %289, 31
  %312 = lshr i32 %290, 31
  %313 = xor i32 %309, %311
  %314 = xor i32 %309, %312
  %315 = add nuw nsw i32 %313, %314
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %.pre-phi31, align 1
  %318 = sext i32 %291 to i64
  store i64 %318, i64* %RCX.i1621, align 8
  %319 = shl nsw i64 %318, 2
  %320 = add i64 %319, %264
  %321 = add i64 %232, 48
  store i64 %321, i64* %PC.i, align 8
  %322 = load <2 x float>, <2 x float>* %183, align 1
  %323 = load <2 x i32>, <2 x i32>* %184, align 1
  %324 = inttoptr i64 %320 to float*
  %325 = load float, float* %324, align 4
  %326 = extractelement <2 x float> %322, i32 0
  %327 = fmul float %326, %325
  store float %327, float* %176, align 1
  %328 = bitcast <2 x float> %322 to <2 x i32>
  %329 = extractelement <2 x i32> %328, i32 1
  store i32 %329, i32* %185, align 1
  %330 = extractelement <2 x i32> %323, i32 0
  store i32 %330, i32* %186, align 1
  %331 = extractelement <2 x i32> %323, i32 1
  store i32 %331, i32* %187, align 1
  %332 = load <2 x float>, <2 x float>* %188, align 1
  %333 = load <2 x i32>, <2 x i32>* %189, align 1
  %334 = load <2 x float>, <2 x float>* %190, align 1
  %335 = extractelement <2 x float> %332, i32 0
  %336 = extractelement <2 x float> %334, i32 0
  %337 = fadd float %335, %336
  store float %337, float* %167, align 1
  %338 = bitcast <2 x float> %332 to <2 x i32>
  %339 = extractelement <2 x i32> %338, i32 1
  store i32 %339, i32* %191, align 1
  %340 = extractelement <2 x i32> %333, i32 0
  store i32 %340, i32* %192, align 1
  %341 = extractelement <2 x i32> %333, i32 1
  store i32 %341, i32* %193, align 1
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -16
  %344 = add i64 %232, 56
  store i64 %344, i64* %PC.i, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RAX.i1124, align 8
  %347 = add i64 %342, -48
  %348 = add i64 %232, 60
  store i64 %348, i64* %PC.i, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  store i64 %351, i64* %RCX.i1621, align 8
  %352 = shl nsw i64 %351, 2
  %353 = add i64 %352, %346
  %354 = add i64 %232, 65
  store i64 %354, i64* %PC.i, align 8
  %355 = load <2 x float>, <2 x float>* %194, align 1
  %356 = extractelement <2 x float> %355, i32 0
  %357 = inttoptr i64 %353 to float*
  store float %356, float* %357, align 4
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -48
  %360 = load i64, i64* %PC.i, align 8
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC.i, align 8
  %362 = inttoptr i64 %359 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = add i32 %363, 1
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RAX.i1124, align 8
  %366 = icmp eq i32 %363, -1
  %367 = icmp eq i32 %364, 0
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %.pre-phi, align 1
  %370 = and i32 %364, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %.pre-phi23, align 1
  %375 = xor i32 %363, %364
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %.pre-phi25, align 1
  %379 = icmp eq i32 %364, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %.pre-phi27, align 1
  %381 = lshr i32 %364, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %.pre-phi29, align 1
  %383 = lshr i32 %363, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %381
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %.pre-phi31, align 1
  %388 = add i64 %360, 9
  store i64 %388, i64* %PC.i, align 8
  store i32 %364, i32* %362, align 4
  %389 = load i64, i64* %PC.i, align 8
  %390 = add i64 %389, -86
  store i64 %390, i64* %3, align 8
  br label %block_.L_402059

block_.L_4020b4:                                  ; preds = %block_.L_402059
  %391 = add i64 %232, 5
  store i64 %391, i64* %3, align 8
  br label %block_.L_4020b9

block_.L_4020b9:                                  ; preds = %block_.L_4020b4, %routine_idivl__ecx.exit1606
  %392 = phi i64 [ %196, %block_.L_4020b4 ], [ %105, %routine_idivl__ecx.exit1606 ]
  %393 = phi i64 [ %391, %block_.L_4020b4 ], [ %134, %routine_idivl__ecx.exit1606 ]
  store i64 4, i64* %RAX.i1124, align 8
  %394 = add i64 %392, -20
  %395 = add i64 %393, 8
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RCX.i1621, align 8
  %399 = add i64 %392, -60
  %400 = add i64 %393, 11
  store i64 %400, i64* %PC.i, align 8
  %401 = inttoptr i64 %399 to i32*
  store i32 4, i32* %401, align 4
  %402 = load i32, i32* %ECX.i1628, align 4
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC.i, align 8
  store i64 %403, i64* %RAX.i1124, align 8
  %405 = sext i32 %402 to i64
  %406 = lshr i64 %405, 32
  store i64 %406, i64* %63, align 8
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -60
  %409 = add i64 %404, 6
  store i64 %409, i64* %PC.i, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i1621, align 8
  %413 = add i64 %404, 8
  store i64 %413, i64* %PC.i, align 8
  %414 = zext i32 %402 to i64
  %415 = sext i32 %411 to i64
  %416 = shl nuw i64 %406, 32
  %417 = or i64 %416, %414
  %418 = sdiv i64 %417, %415
  %419 = shl i64 %418, 32
  %420 = ashr exact i64 %419, 32
  %421 = icmp eq i64 %418, %420
  br i1 %421, label %424, label %422

; <label>:422:                                    ; preds = %block_.L_4020b9
  %423 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %413, %struct.Memory* %101)
  %.pre4 = load i64, i64* %RBP.i, align 8
  %.pre5 = load i32, i32* %EDX.i1608, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit1500

; <label>:424:                                    ; preds = %block_.L_4020b9
  %425 = srem i64 %417, %415
  %426 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %427 = and i64 %418, 4294967295
  store i64 %427, i64* %426, align 8
  %428 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %429 = and i64 %425, 4294967295
  store i64 %429, i64* %428, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %430 = trunc i64 %425 to i32
  br label %routine_idivl__ecx.exit1500

routine_idivl__ecx.exit1500:                      ; preds = %424, %422
  %431 = phi i64 [ %.pre6, %422 ], [ %413, %424 ]
  %432 = phi i32 [ %.pre5, %422 ], [ %430, %424 ]
  %433 = phi i64 [ %.pre4, %422 ], [ %407, %424 ]
  %434 = phi %struct.Memory* [ %423, %422 ], [ %101, %424 ]
  %435 = add i64 %433, -44
  %436 = add i64 %431, 3
  store i64 %436, i64* %PC.i, align 8
  %437 = inttoptr i64 %435 to i32*
  store i32 %432, i32* %437, align 4
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -44
  %440 = load i64, i64* %PC.i, align 8
  %441 = add i64 %440, 4
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, -2
  %445 = icmp ult i32 %443, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %.pre-phi, align 1
  %447 = and i32 %444, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %.pre-phi23, align 1
  %452 = xor i32 %443, %444
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %.pre-phi25, align 1
  %456 = icmp eq i32 %444, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %.pre-phi27, align 1
  %458 = lshr i32 %444, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %.pre-phi29, align 1
  %460 = lshr i32 %443, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %.pre-phi31, align 1
  %465 = icmp ne i8 %459, 0
  %466 = xor i1 %465, %463
  %.v34 = select i1 %466, i64 171, i64 10
  %467 = add i64 %440, %.v34
  store i64 %467, i64* %3, align 8
  br i1 %466, label %block_.L_40217a, label %block_4020d9

block_4020d9:                                     ; preds = %routine_idivl__ecx.exit1500
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC.i, align 8
  %469 = load i32, i32* %442, align 4
  %470 = add i32 %469, -1
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX.i1124, align 8
  %472 = icmp eq i32 %469, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %.pre-phi, align 1
  %474 = and i32 %470, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %.pre-phi23, align 1
  %479 = xor i32 %469, %470
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %.pre-phi25, align 1
  %483 = icmp eq i32 %470, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %.pre-phi27, align 1
  %485 = lshr i32 %470, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %.pre-phi29, align 1
  %487 = lshr i32 %469, 31
  %488 = xor i32 %485, %487
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %.pre-phi31, align 1
  %492 = add i64 %467, 9
  store i64 %492, i64* %PC.i, align 8
  store i32 %470, i32* %442, align 4
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -48
  %495 = load i64, i64* %PC.i, align 8
  %496 = add i64 %495, 7
  store i64 %496, i64* %PC.i, align 8
  %497 = inttoptr i64 %494 to i32*
  store i32 0, i32* %497, align 4
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %499 = bitcast [32 x %union.VectorReg]* %498 to i8*
  %500 = bitcast [32 x %union.VectorReg]* %498 to float*
  %501 = getelementptr inbounds i8, i8* %499, i64 4
  %502 = bitcast i8* %501 to float*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %504 = bitcast i64* %503 to float*
  %505 = getelementptr inbounds i8, i8* %499, i64 12
  %506 = bitcast i8* %505 to float*
  %RDX.i1460 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %508 = bitcast %union.VectorReg* %507 to i8*
  %509 = bitcast %union.VectorReg* %507 to float*
  %510 = getelementptr inbounds i8, i8* %508, i64 4
  %511 = bitcast i8* %510 to float*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %513 = bitcast i64* %512 to float*
  %514 = getelementptr inbounds i8, i8* %508, i64 12
  %515 = bitcast i8* %514 to float*
  %516 = bitcast %union.VectorReg* %507 to <2 x float>*
  %517 = bitcast i64* %512 to <2 x i32>*
  %518 = bitcast i8* %510 to i32*
  %519 = bitcast i64* %512 to i32*
  %520 = bitcast i8* %514 to i32*
  %521 = bitcast [32 x %union.VectorReg]* %498 to <2 x float>*
  %522 = bitcast i64* %503 to <2 x i32>*
  %523 = bitcast %union.VectorReg* %507 to <2 x float>*
  %524 = bitcast i8* %501 to i32*
  %525 = bitcast i64* %503 to i32*
  %526 = bitcast i8* %505 to i32*
  %527 = bitcast [32 x %union.VectorReg]* %498 to <2 x float>*
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_4020e9

block_.L_4020e9:                                  ; preds = %block_4020f5, %block_4020d9
  %528 = phi i64 [ %852, %block_4020f5 ], [ %.pre7, %block_4020d9 ]
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -48
  %531 = add i64 %528, 3
  store i64 %531, i64* %PC.i, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i1124, align 8
  %535 = add i64 %529, -4
  %536 = add i64 %528, 6
  store i64 %536, i64* %PC.i, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = sub i32 %533, %538
  %540 = icmp ult i32 %533, %538
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %.pre-phi, align 1
  %542 = and i32 %539, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %.pre-phi23, align 1
  %547 = xor i32 %538, %533
  %548 = xor i32 %547, %539
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %.pre-phi25, align 1
  %552 = icmp eq i32 %539, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %.pre-phi27, align 1
  %554 = lshr i32 %539, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %.pre-phi29, align 1
  %556 = lshr i32 %533, 31
  %557 = lshr i32 %538, 31
  %558 = xor i32 %557, %556
  %559 = xor i32 %554, %556
  %560 = add nuw nsw i32 %559, %558
  %561 = icmp eq i32 %560, 2
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %.pre-phi31, align 1
  %563 = icmp ne i8 %555, 0
  %564 = xor i1 %563, %561
  %.v35 = select i1 %564, i64 12, i64 140
  %565 = add i64 %528, %.v35
  store i64 %565, i64* %3, align 8
  br i1 %564, label %block_4020f5, label %block_.L_402175

block_4020f5:                                     ; preds = %block_.L_4020e9
  %566 = add i64 %529, -16
  %567 = add i64 %565, 4
  store i64 %567, i64* %PC.i, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i1124, align 8
  %570 = add i64 %565, 8
  store i64 %570, i64* %PC.i, align 8
  %571 = load i32, i32* %532, align 4
  %572 = sext i32 %571 to i64
  store i64 %572, i64* %RCX.i1621, align 8
  %573 = shl nsw i64 %572, 2
  %574 = add i64 %573, %569
  %575 = add i64 %565, 13
  store i64 %575, i64* %PC.i, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = bitcast [32 x %union.VectorReg]* %498 to i32*
  store i32 %577, i32* %578, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  store float 0.000000e+00, float* %506, align 1
  %579 = add i64 %529, -32
  %580 = add i64 %565, 17
  store i64 %580, i64* %PC.i, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %RAX.i1124, align 8
  %583 = add i64 %529, -44
  %584 = add i64 %565, 20
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %586, -1
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RDX.i1460, align 8
  %589 = icmp eq i32 %586, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %.pre-phi, align 1
  %591 = and i32 %587, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %.pre-phi23, align 1
  %596 = xor i32 %586, %587
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %.pre-phi25, align 1
  %600 = icmp eq i32 %587, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %.pre-phi27, align 1
  %602 = lshr i32 %587, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %.pre-phi29, align 1
  %604 = lshr i32 %586, 31
  %605 = xor i32 %602, %604
  %606 = add nuw nsw i32 %605, %604
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %.pre-phi31, align 1
  %609 = sext i32 %587 to i64
  store i64 %609, i64* %RCX.i1621, align 8
  %610 = shl nsw i64 %609, 2
  %611 = add i64 %610, %582
  %612 = add i64 %565, 31
  store i64 %612, i64* %PC.i, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = bitcast %union.VectorReg* %507 to i32*
  store i32 %614, i32* %615, align 1
  store float 0.000000e+00, float* %511, align 1
  store float 0.000000e+00, float* %513, align 1
  store float 0.000000e+00, float* %515, align 1
  %616 = add i64 %529, -40
  %617 = add i64 %565, 35
  store i64 %617, i64* %PC.i, align 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %RAX.i1124, align 8
  %620 = add i64 %529, -24
  %621 = add i64 %565, 38
  store i64 %621, i64* %PC.i, align 8
  %622 = inttoptr i64 %620 to i32*
  %623 = load i32, i32* %622, align 4
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i1460, align 8
  %625 = add i64 %565, 41
  store i64 %625, i64* %PC.i, align 8
  %626 = load i32, i32* %585, align 4
  %627 = add i32 %626, -1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RSI.i1502, align 8
  %629 = sext i32 %623 to i64
  %630 = sext i32 %627 to i64
  %631 = mul nsw i64 %630, %629
  %632 = trunc i64 %631 to i32
  %633 = and i64 %631, 4294967295
  store i64 %633, i64* %RDX.i1460, align 8
  %634 = shl i64 %631, 32
  %635 = ashr exact i64 %634, 32
  %636 = icmp ne i64 %635, %631
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %.pre-phi, align 1
  %638 = and i32 %632, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %643 = lshr i32 %632, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %.pre-phi29, align 1
  store i8 %637, i8* %.pre-phi31, align 1
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -48
  %647 = add i64 %565, 50
  store i64 %647, i64* %PC.i, align 8
  %648 = trunc i64 %631 to i32
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = add i32 %650, %648
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RDX.i1460, align 8
  %653 = icmp ult i32 %651, %648
  %654 = icmp ult i32 %651, %650
  %655 = or i1 %653, %654
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %.pre-phi, align 1
  %657 = and i32 %651, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %.pre-phi23, align 1
  %662 = xor i32 %650, %648
  %663 = xor i32 %662, %651
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %.pre-phi25, align 1
  %667 = icmp eq i32 %651, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %.pre-phi27, align 1
  %669 = lshr i32 %651, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %.pre-phi29, align 1
  %671 = lshr i32 %648, 31
  %672 = lshr i32 %650, 31
  %673 = xor i32 %669, %671
  %674 = xor i32 %669, %672
  %675 = add nuw nsw i32 %673, %674
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %.pre-phi31, align 1
  %678 = sext i32 %651 to i64
  store i64 %678, i64* %RCX.i1621, align 8
  %679 = load i64, i64* %RAX.i1124, align 8
  %680 = shl nsw i64 %678, 2
  %681 = add i64 %680, %679
  %682 = add i64 %565, 58
  store i64 %682, i64* %PC.i, align 8
  %683 = load <2 x float>, <2 x float>* %516, align 1
  %684 = load <2 x i32>, <2 x i32>* %517, align 1
  %685 = inttoptr i64 %681 to float*
  %686 = load float, float* %685, align 4
  %687 = extractelement <2 x float> %683, i32 0
  %688 = fmul float %687, %686
  store float %688, float* %509, align 1
  %689 = bitcast <2 x float> %683 to <2 x i32>
  %690 = extractelement <2 x i32> %689, i32 1
  store i32 %690, i32* %518, align 1
  %691 = extractelement <2 x i32> %684, i32 0
  store i32 %691, i32* %519, align 1
  %692 = extractelement <2 x i32> %684, i32 1
  store i32 %692, i32* %520, align 1
  %693 = load <2 x float>, <2 x float>* %521, align 1
  %694 = load <2 x i32>, <2 x i32>* %522, align 1
  %695 = load <2 x float>, <2 x float>* %523, align 1
  %696 = extractelement <2 x float> %693, i32 0
  %697 = extractelement <2 x float> %695, i32 0
  %698 = fadd float %696, %697
  store float %698, float* %500, align 1
  %699 = bitcast <2 x float> %693 to <2 x i32>
  %700 = extractelement <2 x i32> %699, i32 1
  store i32 %700, i32* %524, align 1
  %701 = extractelement <2 x i32> %694, i32 0
  store i32 %701, i32* %525, align 1
  %702 = extractelement <2 x i32> %694, i32 1
  store i32 %702, i32* %526, align 1
  %703 = add i64 %645, -32
  %704 = add i64 %565, 66
  store i64 %704, i64* %PC.i, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RAX.i1124, align 8
  %707 = add i64 %645, -44
  %708 = add i64 %565, 70
  store i64 %708, i64* %PC.i, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = sext i32 %710 to i64
  store i64 %711, i64* %RCX.i1621, align 8
  %712 = shl nsw i64 %711, 2
  %713 = add i64 %712, %706
  %714 = add i64 %565, 75
  store i64 %714, i64* %PC.i, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = bitcast %union.VectorReg* %507 to i32*
  store i32 %716, i32* %717, align 1
  store float 0.000000e+00, float* %511, align 1
  store float 0.000000e+00, float* %513, align 1
  store float 0.000000e+00, float* %515, align 1
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -40
  %720 = add i64 %565, 79
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %RAX.i1124, align 8
  %723 = add i64 %718, -24
  %724 = add i64 %565, 82
  store i64 %724, i64* %PC.i, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDX.i1460, align 8
  %728 = add i64 %718, -44
  %729 = add i64 %565, 86
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = sext i32 %726 to i64
  %733 = sext i32 %731 to i64
  %734 = mul nsw i64 %733, %732
  %735 = trunc i64 %734 to i32
  %736 = and i64 %734, 4294967295
  store i64 %736, i64* %RDX.i1460, align 8
  %737 = shl i64 %734, 32
  %738 = ashr exact i64 %737, 32
  %739 = icmp ne i64 %738, %734
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %.pre-phi, align 1
  %741 = and i32 %735, 255
  %742 = tail call i32 @llvm.ctpop.i32(i32 %741)
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  store i8 %745, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %746 = lshr i32 %735, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %.pre-phi29, align 1
  store i8 %740, i8* %.pre-phi31, align 1
  %748 = add i64 %718, -48
  %749 = add i64 %565, 89
  store i64 %749, i64* %PC.i, align 8
  %750 = trunc i64 %734 to i32
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, %750
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RDX.i1460, align 8
  %755 = icmp ult i32 %753, %750
  %756 = icmp ult i32 %753, %752
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %.pre-phi, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %.pre-phi23, align 1
  %764 = xor i32 %752, %750
  %765 = xor i32 %764, %753
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %.pre-phi25, align 1
  %769 = icmp eq i32 %753, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %.pre-phi27, align 1
  %771 = lshr i32 %753, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %.pre-phi29, align 1
  %773 = lshr i32 %750, 31
  %774 = lshr i32 %752, 31
  %775 = xor i32 %771, %773
  %776 = xor i32 %771, %774
  %777 = add nuw nsw i32 %775, %776
  %778 = icmp eq i32 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %.pre-phi31, align 1
  %780 = sext i32 %753 to i64
  store i64 %780, i64* %RCX.i1621, align 8
  %781 = shl nsw i64 %780, 2
  %782 = add i64 %781, %722
  %783 = add i64 %565, 97
  store i64 %783, i64* %PC.i, align 8
  %784 = load <2 x float>, <2 x float>* %516, align 1
  %785 = load <2 x i32>, <2 x i32>* %517, align 1
  %786 = inttoptr i64 %782 to float*
  %787 = load float, float* %786, align 4
  %788 = extractelement <2 x float> %784, i32 0
  %789 = fmul float %788, %787
  store float %789, float* %509, align 1
  %790 = bitcast <2 x float> %784 to <2 x i32>
  %791 = extractelement <2 x i32> %790, i32 1
  store i32 %791, i32* %518, align 1
  %792 = extractelement <2 x i32> %785, i32 0
  store i32 %792, i32* %519, align 1
  %793 = extractelement <2 x i32> %785, i32 1
  store i32 %793, i32* %520, align 1
  %794 = load <2 x float>, <2 x float>* %521, align 1
  %795 = load <2 x i32>, <2 x i32>* %522, align 1
  %796 = load <2 x float>, <2 x float>* %523, align 1
  %797 = extractelement <2 x float> %794, i32 0
  %798 = extractelement <2 x float> %796, i32 0
  %799 = fadd float %797, %798
  store float %799, float* %500, align 1
  %800 = bitcast <2 x float> %794 to <2 x i32>
  %801 = extractelement <2 x i32> %800, i32 1
  store i32 %801, i32* %524, align 1
  %802 = extractelement <2 x i32> %795, i32 0
  store i32 %802, i32* %525, align 1
  %803 = extractelement <2 x i32> %795, i32 1
  store i32 %803, i32* %526, align 1
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -16
  %806 = add i64 %565, 105
  store i64 %806, i64* %PC.i, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RAX.i1124, align 8
  %809 = add i64 %804, -48
  %810 = add i64 %565, 109
  store i64 %810, i64* %PC.i, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = sext i32 %812 to i64
  store i64 %813, i64* %RCX.i1621, align 8
  %814 = shl nsw i64 %813, 2
  %815 = add i64 %814, %808
  %816 = add i64 %565, 114
  store i64 %816, i64* %PC.i, align 8
  %817 = load <2 x float>, <2 x float>* %527, align 1
  %818 = extractelement <2 x float> %817, i32 0
  %819 = inttoptr i64 %815 to float*
  store float %818, float* %819, align 4
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -48
  %822 = load i64, i64* %PC.i, align 8
  %823 = add i64 %822, 3
  store i64 %823, i64* %PC.i, align 8
  %824 = inttoptr i64 %821 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = add i32 %825, 1
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RAX.i1124, align 8
  %828 = icmp eq i32 %825, -1
  %829 = icmp eq i32 %826, 0
  %830 = or i1 %828, %829
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %.pre-phi, align 1
  %832 = and i32 %826, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %.pre-phi23, align 1
  %837 = xor i32 %825, %826
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %.pre-phi25, align 1
  %841 = icmp eq i32 %826, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %.pre-phi27, align 1
  %843 = lshr i32 %826, 31
  %844 = trunc i32 %843 to i8
  store i8 %844, i8* %.pre-phi29, align 1
  %845 = lshr i32 %825, 31
  %846 = xor i32 %843, %845
  %847 = add nuw nsw i32 %846, %843
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %.pre-phi31, align 1
  %850 = add i64 %822, 9
  store i64 %850, i64* %PC.i, align 8
  store i32 %826, i32* %824, align 4
  %851 = load i64, i64* %PC.i, align 8
  %852 = add i64 %851, -135
  store i64 %852, i64* %3, align 8
  br label %block_.L_4020e9

block_.L_402175:                                  ; preds = %block_.L_4020e9
  %853 = add i64 %565, 5
  store i64 %853, i64* %3, align 8
  br label %block_.L_40217a

block_.L_40217a:                                  ; preds = %block_.L_402175, %routine_idivl__ecx.exit1500
  %854 = phi i64 [ %529, %block_.L_402175 ], [ %438, %routine_idivl__ecx.exit1500 ]
  %855 = phi i64 [ %853, %block_.L_402175 ], [ %467, %routine_idivl__ecx.exit1500 ]
  store i64 8, i64* %RAX.i1124, align 8
  %856 = add i64 %854, -20
  %857 = add i64 %855, 8
  store i64 %857, i64* %PC.i, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RCX.i1621, align 8
  %861 = add i64 %854, -64
  %862 = add i64 %855, 11
  store i64 %862, i64* %PC.i, align 8
  %863 = inttoptr i64 %861 to i32*
  store i32 8, i32* %863, align 4
  %864 = load i32, i32* %ECX.i1628, align 4
  %865 = zext i32 %864 to i64
  %866 = load i64, i64* %PC.i, align 8
  store i64 %865, i64* %RAX.i1124, align 8
  %867 = sext i32 %864 to i64
  %868 = lshr i64 %867, 32
  store i64 %868, i64* %63, align 8
  %869 = load i64, i64* %RBP.i, align 8
  %870 = add i64 %869, -64
  %871 = add i64 %866, 6
  store i64 %871, i64* %PC.i, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RCX.i1621, align 8
  %875 = add i64 %866, 8
  store i64 %875, i64* %PC.i, align 8
  %876 = zext i32 %864 to i64
  %877 = sext i32 %873 to i64
  %878 = shl nuw i64 %868, 32
  %879 = or i64 %878, %876
  %880 = sdiv i64 %879, %877
  %881 = shl i64 %880, 32
  %882 = ashr exact i64 %881, 32
  %883 = icmp eq i64 %880, %882
  br i1 %883, label %886, label %884

; <label>:884:                                    ; preds = %block_.L_40217a
  %885 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %875, %struct.Memory* %434)
  %.pre8 = load i64, i64* %RBP.i, align 8
  %.pre9 = load i32, i32* %EDX.i1608, align 4
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit1353

; <label>:886:                                    ; preds = %block_.L_40217a
  %887 = srem i64 %879, %877
  %888 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %889 = and i64 %880, 4294967295
  store i64 %889, i64* %888, align 8
  %890 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %891 = and i64 %887, 4294967295
  store i64 %891, i64* %890, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %892 = trunc i64 %887 to i32
  br label %routine_idivl__ecx.exit1353

routine_idivl__ecx.exit1353:                      ; preds = %886, %884
  %893 = phi i64 [ %.pre10, %884 ], [ %875, %886 ]
  %894 = phi i32 [ %.pre9, %884 ], [ %892, %886 ]
  %895 = phi i64 [ %.pre8, %884 ], [ %869, %886 ]
  %896 = phi %struct.Memory* [ %885, %884 ], [ %434, %886 ]
  %897 = add i64 %895, -44
  %898 = add i64 %893, 3
  store i64 %898, i64* %PC.i, align 8
  %899 = inttoptr i64 %897 to i32*
  store i32 %894, i32* %899, align 4
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -44
  %902 = load i64, i64* %PC.i, align 8
  %903 = add i64 %902, 4
  store i64 %903, i64* %PC.i, align 8
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = add i32 %905, -4
  %907 = icmp ult i32 %905, 4
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %.pre-phi, align 1
  %909 = and i32 %906, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %.pre-phi23, align 1
  %914 = xor i32 %905, %906
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %.pre-phi25, align 1
  %918 = icmp eq i32 %906, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %.pre-phi27, align 1
  %920 = lshr i32 %906, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %.pre-phi29, align 1
  %922 = lshr i32 %905, 31
  %923 = xor i32 %920, %922
  %924 = add nuw nsw i32 %923, %922
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %.pre-phi31, align 1
  %927 = icmp ne i8 %921, 0
  %928 = xor i1 %927, %925
  %.v36 = select i1 %928, i64 269, i64 10
  %929 = add i64 %902, %.v36
  store i64 %929, i64* %3, align 8
  br i1 %928, label %block_.L_40229d, label %block_40219a

block_40219a:                                     ; preds = %routine_idivl__ecx.exit1353
  %930 = add i64 %929, 3
  store i64 %930, i64* %PC.i, align 8
  %931 = load i32, i32* %904, align 4
  %932 = add i32 %931, -1
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RAX.i1124, align 8
  %934 = icmp eq i32 %931, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %.pre-phi, align 1
  %936 = and i32 %932, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %.pre-phi23, align 1
  %941 = xor i32 %931, %932
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  store i8 %944, i8* %.pre-phi25, align 1
  %945 = icmp eq i32 %932, 0
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %.pre-phi27, align 1
  %947 = lshr i32 %932, 31
  %948 = trunc i32 %947 to i8
  store i8 %948, i8* %.pre-phi29, align 1
  %949 = lshr i32 %931, 31
  %950 = xor i32 %947, %949
  %951 = add nuw nsw i32 %950, %949
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %.pre-phi31, align 1
  %954 = add i64 %929, 9
  store i64 %954, i64* %PC.i, align 8
  store i32 %932, i32* %904, align 4
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -48
  %957 = load i64, i64* %PC.i, align 8
  %958 = add i64 %957, 7
  store i64 %958, i64* %PC.i, align 8
  %959 = inttoptr i64 %956 to i32*
  store i32 0, i32* %959, align 4
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %961 = bitcast [32 x %union.VectorReg]* %960 to i8*
  %962 = bitcast [32 x %union.VectorReg]* %960 to float*
  %963 = getelementptr inbounds i8, i8* %961, i64 4
  %964 = bitcast i8* %963 to float*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %966 = bitcast i64* %965 to float*
  %967 = getelementptr inbounds i8, i8* %961, i64 12
  %968 = bitcast i8* %967 to float*
  %RDX.i1313 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %970 = bitcast %union.VectorReg* %969 to i8*
  %971 = bitcast %union.VectorReg* %969 to float*
  %972 = getelementptr inbounds i8, i8* %970, i64 4
  %973 = bitcast i8* %972 to float*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %975 = bitcast i64* %974 to float*
  %976 = getelementptr inbounds i8, i8* %970, i64 12
  %977 = bitcast i8* %976 to float*
  %978 = bitcast %union.VectorReg* %969 to <2 x float>*
  %979 = bitcast i64* %974 to <2 x i32>*
  %980 = bitcast i8* %972 to i32*
  %981 = bitcast i64* %974 to i32*
  %982 = bitcast i8* %976 to i32*
  %983 = bitcast [32 x %union.VectorReg]* %960 to <2 x float>*
  %984 = bitcast i64* %965 to <2 x i32>*
  %985 = bitcast %union.VectorReg* %969 to <2 x float>*
  %986 = bitcast i8* %963 to i32*
  %987 = bitcast i64* %965 to i32*
  %988 = bitcast i8* %967 to i32*
  %989 = bitcast [32 x %union.VectorReg]* %960 to <2 x float>*
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_4021aa

block_.L_4021aa:                                  ; preds = %block_4021b6, %block_40219a
  %990 = phi i64 [ %1565, %block_4021b6 ], [ %.pre11, %block_40219a ]
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -48
  %993 = add i64 %990, 3
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %992 to i32*
  %995 = load i32, i32* %994, align 4
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i1124, align 8
  %997 = add i64 %991, -4
  %998 = add i64 %990, 6
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sub i32 %995, %1000
  %1002 = icmp ult i32 %995, %1000
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %.pre-phi, align 1
  %1004 = and i32 %1001, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %.pre-phi23, align 1
  %1009 = xor i32 %1000, %995
  %1010 = xor i32 %1009, %1001
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %.pre-phi25, align 1
  %1014 = icmp eq i32 %1001, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %.pre-phi27, align 1
  %1016 = lshr i32 %1001, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %.pre-phi29, align 1
  %1018 = lshr i32 %995, 31
  %1019 = lshr i32 %1000, 31
  %1020 = xor i32 %1019, %1018
  %1021 = xor i32 %1016, %1018
  %1022 = add nuw nsw i32 %1021, %1020
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %.pre-phi31, align 1
  %1025 = icmp ne i8 %1017, 0
  %1026 = xor i1 %1025, %1023
  %.v37 = select i1 %1026, i64 12, i64 238
  %1027 = add i64 %990, %.v37
  store i64 %1027, i64* %3, align 8
  br i1 %1026, label %block_4021b6, label %block_.L_402298

block_4021b6:                                     ; preds = %block_.L_4021aa
  %1028 = add i64 %991, -16
  %1029 = add i64 %1027, 4
  store i64 %1029, i64* %PC.i, align 8
  %1030 = inttoptr i64 %1028 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RAX.i1124, align 8
  %1032 = add i64 %1027, 8
  store i64 %1032, i64* %PC.i, align 8
  %1033 = load i32, i32* %994, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RCX.i1621, align 8
  %1035 = shl nsw i64 %1034, 2
  %1036 = add i64 %1035, %1031
  %1037 = add i64 %1027, 13
  store i64 %1037, i64* %PC.i, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = bitcast [32 x %union.VectorReg]* %960 to i32*
  store i32 %1039, i32* %1040, align 1
  store float 0.000000e+00, float* %964, align 1
  store float 0.000000e+00, float* %966, align 1
  store float 0.000000e+00, float* %968, align 1
  %1041 = add i64 %991, -32
  %1042 = add i64 %1027, 17
  store i64 %1042, i64* %PC.i, align 8
  %1043 = inttoptr i64 %1041 to i64*
  %1044 = load i64, i64* %1043, align 8
  store i64 %1044, i64* %RAX.i1124, align 8
  %1045 = add i64 %991, -44
  %1046 = add i64 %1027, 20
  store i64 %1046, i64* %PC.i, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = add i32 %1048, -3
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RDX.i1313, align 8
  %1051 = icmp ult i32 %1048, 3
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %.pre-phi, align 1
  %1053 = and i32 %1049, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %.pre-phi23, align 1
  %1058 = xor i32 %1048, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %.pre-phi25, align 1
  %1062 = icmp eq i32 %1049, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %.pre-phi27, align 1
  %1064 = lshr i32 %1049, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %.pre-phi29, align 1
  %1066 = lshr i32 %1048, 31
  %1067 = xor i32 %1064, %1066
  %1068 = add nuw nsw i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %.pre-phi31, align 1
  %1071 = sext i32 %1049 to i64
  store i64 %1071, i64* %RCX.i1621, align 8
  %1072 = shl nsw i64 %1071, 2
  %1073 = add i64 %1072, %1044
  %1074 = add i64 %1027, 31
  store i64 %1074, i64* %PC.i, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = bitcast %union.VectorReg* %969 to i32*
  store i32 %1076, i32* %1077, align 1
  store float 0.000000e+00, float* %973, align 1
  store float 0.000000e+00, float* %975, align 1
  store float 0.000000e+00, float* %977, align 1
  %1078 = add i64 %991, -40
  %1079 = add i64 %1027, 35
  store i64 %1079, i64* %PC.i, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %RAX.i1124, align 8
  %1082 = add i64 %991, -24
  %1083 = add i64 %1027, 38
  store i64 %1083, i64* %PC.i, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RDX.i1313, align 8
  %1087 = add i64 %1027, 41
  store i64 %1087, i64* %PC.i, align 8
  %1088 = load i32, i32* %1047, align 4
  %1089 = add i32 %1088, -3
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RSI.i1502, align 8
  %1091 = sext i32 %1085 to i64
  %1092 = sext i32 %1089 to i64
  %1093 = mul nsw i64 %1092, %1091
  %1094 = trunc i64 %1093 to i32
  %1095 = and i64 %1093, 4294967295
  store i64 %1095, i64* %RDX.i1313, align 8
  %1096 = shl i64 %1093, 32
  %1097 = ashr exact i64 %1096, 32
  %1098 = icmp ne i64 %1097, %1093
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %.pre-phi, align 1
  %1100 = and i32 %1094, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1105 = lshr i32 %1094, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %.pre-phi29, align 1
  store i8 %1099, i8* %.pre-phi31, align 1
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -48
  %1109 = add i64 %1027, 50
  store i64 %1109, i64* %PC.i, align 8
  %1110 = trunc i64 %1093 to i32
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = add i32 %1112, %1110
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RDX.i1313, align 8
  %1115 = icmp ult i32 %1113, %1110
  %1116 = icmp ult i32 %1113, %1112
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %.pre-phi, align 1
  %1119 = and i32 %1113, 255
  %1120 = tail call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %.pre-phi23, align 1
  %1124 = xor i32 %1112, %1110
  %1125 = xor i32 %1124, %1113
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %.pre-phi25, align 1
  %1129 = icmp eq i32 %1113, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %.pre-phi27, align 1
  %1131 = lshr i32 %1113, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %.pre-phi29, align 1
  %1133 = lshr i32 %1110, 31
  %1134 = lshr i32 %1112, 31
  %1135 = xor i32 %1131, %1133
  %1136 = xor i32 %1131, %1134
  %1137 = add nuw nsw i32 %1135, %1136
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %.pre-phi31, align 1
  %1140 = sext i32 %1113 to i64
  store i64 %1140, i64* %RCX.i1621, align 8
  %1141 = load i64, i64* %RAX.i1124, align 8
  %1142 = shl nsw i64 %1140, 2
  %1143 = add i64 %1142, %1141
  %1144 = add i64 %1027, 58
  store i64 %1144, i64* %PC.i, align 8
  %1145 = load <2 x float>, <2 x float>* %978, align 1
  %1146 = load <2 x i32>, <2 x i32>* %979, align 1
  %1147 = inttoptr i64 %1143 to float*
  %1148 = load float, float* %1147, align 4
  %1149 = extractelement <2 x float> %1145, i32 0
  %1150 = fmul float %1149, %1148
  store float %1150, float* %971, align 1
  %1151 = bitcast <2 x float> %1145 to <2 x i32>
  %1152 = extractelement <2 x i32> %1151, i32 1
  store i32 %1152, i32* %980, align 1
  %1153 = extractelement <2 x i32> %1146, i32 0
  store i32 %1153, i32* %981, align 1
  %1154 = extractelement <2 x i32> %1146, i32 1
  store i32 %1154, i32* %982, align 1
  %1155 = load <2 x float>, <2 x float>* %983, align 1
  %1156 = load <2 x i32>, <2 x i32>* %984, align 1
  %1157 = load <2 x float>, <2 x float>* %985, align 1
  %1158 = extractelement <2 x float> %1155, i32 0
  %1159 = extractelement <2 x float> %1157, i32 0
  %1160 = fadd float %1158, %1159
  store float %1160, float* %962, align 1
  %1161 = bitcast <2 x float> %1155 to <2 x i32>
  %1162 = extractelement <2 x i32> %1161, i32 1
  store i32 %1162, i32* %986, align 1
  %1163 = extractelement <2 x i32> %1156, i32 0
  store i32 %1163, i32* %987, align 1
  %1164 = extractelement <2 x i32> %1156, i32 1
  store i32 %1164, i32* %988, align 1
  %1165 = add i64 %1107, -32
  %1166 = add i64 %1027, 66
  store i64 %1166, i64* %PC.i, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RAX.i1124, align 8
  %1169 = add i64 %1107, -44
  %1170 = add i64 %1027, 69
  store i64 %1170, i64* %PC.i, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = add i32 %1172, -2
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RDX.i1313, align 8
  %1175 = icmp ult i32 %1172, 2
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %.pre-phi, align 1
  %1177 = and i32 %1173, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %.pre-phi23, align 1
  %1182 = xor i32 %1172, %1173
  %1183 = lshr i32 %1182, 4
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  store i8 %1185, i8* %.pre-phi25, align 1
  %1186 = icmp eq i32 %1173, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %.pre-phi27, align 1
  %1188 = lshr i32 %1173, 31
  %1189 = trunc i32 %1188 to i8
  store i8 %1189, i8* %.pre-phi29, align 1
  %1190 = lshr i32 %1172, 31
  %1191 = xor i32 %1188, %1190
  %1192 = add nuw nsw i32 %1191, %1190
  %1193 = icmp eq i32 %1192, 2
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %.pre-phi31, align 1
  %1195 = sext i32 %1173 to i64
  store i64 %1195, i64* %RCX.i1621, align 8
  %1196 = shl nsw i64 %1195, 2
  %1197 = add i64 %1196, %1168
  %1198 = add i64 %1027, 80
  store i64 %1198, i64* %PC.i, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = bitcast %union.VectorReg* %969 to i32*
  store i32 %1200, i32* %1201, align 1
  store float 0.000000e+00, float* %973, align 1
  store float 0.000000e+00, float* %975, align 1
  store float 0.000000e+00, float* %977, align 1
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -40
  %1204 = add i64 %1027, 84
  store i64 %1204, i64* %PC.i, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %RAX.i1124, align 8
  %1207 = add i64 %1202, -24
  %1208 = add i64 %1027, 87
  store i64 %1208, i64* %PC.i, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RDX.i1313, align 8
  %1212 = add i64 %1202, -44
  %1213 = add i64 %1027, 90
  store i64 %1213, i64* %PC.i, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = add i32 %1215, -2
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RSI.i1502, align 8
  %1218 = sext i32 %1210 to i64
  %1219 = sext i32 %1216 to i64
  %1220 = mul nsw i64 %1219, %1218
  %1221 = trunc i64 %1220 to i32
  %1222 = and i64 %1220, 4294967295
  store i64 %1222, i64* %RDX.i1313, align 8
  %1223 = shl i64 %1220, 32
  %1224 = ashr exact i64 %1223, 32
  %1225 = icmp ne i64 %1224, %1220
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %.pre-phi, align 1
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1232 = lshr i32 %1221, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %.pre-phi29, align 1
  store i8 %1226, i8* %.pre-phi31, align 1
  %1234 = add i64 %1202, -48
  %1235 = add i64 %1027, 99
  store i64 %1235, i64* %PC.i, align 8
  %1236 = trunc i64 %1220 to i32
  %1237 = inttoptr i64 %1234 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = add i32 %1238, %1236
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDX.i1313, align 8
  %1241 = icmp ult i32 %1239, %1236
  %1242 = icmp ult i32 %1239, %1238
  %1243 = or i1 %1241, %1242
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %.pre-phi, align 1
  %1245 = and i32 %1239, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %.pre-phi23, align 1
  %1250 = xor i32 %1238, %1236
  %1251 = xor i32 %1250, %1239
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %.pre-phi25, align 1
  %1255 = icmp eq i32 %1239, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %.pre-phi27, align 1
  %1257 = lshr i32 %1239, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %.pre-phi29, align 1
  %1259 = lshr i32 %1236, 31
  %1260 = lshr i32 %1238, 31
  %1261 = xor i32 %1257, %1259
  %1262 = xor i32 %1257, %1260
  %1263 = add nuw nsw i32 %1261, %1262
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %.pre-phi31, align 1
  %1266 = sext i32 %1239 to i64
  store i64 %1266, i64* %RCX.i1621, align 8
  %1267 = load i64, i64* %RAX.i1124, align 8
  %1268 = shl nsw i64 %1266, 2
  %1269 = add i64 %1268, %1267
  %1270 = add i64 %1027, 107
  store i64 %1270, i64* %PC.i, align 8
  %1271 = load <2 x float>, <2 x float>* %978, align 1
  %1272 = load <2 x i32>, <2 x i32>* %979, align 1
  %1273 = inttoptr i64 %1269 to float*
  %1274 = load float, float* %1273, align 4
  %1275 = extractelement <2 x float> %1271, i32 0
  %1276 = fmul float %1275, %1274
  store float %1276, float* %971, align 1
  %1277 = bitcast <2 x float> %1271 to <2 x i32>
  %1278 = extractelement <2 x i32> %1277, i32 1
  store i32 %1278, i32* %980, align 1
  %1279 = extractelement <2 x i32> %1272, i32 0
  store i32 %1279, i32* %981, align 1
  %1280 = extractelement <2 x i32> %1272, i32 1
  store i32 %1280, i32* %982, align 1
  %1281 = load <2 x float>, <2 x float>* %983, align 1
  %1282 = load <2 x i32>, <2 x i32>* %984, align 1
  %1283 = load <2 x float>, <2 x float>* %985, align 1
  %1284 = extractelement <2 x float> %1281, i32 0
  %1285 = extractelement <2 x float> %1283, i32 0
  %1286 = fadd float %1284, %1285
  store float %1286, float* %962, align 1
  %1287 = bitcast <2 x float> %1281 to <2 x i32>
  %1288 = extractelement <2 x i32> %1287, i32 1
  store i32 %1288, i32* %986, align 1
  %1289 = extractelement <2 x i32> %1282, i32 0
  store i32 %1289, i32* %987, align 1
  %1290 = extractelement <2 x i32> %1282, i32 1
  store i32 %1290, i32* %988, align 1
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -32
  %1293 = add i64 %1027, 115
  store i64 %1293, i64* %PC.i, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i1124, align 8
  %1296 = add i64 %1291, -44
  %1297 = add i64 %1027, 118
  store i64 %1297, i64* %PC.i, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = add i32 %1299, -1
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RDX.i1313, align 8
  %1302 = icmp eq i32 %1299, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %.pre-phi, align 1
  %1304 = and i32 %1300, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %.pre-phi23, align 1
  %1309 = xor i32 %1299, %1300
  %1310 = lshr i32 %1309, 4
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %.pre-phi25, align 1
  %1313 = icmp eq i32 %1300, 0
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %.pre-phi27, align 1
  %1315 = lshr i32 %1300, 31
  %1316 = trunc i32 %1315 to i8
  store i8 %1316, i8* %.pre-phi29, align 1
  %1317 = lshr i32 %1299, 31
  %1318 = xor i32 %1315, %1317
  %1319 = add nuw nsw i32 %1318, %1317
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %.pre-phi31, align 1
  %1322 = sext i32 %1300 to i64
  store i64 %1322, i64* %RCX.i1621, align 8
  %1323 = shl nsw i64 %1322, 2
  %1324 = add i64 %1323, %1295
  %1325 = add i64 %1027, 129
  store i64 %1325, i64* %PC.i, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = bitcast %union.VectorReg* %969 to i32*
  store i32 %1327, i32* %1328, align 1
  store float 0.000000e+00, float* %973, align 1
  store float 0.000000e+00, float* %975, align 1
  store float 0.000000e+00, float* %977, align 1
  %1329 = add i64 %1291, -40
  %1330 = add i64 %1027, 133
  store i64 %1330, i64* %PC.i, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RAX.i1124, align 8
  %1333 = add i64 %1291, -24
  %1334 = add i64 %1027, 136
  store i64 %1334, i64* %PC.i, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RDX.i1313, align 8
  %1338 = add i64 %1027, 139
  store i64 %1338, i64* %PC.i, align 8
  %1339 = load i32, i32* %1298, align 4
  %1340 = add i32 %1339, -1
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RSI.i1502, align 8
  %1342 = sext i32 %1336 to i64
  %1343 = sext i32 %1340 to i64
  %1344 = mul nsw i64 %1343, %1342
  %1345 = trunc i64 %1344 to i32
  %1346 = and i64 %1344, 4294967295
  store i64 %1346, i64* %RDX.i1313, align 8
  %1347 = shl i64 %1344, 32
  %1348 = ashr exact i64 %1347, 32
  %1349 = icmp ne i64 %1348, %1344
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %.pre-phi, align 1
  %1351 = and i32 %1345, 255
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1356 = lshr i32 %1345, 31
  %1357 = trunc i32 %1356 to i8
  store i8 %1357, i8* %.pre-phi29, align 1
  store i8 %1350, i8* %.pre-phi31, align 1
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -48
  %1360 = add i64 %1027, 148
  store i64 %1360, i64* %PC.i, align 8
  %1361 = trunc i64 %1344 to i32
  %1362 = inttoptr i64 %1359 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = add i32 %1363, %1361
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RDX.i1313, align 8
  %1366 = icmp ult i32 %1364, %1361
  %1367 = icmp ult i32 %1364, %1363
  %1368 = or i1 %1366, %1367
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %.pre-phi, align 1
  %1370 = and i32 %1364, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %.pre-phi23, align 1
  %1375 = xor i32 %1363, %1361
  %1376 = xor i32 %1375, %1364
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %.pre-phi25, align 1
  %1380 = icmp eq i32 %1364, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %.pre-phi27, align 1
  %1382 = lshr i32 %1364, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %.pre-phi29, align 1
  %1384 = lshr i32 %1361, 31
  %1385 = lshr i32 %1363, 31
  %1386 = xor i32 %1382, %1384
  %1387 = xor i32 %1382, %1385
  %1388 = add nuw nsw i32 %1386, %1387
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %.pre-phi31, align 1
  %1391 = sext i32 %1364 to i64
  store i64 %1391, i64* %RCX.i1621, align 8
  %1392 = load i64, i64* %RAX.i1124, align 8
  %1393 = shl nsw i64 %1391, 2
  %1394 = add i64 %1393, %1392
  %1395 = add i64 %1027, 156
  store i64 %1395, i64* %PC.i, align 8
  %1396 = load <2 x float>, <2 x float>* %978, align 1
  %1397 = load <2 x i32>, <2 x i32>* %979, align 1
  %1398 = inttoptr i64 %1394 to float*
  %1399 = load float, float* %1398, align 4
  %1400 = extractelement <2 x float> %1396, i32 0
  %1401 = fmul float %1400, %1399
  store float %1401, float* %971, align 1
  %1402 = bitcast <2 x float> %1396 to <2 x i32>
  %1403 = extractelement <2 x i32> %1402, i32 1
  store i32 %1403, i32* %980, align 1
  %1404 = extractelement <2 x i32> %1397, i32 0
  store i32 %1404, i32* %981, align 1
  %1405 = extractelement <2 x i32> %1397, i32 1
  store i32 %1405, i32* %982, align 1
  %1406 = load <2 x float>, <2 x float>* %983, align 1
  %1407 = load <2 x i32>, <2 x i32>* %984, align 1
  %1408 = load <2 x float>, <2 x float>* %985, align 1
  %1409 = extractelement <2 x float> %1406, i32 0
  %1410 = extractelement <2 x float> %1408, i32 0
  %1411 = fadd float %1409, %1410
  store float %1411, float* %962, align 1
  %1412 = bitcast <2 x float> %1406 to <2 x i32>
  %1413 = extractelement <2 x i32> %1412, i32 1
  store i32 %1413, i32* %986, align 1
  %1414 = extractelement <2 x i32> %1407, i32 0
  store i32 %1414, i32* %987, align 1
  %1415 = extractelement <2 x i32> %1407, i32 1
  store i32 %1415, i32* %988, align 1
  %1416 = add i64 %1358, -32
  %1417 = add i64 %1027, 164
  store i64 %1417, i64* %PC.i, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RAX.i1124, align 8
  %1420 = add i64 %1358, -44
  %1421 = add i64 %1027, 168
  store i64 %1421, i64* %PC.i, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sext i32 %1423 to i64
  store i64 %1424, i64* %RCX.i1621, align 8
  %1425 = shl nsw i64 %1424, 2
  %1426 = add i64 %1425, %1419
  %1427 = add i64 %1027, 173
  store i64 %1427, i64* %PC.i, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = bitcast %union.VectorReg* %969 to i32*
  store i32 %1429, i32* %1430, align 1
  store float 0.000000e+00, float* %973, align 1
  store float 0.000000e+00, float* %975, align 1
  store float 0.000000e+00, float* %977, align 1
  %1431 = load i64, i64* %RBP.i, align 8
  %1432 = add i64 %1431, -40
  %1433 = add i64 %1027, 177
  store i64 %1433, i64* %PC.i, align 8
  %1434 = inttoptr i64 %1432 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RAX.i1124, align 8
  %1436 = add i64 %1431, -24
  %1437 = add i64 %1027, 180
  store i64 %1437, i64* %PC.i, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RDX.i1313, align 8
  %1441 = add i64 %1431, -44
  %1442 = add i64 %1027, 184
  store i64 %1442, i64* %PC.i, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = sext i32 %1439 to i64
  %1446 = sext i32 %1444 to i64
  %1447 = mul nsw i64 %1446, %1445
  %1448 = trunc i64 %1447 to i32
  %1449 = and i64 %1447, 4294967295
  store i64 %1449, i64* %RDX.i1313, align 8
  %1450 = shl i64 %1447, 32
  %1451 = ashr exact i64 %1450, 32
  %1452 = icmp ne i64 %1451, %1447
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %.pre-phi, align 1
  %1454 = and i32 %1448, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1459 = lshr i32 %1448, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %.pre-phi29, align 1
  store i8 %1453, i8* %.pre-phi31, align 1
  %1461 = add i64 %1431, -48
  %1462 = add i64 %1027, 187
  store i64 %1462, i64* %PC.i, align 8
  %1463 = trunc i64 %1447 to i32
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = add i32 %1465, %1463
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RDX.i1313, align 8
  %1468 = icmp ult i32 %1466, %1463
  %1469 = icmp ult i32 %1466, %1465
  %1470 = or i1 %1468, %1469
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %.pre-phi, align 1
  %1472 = and i32 %1466, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %.pre-phi23, align 1
  %1477 = xor i32 %1465, %1463
  %1478 = xor i32 %1477, %1466
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %.pre-phi25, align 1
  %1482 = icmp eq i32 %1466, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %.pre-phi27, align 1
  %1484 = lshr i32 %1466, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %.pre-phi29, align 1
  %1486 = lshr i32 %1463, 31
  %1487 = lshr i32 %1465, 31
  %1488 = xor i32 %1484, %1486
  %1489 = xor i32 %1484, %1487
  %1490 = add nuw nsw i32 %1488, %1489
  %1491 = icmp eq i32 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %.pre-phi31, align 1
  %1493 = sext i32 %1466 to i64
  store i64 %1493, i64* %RCX.i1621, align 8
  %1494 = shl nsw i64 %1493, 2
  %1495 = add i64 %1494, %1435
  %1496 = add i64 %1027, 195
  store i64 %1496, i64* %PC.i, align 8
  %1497 = load <2 x float>, <2 x float>* %978, align 1
  %1498 = load <2 x i32>, <2 x i32>* %979, align 1
  %1499 = inttoptr i64 %1495 to float*
  %1500 = load float, float* %1499, align 4
  %1501 = extractelement <2 x float> %1497, i32 0
  %1502 = fmul float %1501, %1500
  store float %1502, float* %971, align 1
  %1503 = bitcast <2 x float> %1497 to <2 x i32>
  %1504 = extractelement <2 x i32> %1503, i32 1
  store i32 %1504, i32* %980, align 1
  %1505 = extractelement <2 x i32> %1498, i32 0
  store i32 %1505, i32* %981, align 1
  %1506 = extractelement <2 x i32> %1498, i32 1
  store i32 %1506, i32* %982, align 1
  %1507 = load <2 x float>, <2 x float>* %983, align 1
  %1508 = load <2 x i32>, <2 x i32>* %984, align 1
  %1509 = load <2 x float>, <2 x float>* %985, align 1
  %1510 = extractelement <2 x float> %1507, i32 0
  %1511 = extractelement <2 x float> %1509, i32 0
  %1512 = fadd float %1510, %1511
  store float %1512, float* %962, align 1
  %1513 = bitcast <2 x float> %1507 to <2 x i32>
  %1514 = extractelement <2 x i32> %1513, i32 1
  store i32 %1514, i32* %986, align 1
  %1515 = extractelement <2 x i32> %1508, i32 0
  store i32 %1515, i32* %987, align 1
  %1516 = extractelement <2 x i32> %1508, i32 1
  store i32 %1516, i32* %988, align 1
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -16
  %1519 = add i64 %1027, 203
  store i64 %1519, i64* %PC.i, align 8
  %1520 = inttoptr i64 %1518 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RAX.i1124, align 8
  %1522 = add i64 %1517, -48
  %1523 = add i64 %1027, 207
  store i64 %1523, i64* %PC.i, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = sext i32 %1525 to i64
  store i64 %1526, i64* %RCX.i1621, align 8
  %1527 = shl nsw i64 %1526, 2
  %1528 = add i64 %1527, %1521
  %1529 = add i64 %1027, 212
  store i64 %1529, i64* %PC.i, align 8
  %1530 = load <2 x float>, <2 x float>* %989, align 1
  %1531 = extractelement <2 x float> %1530, i32 0
  %1532 = inttoptr i64 %1528 to float*
  store float %1531, float* %1532, align 4
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -48
  %1535 = load i64, i64* %PC.i, align 8
  %1536 = add i64 %1535, 3
  store i64 %1536, i64* %PC.i, align 8
  %1537 = inttoptr i64 %1534 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = add i32 %1538, 1
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RAX.i1124, align 8
  %1541 = icmp eq i32 %1538, -1
  %1542 = icmp eq i32 %1539, 0
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %.pre-phi, align 1
  %1545 = and i32 %1539, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %.pre-phi23, align 1
  %1550 = xor i32 %1538, %1539
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  store i8 %1553, i8* %.pre-phi25, align 1
  %1554 = icmp eq i32 %1539, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %.pre-phi27, align 1
  %1556 = lshr i32 %1539, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %.pre-phi29, align 1
  %1558 = lshr i32 %1538, 31
  %1559 = xor i32 %1556, %1558
  %1560 = add nuw nsw i32 %1559, %1556
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %.pre-phi31, align 1
  %1563 = add i64 %1535, 9
  store i64 %1563, i64* %PC.i, align 8
  store i32 %1539, i32* %1537, align 4
  %1564 = load i64, i64* %PC.i, align 8
  %1565 = add i64 %1564, -233
  store i64 %1565, i64* %3, align 8
  br label %block_.L_4021aa

block_.L_402298:                                  ; preds = %block_.L_4021aa
  %1566 = add i64 %1027, 5
  store i64 %1566, i64* %3, align 8
  br label %block_.L_40229d

block_.L_40229d:                                  ; preds = %block_.L_402298, %routine_idivl__ecx.exit1353
  %1567 = phi i64 [ %991, %block_.L_402298 ], [ %900, %routine_idivl__ecx.exit1353 ]
  %1568 = phi i64 [ %1566, %block_.L_402298 ], [ %929, %routine_idivl__ecx.exit1353 ]
  store i64 16, i64* %RAX.i1124, align 8
  %1569 = add i64 %1567, -20
  %1570 = add i64 %1568, 8
  store i64 %1570, i64* %PC.i, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i1621, align 8
  %1574 = add i64 %1567, -68
  %1575 = add i64 %1568, 11
  store i64 %1575, i64* %PC.i, align 8
  %1576 = inttoptr i64 %1574 to i32*
  store i32 16, i32* %1576, align 4
  %1577 = load i32, i32* %ECX.i1628, align 4
  %1578 = zext i32 %1577 to i64
  %1579 = load i64, i64* %PC.i, align 8
  store i64 %1578, i64* %RAX.i1124, align 8
  %1580 = sext i32 %1577 to i64
  %1581 = lshr i64 %1580, 32
  store i64 %1581, i64* %63, align 8
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -68
  %1584 = add i64 %1579, 6
  store i64 %1584, i64* %PC.i, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RCX.i1621, align 8
  %1588 = add i64 %1579, 8
  store i64 %1588, i64* %PC.i, align 8
  %1589 = zext i32 %1577 to i64
  %1590 = sext i32 %1586 to i64
  %1591 = shl nuw i64 %1581, 32
  %1592 = or i64 %1591, %1589
  %1593 = sdiv i64 %1592, %1590
  %1594 = shl i64 %1593, 32
  %1595 = ashr exact i64 %1594, 32
  %1596 = icmp eq i64 %1593, %1595
  br i1 %1596, label %1599, label %1597

; <label>:1597:                                   ; preds = %block_.L_40229d
  %1598 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1588, %struct.Memory* %896)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i32, i32* %EDX.i1608, align 4
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit1122

; <label>:1599:                                   ; preds = %block_.L_40229d
  %1600 = srem i64 %1592, %1590
  %1601 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %1602 = and i64 %1593, 4294967295
  store i64 %1602, i64* %1601, align 8
  %1603 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %1604 = and i64 %1600, 4294967295
  store i64 %1604, i64* %1603, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %1605 = trunc i64 %1600 to i32
  br label %routine_idivl__ecx.exit1122

routine_idivl__ecx.exit1122:                      ; preds = %1599, %1597
  %1606 = phi i64 [ %.pre14, %1597 ], [ %1588, %1599 ]
  %1607 = phi i32 [ %.pre13, %1597 ], [ %1605, %1599 ]
  %1608 = phi i64 [ %.pre12, %1597 ], [ %1582, %1599 ]
  %1609 = phi %struct.Memory* [ %1598, %1597 ], [ %896, %1599 ]
  %1610 = add i64 %1608, -44
  %1611 = add i64 %1606, 3
  store i64 %1611, i64* %PC.i, align 8
  %1612 = inttoptr i64 %1610 to i32*
  store i32 %1607, i32* %1612, align 4
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -44
  %1615 = load i64, i64* %PC.i, align 8
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %PC.i, align 8
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = add i32 %1618, -8
  %1620 = icmp ult i32 %1618, 8
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %.pre-phi, align 1
  %1622 = and i32 %1619, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %.pre-phi23, align 1
  %1627 = xor i32 %1618, %1619
  %1628 = lshr i32 %1627, 4
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  store i8 %1630, i8* %.pre-phi25, align 1
  %1631 = icmp eq i32 %1619, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %.pre-phi27, align 1
  %1633 = lshr i32 %1619, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %.pre-phi29, align 1
  %1635 = lshr i32 %1618, 31
  %1636 = xor i32 %1633, %1635
  %1637 = add nuw nsw i32 %1636, %1635
  %1638 = icmp eq i32 %1637, 2
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %.pre-phi31, align 1
  %1640 = icmp ne i8 %1634, 0
  %1641 = xor i1 %1640, %1638
  %.v38 = select i1 %1641, i64 465, i64 10
  %1642 = add i64 %1615, %.v38
  store i64 %1642, i64* %3, align 8
  br i1 %1641, label %block_.L_402484, label %block_4022bd

block_4022bd:                                     ; preds = %routine_idivl__ecx.exit1122
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC.i, align 8
  %1644 = load i32, i32* %1617, align 4
  %1645 = add i32 %1644, -1
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i1124, align 8
  %1647 = icmp eq i32 %1644, 0
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %.pre-phi, align 1
  %1649 = and i32 %1645, 255
  %1650 = tail call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  store i8 %1653, i8* %.pre-phi23, align 1
  %1654 = xor i32 %1644, %1645
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %.pre-phi25, align 1
  %1658 = icmp eq i32 %1645, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %.pre-phi27, align 1
  %1660 = lshr i32 %1645, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %.pre-phi29, align 1
  %1662 = lshr i32 %1644, 31
  %1663 = xor i32 %1660, %1662
  %1664 = add nuw nsw i32 %1663, %1662
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %.pre-phi31, align 1
  %1667 = add i64 %1642, 9
  store i64 %1667, i64* %PC.i, align 8
  store i32 %1645, i32* %1617, align 4
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -48
  %1670 = load i64, i64* %PC.i, align 8
  %1671 = add i64 %1670, 7
  store i64 %1671, i64* %PC.i, align 8
  %1672 = inttoptr i64 %1669 to i32*
  store i32 0, i32* %1672, align 4
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1674 = bitcast [32 x %union.VectorReg]* %1673 to i8*
  %1675 = bitcast [32 x %union.VectorReg]* %1673 to float*
  %1676 = getelementptr inbounds i8, i8* %1674, i64 4
  %1677 = bitcast i8* %1676 to float*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1679 = bitcast i64* %1678 to float*
  %1680 = getelementptr inbounds i8, i8* %1674, i64 12
  %1681 = bitcast i8* %1680 to float*
  %RDX.i1082 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1683 = bitcast %union.VectorReg* %1682 to i8*
  %1684 = bitcast %union.VectorReg* %1682 to float*
  %1685 = getelementptr inbounds i8, i8* %1683, i64 4
  %1686 = bitcast i8* %1685 to float*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1688 = bitcast i64* %1687 to float*
  %1689 = getelementptr inbounds i8, i8* %1683, i64 12
  %1690 = bitcast i8* %1689 to float*
  %1691 = bitcast %union.VectorReg* %1682 to <2 x float>*
  %1692 = bitcast i64* %1687 to <2 x i32>*
  %1693 = bitcast i8* %1685 to i32*
  %1694 = bitcast i64* %1687 to i32*
  %1695 = bitcast i8* %1689 to i32*
  %1696 = bitcast [32 x %union.VectorReg]* %1673 to <2 x float>*
  %1697 = bitcast i64* %1678 to <2 x i32>*
  %1698 = bitcast %union.VectorReg* %1682 to <2 x float>*
  %1699 = bitcast i8* %1676 to i32*
  %1700 = bitcast i64* %1678 to i32*
  %1701 = bitcast i8* %1680 to i32*
  %1702 = bitcast [32 x %union.VectorReg]* %1673 to <2 x float>*
  %.pre15 = load i64, i64* %PC.i, align 8
  br label %block_.L_4022cd

block_.L_4022cd:                                  ; preds = %block_4022d9, %block_4022bd
  %1703 = phi i64 [ %2780, %block_4022d9 ], [ %.pre15, %block_4022bd ]
  %1704 = load i64, i64* %RBP.i, align 8
  %1705 = add i64 %1704, -48
  %1706 = add i64 %1703, 3
  store i64 %1706, i64* %PC.i, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RAX.i1124, align 8
  %1710 = add i64 %1704, -4
  %1711 = add i64 %1703, 6
  store i64 %1711, i64* %PC.i, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = sub i32 %1708, %1713
  %1715 = icmp ult i32 %1708, %1713
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %.pre-phi, align 1
  %1717 = and i32 %1714, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %.pre-phi23, align 1
  %1722 = xor i32 %1713, %1708
  %1723 = xor i32 %1722, %1714
  %1724 = lshr i32 %1723, 4
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  store i8 %1726, i8* %.pre-phi25, align 1
  %1727 = icmp eq i32 %1714, 0
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %.pre-phi27, align 1
  %1729 = lshr i32 %1714, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %.pre-phi29, align 1
  %1731 = lshr i32 %1708, 31
  %1732 = lshr i32 %1713, 31
  %1733 = xor i32 %1732, %1731
  %1734 = xor i32 %1729, %1731
  %1735 = add nuw nsw i32 %1734, %1733
  %1736 = icmp eq i32 %1735, 2
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %.pre-phi31, align 1
  %1738 = icmp ne i8 %1730, 0
  %1739 = xor i1 %1738, %1736
  %.v39 = select i1 %1739, i64 12, i64 434
  %1740 = add i64 %1703, %.v39
  store i64 %1740, i64* %3, align 8
  br i1 %1739, label %block_4022d9, label %block_.L_40247f

block_4022d9:                                     ; preds = %block_.L_4022cd
  %1741 = add i64 %1704, -16
  %1742 = add i64 %1740, 4
  store i64 %1742, i64* %PC.i, align 8
  %1743 = inttoptr i64 %1741 to i64*
  %1744 = load i64, i64* %1743, align 8
  store i64 %1744, i64* %RAX.i1124, align 8
  %1745 = add i64 %1740, 8
  store i64 %1745, i64* %PC.i, align 8
  %1746 = load i32, i32* %1707, align 4
  %1747 = sext i32 %1746 to i64
  store i64 %1747, i64* %RCX.i1621, align 8
  %1748 = shl nsw i64 %1747, 2
  %1749 = add i64 %1748, %1744
  %1750 = add i64 %1740, 13
  store i64 %1750, i64* %PC.i, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = bitcast [32 x %union.VectorReg]* %1673 to i32*
  store i32 %1752, i32* %1753, align 1
  store float 0.000000e+00, float* %1677, align 1
  store float 0.000000e+00, float* %1679, align 1
  store float 0.000000e+00, float* %1681, align 1
  %1754 = add i64 %1704, -32
  %1755 = add i64 %1740, 17
  store i64 %1755, i64* %PC.i, align 8
  %1756 = inttoptr i64 %1754 to i64*
  %1757 = load i64, i64* %1756, align 8
  store i64 %1757, i64* %RAX.i1124, align 8
  %1758 = add i64 %1704, -44
  %1759 = add i64 %1740, 20
  store i64 %1759, i64* %PC.i, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = add i32 %1761, -7
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RDX.i1082, align 8
  %1764 = icmp ult i32 %1761, 7
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %.pre-phi, align 1
  %1766 = and i32 %1762, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %.pre-phi23, align 1
  %1771 = xor i32 %1761, %1762
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %.pre-phi25, align 1
  %1775 = icmp eq i32 %1762, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %.pre-phi27, align 1
  %1777 = lshr i32 %1762, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %.pre-phi29, align 1
  %1779 = lshr i32 %1761, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1779
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %.pre-phi31, align 1
  %1784 = sext i32 %1762 to i64
  store i64 %1784, i64* %RCX.i1621, align 8
  %1785 = shl nsw i64 %1784, 2
  %1786 = add i64 %1785, %1757
  %1787 = add i64 %1740, 31
  store i64 %1787, i64* %PC.i, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %1789, i32* %1790, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %1791 = add i64 %1704, -40
  %1792 = add i64 %1740, 35
  store i64 %1792, i64* %PC.i, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RAX.i1124, align 8
  %1795 = add i64 %1704, -24
  %1796 = add i64 %1740, 38
  store i64 %1796, i64* %PC.i, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RDX.i1082, align 8
  %1800 = add i64 %1740, 41
  store i64 %1800, i64* %PC.i, align 8
  %1801 = load i32, i32* %1760, align 4
  %1802 = add i32 %1801, -7
  %1803 = zext i32 %1802 to i64
  store i64 %1803, i64* %RSI.i1502, align 8
  %1804 = sext i32 %1798 to i64
  %1805 = sext i32 %1802 to i64
  %1806 = mul nsw i64 %1805, %1804
  %1807 = trunc i64 %1806 to i32
  %1808 = and i64 %1806, 4294967295
  store i64 %1808, i64* %RDX.i1082, align 8
  %1809 = shl i64 %1806, 32
  %1810 = ashr exact i64 %1809, 32
  %1811 = icmp ne i64 %1810, %1806
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %.pre-phi, align 1
  %1813 = and i32 %1807, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1818 = lshr i32 %1807, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %.pre-phi29, align 1
  store i8 %1812, i8* %.pre-phi31, align 1
  %1820 = load i64, i64* %RBP.i, align 8
  %1821 = add i64 %1820, -48
  %1822 = add i64 %1740, 50
  store i64 %1822, i64* %PC.i, align 8
  %1823 = trunc i64 %1806 to i32
  %1824 = inttoptr i64 %1821 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = add i32 %1825, %1823
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RDX.i1082, align 8
  %1828 = icmp ult i32 %1826, %1823
  %1829 = icmp ult i32 %1826, %1825
  %1830 = or i1 %1828, %1829
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %.pre-phi, align 1
  %1832 = and i32 %1826, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %.pre-phi23, align 1
  %1837 = xor i32 %1825, %1823
  %1838 = xor i32 %1837, %1826
  %1839 = lshr i32 %1838, 4
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %.pre-phi25, align 1
  %1842 = icmp eq i32 %1826, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %.pre-phi27, align 1
  %1844 = lshr i32 %1826, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %.pre-phi29, align 1
  %1846 = lshr i32 %1823, 31
  %1847 = lshr i32 %1825, 31
  %1848 = xor i32 %1844, %1846
  %1849 = xor i32 %1844, %1847
  %1850 = add nuw nsw i32 %1848, %1849
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %.pre-phi31, align 1
  %1853 = sext i32 %1826 to i64
  store i64 %1853, i64* %RCX.i1621, align 8
  %1854 = load i64, i64* %RAX.i1124, align 8
  %1855 = shl nsw i64 %1853, 2
  %1856 = add i64 %1855, %1854
  %1857 = add i64 %1740, 58
  store i64 %1857, i64* %PC.i, align 8
  %1858 = load <2 x float>, <2 x float>* %1691, align 1
  %1859 = load <2 x i32>, <2 x i32>* %1692, align 1
  %1860 = inttoptr i64 %1856 to float*
  %1861 = load float, float* %1860, align 4
  %1862 = extractelement <2 x float> %1858, i32 0
  %1863 = fmul float %1862, %1861
  store float %1863, float* %1684, align 1
  %1864 = bitcast <2 x float> %1858 to <2 x i32>
  %1865 = extractelement <2 x i32> %1864, i32 1
  store i32 %1865, i32* %1693, align 1
  %1866 = extractelement <2 x i32> %1859, i32 0
  store i32 %1866, i32* %1694, align 1
  %1867 = extractelement <2 x i32> %1859, i32 1
  store i32 %1867, i32* %1695, align 1
  %1868 = load <2 x float>, <2 x float>* %1696, align 1
  %1869 = load <2 x i32>, <2 x i32>* %1697, align 1
  %1870 = load <2 x float>, <2 x float>* %1698, align 1
  %1871 = extractelement <2 x float> %1868, i32 0
  %1872 = extractelement <2 x float> %1870, i32 0
  %1873 = fadd float %1871, %1872
  store float %1873, float* %1675, align 1
  %1874 = bitcast <2 x float> %1868 to <2 x i32>
  %1875 = extractelement <2 x i32> %1874, i32 1
  store i32 %1875, i32* %1699, align 1
  %1876 = extractelement <2 x i32> %1869, i32 0
  store i32 %1876, i32* %1700, align 1
  %1877 = extractelement <2 x i32> %1869, i32 1
  store i32 %1877, i32* %1701, align 1
  %1878 = add i64 %1820, -32
  %1879 = add i64 %1740, 66
  store i64 %1879, i64* %PC.i, align 8
  %1880 = inttoptr i64 %1878 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i64 %1881, i64* %RAX.i1124, align 8
  %1882 = add i64 %1820, -44
  %1883 = add i64 %1740, 69
  store i64 %1883, i64* %PC.i, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = add i32 %1885, -6
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RDX.i1082, align 8
  %1888 = icmp ult i32 %1885, 6
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %.pre-phi, align 1
  %1890 = and i32 %1886, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %.pre-phi23, align 1
  %1895 = xor i32 %1885, %1886
  %1896 = lshr i32 %1895, 4
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  store i8 %1898, i8* %.pre-phi25, align 1
  %1899 = icmp eq i32 %1886, 0
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %.pre-phi27, align 1
  %1901 = lshr i32 %1886, 31
  %1902 = trunc i32 %1901 to i8
  store i8 %1902, i8* %.pre-phi29, align 1
  %1903 = lshr i32 %1885, 31
  %1904 = xor i32 %1901, %1903
  %1905 = add nuw nsw i32 %1904, %1903
  %1906 = icmp eq i32 %1905, 2
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %.pre-phi31, align 1
  %1908 = sext i32 %1886 to i64
  store i64 %1908, i64* %RCX.i1621, align 8
  %1909 = shl nsw i64 %1908, 2
  %1910 = add i64 %1909, %1881
  %1911 = add i64 %1740, 80
  store i64 %1911, i64* %PC.i, align 8
  %1912 = inttoptr i64 %1910 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %1913, i32* %1914, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -40
  %1917 = add i64 %1740, 84
  store i64 %1917, i64* %PC.i, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i1124, align 8
  %1920 = add i64 %1915, -24
  %1921 = add i64 %1740, 87
  store i64 %1921, i64* %PC.i, align 8
  %1922 = inttoptr i64 %1920 to i32*
  %1923 = load i32, i32* %1922, align 4
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RDX.i1082, align 8
  %1925 = add i64 %1915, -44
  %1926 = add i64 %1740, 90
  store i64 %1926, i64* %PC.i, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = add i32 %1928, -6
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RSI.i1502, align 8
  %1931 = sext i32 %1923 to i64
  %1932 = sext i32 %1929 to i64
  %1933 = mul nsw i64 %1932, %1931
  %1934 = trunc i64 %1933 to i32
  %1935 = and i64 %1933, 4294967295
  store i64 %1935, i64* %RDX.i1082, align 8
  %1936 = shl i64 %1933, 32
  %1937 = ashr exact i64 %1936, 32
  %1938 = icmp ne i64 %1937, %1933
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %.pre-phi, align 1
  %1940 = and i32 %1934, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940)
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %1945 = lshr i32 %1934, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %.pre-phi29, align 1
  store i8 %1939, i8* %.pre-phi31, align 1
  %1947 = add i64 %1915, -48
  %1948 = add i64 %1740, 99
  store i64 %1948, i64* %PC.i, align 8
  %1949 = trunc i64 %1933 to i32
  %1950 = inttoptr i64 %1947 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = add i32 %1951, %1949
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RDX.i1082, align 8
  %1954 = icmp ult i32 %1952, %1949
  %1955 = icmp ult i32 %1952, %1951
  %1956 = or i1 %1954, %1955
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %.pre-phi, align 1
  %1958 = and i32 %1952, 255
  %1959 = tail call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  store i8 %1962, i8* %.pre-phi23, align 1
  %1963 = xor i32 %1951, %1949
  %1964 = xor i32 %1963, %1952
  %1965 = lshr i32 %1964, 4
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  store i8 %1967, i8* %.pre-phi25, align 1
  %1968 = icmp eq i32 %1952, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %.pre-phi27, align 1
  %1970 = lshr i32 %1952, 31
  %1971 = trunc i32 %1970 to i8
  store i8 %1971, i8* %.pre-phi29, align 1
  %1972 = lshr i32 %1949, 31
  %1973 = lshr i32 %1951, 31
  %1974 = xor i32 %1970, %1972
  %1975 = xor i32 %1970, %1973
  %1976 = add nuw nsw i32 %1974, %1975
  %1977 = icmp eq i32 %1976, 2
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %.pre-phi31, align 1
  %1979 = sext i32 %1952 to i64
  store i64 %1979, i64* %RCX.i1621, align 8
  %1980 = load i64, i64* %RAX.i1124, align 8
  %1981 = shl nsw i64 %1979, 2
  %1982 = add i64 %1981, %1980
  %1983 = add i64 %1740, 107
  store i64 %1983, i64* %PC.i, align 8
  %1984 = load <2 x float>, <2 x float>* %1691, align 1
  %1985 = load <2 x i32>, <2 x i32>* %1692, align 1
  %1986 = inttoptr i64 %1982 to float*
  %1987 = load float, float* %1986, align 4
  %1988 = extractelement <2 x float> %1984, i32 0
  %1989 = fmul float %1988, %1987
  store float %1989, float* %1684, align 1
  %1990 = bitcast <2 x float> %1984 to <2 x i32>
  %1991 = extractelement <2 x i32> %1990, i32 1
  store i32 %1991, i32* %1693, align 1
  %1992 = extractelement <2 x i32> %1985, i32 0
  store i32 %1992, i32* %1694, align 1
  %1993 = extractelement <2 x i32> %1985, i32 1
  store i32 %1993, i32* %1695, align 1
  %1994 = load <2 x float>, <2 x float>* %1696, align 1
  %1995 = load <2 x i32>, <2 x i32>* %1697, align 1
  %1996 = load <2 x float>, <2 x float>* %1698, align 1
  %1997 = extractelement <2 x float> %1994, i32 0
  %1998 = extractelement <2 x float> %1996, i32 0
  %1999 = fadd float %1997, %1998
  store float %1999, float* %1675, align 1
  %2000 = bitcast <2 x float> %1994 to <2 x i32>
  %2001 = extractelement <2 x i32> %2000, i32 1
  store i32 %2001, i32* %1699, align 1
  %2002 = extractelement <2 x i32> %1995, i32 0
  store i32 %2002, i32* %1700, align 1
  %2003 = extractelement <2 x i32> %1995, i32 1
  store i32 %2003, i32* %1701, align 1
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -32
  %2006 = add i64 %1740, 115
  store i64 %2006, i64* %PC.i, align 8
  %2007 = inttoptr i64 %2005 to i64*
  %2008 = load i64, i64* %2007, align 8
  store i64 %2008, i64* %RAX.i1124, align 8
  %2009 = add i64 %2004, -44
  %2010 = add i64 %1740, 118
  store i64 %2010, i64* %PC.i, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = add i32 %2012, -5
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RDX.i1082, align 8
  %2015 = icmp ult i32 %2012, 5
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %.pre-phi, align 1
  %2017 = and i32 %2013, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %.pre-phi23, align 1
  %2022 = xor i32 %2012, %2013
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %.pre-phi25, align 1
  %2026 = icmp eq i32 %2013, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %.pre-phi27, align 1
  %2028 = lshr i32 %2013, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %.pre-phi29, align 1
  %2030 = lshr i32 %2012, 31
  %2031 = xor i32 %2028, %2030
  %2032 = add nuw nsw i32 %2031, %2030
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %.pre-phi31, align 1
  %2035 = sext i32 %2013 to i64
  store i64 %2035, i64* %RCX.i1621, align 8
  %2036 = shl nsw i64 %2035, 2
  %2037 = add i64 %2036, %2008
  %2038 = add i64 %1740, 129
  store i64 %2038, i64* %PC.i, align 8
  %2039 = inttoptr i64 %2037 to i32*
  %2040 = load i32, i32* %2039, align 4
  %2041 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2040, i32* %2041, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2042 = add i64 %2004, -40
  %2043 = add i64 %1740, 133
  store i64 %2043, i64* %PC.i, align 8
  %2044 = inttoptr i64 %2042 to i64*
  %2045 = load i64, i64* %2044, align 8
  store i64 %2045, i64* %RAX.i1124, align 8
  %2046 = add i64 %2004, -24
  %2047 = add i64 %1740, 136
  store i64 %2047, i64* %PC.i, align 8
  %2048 = inttoptr i64 %2046 to i32*
  %2049 = load i32, i32* %2048, align 4
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RDX.i1082, align 8
  %2051 = add i64 %1740, 139
  store i64 %2051, i64* %PC.i, align 8
  %2052 = load i32, i32* %2011, align 4
  %2053 = add i32 %2052, -5
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RSI.i1502, align 8
  %2055 = sext i32 %2049 to i64
  %2056 = sext i32 %2053 to i64
  %2057 = mul nsw i64 %2056, %2055
  %2058 = trunc i64 %2057 to i32
  %2059 = and i64 %2057, 4294967295
  store i64 %2059, i64* %RDX.i1082, align 8
  %2060 = shl i64 %2057, 32
  %2061 = ashr exact i64 %2060, 32
  %2062 = icmp ne i64 %2061, %2057
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %.pre-phi, align 1
  %2064 = and i32 %2058, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2069 = lshr i32 %2058, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %.pre-phi29, align 1
  store i8 %2063, i8* %.pre-phi31, align 1
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -48
  %2073 = add i64 %1740, 148
  store i64 %2073, i64* %PC.i, align 8
  %2074 = trunc i64 %2057 to i32
  %2075 = inttoptr i64 %2072 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = add i32 %2076, %2074
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RDX.i1082, align 8
  %2079 = icmp ult i32 %2077, %2074
  %2080 = icmp ult i32 %2077, %2076
  %2081 = or i1 %2079, %2080
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %.pre-phi, align 1
  %2083 = and i32 %2077, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %.pre-phi23, align 1
  %2088 = xor i32 %2076, %2074
  %2089 = xor i32 %2088, %2077
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  store i8 %2092, i8* %.pre-phi25, align 1
  %2093 = icmp eq i32 %2077, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %.pre-phi27, align 1
  %2095 = lshr i32 %2077, 31
  %2096 = trunc i32 %2095 to i8
  store i8 %2096, i8* %.pre-phi29, align 1
  %2097 = lshr i32 %2074, 31
  %2098 = lshr i32 %2076, 31
  %2099 = xor i32 %2095, %2097
  %2100 = xor i32 %2095, %2098
  %2101 = add nuw nsw i32 %2099, %2100
  %2102 = icmp eq i32 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %.pre-phi31, align 1
  %2104 = sext i32 %2077 to i64
  store i64 %2104, i64* %RCX.i1621, align 8
  %2105 = load i64, i64* %RAX.i1124, align 8
  %2106 = shl nsw i64 %2104, 2
  %2107 = add i64 %2106, %2105
  %2108 = add i64 %1740, 156
  store i64 %2108, i64* %PC.i, align 8
  %2109 = load <2 x float>, <2 x float>* %1691, align 1
  %2110 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2111 = inttoptr i64 %2107 to float*
  %2112 = load float, float* %2111, align 4
  %2113 = extractelement <2 x float> %2109, i32 0
  %2114 = fmul float %2113, %2112
  store float %2114, float* %1684, align 1
  %2115 = bitcast <2 x float> %2109 to <2 x i32>
  %2116 = extractelement <2 x i32> %2115, i32 1
  store i32 %2116, i32* %1693, align 1
  %2117 = extractelement <2 x i32> %2110, i32 0
  store i32 %2117, i32* %1694, align 1
  %2118 = extractelement <2 x i32> %2110, i32 1
  store i32 %2118, i32* %1695, align 1
  %2119 = load <2 x float>, <2 x float>* %1696, align 1
  %2120 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2121 = load <2 x float>, <2 x float>* %1698, align 1
  %2122 = extractelement <2 x float> %2119, i32 0
  %2123 = extractelement <2 x float> %2121, i32 0
  %2124 = fadd float %2122, %2123
  store float %2124, float* %1675, align 1
  %2125 = bitcast <2 x float> %2119 to <2 x i32>
  %2126 = extractelement <2 x i32> %2125, i32 1
  store i32 %2126, i32* %1699, align 1
  %2127 = extractelement <2 x i32> %2120, i32 0
  store i32 %2127, i32* %1700, align 1
  %2128 = extractelement <2 x i32> %2120, i32 1
  store i32 %2128, i32* %1701, align 1
  %2129 = add i64 %2071, -32
  %2130 = add i64 %1740, 164
  store i64 %2130, i64* %PC.i, align 8
  %2131 = inttoptr i64 %2129 to i64*
  %2132 = load i64, i64* %2131, align 8
  store i64 %2132, i64* %RAX.i1124, align 8
  %2133 = add i64 %2071, -44
  %2134 = add i64 %1740, 167
  store i64 %2134, i64* %PC.i, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = add i32 %2136, -4
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RDX.i1082, align 8
  %2139 = icmp ult i32 %2136, 4
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %.pre-phi, align 1
  %2141 = and i32 %2137, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %.pre-phi23, align 1
  %2146 = xor i32 %2136, %2137
  %2147 = lshr i32 %2146, 4
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  store i8 %2149, i8* %.pre-phi25, align 1
  %2150 = icmp eq i32 %2137, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %.pre-phi27, align 1
  %2152 = lshr i32 %2137, 31
  %2153 = trunc i32 %2152 to i8
  store i8 %2153, i8* %.pre-phi29, align 1
  %2154 = lshr i32 %2136, 31
  %2155 = xor i32 %2152, %2154
  %2156 = add nuw nsw i32 %2155, %2154
  %2157 = icmp eq i32 %2156, 2
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %.pre-phi31, align 1
  %2159 = sext i32 %2137 to i64
  store i64 %2159, i64* %RCX.i1621, align 8
  %2160 = shl nsw i64 %2159, 2
  %2161 = add i64 %2160, %2132
  %2162 = add i64 %1740, 178
  store i64 %2162, i64* %PC.i, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2164, i32* %2165, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2166 = load i64, i64* %RBP.i, align 8
  %2167 = add i64 %2166, -40
  %2168 = add i64 %1740, 182
  store i64 %2168, i64* %PC.i, align 8
  %2169 = inttoptr i64 %2167 to i64*
  %2170 = load i64, i64* %2169, align 8
  store i64 %2170, i64* %RAX.i1124, align 8
  %2171 = add i64 %2166, -24
  %2172 = add i64 %1740, 185
  store i64 %2172, i64* %PC.i, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RDX.i1082, align 8
  %2176 = add i64 %2166, -44
  %2177 = add i64 %1740, 188
  store i64 %2177, i64* %PC.i, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = add i32 %2179, -4
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RSI.i1502, align 8
  %2182 = sext i32 %2174 to i64
  %2183 = sext i32 %2180 to i64
  %2184 = mul nsw i64 %2183, %2182
  %2185 = trunc i64 %2184 to i32
  %2186 = and i64 %2184, 4294967295
  store i64 %2186, i64* %RDX.i1082, align 8
  %2187 = shl i64 %2184, 32
  %2188 = ashr exact i64 %2187, 32
  %2189 = icmp ne i64 %2188, %2184
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %.pre-phi, align 1
  %2191 = and i32 %2185, 255
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2196 = lshr i32 %2185, 31
  %2197 = trunc i32 %2196 to i8
  store i8 %2197, i8* %.pre-phi29, align 1
  store i8 %2190, i8* %.pre-phi31, align 1
  %2198 = add i64 %2166, -48
  %2199 = add i64 %1740, 197
  store i64 %2199, i64* %PC.i, align 8
  %2200 = trunc i64 %2184 to i32
  %2201 = inttoptr i64 %2198 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = add i32 %2202, %2200
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RDX.i1082, align 8
  %2205 = icmp ult i32 %2203, %2200
  %2206 = icmp ult i32 %2203, %2202
  %2207 = or i1 %2205, %2206
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %.pre-phi, align 1
  %2209 = and i32 %2203, 255
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  %2213 = xor i8 %2212, 1
  store i8 %2213, i8* %.pre-phi23, align 1
  %2214 = xor i32 %2202, %2200
  %2215 = xor i32 %2214, %2203
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %.pre-phi25, align 1
  %2219 = icmp eq i32 %2203, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %.pre-phi27, align 1
  %2221 = lshr i32 %2203, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %.pre-phi29, align 1
  %2223 = lshr i32 %2200, 31
  %2224 = lshr i32 %2202, 31
  %2225 = xor i32 %2221, %2223
  %2226 = xor i32 %2221, %2224
  %2227 = add nuw nsw i32 %2225, %2226
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %.pre-phi31, align 1
  %2230 = sext i32 %2203 to i64
  store i64 %2230, i64* %RCX.i1621, align 8
  %2231 = load i64, i64* %RAX.i1124, align 8
  %2232 = shl nsw i64 %2230, 2
  %2233 = add i64 %2232, %2231
  %2234 = add i64 %1740, 205
  store i64 %2234, i64* %PC.i, align 8
  %2235 = load <2 x float>, <2 x float>* %1691, align 1
  %2236 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2237 = inttoptr i64 %2233 to float*
  %2238 = load float, float* %2237, align 4
  %2239 = extractelement <2 x float> %2235, i32 0
  %2240 = fmul float %2239, %2238
  store float %2240, float* %1684, align 1
  %2241 = bitcast <2 x float> %2235 to <2 x i32>
  %2242 = extractelement <2 x i32> %2241, i32 1
  store i32 %2242, i32* %1693, align 1
  %2243 = extractelement <2 x i32> %2236, i32 0
  store i32 %2243, i32* %1694, align 1
  %2244 = extractelement <2 x i32> %2236, i32 1
  store i32 %2244, i32* %1695, align 1
  %2245 = load <2 x float>, <2 x float>* %1696, align 1
  %2246 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2247 = load <2 x float>, <2 x float>* %1698, align 1
  %2248 = extractelement <2 x float> %2245, i32 0
  %2249 = extractelement <2 x float> %2247, i32 0
  %2250 = fadd float %2248, %2249
  store float %2250, float* %1675, align 1
  %2251 = bitcast <2 x float> %2245 to <2 x i32>
  %2252 = extractelement <2 x i32> %2251, i32 1
  store i32 %2252, i32* %1699, align 1
  %2253 = extractelement <2 x i32> %2246, i32 0
  store i32 %2253, i32* %1700, align 1
  %2254 = extractelement <2 x i32> %2246, i32 1
  store i32 %2254, i32* %1701, align 1
  %2255 = load i64, i64* %RBP.i, align 8
  %2256 = add i64 %2255, -32
  %2257 = add i64 %1740, 213
  store i64 %2257, i64* %PC.i, align 8
  %2258 = inttoptr i64 %2256 to i64*
  %2259 = load i64, i64* %2258, align 8
  store i64 %2259, i64* %RAX.i1124, align 8
  %2260 = add i64 %2255, -44
  %2261 = add i64 %1740, 216
  store i64 %2261, i64* %PC.i, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = add i32 %2263, -3
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RDX.i1082, align 8
  %2266 = icmp ult i32 %2263, 3
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %.pre-phi, align 1
  %2268 = and i32 %2264, 255
  %2269 = tail call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  store i8 %2272, i8* %.pre-phi23, align 1
  %2273 = xor i32 %2263, %2264
  %2274 = lshr i32 %2273, 4
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  store i8 %2276, i8* %.pre-phi25, align 1
  %2277 = icmp eq i32 %2264, 0
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %.pre-phi27, align 1
  %2279 = lshr i32 %2264, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %.pre-phi29, align 1
  %2281 = lshr i32 %2263, 31
  %2282 = xor i32 %2279, %2281
  %2283 = add nuw nsw i32 %2282, %2281
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %.pre-phi31, align 1
  %2286 = sext i32 %2264 to i64
  store i64 %2286, i64* %RCX.i1621, align 8
  %2287 = shl nsw i64 %2286, 2
  %2288 = add i64 %2287, %2259
  %2289 = add i64 %1740, 227
  store i64 %2289, i64* %PC.i, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2291, i32* %2292, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2293 = add i64 %2255, -40
  %2294 = add i64 %1740, 231
  store i64 %2294, i64* %PC.i, align 8
  %2295 = inttoptr i64 %2293 to i64*
  %2296 = load i64, i64* %2295, align 8
  store i64 %2296, i64* %RAX.i1124, align 8
  %2297 = add i64 %2255, -24
  %2298 = add i64 %1740, 234
  store i64 %2298, i64* %PC.i, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RDX.i1082, align 8
  %2302 = add i64 %1740, 237
  store i64 %2302, i64* %PC.i, align 8
  %2303 = load i32, i32* %2262, align 4
  %2304 = add i32 %2303, -3
  %2305 = zext i32 %2304 to i64
  store i64 %2305, i64* %RSI.i1502, align 8
  %2306 = sext i32 %2300 to i64
  %2307 = sext i32 %2304 to i64
  %2308 = mul nsw i64 %2307, %2306
  %2309 = trunc i64 %2308 to i32
  %2310 = and i64 %2308, 4294967295
  store i64 %2310, i64* %RDX.i1082, align 8
  %2311 = shl i64 %2308, 32
  %2312 = ashr exact i64 %2311, 32
  %2313 = icmp ne i64 %2312, %2308
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %.pre-phi, align 1
  %2315 = and i32 %2309, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2320 = lshr i32 %2309, 31
  %2321 = trunc i32 %2320 to i8
  store i8 %2321, i8* %.pre-phi29, align 1
  store i8 %2314, i8* %.pre-phi31, align 1
  %2322 = load i64, i64* %RBP.i, align 8
  %2323 = add i64 %2322, -48
  %2324 = add i64 %1740, 246
  store i64 %2324, i64* %PC.i, align 8
  %2325 = trunc i64 %2308 to i32
  %2326 = inttoptr i64 %2323 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = add i32 %2327, %2325
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RDX.i1082, align 8
  %2330 = icmp ult i32 %2328, %2325
  %2331 = icmp ult i32 %2328, %2327
  %2332 = or i1 %2330, %2331
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %.pre-phi, align 1
  %2334 = and i32 %2328, 255
  %2335 = tail call i32 @llvm.ctpop.i32(i32 %2334)
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  %2338 = xor i8 %2337, 1
  store i8 %2338, i8* %.pre-phi23, align 1
  %2339 = xor i32 %2327, %2325
  %2340 = xor i32 %2339, %2328
  %2341 = lshr i32 %2340, 4
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  store i8 %2343, i8* %.pre-phi25, align 1
  %2344 = icmp eq i32 %2328, 0
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %.pre-phi27, align 1
  %2346 = lshr i32 %2328, 31
  %2347 = trunc i32 %2346 to i8
  store i8 %2347, i8* %.pre-phi29, align 1
  %2348 = lshr i32 %2325, 31
  %2349 = lshr i32 %2327, 31
  %2350 = xor i32 %2346, %2348
  %2351 = xor i32 %2346, %2349
  %2352 = add nuw nsw i32 %2350, %2351
  %2353 = icmp eq i32 %2352, 2
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %.pre-phi31, align 1
  %2355 = sext i32 %2328 to i64
  store i64 %2355, i64* %RCX.i1621, align 8
  %2356 = load i64, i64* %RAX.i1124, align 8
  %2357 = shl nsw i64 %2355, 2
  %2358 = add i64 %2357, %2356
  %2359 = add i64 %1740, 254
  store i64 %2359, i64* %PC.i, align 8
  %2360 = load <2 x float>, <2 x float>* %1691, align 1
  %2361 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2362 = inttoptr i64 %2358 to float*
  %2363 = load float, float* %2362, align 4
  %2364 = extractelement <2 x float> %2360, i32 0
  %2365 = fmul float %2364, %2363
  store float %2365, float* %1684, align 1
  %2366 = bitcast <2 x float> %2360 to <2 x i32>
  %2367 = extractelement <2 x i32> %2366, i32 1
  store i32 %2367, i32* %1693, align 1
  %2368 = extractelement <2 x i32> %2361, i32 0
  store i32 %2368, i32* %1694, align 1
  %2369 = extractelement <2 x i32> %2361, i32 1
  store i32 %2369, i32* %1695, align 1
  %2370 = load <2 x float>, <2 x float>* %1696, align 1
  %2371 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2372 = load <2 x float>, <2 x float>* %1698, align 1
  %2373 = extractelement <2 x float> %2370, i32 0
  %2374 = extractelement <2 x float> %2372, i32 0
  %2375 = fadd float %2373, %2374
  store float %2375, float* %1675, align 1
  %2376 = bitcast <2 x float> %2370 to <2 x i32>
  %2377 = extractelement <2 x i32> %2376, i32 1
  store i32 %2377, i32* %1699, align 1
  %2378 = extractelement <2 x i32> %2371, i32 0
  store i32 %2378, i32* %1700, align 1
  %2379 = extractelement <2 x i32> %2371, i32 1
  store i32 %2379, i32* %1701, align 1
  %2380 = add i64 %2322, -32
  %2381 = add i64 %1740, 262
  store i64 %2381, i64* %PC.i, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RAX.i1124, align 8
  %2384 = add i64 %2322, -44
  %2385 = add i64 %1740, 265
  store i64 %2385, i64* %PC.i, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = add i32 %2387, -2
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RDX.i1082, align 8
  %2390 = icmp ult i32 %2387, 2
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %.pre-phi, align 1
  %2392 = and i32 %2388, 255
  %2393 = tail call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  store i8 %2396, i8* %.pre-phi23, align 1
  %2397 = xor i32 %2387, %2388
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  store i8 %2400, i8* %.pre-phi25, align 1
  %2401 = icmp eq i32 %2388, 0
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %.pre-phi27, align 1
  %2403 = lshr i32 %2388, 31
  %2404 = trunc i32 %2403 to i8
  store i8 %2404, i8* %.pre-phi29, align 1
  %2405 = lshr i32 %2387, 31
  %2406 = xor i32 %2403, %2405
  %2407 = add nuw nsw i32 %2406, %2405
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %.pre-phi31, align 1
  %2410 = sext i32 %2388 to i64
  store i64 %2410, i64* %RCX.i1621, align 8
  %2411 = shl nsw i64 %2410, 2
  %2412 = add i64 %2411, %2383
  %2413 = add i64 %1740, 276
  store i64 %2413, i64* %PC.i, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2415, i32* %2416, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -40
  %2419 = add i64 %1740, 280
  store i64 %2419, i64* %PC.i, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %RAX.i1124, align 8
  %2422 = add i64 %2417, -24
  %2423 = add i64 %1740, 283
  store i64 %2423, i64* %PC.i, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RDX.i1082, align 8
  %2427 = add i64 %2417, -44
  %2428 = add i64 %1740, 286
  store i64 %2428, i64* %PC.i, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = add i32 %2430, -2
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RSI.i1502, align 8
  %2433 = sext i32 %2425 to i64
  %2434 = sext i32 %2431 to i64
  %2435 = mul nsw i64 %2434, %2433
  %2436 = trunc i64 %2435 to i32
  %2437 = and i64 %2435, 4294967295
  store i64 %2437, i64* %RDX.i1082, align 8
  %2438 = shl i64 %2435, 32
  %2439 = ashr exact i64 %2438, 32
  %2440 = icmp ne i64 %2439, %2435
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %.pre-phi, align 1
  %2442 = and i32 %2436, 255
  %2443 = tail call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2447 = lshr i32 %2436, 31
  %2448 = trunc i32 %2447 to i8
  store i8 %2448, i8* %.pre-phi29, align 1
  store i8 %2441, i8* %.pre-phi31, align 1
  %2449 = add i64 %2417, -48
  %2450 = add i64 %1740, 295
  store i64 %2450, i64* %PC.i, align 8
  %2451 = trunc i64 %2435 to i32
  %2452 = inttoptr i64 %2449 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = add i32 %2453, %2451
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RDX.i1082, align 8
  %2456 = icmp ult i32 %2454, %2451
  %2457 = icmp ult i32 %2454, %2453
  %2458 = or i1 %2456, %2457
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %.pre-phi, align 1
  %2460 = and i32 %2454, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %.pre-phi23, align 1
  %2465 = xor i32 %2453, %2451
  %2466 = xor i32 %2465, %2454
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %.pre-phi25, align 1
  %2470 = icmp eq i32 %2454, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %.pre-phi27, align 1
  %2472 = lshr i32 %2454, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %.pre-phi29, align 1
  %2474 = lshr i32 %2451, 31
  %2475 = lshr i32 %2453, 31
  %2476 = xor i32 %2472, %2474
  %2477 = xor i32 %2472, %2475
  %2478 = add nuw nsw i32 %2476, %2477
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %.pre-phi31, align 1
  %2481 = sext i32 %2454 to i64
  store i64 %2481, i64* %RCX.i1621, align 8
  %2482 = load i64, i64* %RAX.i1124, align 8
  %2483 = shl nsw i64 %2481, 2
  %2484 = add i64 %2483, %2482
  %2485 = add i64 %1740, 303
  store i64 %2485, i64* %PC.i, align 8
  %2486 = load <2 x float>, <2 x float>* %1691, align 1
  %2487 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2488 = inttoptr i64 %2484 to float*
  %2489 = load float, float* %2488, align 4
  %2490 = extractelement <2 x float> %2486, i32 0
  %2491 = fmul float %2490, %2489
  store float %2491, float* %1684, align 1
  %2492 = bitcast <2 x float> %2486 to <2 x i32>
  %2493 = extractelement <2 x i32> %2492, i32 1
  store i32 %2493, i32* %1693, align 1
  %2494 = extractelement <2 x i32> %2487, i32 0
  store i32 %2494, i32* %1694, align 1
  %2495 = extractelement <2 x i32> %2487, i32 1
  store i32 %2495, i32* %1695, align 1
  %2496 = load <2 x float>, <2 x float>* %1696, align 1
  %2497 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2498 = load <2 x float>, <2 x float>* %1698, align 1
  %2499 = extractelement <2 x float> %2496, i32 0
  %2500 = extractelement <2 x float> %2498, i32 0
  %2501 = fadd float %2499, %2500
  store float %2501, float* %1675, align 1
  %2502 = bitcast <2 x float> %2496 to <2 x i32>
  %2503 = extractelement <2 x i32> %2502, i32 1
  store i32 %2503, i32* %1699, align 1
  %2504 = extractelement <2 x i32> %2497, i32 0
  store i32 %2504, i32* %1700, align 1
  %2505 = extractelement <2 x i32> %2497, i32 1
  store i32 %2505, i32* %1701, align 1
  %2506 = load i64, i64* %RBP.i, align 8
  %2507 = add i64 %2506, -32
  %2508 = add i64 %1740, 311
  store i64 %2508, i64* %PC.i, align 8
  %2509 = inttoptr i64 %2507 to i64*
  %2510 = load i64, i64* %2509, align 8
  store i64 %2510, i64* %RAX.i1124, align 8
  %2511 = add i64 %2506, -44
  %2512 = add i64 %1740, 314
  store i64 %2512, i64* %PC.i, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = add i32 %2514, -1
  %2516 = zext i32 %2515 to i64
  store i64 %2516, i64* %RDX.i1082, align 8
  %2517 = icmp eq i32 %2514, 0
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %.pre-phi, align 1
  %2519 = and i32 %2515, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %.pre-phi23, align 1
  %2524 = xor i32 %2514, %2515
  %2525 = lshr i32 %2524, 4
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  store i8 %2527, i8* %.pre-phi25, align 1
  %2528 = icmp eq i32 %2515, 0
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %.pre-phi27, align 1
  %2530 = lshr i32 %2515, 31
  %2531 = trunc i32 %2530 to i8
  store i8 %2531, i8* %.pre-phi29, align 1
  %2532 = lshr i32 %2514, 31
  %2533 = xor i32 %2530, %2532
  %2534 = add nuw nsw i32 %2533, %2532
  %2535 = icmp eq i32 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %.pre-phi31, align 1
  %2537 = sext i32 %2515 to i64
  store i64 %2537, i64* %RCX.i1621, align 8
  %2538 = shl nsw i64 %2537, 2
  %2539 = add i64 %2538, %2510
  %2540 = add i64 %1740, 325
  store i64 %2540, i64* %PC.i, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2542, i32* %2543, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2544 = add i64 %2506, -40
  %2545 = add i64 %1740, 329
  store i64 %2545, i64* %PC.i, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RAX.i1124, align 8
  %2548 = add i64 %2506, -24
  %2549 = add i64 %1740, 332
  store i64 %2549, i64* %PC.i, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RDX.i1082, align 8
  %2553 = add i64 %1740, 335
  store i64 %2553, i64* %PC.i, align 8
  %2554 = load i32, i32* %2513, align 4
  %2555 = add i32 %2554, -1
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RSI.i1502, align 8
  %2557 = sext i32 %2551 to i64
  %2558 = sext i32 %2555 to i64
  %2559 = mul nsw i64 %2558, %2557
  %2560 = trunc i64 %2559 to i32
  %2561 = and i64 %2559, 4294967295
  store i64 %2561, i64* %RDX.i1082, align 8
  %2562 = shl i64 %2559, 32
  %2563 = ashr exact i64 %2562, 32
  %2564 = icmp ne i64 %2563, %2559
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %.pre-phi, align 1
  %2566 = and i32 %2560, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2571 = lshr i32 %2560, 31
  %2572 = trunc i32 %2571 to i8
  store i8 %2572, i8* %.pre-phi29, align 1
  store i8 %2565, i8* %.pre-phi31, align 1
  %2573 = load i64, i64* %RBP.i, align 8
  %2574 = add i64 %2573, -48
  %2575 = add i64 %1740, 344
  store i64 %2575, i64* %PC.i, align 8
  %2576 = trunc i64 %2559 to i32
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = add i32 %2578, %2576
  %2580 = zext i32 %2579 to i64
  store i64 %2580, i64* %RDX.i1082, align 8
  %2581 = icmp ult i32 %2579, %2576
  %2582 = icmp ult i32 %2579, %2578
  %2583 = or i1 %2581, %2582
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %.pre-phi, align 1
  %2585 = and i32 %2579, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %.pre-phi23, align 1
  %2590 = xor i32 %2578, %2576
  %2591 = xor i32 %2590, %2579
  %2592 = lshr i32 %2591, 4
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  store i8 %2594, i8* %.pre-phi25, align 1
  %2595 = icmp eq i32 %2579, 0
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %.pre-phi27, align 1
  %2597 = lshr i32 %2579, 31
  %2598 = trunc i32 %2597 to i8
  store i8 %2598, i8* %.pre-phi29, align 1
  %2599 = lshr i32 %2576, 31
  %2600 = lshr i32 %2578, 31
  %2601 = xor i32 %2597, %2599
  %2602 = xor i32 %2597, %2600
  %2603 = add nuw nsw i32 %2601, %2602
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %.pre-phi31, align 1
  %2606 = sext i32 %2579 to i64
  store i64 %2606, i64* %RCX.i1621, align 8
  %2607 = load i64, i64* %RAX.i1124, align 8
  %2608 = shl nsw i64 %2606, 2
  %2609 = add i64 %2608, %2607
  %2610 = add i64 %1740, 352
  store i64 %2610, i64* %PC.i, align 8
  %2611 = load <2 x float>, <2 x float>* %1691, align 1
  %2612 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2613 = inttoptr i64 %2609 to float*
  %2614 = load float, float* %2613, align 4
  %2615 = extractelement <2 x float> %2611, i32 0
  %2616 = fmul float %2615, %2614
  store float %2616, float* %1684, align 1
  %2617 = bitcast <2 x float> %2611 to <2 x i32>
  %2618 = extractelement <2 x i32> %2617, i32 1
  store i32 %2618, i32* %1693, align 1
  %2619 = extractelement <2 x i32> %2612, i32 0
  store i32 %2619, i32* %1694, align 1
  %2620 = extractelement <2 x i32> %2612, i32 1
  store i32 %2620, i32* %1695, align 1
  %2621 = load <2 x float>, <2 x float>* %1696, align 1
  %2622 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2623 = load <2 x float>, <2 x float>* %1698, align 1
  %2624 = extractelement <2 x float> %2621, i32 0
  %2625 = extractelement <2 x float> %2623, i32 0
  %2626 = fadd float %2624, %2625
  store float %2626, float* %1675, align 1
  %2627 = bitcast <2 x float> %2621 to <2 x i32>
  %2628 = extractelement <2 x i32> %2627, i32 1
  store i32 %2628, i32* %1699, align 1
  %2629 = extractelement <2 x i32> %2622, i32 0
  store i32 %2629, i32* %1700, align 1
  %2630 = extractelement <2 x i32> %2622, i32 1
  store i32 %2630, i32* %1701, align 1
  %2631 = add i64 %2573, -32
  %2632 = add i64 %1740, 360
  store i64 %2632, i64* %PC.i, align 8
  %2633 = inttoptr i64 %2631 to i64*
  %2634 = load i64, i64* %2633, align 8
  store i64 %2634, i64* %RAX.i1124, align 8
  %2635 = add i64 %2573, -44
  %2636 = add i64 %1740, 364
  store i64 %2636, i64* %PC.i, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = sext i32 %2638 to i64
  store i64 %2639, i64* %RCX.i1621, align 8
  %2640 = shl nsw i64 %2639, 2
  %2641 = add i64 %2640, %2634
  %2642 = add i64 %1740, 369
  store i64 %2642, i64* %PC.i, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = bitcast %union.VectorReg* %1682 to i32*
  store i32 %2644, i32* %2645, align 1
  store float 0.000000e+00, float* %1686, align 1
  store float 0.000000e+00, float* %1688, align 1
  store float 0.000000e+00, float* %1690, align 1
  %2646 = load i64, i64* %RBP.i, align 8
  %2647 = add i64 %2646, -40
  %2648 = add i64 %1740, 373
  store i64 %2648, i64* %PC.i, align 8
  %2649 = inttoptr i64 %2647 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RAX.i1124, align 8
  %2651 = add i64 %2646, -24
  %2652 = add i64 %1740, 376
  store i64 %2652, i64* %PC.i, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RDX.i1082, align 8
  %2656 = add i64 %2646, -44
  %2657 = add i64 %1740, 380
  store i64 %2657, i64* %PC.i, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = sext i32 %2654 to i64
  %2661 = sext i32 %2659 to i64
  %2662 = mul nsw i64 %2661, %2660
  %2663 = trunc i64 %2662 to i32
  %2664 = and i64 %2662, 4294967295
  store i64 %2664, i64* %RDX.i1082, align 8
  %2665 = shl i64 %2662, 32
  %2666 = ashr exact i64 %2665, 32
  %2667 = icmp ne i64 %2666, %2662
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %.pre-phi, align 1
  %2669 = and i32 %2663, 255
  %2670 = tail call i32 @llvm.ctpop.i32(i32 %2669)
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = xor i8 %2672, 1
  store i8 %2673, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %2674 = lshr i32 %2663, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %.pre-phi29, align 1
  store i8 %2668, i8* %.pre-phi31, align 1
  %2676 = add i64 %2646, -48
  %2677 = add i64 %1740, 383
  store i64 %2677, i64* %PC.i, align 8
  %2678 = trunc i64 %2662 to i32
  %2679 = inttoptr i64 %2676 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = add i32 %2680, %2678
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RDX.i1082, align 8
  %2683 = icmp ult i32 %2681, %2678
  %2684 = icmp ult i32 %2681, %2680
  %2685 = or i1 %2683, %2684
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %.pre-phi, align 1
  %2687 = and i32 %2681, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %.pre-phi23, align 1
  %2692 = xor i32 %2680, %2678
  %2693 = xor i32 %2692, %2681
  %2694 = lshr i32 %2693, 4
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  store i8 %2696, i8* %.pre-phi25, align 1
  %2697 = icmp eq i32 %2681, 0
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %.pre-phi27, align 1
  %2699 = lshr i32 %2681, 31
  %2700 = trunc i32 %2699 to i8
  store i8 %2700, i8* %.pre-phi29, align 1
  %2701 = lshr i32 %2678, 31
  %2702 = lshr i32 %2680, 31
  %2703 = xor i32 %2699, %2701
  %2704 = xor i32 %2699, %2702
  %2705 = add nuw nsw i32 %2703, %2704
  %2706 = icmp eq i32 %2705, 2
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %.pre-phi31, align 1
  %2708 = sext i32 %2681 to i64
  store i64 %2708, i64* %RCX.i1621, align 8
  %2709 = shl nsw i64 %2708, 2
  %2710 = add i64 %2709, %2650
  %2711 = add i64 %1740, 391
  store i64 %2711, i64* %PC.i, align 8
  %2712 = load <2 x float>, <2 x float>* %1691, align 1
  %2713 = load <2 x i32>, <2 x i32>* %1692, align 1
  %2714 = inttoptr i64 %2710 to float*
  %2715 = load float, float* %2714, align 4
  %2716 = extractelement <2 x float> %2712, i32 0
  %2717 = fmul float %2716, %2715
  store float %2717, float* %1684, align 1
  %2718 = bitcast <2 x float> %2712 to <2 x i32>
  %2719 = extractelement <2 x i32> %2718, i32 1
  store i32 %2719, i32* %1693, align 1
  %2720 = extractelement <2 x i32> %2713, i32 0
  store i32 %2720, i32* %1694, align 1
  %2721 = extractelement <2 x i32> %2713, i32 1
  store i32 %2721, i32* %1695, align 1
  %2722 = load <2 x float>, <2 x float>* %1696, align 1
  %2723 = load <2 x i32>, <2 x i32>* %1697, align 1
  %2724 = load <2 x float>, <2 x float>* %1698, align 1
  %2725 = extractelement <2 x float> %2722, i32 0
  %2726 = extractelement <2 x float> %2724, i32 0
  %2727 = fadd float %2725, %2726
  store float %2727, float* %1675, align 1
  %2728 = bitcast <2 x float> %2722 to <2 x i32>
  %2729 = extractelement <2 x i32> %2728, i32 1
  store i32 %2729, i32* %1699, align 1
  %2730 = extractelement <2 x i32> %2723, i32 0
  store i32 %2730, i32* %1700, align 1
  %2731 = extractelement <2 x i32> %2723, i32 1
  store i32 %2731, i32* %1701, align 1
  %2732 = load i64, i64* %RBP.i, align 8
  %2733 = add i64 %2732, -16
  %2734 = add i64 %1740, 399
  store i64 %2734, i64* %PC.i, align 8
  %2735 = inttoptr i64 %2733 to i64*
  %2736 = load i64, i64* %2735, align 8
  store i64 %2736, i64* %RAX.i1124, align 8
  %2737 = add i64 %2732, -48
  %2738 = add i64 %1740, 403
  store i64 %2738, i64* %PC.i, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = sext i32 %2740 to i64
  store i64 %2741, i64* %RCX.i1621, align 8
  %2742 = shl nsw i64 %2741, 2
  %2743 = add i64 %2742, %2736
  %2744 = add i64 %1740, 408
  store i64 %2744, i64* %PC.i, align 8
  %2745 = load <2 x float>, <2 x float>* %1702, align 1
  %2746 = extractelement <2 x float> %2745, i32 0
  %2747 = inttoptr i64 %2743 to float*
  store float %2746, float* %2747, align 4
  %2748 = load i64, i64* %RBP.i, align 8
  %2749 = add i64 %2748, -48
  %2750 = load i64, i64* %PC.i, align 8
  %2751 = add i64 %2750, 3
  store i64 %2751, i64* %PC.i, align 8
  %2752 = inttoptr i64 %2749 to i32*
  %2753 = load i32, i32* %2752, align 4
  %2754 = add i32 %2753, 1
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RAX.i1124, align 8
  %2756 = icmp eq i32 %2753, -1
  %2757 = icmp eq i32 %2754, 0
  %2758 = or i1 %2756, %2757
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %.pre-phi, align 1
  %2760 = and i32 %2754, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %.pre-phi23, align 1
  %2765 = xor i32 %2753, %2754
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %.pre-phi25, align 1
  %2769 = icmp eq i32 %2754, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %.pre-phi27, align 1
  %2771 = lshr i32 %2754, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %.pre-phi29, align 1
  %2773 = lshr i32 %2753, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2771
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %.pre-phi31, align 1
  %2778 = add i64 %2750, 9
  store i64 %2778, i64* %PC.i, align 8
  store i32 %2754, i32* %2752, align 4
  %2779 = load i64, i64* %PC.i, align 8
  %2780 = add i64 %2779, -429
  store i64 %2780, i64* %3, align 8
  br label %block_.L_4022cd

block_.L_40247f:                                  ; preds = %block_.L_4022cd
  %2781 = add i64 %1740, 5
  store i64 %2781, i64* %3, align 8
  br label %block_.L_402484

block_.L_402484:                                  ; preds = %block_.L_40247f, %routine_idivl__ecx.exit1122
  %2782 = phi i64 [ %1704, %block_.L_40247f ], [ %1613, %routine_idivl__ecx.exit1122 ]
  %2783 = phi i64 [ %2781, %block_.L_40247f ], [ %1642, %routine_idivl__ecx.exit1122 ]
  store i64 16, i64* %RAX.i1124, align 8
  %2784 = add i64 %2782, -20
  %2785 = add i64 %2783, 8
  store i64 %2785, i64* %PC.i, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RCX.i1621, align 8
  %2789 = add i64 %2782, -72
  %2790 = add i64 %2783, 11
  store i64 %2790, i64* %PC.i, align 8
  %2791 = inttoptr i64 %2789 to i32*
  store i32 16, i32* %2791, align 4
  %2792 = load i32, i32* %ECX.i1628, align 4
  %2793 = zext i32 %2792 to i64
  %2794 = load i64, i64* %PC.i, align 8
  store i64 %2793, i64* %RAX.i1124, align 8
  %2795 = sext i32 %2792 to i64
  %2796 = lshr i64 %2795, 32
  store i64 %2796, i64* %63, align 8
  %2797 = load i64, i64* %RBP.i, align 8
  %2798 = add i64 %2797, -72
  %2799 = add i64 %2794, 6
  store i64 %2799, i64* %PC.i, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RCX.i1621, align 8
  %2803 = add i64 %2794, 8
  store i64 %2803, i64* %PC.i, align 8
  %2804 = zext i32 %2792 to i64
  %2805 = sext i32 %2801 to i64
  %2806 = shl nuw i64 %2796, 32
  %2807 = or i64 %2806, %2804
  %2808 = sdiv i64 %2807, %2805
  %2809 = shl i64 %2808, 32
  %2810 = ashr exact i64 %2809, 32
  %2811 = icmp eq i64 %2808, %2810
  br i1 %2811, label %2814, label %2812

; <label>:2812:                                   ; preds = %block_.L_402484
  %2813 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2803, %struct.Memory* %1609)
  %RDX.i722.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre16 = load i64, i64* %RDX.i722.phi.trans.insert, align 8
  %.pre17 = load i64, i64* %PC.i, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:2814:                                   ; preds = %block_.L_402484
  %2815 = srem i64 %2807, %2805
  %2816 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %2817 = and i64 %2808, 4294967295
  store i64 %2817, i64* %2816, align 8
  %2818 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %2819 = and i64 %2815, 4294967295
  store i64 %2819, i64* %2818, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  store i8 0, i8* %.pre-phi29, align 1
  store i8 0, i8* %.pre-phi31, align 1
  %.pre32 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2814, %2812
  %RDX.i722.pre-phi = phi i64* [ %.pre32, %2814 ], [ %RDX.i722.phi.trans.insert, %2812 ]
  %2820 = phi i64 [ %2797, %2814 ], [ %.pre18, %2812 ]
  %2821 = phi i64 [ %2803, %2814 ], [ %.pre17, %2812 ]
  %2822 = phi i64 [ %2819, %2814 ], [ %.pre16, %2812 ]
  %2823 = phi %struct.Memory* [ %1609, %2814 ], [ %2813, %2812 ]
  %2824 = trunc i64 %2822 to i32
  %2825 = add i32 %2824, 16
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i722.pre-phi, align 8
  %2827 = icmp ugt i32 %2824, -17
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %.pre-phi, align 1
  %2829 = and i32 %2825, 255
  %2830 = tail call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  store i8 %2833, i8* %.pre-phi23, align 1
  %2834 = trunc i64 %2822 to i32
  %2835 = xor i32 %2834, 16
  %2836 = xor i32 %2835, %2825
  %2837 = lshr i32 %2836, 4
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  store i8 %2839, i8* %.pre-phi25, align 1
  %2840 = icmp eq i32 %2825, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %.pre-phi27, align 1
  %2842 = lshr i32 %2825, 31
  %2843 = trunc i32 %2842 to i8
  store i8 %2843, i8* %.pre-phi29, align 1
  %2844 = lshr i32 %2824, 31
  %2845 = xor i32 %2842, %2844
  %2846 = add nuw nsw i32 %2845, %2842
  %2847 = icmp eq i32 %2846, 2
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %.pre-phi31, align 1
  %2849 = add i64 %2820, -52
  %2850 = add i64 %2821, 6
  store i64 %2850, i64* %PC.i, align 8
  %2851 = inttoptr i64 %2849 to i32*
  store i32 %2825, i32* %2851, align 4
  %2852 = load i64, i64* %RBP.i, align 8
  %2853 = add i64 %2852, -52
  %2854 = load i64, i64* %PC.i, align 8
  %2855 = add i64 %2854, 3
  store i64 %2855, i64* %PC.i, align 8
  %2856 = inttoptr i64 %2853 to i32*
  %2857 = load i32, i32* %2856, align 4
  %2858 = add i32 %2857, -1
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RDX.i722.pre-phi, align 8
  %2860 = icmp eq i32 %2857, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %.pre-phi, align 1
  %2862 = and i32 %2858, 255
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2862)
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  store i8 %2866, i8* %.pre-phi23, align 1
  %2867 = xor i32 %2857, %2858
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  store i8 %2870, i8* %.pre-phi25, align 1
  %2871 = icmp eq i32 %2858, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %.pre-phi27, align 1
  %2873 = lshr i32 %2858, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %.pre-phi29, align 1
  %2875 = lshr i32 %2857, 31
  %2876 = xor i32 %2873, %2875
  %2877 = add nuw nsw i32 %2876, %2875
  %2878 = icmp eq i32 %2877, 2
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %.pre-phi31, align 1
  %2880 = add i64 %2852, -44
  %2881 = add i64 %2854, 9
  store i64 %2881, i64* %PC.i, align 8
  %2882 = inttoptr i64 %2880 to i32*
  store i32 %2858, i32* %2882, align 4
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2884 = bitcast [32 x %union.VectorReg]* %2883 to i8*
  %2885 = bitcast [32 x %union.VectorReg]* %2883 to float*
  %2886 = getelementptr inbounds i8, i8* %2884, i64 4
  %2887 = bitcast i8* %2886 to float*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2889 = bitcast i64* %2888 to float*
  %2890 = getelementptr inbounds i8, i8* %2884, i64 12
  %2891 = bitcast i8* %2890 to float*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %2893 = bitcast %union.VectorReg* %2892 to i8*
  %2894 = bitcast %union.VectorReg* %2892 to float*
  %2895 = getelementptr inbounds i8, i8* %2893, i64 4
  %2896 = bitcast i8* %2895 to float*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2898 = bitcast i64* %2897 to float*
  %2899 = getelementptr inbounds i8, i8* %2893, i64 12
  %2900 = bitcast i8* %2899 to float*
  %2901 = bitcast %union.VectorReg* %2892 to <2 x float>*
  %2902 = bitcast i64* %2897 to <2 x i32>*
  %2903 = bitcast i8* %2895 to i32*
  %2904 = bitcast i64* %2897 to i32*
  %2905 = bitcast i8* %2899 to i32*
  %2906 = bitcast [32 x %union.VectorReg]* %2883 to <2 x float>*
  %2907 = bitcast i64* %2888 to <2 x i32>*
  %2908 = bitcast %union.VectorReg* %2892 to <2 x float>*
  %2909 = bitcast i8* %2886 to i32*
  %2910 = bitcast i64* %2888 to i32*
  %2911 = bitcast i8* %2890 to i32*
  %2912 = bitcast [32 x %union.VectorReg]* %2883 to <2 x float>*
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %block_.L_4024a6

block_.L_4024a6:                                  ; preds = %block_.L_4027f3, %routine_idivl__ecx.exit
  %2913 = phi i64 [ %5065, %block_.L_4027f3 ], [ %.pre19, %routine_idivl__ecx.exit ]
  %2914 = load i64, i64* %RBP.i, align 8
  %2915 = add i64 %2914, -44
  %2916 = add i64 %2913, 3
  store i64 %2916, i64* %PC.i, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RAX.i1124, align 8
  %2920 = add i64 %2914, -20
  %2921 = add i64 %2913, 6
  store i64 %2921, i64* %PC.i, align 8
  %2922 = inttoptr i64 %2920 to i32*
  %2923 = load i32, i32* %2922, align 4
  %2924 = sub i32 %2918, %2923
  %2925 = icmp ult i32 %2918, %2923
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %.pre-phi, align 1
  %2927 = and i32 %2924, 255
  %2928 = tail call i32 @llvm.ctpop.i32(i32 %2927)
  %2929 = trunc i32 %2928 to i8
  %2930 = and i8 %2929, 1
  %2931 = xor i8 %2930, 1
  store i8 %2931, i8* %.pre-phi23, align 1
  %2932 = xor i32 %2923, %2918
  %2933 = xor i32 %2932, %2924
  %2934 = lshr i32 %2933, 4
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  store i8 %2936, i8* %.pre-phi25, align 1
  %2937 = icmp eq i32 %2924, 0
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %.pre-phi27, align 1
  %2939 = lshr i32 %2924, 31
  %2940 = trunc i32 %2939 to i8
  store i8 %2940, i8* %.pre-phi29, align 1
  %2941 = lshr i32 %2918, 31
  %2942 = lshr i32 %2923, 31
  %2943 = xor i32 %2942, %2941
  %2944 = xor i32 %2939, %2941
  %2945 = add nuw nsw i32 %2944, %2943
  %2946 = icmp eq i32 %2945, 2
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %.pre-phi31, align 1
  %2948 = icmp ne i8 %2940, 0
  %2949 = xor i1 %2948, %2946
  %.v40 = select i1 %2949, i64 12, i64 864
  %2950 = add i64 %2913, %.v40
  store i64 %2950, i64* %3, align 8
  br i1 %2949, label %block_4024b2, label %block_.L_402806

block_4024b2:                                     ; preds = %block_.L_4024a6
  %2951 = add i64 %2914, -48
  %2952 = add i64 %2950, 7
  store i64 %2952, i64* %PC.i, align 8
  %2953 = inttoptr i64 %2951 to i32*
  store i32 0, i32* %2953, align 4
  %.pre20 = load i64, i64* %PC.i, align 8
  br label %block_.L_4024b9

block_.L_4024b9:                                  ; preds = %block_4024c5, %block_4024b2
  %2954 = phi i64 [ %5035, %block_4024c5 ], [ %.pre20, %block_4024b2 ]
  %2955 = load i64, i64* %RBP.i, align 8
  %2956 = add i64 %2955, -48
  %2957 = add i64 %2954, 3
  store i64 %2957, i64* %PC.i, align 8
  %2958 = inttoptr i64 %2956 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RAX.i1124, align 8
  %2961 = add i64 %2955, -4
  %2962 = add i64 %2954, 6
  store i64 %2962, i64* %PC.i, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = sub i32 %2959, %2964
  %2966 = icmp ult i32 %2959, %2964
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %.pre-phi, align 1
  %2968 = and i32 %2965, 255
  %2969 = tail call i32 @llvm.ctpop.i32(i32 %2968)
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  store i8 %2972, i8* %.pre-phi23, align 1
  %2973 = xor i32 %2964, %2959
  %2974 = xor i32 %2973, %2965
  %2975 = lshr i32 %2974, 4
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  store i8 %2977, i8* %.pre-phi25, align 1
  %2978 = icmp eq i32 %2965, 0
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %.pre-phi27, align 1
  %2980 = lshr i32 %2965, 31
  %2981 = trunc i32 %2980 to i8
  store i8 %2981, i8* %.pre-phi29, align 1
  %2982 = lshr i32 %2959, 31
  %2983 = lshr i32 %2964, 31
  %2984 = xor i32 %2983, %2982
  %2985 = xor i32 %2980, %2982
  %2986 = add nuw nsw i32 %2985, %2984
  %2987 = icmp eq i32 %2986, 2
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %.pre-phi31, align 1
  %2989 = icmp ne i8 %2981, 0
  %2990 = xor i1 %2989, %2987
  %.v41 = select i1 %2990, i64 12, i64 826
  %2991 = add i64 %2954, %.v41
  store i64 %2991, i64* %3, align 8
  br i1 %2990, label %block_4024c5, label %block_.L_4027f3

block_4024c5:                                     ; preds = %block_.L_4024b9
  %2992 = add i64 %2955, -16
  %2993 = add i64 %2991, 4
  store i64 %2993, i64* %PC.i, align 8
  %2994 = inttoptr i64 %2992 to i64*
  %2995 = load i64, i64* %2994, align 8
  store i64 %2995, i64* %RAX.i1124, align 8
  %2996 = add i64 %2991, 8
  store i64 %2996, i64* %PC.i, align 8
  %2997 = load i32, i32* %2958, align 4
  %2998 = sext i32 %2997 to i64
  store i64 %2998, i64* %RCX.i1621, align 8
  %2999 = shl nsw i64 %2998, 2
  %3000 = add i64 %2999, %2995
  %3001 = add i64 %2991, 13
  store i64 %3001, i64* %PC.i, align 8
  %3002 = inttoptr i64 %3000 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = bitcast [32 x %union.VectorReg]* %2883 to i32*
  store i32 %3003, i32* %3004, align 1
  store float 0.000000e+00, float* %2887, align 1
  store float 0.000000e+00, float* %2889, align 1
  store float 0.000000e+00, float* %2891, align 1
  %3005 = add i64 %2955, -32
  %3006 = add i64 %2991, 17
  store i64 %3006, i64* %PC.i, align 8
  %3007 = inttoptr i64 %3005 to i64*
  %3008 = load i64, i64* %3007, align 8
  store i64 %3008, i64* %RAX.i1124, align 8
  %3009 = add i64 %2955, -44
  %3010 = add i64 %2991, 20
  store i64 %3010, i64* %PC.i, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = add i32 %3012, -15
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RDX.i722.pre-phi, align 8
  %3015 = icmp ult i32 %3012, 15
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %.pre-phi, align 1
  %3017 = and i32 %3013, 255
  %3018 = tail call i32 @llvm.ctpop.i32(i32 %3017)
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  %3021 = xor i8 %3020, 1
  store i8 %3021, i8* %.pre-phi23, align 1
  %3022 = xor i32 %3012, %3013
  %3023 = lshr i32 %3022, 4
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  store i8 %3025, i8* %.pre-phi25, align 1
  %3026 = icmp eq i32 %3013, 0
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %.pre-phi27, align 1
  %3028 = lshr i32 %3013, 31
  %3029 = trunc i32 %3028 to i8
  store i8 %3029, i8* %.pre-phi29, align 1
  %3030 = lshr i32 %3012, 31
  %3031 = xor i32 %3028, %3030
  %3032 = add nuw nsw i32 %3031, %3030
  %3033 = icmp eq i32 %3032, 2
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %.pre-phi31, align 1
  %3035 = sext i32 %3013 to i64
  store i64 %3035, i64* %RCX.i1621, align 8
  %3036 = shl nsw i64 %3035, 2
  %3037 = add i64 %3036, %3008
  %3038 = add i64 %2991, 31
  store i64 %3038, i64* %PC.i, align 8
  %3039 = inttoptr i64 %3037 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3040, i32* %3041, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3042 = add i64 %2955, -40
  %3043 = add i64 %2991, 35
  store i64 %3043, i64* %PC.i, align 8
  %3044 = inttoptr i64 %3042 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RAX.i1124, align 8
  %3046 = add i64 %2955, -24
  %3047 = add i64 %2991, 38
  store i64 %3047, i64* %PC.i, align 8
  %3048 = inttoptr i64 %3046 to i32*
  %3049 = load i32, i32* %3048, align 4
  %3050 = zext i32 %3049 to i64
  store i64 %3050, i64* %RDX.i722.pre-phi, align 8
  %3051 = add i64 %2991, 41
  store i64 %3051, i64* %PC.i, align 8
  %3052 = load i32, i32* %3011, align 4
  %3053 = add i32 %3052, -15
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RSI.i1502, align 8
  %3055 = sext i32 %3049 to i64
  %3056 = sext i32 %3053 to i64
  %3057 = mul nsw i64 %3056, %3055
  %3058 = trunc i64 %3057 to i32
  %3059 = and i64 %3057, 4294967295
  store i64 %3059, i64* %RDX.i722.pre-phi, align 8
  %3060 = shl i64 %3057, 32
  %3061 = ashr exact i64 %3060, 32
  %3062 = icmp ne i64 %3061, %3057
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %.pre-phi, align 1
  %3064 = and i32 %3058, 255
  %3065 = tail call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  store i8 %3068, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3069 = lshr i32 %3058, 31
  %3070 = trunc i32 %3069 to i8
  store i8 %3070, i8* %.pre-phi29, align 1
  store i8 %3063, i8* %.pre-phi31, align 1
  %3071 = load i64, i64* %RBP.i, align 8
  %3072 = add i64 %3071, -48
  %3073 = add i64 %2991, 50
  store i64 %3073, i64* %PC.i, align 8
  %3074 = trunc i64 %3057 to i32
  %3075 = inttoptr i64 %3072 to i32*
  %3076 = load i32, i32* %3075, align 4
  %3077 = add i32 %3076, %3074
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RDX.i722.pre-phi, align 8
  %3079 = icmp ult i32 %3077, %3074
  %3080 = icmp ult i32 %3077, %3076
  %3081 = or i1 %3079, %3080
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %.pre-phi, align 1
  %3083 = and i32 %3077, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %.pre-phi23, align 1
  %3088 = xor i32 %3076, %3074
  %3089 = xor i32 %3088, %3077
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %.pre-phi25, align 1
  %3093 = icmp eq i32 %3077, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %.pre-phi27, align 1
  %3095 = lshr i32 %3077, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %.pre-phi29, align 1
  %3097 = lshr i32 %3074, 31
  %3098 = lshr i32 %3076, 31
  %3099 = xor i32 %3095, %3097
  %3100 = xor i32 %3095, %3098
  %3101 = add nuw nsw i32 %3099, %3100
  %3102 = icmp eq i32 %3101, 2
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %.pre-phi31, align 1
  %3104 = sext i32 %3077 to i64
  store i64 %3104, i64* %RCX.i1621, align 8
  %3105 = load i64, i64* %RAX.i1124, align 8
  %3106 = shl nsw i64 %3104, 2
  %3107 = add i64 %3106, %3105
  %3108 = add i64 %2991, 58
  store i64 %3108, i64* %PC.i, align 8
  %3109 = load <2 x float>, <2 x float>* %2901, align 1
  %3110 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3111 = inttoptr i64 %3107 to float*
  %3112 = load float, float* %3111, align 4
  %3113 = extractelement <2 x float> %3109, i32 0
  %3114 = fmul float %3113, %3112
  store float %3114, float* %2894, align 1
  %3115 = bitcast <2 x float> %3109 to <2 x i32>
  %3116 = extractelement <2 x i32> %3115, i32 1
  store i32 %3116, i32* %2903, align 1
  %3117 = extractelement <2 x i32> %3110, i32 0
  store i32 %3117, i32* %2904, align 1
  %3118 = extractelement <2 x i32> %3110, i32 1
  store i32 %3118, i32* %2905, align 1
  %3119 = load <2 x float>, <2 x float>* %2906, align 1
  %3120 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3121 = load <2 x float>, <2 x float>* %2908, align 1
  %3122 = extractelement <2 x float> %3119, i32 0
  %3123 = extractelement <2 x float> %3121, i32 0
  %3124 = fadd float %3122, %3123
  store float %3124, float* %2885, align 1
  %3125 = bitcast <2 x float> %3119 to <2 x i32>
  %3126 = extractelement <2 x i32> %3125, i32 1
  store i32 %3126, i32* %2909, align 1
  %3127 = extractelement <2 x i32> %3120, i32 0
  store i32 %3127, i32* %2910, align 1
  %3128 = extractelement <2 x i32> %3120, i32 1
  store i32 %3128, i32* %2911, align 1
  %3129 = add i64 %3071, -32
  %3130 = add i64 %2991, 66
  store i64 %3130, i64* %PC.i, align 8
  %3131 = inttoptr i64 %3129 to i64*
  %3132 = load i64, i64* %3131, align 8
  store i64 %3132, i64* %RAX.i1124, align 8
  %3133 = add i64 %3071, -44
  %3134 = add i64 %2991, 69
  store i64 %3134, i64* %PC.i, align 8
  %3135 = inttoptr i64 %3133 to i32*
  %3136 = load i32, i32* %3135, align 4
  %3137 = add i32 %3136, -14
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RDX.i722.pre-phi, align 8
  %3139 = icmp ult i32 %3136, 14
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %.pre-phi, align 1
  %3141 = and i32 %3137, 255
  %3142 = tail call i32 @llvm.ctpop.i32(i32 %3141)
  %3143 = trunc i32 %3142 to i8
  %3144 = and i8 %3143, 1
  %3145 = xor i8 %3144, 1
  store i8 %3145, i8* %.pre-phi23, align 1
  %3146 = xor i32 %3136, %3137
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  store i8 %3149, i8* %.pre-phi25, align 1
  %3150 = icmp eq i32 %3137, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %.pre-phi27, align 1
  %3152 = lshr i32 %3137, 31
  %3153 = trunc i32 %3152 to i8
  store i8 %3153, i8* %.pre-phi29, align 1
  %3154 = lshr i32 %3136, 31
  %3155 = xor i32 %3152, %3154
  %3156 = add nuw nsw i32 %3155, %3154
  %3157 = icmp eq i32 %3156, 2
  %3158 = zext i1 %3157 to i8
  store i8 %3158, i8* %.pre-phi31, align 1
  %3159 = sext i32 %3137 to i64
  store i64 %3159, i64* %RCX.i1621, align 8
  %3160 = shl nsw i64 %3159, 2
  %3161 = add i64 %3160, %3132
  %3162 = add i64 %2991, 80
  store i64 %3162, i64* %PC.i, align 8
  %3163 = inttoptr i64 %3161 to i32*
  %3164 = load i32, i32* %3163, align 4
  %3165 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3164, i32* %3165, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3166 = load i64, i64* %RBP.i, align 8
  %3167 = add i64 %3166, -40
  %3168 = add i64 %2991, 84
  store i64 %3168, i64* %PC.i, align 8
  %3169 = inttoptr i64 %3167 to i64*
  %3170 = load i64, i64* %3169, align 8
  store i64 %3170, i64* %RAX.i1124, align 8
  %3171 = add i64 %3166, -24
  %3172 = add i64 %2991, 87
  store i64 %3172, i64* %PC.i, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RDX.i722.pre-phi, align 8
  %3176 = add i64 %3166, -44
  %3177 = add i64 %2991, 90
  store i64 %3177, i64* %PC.i, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = add i32 %3179, -14
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RSI.i1502, align 8
  %3182 = sext i32 %3174 to i64
  %3183 = sext i32 %3180 to i64
  %3184 = mul nsw i64 %3183, %3182
  %3185 = trunc i64 %3184 to i32
  %3186 = and i64 %3184, 4294967295
  store i64 %3186, i64* %RDX.i722.pre-phi, align 8
  %3187 = shl i64 %3184, 32
  %3188 = ashr exact i64 %3187, 32
  %3189 = icmp ne i64 %3188, %3184
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %.pre-phi, align 1
  %3191 = and i32 %3185, 255
  %3192 = tail call i32 @llvm.ctpop.i32(i32 %3191)
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = xor i8 %3194, 1
  store i8 %3195, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3196 = lshr i32 %3185, 31
  %3197 = trunc i32 %3196 to i8
  store i8 %3197, i8* %.pre-phi29, align 1
  store i8 %3190, i8* %.pre-phi31, align 1
  %3198 = add i64 %3166, -48
  %3199 = add i64 %2991, 99
  store i64 %3199, i64* %PC.i, align 8
  %3200 = trunc i64 %3184 to i32
  %3201 = inttoptr i64 %3198 to i32*
  %3202 = load i32, i32* %3201, align 4
  %3203 = add i32 %3202, %3200
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RDX.i722.pre-phi, align 8
  %3205 = icmp ult i32 %3203, %3200
  %3206 = icmp ult i32 %3203, %3202
  %3207 = or i1 %3205, %3206
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %.pre-phi, align 1
  %3209 = and i32 %3203, 255
  %3210 = tail call i32 @llvm.ctpop.i32(i32 %3209)
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = xor i8 %3212, 1
  store i8 %3213, i8* %.pre-phi23, align 1
  %3214 = xor i32 %3202, %3200
  %3215 = xor i32 %3214, %3203
  %3216 = lshr i32 %3215, 4
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  store i8 %3218, i8* %.pre-phi25, align 1
  %3219 = icmp eq i32 %3203, 0
  %3220 = zext i1 %3219 to i8
  store i8 %3220, i8* %.pre-phi27, align 1
  %3221 = lshr i32 %3203, 31
  %3222 = trunc i32 %3221 to i8
  store i8 %3222, i8* %.pre-phi29, align 1
  %3223 = lshr i32 %3200, 31
  %3224 = lshr i32 %3202, 31
  %3225 = xor i32 %3221, %3223
  %3226 = xor i32 %3221, %3224
  %3227 = add nuw nsw i32 %3225, %3226
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %.pre-phi31, align 1
  %3230 = sext i32 %3203 to i64
  store i64 %3230, i64* %RCX.i1621, align 8
  %3231 = load i64, i64* %RAX.i1124, align 8
  %3232 = shl nsw i64 %3230, 2
  %3233 = add i64 %3232, %3231
  %3234 = add i64 %2991, 107
  store i64 %3234, i64* %PC.i, align 8
  %3235 = load <2 x float>, <2 x float>* %2901, align 1
  %3236 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3237 = inttoptr i64 %3233 to float*
  %3238 = load float, float* %3237, align 4
  %3239 = extractelement <2 x float> %3235, i32 0
  %3240 = fmul float %3239, %3238
  store float %3240, float* %2894, align 1
  %3241 = bitcast <2 x float> %3235 to <2 x i32>
  %3242 = extractelement <2 x i32> %3241, i32 1
  store i32 %3242, i32* %2903, align 1
  %3243 = extractelement <2 x i32> %3236, i32 0
  store i32 %3243, i32* %2904, align 1
  %3244 = extractelement <2 x i32> %3236, i32 1
  store i32 %3244, i32* %2905, align 1
  %3245 = load <2 x float>, <2 x float>* %2906, align 1
  %3246 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3247 = load <2 x float>, <2 x float>* %2908, align 1
  %3248 = extractelement <2 x float> %3245, i32 0
  %3249 = extractelement <2 x float> %3247, i32 0
  %3250 = fadd float %3248, %3249
  store float %3250, float* %2885, align 1
  %3251 = bitcast <2 x float> %3245 to <2 x i32>
  %3252 = extractelement <2 x i32> %3251, i32 1
  store i32 %3252, i32* %2909, align 1
  %3253 = extractelement <2 x i32> %3246, i32 0
  store i32 %3253, i32* %2910, align 1
  %3254 = extractelement <2 x i32> %3246, i32 1
  store i32 %3254, i32* %2911, align 1
  %3255 = load i64, i64* %RBP.i, align 8
  %3256 = add i64 %3255, -32
  %3257 = add i64 %2991, 115
  store i64 %3257, i64* %PC.i, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %RAX.i1124, align 8
  %3260 = add i64 %3255, -44
  %3261 = add i64 %2991, 118
  store i64 %3261, i64* %PC.i, align 8
  %3262 = inttoptr i64 %3260 to i32*
  %3263 = load i32, i32* %3262, align 4
  %3264 = add i32 %3263, -13
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RDX.i722.pre-phi, align 8
  %3266 = icmp ult i32 %3263, 13
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %.pre-phi, align 1
  %3268 = and i32 %3264, 255
  %3269 = tail call i32 @llvm.ctpop.i32(i32 %3268)
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %.pre-phi23, align 1
  %3273 = xor i32 %3263, %3264
  %3274 = lshr i32 %3273, 4
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  store i8 %3276, i8* %.pre-phi25, align 1
  %3277 = icmp eq i32 %3264, 0
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %.pre-phi27, align 1
  %3279 = lshr i32 %3264, 31
  %3280 = trunc i32 %3279 to i8
  store i8 %3280, i8* %.pre-phi29, align 1
  %3281 = lshr i32 %3263, 31
  %3282 = xor i32 %3279, %3281
  %3283 = add nuw nsw i32 %3282, %3281
  %3284 = icmp eq i32 %3283, 2
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %.pre-phi31, align 1
  %3286 = sext i32 %3264 to i64
  store i64 %3286, i64* %RCX.i1621, align 8
  %3287 = shl nsw i64 %3286, 2
  %3288 = add i64 %3287, %3259
  %3289 = add i64 %2991, 129
  store i64 %3289, i64* %PC.i, align 8
  %3290 = inttoptr i64 %3288 to i32*
  %3291 = load i32, i32* %3290, align 4
  %3292 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3291, i32* %3292, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3293 = add i64 %3255, -40
  %3294 = add i64 %2991, 133
  store i64 %3294, i64* %PC.i, align 8
  %3295 = inttoptr i64 %3293 to i64*
  %3296 = load i64, i64* %3295, align 8
  store i64 %3296, i64* %RAX.i1124, align 8
  %3297 = add i64 %3255, -24
  %3298 = add i64 %2991, 136
  store i64 %3298, i64* %PC.i, align 8
  %3299 = inttoptr i64 %3297 to i32*
  %3300 = load i32, i32* %3299, align 4
  %3301 = zext i32 %3300 to i64
  store i64 %3301, i64* %RDX.i722.pre-phi, align 8
  %3302 = add i64 %2991, 139
  store i64 %3302, i64* %PC.i, align 8
  %3303 = load i32, i32* %3262, align 4
  %3304 = add i32 %3303, -13
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RSI.i1502, align 8
  %3306 = sext i32 %3300 to i64
  %3307 = sext i32 %3304 to i64
  %3308 = mul nsw i64 %3307, %3306
  %3309 = trunc i64 %3308 to i32
  %3310 = and i64 %3308, 4294967295
  store i64 %3310, i64* %RDX.i722.pre-phi, align 8
  %3311 = shl i64 %3308, 32
  %3312 = ashr exact i64 %3311, 32
  %3313 = icmp ne i64 %3312, %3308
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %.pre-phi, align 1
  %3315 = and i32 %3309, 255
  %3316 = tail call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  store i8 %3319, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3320 = lshr i32 %3309, 31
  %3321 = trunc i32 %3320 to i8
  store i8 %3321, i8* %.pre-phi29, align 1
  store i8 %3314, i8* %.pre-phi31, align 1
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -48
  %3324 = add i64 %2991, 148
  store i64 %3324, i64* %PC.i, align 8
  %3325 = trunc i64 %3308 to i32
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = add i32 %3327, %3325
  %3329 = zext i32 %3328 to i64
  store i64 %3329, i64* %RDX.i722.pre-phi, align 8
  %3330 = icmp ult i32 %3328, %3325
  %3331 = icmp ult i32 %3328, %3327
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %.pre-phi, align 1
  %3334 = and i32 %3328, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %.pre-phi23, align 1
  %3339 = xor i32 %3327, %3325
  %3340 = xor i32 %3339, %3328
  %3341 = lshr i32 %3340, 4
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  store i8 %3343, i8* %.pre-phi25, align 1
  %3344 = icmp eq i32 %3328, 0
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %.pre-phi27, align 1
  %3346 = lshr i32 %3328, 31
  %3347 = trunc i32 %3346 to i8
  store i8 %3347, i8* %.pre-phi29, align 1
  %3348 = lshr i32 %3325, 31
  %3349 = lshr i32 %3327, 31
  %3350 = xor i32 %3346, %3348
  %3351 = xor i32 %3346, %3349
  %3352 = add nuw nsw i32 %3350, %3351
  %3353 = icmp eq i32 %3352, 2
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %.pre-phi31, align 1
  %3355 = sext i32 %3328 to i64
  store i64 %3355, i64* %RCX.i1621, align 8
  %3356 = load i64, i64* %RAX.i1124, align 8
  %3357 = shl nsw i64 %3355, 2
  %3358 = add i64 %3357, %3356
  %3359 = add i64 %2991, 156
  store i64 %3359, i64* %PC.i, align 8
  %3360 = load <2 x float>, <2 x float>* %2901, align 1
  %3361 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3362 = inttoptr i64 %3358 to float*
  %3363 = load float, float* %3362, align 4
  %3364 = extractelement <2 x float> %3360, i32 0
  %3365 = fmul float %3364, %3363
  store float %3365, float* %2894, align 1
  %3366 = bitcast <2 x float> %3360 to <2 x i32>
  %3367 = extractelement <2 x i32> %3366, i32 1
  store i32 %3367, i32* %2903, align 1
  %3368 = extractelement <2 x i32> %3361, i32 0
  store i32 %3368, i32* %2904, align 1
  %3369 = extractelement <2 x i32> %3361, i32 1
  store i32 %3369, i32* %2905, align 1
  %3370 = load <2 x float>, <2 x float>* %2906, align 1
  %3371 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3372 = load <2 x float>, <2 x float>* %2908, align 1
  %3373 = extractelement <2 x float> %3370, i32 0
  %3374 = extractelement <2 x float> %3372, i32 0
  %3375 = fadd float %3373, %3374
  store float %3375, float* %2885, align 1
  %3376 = bitcast <2 x float> %3370 to <2 x i32>
  %3377 = extractelement <2 x i32> %3376, i32 1
  store i32 %3377, i32* %2909, align 1
  %3378 = extractelement <2 x i32> %3371, i32 0
  store i32 %3378, i32* %2910, align 1
  %3379 = extractelement <2 x i32> %3371, i32 1
  store i32 %3379, i32* %2911, align 1
  %3380 = add i64 %3322, -32
  %3381 = add i64 %2991, 164
  store i64 %3381, i64* %PC.i, align 8
  %3382 = inttoptr i64 %3380 to i64*
  %3383 = load i64, i64* %3382, align 8
  store i64 %3383, i64* %RAX.i1124, align 8
  %3384 = add i64 %3322, -44
  %3385 = add i64 %2991, 167
  store i64 %3385, i64* %PC.i, align 8
  %3386 = inttoptr i64 %3384 to i32*
  %3387 = load i32, i32* %3386, align 4
  %3388 = add i32 %3387, -12
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RDX.i722.pre-phi, align 8
  %3390 = icmp ult i32 %3387, 12
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %.pre-phi, align 1
  %3392 = and i32 %3388, 255
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %.pre-phi23, align 1
  %3397 = xor i32 %3387, %3388
  %3398 = lshr i32 %3397, 4
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  store i8 %3400, i8* %.pre-phi25, align 1
  %3401 = icmp eq i32 %3388, 0
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %.pre-phi27, align 1
  %3403 = lshr i32 %3388, 31
  %3404 = trunc i32 %3403 to i8
  store i8 %3404, i8* %.pre-phi29, align 1
  %3405 = lshr i32 %3387, 31
  %3406 = xor i32 %3403, %3405
  %3407 = add nuw nsw i32 %3406, %3405
  %3408 = icmp eq i32 %3407, 2
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %.pre-phi31, align 1
  %3410 = sext i32 %3388 to i64
  store i64 %3410, i64* %RCX.i1621, align 8
  %3411 = shl nsw i64 %3410, 2
  %3412 = add i64 %3411, %3383
  %3413 = add i64 %2991, 178
  store i64 %3413, i64* %PC.i, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3415, i32* %3416, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3417 = load i64, i64* %RBP.i, align 8
  %3418 = add i64 %3417, -40
  %3419 = add i64 %2991, 182
  store i64 %3419, i64* %PC.i, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %RAX.i1124, align 8
  %3422 = add i64 %3417, -24
  %3423 = add i64 %2991, 185
  store i64 %3423, i64* %PC.i, align 8
  %3424 = inttoptr i64 %3422 to i32*
  %3425 = load i32, i32* %3424, align 4
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RDX.i722.pre-phi, align 8
  %3427 = add i64 %3417, -44
  %3428 = add i64 %2991, 188
  store i64 %3428, i64* %PC.i, align 8
  %3429 = inttoptr i64 %3427 to i32*
  %3430 = load i32, i32* %3429, align 4
  %3431 = add i32 %3430, -12
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RSI.i1502, align 8
  %3433 = sext i32 %3425 to i64
  %3434 = sext i32 %3431 to i64
  %3435 = mul nsw i64 %3434, %3433
  %3436 = trunc i64 %3435 to i32
  %3437 = and i64 %3435, 4294967295
  store i64 %3437, i64* %RDX.i722.pre-phi, align 8
  %3438 = shl i64 %3435, 32
  %3439 = ashr exact i64 %3438, 32
  %3440 = icmp ne i64 %3439, %3435
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %.pre-phi, align 1
  %3442 = and i32 %3436, 255
  %3443 = tail call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  store i8 %3446, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3447 = lshr i32 %3436, 31
  %3448 = trunc i32 %3447 to i8
  store i8 %3448, i8* %.pre-phi29, align 1
  store i8 %3441, i8* %.pre-phi31, align 1
  %3449 = add i64 %3417, -48
  %3450 = add i64 %2991, 197
  store i64 %3450, i64* %PC.i, align 8
  %3451 = trunc i64 %3435 to i32
  %3452 = inttoptr i64 %3449 to i32*
  %3453 = load i32, i32* %3452, align 4
  %3454 = add i32 %3453, %3451
  %3455 = zext i32 %3454 to i64
  store i64 %3455, i64* %RDX.i722.pre-phi, align 8
  %3456 = icmp ult i32 %3454, %3451
  %3457 = icmp ult i32 %3454, %3453
  %3458 = or i1 %3456, %3457
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %.pre-phi, align 1
  %3460 = and i32 %3454, 255
  %3461 = tail call i32 @llvm.ctpop.i32(i32 %3460)
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = xor i8 %3463, 1
  store i8 %3464, i8* %.pre-phi23, align 1
  %3465 = xor i32 %3453, %3451
  %3466 = xor i32 %3465, %3454
  %3467 = lshr i32 %3466, 4
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  store i8 %3469, i8* %.pre-phi25, align 1
  %3470 = icmp eq i32 %3454, 0
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %.pre-phi27, align 1
  %3472 = lshr i32 %3454, 31
  %3473 = trunc i32 %3472 to i8
  store i8 %3473, i8* %.pre-phi29, align 1
  %3474 = lshr i32 %3451, 31
  %3475 = lshr i32 %3453, 31
  %3476 = xor i32 %3472, %3474
  %3477 = xor i32 %3472, %3475
  %3478 = add nuw nsw i32 %3476, %3477
  %3479 = icmp eq i32 %3478, 2
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %.pre-phi31, align 1
  %3481 = sext i32 %3454 to i64
  store i64 %3481, i64* %RCX.i1621, align 8
  %3482 = load i64, i64* %RAX.i1124, align 8
  %3483 = shl nsw i64 %3481, 2
  %3484 = add i64 %3483, %3482
  %3485 = add i64 %2991, 205
  store i64 %3485, i64* %PC.i, align 8
  %3486 = load <2 x float>, <2 x float>* %2901, align 1
  %3487 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3488 = inttoptr i64 %3484 to float*
  %3489 = load float, float* %3488, align 4
  %3490 = extractelement <2 x float> %3486, i32 0
  %3491 = fmul float %3490, %3489
  store float %3491, float* %2894, align 1
  %3492 = bitcast <2 x float> %3486 to <2 x i32>
  %3493 = extractelement <2 x i32> %3492, i32 1
  store i32 %3493, i32* %2903, align 1
  %3494 = extractelement <2 x i32> %3487, i32 0
  store i32 %3494, i32* %2904, align 1
  %3495 = extractelement <2 x i32> %3487, i32 1
  store i32 %3495, i32* %2905, align 1
  %3496 = load <2 x float>, <2 x float>* %2906, align 1
  %3497 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3498 = load <2 x float>, <2 x float>* %2908, align 1
  %3499 = extractelement <2 x float> %3496, i32 0
  %3500 = extractelement <2 x float> %3498, i32 0
  %3501 = fadd float %3499, %3500
  store float %3501, float* %2885, align 1
  %3502 = bitcast <2 x float> %3496 to <2 x i32>
  %3503 = extractelement <2 x i32> %3502, i32 1
  store i32 %3503, i32* %2909, align 1
  %3504 = extractelement <2 x i32> %3497, i32 0
  store i32 %3504, i32* %2910, align 1
  %3505 = extractelement <2 x i32> %3497, i32 1
  store i32 %3505, i32* %2911, align 1
  %3506 = load i64, i64* %RBP.i, align 8
  %3507 = add i64 %3506, -32
  %3508 = add i64 %2991, 213
  store i64 %3508, i64* %PC.i, align 8
  %3509 = inttoptr i64 %3507 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %RAX.i1124, align 8
  %3511 = add i64 %3506, -44
  %3512 = add i64 %2991, 216
  store i64 %3512, i64* %PC.i, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = add i32 %3514, -11
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RDX.i722.pre-phi, align 8
  %3517 = icmp ult i32 %3514, 11
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %.pre-phi, align 1
  %3519 = and i32 %3515, 255
  %3520 = tail call i32 @llvm.ctpop.i32(i32 %3519)
  %3521 = trunc i32 %3520 to i8
  %3522 = and i8 %3521, 1
  %3523 = xor i8 %3522, 1
  store i8 %3523, i8* %.pre-phi23, align 1
  %3524 = xor i32 %3514, %3515
  %3525 = lshr i32 %3524, 4
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  store i8 %3527, i8* %.pre-phi25, align 1
  %3528 = icmp eq i32 %3515, 0
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %.pre-phi27, align 1
  %3530 = lshr i32 %3515, 31
  %3531 = trunc i32 %3530 to i8
  store i8 %3531, i8* %.pre-phi29, align 1
  %3532 = lshr i32 %3514, 31
  %3533 = xor i32 %3530, %3532
  %3534 = add nuw nsw i32 %3533, %3532
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %.pre-phi31, align 1
  %3537 = sext i32 %3515 to i64
  store i64 %3537, i64* %RCX.i1621, align 8
  %3538 = shl nsw i64 %3537, 2
  %3539 = add i64 %3538, %3510
  %3540 = add i64 %2991, 227
  store i64 %3540, i64* %PC.i, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3542, i32* %3543, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3544 = add i64 %3506, -40
  %3545 = add i64 %2991, 231
  store i64 %3545, i64* %PC.i, align 8
  %3546 = inttoptr i64 %3544 to i64*
  %3547 = load i64, i64* %3546, align 8
  store i64 %3547, i64* %RAX.i1124, align 8
  %3548 = add i64 %3506, -24
  %3549 = add i64 %2991, 234
  store i64 %3549, i64* %PC.i, align 8
  %3550 = inttoptr i64 %3548 to i32*
  %3551 = load i32, i32* %3550, align 4
  %3552 = zext i32 %3551 to i64
  store i64 %3552, i64* %RDX.i722.pre-phi, align 8
  %3553 = add i64 %2991, 237
  store i64 %3553, i64* %PC.i, align 8
  %3554 = load i32, i32* %3513, align 4
  %3555 = add i32 %3554, -11
  %3556 = zext i32 %3555 to i64
  store i64 %3556, i64* %RSI.i1502, align 8
  %3557 = sext i32 %3551 to i64
  %3558 = sext i32 %3555 to i64
  %3559 = mul nsw i64 %3558, %3557
  %3560 = trunc i64 %3559 to i32
  %3561 = and i64 %3559, 4294967295
  store i64 %3561, i64* %RDX.i722.pre-phi, align 8
  %3562 = shl i64 %3559, 32
  %3563 = ashr exact i64 %3562, 32
  %3564 = icmp ne i64 %3563, %3559
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %.pre-phi, align 1
  %3566 = and i32 %3560, 255
  %3567 = tail call i32 @llvm.ctpop.i32(i32 %3566)
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  store i8 %3570, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3571 = lshr i32 %3560, 31
  %3572 = trunc i32 %3571 to i8
  store i8 %3572, i8* %.pre-phi29, align 1
  store i8 %3565, i8* %.pre-phi31, align 1
  %3573 = load i64, i64* %RBP.i, align 8
  %3574 = add i64 %3573, -48
  %3575 = add i64 %2991, 246
  store i64 %3575, i64* %PC.i, align 8
  %3576 = trunc i64 %3559 to i32
  %3577 = inttoptr i64 %3574 to i32*
  %3578 = load i32, i32* %3577, align 4
  %3579 = add i32 %3578, %3576
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RDX.i722.pre-phi, align 8
  %3581 = icmp ult i32 %3579, %3576
  %3582 = icmp ult i32 %3579, %3578
  %3583 = or i1 %3581, %3582
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %.pre-phi, align 1
  %3585 = and i32 %3579, 255
  %3586 = tail call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  store i8 %3589, i8* %.pre-phi23, align 1
  %3590 = xor i32 %3578, %3576
  %3591 = xor i32 %3590, %3579
  %3592 = lshr i32 %3591, 4
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  store i8 %3594, i8* %.pre-phi25, align 1
  %3595 = icmp eq i32 %3579, 0
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %.pre-phi27, align 1
  %3597 = lshr i32 %3579, 31
  %3598 = trunc i32 %3597 to i8
  store i8 %3598, i8* %.pre-phi29, align 1
  %3599 = lshr i32 %3576, 31
  %3600 = lshr i32 %3578, 31
  %3601 = xor i32 %3597, %3599
  %3602 = xor i32 %3597, %3600
  %3603 = add nuw nsw i32 %3601, %3602
  %3604 = icmp eq i32 %3603, 2
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %.pre-phi31, align 1
  %3606 = sext i32 %3579 to i64
  store i64 %3606, i64* %RCX.i1621, align 8
  %3607 = load i64, i64* %RAX.i1124, align 8
  %3608 = shl nsw i64 %3606, 2
  %3609 = add i64 %3608, %3607
  %3610 = add i64 %2991, 254
  store i64 %3610, i64* %PC.i, align 8
  %3611 = load <2 x float>, <2 x float>* %2901, align 1
  %3612 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3613 = inttoptr i64 %3609 to float*
  %3614 = load float, float* %3613, align 4
  %3615 = extractelement <2 x float> %3611, i32 0
  %3616 = fmul float %3615, %3614
  store float %3616, float* %2894, align 1
  %3617 = bitcast <2 x float> %3611 to <2 x i32>
  %3618 = extractelement <2 x i32> %3617, i32 1
  store i32 %3618, i32* %2903, align 1
  %3619 = extractelement <2 x i32> %3612, i32 0
  store i32 %3619, i32* %2904, align 1
  %3620 = extractelement <2 x i32> %3612, i32 1
  store i32 %3620, i32* %2905, align 1
  %3621 = load <2 x float>, <2 x float>* %2906, align 1
  %3622 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3623 = load <2 x float>, <2 x float>* %2908, align 1
  %3624 = extractelement <2 x float> %3621, i32 0
  %3625 = extractelement <2 x float> %3623, i32 0
  %3626 = fadd float %3624, %3625
  store float %3626, float* %2885, align 1
  %3627 = bitcast <2 x float> %3621 to <2 x i32>
  %3628 = extractelement <2 x i32> %3627, i32 1
  store i32 %3628, i32* %2909, align 1
  %3629 = extractelement <2 x i32> %3622, i32 0
  store i32 %3629, i32* %2910, align 1
  %3630 = extractelement <2 x i32> %3622, i32 1
  store i32 %3630, i32* %2911, align 1
  %3631 = add i64 %3573, -32
  %3632 = add i64 %2991, 262
  store i64 %3632, i64* %PC.i, align 8
  %3633 = inttoptr i64 %3631 to i64*
  %3634 = load i64, i64* %3633, align 8
  store i64 %3634, i64* %RAX.i1124, align 8
  %3635 = add i64 %3573, -44
  %3636 = add i64 %2991, 265
  store i64 %3636, i64* %PC.i, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = add i32 %3638, -10
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RDX.i722.pre-phi, align 8
  %3641 = icmp ult i32 %3638, 10
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %.pre-phi, align 1
  %3643 = and i32 %3639, 255
  %3644 = tail call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  store i8 %3647, i8* %.pre-phi23, align 1
  %3648 = xor i32 %3638, %3639
  %3649 = lshr i32 %3648, 4
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  store i8 %3651, i8* %.pre-phi25, align 1
  %3652 = icmp eq i32 %3639, 0
  %3653 = zext i1 %3652 to i8
  store i8 %3653, i8* %.pre-phi27, align 1
  %3654 = lshr i32 %3639, 31
  %3655 = trunc i32 %3654 to i8
  store i8 %3655, i8* %.pre-phi29, align 1
  %3656 = lshr i32 %3638, 31
  %3657 = xor i32 %3654, %3656
  %3658 = add nuw nsw i32 %3657, %3656
  %3659 = icmp eq i32 %3658, 2
  %3660 = zext i1 %3659 to i8
  store i8 %3660, i8* %.pre-phi31, align 1
  %3661 = sext i32 %3639 to i64
  store i64 %3661, i64* %RCX.i1621, align 8
  %3662 = shl nsw i64 %3661, 2
  %3663 = add i64 %3662, %3634
  %3664 = add i64 %2991, 276
  store i64 %3664, i64* %PC.i, align 8
  %3665 = inttoptr i64 %3663 to i32*
  %3666 = load i32, i32* %3665, align 4
  %3667 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3666, i32* %3667, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3668 = load i64, i64* %RBP.i, align 8
  %3669 = add i64 %3668, -40
  %3670 = add i64 %2991, 280
  store i64 %3670, i64* %PC.i, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RAX.i1124, align 8
  %3673 = add i64 %3668, -24
  %3674 = add i64 %2991, 283
  store i64 %3674, i64* %PC.i, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RDX.i722.pre-phi, align 8
  %3678 = add i64 %3668, -44
  %3679 = add i64 %2991, 286
  store i64 %3679, i64* %PC.i, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = add i32 %3681, -10
  %3683 = zext i32 %3682 to i64
  store i64 %3683, i64* %RSI.i1502, align 8
  %3684 = sext i32 %3676 to i64
  %3685 = sext i32 %3682 to i64
  %3686 = mul nsw i64 %3685, %3684
  %3687 = trunc i64 %3686 to i32
  %3688 = and i64 %3686, 4294967295
  store i64 %3688, i64* %RDX.i722.pre-phi, align 8
  %3689 = shl i64 %3686, 32
  %3690 = ashr exact i64 %3689, 32
  %3691 = icmp ne i64 %3690, %3686
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %.pre-phi, align 1
  %3693 = and i32 %3687, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3698 = lshr i32 %3687, 31
  %3699 = trunc i32 %3698 to i8
  store i8 %3699, i8* %.pre-phi29, align 1
  store i8 %3692, i8* %.pre-phi31, align 1
  %3700 = add i64 %3668, -48
  %3701 = add i64 %2991, 295
  store i64 %3701, i64* %PC.i, align 8
  %3702 = trunc i64 %3686 to i32
  %3703 = inttoptr i64 %3700 to i32*
  %3704 = load i32, i32* %3703, align 4
  %3705 = add i32 %3704, %3702
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RDX.i722.pre-phi, align 8
  %3707 = icmp ult i32 %3705, %3702
  %3708 = icmp ult i32 %3705, %3704
  %3709 = or i1 %3707, %3708
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %.pre-phi, align 1
  %3711 = and i32 %3705, 255
  %3712 = tail call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  store i8 %3715, i8* %.pre-phi23, align 1
  %3716 = xor i32 %3704, %3702
  %3717 = xor i32 %3716, %3705
  %3718 = lshr i32 %3717, 4
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  store i8 %3720, i8* %.pre-phi25, align 1
  %3721 = icmp eq i32 %3705, 0
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %.pre-phi27, align 1
  %3723 = lshr i32 %3705, 31
  %3724 = trunc i32 %3723 to i8
  store i8 %3724, i8* %.pre-phi29, align 1
  %3725 = lshr i32 %3702, 31
  %3726 = lshr i32 %3704, 31
  %3727 = xor i32 %3723, %3725
  %3728 = xor i32 %3723, %3726
  %3729 = add nuw nsw i32 %3727, %3728
  %3730 = icmp eq i32 %3729, 2
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %.pre-phi31, align 1
  %3732 = sext i32 %3705 to i64
  store i64 %3732, i64* %RCX.i1621, align 8
  %3733 = load i64, i64* %RAX.i1124, align 8
  %3734 = shl nsw i64 %3732, 2
  %3735 = add i64 %3734, %3733
  %3736 = add i64 %2991, 303
  store i64 %3736, i64* %PC.i, align 8
  %3737 = load <2 x float>, <2 x float>* %2901, align 1
  %3738 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3739 = inttoptr i64 %3735 to float*
  %3740 = load float, float* %3739, align 4
  %3741 = extractelement <2 x float> %3737, i32 0
  %3742 = fmul float %3741, %3740
  store float %3742, float* %2894, align 1
  %3743 = bitcast <2 x float> %3737 to <2 x i32>
  %3744 = extractelement <2 x i32> %3743, i32 1
  store i32 %3744, i32* %2903, align 1
  %3745 = extractelement <2 x i32> %3738, i32 0
  store i32 %3745, i32* %2904, align 1
  %3746 = extractelement <2 x i32> %3738, i32 1
  store i32 %3746, i32* %2905, align 1
  %3747 = load <2 x float>, <2 x float>* %2906, align 1
  %3748 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3749 = load <2 x float>, <2 x float>* %2908, align 1
  %3750 = extractelement <2 x float> %3747, i32 0
  %3751 = extractelement <2 x float> %3749, i32 0
  %3752 = fadd float %3750, %3751
  store float %3752, float* %2885, align 1
  %3753 = bitcast <2 x float> %3747 to <2 x i32>
  %3754 = extractelement <2 x i32> %3753, i32 1
  store i32 %3754, i32* %2909, align 1
  %3755 = extractelement <2 x i32> %3748, i32 0
  store i32 %3755, i32* %2910, align 1
  %3756 = extractelement <2 x i32> %3748, i32 1
  store i32 %3756, i32* %2911, align 1
  %3757 = load i64, i64* %RBP.i, align 8
  %3758 = add i64 %3757, -32
  %3759 = add i64 %2991, 311
  store i64 %3759, i64* %PC.i, align 8
  %3760 = inttoptr i64 %3758 to i64*
  %3761 = load i64, i64* %3760, align 8
  store i64 %3761, i64* %RAX.i1124, align 8
  %3762 = add i64 %3757, -44
  %3763 = add i64 %2991, 314
  store i64 %3763, i64* %PC.i, align 8
  %3764 = inttoptr i64 %3762 to i32*
  %3765 = load i32, i32* %3764, align 4
  %3766 = add i32 %3765, -9
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RDX.i722.pre-phi, align 8
  %3768 = icmp ult i32 %3765, 9
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %.pre-phi, align 1
  %3770 = and i32 %3766, 255
  %3771 = tail call i32 @llvm.ctpop.i32(i32 %3770)
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = xor i8 %3773, 1
  store i8 %3774, i8* %.pre-phi23, align 1
  %3775 = xor i32 %3765, %3766
  %3776 = lshr i32 %3775, 4
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  store i8 %3778, i8* %.pre-phi25, align 1
  %3779 = icmp eq i32 %3766, 0
  %3780 = zext i1 %3779 to i8
  store i8 %3780, i8* %.pre-phi27, align 1
  %3781 = lshr i32 %3766, 31
  %3782 = trunc i32 %3781 to i8
  store i8 %3782, i8* %.pre-phi29, align 1
  %3783 = lshr i32 %3765, 31
  %3784 = xor i32 %3781, %3783
  %3785 = add nuw nsw i32 %3784, %3783
  %3786 = icmp eq i32 %3785, 2
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %.pre-phi31, align 1
  %3788 = sext i32 %3766 to i64
  store i64 %3788, i64* %RCX.i1621, align 8
  %3789 = shl nsw i64 %3788, 2
  %3790 = add i64 %3789, %3761
  %3791 = add i64 %2991, 325
  store i64 %3791, i64* %PC.i, align 8
  %3792 = inttoptr i64 %3790 to i32*
  %3793 = load i32, i32* %3792, align 4
  %3794 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3793, i32* %3794, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3795 = add i64 %3757, -40
  %3796 = add i64 %2991, 329
  store i64 %3796, i64* %PC.i, align 8
  %3797 = inttoptr i64 %3795 to i64*
  %3798 = load i64, i64* %3797, align 8
  store i64 %3798, i64* %RAX.i1124, align 8
  %3799 = add i64 %3757, -24
  %3800 = add i64 %2991, 332
  store i64 %3800, i64* %PC.i, align 8
  %3801 = inttoptr i64 %3799 to i32*
  %3802 = load i32, i32* %3801, align 4
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RDX.i722.pre-phi, align 8
  %3804 = add i64 %2991, 335
  store i64 %3804, i64* %PC.i, align 8
  %3805 = load i32, i32* %3764, align 4
  %3806 = add i32 %3805, -9
  %3807 = zext i32 %3806 to i64
  store i64 %3807, i64* %RSI.i1502, align 8
  %3808 = sext i32 %3802 to i64
  %3809 = sext i32 %3806 to i64
  %3810 = mul nsw i64 %3809, %3808
  %3811 = trunc i64 %3810 to i32
  %3812 = and i64 %3810, 4294967295
  store i64 %3812, i64* %RDX.i722.pre-phi, align 8
  %3813 = shl i64 %3810, 32
  %3814 = ashr exact i64 %3813, 32
  %3815 = icmp ne i64 %3814, %3810
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %.pre-phi, align 1
  %3817 = and i32 %3811, 255
  %3818 = tail call i32 @llvm.ctpop.i32(i32 %3817)
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  store i8 %3821, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3822 = lshr i32 %3811, 31
  %3823 = trunc i32 %3822 to i8
  store i8 %3823, i8* %.pre-phi29, align 1
  store i8 %3816, i8* %.pre-phi31, align 1
  %3824 = load i64, i64* %RBP.i, align 8
  %3825 = add i64 %3824, -48
  %3826 = add i64 %2991, 344
  store i64 %3826, i64* %PC.i, align 8
  %3827 = trunc i64 %3810 to i32
  %3828 = inttoptr i64 %3825 to i32*
  %3829 = load i32, i32* %3828, align 4
  %3830 = add i32 %3829, %3827
  %3831 = zext i32 %3830 to i64
  store i64 %3831, i64* %RDX.i722.pre-phi, align 8
  %3832 = icmp ult i32 %3830, %3827
  %3833 = icmp ult i32 %3830, %3829
  %3834 = or i1 %3832, %3833
  %3835 = zext i1 %3834 to i8
  store i8 %3835, i8* %.pre-phi, align 1
  %3836 = and i32 %3830, 255
  %3837 = tail call i32 @llvm.ctpop.i32(i32 %3836)
  %3838 = trunc i32 %3837 to i8
  %3839 = and i8 %3838, 1
  %3840 = xor i8 %3839, 1
  store i8 %3840, i8* %.pre-phi23, align 1
  %3841 = xor i32 %3829, %3827
  %3842 = xor i32 %3841, %3830
  %3843 = lshr i32 %3842, 4
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  store i8 %3845, i8* %.pre-phi25, align 1
  %3846 = icmp eq i32 %3830, 0
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %.pre-phi27, align 1
  %3848 = lshr i32 %3830, 31
  %3849 = trunc i32 %3848 to i8
  store i8 %3849, i8* %.pre-phi29, align 1
  %3850 = lshr i32 %3827, 31
  %3851 = lshr i32 %3829, 31
  %3852 = xor i32 %3848, %3850
  %3853 = xor i32 %3848, %3851
  %3854 = add nuw nsw i32 %3852, %3853
  %3855 = icmp eq i32 %3854, 2
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %.pre-phi31, align 1
  %3857 = sext i32 %3830 to i64
  store i64 %3857, i64* %RCX.i1621, align 8
  %3858 = load i64, i64* %RAX.i1124, align 8
  %3859 = shl nsw i64 %3857, 2
  %3860 = add i64 %3859, %3858
  %3861 = add i64 %2991, 352
  store i64 %3861, i64* %PC.i, align 8
  %3862 = load <2 x float>, <2 x float>* %2901, align 1
  %3863 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3864 = inttoptr i64 %3860 to float*
  %3865 = load float, float* %3864, align 4
  %3866 = extractelement <2 x float> %3862, i32 0
  %3867 = fmul float %3866, %3865
  store float %3867, float* %2894, align 1
  %3868 = bitcast <2 x float> %3862 to <2 x i32>
  %3869 = extractelement <2 x i32> %3868, i32 1
  store i32 %3869, i32* %2903, align 1
  %3870 = extractelement <2 x i32> %3863, i32 0
  store i32 %3870, i32* %2904, align 1
  %3871 = extractelement <2 x i32> %3863, i32 1
  store i32 %3871, i32* %2905, align 1
  %3872 = load <2 x float>, <2 x float>* %2906, align 1
  %3873 = load <2 x i32>, <2 x i32>* %2907, align 1
  %3874 = load <2 x float>, <2 x float>* %2908, align 1
  %3875 = extractelement <2 x float> %3872, i32 0
  %3876 = extractelement <2 x float> %3874, i32 0
  %3877 = fadd float %3875, %3876
  store float %3877, float* %2885, align 1
  %3878 = bitcast <2 x float> %3872 to <2 x i32>
  %3879 = extractelement <2 x i32> %3878, i32 1
  store i32 %3879, i32* %2909, align 1
  %3880 = extractelement <2 x i32> %3873, i32 0
  store i32 %3880, i32* %2910, align 1
  %3881 = extractelement <2 x i32> %3873, i32 1
  store i32 %3881, i32* %2911, align 1
  %3882 = add i64 %3824, -32
  %3883 = add i64 %2991, 360
  store i64 %3883, i64* %PC.i, align 8
  %3884 = inttoptr i64 %3882 to i64*
  %3885 = load i64, i64* %3884, align 8
  store i64 %3885, i64* %RAX.i1124, align 8
  %3886 = add i64 %3824, -44
  %3887 = add i64 %2991, 363
  store i64 %3887, i64* %PC.i, align 8
  %3888 = inttoptr i64 %3886 to i32*
  %3889 = load i32, i32* %3888, align 4
  %3890 = add i32 %3889, -8
  %3891 = zext i32 %3890 to i64
  store i64 %3891, i64* %RDX.i722.pre-phi, align 8
  %3892 = icmp ult i32 %3889, 8
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %.pre-phi, align 1
  %3894 = and i32 %3890, 255
  %3895 = tail call i32 @llvm.ctpop.i32(i32 %3894)
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  store i8 %3898, i8* %.pre-phi23, align 1
  %3899 = xor i32 %3889, %3890
  %3900 = lshr i32 %3899, 4
  %3901 = trunc i32 %3900 to i8
  %3902 = and i8 %3901, 1
  store i8 %3902, i8* %.pre-phi25, align 1
  %3903 = icmp eq i32 %3890, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %.pre-phi27, align 1
  %3905 = lshr i32 %3890, 31
  %3906 = trunc i32 %3905 to i8
  store i8 %3906, i8* %.pre-phi29, align 1
  %3907 = lshr i32 %3889, 31
  %3908 = xor i32 %3905, %3907
  %3909 = add nuw nsw i32 %3908, %3907
  %3910 = icmp eq i32 %3909, 2
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %.pre-phi31, align 1
  %3912 = sext i32 %3890 to i64
  store i64 %3912, i64* %RCX.i1621, align 8
  %3913 = shl nsw i64 %3912, 2
  %3914 = add i64 %3913, %3885
  %3915 = add i64 %2991, 374
  store i64 %3915, i64* %PC.i, align 8
  %3916 = inttoptr i64 %3914 to i32*
  %3917 = load i32, i32* %3916, align 4
  %3918 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %3917, i32* %3918, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %3919 = load i64, i64* %RBP.i, align 8
  %3920 = add i64 %3919, -40
  %3921 = add i64 %2991, 378
  store i64 %3921, i64* %PC.i, align 8
  %3922 = inttoptr i64 %3920 to i64*
  %3923 = load i64, i64* %3922, align 8
  store i64 %3923, i64* %RAX.i1124, align 8
  %3924 = add i64 %3919, -24
  %3925 = add i64 %2991, 381
  store i64 %3925, i64* %PC.i, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RDX.i722.pre-phi, align 8
  %3929 = add i64 %3919, -44
  %3930 = add i64 %2991, 384
  store i64 %3930, i64* %PC.i, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = add i32 %3932, -8
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %RSI.i1502, align 8
  %3935 = sext i32 %3927 to i64
  %3936 = sext i32 %3933 to i64
  %3937 = mul nsw i64 %3936, %3935
  %3938 = trunc i64 %3937 to i32
  %3939 = and i64 %3937, 4294967295
  store i64 %3939, i64* %RDX.i722.pre-phi, align 8
  %3940 = shl i64 %3937, 32
  %3941 = ashr exact i64 %3940, 32
  %3942 = icmp ne i64 %3941, %3937
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %.pre-phi, align 1
  %3944 = and i32 %3938, 255
  %3945 = tail call i32 @llvm.ctpop.i32(i32 %3944)
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = xor i8 %3947, 1
  store i8 %3948, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %3949 = lshr i32 %3938, 31
  %3950 = trunc i32 %3949 to i8
  store i8 %3950, i8* %.pre-phi29, align 1
  store i8 %3943, i8* %.pre-phi31, align 1
  %3951 = add i64 %3919, -48
  %3952 = add i64 %2991, 393
  store i64 %3952, i64* %PC.i, align 8
  %3953 = trunc i64 %3937 to i32
  %3954 = inttoptr i64 %3951 to i32*
  %3955 = load i32, i32* %3954, align 4
  %3956 = add i32 %3955, %3953
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RDX.i722.pre-phi, align 8
  %3958 = icmp ult i32 %3956, %3953
  %3959 = icmp ult i32 %3956, %3955
  %3960 = or i1 %3958, %3959
  %3961 = zext i1 %3960 to i8
  store i8 %3961, i8* %.pre-phi, align 1
  %3962 = and i32 %3956, 255
  %3963 = tail call i32 @llvm.ctpop.i32(i32 %3962)
  %3964 = trunc i32 %3963 to i8
  %3965 = and i8 %3964, 1
  %3966 = xor i8 %3965, 1
  store i8 %3966, i8* %.pre-phi23, align 1
  %3967 = xor i32 %3955, %3953
  %3968 = xor i32 %3967, %3956
  %3969 = lshr i32 %3968, 4
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  store i8 %3971, i8* %.pre-phi25, align 1
  %3972 = icmp eq i32 %3956, 0
  %3973 = zext i1 %3972 to i8
  store i8 %3973, i8* %.pre-phi27, align 1
  %3974 = lshr i32 %3956, 31
  %3975 = trunc i32 %3974 to i8
  store i8 %3975, i8* %.pre-phi29, align 1
  %3976 = lshr i32 %3953, 31
  %3977 = lshr i32 %3955, 31
  %3978 = xor i32 %3974, %3976
  %3979 = xor i32 %3974, %3977
  %3980 = add nuw nsw i32 %3978, %3979
  %3981 = icmp eq i32 %3980, 2
  %3982 = zext i1 %3981 to i8
  store i8 %3982, i8* %.pre-phi31, align 1
  %3983 = sext i32 %3956 to i64
  store i64 %3983, i64* %RCX.i1621, align 8
  %3984 = load i64, i64* %RAX.i1124, align 8
  %3985 = shl nsw i64 %3983, 2
  %3986 = add i64 %3985, %3984
  %3987 = add i64 %2991, 401
  store i64 %3987, i64* %PC.i, align 8
  %3988 = load <2 x float>, <2 x float>* %2901, align 1
  %3989 = load <2 x i32>, <2 x i32>* %2902, align 1
  %3990 = inttoptr i64 %3986 to float*
  %3991 = load float, float* %3990, align 4
  %3992 = extractelement <2 x float> %3988, i32 0
  %3993 = fmul float %3992, %3991
  store float %3993, float* %2894, align 1
  %3994 = bitcast <2 x float> %3988 to <2 x i32>
  %3995 = extractelement <2 x i32> %3994, i32 1
  store i32 %3995, i32* %2903, align 1
  %3996 = extractelement <2 x i32> %3989, i32 0
  store i32 %3996, i32* %2904, align 1
  %3997 = extractelement <2 x i32> %3989, i32 1
  store i32 %3997, i32* %2905, align 1
  %3998 = load <2 x float>, <2 x float>* %2906, align 1
  %3999 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4000 = load <2 x float>, <2 x float>* %2908, align 1
  %4001 = extractelement <2 x float> %3998, i32 0
  %4002 = extractelement <2 x float> %4000, i32 0
  %4003 = fadd float %4001, %4002
  store float %4003, float* %2885, align 1
  %4004 = bitcast <2 x float> %3998 to <2 x i32>
  %4005 = extractelement <2 x i32> %4004, i32 1
  store i32 %4005, i32* %2909, align 1
  %4006 = extractelement <2 x i32> %3999, i32 0
  store i32 %4006, i32* %2910, align 1
  %4007 = extractelement <2 x i32> %3999, i32 1
  store i32 %4007, i32* %2911, align 1
  %4008 = load i64, i64* %RBP.i, align 8
  %4009 = add i64 %4008, -32
  %4010 = add i64 %2991, 409
  store i64 %4010, i64* %PC.i, align 8
  %4011 = inttoptr i64 %4009 to i64*
  %4012 = load i64, i64* %4011, align 8
  store i64 %4012, i64* %RAX.i1124, align 8
  %4013 = add i64 %4008, -44
  %4014 = add i64 %2991, 412
  store i64 %4014, i64* %PC.i, align 8
  %4015 = inttoptr i64 %4013 to i32*
  %4016 = load i32, i32* %4015, align 4
  %4017 = add i32 %4016, -7
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RDX.i722.pre-phi, align 8
  %4019 = icmp ult i32 %4016, 7
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %.pre-phi, align 1
  %4021 = and i32 %4017, 255
  %4022 = tail call i32 @llvm.ctpop.i32(i32 %4021)
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = xor i8 %4024, 1
  store i8 %4025, i8* %.pre-phi23, align 1
  %4026 = xor i32 %4016, %4017
  %4027 = lshr i32 %4026, 4
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  store i8 %4029, i8* %.pre-phi25, align 1
  %4030 = icmp eq i32 %4017, 0
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %.pre-phi27, align 1
  %4032 = lshr i32 %4017, 31
  %4033 = trunc i32 %4032 to i8
  store i8 %4033, i8* %.pre-phi29, align 1
  %4034 = lshr i32 %4016, 31
  %4035 = xor i32 %4032, %4034
  %4036 = add nuw nsw i32 %4035, %4034
  %4037 = icmp eq i32 %4036, 2
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %.pre-phi31, align 1
  %4039 = sext i32 %4017 to i64
  store i64 %4039, i64* %RCX.i1621, align 8
  %4040 = shl nsw i64 %4039, 2
  %4041 = add i64 %4040, %4012
  %4042 = add i64 %2991, 423
  store i64 %4042, i64* %PC.i, align 8
  %4043 = inttoptr i64 %4041 to i32*
  %4044 = load i32, i32* %4043, align 4
  %4045 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4044, i32* %4045, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4046 = add i64 %4008, -40
  %4047 = add i64 %2991, 427
  store i64 %4047, i64* %PC.i, align 8
  %4048 = inttoptr i64 %4046 to i64*
  %4049 = load i64, i64* %4048, align 8
  store i64 %4049, i64* %RAX.i1124, align 8
  %4050 = add i64 %4008, -24
  %4051 = add i64 %2991, 430
  store i64 %4051, i64* %PC.i, align 8
  %4052 = inttoptr i64 %4050 to i32*
  %4053 = load i32, i32* %4052, align 4
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RDX.i722.pre-phi, align 8
  %4055 = add i64 %2991, 433
  store i64 %4055, i64* %PC.i, align 8
  %4056 = load i32, i32* %4015, align 4
  %4057 = add i32 %4056, -7
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %RSI.i1502, align 8
  %4059 = sext i32 %4053 to i64
  %4060 = sext i32 %4057 to i64
  %4061 = mul nsw i64 %4060, %4059
  %4062 = trunc i64 %4061 to i32
  %4063 = and i64 %4061, 4294967295
  store i64 %4063, i64* %RDX.i722.pre-phi, align 8
  %4064 = shl i64 %4061, 32
  %4065 = ashr exact i64 %4064, 32
  %4066 = icmp ne i64 %4065, %4061
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %.pre-phi, align 1
  %4068 = and i32 %4062, 255
  %4069 = tail call i32 @llvm.ctpop.i32(i32 %4068)
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = xor i8 %4071, 1
  store i8 %4072, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4073 = lshr i32 %4062, 31
  %4074 = trunc i32 %4073 to i8
  store i8 %4074, i8* %.pre-phi29, align 1
  store i8 %4067, i8* %.pre-phi31, align 1
  %4075 = load i64, i64* %RBP.i, align 8
  %4076 = add i64 %4075, -48
  %4077 = add i64 %2991, 442
  store i64 %4077, i64* %PC.i, align 8
  %4078 = trunc i64 %4061 to i32
  %4079 = inttoptr i64 %4076 to i32*
  %4080 = load i32, i32* %4079, align 4
  %4081 = add i32 %4080, %4078
  %4082 = zext i32 %4081 to i64
  store i64 %4082, i64* %RDX.i722.pre-phi, align 8
  %4083 = icmp ult i32 %4081, %4078
  %4084 = icmp ult i32 %4081, %4080
  %4085 = or i1 %4083, %4084
  %4086 = zext i1 %4085 to i8
  store i8 %4086, i8* %.pre-phi, align 1
  %4087 = and i32 %4081, 255
  %4088 = tail call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  store i8 %4091, i8* %.pre-phi23, align 1
  %4092 = xor i32 %4080, %4078
  %4093 = xor i32 %4092, %4081
  %4094 = lshr i32 %4093, 4
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  store i8 %4096, i8* %.pre-phi25, align 1
  %4097 = icmp eq i32 %4081, 0
  %4098 = zext i1 %4097 to i8
  store i8 %4098, i8* %.pre-phi27, align 1
  %4099 = lshr i32 %4081, 31
  %4100 = trunc i32 %4099 to i8
  store i8 %4100, i8* %.pre-phi29, align 1
  %4101 = lshr i32 %4078, 31
  %4102 = lshr i32 %4080, 31
  %4103 = xor i32 %4099, %4101
  %4104 = xor i32 %4099, %4102
  %4105 = add nuw nsw i32 %4103, %4104
  %4106 = icmp eq i32 %4105, 2
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %.pre-phi31, align 1
  %4108 = sext i32 %4081 to i64
  store i64 %4108, i64* %RCX.i1621, align 8
  %4109 = load i64, i64* %RAX.i1124, align 8
  %4110 = shl nsw i64 %4108, 2
  %4111 = add i64 %4110, %4109
  %4112 = add i64 %2991, 450
  store i64 %4112, i64* %PC.i, align 8
  %4113 = load <2 x float>, <2 x float>* %2901, align 1
  %4114 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4115 = inttoptr i64 %4111 to float*
  %4116 = load float, float* %4115, align 4
  %4117 = extractelement <2 x float> %4113, i32 0
  %4118 = fmul float %4117, %4116
  store float %4118, float* %2894, align 1
  %4119 = bitcast <2 x float> %4113 to <2 x i32>
  %4120 = extractelement <2 x i32> %4119, i32 1
  store i32 %4120, i32* %2903, align 1
  %4121 = extractelement <2 x i32> %4114, i32 0
  store i32 %4121, i32* %2904, align 1
  %4122 = extractelement <2 x i32> %4114, i32 1
  store i32 %4122, i32* %2905, align 1
  %4123 = load <2 x float>, <2 x float>* %2906, align 1
  %4124 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4125 = load <2 x float>, <2 x float>* %2908, align 1
  %4126 = extractelement <2 x float> %4123, i32 0
  %4127 = extractelement <2 x float> %4125, i32 0
  %4128 = fadd float %4126, %4127
  store float %4128, float* %2885, align 1
  %4129 = bitcast <2 x float> %4123 to <2 x i32>
  %4130 = extractelement <2 x i32> %4129, i32 1
  store i32 %4130, i32* %2909, align 1
  %4131 = extractelement <2 x i32> %4124, i32 0
  store i32 %4131, i32* %2910, align 1
  %4132 = extractelement <2 x i32> %4124, i32 1
  store i32 %4132, i32* %2911, align 1
  %4133 = add i64 %4075, -32
  %4134 = add i64 %2991, 458
  store i64 %4134, i64* %PC.i, align 8
  %4135 = inttoptr i64 %4133 to i64*
  %4136 = load i64, i64* %4135, align 8
  store i64 %4136, i64* %RAX.i1124, align 8
  %4137 = add i64 %4075, -44
  %4138 = add i64 %2991, 461
  store i64 %4138, i64* %PC.i, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = add i32 %4140, -6
  %4142 = zext i32 %4141 to i64
  store i64 %4142, i64* %RDX.i722.pre-phi, align 8
  %4143 = icmp ult i32 %4140, 6
  %4144 = zext i1 %4143 to i8
  store i8 %4144, i8* %.pre-phi, align 1
  %4145 = and i32 %4141, 255
  %4146 = tail call i32 @llvm.ctpop.i32(i32 %4145)
  %4147 = trunc i32 %4146 to i8
  %4148 = and i8 %4147, 1
  %4149 = xor i8 %4148, 1
  store i8 %4149, i8* %.pre-phi23, align 1
  %4150 = xor i32 %4140, %4141
  %4151 = lshr i32 %4150, 4
  %4152 = trunc i32 %4151 to i8
  %4153 = and i8 %4152, 1
  store i8 %4153, i8* %.pre-phi25, align 1
  %4154 = icmp eq i32 %4141, 0
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %.pre-phi27, align 1
  %4156 = lshr i32 %4141, 31
  %4157 = trunc i32 %4156 to i8
  store i8 %4157, i8* %.pre-phi29, align 1
  %4158 = lshr i32 %4140, 31
  %4159 = xor i32 %4156, %4158
  %4160 = add nuw nsw i32 %4159, %4158
  %4161 = icmp eq i32 %4160, 2
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %.pre-phi31, align 1
  %4163 = sext i32 %4141 to i64
  store i64 %4163, i64* %RCX.i1621, align 8
  %4164 = shl nsw i64 %4163, 2
  %4165 = add i64 %4164, %4136
  %4166 = add i64 %2991, 472
  store i64 %4166, i64* %PC.i, align 8
  %4167 = inttoptr i64 %4165 to i32*
  %4168 = load i32, i32* %4167, align 4
  %4169 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4168, i32* %4169, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4170 = load i64, i64* %RBP.i, align 8
  %4171 = add i64 %4170, -40
  %4172 = add i64 %2991, 476
  store i64 %4172, i64* %PC.i, align 8
  %4173 = inttoptr i64 %4171 to i64*
  %4174 = load i64, i64* %4173, align 8
  store i64 %4174, i64* %RAX.i1124, align 8
  %4175 = add i64 %4170, -24
  %4176 = add i64 %2991, 479
  store i64 %4176, i64* %PC.i, align 8
  %4177 = inttoptr i64 %4175 to i32*
  %4178 = load i32, i32* %4177, align 4
  %4179 = zext i32 %4178 to i64
  store i64 %4179, i64* %RDX.i722.pre-phi, align 8
  %4180 = add i64 %4170, -44
  %4181 = add i64 %2991, 482
  store i64 %4181, i64* %PC.i, align 8
  %4182 = inttoptr i64 %4180 to i32*
  %4183 = load i32, i32* %4182, align 4
  %4184 = add i32 %4183, -6
  %4185 = zext i32 %4184 to i64
  store i64 %4185, i64* %RSI.i1502, align 8
  %4186 = sext i32 %4178 to i64
  %4187 = sext i32 %4184 to i64
  %4188 = mul nsw i64 %4187, %4186
  %4189 = trunc i64 %4188 to i32
  %4190 = and i64 %4188, 4294967295
  store i64 %4190, i64* %RDX.i722.pre-phi, align 8
  %4191 = shl i64 %4188, 32
  %4192 = ashr exact i64 %4191, 32
  %4193 = icmp ne i64 %4192, %4188
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %.pre-phi, align 1
  %4195 = and i32 %4189, 255
  %4196 = tail call i32 @llvm.ctpop.i32(i32 %4195)
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = xor i8 %4198, 1
  store i8 %4199, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4200 = lshr i32 %4189, 31
  %4201 = trunc i32 %4200 to i8
  store i8 %4201, i8* %.pre-phi29, align 1
  store i8 %4194, i8* %.pre-phi31, align 1
  %4202 = add i64 %4170, -48
  %4203 = add i64 %2991, 491
  store i64 %4203, i64* %PC.i, align 8
  %4204 = trunc i64 %4188 to i32
  %4205 = inttoptr i64 %4202 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = add i32 %4206, %4204
  %4208 = zext i32 %4207 to i64
  store i64 %4208, i64* %RDX.i722.pre-phi, align 8
  %4209 = icmp ult i32 %4207, %4204
  %4210 = icmp ult i32 %4207, %4206
  %4211 = or i1 %4209, %4210
  %4212 = zext i1 %4211 to i8
  store i8 %4212, i8* %.pre-phi, align 1
  %4213 = and i32 %4207, 255
  %4214 = tail call i32 @llvm.ctpop.i32(i32 %4213)
  %4215 = trunc i32 %4214 to i8
  %4216 = and i8 %4215, 1
  %4217 = xor i8 %4216, 1
  store i8 %4217, i8* %.pre-phi23, align 1
  %4218 = xor i32 %4206, %4204
  %4219 = xor i32 %4218, %4207
  %4220 = lshr i32 %4219, 4
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  store i8 %4222, i8* %.pre-phi25, align 1
  %4223 = icmp eq i32 %4207, 0
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %.pre-phi27, align 1
  %4225 = lshr i32 %4207, 31
  %4226 = trunc i32 %4225 to i8
  store i8 %4226, i8* %.pre-phi29, align 1
  %4227 = lshr i32 %4204, 31
  %4228 = lshr i32 %4206, 31
  %4229 = xor i32 %4225, %4227
  %4230 = xor i32 %4225, %4228
  %4231 = add nuw nsw i32 %4229, %4230
  %4232 = icmp eq i32 %4231, 2
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %.pre-phi31, align 1
  %4234 = sext i32 %4207 to i64
  store i64 %4234, i64* %RCX.i1621, align 8
  %4235 = load i64, i64* %RAX.i1124, align 8
  %4236 = shl nsw i64 %4234, 2
  %4237 = add i64 %4236, %4235
  %4238 = add i64 %2991, 499
  store i64 %4238, i64* %PC.i, align 8
  %4239 = load <2 x float>, <2 x float>* %2901, align 1
  %4240 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4241 = inttoptr i64 %4237 to float*
  %4242 = load float, float* %4241, align 4
  %4243 = extractelement <2 x float> %4239, i32 0
  %4244 = fmul float %4243, %4242
  store float %4244, float* %2894, align 1
  %4245 = bitcast <2 x float> %4239 to <2 x i32>
  %4246 = extractelement <2 x i32> %4245, i32 1
  store i32 %4246, i32* %2903, align 1
  %4247 = extractelement <2 x i32> %4240, i32 0
  store i32 %4247, i32* %2904, align 1
  %4248 = extractelement <2 x i32> %4240, i32 1
  store i32 %4248, i32* %2905, align 1
  %4249 = load <2 x float>, <2 x float>* %2906, align 1
  %4250 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4251 = load <2 x float>, <2 x float>* %2908, align 1
  %4252 = extractelement <2 x float> %4249, i32 0
  %4253 = extractelement <2 x float> %4251, i32 0
  %4254 = fadd float %4252, %4253
  store float %4254, float* %2885, align 1
  %4255 = bitcast <2 x float> %4249 to <2 x i32>
  %4256 = extractelement <2 x i32> %4255, i32 1
  store i32 %4256, i32* %2909, align 1
  %4257 = extractelement <2 x i32> %4250, i32 0
  store i32 %4257, i32* %2910, align 1
  %4258 = extractelement <2 x i32> %4250, i32 1
  store i32 %4258, i32* %2911, align 1
  %4259 = load i64, i64* %RBP.i, align 8
  %4260 = add i64 %4259, -32
  %4261 = add i64 %2991, 507
  store i64 %4261, i64* %PC.i, align 8
  %4262 = inttoptr i64 %4260 to i64*
  %4263 = load i64, i64* %4262, align 8
  store i64 %4263, i64* %RAX.i1124, align 8
  %4264 = add i64 %4259, -44
  %4265 = add i64 %2991, 510
  store i64 %4265, i64* %PC.i, align 8
  %4266 = inttoptr i64 %4264 to i32*
  %4267 = load i32, i32* %4266, align 4
  %4268 = add i32 %4267, -5
  %4269 = zext i32 %4268 to i64
  store i64 %4269, i64* %RDX.i722.pre-phi, align 8
  %4270 = icmp ult i32 %4267, 5
  %4271 = zext i1 %4270 to i8
  store i8 %4271, i8* %.pre-phi, align 1
  %4272 = and i32 %4268, 255
  %4273 = tail call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  store i8 %4276, i8* %.pre-phi23, align 1
  %4277 = xor i32 %4267, %4268
  %4278 = lshr i32 %4277, 4
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  store i8 %4280, i8* %.pre-phi25, align 1
  %4281 = icmp eq i32 %4268, 0
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %.pre-phi27, align 1
  %4283 = lshr i32 %4268, 31
  %4284 = trunc i32 %4283 to i8
  store i8 %4284, i8* %.pre-phi29, align 1
  %4285 = lshr i32 %4267, 31
  %4286 = xor i32 %4283, %4285
  %4287 = add nuw nsw i32 %4286, %4285
  %4288 = icmp eq i32 %4287, 2
  %4289 = zext i1 %4288 to i8
  store i8 %4289, i8* %.pre-phi31, align 1
  %4290 = sext i32 %4268 to i64
  store i64 %4290, i64* %RCX.i1621, align 8
  %4291 = shl nsw i64 %4290, 2
  %4292 = add i64 %4291, %4263
  %4293 = add i64 %2991, 521
  store i64 %4293, i64* %PC.i, align 8
  %4294 = inttoptr i64 %4292 to i32*
  %4295 = load i32, i32* %4294, align 4
  %4296 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4295, i32* %4296, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4297 = add i64 %4259, -40
  %4298 = add i64 %2991, 525
  store i64 %4298, i64* %PC.i, align 8
  %4299 = inttoptr i64 %4297 to i64*
  %4300 = load i64, i64* %4299, align 8
  store i64 %4300, i64* %RAX.i1124, align 8
  %4301 = add i64 %4259, -24
  %4302 = add i64 %2991, 528
  store i64 %4302, i64* %PC.i, align 8
  %4303 = inttoptr i64 %4301 to i32*
  %4304 = load i32, i32* %4303, align 4
  %4305 = zext i32 %4304 to i64
  store i64 %4305, i64* %RDX.i722.pre-phi, align 8
  %4306 = add i64 %2991, 531
  store i64 %4306, i64* %PC.i, align 8
  %4307 = load i32, i32* %4266, align 4
  %4308 = add i32 %4307, -5
  %4309 = zext i32 %4308 to i64
  store i64 %4309, i64* %RSI.i1502, align 8
  %4310 = sext i32 %4304 to i64
  %4311 = sext i32 %4308 to i64
  %4312 = mul nsw i64 %4311, %4310
  %4313 = trunc i64 %4312 to i32
  %4314 = and i64 %4312, 4294967295
  store i64 %4314, i64* %RDX.i722.pre-phi, align 8
  %4315 = shl i64 %4312, 32
  %4316 = ashr exact i64 %4315, 32
  %4317 = icmp ne i64 %4316, %4312
  %4318 = zext i1 %4317 to i8
  store i8 %4318, i8* %.pre-phi, align 1
  %4319 = and i32 %4313, 255
  %4320 = tail call i32 @llvm.ctpop.i32(i32 %4319)
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  %4323 = xor i8 %4322, 1
  store i8 %4323, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4324 = lshr i32 %4313, 31
  %4325 = trunc i32 %4324 to i8
  store i8 %4325, i8* %.pre-phi29, align 1
  store i8 %4318, i8* %.pre-phi31, align 1
  %4326 = load i64, i64* %RBP.i, align 8
  %4327 = add i64 %4326, -48
  %4328 = add i64 %2991, 540
  store i64 %4328, i64* %PC.i, align 8
  %4329 = trunc i64 %4312 to i32
  %4330 = inttoptr i64 %4327 to i32*
  %4331 = load i32, i32* %4330, align 4
  %4332 = add i32 %4331, %4329
  %4333 = zext i32 %4332 to i64
  store i64 %4333, i64* %RDX.i722.pre-phi, align 8
  %4334 = icmp ult i32 %4332, %4329
  %4335 = icmp ult i32 %4332, %4331
  %4336 = or i1 %4334, %4335
  %4337 = zext i1 %4336 to i8
  store i8 %4337, i8* %.pre-phi, align 1
  %4338 = and i32 %4332, 255
  %4339 = tail call i32 @llvm.ctpop.i32(i32 %4338)
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = xor i8 %4341, 1
  store i8 %4342, i8* %.pre-phi23, align 1
  %4343 = xor i32 %4331, %4329
  %4344 = xor i32 %4343, %4332
  %4345 = lshr i32 %4344, 4
  %4346 = trunc i32 %4345 to i8
  %4347 = and i8 %4346, 1
  store i8 %4347, i8* %.pre-phi25, align 1
  %4348 = icmp eq i32 %4332, 0
  %4349 = zext i1 %4348 to i8
  store i8 %4349, i8* %.pre-phi27, align 1
  %4350 = lshr i32 %4332, 31
  %4351 = trunc i32 %4350 to i8
  store i8 %4351, i8* %.pre-phi29, align 1
  %4352 = lshr i32 %4329, 31
  %4353 = lshr i32 %4331, 31
  %4354 = xor i32 %4350, %4352
  %4355 = xor i32 %4350, %4353
  %4356 = add nuw nsw i32 %4354, %4355
  %4357 = icmp eq i32 %4356, 2
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %.pre-phi31, align 1
  %4359 = sext i32 %4332 to i64
  store i64 %4359, i64* %RCX.i1621, align 8
  %4360 = load i64, i64* %RAX.i1124, align 8
  %4361 = shl nsw i64 %4359, 2
  %4362 = add i64 %4361, %4360
  %4363 = add i64 %2991, 548
  store i64 %4363, i64* %PC.i, align 8
  %4364 = load <2 x float>, <2 x float>* %2901, align 1
  %4365 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4366 = inttoptr i64 %4362 to float*
  %4367 = load float, float* %4366, align 4
  %4368 = extractelement <2 x float> %4364, i32 0
  %4369 = fmul float %4368, %4367
  store float %4369, float* %2894, align 1
  %4370 = bitcast <2 x float> %4364 to <2 x i32>
  %4371 = extractelement <2 x i32> %4370, i32 1
  store i32 %4371, i32* %2903, align 1
  %4372 = extractelement <2 x i32> %4365, i32 0
  store i32 %4372, i32* %2904, align 1
  %4373 = extractelement <2 x i32> %4365, i32 1
  store i32 %4373, i32* %2905, align 1
  %4374 = load <2 x float>, <2 x float>* %2906, align 1
  %4375 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4376 = load <2 x float>, <2 x float>* %2908, align 1
  %4377 = extractelement <2 x float> %4374, i32 0
  %4378 = extractelement <2 x float> %4376, i32 0
  %4379 = fadd float %4377, %4378
  store float %4379, float* %2885, align 1
  %4380 = bitcast <2 x float> %4374 to <2 x i32>
  %4381 = extractelement <2 x i32> %4380, i32 1
  store i32 %4381, i32* %2909, align 1
  %4382 = extractelement <2 x i32> %4375, i32 0
  store i32 %4382, i32* %2910, align 1
  %4383 = extractelement <2 x i32> %4375, i32 1
  store i32 %4383, i32* %2911, align 1
  %4384 = add i64 %4326, -32
  %4385 = add i64 %2991, 556
  store i64 %4385, i64* %PC.i, align 8
  %4386 = inttoptr i64 %4384 to i64*
  %4387 = load i64, i64* %4386, align 8
  store i64 %4387, i64* %RAX.i1124, align 8
  %4388 = add i64 %4326, -44
  %4389 = add i64 %2991, 559
  store i64 %4389, i64* %PC.i, align 8
  %4390 = inttoptr i64 %4388 to i32*
  %4391 = load i32, i32* %4390, align 4
  %4392 = add i32 %4391, -4
  %4393 = zext i32 %4392 to i64
  store i64 %4393, i64* %RDX.i722.pre-phi, align 8
  %4394 = icmp ult i32 %4391, 4
  %4395 = zext i1 %4394 to i8
  store i8 %4395, i8* %.pre-phi, align 1
  %4396 = and i32 %4392, 255
  %4397 = tail call i32 @llvm.ctpop.i32(i32 %4396)
  %4398 = trunc i32 %4397 to i8
  %4399 = and i8 %4398, 1
  %4400 = xor i8 %4399, 1
  store i8 %4400, i8* %.pre-phi23, align 1
  %4401 = xor i32 %4391, %4392
  %4402 = lshr i32 %4401, 4
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  store i8 %4404, i8* %.pre-phi25, align 1
  %4405 = icmp eq i32 %4392, 0
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %.pre-phi27, align 1
  %4407 = lshr i32 %4392, 31
  %4408 = trunc i32 %4407 to i8
  store i8 %4408, i8* %.pre-phi29, align 1
  %4409 = lshr i32 %4391, 31
  %4410 = xor i32 %4407, %4409
  %4411 = add nuw nsw i32 %4410, %4409
  %4412 = icmp eq i32 %4411, 2
  %4413 = zext i1 %4412 to i8
  store i8 %4413, i8* %.pre-phi31, align 1
  %4414 = sext i32 %4392 to i64
  store i64 %4414, i64* %RCX.i1621, align 8
  %4415 = shl nsw i64 %4414, 2
  %4416 = add i64 %4415, %4387
  %4417 = add i64 %2991, 570
  store i64 %4417, i64* %PC.i, align 8
  %4418 = inttoptr i64 %4416 to i32*
  %4419 = load i32, i32* %4418, align 4
  %4420 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4419, i32* %4420, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4421 = load i64, i64* %RBP.i, align 8
  %4422 = add i64 %4421, -40
  %4423 = add i64 %2991, 574
  store i64 %4423, i64* %PC.i, align 8
  %4424 = inttoptr i64 %4422 to i64*
  %4425 = load i64, i64* %4424, align 8
  store i64 %4425, i64* %RAX.i1124, align 8
  %4426 = add i64 %4421, -24
  %4427 = add i64 %2991, 577
  store i64 %4427, i64* %PC.i, align 8
  %4428 = inttoptr i64 %4426 to i32*
  %4429 = load i32, i32* %4428, align 4
  %4430 = zext i32 %4429 to i64
  store i64 %4430, i64* %RDX.i722.pre-phi, align 8
  %4431 = add i64 %4421, -44
  %4432 = add i64 %2991, 580
  store i64 %4432, i64* %PC.i, align 8
  %4433 = inttoptr i64 %4431 to i32*
  %4434 = load i32, i32* %4433, align 4
  %4435 = add i32 %4434, -4
  %4436 = zext i32 %4435 to i64
  store i64 %4436, i64* %RSI.i1502, align 8
  %4437 = sext i32 %4429 to i64
  %4438 = sext i32 %4435 to i64
  %4439 = mul nsw i64 %4438, %4437
  %4440 = trunc i64 %4439 to i32
  %4441 = and i64 %4439, 4294967295
  store i64 %4441, i64* %RDX.i722.pre-phi, align 8
  %4442 = shl i64 %4439, 32
  %4443 = ashr exact i64 %4442, 32
  %4444 = icmp ne i64 %4443, %4439
  %4445 = zext i1 %4444 to i8
  store i8 %4445, i8* %.pre-phi, align 1
  %4446 = and i32 %4440, 255
  %4447 = tail call i32 @llvm.ctpop.i32(i32 %4446)
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  %4450 = xor i8 %4449, 1
  store i8 %4450, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4451 = lshr i32 %4440, 31
  %4452 = trunc i32 %4451 to i8
  store i8 %4452, i8* %.pre-phi29, align 1
  store i8 %4445, i8* %.pre-phi31, align 1
  %4453 = add i64 %4421, -48
  %4454 = add i64 %2991, 589
  store i64 %4454, i64* %PC.i, align 8
  %4455 = trunc i64 %4439 to i32
  %4456 = inttoptr i64 %4453 to i32*
  %4457 = load i32, i32* %4456, align 4
  %4458 = add i32 %4457, %4455
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RDX.i722.pre-phi, align 8
  %4460 = icmp ult i32 %4458, %4455
  %4461 = icmp ult i32 %4458, %4457
  %4462 = or i1 %4460, %4461
  %4463 = zext i1 %4462 to i8
  store i8 %4463, i8* %.pre-phi, align 1
  %4464 = and i32 %4458, 255
  %4465 = tail call i32 @llvm.ctpop.i32(i32 %4464)
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  %4468 = xor i8 %4467, 1
  store i8 %4468, i8* %.pre-phi23, align 1
  %4469 = xor i32 %4457, %4455
  %4470 = xor i32 %4469, %4458
  %4471 = lshr i32 %4470, 4
  %4472 = trunc i32 %4471 to i8
  %4473 = and i8 %4472, 1
  store i8 %4473, i8* %.pre-phi25, align 1
  %4474 = icmp eq i32 %4458, 0
  %4475 = zext i1 %4474 to i8
  store i8 %4475, i8* %.pre-phi27, align 1
  %4476 = lshr i32 %4458, 31
  %4477 = trunc i32 %4476 to i8
  store i8 %4477, i8* %.pre-phi29, align 1
  %4478 = lshr i32 %4455, 31
  %4479 = lshr i32 %4457, 31
  %4480 = xor i32 %4476, %4478
  %4481 = xor i32 %4476, %4479
  %4482 = add nuw nsw i32 %4480, %4481
  %4483 = icmp eq i32 %4482, 2
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %.pre-phi31, align 1
  %4485 = sext i32 %4458 to i64
  store i64 %4485, i64* %RCX.i1621, align 8
  %4486 = load i64, i64* %RAX.i1124, align 8
  %4487 = shl nsw i64 %4485, 2
  %4488 = add i64 %4487, %4486
  %4489 = add i64 %2991, 597
  store i64 %4489, i64* %PC.i, align 8
  %4490 = load <2 x float>, <2 x float>* %2901, align 1
  %4491 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4492 = inttoptr i64 %4488 to float*
  %4493 = load float, float* %4492, align 4
  %4494 = extractelement <2 x float> %4490, i32 0
  %4495 = fmul float %4494, %4493
  store float %4495, float* %2894, align 1
  %4496 = bitcast <2 x float> %4490 to <2 x i32>
  %4497 = extractelement <2 x i32> %4496, i32 1
  store i32 %4497, i32* %2903, align 1
  %4498 = extractelement <2 x i32> %4491, i32 0
  store i32 %4498, i32* %2904, align 1
  %4499 = extractelement <2 x i32> %4491, i32 1
  store i32 %4499, i32* %2905, align 1
  %4500 = load <2 x float>, <2 x float>* %2906, align 1
  %4501 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4502 = load <2 x float>, <2 x float>* %2908, align 1
  %4503 = extractelement <2 x float> %4500, i32 0
  %4504 = extractelement <2 x float> %4502, i32 0
  %4505 = fadd float %4503, %4504
  store float %4505, float* %2885, align 1
  %4506 = bitcast <2 x float> %4500 to <2 x i32>
  %4507 = extractelement <2 x i32> %4506, i32 1
  store i32 %4507, i32* %2909, align 1
  %4508 = extractelement <2 x i32> %4501, i32 0
  store i32 %4508, i32* %2910, align 1
  %4509 = extractelement <2 x i32> %4501, i32 1
  store i32 %4509, i32* %2911, align 1
  %4510 = load i64, i64* %RBP.i, align 8
  %4511 = add i64 %4510, -32
  %4512 = add i64 %2991, 605
  store i64 %4512, i64* %PC.i, align 8
  %4513 = inttoptr i64 %4511 to i64*
  %4514 = load i64, i64* %4513, align 8
  store i64 %4514, i64* %RAX.i1124, align 8
  %4515 = add i64 %4510, -44
  %4516 = add i64 %2991, 608
  store i64 %4516, i64* %PC.i, align 8
  %4517 = inttoptr i64 %4515 to i32*
  %4518 = load i32, i32* %4517, align 4
  %4519 = add i32 %4518, -3
  %4520 = zext i32 %4519 to i64
  store i64 %4520, i64* %RDX.i722.pre-phi, align 8
  %4521 = icmp ult i32 %4518, 3
  %4522 = zext i1 %4521 to i8
  store i8 %4522, i8* %.pre-phi, align 1
  %4523 = and i32 %4519, 255
  %4524 = tail call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  store i8 %4527, i8* %.pre-phi23, align 1
  %4528 = xor i32 %4518, %4519
  %4529 = lshr i32 %4528, 4
  %4530 = trunc i32 %4529 to i8
  %4531 = and i8 %4530, 1
  store i8 %4531, i8* %.pre-phi25, align 1
  %4532 = icmp eq i32 %4519, 0
  %4533 = zext i1 %4532 to i8
  store i8 %4533, i8* %.pre-phi27, align 1
  %4534 = lshr i32 %4519, 31
  %4535 = trunc i32 %4534 to i8
  store i8 %4535, i8* %.pre-phi29, align 1
  %4536 = lshr i32 %4518, 31
  %4537 = xor i32 %4534, %4536
  %4538 = add nuw nsw i32 %4537, %4536
  %4539 = icmp eq i32 %4538, 2
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %.pre-phi31, align 1
  %4541 = sext i32 %4519 to i64
  store i64 %4541, i64* %RCX.i1621, align 8
  %4542 = shl nsw i64 %4541, 2
  %4543 = add i64 %4542, %4514
  %4544 = add i64 %2991, 619
  store i64 %4544, i64* %PC.i, align 8
  %4545 = inttoptr i64 %4543 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4546, i32* %4547, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4548 = add i64 %4510, -40
  %4549 = add i64 %2991, 623
  store i64 %4549, i64* %PC.i, align 8
  %4550 = inttoptr i64 %4548 to i64*
  %4551 = load i64, i64* %4550, align 8
  store i64 %4551, i64* %RAX.i1124, align 8
  %4552 = add i64 %4510, -24
  %4553 = add i64 %2991, 626
  store i64 %4553, i64* %PC.i, align 8
  %4554 = inttoptr i64 %4552 to i32*
  %4555 = load i32, i32* %4554, align 4
  %4556 = zext i32 %4555 to i64
  store i64 %4556, i64* %RDX.i722.pre-phi, align 8
  %4557 = add i64 %2991, 629
  store i64 %4557, i64* %PC.i, align 8
  %4558 = load i32, i32* %4517, align 4
  %4559 = add i32 %4558, -3
  %4560 = zext i32 %4559 to i64
  store i64 %4560, i64* %RSI.i1502, align 8
  %4561 = sext i32 %4555 to i64
  %4562 = sext i32 %4559 to i64
  %4563 = mul nsw i64 %4562, %4561
  %4564 = trunc i64 %4563 to i32
  %4565 = and i64 %4563, 4294967295
  store i64 %4565, i64* %RDX.i722.pre-phi, align 8
  %4566 = shl i64 %4563, 32
  %4567 = ashr exact i64 %4566, 32
  %4568 = icmp ne i64 %4567, %4563
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %.pre-phi, align 1
  %4570 = and i32 %4564, 255
  %4571 = tail call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  store i8 %4574, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4575 = lshr i32 %4564, 31
  %4576 = trunc i32 %4575 to i8
  store i8 %4576, i8* %.pre-phi29, align 1
  store i8 %4569, i8* %.pre-phi31, align 1
  %4577 = load i64, i64* %RBP.i, align 8
  %4578 = add i64 %4577, -48
  %4579 = add i64 %2991, 638
  store i64 %4579, i64* %PC.i, align 8
  %4580 = trunc i64 %4563 to i32
  %4581 = inttoptr i64 %4578 to i32*
  %4582 = load i32, i32* %4581, align 4
  %4583 = add i32 %4582, %4580
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RDX.i722.pre-phi, align 8
  %4585 = icmp ult i32 %4583, %4580
  %4586 = icmp ult i32 %4583, %4582
  %4587 = or i1 %4585, %4586
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %.pre-phi, align 1
  %4589 = and i32 %4583, 255
  %4590 = tail call i32 @llvm.ctpop.i32(i32 %4589)
  %4591 = trunc i32 %4590 to i8
  %4592 = and i8 %4591, 1
  %4593 = xor i8 %4592, 1
  store i8 %4593, i8* %.pre-phi23, align 1
  %4594 = xor i32 %4582, %4580
  %4595 = xor i32 %4594, %4583
  %4596 = lshr i32 %4595, 4
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  store i8 %4598, i8* %.pre-phi25, align 1
  %4599 = icmp eq i32 %4583, 0
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %.pre-phi27, align 1
  %4601 = lshr i32 %4583, 31
  %4602 = trunc i32 %4601 to i8
  store i8 %4602, i8* %.pre-phi29, align 1
  %4603 = lshr i32 %4580, 31
  %4604 = lshr i32 %4582, 31
  %4605 = xor i32 %4601, %4603
  %4606 = xor i32 %4601, %4604
  %4607 = add nuw nsw i32 %4605, %4606
  %4608 = icmp eq i32 %4607, 2
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %.pre-phi31, align 1
  %4610 = sext i32 %4583 to i64
  store i64 %4610, i64* %RCX.i1621, align 8
  %4611 = load i64, i64* %RAX.i1124, align 8
  %4612 = shl nsw i64 %4610, 2
  %4613 = add i64 %4612, %4611
  %4614 = add i64 %2991, 646
  store i64 %4614, i64* %PC.i, align 8
  %4615 = load <2 x float>, <2 x float>* %2901, align 1
  %4616 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4617 = inttoptr i64 %4613 to float*
  %4618 = load float, float* %4617, align 4
  %4619 = extractelement <2 x float> %4615, i32 0
  %4620 = fmul float %4619, %4618
  store float %4620, float* %2894, align 1
  %4621 = bitcast <2 x float> %4615 to <2 x i32>
  %4622 = extractelement <2 x i32> %4621, i32 1
  store i32 %4622, i32* %2903, align 1
  %4623 = extractelement <2 x i32> %4616, i32 0
  store i32 %4623, i32* %2904, align 1
  %4624 = extractelement <2 x i32> %4616, i32 1
  store i32 %4624, i32* %2905, align 1
  %4625 = load <2 x float>, <2 x float>* %2906, align 1
  %4626 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4627 = load <2 x float>, <2 x float>* %2908, align 1
  %4628 = extractelement <2 x float> %4625, i32 0
  %4629 = extractelement <2 x float> %4627, i32 0
  %4630 = fadd float %4628, %4629
  store float %4630, float* %2885, align 1
  %4631 = bitcast <2 x float> %4625 to <2 x i32>
  %4632 = extractelement <2 x i32> %4631, i32 1
  store i32 %4632, i32* %2909, align 1
  %4633 = extractelement <2 x i32> %4626, i32 0
  store i32 %4633, i32* %2910, align 1
  %4634 = extractelement <2 x i32> %4626, i32 1
  store i32 %4634, i32* %2911, align 1
  %4635 = add i64 %4577, -32
  %4636 = add i64 %2991, 654
  store i64 %4636, i64* %PC.i, align 8
  %4637 = inttoptr i64 %4635 to i64*
  %4638 = load i64, i64* %4637, align 8
  store i64 %4638, i64* %RAX.i1124, align 8
  %4639 = add i64 %4577, -44
  %4640 = add i64 %2991, 657
  store i64 %4640, i64* %PC.i, align 8
  %4641 = inttoptr i64 %4639 to i32*
  %4642 = load i32, i32* %4641, align 4
  %4643 = add i32 %4642, -2
  %4644 = zext i32 %4643 to i64
  store i64 %4644, i64* %RDX.i722.pre-phi, align 8
  %4645 = icmp ult i32 %4642, 2
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %.pre-phi, align 1
  %4647 = and i32 %4643, 255
  %4648 = tail call i32 @llvm.ctpop.i32(i32 %4647)
  %4649 = trunc i32 %4648 to i8
  %4650 = and i8 %4649, 1
  %4651 = xor i8 %4650, 1
  store i8 %4651, i8* %.pre-phi23, align 1
  %4652 = xor i32 %4642, %4643
  %4653 = lshr i32 %4652, 4
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  store i8 %4655, i8* %.pre-phi25, align 1
  %4656 = icmp eq i32 %4643, 0
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %.pre-phi27, align 1
  %4658 = lshr i32 %4643, 31
  %4659 = trunc i32 %4658 to i8
  store i8 %4659, i8* %.pre-phi29, align 1
  %4660 = lshr i32 %4642, 31
  %4661 = xor i32 %4658, %4660
  %4662 = add nuw nsw i32 %4661, %4660
  %4663 = icmp eq i32 %4662, 2
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %.pre-phi31, align 1
  %4665 = sext i32 %4643 to i64
  store i64 %4665, i64* %RCX.i1621, align 8
  %4666 = shl nsw i64 %4665, 2
  %4667 = add i64 %4666, %4638
  %4668 = add i64 %2991, 668
  store i64 %4668, i64* %PC.i, align 8
  %4669 = inttoptr i64 %4667 to i32*
  %4670 = load i32, i32* %4669, align 4
  %4671 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4670, i32* %4671, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4672 = load i64, i64* %RBP.i, align 8
  %4673 = add i64 %4672, -40
  %4674 = add i64 %2991, 672
  store i64 %4674, i64* %PC.i, align 8
  %4675 = inttoptr i64 %4673 to i64*
  %4676 = load i64, i64* %4675, align 8
  store i64 %4676, i64* %RAX.i1124, align 8
  %4677 = add i64 %4672, -24
  %4678 = add i64 %2991, 675
  store i64 %4678, i64* %PC.i, align 8
  %4679 = inttoptr i64 %4677 to i32*
  %4680 = load i32, i32* %4679, align 4
  %4681 = zext i32 %4680 to i64
  store i64 %4681, i64* %RDX.i722.pre-phi, align 8
  %4682 = add i64 %4672, -44
  %4683 = add i64 %2991, 678
  store i64 %4683, i64* %PC.i, align 8
  %4684 = inttoptr i64 %4682 to i32*
  %4685 = load i32, i32* %4684, align 4
  %4686 = add i32 %4685, -2
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RSI.i1502, align 8
  %4688 = sext i32 %4680 to i64
  %4689 = sext i32 %4686 to i64
  %4690 = mul nsw i64 %4689, %4688
  %4691 = trunc i64 %4690 to i32
  %4692 = and i64 %4690, 4294967295
  store i64 %4692, i64* %RDX.i722.pre-phi, align 8
  %4693 = shl i64 %4690, 32
  %4694 = ashr exact i64 %4693, 32
  %4695 = icmp ne i64 %4694, %4690
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %.pre-phi, align 1
  %4697 = and i32 %4691, 255
  %4698 = tail call i32 @llvm.ctpop.i32(i32 %4697)
  %4699 = trunc i32 %4698 to i8
  %4700 = and i8 %4699, 1
  %4701 = xor i8 %4700, 1
  store i8 %4701, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4702 = lshr i32 %4691, 31
  %4703 = trunc i32 %4702 to i8
  store i8 %4703, i8* %.pre-phi29, align 1
  store i8 %4696, i8* %.pre-phi31, align 1
  %4704 = add i64 %4672, -48
  %4705 = add i64 %2991, 687
  store i64 %4705, i64* %PC.i, align 8
  %4706 = trunc i64 %4690 to i32
  %4707 = inttoptr i64 %4704 to i32*
  %4708 = load i32, i32* %4707, align 4
  %4709 = add i32 %4708, %4706
  %4710 = zext i32 %4709 to i64
  store i64 %4710, i64* %RDX.i722.pre-phi, align 8
  %4711 = icmp ult i32 %4709, %4706
  %4712 = icmp ult i32 %4709, %4708
  %4713 = or i1 %4711, %4712
  %4714 = zext i1 %4713 to i8
  store i8 %4714, i8* %.pre-phi, align 1
  %4715 = and i32 %4709, 255
  %4716 = tail call i32 @llvm.ctpop.i32(i32 %4715)
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = xor i8 %4718, 1
  store i8 %4719, i8* %.pre-phi23, align 1
  %4720 = xor i32 %4708, %4706
  %4721 = xor i32 %4720, %4709
  %4722 = lshr i32 %4721, 4
  %4723 = trunc i32 %4722 to i8
  %4724 = and i8 %4723, 1
  store i8 %4724, i8* %.pre-phi25, align 1
  %4725 = icmp eq i32 %4709, 0
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %.pre-phi27, align 1
  %4727 = lshr i32 %4709, 31
  %4728 = trunc i32 %4727 to i8
  store i8 %4728, i8* %.pre-phi29, align 1
  %4729 = lshr i32 %4706, 31
  %4730 = lshr i32 %4708, 31
  %4731 = xor i32 %4727, %4729
  %4732 = xor i32 %4727, %4730
  %4733 = add nuw nsw i32 %4731, %4732
  %4734 = icmp eq i32 %4733, 2
  %4735 = zext i1 %4734 to i8
  store i8 %4735, i8* %.pre-phi31, align 1
  %4736 = sext i32 %4709 to i64
  store i64 %4736, i64* %RCX.i1621, align 8
  %4737 = load i64, i64* %RAX.i1124, align 8
  %4738 = shl nsw i64 %4736, 2
  %4739 = add i64 %4738, %4737
  %4740 = add i64 %2991, 695
  store i64 %4740, i64* %PC.i, align 8
  %4741 = load <2 x float>, <2 x float>* %2901, align 1
  %4742 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4743 = inttoptr i64 %4739 to float*
  %4744 = load float, float* %4743, align 4
  %4745 = extractelement <2 x float> %4741, i32 0
  %4746 = fmul float %4745, %4744
  store float %4746, float* %2894, align 1
  %4747 = bitcast <2 x float> %4741 to <2 x i32>
  %4748 = extractelement <2 x i32> %4747, i32 1
  store i32 %4748, i32* %2903, align 1
  %4749 = extractelement <2 x i32> %4742, i32 0
  store i32 %4749, i32* %2904, align 1
  %4750 = extractelement <2 x i32> %4742, i32 1
  store i32 %4750, i32* %2905, align 1
  %4751 = load <2 x float>, <2 x float>* %2906, align 1
  %4752 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4753 = load <2 x float>, <2 x float>* %2908, align 1
  %4754 = extractelement <2 x float> %4751, i32 0
  %4755 = extractelement <2 x float> %4753, i32 0
  %4756 = fadd float %4754, %4755
  store float %4756, float* %2885, align 1
  %4757 = bitcast <2 x float> %4751 to <2 x i32>
  %4758 = extractelement <2 x i32> %4757, i32 1
  store i32 %4758, i32* %2909, align 1
  %4759 = extractelement <2 x i32> %4752, i32 0
  store i32 %4759, i32* %2910, align 1
  %4760 = extractelement <2 x i32> %4752, i32 1
  store i32 %4760, i32* %2911, align 1
  %4761 = load i64, i64* %RBP.i, align 8
  %4762 = add i64 %4761, -32
  %4763 = add i64 %2991, 703
  store i64 %4763, i64* %PC.i, align 8
  %4764 = inttoptr i64 %4762 to i64*
  %4765 = load i64, i64* %4764, align 8
  store i64 %4765, i64* %RAX.i1124, align 8
  %4766 = add i64 %4761, -44
  %4767 = add i64 %2991, 706
  store i64 %4767, i64* %PC.i, align 8
  %4768 = inttoptr i64 %4766 to i32*
  %4769 = load i32, i32* %4768, align 4
  %4770 = add i32 %4769, -1
  %4771 = zext i32 %4770 to i64
  store i64 %4771, i64* %RDX.i722.pre-phi, align 8
  %4772 = icmp eq i32 %4769, 0
  %4773 = zext i1 %4772 to i8
  store i8 %4773, i8* %.pre-phi, align 1
  %4774 = and i32 %4770, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %.pre-phi23, align 1
  %4779 = xor i32 %4769, %4770
  %4780 = lshr i32 %4779, 4
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  store i8 %4782, i8* %.pre-phi25, align 1
  %4783 = icmp eq i32 %4770, 0
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %.pre-phi27, align 1
  %4785 = lshr i32 %4770, 31
  %4786 = trunc i32 %4785 to i8
  store i8 %4786, i8* %.pre-phi29, align 1
  %4787 = lshr i32 %4769, 31
  %4788 = xor i32 %4785, %4787
  %4789 = add nuw nsw i32 %4788, %4787
  %4790 = icmp eq i32 %4789, 2
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %.pre-phi31, align 1
  %4792 = sext i32 %4770 to i64
  store i64 %4792, i64* %RCX.i1621, align 8
  %4793 = shl nsw i64 %4792, 2
  %4794 = add i64 %4793, %4765
  %4795 = add i64 %2991, 717
  store i64 %4795, i64* %PC.i, align 8
  %4796 = inttoptr i64 %4794 to i32*
  %4797 = load i32, i32* %4796, align 4
  %4798 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4797, i32* %4798, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4799 = add i64 %4761, -40
  %4800 = add i64 %2991, 721
  store i64 %4800, i64* %PC.i, align 8
  %4801 = inttoptr i64 %4799 to i64*
  %4802 = load i64, i64* %4801, align 8
  store i64 %4802, i64* %RAX.i1124, align 8
  %4803 = add i64 %4761, -24
  %4804 = add i64 %2991, 724
  store i64 %4804, i64* %PC.i, align 8
  %4805 = inttoptr i64 %4803 to i32*
  %4806 = load i32, i32* %4805, align 4
  %4807 = zext i32 %4806 to i64
  store i64 %4807, i64* %RDX.i722.pre-phi, align 8
  %4808 = add i64 %2991, 727
  store i64 %4808, i64* %PC.i, align 8
  %4809 = load i32, i32* %4768, align 4
  %4810 = add i32 %4809, -1
  %4811 = zext i32 %4810 to i64
  store i64 %4811, i64* %RSI.i1502, align 8
  %4812 = sext i32 %4806 to i64
  %4813 = sext i32 %4810 to i64
  %4814 = mul nsw i64 %4813, %4812
  %4815 = trunc i64 %4814 to i32
  %4816 = and i64 %4814, 4294967295
  store i64 %4816, i64* %RDX.i722.pre-phi, align 8
  %4817 = shl i64 %4814, 32
  %4818 = ashr exact i64 %4817, 32
  %4819 = icmp ne i64 %4818, %4814
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %.pre-phi, align 1
  %4821 = and i32 %4815, 255
  %4822 = tail call i32 @llvm.ctpop.i32(i32 %4821)
  %4823 = trunc i32 %4822 to i8
  %4824 = and i8 %4823, 1
  %4825 = xor i8 %4824, 1
  store i8 %4825, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4826 = lshr i32 %4815, 31
  %4827 = trunc i32 %4826 to i8
  store i8 %4827, i8* %.pre-phi29, align 1
  store i8 %4820, i8* %.pre-phi31, align 1
  %4828 = load i64, i64* %RBP.i, align 8
  %4829 = add i64 %4828, -48
  %4830 = add i64 %2991, 736
  store i64 %4830, i64* %PC.i, align 8
  %4831 = trunc i64 %4814 to i32
  %4832 = inttoptr i64 %4829 to i32*
  %4833 = load i32, i32* %4832, align 4
  %4834 = add i32 %4833, %4831
  %4835 = zext i32 %4834 to i64
  store i64 %4835, i64* %RDX.i722.pre-phi, align 8
  %4836 = icmp ult i32 %4834, %4831
  %4837 = icmp ult i32 %4834, %4833
  %4838 = or i1 %4836, %4837
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %.pre-phi, align 1
  %4840 = and i32 %4834, 255
  %4841 = tail call i32 @llvm.ctpop.i32(i32 %4840)
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = xor i8 %4843, 1
  store i8 %4844, i8* %.pre-phi23, align 1
  %4845 = xor i32 %4833, %4831
  %4846 = xor i32 %4845, %4834
  %4847 = lshr i32 %4846, 4
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  store i8 %4849, i8* %.pre-phi25, align 1
  %4850 = icmp eq i32 %4834, 0
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %.pre-phi27, align 1
  %4852 = lshr i32 %4834, 31
  %4853 = trunc i32 %4852 to i8
  store i8 %4853, i8* %.pre-phi29, align 1
  %4854 = lshr i32 %4831, 31
  %4855 = lshr i32 %4833, 31
  %4856 = xor i32 %4852, %4854
  %4857 = xor i32 %4852, %4855
  %4858 = add nuw nsw i32 %4856, %4857
  %4859 = icmp eq i32 %4858, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %.pre-phi31, align 1
  %4861 = sext i32 %4834 to i64
  store i64 %4861, i64* %RCX.i1621, align 8
  %4862 = load i64, i64* %RAX.i1124, align 8
  %4863 = shl nsw i64 %4861, 2
  %4864 = add i64 %4863, %4862
  %4865 = add i64 %2991, 744
  store i64 %4865, i64* %PC.i, align 8
  %4866 = load <2 x float>, <2 x float>* %2901, align 1
  %4867 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4868 = inttoptr i64 %4864 to float*
  %4869 = load float, float* %4868, align 4
  %4870 = extractelement <2 x float> %4866, i32 0
  %4871 = fmul float %4870, %4869
  store float %4871, float* %2894, align 1
  %4872 = bitcast <2 x float> %4866 to <2 x i32>
  %4873 = extractelement <2 x i32> %4872, i32 1
  store i32 %4873, i32* %2903, align 1
  %4874 = extractelement <2 x i32> %4867, i32 0
  store i32 %4874, i32* %2904, align 1
  %4875 = extractelement <2 x i32> %4867, i32 1
  store i32 %4875, i32* %2905, align 1
  %4876 = load <2 x float>, <2 x float>* %2906, align 1
  %4877 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4878 = load <2 x float>, <2 x float>* %2908, align 1
  %4879 = extractelement <2 x float> %4876, i32 0
  %4880 = extractelement <2 x float> %4878, i32 0
  %4881 = fadd float %4879, %4880
  store float %4881, float* %2885, align 1
  %4882 = bitcast <2 x float> %4876 to <2 x i32>
  %4883 = extractelement <2 x i32> %4882, i32 1
  store i32 %4883, i32* %2909, align 1
  %4884 = extractelement <2 x i32> %4877, i32 0
  store i32 %4884, i32* %2910, align 1
  %4885 = extractelement <2 x i32> %4877, i32 1
  store i32 %4885, i32* %2911, align 1
  %4886 = add i64 %4828, -32
  %4887 = add i64 %2991, 752
  store i64 %4887, i64* %PC.i, align 8
  %4888 = inttoptr i64 %4886 to i64*
  %4889 = load i64, i64* %4888, align 8
  store i64 %4889, i64* %RAX.i1124, align 8
  %4890 = add i64 %4828, -44
  %4891 = add i64 %2991, 756
  store i64 %4891, i64* %PC.i, align 8
  %4892 = inttoptr i64 %4890 to i32*
  %4893 = load i32, i32* %4892, align 4
  %4894 = sext i32 %4893 to i64
  store i64 %4894, i64* %RCX.i1621, align 8
  %4895 = shl nsw i64 %4894, 2
  %4896 = add i64 %4895, %4889
  %4897 = add i64 %2991, 761
  store i64 %4897, i64* %PC.i, align 8
  %4898 = inttoptr i64 %4896 to i32*
  %4899 = load i32, i32* %4898, align 4
  %4900 = bitcast %union.VectorReg* %2892 to i32*
  store i32 %4899, i32* %4900, align 1
  store float 0.000000e+00, float* %2896, align 1
  store float 0.000000e+00, float* %2898, align 1
  store float 0.000000e+00, float* %2900, align 1
  %4901 = load i64, i64* %RBP.i, align 8
  %4902 = add i64 %4901, -40
  %4903 = add i64 %2991, 765
  store i64 %4903, i64* %PC.i, align 8
  %4904 = inttoptr i64 %4902 to i64*
  %4905 = load i64, i64* %4904, align 8
  store i64 %4905, i64* %RAX.i1124, align 8
  %4906 = add i64 %4901, -24
  %4907 = add i64 %2991, 768
  store i64 %4907, i64* %PC.i, align 8
  %4908 = inttoptr i64 %4906 to i32*
  %4909 = load i32, i32* %4908, align 4
  %4910 = zext i32 %4909 to i64
  store i64 %4910, i64* %RDX.i722.pre-phi, align 8
  %4911 = add i64 %4901, -44
  %4912 = add i64 %2991, 772
  store i64 %4912, i64* %PC.i, align 8
  %4913 = inttoptr i64 %4911 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = sext i32 %4909 to i64
  %4916 = sext i32 %4914 to i64
  %4917 = mul nsw i64 %4916, %4915
  %4918 = trunc i64 %4917 to i32
  %4919 = and i64 %4917, 4294967295
  store i64 %4919, i64* %RDX.i722.pre-phi, align 8
  %4920 = shl i64 %4917, 32
  %4921 = ashr exact i64 %4920, 32
  %4922 = icmp ne i64 %4921, %4917
  %4923 = zext i1 %4922 to i8
  store i8 %4923, i8* %.pre-phi, align 1
  %4924 = and i32 %4918, 255
  %4925 = tail call i32 @llvm.ctpop.i32(i32 %4924)
  %4926 = trunc i32 %4925 to i8
  %4927 = and i8 %4926, 1
  %4928 = xor i8 %4927, 1
  store i8 %4928, i8* %.pre-phi23, align 1
  store i8 0, i8* %.pre-phi25, align 1
  store i8 0, i8* %.pre-phi27, align 1
  %4929 = lshr i32 %4918, 31
  %4930 = trunc i32 %4929 to i8
  store i8 %4930, i8* %.pre-phi29, align 1
  store i8 %4923, i8* %.pre-phi31, align 1
  %4931 = add i64 %4901, -48
  %4932 = add i64 %2991, 775
  store i64 %4932, i64* %PC.i, align 8
  %4933 = trunc i64 %4917 to i32
  %4934 = inttoptr i64 %4931 to i32*
  %4935 = load i32, i32* %4934, align 4
  %4936 = add i32 %4935, %4933
  %4937 = zext i32 %4936 to i64
  store i64 %4937, i64* %RDX.i722.pre-phi, align 8
  %4938 = icmp ult i32 %4936, %4933
  %4939 = icmp ult i32 %4936, %4935
  %4940 = or i1 %4938, %4939
  %4941 = zext i1 %4940 to i8
  store i8 %4941, i8* %.pre-phi, align 1
  %4942 = and i32 %4936, 255
  %4943 = tail call i32 @llvm.ctpop.i32(i32 %4942)
  %4944 = trunc i32 %4943 to i8
  %4945 = and i8 %4944, 1
  %4946 = xor i8 %4945, 1
  store i8 %4946, i8* %.pre-phi23, align 1
  %4947 = xor i32 %4935, %4933
  %4948 = xor i32 %4947, %4936
  %4949 = lshr i32 %4948, 4
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  store i8 %4951, i8* %.pre-phi25, align 1
  %4952 = icmp eq i32 %4936, 0
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %.pre-phi27, align 1
  %4954 = lshr i32 %4936, 31
  %4955 = trunc i32 %4954 to i8
  store i8 %4955, i8* %.pre-phi29, align 1
  %4956 = lshr i32 %4933, 31
  %4957 = lshr i32 %4935, 31
  %4958 = xor i32 %4954, %4956
  %4959 = xor i32 %4954, %4957
  %4960 = add nuw nsw i32 %4958, %4959
  %4961 = icmp eq i32 %4960, 2
  %4962 = zext i1 %4961 to i8
  store i8 %4962, i8* %.pre-phi31, align 1
  %4963 = sext i32 %4936 to i64
  store i64 %4963, i64* %RCX.i1621, align 8
  %4964 = shl nsw i64 %4963, 2
  %4965 = add i64 %4964, %4905
  %4966 = add i64 %2991, 783
  store i64 %4966, i64* %PC.i, align 8
  %4967 = load <2 x float>, <2 x float>* %2901, align 1
  %4968 = load <2 x i32>, <2 x i32>* %2902, align 1
  %4969 = inttoptr i64 %4965 to float*
  %4970 = load float, float* %4969, align 4
  %4971 = extractelement <2 x float> %4967, i32 0
  %4972 = fmul float %4971, %4970
  store float %4972, float* %2894, align 1
  %4973 = bitcast <2 x float> %4967 to <2 x i32>
  %4974 = extractelement <2 x i32> %4973, i32 1
  store i32 %4974, i32* %2903, align 1
  %4975 = extractelement <2 x i32> %4968, i32 0
  store i32 %4975, i32* %2904, align 1
  %4976 = extractelement <2 x i32> %4968, i32 1
  store i32 %4976, i32* %2905, align 1
  %4977 = load <2 x float>, <2 x float>* %2906, align 1
  %4978 = load <2 x i32>, <2 x i32>* %2907, align 1
  %4979 = load <2 x float>, <2 x float>* %2908, align 1
  %4980 = extractelement <2 x float> %4977, i32 0
  %4981 = extractelement <2 x float> %4979, i32 0
  %4982 = fadd float %4980, %4981
  store float %4982, float* %2885, align 1
  %4983 = bitcast <2 x float> %4977 to <2 x i32>
  %4984 = extractelement <2 x i32> %4983, i32 1
  store i32 %4984, i32* %2909, align 1
  %4985 = extractelement <2 x i32> %4978, i32 0
  store i32 %4985, i32* %2910, align 1
  %4986 = extractelement <2 x i32> %4978, i32 1
  store i32 %4986, i32* %2911, align 1
  %4987 = load i64, i64* %RBP.i, align 8
  %4988 = add i64 %4987, -16
  %4989 = add i64 %2991, 791
  store i64 %4989, i64* %PC.i, align 8
  %4990 = inttoptr i64 %4988 to i64*
  %4991 = load i64, i64* %4990, align 8
  store i64 %4991, i64* %RAX.i1124, align 8
  %4992 = add i64 %4987, -48
  %4993 = add i64 %2991, 795
  store i64 %4993, i64* %PC.i, align 8
  %4994 = inttoptr i64 %4992 to i32*
  %4995 = load i32, i32* %4994, align 4
  %4996 = sext i32 %4995 to i64
  store i64 %4996, i64* %RCX.i1621, align 8
  %4997 = shl nsw i64 %4996, 2
  %4998 = add i64 %4997, %4991
  %4999 = add i64 %2991, 800
  store i64 %4999, i64* %PC.i, align 8
  %5000 = load <2 x float>, <2 x float>* %2912, align 1
  %5001 = extractelement <2 x float> %5000, i32 0
  %5002 = inttoptr i64 %4998 to float*
  store float %5001, float* %5002, align 4
  %5003 = load i64, i64* %RBP.i, align 8
  %5004 = add i64 %5003, -48
  %5005 = load i64, i64* %PC.i, align 8
  %5006 = add i64 %5005, 3
  store i64 %5006, i64* %PC.i, align 8
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007, align 4
  %5009 = add i32 %5008, 1
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RAX.i1124, align 8
  %5011 = icmp eq i32 %5008, -1
  %5012 = icmp eq i32 %5009, 0
  %5013 = or i1 %5011, %5012
  %5014 = zext i1 %5013 to i8
  store i8 %5014, i8* %.pre-phi, align 1
  %5015 = and i32 %5009, 255
  %5016 = tail call i32 @llvm.ctpop.i32(i32 %5015)
  %5017 = trunc i32 %5016 to i8
  %5018 = and i8 %5017, 1
  %5019 = xor i8 %5018, 1
  store i8 %5019, i8* %.pre-phi23, align 1
  %5020 = xor i32 %5008, %5009
  %5021 = lshr i32 %5020, 4
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  store i8 %5023, i8* %.pre-phi25, align 1
  %5024 = icmp eq i32 %5009, 0
  %5025 = zext i1 %5024 to i8
  store i8 %5025, i8* %.pre-phi27, align 1
  %5026 = lshr i32 %5009, 31
  %5027 = trunc i32 %5026 to i8
  store i8 %5027, i8* %.pre-phi29, align 1
  %5028 = lshr i32 %5008, 31
  %5029 = xor i32 %5026, %5028
  %5030 = add nuw nsw i32 %5029, %5026
  %5031 = icmp eq i32 %5030, 2
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %.pre-phi31, align 1
  %5033 = add i64 %5005, 9
  store i64 %5033, i64* %PC.i, align 8
  store i32 %5009, i32* %5007, align 4
  %5034 = load i64, i64* %PC.i, align 8
  %5035 = add i64 %5034, -821
  store i64 %5035, i64* %3, align 8
  br label %block_.L_4024b9

block_.L_4027f3:                                  ; preds = %block_.L_4024b9
  %5036 = add i64 %2955, -44
  %5037 = add i64 %2991, 8
  store i64 %5037, i64* %PC.i, align 8
  %5038 = inttoptr i64 %5036 to i32*
  %5039 = load i32, i32* %5038, align 4
  %5040 = add i32 %5039, 16
  %5041 = zext i32 %5040 to i64
  store i64 %5041, i64* %RAX.i1124, align 8
  %5042 = icmp ugt i32 %5039, -17
  %5043 = zext i1 %5042 to i8
  store i8 %5043, i8* %.pre-phi, align 1
  %5044 = and i32 %5040, 255
  %5045 = tail call i32 @llvm.ctpop.i32(i32 %5044)
  %5046 = trunc i32 %5045 to i8
  %5047 = and i8 %5046, 1
  %5048 = xor i8 %5047, 1
  store i8 %5048, i8* %.pre-phi23, align 1
  %5049 = xor i32 %5039, 16
  %5050 = xor i32 %5049, %5040
  %5051 = lshr i32 %5050, 4
  %5052 = trunc i32 %5051 to i8
  %5053 = and i8 %5052, 1
  store i8 %5053, i8* %.pre-phi25, align 1
  %5054 = icmp eq i32 %5040, 0
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %.pre-phi27, align 1
  %5056 = lshr i32 %5040, 31
  %5057 = trunc i32 %5056 to i8
  store i8 %5057, i8* %.pre-phi29, align 1
  %5058 = lshr i32 %5039, 31
  %5059 = xor i32 %5056, %5058
  %5060 = add nuw nsw i32 %5059, %5056
  %5061 = icmp eq i32 %5060, 2
  %5062 = zext i1 %5061 to i8
  store i8 %5062, i8* %.pre-phi31, align 1
  %5063 = add i64 %2991, 14
  store i64 %5063, i64* %PC.i, align 8
  store i32 %5040, i32* %5038, align 4
  %5064 = load i64, i64* %PC.i, align 8
  %5065 = add i64 %5064, -859
  store i64 %5065, i64* %3, align 8
  br label %block_.L_4024a6

block_.L_402806:                                  ; preds = %block_.L_4024a6
  %5066 = add i64 %2950, 1
  store i64 %5066, i64* %PC.i, align 8
  %5067 = load i64, i64* %6, align 8
  %5068 = add i64 %5067, 8
  %5069 = inttoptr i64 %5067 to i64*
  %5070 = load i64, i64* %5069, align 8
  store i64 %5070, i64* %RBP.i, align 8
  store i64 %5068, i64* %6, align 8
  %5071 = add i64 %2950, 2
  store i64 %5071, i64* %PC.i, align 8
  %5072 = inttoptr i64 %5068 to i64*
  %5073 = load i64, i64* %5072, align 8
  store i64 %5073, i64* %3, align 8
  %5074 = add i64 %5067, 16
  store i64 %5074, i64* %6, align 8
  ret %struct.Memory* %2823
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4020b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40217a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4021aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40229d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4022cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402484(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %19, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4024b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4027f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %19, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4024a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
