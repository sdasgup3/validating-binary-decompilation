; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3b9__rip__type = type <{ [16 x i8] }>
%G_0x438__rip__type = type <{ [8 x i8] }>
%G_0x602080_type = type <{ [8 x i8] }>
%G__0x40116a_type = type <{ [8 x i8] }>
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
@G_0x3b9__rip_ = global %G_0x3b9__rip__type zeroinitializer
@G_0x438__rip_ = global %G_0x438__rip__type zeroinitializer
@G_0x602080 = local_unnamed_addr global %G_0x602080_type zeroinitializer
@G__0x40116a = global %G__0x40116a_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @check_FP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = add i64 %10, add (i64 ptrtoint (%G_0x438__rip__type* @G_0x438__rip_ to i64), i64 7)
  %43 = add i64 %10, 15
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = bitcast [32 x %union.VectorReg]* %40 to double*
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %45, i64* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %49 = bitcast i64* %48 to double*
  store double 0.000000e+00, double* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %50 to i32*
  %51 = add i64 %7, -16
  %52 = load i32, i32* %EDI.i, align 4
  %53 = add i64 %10, 18
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %54, align 4
  %RSI.i143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -16
  %57 = load i64, i64* %RSI.i143, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %RDX.i140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %RDX.i140, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -40
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 5
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %47, align 1
  %72 = inttoptr i64 %68 to i64*
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -28
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 7
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i132 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %EAX.i129 = bitcast %union.anon* %78 to i32*
  %RCX.i113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %80 = bitcast %union.VectorReg* %79 to i8*
  %81 = bitcast %union.VectorReg* %79 to i32*
  %82 = getelementptr inbounds i8, i8* %80, i64 4
  %83 = bitcast i8* %82 to i32*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %85 = bitcast i64* %84 to i32*
  %86 = getelementptr inbounds i8, i8* %80, i64 12
  %87 = bitcast i8* %86 to i32*
  %88 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %79, i64 0, i32 0, i32 0, i32 0, i64 0
  %89 = bitcast [32 x %union.VectorReg]* %40 to i32*
  %90 = getelementptr inbounds i8, i8* %41, i64 4
  %91 = bitcast i8* %90 to i32*
  %92 = bitcast i64* %48 to i32*
  %93 = getelementptr inbounds i8, i8* %41, i64 12
  %94 = bitcast i8* %93 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400cf7

block_.L_400cf7:                                  ; preds = %block_.L_400dd8, %entry
  %95 = phi i64 [ %.pre, %entry ], [ %462, %block_.L_400dd8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_400dd8 ]
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -28
  %98 = add i64 %95, 3
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RAX.i132, align 8
  %102 = add i64 %96, -8
  %103 = add i64 %95, 6
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %100, %105
  %107 = icmp ult i32 %100, %105
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = and i32 %106, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i32 %105, %100
  %115 = xor i32 %114, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %27, align 1
  %119 = icmp eq i32 %106, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %30, align 1
  %121 = lshr i32 %106, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %33, align 1
  %123 = lshr i32 %100, 31
  %124 = lshr i32 %105, 31
  %125 = xor i32 %124, %123
  %126 = xor i32 %121, %123
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %39, align 1
  %130 = icmp ne i8 %122, 0
  %131 = xor i1 %130, %128
  %.v31 = select i1 %131, i64 12, i64 244
  %132 = add i64 %95, %.v31
  store i64 %132, i64* %3, align 8
  br i1 %131, label %block_400d03, label %block_.L_400deb

block_400d03:                                     ; preds = %block_.L_400cf7
  %133 = add i64 %96, -32
  %134 = add i64 %132, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  store i32 0, i32* %135, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400d0a

block_.L_400d0a:                                  ; preds = %block_.L_400dc5, %block_400d03
  %136 = phi i64 [ %.pre28, %block_400d03 ], [ %432, %block_.L_400dc5 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400d03 ], [ %341, %block_.L_400dc5 ]
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -32
  %139 = add i64 %136, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i132, align 8
  %143 = add i64 %137, -8
  %144 = add i64 %136, 6
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %141, %146
  %148 = icmp ult i32 %141, %146
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %14, align 1
  %150 = and i32 %147, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %21, align 1
  %155 = xor i32 %146, %141
  %156 = xor i32 %155, %147
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %27, align 1
  %160 = icmp eq i32 %147, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %30, align 1
  %162 = lshr i32 %147, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %33, align 1
  %164 = lshr i32 %141, 31
  %165 = lshr i32 %146, 31
  %166 = xor i32 %165, %164
  %167 = xor i32 %162, %164
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %39, align 1
  %171 = icmp ne i8 %163, 0
  %172 = xor i1 %171, %169
  %.v = select i1 %172, i64 12, i64 206
  %173 = add i64 %136, %.v
  store i64 %173, i64* %3, align 8
  br i1 %172, label %block_400d16, label %block_.L_400dd8

block_400d16:                                     ; preds = %block_.L_400d0a
  %174 = add i64 %137, -16
  %175 = add i64 %173, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RAX.i132, align 8
  %178 = add i64 %137, -28
  %179 = add i64 %173, 8
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, 8000
  store i64 %183, i64* %RCX.i113, align 8
  %184 = lshr i64 %183, 63
  %185 = add i64 %183, %177
  store i64 %185, i64* %RAX.i132, align 8
  %186 = icmp ult i64 %185, %177
  %187 = icmp ult i64 %185, %183
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %14, align 1
  %190 = trunc i64 %185 to i32
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %21, align 1
  %196 = xor i64 %177, %185
  %197 = lshr i64 %196, 4
  %198 = trunc i64 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %27, align 1
  %200 = icmp eq i64 %185, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i64 %185, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %33, align 1
  %204 = lshr i64 %177, 63
  %205 = xor i64 %202, %204
  %206 = xor i64 %202, %184
  %207 = add nuw nsw i64 %205, %206
  %208 = icmp eq i64 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %39, align 1
  %210 = add i64 %173, 22
  store i64 %210, i64* %3, align 8
  %211 = load i32, i32* %140, align 4
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RCX.i113, align 8
  %213 = shl nsw i64 %212, 3
  %214 = add i64 %213, %185
  %215 = add i64 %173, 27
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %47, align 1
  store double 0.000000e+00, double* %49, align 1
  %218 = add i64 %137, -48
  %219 = add i64 %173, 32
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i64*
  store i64 %217, i64* %220, align 8
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -24
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 4
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RAX.i132, align 8
  %227 = add i64 %221, -28
  %228 = add i64 %223, 8
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = mul nsw i64 %231, 8000
  store i64 %232, i64* %RCX.i113, align 8
  %233 = lshr i64 %232, 63
  %234 = add i64 %232, %226
  store i64 %234, i64* %RAX.i132, align 8
  %235 = icmp ult i64 %234, %226
  %236 = icmp ult i64 %234, %232
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %14, align 1
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i64 %226, %234
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %27, align 1
  %249 = icmp eq i64 %234, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %30, align 1
  %251 = lshr i64 %234, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %33, align 1
  %253 = lshr i64 %226, 63
  %254 = xor i64 %251, %253
  %255 = xor i64 %251, %233
  %256 = add nuw nsw i64 %254, %255
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %39, align 1
  %259 = add i64 %221, -32
  %260 = add i64 %223, 22
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %RCX.i113, align 8
  %264 = shl nsw i64 %263, 3
  %265 = add i64 %264, %234
  %266 = add i64 %223, 27
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %47, align 1
  store double 0.000000e+00, double* %49, align 1
  %269 = add i64 %221, -56
  %270 = add i64 %223, 32
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i64*
  store i64 %268, i64* %271, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -48
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 5
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %47, align 1
  store double 0.000000e+00, double* %49, align 1
  %278 = add i64 %272, -56
  %279 = add i64 %274, 10
  store i64 %279, i64* %3, align 8
  %280 = bitcast i64 %277 to double
  %281 = inttoptr i64 %278 to double*
  %282 = load double, double* %281, align 8
  %283 = fsub double %280, %282
  store double %283, double* %46, align 1
  store i64 0, i64* %48, align 1
  %284 = add i64 %274, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 10)
  %285 = add i64 %274, 17
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i64 %274, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 14)
  %289 = inttoptr i64 %288 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = add i64 %274, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 18)
  %292 = inttoptr i64 %291 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i64 %274, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 22)
  %295 = inttoptr i64 %294 to i32*
  %296 = load i32, i32* %295, align 4
  store i32 %287, i32* %81, align 1
  store i32 %290, i32* %83, align 1
  store i32 %293, i32* %85, align 1
  store i32 %296, i32* %87, align 1
  %297 = bitcast double %283 to i64
  %298 = load i64, i64* %88, align 1
  %299 = and i64 %298, %297
  %300 = trunc i64 %299 to i32
  %301 = lshr i64 %299, 32
  %302 = trunc i64 %301 to i32
  store i32 %300, i32* %89, align 1
  store i32 %302, i32* %91, align 1
  store i32 0, i32* %92, align 1
  store i32 0, i32* %94, align 1
  %303 = add i64 %272, -64
  %304 = add i64 %274, 26
  store i64 %304, i64* %3, align 8
  %305 = load i64, i64* %47, align 1
  %306 = inttoptr i64 %303 to i64*
  store i64 %305, i64* %306, align 8
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -64
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, 5
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %308 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %47, align 1
  store double 0.000000e+00, double* %49, align 1
  %313 = add i64 %307, -40
  %314 = add i64 %309, 10
  store i64 %314, i64* %3, align 8
  %315 = bitcast i64 %312 to double
  %316 = inttoptr i64 %313 to double*
  %317 = load double, double* %316, align 8
  %318 = fcmp uno double %315, %317
  br i1 %318, label %319, label %329

; <label>:319:                                    ; preds = %block_400d16
  %320 = fadd double %315, %317
  %321 = bitcast double %320 to i64
  %322 = and i64 %321, 9221120237041090560
  %323 = icmp eq i64 %322, 9218868437227405312
  %324 = and i64 %321, 2251799813685247
  %325 = icmp ne i64 %324, 0
  %326 = and i1 %323, %325
  br i1 %326, label %327, label %335

; <label>:327:                                    ; preds = %319
  %328 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %314, %struct.Memory* %MEMORY.1)
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x28__rbp____xmm0.exit

; <label>:329:                                    ; preds = %block_400d16
  %330 = fcmp ogt double %315, %317
  br i1 %330, label %335, label %331

; <label>:331:                                    ; preds = %329
  %332 = fcmp olt double %315, %317
  br i1 %332, label %335, label %333

; <label>:333:                                    ; preds = %331
  %334 = fcmp oeq double %315, %317
  br i1 %334, label %335, label %339

; <label>:335:                                    ; preds = %333, %331, %329, %319
  %336 = phi i8 [ 0, %329 ], [ 0, %331 ], [ 1, %333 ], [ 1, %319 ]
  %337 = phi i8 [ 0, %329 ], [ 0, %331 ], [ 0, %333 ], [ 1, %319 ]
  %338 = phi i8 [ 0, %329 ], [ 1, %331 ], [ 0, %333 ], [ 1, %319 ]
  store i8 %336, i8* %30, align 1
  store i8 %337, i8* %21, align 1
  store i8 %338, i8* %14, align 1
  br label %339

; <label>:339:                                    ; preds = %335, %333
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd_MINUS0x28__rbp____xmm0.exit

routine_ucomisd_MINUS0x28__rbp____xmm0.exit:      ; preds = %339, %327
  %340 = phi i64 [ %.pre29, %327 ], [ %314, %339 ]
  %341 = phi %struct.Memory* [ %328, %327 ], [ %MEMORY.1, %339 ]
  %342 = load i8, i8* %14, align 1
  %343 = load i8, i8* %30, align 1
  %344 = or i8 %343, %342
  %345 = icmp ne i8 %344, 0
  %.v43 = select i1 %345, i64 75, i64 6
  %346 = add i64 %340, %.v43
  store i64 %346, i64* %3, align 8
  br i1 %345, label %block_.L_400dc5, label %block_400d80

block_400d80:                                     ; preds = %routine_ucomisd_MINUS0x28__rbp____xmm0.exit
  store i64 ptrtoint (%G__0x40116a_type* @G__0x40116a to i64), i64* %RSI.i143, align 8
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %347 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %347, i64* %RDI.i, align 8
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -28
  %350 = add i64 %346, 21
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RDX.i140, align 8
  %354 = add i64 %348, -32
  %355 = add i64 %346, 24
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RCX.i113, align 8
  %359 = add i64 %348, -48
  %360 = add i64 %346, 29
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %47, align 1
  store double 0.000000e+00, double* %49, align 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %364 = add i64 %346, 33
  store i64 %364, i64* %3, align 8
  %365 = load i32, i32* %351, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %363, align 8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %368 = add i64 %346, 37
  store i64 %368, i64* %3, align 8
  %369 = load i32, i32* %356, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %367, align 8
  %371 = add i64 %348, -56
  %372 = add i64 %346, 42
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %88, align 1
  %375 = bitcast i64* %84 to double*
  store double 0.000000e+00, double* %375, align 1
  %376 = add i64 %348, -40
  %377 = add i64 %346, 47
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %379, i64* %380, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %382 = bitcast i64* %381 to double*
  store double 0.000000e+00, double* %382, align 1
  %AL.i = bitcast %union.anon* %78 to i8*
  store i8 3, i8* %AL.i, align 1
  %383 = add i64 %346, -1856
  %384 = add i64 %346, 54
  %385 = load i64, i64* %6, align 8
  %386 = add i64 %385, -8
  %387 = inttoptr i64 %386 to i64*
  store i64 %384, i64* %387, align 8
  store i64 %386, i64* %6, align 8
  store i64 %383, i64* %3, align 8
  %388 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %341)
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, 7
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %390 to i32*
  store i32 0, i32* %393, align 4
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -68
  %396 = load i32, i32* %EAX.i129, align 4
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, 3
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %395 to i32*
  store i32 %396, i32* %399, align 4
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 50
  store i64 %401, i64* %3, align 8
  br label %block_.L_400df2

block_.L_400dc5:                                  ; preds = %routine_ucomisd_MINUS0x28__rbp____xmm0.exit
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -32
  %404 = add i64 %346, 8
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, 1
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i132, align 8
  %409 = icmp eq i32 %406, -1
  %410 = icmp eq i32 %407, 0
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %21, align 1
  %418 = xor i32 %407, %406
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %27, align 1
  %422 = zext i1 %410 to i8
  store i8 %422, i8* %30, align 1
  %423 = lshr i32 %407, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %33, align 1
  %425 = lshr i32 %406, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %39, align 1
  %430 = add i64 %346, 14
  store i64 %430, i64* %3, align 8
  store i32 %407, i32* %405, align 4
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, -201
  store i64 %432, i64* %3, align 8
  br label %block_.L_400d0a

block_.L_400dd8:                                  ; preds = %block_.L_400d0a
  %433 = add i64 %137, -28
  %434 = add i64 %173, 8
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = add i32 %436, 1
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX.i132, align 8
  %439 = icmp eq i32 %436, -1
  %440 = icmp eq i32 %437, 0
  %441 = or i1 %439, %440
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %14, align 1
  %443 = and i32 %437, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  %448 = xor i32 %437, %436
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %27, align 1
  %452 = zext i1 %440 to i8
  store i8 %452, i8* %30, align 1
  %453 = lshr i32 %437, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %33, align 1
  %455 = lshr i32 %436, 31
  %456 = xor i32 %453, %455
  %457 = add nuw nsw i32 %456, %453
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %39, align 1
  %460 = add i64 %173, 14
  store i64 %460, i64* %3, align 8
  store i32 %437, i32* %435, align 4
  %461 = load i64, i64* %3, align 8
  %462 = add i64 %461, -239
  store i64 %462, i64* %3, align 8
  br label %block_.L_400cf7

block_.L_400deb:                                  ; preds = %block_.L_400cf7
  %463 = add i64 %96, -4
  %464 = add i64 %132, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  store i32 1, i32* %465, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_400df2

block_.L_400df2:                                  ; preds = %block_.L_400deb, %block_400d80
  %466 = phi i64 [ %.pre30, %block_.L_400deb ], [ %401, %block_400d80 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400deb ], [ %388, %block_400d80 ]
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -4
  %469 = add i64 %466, 3
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i132, align 8
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, 80
  store i64 %474, i64* %6, align 8
  %475 = icmp ugt i64 %473, -81
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = trunc i64 %474 to i32
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i64 %473, 16
  %484 = xor i64 %483, %474
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %27, align 1
  %488 = icmp eq i64 %474, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %30, align 1
  %490 = lshr i64 %474, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %33, align 1
  %492 = lshr i64 %473, 63
  %493 = xor i64 %490, %492
  %494 = add nuw nsw i64 %493, %490
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %39, align 1
  %497 = add i64 %466, 8
  store i64 %497, i64* %3, align 8
  %498 = add i64 %473, 88
  %499 = inttoptr i64 %474 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RBP.i, align 8
  store i64 %498, i64* %6, align 8
  %501 = add i64 %466, 9
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %498 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %3, align 8
  %504 = add i64 %473, 96
  store i64 %504, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x438__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x438__rip__type* @G_0x438__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400deb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movaps_0x3b9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x3b9__rip__type* @G_0x3b9__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_ucomisd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
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

; <label>:23:                                     ; preds = %block_400488
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x40116a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40116a_type* @G__0x40116a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602080_type* @G_0x602080 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__0x3___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 3, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ddd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
