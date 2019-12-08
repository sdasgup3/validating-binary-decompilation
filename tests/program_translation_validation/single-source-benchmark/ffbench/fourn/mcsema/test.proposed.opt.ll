; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x365__rip__type = type <{ [8 x i8] }>
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
@G_0x365__rip_ = local_unnamed_addr global %G_0x365__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fourn(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -200
  store i64 %11, i64* %RSP.i378, align 8
  %12 = icmp ult i64 %8, 192
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i814, align 8
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i811 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -20
  %52 = load i32, i32* %EDX.i811, align 4
  %53 = load i64, i64* %PC.i, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC.i, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i808 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i32, i32* %ECX.i808, align 4
  %60 = load i64, i64* %PC.i, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -96
  %65 = load i64, i64* %PC.i, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 1, i32* %67, align 4
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -72
  %70 = load i64, i64* %PC.i, align 8
  %71 = add i64 %70, 7
  store i64 %71, i64* %PC.i, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i801 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %EAX.i798 = bitcast %union.anon* %73 to i32*
  %RCX.i791 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %RDX.i789 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_400b63, %entry
  %74 = phi i64 [ %179, %block_400b63 ], [ %.pre, %entry ]
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -72
  %77 = add i64 %74, 3
  store i64 %77, i64* %PC.i, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX.i801, align 8
  %81 = add i64 %75, -20
  %82 = add i64 %74, 6
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %79, %84
  %86 = icmp ult i32 %79, %84
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = xor i32 %84, %79
  %94 = xor i32 %93, %85
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %26, align 1
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %29, align 1
  %100 = lshr i32 %85, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %32, align 1
  %102 = lshr i32 %79, 31
  %103 = lshr i32 %84, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %38, align 1
  %109 = icmp ne i8 %101, 0
  %110 = xor i1 %109, %107
  %.demorgan = or i1 %98, %110
  %.v = select i1 %.demorgan, i64 12, i64 44
  %111 = add i64 %74, %.v
  store i64 %111, i64* %3, align 8
  br i1 %.demorgan, label %block_400b63, label %block_.L_400b83

block_400b63:                                     ; preds = %block_.L_400b57
  %112 = add i64 %75, -16
  %113 = add i64 %111, 4
  store i64 %113, i64* %PC.i, align 8
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RAX.i801, align 8
  %116 = add i64 %111, 8
  store i64 %116, i64* %PC.i, align 8
  %117 = load i32, i32* %78, align 4
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %RCX.i791, align 8
  %119 = shl nsw i64 %118, 2
  %120 = add i64 %119, %115
  %121 = add i64 %111, 11
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RDX.i789, align 8
  %125 = add i64 %75, -96
  %126 = add i64 %111, 15
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %123 to i64
  %130 = sext i32 %128 to i64
  %131 = mul nsw i64 %130, %129
  %132 = trunc i64 %131 to i32
  %133 = and i64 %131, 4294967295
  store i64 %133, i64* %RDX.i789, align 8
  %134 = shl i64 %131, 32
  %135 = ashr exact i64 %134, 32
  %136 = icmp ne i64 %135, %131
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %14, align 1
  %138 = and i32 %132, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %143 = lshr i32 %132, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %32, align 1
  store i8 %137, i8* %38, align 1
  %145 = trunc i64 %131 to i32
  %146 = add i64 %111, 18
  store i64 %146, i64* %PC.i, align 8
  store i32 %145, i32* %127, align 4
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -72
  %149 = load i64, i64* %PC.i, align 8
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC.i, align 8
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 1
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i801, align 8
  %155 = icmp eq i32 %152, -1
  %156 = icmp eq i32 %153, 0
  %157 = or i1 %155, %156
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %14, align 1
  %159 = and i32 %153, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i32 %152, %153
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %26, align 1
  %168 = icmp eq i32 %153, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %29, align 1
  %170 = lshr i32 %153, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %32, align 1
  %172 = lshr i32 %152, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %170
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %38, align 1
  %177 = add i64 %149, 9
  store i64 %177, i64* %PC.i, align 8
  store i32 %153, i32* %151, align 4
  %178 = load i64, i64* %PC.i, align 8
  %179 = add i64 %178, -39
  store i64 %179, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400b83:                                  ; preds = %block_.L_400b57
  %180 = add i64 %75, -88
  %181 = add i64 %111, 7
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 1, i32* %182, align 4
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -20
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %184 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i801, align 8
  %190 = add i64 %183, -72
  %191 = add i64 %185, 6
  store i64 %191, i64* %PC.i, align 8
  %192 = inttoptr i64 %190 to i32*
  store i32 %188, i32* %192, align 4
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %195 = bitcast %union.anon* %194 to i32*
  %196 = getelementptr inbounds %union.anon, %union.anon* %194, i64 0, i32 0
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %AL.i491 = bitcast %union.anon* %73 to i8*
  %CL.i492 = bitcast %union.anon* %56 to i8*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %199 = bitcast [32 x %union.VectorReg]* %198 to i8*
  %200 = bitcast [32 x %union.VectorReg]* %198 to double*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %202 = bitcast i64* %201 to double*
  %203 = bitcast [32 x %union.VectorReg]* %198 to i32*
  %204 = getelementptr inbounds i8, i8* %199, i64 4
  %205 = bitcast i8* %204 to i32*
  %206 = bitcast i64* %201 to i32*
  %207 = getelementptr inbounds i8, i8* %199, i64 12
  %208 = bitcast i8* %207 to i32*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %210 = bitcast %union.VectorReg* %209 to double*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %212 = bitcast i64* %211 to double*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %215 = bitcast i64* %214 to double*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %217 = bitcast %union.VectorReg* %216 to double*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %219 = bitcast i64* %218 to double*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %221 = bitcast %union.VectorReg* %220 to double*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %223 = bitcast i64* %222 to double*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %225 = bitcast %union.VectorReg* %224 to double*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %227 = bitcast %union.VectorReg* %220 to double*
  %228 = bitcast %union.VectorReg* %216 to <2 x i32>*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %230 = bitcast i64* %229 to <2 x i32>*
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b90

block_.L_400b90:                                  ; preds = %block_.L_401010, %block_.L_400b83
  %231 = phi i64 [ %.pre1, %block_.L_400b83 ], [ %2204, %block_.L_401010 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_400b83 ], [ %MEMORY.8, %block_.L_401010 ]
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -72
  %234 = add i64 %231, 4
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, -1
  %238 = icmp eq i32 %236, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1
  %240 = and i32 %237, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i32 %236, %237
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %26, align 1
  %249 = icmp eq i32 %237, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %29, align 1
  %251 = lshr i32 %237, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %32, align 1
  %253 = lshr i32 %236, 31
  %254 = xor i32 %251, %253
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %38, align 1
  %258 = icmp ne i8 %252, 0
  %259 = xor i1 %258, %256
  %.v20 = select i1 %259, i64 1176, i64 10
  %260 = add i64 %231, %.v20
  store i64 %260, i64* %3, align 8
  br i1 %259, label %block_.L_401028, label %block_400b9a

block_400b9a:                                     ; preds = %block_.L_400b90
  %261 = add i64 %232, -16
  %262 = add i64 %260, 4
  store i64 %262, i64* %PC.i, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX.i801, align 8
  %265 = add i64 %260, 8
  store i64 %265, i64* %PC.i, align 8
  %266 = load i32, i32* %235, align 4
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %RCX.i791, align 8
  %268 = shl nsw i64 %267, 2
  %269 = add i64 %268, %264
  %270 = add i64 %260, 11
  store i64 %270, i64* %PC.i, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RDX.i789, align 8
  %274 = add i64 %232, -84
  %275 = add i64 %260, 14
  store i64 %275, i64* %PC.i, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 %272, i32* %276, align 4
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -96
  %279 = load i64, i64* %PC.i, align 8
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC.i, align 8
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX.i801, align 8
  %284 = add i64 %277, -84
  %285 = add i64 %279, 6
  store i64 %285, i64* %PC.i, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RDX.i789, align 8
  %289 = add i64 %277, -88
  %290 = add i64 %279, 10
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %287 to i64
  %294 = sext i32 %292 to i64
  %295 = mul nsw i64 %294, %293
  %296 = trunc i64 %295 to i32
  %297 = shl i64 %295, 32
  %298 = ashr exact i64 %297, 32
  %299 = icmp ne i64 %298, %295
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %14, align 1
  %301 = and i32 %296, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %306 = lshr i32 %296, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %32, align 1
  store i8 %300, i8* %38, align 1
  %308 = add i64 %277, -164
  %309 = trunc i64 %295 to i32
  %310 = add i64 %279, 16
  store i64 %310, i64* %PC.i, align 8
  %311 = inttoptr i64 %308 to i32*
  store i32 %309, i32* %311, align 4
  %312 = load i64, i64* %PC.i, align 8
  %313 = load i32, i32* %195, align 8
  %314 = sext i32 %313 to i64
  %315 = lshr i64 %314, 32
  store i64 %315, i64* %193, align 8
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -164
  %318 = add i64 %312, 7
  store i64 %318, i64* %PC.i, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RSI.i814, align 8
  %322 = add i64 %312, 9
  store i64 %322, i64* %PC.i, align 8
  %323 = zext i32 %313 to i64
  %324 = sext i32 %320 to i64
  %325 = shl nuw i64 %315, 32
  %326 = or i64 %325, %323
  %327 = sdiv i64 %326, %324
  %328 = shl i64 %327, 32
  %329 = ashr exact i64 %328, 32
  %330 = icmp eq i64 %327, %329
  br i1 %330, label %333, label %331

; <label>:331:                                    ; preds = %block_400b9a
  %332 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %322, %struct.Memory* %MEMORY.1)
  %.pre2 = load i64, i64* %RBP.i, align 8
  %.pre3 = load i32, i32* %EAX.i798, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__esi.exit

; <label>:333:                                    ; preds = %block_400b9a
  %334 = srem i64 %326, %324
  %335 = and i64 %327, 4294967295
  store i64 %335, i64* %196, align 8
  %336 = and i64 %334, 4294967295
  store i64 %336, i64* %197, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %337 = trunc i64 %327 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %333, %331
  %338 = phi i64 [ %.pre4, %331 ], [ %322, %333 ]
  %339 = phi i32 [ %.pre3, %331 ], [ %337, %333 ]
  %340 = phi i64 [ %.pre2, %331 ], [ %316, %333 ]
  %341 = phi %struct.Memory* [ %332, %331 ], [ %MEMORY.1, %333 ]
  %342 = add i64 %340, -92
  %343 = add i64 %338, 3
  store i64 %343, i64* %PC.i, align 8
  %344 = inttoptr i64 %342 to i32*
  store i32 %339, i32* %344, align 4
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -88
  %347 = load i64, i64* %PC.i, align 8
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC.i, align 8
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = shl i32 %350, 1
  %352 = icmp slt i32 %350, 0
  %353 = icmp slt i32 %351, 0
  %354 = xor i1 %352, %353
  %355 = zext i32 %351 to i64
  store i64 %355, i64* %RAX.i801, align 8
  %.lobit = lshr i32 %350, 31
  %356 = trunc i32 %.lobit to i8
  store i8 %356, i8* %14, align 1
  %357 = and i32 %351, 254
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %362 = icmp eq i32 %351, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %29, align 1
  %364 = lshr i32 %350, 30
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %32, align 1
  %367 = zext i1 %354 to i8
  store i8 %367, i8* %38, align 1
  %368 = add i64 %345, -48
  %369 = add i64 %347, 8
  store i64 %369, i64* %PC.i, align 8
  %370 = inttoptr i64 %368 to i32*
  store i32 %351, i32* %370, align 4
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -48
  %373 = load i64, i64* %PC.i, align 8
  %374 = add i64 %373, 3
  store i64 %374, i64* %PC.i, align 8
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX.i801, align 8
  %378 = add i64 %371, -84
  %379 = add i64 %373, 7
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %376 to i64
  %383 = sext i32 %381 to i64
  %384 = mul nsw i64 %383, %382
  %385 = trunc i64 %384 to i32
  %386 = and i64 %384, 4294967295
  store i64 %386, i64* %RAX.i801, align 8
  %387 = shl i64 %384, 32
  %388 = ashr exact i64 %387, 32
  %389 = icmp ne i64 %388, %384
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %14, align 1
  %391 = and i32 %385, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %396 = lshr i32 %385, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %32, align 1
  store i8 %390, i8* %38, align 1
  %398 = add i64 %371, -52
  %399 = trunc i64 %384 to i32
  %400 = add i64 %373, 10
  store i64 %400, i64* %PC.i, align 8
  %401 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %401, align 4
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -52
  %404 = load i64, i64* %PC.i, align 8
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i, align 8
  %406 = inttoptr i64 %403 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i801, align 8
  %409 = add i64 %402, -92
  %410 = add i64 %404, 7
  store i64 %410, i64* %PC.i, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %407 to i64
  %414 = sext i32 %412 to i64
  %415 = mul nsw i64 %414, %413
  %416 = trunc i64 %415 to i32
  %417 = and i64 %415, 4294967295
  store i64 %417, i64* %RAX.i801, align 8
  %418 = shl i64 %415, 32
  %419 = ashr exact i64 %418, 32
  %420 = icmp ne i64 %419, %415
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %14, align 1
  %422 = and i32 %416, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %427 = lshr i32 %416, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %32, align 1
  store i8 %421, i8* %38, align 1
  %429 = add i64 %402, -56
  %430 = trunc i64 %415 to i32
  %431 = add i64 %404, 10
  store i64 %431, i64* %PC.i, align 8
  %432 = inttoptr i64 %429 to i32*
  store i32 %430, i32* %432, align 4
  %433 = load i64, i64* %RBP.i, align 8
  %434 = add i64 %433, -40
  %435 = load i64, i64* %PC.i, align 8
  %436 = add i64 %435, 7
  store i64 %436, i64* %PC.i, align 8
  %437 = inttoptr i64 %434 to i32*
  store i32 1, i32* %437, align 4
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -32
  %440 = load i64, i64* %PC.i, align 8
  %441 = add i64 %440, 7
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %439 to i32*
  store i32 1, i32* %442, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bef

block_.L_400bef:                                  ; preds = %block_400d31, %routine_idivl__esi.exit
  %443 = phi i64 [ %1186, %block_400d31 ], [ %.pre5, %routine_idivl__esi.exit ]
  %444 = load i64, i64* %RBP.i, align 8
  %445 = add i64 %444, -32
  %446 = add i64 %443, 3
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i801, align 8
  %450 = add i64 %444, -52
  %451 = add i64 %443, 6
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = sub i32 %448, %453
  %455 = icmp ult i32 %448, %453
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %14, align 1
  %457 = and i32 %454, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i32 %453, %448
  %463 = xor i32 %462, %454
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %26, align 1
  %467 = icmp eq i32 %454, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %29, align 1
  %469 = lshr i32 %454, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %32, align 1
  %471 = lshr i32 %448, 31
  %472 = lshr i32 %453, 31
  %473 = xor i32 %472, %471
  %474 = xor i32 %469, %471
  %475 = add nuw nsw i32 %474, %473
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %38, align 1
  %478 = icmp ne i8 %470, 0
  %479 = xor i1 %478, %476
  %.demorgan21 = or i1 %467, %479
  %.v22 = select i1 %.demorgan21, i64 12, i64 375
  %480 = add i64 %443, %.v22
  store i64 %480, i64* %3, align 8
  br i1 %.demorgan21, label %block_400bfb, label %block_.L_400d66

block_400bfb:                                     ; preds = %block_.L_400bef
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC.i, align 8
  %482 = load i32, i32* %447, align 4
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i801, align 8
  %484 = add i64 %444, -40
  %485 = add i64 %480, 6
  store i64 %485, i64* %PC.i, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sub i32 %482, %487
  %489 = icmp ult i32 %482, %487
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = and i32 %488, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %21, align 1
  %496 = xor i32 %487, %482
  %497 = xor i32 %496, %488
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %26, align 1
  %501 = icmp eq i32 %488, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %29, align 1
  %503 = lshr i32 %488, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %32, align 1
  %505 = lshr i32 %482, 31
  %506 = lshr i32 %487, 31
  %507 = xor i32 %506, %505
  %508 = xor i32 %503, %505
  %509 = add nuw nsw i32 %508, %507
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %38, align 1
  %512 = icmp ne i8 %504, 0
  %513 = xor i1 %512, %510
  %.v23 = select i1 %513, i64 12, i64 250
  %514 = add i64 %480, %.v23
  store i64 %514, i64* %3, align 8
  br i1 %513, label %block_400c07, label %block_.L_400cf5

block_400c07:                                     ; preds = %block_400bfb
  %515 = add i64 %514, 3
  store i64 %515, i64* %PC.i, align 8
  %516 = load i32, i32* %447, align 4
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RAX.i801, align 8
  %518 = add i64 %444, -28
  %519 = add i64 %514, 6
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 %516, i32* %520, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c0d

block_.L_400c0d:                                  ; preds = %block_.L_400cdd, %block_400c07
  %521 = phi i64 [ %980, %block_.L_400cdd ], [ %.pre6, %block_400c07 ]
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -28
  %524 = add i64 %521, 3
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RAX.i801, align 8
  %528 = add i64 %522, -32
  %529 = add i64 %521, 6
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i791, align 8
  %533 = add i64 %522, -48
  %534 = add i64 %521, 9
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = add i32 %536, %531
  %538 = add i32 %537, -2
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RCX.i791, align 8
  %540 = lshr i32 %538, 31
  %541 = sub i32 %526, %538
  %542 = icmp ult i32 %526, %538
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %14, align 1
  %544 = and i32 %541, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %21, align 1
  %549 = xor i32 %538, %526
  %550 = xor i32 %549, %541
  %551 = lshr i32 %550, 4
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  store i8 %553, i8* %26, align 1
  %554 = icmp eq i32 %541, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %29, align 1
  %556 = lshr i32 %541, 31
  %557 = trunc i32 %556 to i8
  store i8 %557, i8* %32, align 1
  %558 = lshr i32 %526, 31
  %559 = xor i32 %540, %558
  %560 = xor i32 %556, %558
  %561 = add nuw nsw i32 %560, %559
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %38, align 1
  %564 = icmp ne i8 %557, 0
  %565 = xor i1 %564, %562
  %.demorgan24 = or i1 %554, %565
  %.v25 = select i1 %.demorgan24, i64 20, i64 227
  %566 = add i64 %521, %.v25
  store i64 %566, i64* %3, align 8
  br i1 %.demorgan24, label %block_400c21, label %block_.L_400cf0

block_400c21:                                     ; preds = %block_.L_400c0d
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -28
  %569 = add i64 %566, 3
  store i64 %569, i64* %PC.i, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RAX.i801, align 8
  %573 = add i64 %567, -36
  %574 = add i64 %566, 6
  store i64 %574, i64* %PC.i, align 8
  %575 = inttoptr i64 %573 to i32*
  store i32 %571, i32* %575, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c27

block_.L_400c27:                                  ; preds = %block_400c33, %block_400c21
  %576 = phi i64 [ %951, %block_400c33 ], [ %.pre7, %block_400c21 ]
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -36
  %579 = add i64 %576, 3
  store i64 %579, i64* %PC.i, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i801, align 8
  %583 = add i64 %577, -56
  %584 = add i64 %576, 6
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = sub i32 %581, %586
  %588 = icmp ult i32 %581, %586
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %14, align 1
  %590 = and i32 %587, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  %595 = xor i32 %586, %581
  %596 = xor i32 %595, %587
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %26, align 1
  %600 = icmp eq i32 %587, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %29, align 1
  %602 = lshr i32 %587, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %32, align 1
  %604 = lshr i32 %581, 31
  %605 = lshr i32 %586, 31
  %606 = xor i32 %605, %604
  %607 = xor i32 %602, %604
  %608 = add nuw nsw i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %38, align 1
  %611 = icmp ne i8 %603, 0
  %612 = xor i1 %611, %609
  %.demorgan26 = or i1 %600, %612
  %.v27 = select i1 %.demorgan26, i64 12, i64 182
  %613 = add i64 %576, %.v27
  store i64 %613, i64* %3, align 8
  br i1 %.demorgan26, label %block_400c33, label %block_.L_400cdd

block_400c33:                                     ; preds = %block_.L_400c27
  %614 = add i64 %577, -40
  %615 = add i64 %613, 3
  store i64 %615, i64* %PC.i, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX.i801, align 8
  %619 = add i64 %613, 6
  store i64 %619, i64* %PC.i, align 8
  %620 = load i32, i32* %580, align 4
  %621 = add i32 %620, %617
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i801, align 8
  %623 = icmp ult i32 %621, %617
  %624 = icmp ult i32 %621, %620
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %14, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i32 %620, %617
  %633 = xor i32 %632, %621
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %26, align 1
  %637 = icmp eq i32 %621, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i32 %621, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = lshr i32 %617, 31
  %642 = lshr i32 %620, 31
  %643 = xor i32 %639, %641
  %644 = xor i32 %639, %642
  %645 = add nuw nsw i32 %643, %644
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %38, align 1
  %648 = add i64 %577, -32
  %649 = add i64 %613, 9
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sub i32 %621, %651
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RAX.i801, align 8
  %654 = icmp ult i32 %621, %651
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %14, align 1
  %656 = and i32 %652, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i32 %651, %621
  %662 = xor i32 %661, %652
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %26, align 1
  %666 = icmp eq i32 %652, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i32 %652, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %32, align 1
  %670 = lshr i32 %651, 31
  %671 = xor i32 %670, %639
  %672 = xor i32 %668, %639
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %38, align 1
  %676 = add i64 %577, -44
  %677 = add i64 %613, 12
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i32*
  store i32 %652, i32* %678, align 4
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -8
  %681 = load i64, i64* %PC.i, align 8
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC.i, align 8
  %683 = inttoptr i64 %680 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RCX.i791, align 8
  %685 = add i64 %679, -36
  %686 = add i64 %681, 8
  store i64 %686, i64* %PC.i, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RDX.i789, align 8
  %690 = shl nsw i64 %689, 3
  %691 = add i64 %690, %684
  %692 = add i64 %681, 13
  store i64 %692, i64* %PC.i, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  %695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %694, i64* %695, align 1
  store double 0.000000e+00, double* %202, align 1
  %696 = add i64 %679, -112
  %697 = add i64 %681, 18
  store i64 %697, i64* %PC.i, align 8
  %698 = inttoptr i64 %696 to i64*
  store i64 %694, i64* %698, align 8
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -8
  %701 = load i64, i64* %PC.i, align 8
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %700 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RCX.i791, align 8
  %705 = add i64 %699, -44
  %706 = add i64 %701, 8
  store i64 %706, i64* %PC.i, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = sext i32 %708 to i64
  store i64 %709, i64* %RDX.i789, align 8
  %710 = shl nsw i64 %709, 3
  %711 = add i64 %710, %704
  %712 = add i64 %701, 13
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  %715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %714, i64* %715, align 1
  store double 0.000000e+00, double* %202, align 1
  %716 = add i64 %701, 17
  store i64 %716, i64* %PC.i, align 8
  %717 = load i64, i64* %703, align 8
  store i64 %717, i64* %RCX.i791, align 8
  %718 = add i64 %699, -36
  %719 = add i64 %701, 21
  store i64 %719, i64* %PC.i, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = sext i32 %721 to i64
  store i64 %722, i64* %RDX.i789, align 8
  %723 = shl nsw i64 %722, 3
  %724 = add i64 %723, %717
  %725 = add i64 %701, 26
  store i64 %725, i64* %PC.i, align 8
  %726 = inttoptr i64 %724 to i64*
  store i64 %714, i64* %726, align 8
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -112
  %729 = load i64, i64* %PC.i, align 8
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC.i, align 8
  %731 = inttoptr i64 %728 to i64*
  %732 = load i64, i64* %731, align 8
  %733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %732, i64* %733, align 1
  store double 0.000000e+00, double* %202, align 1
  %734 = add i64 %727, -8
  %735 = add i64 %729, 9
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %734 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RCX.i791, align 8
  %738 = add i64 %727, -44
  %739 = add i64 %729, 13
  store i64 %739, i64* %PC.i, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RDX.i789, align 8
  %743 = shl nsw i64 %742, 3
  %744 = add i64 %743, %737
  %745 = add i64 %729, 18
  store i64 %745, i64* %PC.i, align 8
  %746 = inttoptr i64 %744 to i64*
  store i64 %732, i64* %746, align 8
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -8
  %749 = load i64, i64* %PC.i, align 8
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i, align 8
  %751 = inttoptr i64 %748 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RCX.i791, align 8
  %753 = add i64 %747, -36
  %754 = add i64 %749, 7
  store i64 %754, i64* %PC.i, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, 1
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX.i801, align 8
  %759 = icmp eq i32 %756, -1
  %760 = icmp eq i32 %757, 0
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %14, align 1
  %763 = and i32 %757, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = xor i32 %756, %757
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %26, align 1
  %772 = icmp eq i32 %757, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %29, align 1
  %774 = lshr i32 %757, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %32, align 1
  %776 = lshr i32 %756, 31
  %777 = xor i32 %774, %776
  %778 = add nuw nsw i32 %777, %774
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %38, align 1
  %781 = sext i32 %757 to i64
  store i64 %781, i64* %RDX.i789, align 8
  %782 = shl nsw i64 %781, 3
  %783 = add i64 %782, %752
  %784 = add i64 %749, 18
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to i64*
  %786 = load i64, i64* %785, align 8
  %787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %786, i64* %787, align 1
  store double 0.000000e+00, double* %202, align 1
  %788 = add i64 %747, -112
  %789 = add i64 %749, 23
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %788 to i64*
  store i64 %786, i64* %790, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -8
  %793 = load i64, i64* %PC.i, align 8
  %794 = add i64 %793, 4
  store i64 %794, i64* %PC.i, align 8
  %795 = inttoptr i64 %792 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RCX.i791, align 8
  %797 = add i64 %791, -44
  %798 = add i64 %793, 7
  store i64 %798, i64* %PC.i, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = add i32 %800, 1
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RAX.i801, align 8
  %803 = icmp eq i32 %800, -1
  %804 = icmp eq i32 %801, 0
  %805 = or i1 %803, %804
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = and i32 %801, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %800, %801
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %26, align 1
  %816 = icmp eq i32 %801, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %29, align 1
  %818 = lshr i32 %801, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %32, align 1
  %820 = lshr i32 %800, 31
  %821 = xor i32 %818, %820
  %822 = add nuw nsw i32 %821, %818
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %38, align 1
  %825 = sext i32 %801 to i64
  store i64 %825, i64* %RDX.i789, align 8
  %826 = shl nsw i64 %825, 3
  %827 = add i64 %826, %796
  %828 = add i64 %793, 18
  store i64 %828, i64* %PC.i, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  %831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %830, i64* %831, align 1
  store double 0.000000e+00, double* %202, align 1
  %832 = add i64 %793, 22
  store i64 %832, i64* %PC.i, align 8
  %833 = load i64, i64* %795, align 8
  store i64 %833, i64* %RCX.i791, align 8
  %834 = add i64 %791, -36
  %835 = add i64 %793, 25
  store i64 %835, i64* %PC.i, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = add i32 %837, 1
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX.i801, align 8
  %840 = icmp eq i32 %837, -1
  %841 = icmp eq i32 %838, 0
  %842 = or i1 %840, %841
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %14, align 1
  %844 = and i32 %838, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  %849 = xor i32 %837, %838
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %26, align 1
  %853 = icmp eq i32 %838, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i32 %838, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %32, align 1
  %857 = lshr i32 %837, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %855
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %38, align 1
  %862 = sext i32 %838 to i64
  store i64 %862, i64* %RDX.i789, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %863, %833
  %865 = add i64 %793, 36
  store i64 %865, i64* %PC.i, align 8
  %866 = inttoptr i64 %864 to i64*
  store i64 %830, i64* %866, align 8
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -112
  %869 = load i64, i64* %PC.i, align 8
  %870 = add i64 %869, 5
  store i64 %870, i64* %PC.i, align 8
  %871 = inttoptr i64 %868 to i64*
  %872 = load i64, i64* %871, align 8
  %873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %872, i64* %873, align 1
  store double 0.000000e+00, double* %202, align 1
  %874 = add i64 %867, -8
  %875 = add i64 %869, 9
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RCX.i791, align 8
  %878 = add i64 %867, -44
  %879 = add i64 %869, 12
  store i64 %879, i64* %PC.i, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = add i32 %881, 1
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RAX.i801, align 8
  %884 = icmp eq i32 %881, -1
  %885 = icmp eq i32 %882, 0
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %14, align 1
  %888 = and i32 %882, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %21, align 1
  %893 = xor i32 %881, %882
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %26, align 1
  %897 = icmp eq i32 %882, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %29, align 1
  %899 = lshr i32 %882, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %32, align 1
  %901 = lshr i32 %881, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %899
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %38, align 1
  %906 = sext i32 %882 to i64
  store i64 %906, i64* %RDX.i789, align 8
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %907, %877
  %909 = add i64 %869, 23
  store i64 %909, i64* %PC.i, align 8
  %910 = inttoptr i64 %908 to i64*
  store i64 %872, i64* %910, align 8
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -52
  %913 = load i64, i64* %PC.i, align 8
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i, align 8
  %915 = inttoptr i64 %912 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RAX.i801, align 8
  %918 = add i64 %911, -36
  %919 = add i64 %913, 6
  store i64 %919, i64* %PC.i, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = add i32 %921, %916
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX.i801, align 8
  %924 = icmp ult i32 %922, %916
  %925 = icmp ult i32 %922, %921
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %14, align 1
  %928 = and i32 %922, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = xor i32 %921, %916
  %934 = xor i32 %933, %922
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %26, align 1
  %938 = icmp eq i32 %922, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %29, align 1
  %940 = lshr i32 %922, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %32, align 1
  %942 = lshr i32 %916, 31
  %943 = lshr i32 %921, 31
  %944 = xor i32 %940, %942
  %945 = xor i32 %940, %943
  %946 = add nuw nsw i32 %944, %945
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %38, align 1
  %949 = add i64 %913, 9
  store i64 %949, i64* %PC.i, align 8
  store i32 %922, i32* %920, align 4
  %950 = load i64, i64* %PC.i, align 8
  %951 = add i64 %950, -177
  store i64 %951, i64* %3, align 8
  br label %block_.L_400c27

block_.L_400cdd:                                  ; preds = %block_.L_400c27
  %952 = add i64 %577, -28
  %953 = add i64 %613, 8
  store i64 %953, i64* %PC.i, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, 2
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i801, align 8
  %958 = icmp ugt i32 %955, -3
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %956, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %955, %956
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %26, align 1
  %969 = icmp eq i32 %956, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i32 %956, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %32, align 1
  %973 = lshr i32 %955, 31
  %974 = xor i32 %971, %973
  %975 = add nuw nsw i32 %974, %971
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %38, align 1
  %978 = add i64 %613, 14
  store i64 %978, i64* %PC.i, align 8
  store i32 %956, i32* %954, align 4
  %979 = load i64, i64* %PC.i, align 8
  %980 = add i64 %979, -222
  store i64 %980, i64* %3, align 8
  br label %block_.L_400c0d

block_.L_400cf0:                                  ; preds = %block_.L_400c0d
  %981 = add i64 %566, 5
  store i64 %981, i64* %3, align 8
  %.pre8 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400cf5

block_.L_400cf5:                                  ; preds = %block_400bfb, %block_.L_400cf0
  %982 = phi i64 [ %981, %block_.L_400cf0 ], [ %514, %block_400bfb ]
  %983 = phi i64 [ %.pre8, %block_.L_400cf0 ], [ %444, %block_400bfb ]
  %984 = add i64 %983, -52
  %985 = add i64 %982, 3
  store i64 %985, i64* %PC.i, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = zext i32 %987 to i64
  %989 = shl nuw i64 %988, 32
  %990 = ashr i64 %989, 33
  %991 = trunc i32 %987 to i8
  %992 = and i8 %991, 1
  %993 = trunc i64 %990 to i32
  %994 = and i64 %990, 4294967295
  store i64 %994, i64* %RAX.i801, align 8
  store i8 %992, i8* %14, align 1
  %995 = and i32 %993, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1000 = icmp eq i32 %993, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %29, align 1
  %1002 = lshr i64 %990, 31
  %1003 = trunc i64 %1002 to i8
  %1004 = and i8 %1003, 1
  store i8 %1004, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1005 = add i64 %983, -68
  %1006 = trunc i64 %990 to i32
  %1007 = add i64 %982, 8
  store i64 %1007, i64* %PC.i, align 8
  %1008 = inttoptr i64 %1005 to i32*
  store i32 %1006, i32* %1008, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_400cfe

block_.L_400cfe:                                  ; preds = %block_.L_400d36, %block_.L_400cf5
  %1009 = phi i64 [ %1247, %block_.L_400d36 ], [ %.pre9, %block_.L_400cf5 ]
  store i64 0, i64* %RAX.i801, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i492, align 1
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -68
  %1012 = add i64 %1009, 7
  store i64 %1012, i64* %PC.i, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i801, align 8
  %1016 = add i64 %1010, -48
  %1017 = add i64 %1009, 10
  store i64 %1017, i64* %PC.i, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sub i32 %1014, %1019
  %1021 = icmp ult i32 %1014, %1019
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %14, align 1
  %1023 = and i32 %1020, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  %1028 = xor i32 %1019, %1014
  %1029 = xor i32 %1028, %1020
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %26, align 1
  %1033 = icmp eq i32 %1020, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %29, align 1
  %1035 = lshr i32 %1020, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %32, align 1
  %1037 = lshr i32 %1014, 31
  %1038 = lshr i32 %1019, 31
  %1039 = xor i32 %1038, %1037
  %1040 = xor i32 %1035, %1037
  %1041 = add nuw nsw i32 %1040, %1039
  %1042 = icmp eq i32 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %1044 = add i64 %1010, -165
  %1045 = add i64 %1009, 16
  store i64 %1045, i64* %PC.i, align 8
  %1046 = inttoptr i64 %1044 to i8*
  store i8 0, i8* %1046, align 1
  %1047 = load i64, i64* %PC.i, align 8
  %1048 = load i8, i8* %32, align 1
  %1049 = icmp ne i8 %1048, 0
  %1050 = load i8, i8* %38, align 1
  %1051 = icmp ne i8 %1050, 0
  %1052 = xor i1 %1049, %1051
  %.v28 = select i1 %1052, i64 21, i64 6
  %1053 = add i64 %1047, %.v28
  store i64 %1053, i64* %3, align 8
  br i1 %1052, label %block_.L_400d23, label %block_400d14

block_400d14:                                     ; preds = %block_.L_400cfe
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -40
  %1056 = add i64 %1053, 3
  store i64 %1056, i64* %PC.i, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RAX.i801, align 8
  %1060 = add i64 %1054, -68
  %1061 = add i64 %1053, 6
  store i64 %1061, i64* %PC.i, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sub i32 %1058, %1063
  %1065 = icmp ult i32 %1058, %1063
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %14, align 1
  %1067 = and i32 %1064, 255
  %1068 = tail call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  store i8 %1071, i8* %21, align 1
  %1072 = xor i32 %1063, %1058
  %1073 = xor i32 %1072, %1064
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %26, align 1
  %1077 = icmp eq i32 %1064, 0
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %29, align 1
  %1079 = lshr i32 %1064, 31
  %1080 = trunc i32 %1079 to i8
  store i8 %1080, i8* %32, align 1
  %1081 = lshr i32 %1058, 31
  %1082 = lshr i32 %1063, 31
  %1083 = xor i32 %1082, %1081
  %1084 = xor i32 %1079, %1081
  %1085 = add nuw nsw i32 %1084, %1083
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %38, align 1
  %1088 = icmp ne i8 %1080, 0
  %1089 = xor i1 %1088, %1086
  %.demorgan29 = or i1 %1077, %1089
  %1090 = xor i1 %.demorgan29, true
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %CL.i492, align 1
  %1092 = add i64 %1054, -165
  %1093 = add i64 %1053, 15
  store i64 %1093, i64* %PC.i, align 8
  %1094 = inttoptr i64 %1092 to i8*
  store i8 %1091, i8* %1094, align 1
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d23

block_.L_400d23:                                  ; preds = %block_400d14, %block_.L_400cfe
  %1095 = phi i64 [ %.pre10, %block_400d14 ], [ %1053, %block_.L_400cfe ]
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -165
  %1098 = add i64 %1095, 6
  store i64 %1098, i64* %PC.i, align 8
  %1099 = inttoptr i64 %1097 to i8*
  %1100 = load i8, i8* %1099, align 1
  store i8 %1100, i8* %AL.i491, align 1
  %1101 = and i8 %1100, 1
  store i8 0, i8* %14, align 1
  %1102 = zext i8 %1101 to i32
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1
  %1106 = xor i8 %1101, 1
  store i8 %1106, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1107 = icmp eq i8 %1106, 0
  %.v30 = select i1 %1107, i64 19, i64 14
  %1108 = add i64 %1095, %.v30
  store i64 %1108, i64* %3, align 8
  %1109 = add i64 %1096, -68
  br i1 %1107, label %block_.L_400d36, label %block_400d31

block_400d31:                                     ; preds = %block_.L_400d23
  %1110 = add i64 %1108, 33
  store i64 %1110, i64* %PC.i, align 8
  %1111 = inttoptr i64 %1109 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX.i801, align 8
  %1114 = add i64 %1096, -40
  %1115 = add i64 %1108, 36
  store i64 %1115, i64* %PC.i, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, %1112
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX.i801, align 8
  %1120 = icmp ult i32 %1118, %1112
  %1121 = icmp ult i32 %1118, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1118, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %1129 = xor i32 %1117, %1112
  %1130 = xor i32 %1129, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %26, align 1
  %1134 = icmp eq i32 %1118, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %29, align 1
  %1136 = lshr i32 %1118, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %32, align 1
  %1138 = lshr i32 %1112, 31
  %1139 = lshr i32 %1117, 31
  %1140 = xor i32 %1136, %1138
  %1141 = xor i32 %1136, %1139
  %1142 = add nuw nsw i32 %1140, %1141
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %38, align 1
  %1145 = add i64 %1108, 39
  store i64 %1145, i64* %PC.i, align 8
  store i32 %1118, i32* %1116, align 4
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -48
  %1148 = load i64, i64* %PC.i, align 8
  %1149 = add i64 %1148, 3
  store i64 %1149, i64* %PC.i, align 8
  %1150 = inttoptr i64 %1147 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = zext i32 %1151 to i64
  store i64 %1152, i64* %RAX.i801, align 8
  %1153 = add i64 %1146, -32
  %1154 = add i64 %1148, 6
  store i64 %1154, i64* %PC.i, align 8
  %1155 = inttoptr i64 %1153 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = add i32 %1156, %1151
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i801, align 8
  %1159 = icmp ult i32 %1157, %1151
  %1160 = icmp ult i32 %1157, %1156
  %1161 = or i1 %1159, %1160
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %14, align 1
  %1163 = and i32 %1157, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i32 %1156, %1151
  %1169 = xor i32 %1168, %1157
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %26, align 1
  %1173 = icmp eq i32 %1157, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i32 %1157, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %32, align 1
  %1177 = lshr i32 %1151, 31
  %1178 = lshr i32 %1156, 31
  %1179 = xor i32 %1175, %1177
  %1180 = xor i32 %1175, %1178
  %1181 = add nuw nsw i32 %1179, %1180
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %38, align 1
  %1184 = add i64 %1148, 9
  store i64 %1184, i64* %PC.i, align 8
  store i32 %1157, i32* %1155, align 4
  %1185 = load i64, i64* %PC.i, align 8
  %1186 = add i64 %1185, -370
  store i64 %1186, i64* %3, align 8
  br label %block_.L_400bef

block_.L_400d36:                                  ; preds = %block_.L_400d23
  %1187 = add i64 %1108, 3
  store i64 %1187, i64* %PC.i, align 8
  %1188 = inttoptr i64 %1109 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i801, align 8
  %1191 = add i64 %1096, -40
  %1192 = add i64 %1108, 6
  store i64 %1192, i64* %PC.i, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = sub i32 %1194, %1189
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RCX.i791, align 8
  %1197 = icmp ult i32 %1194, %1189
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %14, align 1
  %1199 = and i32 %1195, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = xor i32 %1189, %1194
  %1205 = xor i32 %1204, %1195
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %26, align 1
  %1209 = icmp eq i32 %1195, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %29, align 1
  %1211 = lshr i32 %1195, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %32, align 1
  %1213 = lshr i32 %1194, 31
  %1214 = lshr i32 %1189, 31
  %1215 = xor i32 %1214, %1213
  %1216 = xor i32 %1211, %1213
  %1217 = add nuw nsw i32 %1216, %1215
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %38, align 1
  %1220 = add i64 %1108, 11
  store i64 %1220, i64* %PC.i, align 8
  store i32 %1195, i32* %1193, align 4
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -68
  %1223 = load i64, i64* %PC.i, align 8
  %1224 = add i64 %1223, 3
  store i64 %1224, i64* %PC.i, align 8
  %1225 = inttoptr i64 %1222 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = zext i32 %1226 to i64
  %1228 = shl nuw i64 %1227, 32
  %1229 = ashr i64 %1228, 33
  %1230 = trunc i32 %1226 to i8
  %1231 = and i8 %1230, 1
  %1232 = trunc i64 %1229 to i32
  %1233 = and i64 %1229, 4294967295
  store i64 %1233, i64* %RAX.i801, align 8
  store i8 %1231, i8* %14, align 1
  %1234 = and i32 %1232, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1239 = icmp eq i32 %1232, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %29, align 1
  %1241 = lshr i64 %1229, 31
  %1242 = trunc i64 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1244 = trunc i64 %1229 to i32
  %1245 = add i64 %1223, 8
  store i64 %1245, i64* %PC.i, align 8
  store i32 %1244, i32* %1225, align 4
  %1246 = load i64, i64* %PC.i, align 8
  %1247 = add i64 %1246, -76
  store i64 %1247, i64* %3, align 8
  br label %block_.L_400cfe

block_.L_400d66:                                  ; preds = %block_.L_400bef
  %1248 = add i64 %444, -48
  %1249 = add i64 %480, 3
  store i64 %1249, i64* %PC.i, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RAX.i801, align 8
  %1253 = add i64 %444, -60
  %1254 = add i64 %480, 6
  store i64 %1254, i64* %PC.i, align 8
  %1255 = inttoptr i64 %1253 to i32*
  store i32 %1251, i32* %1255, align 4
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d6c

block_.L_400d6c:                                  ; preds = %block_.L_401005, %block_.L_400d66
  %1256 = phi i64 [ %.pre11, %block_.L_400d66 ], [ %2144, %block_.L_401005 ]
  %MEMORY.8 = phi %struct.Memory* [ %341, %block_.L_400d66 ], [ %call2_400e15, %block_.L_401005 ]
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -60
  %1259 = add i64 %1256, 3
  store i64 %1259, i64* %PC.i, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i801, align 8
  %1263 = add i64 %1257, -52
  %1264 = add i64 %1256, 6
  store i64 %1264, i64* %PC.i, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = sub i32 %1261, %1266
  %1268 = icmp ult i32 %1261, %1266
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %14, align 1
  %1270 = and i32 %1267, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %21, align 1
  %1275 = xor i32 %1266, %1261
  %1276 = xor i32 %1275, %1267
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %26, align 1
  %1280 = icmp eq i32 %1267, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %29, align 1
  %1282 = lshr i32 %1267, 31
  %1283 = trunc i32 %1282 to i8
  store i8 %1283, i8* %32, align 1
  %1284 = lshr i32 %1261, 31
  %1285 = lshr i32 %1266, 31
  %1286 = xor i32 %1285, %1284
  %1287 = xor i32 %1282, %1284
  %1288 = add nuw nsw i32 %1287, %1286
  %1289 = icmp eq i32 %1288, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %38, align 1
  %1291 = icmp ne i8 %1283, 0
  %1292 = xor i1 %1291, %1289
  %.v31 = select i1 %1292, i64 12, i64 676
  %1293 = add i64 %1256, %.v31
  store i64 %1293, i64* %3, align 8
  br i1 %1292, label %block_400d78, label %block_.L_401010

block_400d78:                                     ; preds = %block_.L_400d6c
  store i32 0, i32* %203, align 1
  store i32 0, i32* %205, align 1
  store i32 0, i32* %206, align 1
  store i32 0, i32* %208, align 1
  %1294 = load i64, i64* bitcast (%G_0x365__rip__type* @G_0x365__rip_ to i64*), align 8
  %1295 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %209, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1294, i64* %1295, align 1
  store double 0.000000e+00, double* %212, align 1
  %1296 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %213, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1294, i64* %1296, align 1
  store double 0.000000e+00, double* %215, align 1
  %1297 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %216, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1294, i64* %1297, align 1
  store double 0.000000e+00, double* %219, align 1
  %1298 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %220, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1294, i64* %1298, align 1
  store double 0.000000e+00, double* %223, align 1
  %1299 = add i64 %1293, 38
  store i64 %1299, i64* %PC.i, align 8
  %1300 = load i32, i32* %1260, align 4
  %1301 = shl i32 %1300, 1
  %1302 = icmp slt i32 %1300, 0
  %1303 = icmp slt i32 %1301, 0
  %1304 = xor i1 %1302, %1303
  %1305 = zext i32 %1301 to i64
  store i64 %1305, i64* %RAX.i801, align 8
  %.lobit32 = lshr i32 %1300, 31
  %1306 = trunc i32 %.lobit32 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1301, 254
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1312 = icmp eq i32 %1301, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i32 %1300, 30
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %32, align 1
  %1317 = zext i1 %1304 to i8
  store i8 %1317, i8* %38, align 1
  %1318 = add i64 %1257, -64
  %1319 = add i64 %1293, 43
  store i64 %1319, i64* %PC.i, align 8
  %1320 = inttoptr i64 %1318 to i32*
  store i32 %1301, i32* %1320, align 4
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -24
  %1323 = load i64, i64* %PC.i, align 8
  %1324 = add i64 %1323, 3
  store i64 %1324, i64* %PC.i, align 8
  %1325 = inttoptr i64 %1322 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i801, align 8
  %1328 = sitofp i32 %1326 to double
  %1329 = load i64, i64* %226, align 1
  %1330 = load double, double* %227, align 1
  %1331 = fmul double %1328, %1330
  store double %1331, double* %225, align 1
  %1332 = add i64 %1321, -64
  %1333 = add i64 %1323, 14
  store i64 %1333, i64* %PC.i, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i801, align 8
  %1337 = sext i32 %1335 to i64
  %1338 = lshr i64 %1337, 32
  store i64 %1338, i64* %193, align 8
  %1339 = add i64 %1321, -48
  %1340 = add i64 %1323, 18
  store i64 %1340, i64* %PC.i, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = shl nuw i64 %1338, 32
  %1345 = or i64 %1344, %1336
  %1346 = sdiv i64 %1345, %1343
  %1347 = shl i64 %1346, 32
  %1348 = ashr exact i64 %1347, 32
  %1349 = icmp eq i64 %1346, %1348
  br i1 %1349, label %1352, label %1350

; <label>:1350:                                   ; preds = %block_400d78
  %1351 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1340, %struct.Memory* %MEMORY.8)
  %.pre12 = load i32, i32* %EAX.i798, align 4
  %.pre13 = load i64, i64* %PC.i, align 8
  %.pre14 = load double, double* %225, align 1
  %.pre15 = load i64, i64* %226, align 1
  %.pre16 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x30__rbp_.exit

; <label>:1352:                                   ; preds = %block_400d78
  %1353 = srem i64 %1345, %1343
  %1354 = and i64 %1346, 4294967295
  store i64 %1354, i64* %196, align 8
  %1355 = and i64 %1353, 4294967295
  store i64 %1355, i64* %197, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1356 = trunc i64 %1346 to i32
  br label %routine_idivl_MINUS0x30__rbp_.exit

routine_idivl_MINUS0x30__rbp_.exit:               ; preds = %1352, %1350
  %1357 = phi i64 [ %.pre16, %1350 ], [ %1321, %1352 ]
  %1358 = phi i64 [ %.pre15, %1350 ], [ %1329, %1352 ]
  %1359 = phi double [ %.pre14, %1350 ], [ %1331, %1352 ]
  %1360 = phi i64 [ %.pre13, %1350 ], [ %1340, %1352 ]
  %1361 = phi i32 [ %.pre12, %1350 ], [ %1356, %1352 ]
  %1362 = phi %struct.Memory* [ %1351, %1350 ], [ %MEMORY.8, %1352 ]
  %1363 = sitofp i32 %1361 to double
  store double %1363, double* %221, align 1
  %1364 = fdiv double %1359, %1363
  store double %1364, double* %225, align 1
  store i64 %1358, i64* %226, align 1
  %1365 = add i64 %1357, -120
  %1366 = add i64 %1360, 13
  store i64 %1366, i64* %PC.i, align 8
  %1367 = inttoptr i64 %1365 to double*
  store double %1364, double* %1367, align 8
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -120
  %1370 = load i64, i64* %PC.i, align 8
  %1371 = add i64 %1370, 5
  store i64 %1371, i64* %PC.i, align 8
  %1372 = load double, double* %217, align 1
  %1373 = inttoptr i64 %1369 to double*
  %1374 = load double, double* %1373, align 8
  %1375 = fmul double %1372, %1374
  store double %1375, double* %217, align 1
  %1376 = add i64 %1368, -176
  %1377 = add i64 %1370, 13
  store i64 %1377, i64* %PC.i, align 8
  %1378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1379 = load i64, i64* %1378, align 1
  %1380 = inttoptr i64 %1376 to i64*
  store i64 %1379, i64* %1380, align 8
  %1381 = load i64, i64* %PC.i, align 8
  %1382 = load <2 x i32>, <2 x i32>* %228, align 1
  %1383 = load <2 x i32>, <2 x i32>* %230, align 1
  %1384 = extractelement <2 x i32> %1382, i32 0
  store i32 %1384, i32* %203, align 1
  %1385 = extractelement <2 x i32> %1382, i32 1
  store i32 %1385, i32* %205, align 1
  %1386 = extractelement <2 x i32> %1383, i32 0
  store i32 %1386, i32* %206, align 1
  %1387 = extractelement <2 x i32> %1383, i32 1
  store i32 %1387, i32* %208, align 1
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -184
  %1390 = add i64 %1381, 11
  store i64 %1390, i64* %PC.i, align 8
  %1391 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %213, i64 0, i32 0, i32 0, i32 0, i64 0
  %1392 = load i64, i64* %1391, align 1
  %1393 = inttoptr i64 %1389 to i64*
  store i64 %1392, i64* %1393, align 8
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -192
  %1396 = load i64, i64* %PC.i, align 8
  %1397 = add i64 %1396, 8
  store i64 %1397, i64* %PC.i, align 8
  %1398 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %209, i64 0, i32 0, i32 0, i32 0, i64 0
  %1399 = load i64, i64* %1398, align 1
  %1400 = inttoptr i64 %1395 to i64*
  store i64 %1399, i64* %1400, align 8
  %1401 = load i64, i64* %PC.i, align 8
  %1402 = add i64 %1401, -2179
  %1403 = add i64 %1401, 5
  %1404 = load i64, i64* %6, align 8
  %1405 = add i64 %1404, -8
  %1406 = inttoptr i64 %1405 to i64*
  store i64 %1403, i64* %1406, align 8
  store i64 %1405, i64* %6, align 8
  store i64 %1402, i64* %3, align 8
  %call2_400de3 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1402, %struct.Memory* %1362)
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -160
  %1409 = load i64, i64* %PC.i, align 8
  %1410 = add i64 %1409, 8
  store i64 %1410, i64* %PC.i, align 8
  %1411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1412 = load i64, i64* %1411, align 1
  %1413 = inttoptr i64 %1408 to i64*
  store i64 %1412, i64* %1413, align 8
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -184
  %1416 = load i64, i64* %PC.i, align 8
  %1417 = add i64 %1416, 8
  store i64 %1417, i64* %PC.i, align 8
  %1418 = inttoptr i64 %1415 to double*
  %1419 = load double, double* %1418, align 8
  store double %1419, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1420 = add i64 %1414, -160
  %1421 = add i64 %1416, 16
  store i64 %1421, i64* %PC.i, align 8
  %1422 = inttoptr i64 %1420 to double*
  %1423 = load double, double* %1422, align 8
  %1424 = fmul double %1419, %1423
  store double %1424, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1425 = add i64 %1416, 24
  store i64 %1425, i64* %PC.i, align 8
  %1426 = load double, double* %1422, align 8
  %1427 = fmul double %1424, %1426
  store double %1427, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1428 = add i64 %1414, -144
  %1429 = add i64 %1416, 32
  store i64 %1429, i64* %PC.i, align 8
  %1430 = inttoptr i64 %1428 to double*
  store double %1427, double* %1430, align 8
  %1431 = load i64, i64* %RBP.i, align 8
  %1432 = add i64 %1431, -120
  %1433 = load i64, i64* %PC.i, align 8
  %1434 = add i64 %1433, 5
  store i64 %1434, i64* %PC.i, align 8
  %1435 = inttoptr i64 %1432 to i64*
  %1436 = load i64, i64* %1435, align 8
  %1437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1436, i64* %1437, align 1
  store double 0.000000e+00, double* %202, align 1
  %1438 = add i64 %1433, -2224
  %1439 = add i64 %1433, 10
  %1440 = load i64, i64* %6, align 8
  %1441 = add i64 %1440, -8
  %1442 = inttoptr i64 %1441 to i64*
  store i64 %1439, i64* %1442, align 8
  store i64 %1441, i64* %6, align 8
  store i64 %1438, i64* %3, align 8
  %call2_400e15 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1438, %struct.Memory* %call2_400de3)
  %1443 = load i64, i64* %RBP.i, align 8
  %1444 = add i64 %1443, -136
  %1445 = load i64, i64* %PC.i, align 8
  %1446 = add i64 %1445, 8
  store i64 %1446, i64* %PC.i, align 8
  %1447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1448 = load i64, i64* %1447, align 1
  %1449 = inttoptr i64 %1444 to i64*
  store i64 %1448, i64* %1449, align 8
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -192
  %1452 = load i64, i64* %PC.i, align 8
  %1453 = add i64 %1452, 8
  store i64 %1453, i64* %PC.i, align 8
  %1454 = inttoptr i64 %1451 to i64*
  %1455 = load i64, i64* %1454, align 8
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1455, i64* %1456, align 1
  store double 0.000000e+00, double* %202, align 1
  %1457 = add i64 %1450, -152
  %1458 = add i64 %1452, 16
  store i64 %1458, i64* %PC.i, align 8
  %1459 = inttoptr i64 %1457 to i64*
  store i64 %1455, i64* %1459, align 8
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -176
  %1462 = load i64, i64* %PC.i, align 8
  %1463 = add i64 %1462, 8
  store i64 %1463, i64* %PC.i, align 8
  %1464 = inttoptr i64 %1461 to i64*
  %1465 = load i64, i64* %1464, align 8
  %1466 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %209, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1465, i64* %1466, align 1
  store double 0.000000e+00, double* %212, align 1
  %1467 = add i64 %1460, -128
  %1468 = add i64 %1462, 13
  store i64 %1468, i64* %PC.i, align 8
  %1469 = inttoptr i64 %1467 to i64*
  store i64 %1465, i64* %1469, align 8
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -36
  %1472 = load i64, i64* %PC.i, align 8
  %1473 = add i64 %1472, 7
  store i64 %1473, i64* %PC.i, align 8
  %1474 = inttoptr i64 %1471 to i32*
  store i32 1, i32* %1474, align 4
  %.pre17 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e46

block_.L_400e46:                                  ; preds = %block_.L_400f93, %routine_idivl_MINUS0x30__rbp_.exit
  %1475 = phi i64 [ %2136, %block_.L_400f93 ], [ %.pre17, %routine_idivl_MINUS0x30__rbp_.exit ]
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -36
  %1478 = add i64 %1475, 3
  store i64 %1478, i64* %PC.i, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RAX.i801, align 8
  %1482 = add i64 %1476, -60
  %1483 = add i64 %1475, 6
  store i64 %1483, i64* %PC.i, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = sub i32 %1480, %1485
  %1487 = icmp ult i32 %1480, %1485
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %14, align 1
  %1489 = and i32 %1486, 255
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %21, align 1
  %1494 = xor i32 %1485, %1480
  %1495 = xor i32 %1494, %1486
  %1496 = lshr i32 %1495, 4
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  store i8 %1498, i8* %26, align 1
  %1499 = icmp eq i32 %1486, 0
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %29, align 1
  %1501 = lshr i32 %1486, 31
  %1502 = trunc i32 %1501 to i8
  store i8 %1502, i8* %32, align 1
  %1503 = lshr i32 %1480, 31
  %1504 = lshr i32 %1485, 31
  %1505 = xor i32 %1504, %1503
  %1506 = xor i32 %1501, %1503
  %1507 = add nuw nsw i32 %1506, %1505
  %1508 = icmp eq i32 %1507, 2
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %38, align 1
  %1510 = icmp ne i8 %1502, 0
  %1511 = xor i1 %1510, %1508
  %.demorgan33 = or i1 %1499, %1511
  %.v34 = select i1 %.demorgan33, i64 12, i64 447
  %1512 = add i64 %1475, %.v34
  store i64 %1512, i64* %3, align 8
  br i1 %.demorgan33, label %block_400e52, label %block_.L_401005

block_400e52:                                     ; preds = %block_.L_400e46
  %1513 = add i64 %1512, 3
  store i64 %1513, i64* %PC.i, align 8
  %1514 = load i32, i32* %1479, align 4
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX.i801, align 8
  %1516 = add i64 %1476, -28
  %1517 = add i64 %1512, 6
  store i64 %1517, i64* %PC.i, align 8
  %1518 = inttoptr i64 %1516 to i32*
  store i32 %1514, i32* %1518, align 4
  %.pre18 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e58

block_.L_400e58:                                  ; preds = %block_.L_400f80, %block_400e52
  %1519 = phi i64 [ %2038, %block_.L_400f80 ], [ %.pre18, %block_400e52 ]
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -28
  %1522 = add i64 %1519, 3
  store i64 %1522, i64* %PC.i, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RAX.i801, align 8
  %1526 = add i64 %1520, -36
  %1527 = add i64 %1519, 6
  store i64 %1527, i64* %PC.i, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RCX.i791, align 8
  %1531 = add i64 %1520, -48
  %1532 = add i64 %1519, 9
  store i64 %1532, i64* %PC.i, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = add i32 %1534, %1529
  %1536 = add i32 %1535, -2
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i791, align 8
  %1538 = lshr i32 %1536, 31
  %1539 = sub i32 %1524, %1536
  %1540 = icmp ult i32 %1524, %1536
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = and i32 %1539, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %21, align 1
  %1547 = xor i32 %1536, %1524
  %1548 = xor i32 %1547, %1539
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %29, align 1
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %32, align 1
  %1556 = lshr i32 %1524, 31
  %1557 = xor i32 %1538, %1556
  %1558 = xor i32 %1554, %1556
  %1559 = add nuw nsw i32 %1558, %1557
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %38, align 1
  %1562 = icmp ne i8 %1555, 0
  %1563 = xor i1 %1562, %1560
  %.demorgan35 = or i1 %1552, %1563
  %.v36 = select i1 %.demorgan35, i64 20, i64 315
  %1564 = add i64 %1519, %.v36
  store i64 %1564, i64* %3, align 8
  %1565 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan35, label %block_400e6c, label %block_.L_400f93

block_400e6c:                                     ; preds = %block_.L_400e58
  %1566 = add i64 %1565, -28
  %1567 = add i64 %1564, 3
  store i64 %1567, i64* %PC.i, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX.i801, align 8
  %1571 = add i64 %1565, -32
  %1572 = add i64 %1564, 6
  store i64 %1572, i64* %PC.i, align 8
  %1573 = inttoptr i64 %1571 to i32*
  store i32 %1569, i32* %1573, align 4
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e72

block_.L_400e72:                                  ; preds = %block_400e7e, %block_400e6c
  %1574 = phi i64 [ %2009, %block_400e7e ], [ %.pre19, %block_400e6c ]
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -32
  %1577 = add i64 %1574, 3
  store i64 %1577, i64* %PC.i, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RAX.i801, align 8
  %1581 = add i64 %1575, -56
  %1582 = add i64 %1574, 6
  store i64 %1582, i64* %PC.i, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = sub i32 %1579, %1584
  %1586 = icmp ult i32 %1579, %1584
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %14, align 1
  %1588 = and i32 %1585, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %21, align 1
  %1593 = xor i32 %1584, %1579
  %1594 = xor i32 %1593, %1585
  %1595 = lshr i32 %1594, 4
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %26, align 1
  %1598 = icmp eq i32 %1585, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %29, align 1
  %1600 = lshr i32 %1585, 31
  %1601 = trunc i32 %1600 to i8
  store i8 %1601, i8* %32, align 1
  %1602 = lshr i32 %1579, 31
  %1603 = lshr i32 %1584, 31
  %1604 = xor i32 %1603, %1602
  %1605 = xor i32 %1600, %1602
  %1606 = add nuw nsw i32 %1605, %1604
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %38, align 1
  %1609 = icmp ne i8 %1601, 0
  %1610 = xor i1 %1609, %1607
  %.demorgan37 = or i1 %1598, %1610
  %.v38 = select i1 %.demorgan37, i64 12, i64 270
  %1611 = add i64 %1574, %.v38
  store i64 %1611, i64* %3, align 8
  br i1 %.demorgan37, label %block_400e7e, label %block_.L_400f80

block_400e7e:                                     ; preds = %block_.L_400e72
  %1612 = add i64 %1611, 3
  store i64 %1612, i64* %PC.i, align 8
  %1613 = load i32, i32* %1578, align 4
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RAX.i801, align 8
  %1615 = add i64 %1575, -76
  %1616 = add i64 %1611, 6
  store i64 %1616, i64* %PC.i, align 8
  %1617 = inttoptr i64 %1615 to i32*
  store i32 %1613, i32* %1617, align 4
  %1618 = load i64, i64* %RBP.i, align 8
  %1619 = add i64 %1618, -76
  %1620 = load i64, i64* %PC.i, align 8
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %PC.i, align 8
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i801, align 8
  %1625 = add i64 %1618, -60
  %1626 = add i64 %1620, 6
  store i64 %1626, i64* %PC.i, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = add i32 %1628, %1623
  %1630 = zext i32 %1629 to i64
  store i64 %1630, i64* %RAX.i801, align 8
  %1631 = icmp ult i32 %1629, %1623
  %1632 = icmp ult i32 %1629, %1628
  %1633 = or i1 %1631, %1632
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %14, align 1
  %1635 = and i32 %1629, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %21, align 1
  %1640 = xor i32 %1628, %1623
  %1641 = xor i32 %1640, %1629
  %1642 = lshr i32 %1641, 4
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %26, align 1
  %1645 = icmp eq i32 %1629, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %29, align 1
  %1647 = lshr i32 %1629, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %32, align 1
  %1649 = lshr i32 %1623, 31
  %1650 = lshr i32 %1628, 31
  %1651 = xor i32 %1647, %1649
  %1652 = xor i32 %1647, %1650
  %1653 = add nuw nsw i32 %1651, %1652
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %38, align 1
  %1656 = add i64 %1618, -80
  %1657 = add i64 %1620, 9
  store i64 %1657, i64* %PC.i, align 8
  %1658 = inttoptr i64 %1656 to i32*
  store i32 %1629, i32* %1658, align 4
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -152
  %1661 = load i64, i64* %PC.i, align 8
  %1662 = add i64 %1661, 8
  store i64 %1662, i64* %PC.i, align 8
  %1663 = inttoptr i64 %1660 to double*
  %1664 = load double, double* %1663, align 8
  store double %1664, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1665 = add i64 %1659, -8
  %1666 = add i64 %1661, 12
  store i64 %1666, i64* %PC.i, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RCX.i791, align 8
  %1669 = add i64 %1659, -80
  %1670 = add i64 %1661, 16
  store i64 %1670, i64* %PC.i, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = sext i32 %1672 to i64
  store i64 %1673, i64* %RDX.i789, align 8
  %1674 = shl nsw i64 %1673, 3
  %1675 = add i64 %1674, %1668
  %1676 = add i64 %1661, 21
  store i64 %1676, i64* %PC.i, align 8
  %1677 = inttoptr i64 %1675 to double*
  %1678 = load double, double* %1677, align 8
  %1679 = fmul double %1664, %1678
  store double %1679, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1680 = add i64 %1659, -128
  %1681 = add i64 %1661, 26
  store i64 %1681, i64* %PC.i, align 8
  %1682 = inttoptr i64 %1680 to double*
  %1683 = load double, double* %1682, align 8
  store double %1683, double* %210, align 1
  store double 0.000000e+00, double* %212, align 1
  %1684 = add i64 %1661, 30
  store i64 %1684, i64* %PC.i, align 8
  %1685 = load i64, i64* %1667, align 8
  store i64 %1685, i64* %RCX.i791, align 8
  %1686 = add i64 %1661, 33
  store i64 %1686, i64* %PC.i, align 8
  %1687 = load i32, i32* %1671, align 4
  %1688 = add i32 %1687, 1
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RAX.i801, align 8
  %1690 = icmp eq i32 %1687, -1
  %1691 = icmp eq i32 %1688, 0
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %14, align 1
  %1694 = and i32 %1688, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %21, align 1
  %1699 = xor i32 %1687, %1688
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  store i8 %1702, i8* %26, align 1
  %1703 = icmp eq i32 %1688, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %29, align 1
  %1705 = lshr i32 %1688, 31
  %1706 = trunc i32 %1705 to i8
  store i8 %1706, i8* %32, align 1
  %1707 = lshr i32 %1687, 31
  %1708 = xor i32 %1705, %1707
  %1709 = add nuw nsw i32 %1708, %1705
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %38, align 1
  %1712 = sext i32 %1688 to i64
  store i64 %1712, i64* %RDX.i789, align 8
  %1713 = shl nsw i64 %1712, 3
  %1714 = add i64 %1713, %1685
  %1715 = add i64 %1661, 44
  store i64 %1715, i64* %PC.i, align 8
  %1716 = inttoptr i64 %1714 to double*
  %1717 = load double, double* %1716, align 8
  %1718 = fmul double %1683, %1717
  store double %1718, double* %210, align 1
  store i64 0, i64* %211, align 1
  %1719 = fsub double %1679, %1718
  store double %1719, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -112
  %1722 = add i64 %1661, 53
  store i64 %1722, i64* %PC.i, align 8
  %1723 = inttoptr i64 %1721 to double*
  store double %1719, double* %1723, align 8
  %1724 = load i64, i64* %RBP.i, align 8
  %1725 = add i64 %1724, -152
  %1726 = load i64, i64* %PC.i, align 8
  %1727 = add i64 %1726, 8
  store i64 %1727, i64* %PC.i, align 8
  %1728 = inttoptr i64 %1725 to double*
  %1729 = load double, double* %1728, align 8
  store double %1729, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1730 = add i64 %1724, -8
  %1731 = add i64 %1726, 12
  store i64 %1731, i64* %PC.i, align 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RCX.i791, align 8
  %1734 = add i64 %1724, -80
  %1735 = add i64 %1726, 15
  store i64 %1735, i64* %PC.i, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = add i32 %1737, 1
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RAX.i801, align 8
  %1740 = icmp eq i32 %1737, -1
  %1741 = icmp eq i32 %1738, 0
  %1742 = or i1 %1740, %1741
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %14, align 1
  %1744 = and i32 %1738, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %21, align 1
  %1749 = xor i32 %1737, %1738
  %1750 = lshr i32 %1749, 4
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  store i8 %1752, i8* %26, align 1
  %1753 = icmp eq i32 %1738, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %29, align 1
  %1755 = lshr i32 %1738, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %32, align 1
  %1757 = lshr i32 %1737, 31
  %1758 = xor i32 %1755, %1757
  %1759 = add nuw nsw i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %38, align 1
  %1762 = sext i32 %1738 to i64
  store i64 %1762, i64* %RDX.i789, align 8
  %1763 = shl nsw i64 %1762, 3
  %1764 = add i64 %1763, %1733
  %1765 = add i64 %1726, 26
  store i64 %1765, i64* %PC.i, align 8
  %1766 = inttoptr i64 %1764 to double*
  %1767 = load double, double* %1766, align 8
  %1768 = fmul double %1729, %1767
  store double %1768, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1769 = add i64 %1724, -128
  %1770 = add i64 %1726, 31
  store i64 %1770, i64* %PC.i, align 8
  %1771 = inttoptr i64 %1769 to double*
  %1772 = load double, double* %1771, align 8
  store double %1772, double* %210, align 1
  store double 0.000000e+00, double* %212, align 1
  %1773 = add i64 %1726, 35
  store i64 %1773, i64* %PC.i, align 8
  %1774 = load i64, i64* %1732, align 8
  store i64 %1774, i64* %RCX.i791, align 8
  %1775 = add i64 %1726, 39
  store i64 %1775, i64* %PC.i, align 8
  %1776 = load i32, i32* %1736, align 4
  %1777 = sext i32 %1776 to i64
  store i64 %1777, i64* %RDX.i789, align 8
  %1778 = shl nsw i64 %1777, 3
  %1779 = add i64 %1778, %1774
  %1780 = add i64 %1726, 44
  store i64 %1780, i64* %PC.i, align 8
  %1781 = inttoptr i64 %1779 to double*
  %1782 = load double, double* %1781, align 8
  %1783 = fmul double %1772, %1782
  store double %1783, double* %210, align 1
  store i64 0, i64* %211, align 1
  %1784 = fadd double %1768, %1783
  store double %1784, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -104
  %1787 = add i64 %1726, 53
  store i64 %1787, i64* %PC.i, align 8
  %1788 = inttoptr i64 %1786 to double*
  store double %1784, double* %1788, align 8
  %1789 = load i64, i64* %RBP.i, align 8
  %1790 = add i64 %1789, -8
  %1791 = load i64, i64* %PC.i, align 8
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %PC.i, align 8
  %1793 = inttoptr i64 %1790 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RCX.i791, align 8
  %1795 = add i64 %1789, -76
  %1796 = add i64 %1791, 8
  store i64 %1796, i64* %PC.i, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = sext i32 %1798 to i64
  store i64 %1799, i64* %RDX.i789, align 8
  %1800 = shl nsw i64 %1799, 3
  %1801 = add i64 %1800, %1794
  %1802 = add i64 %1791, 13
  store i64 %1802, i64* %PC.i, align 8
  %1803 = inttoptr i64 %1801 to double*
  %1804 = load double, double* %1803, align 8
  store double %1804, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1805 = add i64 %1789, -112
  %1806 = add i64 %1791, 18
  store i64 %1806, i64* %PC.i, align 8
  %1807 = inttoptr i64 %1805 to double*
  %1808 = load double, double* %1807, align 8
  %1809 = fsub double %1804, %1808
  store double %1809, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1810 = add i64 %1791, 22
  store i64 %1810, i64* %PC.i, align 8
  %1811 = load i64, i64* %1793, align 8
  store i64 %1811, i64* %RCX.i791, align 8
  %1812 = add i64 %1789, -80
  %1813 = add i64 %1791, 26
  store i64 %1813, i64* %PC.i, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RDX.i789, align 8
  %1817 = shl nsw i64 %1816, 3
  %1818 = add i64 %1817, %1811
  %1819 = add i64 %1791, 31
  store i64 %1819, i64* %PC.i, align 8
  %1820 = inttoptr i64 %1818 to double*
  store double %1809, double* %1820, align 8
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -8
  %1823 = load i64, i64* %PC.i, align 8
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i, align 8
  %1825 = inttoptr i64 %1822 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RCX.i791, align 8
  %1827 = add i64 %1821, -76
  %1828 = add i64 %1823, 7
  store i64 %1828, i64* %PC.i, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = add i32 %1830, 1
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RAX.i801, align 8
  %1833 = icmp eq i32 %1830, -1
  %1834 = icmp eq i32 %1831, 0
  %1835 = or i1 %1833, %1834
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %14, align 1
  %1837 = and i32 %1831, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  %1842 = xor i32 %1830, %1831
  %1843 = lshr i32 %1842, 4
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  store i8 %1845, i8* %26, align 1
  %1846 = icmp eq i32 %1831, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %29, align 1
  %1848 = lshr i32 %1831, 31
  %1849 = trunc i32 %1848 to i8
  store i8 %1849, i8* %32, align 1
  %1850 = lshr i32 %1830, 31
  %1851 = xor i32 %1848, %1850
  %1852 = add nuw nsw i32 %1851, %1848
  %1853 = icmp eq i32 %1852, 2
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %38, align 1
  %1855 = sext i32 %1831 to i64
  store i64 %1855, i64* %RDX.i789, align 8
  %1856 = shl nsw i64 %1855, 3
  %1857 = add i64 %1856, %1826
  %1858 = add i64 %1823, 18
  store i64 %1858, i64* %PC.i, align 8
  %1859 = inttoptr i64 %1857 to double*
  %1860 = load double, double* %1859, align 8
  store double %1860, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1861 = add i64 %1821, -104
  %1862 = add i64 %1823, 23
  store i64 %1862, i64* %PC.i, align 8
  %1863 = inttoptr i64 %1861 to double*
  %1864 = load double, double* %1863, align 8
  %1865 = fsub double %1860, %1864
  store double %1865, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1866 = add i64 %1823, 27
  store i64 %1866, i64* %PC.i, align 8
  %1867 = load i64, i64* %1825, align 8
  store i64 %1867, i64* %RCX.i791, align 8
  %1868 = add i64 %1821, -80
  %1869 = add i64 %1823, 30
  store i64 %1869, i64* %PC.i, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = add i32 %1871, 1
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RAX.i801, align 8
  %1874 = icmp eq i32 %1871, -1
  %1875 = icmp eq i32 %1872, 0
  %1876 = or i1 %1874, %1875
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %14, align 1
  %1878 = and i32 %1872, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %21, align 1
  %1883 = xor i32 %1871, %1872
  %1884 = lshr i32 %1883, 4
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  store i8 %1886, i8* %26, align 1
  %1887 = icmp eq i32 %1872, 0
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %29, align 1
  %1889 = lshr i32 %1872, 31
  %1890 = trunc i32 %1889 to i8
  store i8 %1890, i8* %32, align 1
  %1891 = lshr i32 %1871, 31
  %1892 = xor i32 %1889, %1891
  %1893 = add nuw nsw i32 %1892, %1889
  %1894 = icmp eq i32 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %38, align 1
  %1896 = sext i32 %1872 to i64
  store i64 %1896, i64* %RDX.i789, align 8
  %1897 = shl nsw i64 %1896, 3
  %1898 = add i64 %1897, %1867
  %1899 = add i64 %1823, 41
  store i64 %1899, i64* %PC.i, align 8
  %1900 = inttoptr i64 %1898 to double*
  store double %1865, double* %1900, align 8
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -112
  %1903 = load i64, i64* %PC.i, align 8
  %1904 = add i64 %1903, 5
  store i64 %1904, i64* %PC.i, align 8
  %1905 = inttoptr i64 %1902 to double*
  %1906 = load double, double* %1905, align 8
  store double %1906, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1907 = add i64 %1901, -8
  %1908 = add i64 %1903, 9
  store i64 %1908, i64* %PC.i, align 8
  %1909 = inttoptr i64 %1907 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %RCX.i791, align 8
  %1911 = add i64 %1901, -76
  %1912 = add i64 %1903, 13
  store i64 %1912, i64* %PC.i, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = sext i32 %1914 to i64
  store i64 %1915, i64* %RDX.i789, align 8
  %1916 = shl nsw i64 %1915, 3
  %1917 = add i64 %1916, %1910
  %1918 = add i64 %1903, 18
  store i64 %1918, i64* %PC.i, align 8
  %1919 = inttoptr i64 %1917 to double*
  %1920 = load double, double* %1919, align 8
  %1921 = fadd double %1906, %1920
  store double %1921, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1922 = add i64 %1903, 23
  store i64 %1922, i64* %PC.i, align 8
  store double %1921, double* %1919, align 8
  %1923 = load i64, i64* %RBP.i, align 8
  %1924 = add i64 %1923, -104
  %1925 = load i64, i64* %PC.i, align 8
  %1926 = add i64 %1925, 5
  store i64 %1926, i64* %PC.i, align 8
  %1927 = inttoptr i64 %1924 to double*
  %1928 = load double, double* %1927, align 8
  store double %1928, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %1929 = add i64 %1923, -8
  %1930 = add i64 %1925, 9
  store i64 %1930, i64* %PC.i, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RCX.i791, align 8
  %1933 = add i64 %1923, -76
  %1934 = add i64 %1925, 12
  store i64 %1934, i64* %PC.i, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = add i32 %1936, 1
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RAX.i801, align 8
  %1939 = icmp eq i32 %1936, -1
  %1940 = icmp eq i32 %1937, 0
  %1941 = or i1 %1939, %1940
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %14, align 1
  %1943 = and i32 %1937, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %21, align 1
  %1948 = xor i32 %1936, %1937
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %26, align 1
  %1952 = icmp eq i32 %1937, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %29, align 1
  %1954 = lshr i32 %1937, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %32, align 1
  %1956 = lshr i32 %1936, 31
  %1957 = xor i32 %1954, %1956
  %1958 = add nuw nsw i32 %1957, %1954
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %38, align 1
  %1961 = sext i32 %1937 to i64
  store i64 %1961, i64* %RDX.i789, align 8
  %1962 = shl nsw i64 %1961, 3
  %1963 = add i64 %1962, %1932
  %1964 = add i64 %1925, 23
  store i64 %1964, i64* %PC.i, align 8
  %1965 = inttoptr i64 %1963 to double*
  %1966 = load double, double* %1965, align 8
  %1967 = fadd double %1928, %1966
  store double %1967, double* %200, align 1
  store i64 0, i64* %201, align 1
  %1968 = add i64 %1925, 28
  store i64 %1968, i64* %PC.i, align 8
  store double %1967, double* %1965, align 8
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -64
  %1971 = load i64, i64* %PC.i, align 8
  %1972 = add i64 %1971, 3
  store i64 %1972, i64* %PC.i, align 8
  %1973 = inttoptr i64 %1970 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RAX.i801, align 8
  %1976 = add i64 %1969, -32
  %1977 = add i64 %1971, 6
  store i64 %1977, i64* %PC.i, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = add i32 %1979, %1974
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RAX.i801, align 8
  %1982 = icmp ult i32 %1980, %1974
  %1983 = icmp ult i32 %1980, %1979
  %1984 = or i1 %1982, %1983
  %1985 = zext i1 %1984 to i8
  store i8 %1985, i8* %14, align 1
  %1986 = and i32 %1980, 255
  %1987 = tail call i32 @llvm.ctpop.i32(i32 %1986)
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = xor i8 %1989, 1
  store i8 %1990, i8* %21, align 1
  %1991 = xor i32 %1979, %1974
  %1992 = xor i32 %1991, %1980
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %26, align 1
  %1996 = icmp eq i32 %1980, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %29, align 1
  %1998 = lshr i32 %1980, 31
  %1999 = trunc i32 %1998 to i8
  store i8 %1999, i8* %32, align 1
  %2000 = lshr i32 %1974, 31
  %2001 = lshr i32 %1979, 31
  %2002 = xor i32 %1998, %2000
  %2003 = xor i32 %1998, %2001
  %2004 = add nuw nsw i32 %2002, %2003
  %2005 = icmp eq i32 %2004, 2
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %38, align 1
  %2007 = add i64 %1971, 9
  store i64 %2007, i64* %PC.i, align 8
  store i32 %1980, i32* %1978, align 4
  %2008 = load i64, i64* %PC.i, align 8
  %2009 = add i64 %2008, -265
  store i64 %2009, i64* %3, align 8
  br label %block_.L_400e72

block_.L_400f80:                                  ; preds = %block_.L_400e72
  %2010 = add i64 %1575, -28
  %2011 = add i64 %1611, 8
  store i64 %2011, i64* %PC.i, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = add i32 %2013, 2
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RAX.i801, align 8
  %2016 = icmp ugt i32 %2013, -3
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = and i32 %2014, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i32 %2013, %2014
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %26, align 1
  %2027 = icmp eq i32 %2014, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %29, align 1
  %2029 = lshr i32 %2014, 31
  %2030 = trunc i32 %2029 to i8
  store i8 %2030, i8* %32, align 1
  %2031 = lshr i32 %2013, 31
  %2032 = xor i32 %2029, %2031
  %2033 = add nuw nsw i32 %2032, %2029
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %38, align 1
  %2036 = add i64 %1611, 14
  store i64 %2036, i64* %PC.i, align 8
  store i32 %2014, i32* %2012, align 4
  %2037 = load i64, i64* %PC.i, align 8
  %2038 = add i64 %2037, -310
  store i64 %2038, i64* %3, align 8
  br label %block_.L_400e58

block_.L_400f93:                                  ; preds = %block_.L_400e58
  %2039 = add i64 %1565, -152
  %2040 = add i64 %1564, 8
  store i64 %2040, i64* %PC.i, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  %2043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2042, i64* %2043, align 1
  store double 0.000000e+00, double* %202, align 1
  %2044 = add i64 %1565, -160
  %2045 = add i64 %1564, 16
  store i64 %2045, i64* %PC.i, align 8
  %2046 = inttoptr i64 %2044 to i64*
  store i64 %2042, i64* %2046, align 8
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -144
  %2049 = load i64, i64* %PC.i, align 8
  %2050 = add i64 %2049, 8
  store i64 %2050, i64* %PC.i, align 8
  %2051 = load double, double* %200, align 1
  %2052 = inttoptr i64 %2048 to double*
  %2053 = load double, double* %2052, align 8
  %2054 = fmul double %2051, %2053
  store double %2054, double* %200, align 1
  %2055 = add i64 %2047, -128
  %2056 = add i64 %2049, 13
  store i64 %2056, i64* %PC.i, align 8
  %2057 = inttoptr i64 %2055 to double*
  %2058 = load double, double* %2057, align 8
  store double %2058, double* %210, align 1
  store double 0.000000e+00, double* %212, align 1
  %2059 = add i64 %2047, -136
  %2060 = add i64 %2049, 21
  store i64 %2060, i64* %PC.i, align 8
  %2061 = inttoptr i64 %2059 to double*
  %2062 = load double, double* %2061, align 8
  %2063 = fmul double %2058, %2062
  store double %2063, double* %210, align 1
  store i64 0, i64* %211, align 1
  %2064 = fsub double %2054, %2063
  store double %2064, double* %200, align 1
  %2065 = add i64 %2047, -152
  %2066 = add i64 %2049, 33
  store i64 %2066, i64* %PC.i, align 8
  %2067 = inttoptr i64 %2065 to double*
  %2068 = load double, double* %2067, align 8
  %2069 = fadd double %2064, %2068
  store double %2069, double* %200, align 1
  %2070 = add i64 %2049, 41
  store i64 %2070, i64* %PC.i, align 8
  store double %2069, double* %2067, align 8
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -128
  %2073 = load i64, i64* %PC.i, align 8
  %2074 = add i64 %2073, 5
  store i64 %2074, i64* %PC.i, align 8
  %2075 = inttoptr i64 %2072 to double*
  %2076 = load double, double* %2075, align 8
  store double %2076, double* %200, align 1
  store double 0.000000e+00, double* %202, align 1
  %2077 = add i64 %2071, -144
  %2078 = add i64 %2073, 13
  store i64 %2078, i64* %PC.i, align 8
  %2079 = inttoptr i64 %2077 to double*
  %2080 = load double, double* %2079, align 8
  %2081 = fmul double %2076, %2080
  store double %2081, double* %200, align 1
  store i64 0, i64* %201, align 1
  %2082 = add i64 %2071, -160
  %2083 = add i64 %2073, 21
  store i64 %2083, i64* %PC.i, align 8
  %2084 = inttoptr i64 %2082 to double*
  %2085 = load double, double* %2084, align 8
  store double %2085, double* %210, align 1
  store double 0.000000e+00, double* %212, align 1
  %2086 = add i64 %2071, -136
  %2087 = add i64 %2073, 29
  store i64 %2087, i64* %PC.i, align 8
  %2088 = inttoptr i64 %2086 to double*
  %2089 = load double, double* %2088, align 8
  %2090 = fmul double %2085, %2089
  store double %2090, double* %210, align 1
  store i64 0, i64* %211, align 1
  %2091 = fadd double %2081, %2090
  store double %2091, double* %200, align 1
  store i64 0, i64* %201, align 1
  %2092 = add i64 %2073, 38
  store i64 %2092, i64* %PC.i, align 8
  %2093 = load double, double* %2075, align 8
  %2094 = fadd double %2091, %2093
  store double %2094, double* %200, align 1
  store i64 0, i64* %201, align 1
  %2095 = add i64 %2073, 43
  store i64 %2095, i64* %PC.i, align 8
  store double %2094, double* %2075, align 8
  %2096 = load i64, i64* %RBP.i, align 8
  %2097 = add i64 %2096, -48
  %2098 = load i64, i64* %PC.i, align 8
  %2099 = add i64 %2098, 3
  store i64 %2099, i64* %PC.i, align 8
  %2100 = inttoptr i64 %2097 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RAX.i801, align 8
  %2103 = add i64 %2096, -36
  %2104 = add i64 %2098, 6
  store i64 %2104, i64* %PC.i, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = add i32 %2106, %2101
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RAX.i801, align 8
  %2109 = icmp ult i32 %2107, %2101
  %2110 = icmp ult i32 %2107, %2106
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %14, align 1
  %2113 = and i32 %2107, 255
  %2114 = tail call i32 @llvm.ctpop.i32(i32 %2113)
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  %2117 = xor i8 %2116, 1
  store i8 %2117, i8* %21, align 1
  %2118 = xor i32 %2106, %2101
  %2119 = xor i32 %2118, %2107
  %2120 = lshr i32 %2119, 4
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  store i8 %2122, i8* %26, align 1
  %2123 = icmp eq i32 %2107, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %29, align 1
  %2125 = lshr i32 %2107, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1
  %2127 = lshr i32 %2101, 31
  %2128 = lshr i32 %2106, 31
  %2129 = xor i32 %2125, %2127
  %2130 = xor i32 %2125, %2128
  %2131 = add nuw nsw i32 %2129, %2130
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %38, align 1
  %2134 = add i64 %2098, 9
  store i64 %2134, i64* %PC.i, align 8
  store i32 %2107, i32* %2105, align 4
  %2135 = load i64, i64* %PC.i, align 8
  %2136 = add i64 %2135, -442
  store i64 %2136, i64* %3, align 8
  br label %block_.L_400e46

block_.L_401005:                                  ; preds = %block_.L_400e46
  %2137 = add i64 %1476, -64
  %2138 = add i64 %1512, 3
  store i64 %2138, i64* %PC.i, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RAX.i801, align 8
  %2142 = add i64 %1512, 6
  store i64 %2142, i64* %PC.i, align 8
  store i32 %2140, i32* %1484, align 4
  %2143 = load i64, i64* %PC.i, align 8
  %2144 = add i64 %2143, -671
  store i64 %2144, i64* %3, align 8
  br label %block_.L_400d6c

block_.L_401010:                                  ; preds = %block_.L_400d6c
  %2145 = add i64 %1257, -84
  %2146 = add i64 %1293, 3
  store i64 %2146, i64* %PC.i, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RAX.i801, align 8
  %2150 = add i64 %1257, -88
  %2151 = add i64 %1293, 7
  store i64 %2151, i64* %PC.i, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = sext i32 %2148 to i64
  %2155 = sext i32 %2153 to i64
  %2156 = mul nsw i64 %2155, %2154
  %2157 = trunc i64 %2156 to i32
  %2158 = and i64 %2156, 4294967295
  store i64 %2158, i64* %RAX.i801, align 8
  %2159 = shl i64 %2156, 32
  %2160 = ashr exact i64 %2159, 32
  %2161 = icmp ne i64 %2160, %2156
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %14, align 1
  %2163 = and i32 %2157, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2168 = lshr i32 %2157, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %32, align 1
  store i8 %2162, i8* %38, align 1
  %2170 = trunc i64 %2156 to i32
  %2171 = add i64 %1293, 10
  store i64 %2171, i64* %PC.i, align 8
  store i32 %2170, i32* %2152, align 4
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -72
  %2174 = load i64, i64* %PC.i, align 8
  %2175 = add i64 %2174, 3
  store i64 %2175, i64* %PC.i, align 8
  %2176 = inttoptr i64 %2173 to i32*
  %2177 = load i32, i32* %2176, align 4
  %2178 = add i32 %2177, -1
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX.i801, align 8
  %2180 = icmp ne i32 %2177, 0
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %14, align 1
  %2182 = and i32 %2178, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  %2187 = xor i32 %2177, 16
  %2188 = xor i32 %2178, %2187
  %2189 = lshr i32 %2188, 4
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  store i8 %2191, i8* %26, align 1
  %2192 = icmp eq i32 %2178, 0
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %29, align 1
  %2194 = lshr i32 %2178, 31
  %2195 = trunc i32 %2194 to i8
  store i8 %2195, i8* %32, align 1
  %2196 = lshr i32 %2177, 31
  %2197 = xor i32 %2194, %2196
  %2198 = xor i32 %2194, 1
  %2199 = add nuw nsw i32 %2197, %2198
  %2200 = icmp eq i32 %2199, 2
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %38, align 1
  %2202 = add i64 %2174, 9
  store i64 %2202, i64* %PC.i, align 8
  store i32 %2178, i32* %2176, align 4
  %2203 = load i64, i64* %PC.i, align 8
  %2204 = add i64 %2203, -1171
  store i64 %2204, i64* %3, align 8
  br label %block_.L_400b90

block_.L_401028:                                  ; preds = %block_.L_400b90
  %2205 = load i64, i64* %RSP.i378, align 8
  %2206 = add i64 %2205, 192
  store i64 %2206, i64* %RSP.i378, align 8
  %2207 = icmp ugt i64 %2205, -193
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %14, align 1
  %2209 = trunc i64 %2206 to i32
  %2210 = and i32 %2209, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %21, align 1
  %2215 = xor i64 %2205, %2206
  %2216 = lshr i64 %2215, 4
  %2217 = trunc i64 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %26, align 1
  %2219 = icmp eq i64 %2206, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %29, align 1
  %2221 = lshr i64 %2206, 63
  %2222 = trunc i64 %2221 to i8
  store i8 %2222, i8* %32, align 1
  %2223 = lshr i64 %2205, 63
  %2224 = xor i64 %2221, %2223
  %2225 = add nuw nsw i64 %2224, %2221
  %2226 = icmp eq i64 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %38, align 1
  %2228 = add i64 %260, 8
  store i64 %2228, i64* %PC.i, align 8
  %2229 = add i64 %2205, 200
  %2230 = inttoptr i64 %2206 to i64*
  %2231 = load i64, i64* %2230, align 8
  store i64 %2231, i64* %RBP.i, align 8
  store i64 %2229, i64* %6, align 8
  %2232 = add i64 %260, 9
  store i64 %2232, i64* %PC.i, align 8
  %2233 = inttoptr i64 %2229 to i64*
  %2234 = load i64, i64* %2233, align 8
  store i64 %2234, i64* %3, align 8
  %2235 = add i64 %2205, 208
  store i64 %2235, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400b83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_jmpq_.L_400b57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_jl_.L_401028(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
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

define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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

define %struct.Memory* @routine_jg_.L_400d66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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

define %struct.Memory* @routine_jge_.L_400cf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400cf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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

define %struct.Memory* @routine_jg_.L_400cdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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

define %struct.Memory* @routine_movb__cl__MINUS0xa5__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400d23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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

define %struct.Memory* @routine_setg__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa5__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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

define %struct.Memory* @routine_jne_.L_400d36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400d4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cfe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401010(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__type* @G_0x365__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__type* @G_0x365__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__type* @G_0x365__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__type* @G_0x365__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400478
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400478
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_mulsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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

define %struct.Memory* @routine_jg_.L_401005(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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

define %struct.Memory* @routine_jmpq_.L_400e72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = icmp ne i32 %6, 0
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
  %20 = xor i32 %7, %19
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
  %33 = xor i32 %28, 1
  %34 = add nuw nsw i32 %32, %33
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
  %17 = xor i64 %3, %6
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
