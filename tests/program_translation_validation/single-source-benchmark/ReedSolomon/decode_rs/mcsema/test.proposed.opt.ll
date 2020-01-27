; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603080___rax_4__type = type <{ [8 x i8] }>
%G_0x603080___rcx_4__type = type <{ [4 x i8] }>
%G_0x603080___rsi_4__type = type <{ [4 x i8] }>
%G_0x603480___rax_4__type = type <{ [4 x i8] }>
%G_0x603480___rcx_4__type = type <{ [4 x i8] }>
%G_0x603880___rax_4__type = type <{ [4 x i8] }>
%G_0x603880___rcx_4__type = type <{ [4 x i8] }>
%G_0x603880___rdi_4__type = type <{ [4 x i8] }>
%G_0x603880___rsi_4__type = type <{ [4 x i8] }>
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
@G_0x603080___rax_4_ = global %G_0x603080___rax_4__type zeroinitializer
@G_0x603080___rcx_4_ = global %G_0x603080___rcx_4__type zeroinitializer
@G_0x603080___rsi_4_ = global %G_0x603080___rsi_4__type zeroinitializer
@G_0x603480___rax_4_ = global %G_0x603480___rax_4__type zeroinitializer
@G_0x603480___rcx_4_ = global %G_0x603480___rcx_4__type zeroinitializer
@G_0x603880___rax_4_ = global %G_0x603880___rax_4__type zeroinitializer
@G_0x603880___rcx_4_ = global %G_0x603880___rcx_4__type zeroinitializer
@G_0x603880___rdi_4_ = global %G_0x603880___rdi_4__type zeroinitializer
@G_0x603880___rsi_4_ = global %G_0x603880___rsi_4__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @decode_rs(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -2616
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 2608
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
  %40 = add i64 %7, -1500
  %41 = add i64 %10, 20
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -1496
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 10
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1508 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %EAX.i2012 = bitcast %union.anon* %53 to i32*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2066 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2064 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2060 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %ESI.i2054 = bitcast %union.anon* %56 to i32*
  %EDX.i2048 = bitcast %union.anon* %55 to i32*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %ECX.i1986 = bitcast %union.anon* %54 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400936

block_.L_400936:                                  ; preds = %block_.L_4009ea, %entry
  %59 = phi i64 [ %.pre, %entry ], [ %392, %block_.L_4009ea ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_4009ea ]
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -4
  %62 = add i64 %59, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, -16
  %66 = icmp ult i32 %64, 16
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %21, align 1
  %73 = xor i32 %64, 16
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %27, align 1
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %30, align 1
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %33, align 1
  %82 = lshr i32 %64, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %39, align 1
  %87 = icmp ne i8 %81, 0
  %88 = xor i1 %87, %85
  %.demorgan = or i1 %78, %88
  %.v = select i1 %.demorgan, i64 10, i64 224
  %89 = add i64 %59, %.v
  store i64 %89, i64* %3, align 8
  br i1 %.demorgan, label %block_400940, label %block_.L_400a16

block_400940:                                     ; preds = %block_.L_400936
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %63, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %RAX.i1508, align 8
  %93 = shl nsw i64 %92, 2
  %94 = add i64 %60, -1488
  %95 = add i64 %94, %93
  %96 = add i64 %89, 15
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -8
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400956

block_.L_400956:                                  ; preds = %block_.L_4009bb, %block_400940
  %103 = phi i64 [ %.pre1, %block_400940 ], [ %309, %block_.L_4009bb ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400940 ], [ %MEMORY.2, %block_.L_4009bb ]
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %103, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -255
  %110 = icmp ult i32 %108, 255
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %108, 16
  %118 = xor i32 %117, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %30, align 1
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %33, align 1
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %39, align 1
  %131 = icmp ne i8 %125, 0
  %132 = xor i1 %131, %129
  %.v95 = select i1 %132, i64 13, i64 120
  %133 = add i64 %103, %.v95
  store i64 %133, i64* %3, align 8
  br i1 %132, label %block_400963, label %block_.L_4009ce

block_400963:                                     ; preds = %block_.L_400956
  %134 = add i64 %133, 4
  store i64 %134, i64* %3, align 8
  %135 = load i32, i32* %107, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RAX.i1508, align 8
  %137 = shl nsw i64 %136, 2
  %138 = add i64 %137, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %139 = add i64 %133, 12
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  %143 = icmp ne i32 %141, -1
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  %150 = xor i32 %141, 16
  %151 = xor i32 %142, %150
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %27, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %30, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %33, align 1
  %159 = lshr i32 %141, 31
  %160 = xor i32 %159, 1
  %161 = xor i32 %157, %159
  %162 = add nuw nsw i32 %161, %160
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %39, align 1
  %.v96 = select i1 %155, i64 88, i64 18
  %165 = add i64 %133, %.v96
  store i64 %165, i64* %3, align 8
  br i1 %155, label %block_.L_4009bb, label %block_400975

block_400975:                                     ; preds = %block_400963
  store i64 255, i64* %RAX.i1508, align 8
  %166 = add i64 %165, 9
  store i64 %166, i64* %3, align 8
  %167 = load i32, i32* %107, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i2066, align 8
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %169, ptrtoint (%G_0x603080___rcx_4__type* @G_0x603080___rcx_4_ to i64)
  %171 = add i64 %165, 16
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i2064, align 8
  %175 = add i64 %104, -4
  %176 = add i64 %165, 19
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RSI.i2060, align 8
  %180 = add i64 %165, 23
  store i64 %180, i64* %3, align 8
  %181 = load i32, i32* %107, align 4
  %182 = sext i32 %178 to i64
  %183 = sext i32 %181 to i64
  %184 = mul nsw i64 %183, %182
  %185 = and i64 %184, 4294967295
  store i64 %185, i64* %RSI.i2060, align 8
  %186 = trunc i64 %184 to i32
  %187 = add i32 %186, %173
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RDX.i2064, align 8
  %189 = icmp ult i32 %187, %173
  %190 = icmp ult i32 %187, %186
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1
  %193 = and i32 %187, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %21, align 1
  %198 = xor i64 %184, %174
  %199 = trunc i64 %198 to i32
  %200 = xor i32 %199, %187
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %27, align 1
  %204 = icmp eq i32 %187, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %30, align 1
  %206 = lshr i32 %187, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %33, align 1
  %208 = lshr i32 %173, 31
  %209 = lshr i32 %186, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %39, align 1
  %215 = add i64 %104, -2692
  %216 = add i64 %165, 31
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  store i32 255, i32* %217, align 4
  %218 = load i32, i32* %EDX.i2048, align 4
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %3, align 8
  store i64 %219, i64* %RAX.i1508, align 8
  %221 = sext i32 %218 to i64
  %222 = lshr i64 %221, 32
  store i64 %222, i64* %57, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -2692
  %225 = add i64 %220, 9
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RSI.i2060, align 8
  %229 = add i64 %220, 11
  store i64 %229, i64* %3, align 8
  %230 = sext i32 %227 to i64
  %231 = shl nuw i64 %222, 32
  %232 = or i64 %231, %219
  %233 = sdiv i64 %232, %230
  %234 = shl i64 %233, 32
  %235 = ashr exact i64 %234, 32
  %236 = icmp eq i64 %233, %235
  br i1 %236, label %239, label %237

; <label>:237:                                    ; preds = %block_400975
  %238 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %229, %struct.Memory* %MEMORY.1)
  %.pre2 = load i32, i32* %EDX.i2048, align 4
  %.pre3 = load i64, i64* %3, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit2039

; <label>:239:                                    ; preds = %block_400975
  %240 = srem i64 %232, %230
  %241 = and i64 %233, 4294967295
  store i64 %241, i64* %58, align 8
  %242 = and i64 %240, 4294967295
  store i64 %242, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %243 = trunc i64 %240 to i32
  br label %routine_idivl__esi.exit2039

routine_idivl__esi.exit2039:                      ; preds = %239, %237
  %244 = phi i64 [ %.pre4, %237 ], [ %223, %239 ]
  %245 = phi i64 [ %.pre3, %237 ], [ %229, %239 ]
  %246 = phi i32 [ %.pre2, %237 ], [ %243, %239 ]
  %247 = phi %struct.Memory* [ %238, %237 ], [ %MEMORY.1, %239 ]
  %248 = sext i32 %246 to i64
  store i64 %248, i64* %RCX.i2066, align 8
  %249 = shl nsw i64 %248, 2
  %250 = add i64 %249, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %251 = add i64 %245, 10
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDX.i2064, align 8
  %255 = add i64 %244, -4
  %256 = add i64 %245, 14
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX.i2066, align 8
  %260 = shl nsw i64 %259, 2
  %261 = add i64 %244, -1488
  %262 = add i64 %261, %260
  %263 = add i64 %245, 21
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, %253
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %268 = and i32 %266, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = icmp eq i32 %266, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %30, align 1
  %275 = lshr i32 %266, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %277 = add i64 %245, 28
  store i64 %277, i64* %3, align 8
  store i32 %266, i32* %264, align 4
  %.pre5 = load i64, i64* %3, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009bb

block_.L_4009bb:                                  ; preds = %routine_idivl__esi.exit2039, %block_400963
  %278 = phi i64 [ %104, %block_400963 ], [ %.pre6, %routine_idivl__esi.exit2039 ]
  %279 = phi i64 [ %165, %block_400963 ], [ %.pre5, %routine_idivl__esi.exit2039 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400963 ], [ %247, %routine_idivl__esi.exit2039 ]
  %280 = add i64 %278, -8
  %281 = add i64 %279, 8
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, 1
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i1508, align 8
  %286 = icmp eq i32 %283, -1
  %287 = icmp eq i32 %284, 0
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %14, align 1
  %290 = and i32 %284, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %21, align 1
  %295 = xor i32 %283, %284
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %27, align 1
  %299 = zext i1 %287 to i8
  store i8 %299, i8* %30, align 1
  %300 = lshr i32 %284, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %33, align 1
  %302 = lshr i32 %283, 31
  %303 = xor i32 %300, %302
  %304 = add nuw nsw i32 %303, %300
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %39, align 1
  %307 = add i64 %279, 14
  store i64 %307, i64* %3, align 8
  store i32 %284, i32* %282, align 4
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, -115
  store i64 %309, i64* %3, align 8
  br label %block_.L_400956

block_.L_4009ce:                                  ; preds = %block_.L_400956
  %310 = add i64 %104, -4
  %311 = add i64 %133, 4
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RAX.i1508, align 8
  %315 = shl nsw i64 %314, 2
  %316 = add i64 %104, -1488
  %317 = add i64 %316, %315
  %318 = add i64 %133, 12
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  store i8 0, i8* %14, align 1
  %321 = and i32 %320, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %326 = icmp eq i32 %320, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %30, align 1
  %328 = lshr i32 %320, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v97 = select i1 %326, i64 28, i64 18
  %330 = add i64 %133, %.v97
  store i64 %330, i64* %3, align 8
  br i1 %326, label %block_.L_4009ea, label %block_4009e0

block_4009e0:                                     ; preds = %block_.L_4009ce
  %331 = add i64 %104, -1496
  %332 = add i64 %330, 10
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  store i32 1, i32* %333, align 4
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_4009ea

block_.L_4009ea:                                  ; preds = %block_4009e0, %block_.L_4009ce
  %334 = phi i64 [ %.pre8, %block_4009e0 ], [ %330, %block_.L_4009ce ]
  %335 = phi i64 [ %.pre7, %block_4009e0 ], [ %104, %block_.L_4009ce ]
  %336 = add i64 %335, -4
  %337 = add i64 %334, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RAX.i1508, align 8
  %341 = shl nsw i64 %340, 2
  %342 = add i64 %335, -1488
  %343 = add i64 %342, %341
  %344 = add i64 %334, 12
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RAX.i1508, align 8
  %348 = shl nsw i64 %347, 2
  %349 = add i64 %348, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %350 = add i64 %334, 19
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RCX.i2066, align 8
  %354 = add i64 %334, 23
  store i64 %354, i64* %3, align 8
  %355 = load i32, i32* %338, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RAX.i1508, align 8
  %357 = shl nsw i64 %356, 2
  %358 = add i64 %342, %357
  %359 = add i64 %334, 30
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  store i32 %352, i32* %360, align 4
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -4
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i1508, align 8
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %14, align 1
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  %378 = xor i32 %366, %367
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %39, align 1
  %390 = add i64 %363, 9
  store i64 %390, i64* %3, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, -219
  store i64 %392, i64* %3, align 8
  br label %block_.L_400936

block_.L_400a16:                                  ; preds = %block_.L_400936
  %393 = add i64 %60, -1496
  %394 = add i64 %89, 7
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  store i8 0, i8* %14, align 1
  %397 = and i32 %396, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %402 = icmp eq i32 %396, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %30, align 1
  %404 = lshr i32 %396, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %402, i64 3511, i64 13
  %406 = add i64 %89, %.v98
  store i64 %406, i64* %3, align 8
  br i1 %402, label %block_.L_4017cd, label %block_400a23

block_400a23:                                     ; preds = %block_.L_400a16
  %407 = add i64 %60, -1248
  %408 = add i64 %406, 10
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 0, i32* %409, align 4
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -1484
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 6
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RAX.i1508, align 8
  %417 = add i64 %410, -1244
  %418 = add i64 %412, 12
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 %415, i32* %419, align 4
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -1168
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 10
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %421 to i32*
  store i32 0, i32* %424, align 4
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -1104
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 10
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %426 to i32*
  store i32 1, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -4
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 7
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  store i32 1, i32* %434, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400a54

block_.L_400a54:                                  ; preds = %block_400a5e, %block_400a23
  %435 = phi i64 [ %517, %block_400a5e ], [ %.pre9, %block_400a23 ]
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -4
  %438 = add i64 %435, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = add i32 %440, -16
  %442 = icmp ult i32 %440, 16
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %21, align 1
  %449 = xor i32 %440, 16
  %450 = xor i32 %449, %441
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %27, align 1
  %454 = icmp eq i32 %441, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %30, align 1
  %456 = lshr i32 %441, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %33, align 1
  %458 = lshr i32 %440, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %458
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %39, align 1
  %463 = icmp ne i8 %457, 0
  %464 = xor i1 %463, %461
  %.v99 = select i1 %464, i64 10, i64 54
  %465 = add i64 %435, %.v99
  store i64 %465, i64* %3, align 8
  br i1 %464, label %block_400a5e, label %block_.L_400a8a

block_400a5e:                                     ; preds = %block_.L_400a54
  %466 = add i64 %465, 4
  store i64 %466, i64* %3, align 8
  %467 = load i32, i32* %439, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RAX.i1508, align 8
  %469 = shl nsw i64 %468, 2
  %470 = add i64 %436, -1168
  %471 = add i64 %470, %469
  %472 = add i64 %465, 15
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 -1, i32* %473, align 4
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -4
  %476 = load i64, i64* %3, align 8
  %477 = add i64 %476, 4
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %475 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %RAX.i1508, align 8
  %481 = shl nsw i64 %480, 2
  %482 = add i64 %474, -1104
  %483 = add i64 %482, %481
  %484 = add i64 %476, 15
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  store i32 0, i32* %485, align 4
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 3
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = add i32 %491, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i1508, align 8
  %494 = icmp eq i32 %491, -1
  %495 = icmp eq i32 %492, 0
  %496 = or i1 %494, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = and i32 %492, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  %503 = xor i32 %491, %492
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %27, align 1
  %507 = zext i1 %495 to i8
  store i8 %507, i8* %30, align 1
  %508 = lshr i32 %492, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %33, align 1
  %510 = lshr i32 %491, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %508
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %39, align 1
  %515 = add i64 %488, 9
  store i64 %515, i64* %3, align 8
  store i32 %492, i32* %490, align 4
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, -49
  store i64 %517, i64* %3, align 8
  br label %block_.L_400a54

block_.L_400a8a:                                  ; preds = %block_.L_400a54
  %518 = add i64 %436, -1328
  %519 = add i64 %465, 10
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 0, i32* %520, align 4
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -1324
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 10
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 0, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -1408
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 10
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  store i32 -1, i32* %530, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -1404
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 10
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 0, i32* %535, align 4
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -12
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 7
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %537 to i32*
  store i32 0, i32* %540, align 4
  %AL.i1776 = bitcast %union.anon* %53 to i8*
  %CL.i1777 = bitcast %union.anon* %54 to i8*
  %RDI.i1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1487 = getelementptr inbounds %union.anon, %union.anon* %541, i64 0, i32 0
  %DL.i1081 = bitcast %union.anon* %55 to i8*
  %.pre10 = load i64, i64* %RBP.i, align 8
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400ab9

block_.L_400ab9:                                  ; preds = %block_.L_400ffe, %block_.L_400a8a
  %542 = phi i64 [ %.pre11, %block_.L_400a8a ], [ %3121, %block_.L_400ffe ]
  %543 = phi i64 [ %.pre10, %block_.L_400a8a ], [ %3109, %block_.L_400ffe ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400a8a ], [ %MEMORY.21, %block_.L_400ffe ]
  %544 = add i64 %543, -12
  %545 = add i64 %542, 3
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i1508, align 8
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %14, align 1
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  %559 = xor i32 %547, %548
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %27, align 1
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %30, align 1
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %33, align 1
  %566 = lshr i32 %547, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %39, align 1
  %571 = add i64 %542, 9
  store i64 %571, i64* %3, align 8
  store i32 %548, i32* %546, align 4
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -12
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, 4
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %573 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RCX.i2066, align 8
  %579 = shl nsw i64 %578, 2
  %580 = add i64 %572, -1248
  %581 = add i64 %580, %579
  %582 = add i64 %574, 12
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, 1
  %586 = icmp ne i32 %584, -1
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %14, align 1
  %588 = and i32 %585, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  %593 = xor i32 %584, 16
  %594 = xor i32 %585, %593
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %27, align 1
  %598 = icmp eq i32 %585, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %30, align 1
  %600 = lshr i32 %585, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %33, align 1
  %602 = lshr i32 %584, 31
  %603 = xor i32 %602, 1
  %604 = xor i32 %600, %602
  %605 = add nuw nsw i32 %604, %603
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %39, align 1
  %.v100 = select i1 %598, i64 18, i64 192
  %608 = add i64 %574, %.v100
  store i64 %608, i64* %3, align 8
  br i1 %598, label %block_400ad4, label %block_.L_400b82

block_400ad4:                                     ; preds = %block_.L_400ab9
  %609 = add i64 %608, 4
  store i64 %609, i64* %3, align 8
  %610 = load i32, i32* %576, align 4
  %611 = sext i32 %610 to i64
  store i64 %611, i64* %RAX.i1508, align 8
  %612 = shl nsw i64 %611, 2
  %613 = add i64 %572, -1328
  %614 = add i64 %613, %612
  %615 = add i64 %608, 11
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RCX.i2066, align 8
  %619 = add i64 %608, 14
  store i64 %619, i64* %3, align 8
  %620 = load i32, i32* %576, align 4
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i2064, align 8
  %623 = icmp eq i32 %620, -1
  %624 = icmp eq i32 %621, 0
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %14, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i32 %620, %621
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %27, align 1
  %636 = zext i1 %624 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %33, align 1
  %639 = lshr i32 %620, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %637
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %39, align 1
  %644 = sext i32 %621 to i64
  store i64 %644, i64* %RAX.i1508, align 8
  %645 = shl nsw i64 %644, 2
  %646 = add i64 %613, %645
  %647 = add i64 %608, 27
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  store i32 %617, i32* %648, align 4
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -4
  %651 = load i64, i64* %3, align 8
  %652 = add i64 %651, 7
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %650 to i32*
  store i32 0, i32* %653, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400af6

block_.L_400af6:                                  ; preds = %block_400b0a, %block_400ad4
  %654 = phi i64 [ %903, %block_400b0a ], [ %.pre12, %block_400ad4 ]
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -4
  %657 = add i64 %654, 3
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX.i1508, align 8
  %661 = add i64 %655, -12
  %662 = add i64 %654, 7
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = sext i32 %664 to i64
  store i64 %665, i64* %RCX.i2066, align 8
  %666 = shl nsw i64 %665, 2
  %667 = add i64 %655, -1328
  %668 = add i64 %667, %666
  %669 = add i64 %654, 14
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sub i32 %659, %671
  %673 = icmp ult i32 %659, %671
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %672, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %671, %659
  %681 = xor i32 %680, %672
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %30, align 1
  %687 = lshr i32 %672, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %33, align 1
  %689 = lshr i32 %659, 31
  %690 = lshr i32 %671, 31
  %691 = xor i32 %690, %689
  %692 = xor i32 %687, %689
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %39, align 1
  %696 = icmp ne i8 %688, 0
  %697 = xor i1 %696, %694
  %.demorgan101 = or i1 %685, %697
  %.v102 = select i1 %.demorgan101, i64 20, i64 135
  %698 = add i64 %654, %.v102
  store i64 %698, i64* %3, align 8
  br i1 %.demorgan101, label %block_400b0a, label %block_.L_400b7d

block_400b0a:                                     ; preds = %block_.L_400af6
  %699 = add i64 %655, -1168
  store i64 %699, i64* %RAX.i1508, align 8
  %700 = add i64 %698, 11
  store i64 %700, i64* %3, align 8
  %701 = load i32, i32* %663, align 4
  %702 = sext i32 %701 to i64
  %703 = shl nsw i64 %702, 6
  store i64 %703, i64* %RCX.i2066, align 8
  %704 = lshr i64 %702, 57
  %705 = and i64 %704, 1
  %706 = add i64 %703, %699
  store i64 %706, i64* %RDX.i2064, align 8
  %707 = icmp ult i64 %706, %699
  %708 = icmp ult i64 %706, %703
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = trunc i64 %706 to i32
  %712 = and i32 %711, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i64 %699, %706
  %718 = lshr i64 %717, 4
  %719 = trunc i64 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %27, align 1
  %721 = icmp eq i64 %706, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %30, align 1
  %723 = lshr i64 %706, 63
  %724 = trunc i64 %723 to i8
  store i8 %724, i8* %33, align 1
  %725 = lshr i64 %699, 63
  %726 = xor i64 %723, %725
  %727 = xor i64 %723, %705
  %728 = add nuw nsw i64 %726, %727
  %729 = icmp eq i64 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %39, align 1
  %731 = add i64 %698, 25
  store i64 %731, i64* %3, align 8
  %732 = load i32, i32* %658, align 4
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RCX.i2066, align 8
  %734 = shl nsw i64 %733, 2
  %735 = add i64 %734, %706
  %736 = add i64 %698, 28
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RSI.i2060, align 8
  %740 = add i64 %698, 31
  store i64 %740, i64* %3, align 8
  %741 = load i32, i32* %663, align 4
  %742 = add i32 %741, 1
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RDI.i1529, align 8
  %744 = sext i32 %742 to i64
  %745 = shl nsw i64 %744, 6
  store i64 %745, i64* %RCX.i2066, align 8
  %746 = lshr i64 %744, 57
  %747 = and i64 %746, 1
  %748 = add i64 %745, %699
  store i64 %748, i64* %RDX.i2064, align 8
  %749 = icmp ult i64 %748, %699
  %750 = icmp ult i64 %748, %745
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %14, align 1
  %753 = trunc i64 %748 to i32
  %754 = and i32 %753, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %21, align 1
  %759 = xor i64 %699, %748
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %27, align 1
  %763 = icmp eq i64 %748, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %30, align 1
  %765 = lshr i64 %748, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %33, align 1
  %767 = xor i64 %765, %725
  %768 = xor i64 %765, %747
  %769 = add nuw nsw i64 %767, %768
  %770 = icmp eq i64 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %39, align 1
  %772 = add i64 %698, 51
  store i64 %772, i64* %3, align 8
  %773 = load i32, i32* %658, align 4
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RCX.i2066, align 8
  %775 = shl nsw i64 %774, 2
  %776 = add i64 %775, %748
  %777 = add i64 %698, 54
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  store i32 %738, i32* %778, align 4
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -12
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, 4
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = sext i32 %784 to i64
  %786 = shl nsw i64 %785, 6
  store i64 %786, i64* %RCX.i2066, align 8
  %787 = lshr i64 %785, 57
  %788 = and i64 %787, 1
  %789 = load i64, i64* %RAX.i1508, align 8
  %790 = add i64 %786, %789
  store i64 %790, i64* %RDX.i2064, align 8
  %791 = icmp ult i64 %790, %789
  %792 = icmp ult i64 %790, %786
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = trunc i64 %790 to i32
  %796 = and i32 %795, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %21, align 1
  %801 = xor i64 %789, %790
  %802 = lshr i64 %801, 4
  %803 = trunc i64 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %27, align 1
  %805 = icmp eq i64 %790, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i64 %790, 63
  %808 = trunc i64 %807 to i8
  store i8 %808, i8* %33, align 1
  %809 = lshr i64 %789, 63
  %810 = xor i64 %807, %809
  %811 = xor i64 %807, %788
  %812 = add nuw nsw i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %39, align 1
  %815 = add i64 %779, -4
  %816 = add i64 %781, 18
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RCX.i2066, align 8
  %820 = shl nsw i64 %819, 2
  %821 = add i64 %820, %790
  %822 = add i64 %781, 22
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = sext i32 %824 to i64
  store i64 %825, i64* %RCX.i2066, align 8
  %826 = shl nsw i64 %825, 2
  %827 = add i64 %826, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %828 = add i64 %781, 29
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RSI.i2060, align 8
  %832 = add i64 %781, 33
  store i64 %832, i64* %3, align 8
  %833 = load i32, i32* %783, align 4
  %834 = sext i32 %833 to i64
  %835 = shl nsw i64 %834, 6
  store i64 %835, i64* %RCX.i2066, align 8
  %836 = lshr i64 %834, 57
  %837 = and i64 %836, 1
  %838 = add i64 %835, %789
  store i64 %838, i64* %RAX.i1508, align 8
  %839 = icmp ult i64 %838, %789
  %840 = icmp ult i64 %838, %835
  %841 = or i1 %839, %840
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = trunc i64 %838 to i32
  %844 = and i32 %843, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  %849 = xor i64 %789, %838
  %850 = lshr i64 %849, 4
  %851 = trunc i64 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %27, align 1
  %853 = icmp eq i64 %838, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %30, align 1
  %855 = lshr i64 %838, 63
  %856 = trunc i64 %855 to i8
  store i8 %856, i8* %33, align 1
  %857 = xor i64 %855, %809
  %858 = xor i64 %855, %837
  %859 = add nuw nsw i64 %857, %858
  %860 = icmp eq i64 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %39, align 1
  %862 = load i64, i64* %RBP.i, align 8
  %863 = add i64 %862, -4
  %864 = add i64 %781, 44
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RCX.i2066, align 8
  %868 = shl nsw i64 %867, 2
  %869 = add i64 %868, %838
  %870 = add i64 %781, 47
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  store i32 %830, i32* %871, align 4
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -4
  %874 = load i64, i64* %3, align 8
  %875 = add i64 %874, 3
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %873 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, 1
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RAX.i1508, align 8
  %880 = icmp eq i32 %877, -1
  %881 = icmp eq i32 %878, 0
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %14, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i32 %877, %878
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %27, align 1
  %893 = zext i1 %881 to i8
  store i8 %893, i8* %30, align 1
  %894 = lshr i32 %878, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %33, align 1
  %896 = lshr i32 %877, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %894
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %39, align 1
  %901 = add i64 %874, 9
  store i64 %901, i64* %3, align 8
  store i32 %878, i32* %876, align 4
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, -130
  store i64 %903, i64* %3, align 8
  br label %block_.L_400af6

block_.L_400b7d:                                  ; preds = %block_.L_400af6
  %904 = add i64 %698, 701
  br label %block_.L_400e3a

block_.L_400b82:                                  ; preds = %block_.L_400ab9
  %905 = add i64 %608, 3
  store i64 %905, i64* %3, align 8
  %906 = load i32, i32* %576, align 4
  %907 = add i32 %906, -1
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i1508, align 8
  %909 = icmp eq i32 %906, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %14, align 1
  %911 = and i32 %907, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  %916 = xor i32 %906, %907
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %27, align 1
  %920 = icmp eq i32 %907, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %30, align 1
  %922 = lshr i32 %907, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %33, align 1
  %924 = lshr i32 %906, 31
  %925 = xor i32 %922, %924
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %39, align 1
  %929 = add i64 %572, -16
  %930 = add i64 %608, 9
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  store i32 %907, i32* %931, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400b8b

block_.L_400b8b:                                  ; preds = %block_.L_400bc7, %block_.L_400b82
  %932 = phi i64 [ %1055, %block_.L_400bc7 ], [ %.pre13, %block_.L_400b82 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %933 = load i64, i64* %RBP.i, align 8
  %934 = add i64 %933, -16
  %935 = add i64 %932, 8
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RDX.i2064, align 8
  %939 = shl nsw i64 %938, 2
  %940 = add i64 %933, -1248
  %941 = add i64 %940, %939
  %942 = add i64 %932, 16
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = add i32 %944, 1
  %946 = icmp ne i32 %944, -1
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %14, align 1
  %948 = and i32 %945, 255
  %949 = tail call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  store i8 %952, i8* %21, align 1
  %953 = xor i32 %944, 16
  %954 = xor i32 %945, %953
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %27, align 1
  %958 = icmp eq i32 %945, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %30, align 1
  %960 = lshr i32 %945, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %33, align 1
  %962 = lshr i32 %944, 31
  %963 = xor i32 %962, 1
  %964 = xor i32 %960, %962
  %965 = add nuw nsw i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %39, align 1
  %968 = add i64 %933, -2693
  %969 = add i64 %932, 22
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i8*
  store i8 0, i8* %970, align 1
  %971 = load i64, i64* %3, align 8
  %972 = load i8, i8* %30, align 1
  %973 = icmp eq i8 %972, 0
  %.v148 = select i1 %973, i64 19, i64 6
  %974 = add i64 %971, %.v148
  store i64 %974, i64* %3, align 8
  br i1 %973, label %block_.L_400bb4, label %block_400ba7

block_400ba7:                                     ; preds = %block_.L_400b8b
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -16
  %977 = add i64 %974, 4
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  store i8 0, i8* %14, align 1
  %980 = and i32 %979, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %985 = icmp eq i32 %979, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %30, align 1
  %987 = lshr i32 %979, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %989 = xor i1 %985, true
  %990 = icmp eq i8 %988, 0
  %991 = and i1 %990, %989
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %AL.i1776, align 1
  %993 = add i64 %975, -2693
  %994 = add i64 %974, 13
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i8*
  store i8 %992, i8* %995, align 1
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400bb4

block_.L_400bb4:                                  ; preds = %block_400ba7, %block_.L_400b8b
  %996 = phi i64 [ %.pre14, %block_400ba7 ], [ %974, %block_.L_400b8b ]
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -2693
  %999 = add i64 %996, 6
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i8*
  %1001 = load i8, i8* %1000, align 1
  store i8 %1001, i8* %AL.i1776, align 1
  %1002 = and i8 %1001, 1
  store i8 0, i8* %14, align 1
  %1003 = zext i8 %1002 to i32
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i8 %1002, 1
  store i8 %1007, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1008 = icmp eq i8 %1007, 0
  %.v149 = select i1 %1008, i64 19, i64 14
  %1009 = add i64 %996, %.v149
  store i64 %1009, i64* %3, align 8
  %1010 = add i64 %997, -16
  br i1 %1008, label %block_.L_400bc7, label %block_400bc2

block_400bc2:                                     ; preds = %block_.L_400bb4
  %1011 = add i64 %1009, 23
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  store i8 0, i8* %14, align 1
  %1014 = and i32 %1013, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1019 = icmp eq i32 %1013, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %30, align 1
  %1021 = lshr i32 %1013, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1023 = icmp ne i8 %1022, 0
  %1024 = or i1 %1019, %1023
  %.v150 = select i1 %1024, i64 116, i64 29
  %1025 = add i64 %1009, %.v150
  store i64 %1025, i64* %3, align 8
  br i1 %1024, label %block_.L_400c36, label %block_400bdf

block_.L_400bc7:                                  ; preds = %block_.L_400bb4
  %1026 = add i64 %1009, 3
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1010 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = add i32 %1028, -1
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX.i1508, align 8
  %1031 = icmp ne i32 %1028, 0
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %14, align 1
  %1033 = and i32 %1029, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %21, align 1
  %1038 = xor i32 %1028, 16
  %1039 = xor i32 %1029, %1038
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %27, align 1
  %1043 = icmp eq i32 %1029, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %30, align 1
  %1045 = lshr i32 %1029, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %33, align 1
  %1047 = lshr i32 %1028, 31
  %1048 = xor i32 %1045, %1047
  %1049 = xor i32 %1045, 1
  %1050 = add nuw nsw i32 %1048, %1049
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %39, align 1
  %1053 = add i64 %1009, 9
  store i64 %1053, i64* %3, align 8
  store i32 %1029, i32* %1027, align 4
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, -69
  store i64 %1055, i64* %3, align 8
  br label %block_.L_400b8b

block_400bdf:                                     ; preds = %block_400bc2
  %1056 = add i64 %1025, 3
  store i64 %1056, i64* %3, align 8
  %1057 = load i32, i32* %1012, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i1508, align 8
  %1059 = add i64 %997, -8
  %1060 = add i64 %1025, 6
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  store i32 %1057, i32* %1061, align 4
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400be5

block_.L_400be5:                                  ; preds = %block_.L_400c22, %block_400bdf
  %1062 = phi i64 [ %1199, %block_.L_400c22 ], [ %.pre16, %block_400bdf ]
  %1063 = phi i64 [ %1181, %block_.L_400c22 ], [ %.pre15, %block_400bdf ]
  %1064 = add i64 %1063, -8
  %1065 = add i64 %1062, 3
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, -1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i1508, align 8
  %1070 = icmp ne i32 %1067, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %14, align 1
  %1072 = and i32 %1068, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %21, align 1
  %1077 = xor i32 %1067, 16
  %1078 = xor i32 %1068, %1077
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %27, align 1
  %1082 = icmp eq i32 %1068, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %30, align 1
  %1084 = lshr i32 %1068, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %33, align 1
  %1086 = lshr i32 %1067, 31
  %1087 = xor i32 %1084, %1086
  %1088 = xor i32 %1084, 1
  %1089 = add nuw nsw i32 %1087, %1088
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %39, align 1
  %1092 = add i64 %1062, 9
  store i64 %1092, i64* %3, align 8
  store i32 %1068, i32* %1066, align 4
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -8
  %1095 = load i64, i64* %3, align 8
  %1096 = add i64 %1095, 4
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i2066, align 8
  %1100 = shl nsw i64 %1099, 2
  %1101 = add i64 %1093, -1248
  %1102 = add i64 %1101, %1100
  %1103 = add i64 %1095, 12
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = add i32 %1105, 1
  %1107 = icmp ne i32 %1105, -1
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %14, align 1
  %1109 = and i32 %1106, 255
  %1110 = tail call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  store i8 %1113, i8* %21, align 1
  %1114 = xor i32 %1105, 16
  %1115 = xor i32 %1106, %1114
  %1116 = lshr i32 %1115, 4
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %27, align 1
  %1119 = icmp eq i32 %1106, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %30, align 1
  %1121 = lshr i32 %1106, 31
  %1122 = trunc i32 %1121 to i8
  store i8 %1122, i8* %33, align 1
  %1123 = lshr i32 %1105, 31
  %1124 = xor i32 %1123, 1
  %1125 = xor i32 %1121, %1123
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %39, align 1
  %.v151 = select i1 %1119, i64 52, i64 18
  %1129 = add i64 %1095, %.v151
  store i64 %1129, i64* %3, align 8
  br i1 %1119, label %block_.L_400c22, label %block_400c00

block_400c00:                                     ; preds = %block_.L_400be5
  %1130 = add i64 %1093, -16
  %1131 = add i64 %1129, 4
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RAX.i1508, align 8
  %1135 = shl nsw i64 %1134, 2
  %1136 = add i64 %1093, -1408
  %1137 = add i64 %1136, %1135
  %1138 = add i64 %1129, 11
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RCX.i2066, align 8
  %1142 = add i64 %1129, 15
  store i64 %1142, i64* %3, align 8
  %1143 = load i32, i32* %1097, align 4
  %1144 = sext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i1508, align 8
  %1145 = shl nsw i64 %1144, 2
  %1146 = add i64 %1136, %1145
  %1147 = add i64 %1129, 22
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = sub i32 %1140, %1149
  %1151 = icmp ult i32 %1140, %1149
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %14, align 1
  %1153 = and i32 %1150, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %21, align 1
  %1158 = xor i32 %1149, %1140
  %1159 = xor i32 %1158, %1150
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %27, align 1
  %1163 = icmp eq i32 %1150, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %30, align 1
  %1165 = lshr i32 %1150, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %33, align 1
  %1167 = lshr i32 %1140, 31
  %1168 = lshr i32 %1149, 31
  %1169 = xor i32 %1168, %1167
  %1170 = xor i32 %1165, %1167
  %1171 = add nuw nsw i32 %1170, %1169
  %1172 = icmp eq i32 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %39, align 1
  %1174 = icmp ne i8 %1166, 0
  %1175 = xor i1 %1174, %1172
  %.v152 = select i1 %1175, i64 28, i64 34
  %1176 = add i64 %1129, %.v152
  store i64 %1176, i64* %3, align 8
  br i1 %1175, label %block_400c1c, label %block_.L_400c22

block_400c1c:                                     ; preds = %block_400c00
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %1097, align 4
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i1508, align 8
  %1180 = add i64 %1176, 6
  store i64 %1180, i64* %3, align 8
  store i32 %1178, i32* %1132, align 4
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400c22

block_.L_400c22:                                  ; preds = %block_400c00, %block_400c1c, %block_.L_400be5
  %1181 = phi i64 [ %.pre18, %block_400c1c ], [ %1093, %block_400c00 ], [ %1093, %block_.L_400be5 ]
  %1182 = phi i64 [ %.pre17, %block_400c1c ], [ %1176, %block_400c00 ], [ %1129, %block_.L_400be5 ]
  %1183 = add i64 %1181, -8
  %1184 = add i64 %1182, 9
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  store i8 0, i8* %14, align 1
  %1187 = and i32 %1186, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1192 = icmp eq i32 %1186, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %30, align 1
  %1194 = lshr i32 %1186, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1196 = xor i1 %1192, true
  %1197 = icmp eq i8 %1195, 0
  %1198 = and i1 %1197, %1196
  %.v153 = select i1 %1198, i64 -61, i64 15
  %1199 = add i64 %1182, %.v153
  store i64 %1199, i64* %3, align 8
  br i1 %1198, label %block_.L_400be5, label %block_400c31

block_400c31:                                     ; preds = %block_.L_400c22
  %1200 = add i64 %1199, 5
  store i64 %1200, i64* %3, align 8
  br label %block_.L_400c36

block_.L_400c36:                                  ; preds = %block_400c31, %block_400bc2
  %1201 = phi i64 [ %1200, %block_400c31 ], [ %1025, %block_400bc2 ]
  %1202 = phi i64 [ %1181, %block_400c31 ], [ %997, %block_400bc2 ]
  %1203 = add i64 %1202, -12
  %1204 = add i64 %1201, 4
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = sext i32 %1206 to i64
  store i64 %1207, i64* %RAX.i1508, align 8
  %1208 = shl nsw i64 %1207, 2
  %1209 = add i64 %1202, -1328
  %1210 = add i64 %1209, %1208
  %1211 = add i64 %1201, 11
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = zext i32 %1213 to i64
  store i64 %1214, i64* %RCX.i2066, align 8
  %1215 = add i64 %1202, -16
  %1216 = add i64 %1201, 15
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = sext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i1508, align 8
  %1220 = shl nsw i64 %1219, 2
  %1221 = add i64 %1209, %1220
  %1222 = add i64 %1201, 22
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RDX.i2064, align 8
  %1226 = add i64 %1201, 25
  store i64 %1226, i64* %3, align 8
  %1227 = load i32, i32* %1205, align 4
  %1228 = add i32 %1227, %1224
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RDX.i2064, align 8
  %1230 = icmp ult i32 %1228, %1224
  %1231 = icmp ult i32 %1228, %1227
  %1232 = or i1 %1230, %1231
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %14, align 1
  %1234 = and i32 %1228, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  %1239 = xor i32 %1227, %1224
  %1240 = xor i32 %1239, %1228
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %27, align 1
  %1244 = icmp eq i32 %1228, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %30, align 1
  %1246 = lshr i32 %1228, 31
  %1247 = trunc i32 %1246 to i8
  store i8 %1247, i8* %33, align 1
  %1248 = lshr i32 %1224, 31
  %1249 = lshr i32 %1227, 31
  %1250 = xor i32 %1246, %1248
  %1251 = xor i32 %1246, %1249
  %1252 = add nuw nsw i32 %1250, %1251
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %39, align 1
  %1255 = add i64 %1201, 28
  store i64 %1255, i64* %3, align 8
  %1256 = load i32, i32* %1217, align 4
  %1257 = sub i32 %1228, %1256
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RDX.i2064, align 8
  %1259 = lshr i32 %1257, 31
  %1260 = sub i32 %1213, %1257
  %1261 = icmp ult i32 %1213, %1257
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %14, align 1
  %1263 = and i32 %1260, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i32 %1257, %1213
  %1269 = xor i32 %1268, %1260
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %27, align 1
  %1273 = icmp eq i32 %1260, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %30, align 1
  %1275 = lshr i32 %1260, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %33, align 1
  %1277 = lshr i32 %1213, 31
  %1278 = xor i32 %1259, %1277
  %1279 = xor i32 %1275, %1277
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %39, align 1
  %1283 = icmp ne i8 %1276, 0
  %1284 = xor i1 %1283, %1281
  %1285 = or i1 %1273, %1284
  %.v154 = select i1 %1285, i64 68, i64 36
  %1286 = add i64 %1201, %.v154
  store i64 %1286, i64* %3, align 8
  %1287 = load i64, i64* %RBP.i, align 8
  br i1 %1285, label %block_.L_400c7a, label %block_400c5a

block_400c5a:                                     ; preds = %block_.L_400c36
  %1288 = add i64 %1287, -12
  %1289 = add i64 %1286, 4
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = sext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i1508, align 8
  %1293 = shl nsw i64 %1292, 2
  %1294 = add i64 %1287, -1328
  %1295 = add i64 %1294, %1293
  %1296 = add i64 %1286, 11
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RCX.i2066, align 8
  %1300 = add i64 %1286, 14
  store i64 %1300, i64* %3, align 8
  %1301 = load i32, i32* %1290, align 4
  %1302 = add i32 %1301, 1
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RDX.i2064, align 8
  %1304 = icmp eq i32 %1301, -1
  %1305 = icmp eq i32 %1302, 0
  %1306 = or i1 %1304, %1305
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %14, align 1
  %1308 = and i32 %1302, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %21, align 1
  %1313 = xor i32 %1301, %1302
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %27, align 1
  %1317 = zext i1 %1305 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1302, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  %1320 = lshr i32 %1301, 31
  %1321 = xor i32 %1318, %1320
  %1322 = add nuw nsw i32 %1321, %1318
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %39, align 1
  %1325 = sext i32 %1302 to i64
  store i64 %1325, i64* %RAX.i1508, align 8
  %1326 = shl nsw i64 %1325, 2
  %1327 = add i64 %1294, %1326
  %1328 = add i64 %1286, 27
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  store i32 %1298, i32* %1329, align 4
  %1330 = load i64, i64* %3, align 8
  %1331 = add i64 %1330, 38
  store i64 %1331, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c7a:                                  ; preds = %block_.L_400c36
  %1332 = add i64 %1287, -16
  %1333 = add i64 %1286, 4
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = sext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i1508, align 8
  %1337 = shl nsw i64 %1336, 2
  %1338 = add i64 %1287, -1328
  %1339 = add i64 %1338, %1337
  %1340 = add i64 %1286, 11
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RCX.i2066, align 8
  %1344 = add i64 %1287, -12
  %1345 = add i64 %1286, 14
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = add i32 %1347, %1342
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i2066, align 8
  %1350 = icmp ult i32 %1348, %1342
  %1351 = icmp ult i32 %1348, %1347
  %1352 = or i1 %1350, %1351
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %14, align 1
  %1354 = and i32 %1348, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %21, align 1
  %1359 = xor i32 %1347, %1342
  %1360 = xor i32 %1359, %1348
  %1361 = lshr i32 %1360, 4
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  store i8 %1363, i8* %27, align 1
  %1364 = icmp eq i32 %1348, 0
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %30, align 1
  %1366 = lshr i32 %1348, 31
  %1367 = trunc i32 %1366 to i8
  store i8 %1367, i8* %33, align 1
  %1368 = lshr i32 %1342, 31
  %1369 = lshr i32 %1347, 31
  %1370 = xor i32 %1366, %1368
  %1371 = xor i32 %1366, %1369
  %1372 = add nuw nsw i32 %1370, %1371
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %39, align 1
  %1375 = add i64 %1286, 17
  store i64 %1375, i64* %3, align 8
  %1376 = load i32, i32* %1334, align 4
  %1377 = sub i32 %1348, %1376
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RCX.i2066, align 8
  %1379 = icmp ult i32 %1348, %1376
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %14, align 1
  %1381 = and i32 %1377, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %21, align 1
  %1386 = xor i32 %1376, %1348
  %1387 = xor i32 %1386, %1377
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %27, align 1
  %1391 = icmp eq i32 %1377, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %30, align 1
  %1393 = lshr i32 %1377, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %33, align 1
  %1395 = lshr i32 %1376, 31
  %1396 = xor i32 %1395, %1366
  %1397 = xor i32 %1393, %1366
  %1398 = add nuw nsw i32 %1397, %1396
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %39, align 1
  %1401 = add i64 %1286, 20
  store i64 %1401, i64* %3, align 8
  %1402 = load i32, i32* %1346, align 4
  %1403 = add i32 %1402, 1
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RDX.i2064, align 8
  %1405 = icmp eq i32 %1402, -1
  %1406 = icmp eq i32 %1403, 0
  %1407 = or i1 %1405, %1406
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %14, align 1
  %1409 = and i32 %1403, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %21, align 1
  %1414 = xor i32 %1402, %1403
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %27, align 1
  %1418 = zext i1 %1406 to i8
  store i8 %1418, i8* %30, align 1
  %1419 = lshr i32 %1403, 31
  %1420 = trunc i32 %1419 to i8
  store i8 %1420, i8* %33, align 1
  %1421 = lshr i32 %1402, 31
  %1422 = xor i32 %1419, %1421
  %1423 = add nuw nsw i32 %1422, %1419
  %1424 = icmp eq i32 %1423, 2
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %39, align 1
  %1426 = sext i32 %1403 to i64
  store i64 %1426, i64* %RAX.i1508, align 8
  %1427 = load i64, i64* %RBP.i, align 8
  %1428 = shl nsw i64 %1426, 2
  %1429 = add i64 %1427, -1328
  %1430 = add i64 %1429, %1428
  %1431 = add i64 %1286, 33
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  store i32 %1377, i32* %1432, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c9b:                                  ; preds = %block_.L_400c7a, %block_400c5a
  %1433 = phi i64 [ %.pre19, %block_.L_400c7a ], [ %1331, %block_400c5a ]
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -4
  %1436 = add i64 %1433, 7
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  store i32 0, i32* %1437, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400ca2

block_.L_400ca2:                                  ; preds = %block_400cac, %block_.L_400c9b
  %1438 = phi i64 [ %1543, %block_400cac ], [ %.pre20, %block_.L_400c9b ]
  %1439 = load i64, i64* %RBP.i, align 8
  %1440 = add i64 %1439, -4
  %1441 = add i64 %1438, 4
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = add i32 %1443, -16
  %1445 = icmp ult i32 %1443, 16
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %14, align 1
  %1447 = and i32 %1444, 255
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %21, align 1
  %1452 = xor i32 %1443, 16
  %1453 = xor i32 %1452, %1444
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %27, align 1
  %1457 = icmp eq i32 %1444, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %30, align 1
  %1459 = lshr i32 %1444, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %33, align 1
  %1461 = lshr i32 %1443, 31
  %1462 = xor i32 %1459, %1461
  %1463 = add nuw nsw i32 %1462, %1461
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %39, align 1
  %1466 = icmp ne i8 %1460, 0
  %1467 = xor i1 %1466, %1464
  %.v155 = select i1 %1467, i64 10, i64 58
  %1468 = add i64 %1438, %.v155
  store i64 %1468, i64* %3, align 8
  br i1 %1467, label %block_400cac, label %block_.L_400cdc

block_400cac:                                     ; preds = %block_.L_400ca2
  %1469 = add i64 %1439, -1168
  store i64 %1469, i64* %RAX.i1508, align 8
  %1470 = add i64 %1439, -12
  %1471 = add i64 %1468, 10
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = add i32 %1473, 1
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RCX.i2066, align 8
  %1476 = sext i32 %1474 to i64
  %1477 = shl nsw i64 %1476, 6
  store i64 %1477, i64* %RDX.i2064, align 8
  %1478 = lshr i64 %1476, 57
  %1479 = and i64 %1478, 1
  %1480 = add i64 %1477, %1469
  store i64 %1480, i64* %RAX.i1508, align 8
  %1481 = icmp ult i64 %1480, %1469
  %1482 = icmp ult i64 %1480, %1477
  %1483 = or i1 %1481, %1482
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %14, align 1
  %1485 = trunc i64 %1480 to i32
  %1486 = and i32 %1485, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %21, align 1
  %1491 = xor i64 %1469, %1480
  %1492 = lshr i64 %1491, 4
  %1493 = trunc i64 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %27, align 1
  %1495 = icmp eq i64 %1480, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %30, align 1
  %1497 = lshr i64 %1480, 63
  %1498 = trunc i64 %1497 to i8
  store i8 %1498, i8* %33, align 1
  %1499 = lshr i64 %1469, 63
  %1500 = xor i64 %1497, %1499
  %1501 = xor i64 %1497, %1479
  %1502 = add nuw nsw i64 %1500, %1501
  %1503 = icmp eq i64 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %39, align 1
  %1505 = add i64 %1468, 27
  store i64 %1505, i64* %3, align 8
  %1506 = load i32, i32* %1442, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i2064, align 8
  %1508 = shl nsw i64 %1507, 2
  %1509 = add i64 %1508, %1480
  %1510 = add i64 %1468, 34
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  store i32 0, i32* %1511, align 4
  %1512 = load i64, i64* %RBP.i, align 8
  %1513 = add i64 %1512, -4
  %1514 = load i64, i64* %3, align 8
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = add i32 %1517, 1
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RAX.i1508, align 8
  %1520 = icmp eq i32 %1517, -1
  %1521 = icmp eq i32 %1518, 0
  %1522 = or i1 %1520, %1521
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %14, align 1
  %1524 = and i32 %1518, 255
  %1525 = tail call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %21, align 1
  %1529 = xor i32 %1517, %1518
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %27, align 1
  %1533 = zext i1 %1521 to i8
  store i8 %1533, i8* %30, align 1
  %1534 = lshr i32 %1518, 31
  %1535 = trunc i32 %1534 to i8
  store i8 %1535, i8* %33, align 1
  %1536 = lshr i32 %1517, 31
  %1537 = xor i32 %1534, %1536
  %1538 = add nuw nsw i32 %1537, %1534
  %1539 = icmp eq i32 %1538, 2
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %39, align 1
  %1541 = add i64 %1514, 9
  store i64 %1541, i64* %3, align 8
  store i32 %1518, i32* %1516, align 4
  %1542 = load i64, i64* %3, align 8
  %1543 = add i64 %1542, -53
  store i64 %1543, i64* %3, align 8
  br label %block_.L_400ca2

block_.L_400cdc:                                  ; preds = %block_.L_400ca2
  %1544 = add i64 %1468, 7
  store i64 %1544, i64* %3, align 8
  store i32 0, i32* %1442, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_400ce3

block_.L_400ce3:                                  ; preds = %block_.L_400d91, %block_.L_400cdc
  %1545 = phi i64 [ %.pre21, %block_.L_400cdc ], [ %1969, %block_.L_400d91 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.5, %block_.L_400cdc ], [ %MEMORY.15, %block_.L_400d91 ]
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -4
  %1548 = add i64 %1545, 3
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RAX.i1508, align 8
  %1552 = add i64 %1546, -16
  %1553 = add i64 %1545, 7
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  store i64 %1556, i64* %RCX.i2066, align 8
  %1557 = shl nsw i64 %1556, 2
  %1558 = add i64 %1546, -1328
  %1559 = add i64 %1558, %1557
  %1560 = add i64 %1545, 14
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = sub i32 %1550, %1562
  %1564 = icmp ult i32 %1550, %1562
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %14, align 1
  %1566 = and i32 %1563, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %21, align 1
  %1571 = xor i32 %1562, %1550
  %1572 = xor i32 %1571, %1563
  %1573 = lshr i32 %1572, 4
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %27, align 1
  %1576 = icmp eq i32 %1563, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %30, align 1
  %1578 = lshr i32 %1563, 31
  %1579 = trunc i32 %1578 to i8
  store i8 %1579, i8* %33, align 1
  %1580 = lshr i32 %1550, 31
  %1581 = lshr i32 %1562, 31
  %1582 = xor i32 %1581, %1580
  %1583 = xor i32 %1578, %1580
  %1584 = add nuw nsw i32 %1583, %1582
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %39, align 1
  %1587 = icmp ne i8 %1579, 0
  %1588 = xor i1 %1587, %1585
  %.demorgan156 = or i1 %1576, %1588
  %.v157 = select i1 %.demorgan156, i64 20, i64 193
  %1589 = add i64 %1545, %.v157
  store i64 %1589, i64* %3, align 8
  br i1 %.demorgan156, label %block_400cf7, label %block_.L_400da4

block_400cf7:                                     ; preds = %block_.L_400ce3
  %1590 = add i64 %1546, -1168
  store i64 %1590, i64* %RAX.i1508, align 8
  %1591 = add i64 %1589, 11
  store i64 %1591, i64* %3, align 8
  %1592 = load i32, i32* %1554, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = shl nsw i64 %1593, 6
  store i64 %1594, i64* %RCX.i2066, align 8
  %1595 = lshr i64 %1593, 57
  %1596 = and i64 %1595, 1
  %1597 = add i64 %1594, %1590
  store i64 %1597, i64* %RAX.i1508, align 8
  %1598 = icmp ult i64 %1597, %1590
  %1599 = icmp ult i64 %1597, %1594
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %14, align 1
  %1602 = trunc i64 %1597 to i32
  %1603 = and i32 %1602, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %21, align 1
  %1608 = xor i64 %1590, %1597
  %1609 = lshr i64 %1608, 4
  %1610 = trunc i64 %1609 to i8
  %1611 = and i8 %1610, 1
  store i8 %1611, i8* %27, align 1
  %1612 = icmp eq i64 %1597, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %30, align 1
  %1614 = lshr i64 %1597, 63
  %1615 = trunc i64 %1614 to i8
  store i8 %1615, i8* %33, align 1
  %1616 = lshr i64 %1590, 63
  %1617 = xor i64 %1614, %1616
  %1618 = xor i64 %1614, %1596
  %1619 = add nuw nsw i64 %1617, %1618
  %1620 = icmp eq i64 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %39, align 1
  %1622 = add i64 %1589, 22
  store i64 %1622, i64* %3, align 8
  %1623 = load i32, i32* %1549, align 4
  %1624 = sext i32 %1623 to i64
  store i64 %1624, i64* %RCX.i2066, align 8
  %1625 = shl nsw i64 %1624, 2
  %1626 = add i64 %1625, %1597
  %1627 = add i64 %1589, 26
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = add i32 %1629, 1
  %1631 = icmp ne i32 %1629, -1
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %14, align 1
  %1633 = and i32 %1630, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %21, align 1
  %1638 = xor i32 %1629, 16
  %1639 = xor i32 %1630, %1638
  %1640 = lshr i32 %1639, 4
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %27, align 1
  %1643 = icmp eq i32 %1630, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %30, align 1
  %1645 = lshr i32 %1630, 31
  %1646 = trunc i32 %1645 to i8
  store i8 %1646, i8* %33, align 1
  %1647 = lshr i32 %1629, 31
  %1648 = xor i32 %1647, 1
  %1649 = xor i32 %1645, %1647
  %1650 = add nuw nsw i32 %1649, %1648
  %1651 = icmp eq i32 %1650, 2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %39, align 1
  %.v158 = select i1 %1643, i64 154, i64 32
  %1653 = add i64 %1589, %.v158
  store i64 %1653, i64* %3, align 8
  br i1 %1643, label %block_.L_400d91, label %block_400d17

block_400d17:                                     ; preds = %block_400cf7
  store i64 %1590, i64* %RAX.i1508, align 8
  store i64 255, i64* %RCX.i2066, align 8
  %1654 = add i64 %1546, -12
  %1655 = add i64 %1653, 16
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = sext i32 %1657 to i64
  store i64 %1658, i64* %RDX.i2064, align 8
  %1659 = shl nsw i64 %1658, 2
  %1660 = add i64 %1546, -1248
  %1661 = add i64 %1660, %1659
  %1662 = add i64 %1653, 23
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = add i32 %1664, 255
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RSI.i2060, align 8
  %1667 = icmp ugt i32 %1664, -256
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %14, align 1
  %1669 = and i32 %1665, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  %1674 = xor i32 %1664, 16
  %1675 = xor i32 %1674, %1665
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  store i8 %1678, i8* %27, align 1
  %1679 = icmp eq i32 %1665, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %30, align 1
  %1681 = lshr i32 %1665, 31
  %1682 = trunc i32 %1681 to i8
  store i8 %1682, i8* %33, align 1
  %1683 = lshr i32 %1664, 31
  %1684 = xor i32 %1681, %1683
  %1685 = add nuw nsw i32 %1684, %1681
  %1686 = icmp eq i32 %1685, 2
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %39, align 1
  %1688 = add i64 %1653, 33
  store i64 %1688, i64* %3, align 8
  %1689 = load i32, i32* %1554, align 4
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RDX.i2064, align 8
  %1691 = shl nsw i64 %1690, 2
  %1692 = add i64 %1660, %1691
  %1693 = add i64 %1653, 40
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = sub i32 %1665, %1695
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RSI.i2060, align 8
  %1698 = icmp ult i32 %1665, %1695
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %14, align 1
  %1700 = and i32 %1696, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %21, align 1
  %1705 = xor i32 %1695, %1665
  %1706 = xor i32 %1705, %1696
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %27, align 1
  %1710 = icmp eq i32 %1696, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %30, align 1
  %1712 = lshr i32 %1696, 31
  %1713 = trunc i32 %1712 to i8
  store i8 %1713, i8* %33, align 1
  %1714 = lshr i32 %1695, 31
  %1715 = xor i32 %1714, %1681
  %1716 = xor i32 %1712, %1681
  %1717 = add nuw nsw i32 %1716, %1715
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %39, align 1
  %1720 = add i64 %1653, 44
  store i64 %1720, i64* %3, align 8
  %1721 = load i32, i32* %1554, align 4
  %1722 = sext i32 %1721 to i64
  %1723 = shl nsw i64 %1722, 6
  store i64 %1723, i64* %RDX.i2064, align 8
  %1724 = lshr i64 %1722, 57
  %1725 = and i64 %1724, 1
  %1726 = add i64 %1723, %1590
  store i64 %1726, i64* %RDI.i1529, align 8
  %1727 = icmp ult i64 %1726, %1590
  %1728 = icmp ult i64 %1726, %1723
  %1729 = or i1 %1727, %1728
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %14, align 1
  %1731 = trunc i64 %1726 to i32
  %1732 = and i32 %1731, 255
  %1733 = tail call i32 @llvm.ctpop.i32(i32 %1732)
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  %1736 = xor i8 %1735, 1
  store i8 %1736, i8* %21, align 1
  %1737 = xor i64 %1590, %1726
  %1738 = lshr i64 %1737, 4
  %1739 = trunc i64 %1738 to i8
  %1740 = and i8 %1739, 1
  store i8 %1740, i8* %27, align 1
  %1741 = icmp eq i64 %1726, 0
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %30, align 1
  %1743 = lshr i64 %1726, 63
  %1744 = trunc i64 %1743 to i8
  store i8 %1744, i8* %33, align 1
  %1745 = xor i64 %1743, %1616
  %1746 = xor i64 %1743, %1725
  %1747 = add nuw nsw i64 %1745, %1746
  %1748 = icmp eq i64 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %39, align 1
  %1750 = add i64 %1653, 58
  store i64 %1750, i64* %3, align 8
  %1751 = load i32, i32* %1549, align 4
  %1752 = sext i32 %1751 to i64
  store i64 %1752, i64* %RDX.i2064, align 8
  %1753 = shl nsw i64 %1752, 2
  %1754 = add i64 %1753, %1726
  %1755 = add i64 %1653, 61
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = add i32 %1757, %1696
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RSI.i2060, align 8
  %1760 = icmp ult i32 %1758, %1696
  %1761 = icmp ult i32 %1758, %1757
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %14, align 1
  %1764 = and i32 %1758, 255
  %1765 = tail call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  store i8 %1768, i8* %21, align 1
  %1769 = xor i32 %1757, %1696
  %1770 = xor i32 %1769, %1758
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  store i8 %1773, i8* %27, align 1
  %1774 = icmp eq i32 %1758, 0
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %30, align 1
  %1776 = lshr i32 %1758, 31
  %1777 = trunc i32 %1776 to i8
  store i8 %1777, i8* %33, align 1
  %1778 = lshr i32 %1757, 31
  %1779 = xor i32 %1776, %1712
  %1780 = xor i32 %1776, %1778
  %1781 = add nuw nsw i32 %1779, %1780
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %39, align 1
  %1784 = load i64, i64* %RBP.i, align 8
  %1785 = add i64 %1784, -2704
  %1786 = add i64 %1653, 68
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i64*
  store i64 %1590, i64* %1787, align 8
  %1788 = load i32, i32* %ESI.i2054, align 4
  %1789 = zext i32 %1788 to i64
  %1790 = load i64, i64* %3, align 8
  store i64 %1789, i64* %RAX.i1508, align 8
  %1791 = sext i32 %1788 to i64
  %1792 = lshr i64 %1791, 32
  store i64 %1792, i64* %57, align 8
  %1793 = load i32, i32* %ECX.i1986, align 4
  %1794 = add i64 %1790, 5
  store i64 %1794, i64* %3, align 8
  %1795 = sext i32 %1793 to i64
  %1796 = shl nuw i64 %1792, 32
  %1797 = or i64 %1796, %1789
  %1798 = sdiv i64 %1797, %1795
  %1799 = shl i64 %1798, 32
  %1800 = ashr exact i64 %1799, 32
  %1801 = icmp eq i64 %1798, %1800
  br i1 %1801, label %1804, label %1802

; <label>:1802:                                   ; preds = %block_400d17
  %1803 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1794, %struct.Memory* %MEMORY.14)
  %.pre22 = load i32, i32* %EDX.i2048, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1506

; <label>:1804:                                   ; preds = %block_400d17
  %1805 = srem i64 %1797, %1795
  %1806 = and i64 %1798, 4294967295
  store i64 %1806, i64* %58, align 8
  %1807 = and i64 %1805, 4294967295
  store i64 %1807, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1808 = trunc i64 %1805 to i32
  br label %routine_idivl__ecx.exit1506

routine_idivl__ecx.exit1506:                      ; preds = %1804, %1802
  %1809 = phi i64 [ %.pre23, %1802 ], [ %1794, %1804 ]
  %1810 = phi i32 [ %.pre22, %1802 ], [ %1808, %1804 ]
  %1811 = phi %struct.Memory* [ %1803, %1802 ], [ %MEMORY.14, %1804 ]
  %1812 = sext i32 %1810 to i64
  store i64 %1812, i64* %RDI.i1529, align 8
  %1813 = shl nsw i64 %1812, 2
  %1814 = add i64 %1813, ptrtoint (%G_0x603880___rdi_4__type* @G_0x603880___rdi_4_ to i64)
  %1815 = add i64 %1809, 10
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = zext i32 %1817 to i64
  store i64 %1818, i64* %RCX.i2066, align 8
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -12
  %1821 = add i64 %1809, 13
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = add i32 %1823, 1
  %1825 = zext i32 %1824 to i64
  store i64 %1825, i64* %RDX.i2064, align 8
  %1826 = sext i32 %1824 to i64
  %1827 = shl nsw i64 %1826, 6
  store i64 %1827, i64* %RDI.i1529, align 8
  %.lobit = lshr i32 %1824, 31
  %1828 = trunc i32 %.lobit to i8
  store i8 %1828, i8* %14, align 1
  %1829 = trunc i64 %1827 to i32
  %1830 = and i32 %1829, 192
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830)
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1835 = icmp eq i32 %1824, 0
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %30, align 1
  %1837 = lshr i64 %1826, 57
  %1838 = and i64 %1837, 1
  %1839 = trunc i64 %1838 to i8
  store i8 %1839, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1840 = add i64 %1819, -2704
  %1841 = add i64 %1809, 30
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i64*
  %1843 = load i64, i64* %1842, align 8
  %1844 = add i64 %1827, %1843
  store i64 %1844, i64* %R8.i1487, align 8
  %1845 = icmp ult i64 %1844, %1843
  %1846 = icmp ult i64 %1844, %1827
  %1847 = or i1 %1845, %1846
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %14, align 1
  %1849 = trunc i64 %1844 to i32
  %1850 = and i32 %1849, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %21, align 1
  %1855 = xor i64 %1843, %1844
  %1856 = lshr i64 %1855, 4
  %1857 = trunc i64 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %27, align 1
  %1859 = icmp eq i64 %1844, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %30, align 1
  %1861 = lshr i64 %1844, 63
  %1862 = trunc i64 %1861 to i8
  store i8 %1862, i8* %33, align 1
  %1863 = lshr i64 %1843, 63
  %1864 = xor i64 %1861, %1863
  %1865 = xor i64 %1861, %1838
  %1866 = add nuw nsw i64 %1864, %1865
  %1867 = icmp eq i64 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %39, align 1
  %1869 = add i64 %1819, -4
  %1870 = add i64 %1809, 36
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RDX.i2064, align 8
  %1874 = add i64 %1809, 39
  store i64 %1874, i64* %3, align 8
  %1875 = load i32, i32* %1822, align 4
  %1876 = add i32 %1875, %1872
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RDX.i2064, align 8
  %1878 = icmp ult i32 %1876, %1872
  %1879 = icmp ult i32 %1876, %1875
  %1880 = or i1 %1878, %1879
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %14, align 1
  %1882 = and i32 %1876, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i32 %1875, %1872
  %1888 = xor i32 %1887, %1876
  %1889 = lshr i32 %1888, 4
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  store i8 %1891, i8* %27, align 1
  %1892 = icmp eq i32 %1876, 0
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %30, align 1
  %1894 = lshr i32 %1876, 31
  %1895 = trunc i32 %1894 to i8
  store i8 %1895, i8* %33, align 1
  %1896 = lshr i32 %1872, 31
  %1897 = lshr i32 %1875, 31
  %1898 = xor i32 %1894, %1896
  %1899 = xor i32 %1894, %1897
  %1900 = add nuw nsw i32 %1898, %1899
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %39, align 1
  %1903 = add i64 %1819, -16
  %1904 = add i64 %1809, 42
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = sub i32 %1876, %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RDX.i2064, align 8
  %1909 = icmp ult i32 %1876, %1906
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %14, align 1
  %1911 = and i32 %1907, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %21, align 1
  %1916 = xor i32 %1906, %1876
  %1917 = xor i32 %1916, %1907
  %1918 = lshr i32 %1917, 4
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %27, align 1
  %1921 = icmp eq i32 %1907, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %30, align 1
  %1923 = lshr i32 %1907, 31
  %1924 = trunc i32 %1923 to i8
  store i8 %1924, i8* %33, align 1
  %1925 = lshr i32 %1906, 31
  %1926 = xor i32 %1925, %1894
  %1927 = xor i32 %1923, %1894
  %1928 = add nuw nsw i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = sext i32 %1907 to i64
  store i64 %1931, i64* %RDI.i1529, align 8
  %1932 = load i64, i64* %R8.i1487, align 8
  %1933 = shl nsw i64 %1931, 2
  %1934 = add i64 %1933, %1932
  %1935 = load i32, i32* %ECX.i1986, align 4
  %1936 = add i64 %1809, 49
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1934 to i32*
  store i32 %1935, i32* %1937, align 4
  %.pre24 = load i64, i64* %3, align 8
  %.pre163 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d91

block_.L_400d91:                                  ; preds = %routine_idivl__ecx.exit1506, %block_400cf7
  %1938 = phi i64 [ %1546, %block_400cf7 ], [ %.pre163, %routine_idivl__ecx.exit1506 ]
  %1939 = phi i64 [ %1653, %block_400cf7 ], [ %.pre24, %routine_idivl__ecx.exit1506 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_400cf7 ], [ %1811, %routine_idivl__ecx.exit1506 ]
  %1940 = add i64 %1938, -4
  %1941 = add i64 %1939, 8
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = add i32 %1943, 1
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i1508, align 8
  %1946 = icmp eq i32 %1943, -1
  %1947 = icmp eq i32 %1944, 0
  %1948 = or i1 %1946, %1947
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1944, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1943, %1944
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %27, align 1
  %1959 = zext i1 %1947 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i32 %1944, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = lshr i32 %1943, 31
  %1963 = xor i32 %1960, %1962
  %1964 = add nuw nsw i32 %1963, %1960
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %1967 = add i64 %1939, 14
  store i64 %1967, i64* %3, align 8
  store i32 %1944, i32* %1942, align 4
  %1968 = load i64, i64* %3, align 8
  %1969 = add i64 %1968, -188
  store i64 %1969, i64* %3, align 8
  br label %block_.L_400ce3

block_.L_400da4:                                  ; preds = %block_.L_400ce3
  %1970 = add i64 %1589, 7
  store i64 %1970, i64* %3, align 8
  store i32 0, i32* %1549, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_400dab

block_.L_400dab:                                  ; preds = %block_400dbf, %block_.L_400da4
  %1971 = phi i64 [ %2233, %block_400dbf ], [ %.pre25, %block_.L_400da4 ]
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -4
  %1974 = add i64 %1971, 3
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RAX.i1508, align 8
  %1978 = add i64 %1972, -12
  %1979 = add i64 %1971, 7
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to i32*
  %1981 = load i32, i32* %1980, align 4
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RCX.i2066, align 8
  %1983 = shl nsw i64 %1982, 2
  %1984 = add i64 %1972, -1328
  %1985 = add i64 %1984, %1983
  %1986 = add i64 %1971, 14
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = sub i32 %1976, %1988
  %1990 = icmp ult i32 %1976, %1988
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1989, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1988, %1976
  %1998 = xor i32 %1997, %1989
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %27, align 1
  %2002 = icmp eq i32 %1989, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %30, align 1
  %2004 = lshr i32 %1989, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %33, align 1
  %2006 = lshr i32 %1976, 31
  %2007 = lshr i32 %1988, 31
  %2008 = xor i32 %2007, %2006
  %2009 = xor i32 %2004, %2006
  %2010 = add nuw nsw i32 %2009, %2008
  %2011 = icmp eq i32 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %39, align 1
  %2013 = icmp ne i8 %2005, 0
  %2014 = xor i1 %2013, %2011
  %.demorgan159 = or i1 %2002, %2014
  %.v160 = select i1 %.demorgan159, i64 20, i64 138
  %2015 = add i64 %1971, %.v160
  store i64 %2015, i64* %3, align 8
  br i1 %.demorgan159, label %block_400dbf, label %block_.L_400e35

block_400dbf:                                     ; preds = %block_.L_400dab
  %2016 = add i64 %1972, -1168
  store i64 %2016, i64* %RAX.i1508, align 8
  %2017 = add i64 %2015, 11
  store i64 %2017, i64* %3, align 8
  %2018 = load i32, i32* %1980, align 4
  %2019 = sext i32 %2018 to i64
  %2020 = shl nsw i64 %2019, 6
  store i64 %2020, i64* %RCX.i2066, align 8
  %2021 = lshr i64 %2019, 57
  %2022 = and i64 %2021, 1
  %2023 = add i64 %2020, %2016
  store i64 %2023, i64* %RDX.i2064, align 8
  %2024 = icmp ult i64 %2023, %2016
  %2025 = icmp ult i64 %2023, %2020
  %2026 = or i1 %2024, %2025
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %14, align 1
  %2028 = trunc i64 %2023 to i32
  %2029 = and i32 %2028, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %21, align 1
  %2034 = xor i64 %2016, %2023
  %2035 = lshr i64 %2034, 4
  %2036 = trunc i64 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %27, align 1
  %2038 = icmp eq i64 %2023, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %30, align 1
  %2040 = lshr i64 %2023, 63
  %2041 = trunc i64 %2040 to i8
  store i8 %2041, i8* %33, align 1
  %2042 = lshr i64 %2016, 63
  %2043 = xor i64 %2040, %2042
  %2044 = xor i64 %2040, %2022
  %2045 = add nuw nsw i64 %2043, %2044
  %2046 = icmp eq i64 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %39, align 1
  %2048 = add i64 %2015, 25
  store i64 %2048, i64* %3, align 8
  %2049 = load i32, i32* %1975, align 4
  %2050 = sext i32 %2049 to i64
  store i64 %2050, i64* %RCX.i2066, align 8
  %2051 = shl nsw i64 %2050, 2
  %2052 = add i64 %2051, %2023
  %2053 = add i64 %2015, 28
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RSI.i2060, align 8
  %2057 = add i64 %2015, 31
  store i64 %2057, i64* %3, align 8
  %2058 = load i32, i32* %1980, align 4
  %2059 = add i32 %2058, 1
  %2060 = zext i32 %2059 to i64
  store i64 %2060, i64* %RDI.i1529, align 8
  %2061 = sext i32 %2059 to i64
  %2062 = shl nsw i64 %2061, 6
  store i64 %2062, i64* %RCX.i2066, align 8
  %2063 = lshr i64 %2061, 57
  %2064 = and i64 %2063, 1
  %2065 = add i64 %2062, %2016
  store i64 %2065, i64* %RDX.i2064, align 8
  %2066 = icmp ult i64 %2065, %2016
  %2067 = icmp ult i64 %2065, %2062
  %2068 = or i1 %2066, %2067
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %14, align 1
  %2070 = trunc i64 %2065 to i32
  %2071 = and i32 %2070, 255
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %21, align 1
  %2076 = xor i64 %2016, %2065
  %2077 = lshr i64 %2076, 4
  %2078 = trunc i64 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %27, align 1
  %2080 = icmp eq i64 %2065, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %30, align 1
  %2082 = lshr i64 %2065, 63
  %2083 = trunc i64 %2082 to i8
  store i8 %2083, i8* %33, align 1
  %2084 = xor i64 %2082, %2042
  %2085 = xor i64 %2082, %2064
  %2086 = add nuw nsw i64 %2084, %2085
  %2087 = icmp eq i64 %2086, 2
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %39, align 1
  %2089 = add i64 %2015, 51
  store i64 %2089, i64* %3, align 8
  %2090 = load i32, i32* %1975, align 4
  %2091 = sext i32 %2090 to i64
  store i64 %2091, i64* %RCX.i2066, align 8
  %2092 = shl nsw i64 %2091, 2
  %2093 = add i64 %2092, %2065
  %2094 = add i64 %2015, 54
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = xor i32 %2096, %2055
  %2098 = zext i32 %2097 to i64
  store i64 %2098, i64* %RSI.i2060, align 8
  store i8 0, i8* %14, align 1
  %2099 = and i32 %2097, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = icmp eq i32 %2097, 0
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %30, align 1
  %2106 = lshr i32 %2097, 31
  %2107 = trunc i32 %2106 to i8
  store i8 %2107, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2108 = add i64 %2015, 57
  store i64 %2108, i64* %3, align 8
  store i32 %2097, i32* %2095, align 4
  %2109 = load i64, i64* %RBP.i, align 8
  %2110 = add i64 %2109, -12
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2110 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = shl nsw i64 %2115, 6
  store i64 %2116, i64* %RCX.i2066, align 8
  %2117 = lshr i64 %2115, 57
  %2118 = and i64 %2117, 1
  %2119 = load i64, i64* %RAX.i1508, align 8
  %2120 = add i64 %2116, %2119
  store i64 %2120, i64* %RDX.i2064, align 8
  %2121 = icmp ult i64 %2120, %2119
  %2122 = icmp ult i64 %2120, %2116
  %2123 = or i1 %2121, %2122
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %14, align 1
  %2125 = trunc i64 %2120 to i32
  %2126 = and i32 %2125, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i64 %2119, %2120
  %2132 = lshr i64 %2131, 4
  %2133 = trunc i64 %2132 to i8
  %2134 = and i8 %2133, 1
  store i8 %2134, i8* %27, align 1
  %2135 = icmp eq i64 %2120, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %30, align 1
  %2137 = lshr i64 %2120, 63
  %2138 = trunc i64 %2137 to i8
  store i8 %2138, i8* %33, align 1
  %2139 = lshr i64 %2119, 63
  %2140 = xor i64 %2137, %2139
  %2141 = xor i64 %2137, %2118
  %2142 = add nuw nsw i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  %2145 = add i64 %2109, -4
  %2146 = add i64 %2111, 18
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = sext i32 %2148 to i64
  store i64 %2149, i64* %RCX.i2066, align 8
  %2150 = shl nsw i64 %2149, 2
  %2151 = add i64 %2150, %2120
  %2152 = add i64 %2111, 22
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = sext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i2066, align 8
  %2156 = shl nsw i64 %2155, 2
  %2157 = add i64 %2156, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %2158 = add i64 %2111, 29
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RSI.i2060, align 8
  %2162 = add i64 %2111, 33
  store i64 %2162, i64* %3, align 8
  %2163 = load i32, i32* %2113, align 4
  %2164 = sext i32 %2163 to i64
  %2165 = shl nsw i64 %2164, 6
  store i64 %2165, i64* %RCX.i2066, align 8
  %2166 = lshr i64 %2164, 57
  %2167 = and i64 %2166, 1
  %2168 = add i64 %2165, %2119
  store i64 %2168, i64* %RAX.i1508, align 8
  %2169 = icmp ult i64 %2168, %2119
  %2170 = icmp ult i64 %2168, %2165
  %2171 = or i1 %2169, %2170
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %14, align 1
  %2173 = trunc i64 %2168 to i32
  %2174 = and i32 %2173, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %21, align 1
  %2179 = xor i64 %2119, %2168
  %2180 = lshr i64 %2179, 4
  %2181 = trunc i64 %2180 to i8
  %2182 = and i8 %2181, 1
  store i8 %2182, i8* %27, align 1
  %2183 = icmp eq i64 %2168, 0
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %30, align 1
  %2185 = lshr i64 %2168, 63
  %2186 = trunc i64 %2185 to i8
  store i8 %2186, i8* %33, align 1
  %2187 = xor i64 %2185, %2139
  %2188 = xor i64 %2185, %2167
  %2189 = add nuw nsw i64 %2187, %2188
  %2190 = icmp eq i64 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %39, align 1
  %2192 = load i64, i64* %RBP.i, align 8
  %2193 = add i64 %2192, -4
  %2194 = add i64 %2111, 44
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = sext i32 %2196 to i64
  store i64 %2197, i64* %RCX.i2066, align 8
  %2198 = shl nsw i64 %2197, 2
  %2199 = add i64 %2198, %2168
  %2200 = add i64 %2111, 47
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  store i32 %2160, i32* %2201, align 4
  %2202 = load i64, i64* %RBP.i, align 8
  %2203 = add i64 %2202, -4
  %2204 = load i64, i64* %3, align 8
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2203 to i32*
  %2207 = load i32, i32* %2206, align 4
  %2208 = add i32 %2207, 1
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1508, align 8
  %2210 = icmp eq i32 %2207, -1
  %2211 = icmp eq i32 %2208, 0
  %2212 = or i1 %2210, %2211
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %14, align 1
  %2214 = and i32 %2208, 255
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %21, align 1
  %2219 = xor i32 %2207, %2208
  %2220 = lshr i32 %2219, 4
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %27, align 1
  %2223 = zext i1 %2211 to i8
  store i8 %2223, i8* %30, align 1
  %2224 = lshr i32 %2208, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %33, align 1
  %2226 = lshr i32 %2207, 31
  %2227 = xor i32 %2224, %2226
  %2228 = add nuw nsw i32 %2227, %2224
  %2229 = icmp eq i32 %2228, 2
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %39, align 1
  %2231 = add i64 %2204, 9
  store i64 %2231, i64* %3, align 8
  store i32 %2208, i32* %2206, align 4
  %2232 = load i64, i64* %3, align 8
  %2233 = add i64 %2232, -133
  store i64 %2233, i64* %3, align 8
  br label %block_.L_400dab

block_.L_400e35:                                  ; preds = %block_.L_400dab
  %2234 = add i64 %2015, 5
  br label %block_.L_400e3a

block_.L_400e3a:                                  ; preds = %block_.L_400e35, %block_.L_400b7d
  %.sink = phi i64 [ %2234, %block_.L_400e35 ], [ %904, %block_.L_400b7d ]
  %2235 = phi i64 [ %1972, %block_.L_400e35 ], [ %655, %block_.L_400b7d ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.14, %block_.L_400e35 ], [ %MEMORY.5, %block_.L_400b7d ]
  %2236 = add i64 %2235, -12
  %2237 = add i64 %.sink, 3
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i32*
  %2239 = load i32, i32* %2238, align 4
  %2240 = zext i32 %2239 to i64
  store i64 %2240, i64* %RAX.i1508, align 8
  %2241 = add i64 %.sink, 6
  store i64 %2241, i64* %3, align 8
  %2242 = load i32, i32* %2238, align 4
  %2243 = add i32 %2242, 1
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RCX.i2066, align 8
  %2245 = icmp eq i32 %2242, -1
  %2246 = icmp eq i32 %2243, 0
  %2247 = or i1 %2245, %2246
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %14, align 1
  %2249 = and i32 %2243, 255
  %2250 = tail call i32 @llvm.ctpop.i32(i32 %2249)
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  %2253 = xor i8 %2252, 1
  store i8 %2253, i8* %21, align 1
  %2254 = xor i32 %2242, %2243
  %2255 = lshr i32 %2254, 4
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  store i8 %2257, i8* %27, align 1
  %2258 = zext i1 %2246 to i8
  store i8 %2258, i8* %30, align 1
  %2259 = lshr i32 %2243, 31
  %2260 = trunc i32 %2259 to i8
  store i8 %2260, i8* %33, align 1
  %2261 = lshr i32 %2242, 31
  %2262 = xor i32 %2259, %2261
  %2263 = add nuw nsw i32 %2262, %2259
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %39, align 1
  %2266 = sext i32 %2243 to i64
  store i64 %2266, i64* %RDX.i2064, align 8
  %2267 = shl nsw i64 %2266, 2
  %2268 = add i64 %2235, -1328
  %2269 = add i64 %2268, %2267
  %2270 = add i64 %.sink, 19
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i32*
  %2272 = load i32, i32* %2271, align 4
  %2273 = sub i32 %2239, %2272
  %2274 = zext i32 %2273 to i64
  store i64 %2274, i64* %RAX.i1508, align 8
  %2275 = icmp ult i32 %2239, %2272
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %14, align 1
  %2277 = and i32 %2273, 255
  %2278 = tail call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  store i8 %2281, i8* %21, align 1
  %2282 = xor i32 %2272, %2239
  %2283 = xor i32 %2282, %2273
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %27, align 1
  %2287 = icmp eq i32 %2273, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %30, align 1
  %2289 = lshr i32 %2273, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %33, align 1
  %2291 = lshr i32 %2239, 31
  %2292 = lshr i32 %2272, 31
  %2293 = xor i32 %2292, %2291
  %2294 = xor i32 %2289, %2291
  %2295 = add nuw nsw i32 %2294, %2293
  %2296 = icmp eq i32 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %39, align 1
  %2298 = add i64 %.sink, 22
  store i64 %2298, i64* %3, align 8
  %2299 = load i32, i32* %2238, align 4
  %2300 = add i32 %2299, 1
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i2066, align 8
  %2302 = icmp eq i32 %2299, -1
  %2303 = icmp eq i32 %2300, 0
  %2304 = or i1 %2302, %2303
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %14, align 1
  %2306 = and i32 %2300, 255
  %2307 = tail call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  store i8 %2310, i8* %21, align 1
  %2311 = xor i32 %2299, %2300
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %27, align 1
  %2315 = zext i1 %2303 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i32 %2300, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %33, align 1
  %2318 = lshr i32 %2299, 31
  %2319 = xor i32 %2316, %2318
  %2320 = add nuw nsw i32 %2319, %2316
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %39, align 1
  %2323 = sext i32 %2300 to i64
  store i64 %2323, i64* %RDX.i2064, align 8
  %2324 = load i64, i64* %RBP.i, align 8
  %2325 = shl nsw i64 %2323, 2
  %2326 = add i64 %2324, -1408
  %2327 = add i64 %2326, %2325
  %2328 = add i64 %.sink, 35
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  store i32 %2273, i32* %2329, align 4
  %2330 = load i64, i64* %RBP.i, align 8
  %2331 = add i64 %2330, -12
  %2332 = load i64, i64* %3, align 8
  %2333 = add i64 %2332, 4
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2331 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = add i32 %2335, -16
  %2337 = icmp ult i32 %2335, 16
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2336, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2335, 16
  %2345 = xor i32 %2344, %2336
  %2346 = lshr i32 %2345, 4
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  store i8 %2348, i8* %27, align 1
  %2349 = icmp eq i32 %2336, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %30, align 1
  %2351 = lshr i32 %2336, 31
  %2352 = trunc i32 %2351 to i8
  store i8 %2352, i8* %33, align 1
  %2353 = lshr i32 %2335, 31
  %2354 = xor i32 %2351, %2353
  %2355 = add nuw nsw i32 %2354, %2353
  %2356 = icmp eq i32 %2355, 2
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %39, align 1
  %2358 = icmp ne i8 %2352, 0
  %2359 = xor i1 %2358, %2356
  %.v103 = select i1 %2359, i64 10, i64 366
  %2360 = add i64 %2332, %.v103
  store i64 %2360, i64* %3, align 8
  br i1 %2359, label %block_400e67, label %block_.L_400fcb

block_400e67:                                     ; preds = %block_.L_400e3a
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %3, align 8
  %2362 = load i32, i32* %2334, align 4
  %2363 = add i32 %2362, 1
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RAX.i1508, align 8
  %2365 = icmp eq i32 %2362, -1
  %2366 = icmp eq i32 %2363, 0
  %2367 = or i1 %2365, %2366
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %14, align 1
  %2369 = and i32 %2363, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %21, align 1
  %2374 = xor i32 %2362, %2363
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  store i8 %2377, i8* %27, align 1
  %2378 = zext i1 %2366 to i8
  store i8 %2378, i8* %30, align 1
  %2379 = lshr i32 %2363, 31
  %2380 = trunc i32 %2379 to i8
  store i8 %2380, i8* %33, align 1
  %2381 = lshr i32 %2362, 31
  %2382 = xor i32 %2379, %2381
  %2383 = add nuw nsw i32 %2382, %2379
  %2384 = icmp eq i32 %2383, 2
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %39, align 1
  %2386 = sext i32 %2363 to i64
  store i64 %2386, i64* %RCX.i2066, align 8
  %2387 = shl nsw i64 %2386, 2
  %2388 = add i64 %2330, -1488
  %2389 = add i64 %2388, %2387
  %2390 = add i64 %2360, 17
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i32*
  %2392 = load i32, i32* %2391, align 4
  %2393 = add i32 %2392, 1
  %2394 = icmp ne i32 %2392, -1
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %14, align 1
  %2396 = and i32 %2393, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %21, align 1
  %2401 = xor i32 %2392, 16
  %2402 = xor i32 %2393, %2401
  %2403 = lshr i32 %2402, 4
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  store i8 %2405, i8* %27, align 1
  %2406 = icmp eq i32 %2393, 0
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %30, align 1
  %2408 = lshr i32 %2393, 31
  %2409 = trunc i32 %2408 to i8
  store i8 %2409, i8* %33, align 1
  %2410 = lshr i32 %2392, 31
  %2411 = xor i32 %2410, 1
  %2412 = xor i32 %2408, %2410
  %2413 = add nuw nsw i32 %2412, %2411
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %39, align 1
  %.v104 = select i1 %2406, i64 68, i64 23
  %2416 = add i64 %2360, %.v104
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %3, align 8
  %2418 = load i32, i32* %2334, align 4
  %2419 = add i32 %2418, 1
  %2420 = zext i32 %2419 to i64
  store i64 %2420, i64* %RAX.i1508, align 8
  %2421 = icmp eq i32 %2418, -1
  %2422 = icmp eq i32 %2419, 0
  %2423 = or i1 %2421, %2422
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %14, align 1
  %2425 = and i32 %2419, 255
  %2426 = tail call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  store i8 %2429, i8* %21, align 1
  %2430 = xor i32 %2418, %2419
  %2431 = lshr i32 %2430, 4
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  store i8 %2433, i8* %27, align 1
  %2434 = zext i1 %2422 to i8
  store i8 %2434, i8* %30, align 1
  %2435 = lshr i32 %2419, 31
  %2436 = trunc i32 %2435 to i8
  store i8 %2436, i8* %33, align 1
  %2437 = lshr i32 %2418, 31
  %2438 = xor i32 %2435, %2437
  %2439 = add nuw nsw i32 %2438, %2435
  %2440 = icmp eq i32 %2439, 2
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %39, align 1
  %2442 = add i64 %2416, 9
  store i64 %2442, i64* %3, align 8
  %2443 = sext i32 %2419 to i64
  store i64 %2443, i64* %RCX.i2066, align 8
  %2444 = shl nsw i64 %2443, 2
  br i1 %2406, label %block_.L_400eab, label %block_400e7e

block_400e7e:                                     ; preds = %block_400e67
  %2445 = add i64 %2388, %2444
  %2446 = add i64 %2416, 17
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = sext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i2066, align 8
  %2450 = shl nsw i64 %2449, 2
  %2451 = add i64 %2450, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %2452 = add i64 %2416, 24
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RAX.i1508, align 8
  %2456 = add i64 %2416, 27
  store i64 %2456, i64* %3, align 8
  %2457 = load i32, i32* %2334, align 4
  %2458 = add i32 %2457, 1
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RDX.i2064, align 8
  %2460 = icmp eq i32 %2457, -1
  %2461 = icmp eq i32 %2458, 0
  %2462 = or i1 %2460, %2461
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %14, align 1
  %2464 = and i32 %2458, 255
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1
  %2469 = xor i32 %2457, %2458
  %2470 = lshr i32 %2469, 4
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  store i8 %2472, i8* %27, align 1
  %2473 = zext i1 %2461 to i8
  store i8 %2473, i8* %30, align 1
  %2474 = lshr i32 %2458, 31
  %2475 = trunc i32 %2474 to i8
  store i8 %2475, i8* %33, align 1
  %2476 = lshr i32 %2457, 31
  %2477 = xor i32 %2474, %2476
  %2478 = add nuw nsw i32 %2477, %2474
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %39, align 1
  %2481 = sext i32 %2458 to i64
  store i64 %2481, i64* %RCX.i2066, align 8
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = shl nsw i64 %2481, 2
  %2484 = add i64 %2482, -1248
  %2485 = add i64 %2484, %2483
  %2486 = add i64 %2416, 40
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  store i32 %2454, i32* %2487, align 4
  %2488 = load i64, i64* %3, align 8
  %2489 = add i64 %2488, 25
  store i64 %2489, i64* %3, align 8
  br label %block_.L_400ebf

block_.L_400eab:                                  ; preds = %block_400e67
  %2490 = add i64 %2330, -1248
  %2491 = add i64 %2490, %2444
  %2492 = add i64 %2416, 20
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  store i32 0, i32* %2493, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400ebf

block_.L_400ebf:                                  ; preds = %block_.L_400eab, %block_400e7e
  %2494 = phi i64 [ %.pre26, %block_.L_400eab ], [ %2489, %block_400e7e ]
  %2495 = load i64, i64* %RBP.i, align 8
  %2496 = add i64 %2495, -4
  %2497 = add i64 %2494, 7
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  store i32 1, i32* %2498, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400ec6

block_.L_400ec6:                                  ; preds = %block_.L_400f90, %block_.L_400ebf
  %2499 = phi i64 [ %.pre27, %block_.L_400ebf ], [ %2960, %block_.L_400f90 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400ebf ], [ %MEMORY.20, %block_.L_400f90 ]
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -4
  %2502 = add i64 %2499, 3
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i32*
  %2504 = load i32, i32* %2503, align 4
  %2505 = zext i32 %2504 to i64
  store i64 %2505, i64* %RAX.i1508, align 8
  %2506 = add i64 %2500, -12
  %2507 = add i64 %2499, 6
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i32*
  %2509 = load i32, i32* %2508, align 4
  %2510 = add i32 %2509, 1
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RCX.i2066, align 8
  %2512 = icmp eq i32 %2509, -1
  %2513 = icmp eq i32 %2510, 0
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = and i32 %2510, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i32 %2509, %2510
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = zext i1 %2513 to i8
  store i8 %2525, i8* %30, align 1
  %2526 = lshr i32 %2510, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %33, align 1
  %2528 = lshr i32 %2509, 31
  %2529 = xor i32 %2526, %2528
  %2530 = add nuw nsw i32 %2529, %2526
  %2531 = icmp eq i32 %2530, 2
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %39, align 1
  %2533 = sext i32 %2510 to i64
  store i64 %2533, i64* %RDX.i2064, align 8
  %2534 = shl nsw i64 %2533, 2
  %2535 = add i64 %2500, -1328
  %2536 = add i64 %2535, %2534
  %2537 = add i64 %2499, 19
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = sub i32 %2504, %2539
  %2541 = icmp ult i32 %2504, %2539
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %14, align 1
  %2543 = and i32 %2540, 255
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  store i8 %2547, i8* %21, align 1
  %2548 = xor i32 %2539, %2504
  %2549 = xor i32 %2548, %2540
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  store i8 %2552, i8* %27, align 1
  %2553 = icmp eq i32 %2540, 0
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %30, align 1
  %2555 = lshr i32 %2540, 31
  %2556 = trunc i32 %2555 to i8
  store i8 %2556, i8* %33, align 1
  %2557 = lshr i32 %2504, 31
  %2558 = lshr i32 %2539, 31
  %2559 = xor i32 %2558, %2557
  %2560 = xor i32 %2555, %2557
  %2561 = add nuw nsw i32 %2560, %2559
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = icmp ne i8 %2556, 0
  %2565 = xor i1 %2564, %2562
  %.demorgan105 = or i1 %2553, %2565
  %.v106 = select i1 %.demorgan105, i64 25, i64 221
  %2566 = add i64 %2499, %.v106
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %3, align 8
  %2568 = load i32, i32* %2508, align 4
  %2569 = add i64 %2566, 6
  store i64 %2569, i64* %3, align 8
  %2570 = add i32 %2568, 1
  %2571 = zext i32 %2570 to i64
  store i64 %2571, i64* %RAX.i1508, align 8
  %2572 = icmp eq i32 %2568, -1
  %2573 = icmp eq i32 %2570, 0
  %2574 = or i1 %2572, %2573
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %14, align 1
  %2576 = and i32 %2570, 255
  %2577 = tail call i32 @llvm.ctpop.i32(i32 %2576)
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  store i8 %2580, i8* %21, align 1
  %2581 = xor i32 %2568, %2570
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  store i8 %2584, i8* %27, align 1
  %2585 = zext i1 %2573 to i8
  store i8 %2585, i8* %30, align 1
  %2586 = lshr i32 %2570, 31
  %2587 = trunc i32 %2586 to i8
  store i8 %2587, i8* %33, align 1
  %2588 = lshr i32 %2568, 31
  %2589 = xor i32 %2586, %2588
  %2590 = add nuw nsw i32 %2589, %2586
  %2591 = icmp eq i32 %2590, 2
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %39, align 1
  br i1 %.demorgan105, label %block_400edf, label %block_.L_400fa3

block_400edf:                                     ; preds = %block_.L_400ec6
  %2593 = add i64 %2566, 9
  store i64 %2593, i64* %3, align 8
  %2594 = load i32, i32* %2503, align 4
  %2595 = sub i32 %2570, %2594
  %2596 = zext i32 %2595 to i64
  store i64 %2596, i64* %RAX.i1508, align 8
  %2597 = icmp ult i32 %2570, %2594
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %14, align 1
  %2599 = and i32 %2595, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %21, align 1
  %2604 = xor i32 %2594, %2570
  %2605 = xor i32 %2604, %2595
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  store i8 %2608, i8* %27, align 1
  %2609 = icmp eq i32 %2595, 0
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %30, align 1
  %2611 = lshr i32 %2595, 31
  %2612 = trunc i32 %2611 to i8
  store i8 %2612, i8* %33, align 1
  %2613 = lshr i32 %2594, 31
  %2614 = xor i32 %2613, %2586
  %2615 = xor i32 %2611, %2586
  %2616 = add nuw nsw i32 %2615, %2614
  %2617 = icmp eq i32 %2616, 2
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %39, align 1
  %2619 = sext i32 %2595 to i64
  store i64 %2619, i64* %RCX.i2066, align 8
  %2620 = shl nsw i64 %2619, 2
  %2621 = add i64 %2500, -1488
  %2622 = add i64 %2621, %2620
  %2623 = add i64 %2566, 20
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = add i32 %2625, 1
  %2627 = icmp ne i32 %2625, -1
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %14, align 1
  %2629 = and i32 %2626, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %21, align 1
  %2634 = xor i32 %2625, 16
  %2635 = xor i32 %2626, %2634
  %2636 = lshr i32 %2635, 4
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  store i8 %2638, i8* %27, align 1
  %2639 = icmp eq i32 %2626, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %30, align 1
  %2641 = lshr i32 %2626, 31
  %2642 = trunc i32 %2641 to i8
  store i8 %2642, i8* %33, align 1
  %2643 = lshr i32 %2625, 31
  %2644 = xor i32 %2643, 1
  %2645 = xor i32 %2641, %2643
  %2646 = add nuw nsw i32 %2645, %2644
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %39, align 1
  %.v107 = select i1 %2639, i64 177, i64 26
  %2649 = add i64 %2566, %.v107
  store i64 %2649, i64* %3, align 8
  br i1 %2639, label %block_.L_400f90, label %block_400ef9

block_400ef9:                                     ; preds = %block_400edf
  %2650 = load i64, i64* %RBP.i, align 8
  %2651 = add i64 %2650, -1168
  store i64 %2651, i64* %RAX.i1508, align 8
  %2652 = add i64 %2650, -12
  %2653 = add i64 %2649, 10
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = add i32 %2655, 1
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RCX.i2066, align 8
  %2658 = sext i32 %2656 to i64
  %2659 = shl nsw i64 %2658, 6
  store i64 %2659, i64* %RDX.i2064, align 8
  %2660 = lshr i64 %2658, 57
  %2661 = and i64 %2660, 1
  %2662 = add i64 %2659, %2651
  store i64 %2662, i64* %RAX.i1508, align 8
  %2663 = icmp ult i64 %2662, %2651
  %2664 = icmp ult i64 %2662, %2659
  %2665 = or i1 %2663, %2664
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %14, align 1
  %2667 = trunc i64 %2662 to i32
  %2668 = and i32 %2667, 255
  %2669 = tail call i32 @llvm.ctpop.i32(i32 %2668)
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  %2672 = xor i8 %2671, 1
  store i8 %2672, i8* %21, align 1
  %2673 = xor i64 %2651, %2662
  %2674 = lshr i64 %2673, 4
  %2675 = trunc i64 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %27, align 1
  %2677 = icmp eq i64 %2662, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %30, align 1
  %2679 = lshr i64 %2662, 63
  %2680 = trunc i64 %2679 to i8
  store i8 %2680, i8* %33, align 1
  %2681 = lshr i64 %2651, 63
  %2682 = xor i64 %2679, %2681
  %2683 = xor i64 %2679, %2661
  %2684 = add nuw nsw i64 %2682, %2683
  %2685 = icmp eq i64 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %39, align 1
  %2687 = add i64 %2650, -4
  %2688 = add i64 %2649, 27
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = sext i32 %2690 to i64
  store i64 %2691, i64* %RDX.i2064, align 8
  %2692 = shl nsw i64 %2691, 2
  %2693 = add i64 %2692, %2662
  %2694 = add i64 %2649, 31
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i32*
  %2696 = load i32, i32* %2695, align 4
  store i8 0, i8* %14, align 1
  %2697 = and i32 %2696, 255
  %2698 = tail call i32 @llvm.ctpop.i32(i32 %2697)
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  store i8 %2701, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2702 = icmp eq i32 %2696, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %30, align 1
  %2704 = lshr i32 %2696, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %2702, i64 151, i64 37
  %2706 = add i64 %2649, %.v108
  store i64 %2706, i64* %3, align 8
  br i1 %2702, label %block_.L_400f90, label %block_400f1e

block_400f1e:                                     ; preds = %block_400ef9
  store i64 255, i64* %RAX.i1508, align 8
  store i64 %2651, i64* %RCX.i2066, align 8
  %2707 = add i64 %2706, 15
  store i64 %2707, i64* %3, align 8
  %2708 = load i32, i32* %2654, align 4
  %2709 = add i32 %2708, 1
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RDX.i2064, align 8
  %2711 = icmp eq i32 %2708, -1
  %2712 = icmp eq i32 %2709, 0
  %2713 = or i1 %2711, %2712
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %14, align 1
  %2715 = and i32 %2709, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %21, align 1
  %2720 = xor i32 %2708, %2709
  %2721 = lshr i32 %2720, 4
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  store i8 %2723, i8* %27, align 1
  %2724 = zext i1 %2712 to i8
  store i8 %2724, i8* %30, align 1
  %2725 = lshr i32 %2709, 31
  %2726 = trunc i32 %2725 to i8
  store i8 %2726, i8* %33, align 1
  %2727 = lshr i32 %2708, 31
  %2728 = xor i32 %2725, %2727
  %2729 = add nuw nsw i32 %2728, %2725
  %2730 = icmp eq i32 %2729, 2
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %39, align 1
  %2732 = add i64 %2706, 21
  store i64 %2732, i64* %3, align 8
  %2733 = load i32, i32* %2689, align 4
  %2734 = sub i32 %2709, %2733
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RDX.i2064, align 8
  %2736 = icmp ult i32 %2709, %2733
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %14, align 1
  %2738 = and i32 %2734, 255
  %2739 = tail call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %21, align 1
  %2743 = xor i32 %2733, %2709
  %2744 = xor i32 %2743, %2734
  %2745 = lshr i32 %2744, 4
  %2746 = trunc i32 %2745 to i8
  %2747 = and i8 %2746, 1
  store i8 %2747, i8* %27, align 1
  %2748 = icmp eq i32 %2734, 0
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %30, align 1
  %2750 = lshr i32 %2734, 31
  %2751 = trunc i32 %2750 to i8
  store i8 %2751, i8* %33, align 1
  %2752 = lshr i32 %2733, 31
  %2753 = xor i32 %2752, %2725
  %2754 = xor i32 %2750, %2725
  %2755 = add nuw nsw i32 %2754, %2753
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %39, align 1
  %2758 = sext i32 %2734 to i64
  store i64 %2758, i64* %RSI.i2060, align 8
  %2759 = shl nsw i64 %2758, 2
  %2760 = add i64 %2650, -1488
  %2761 = add i64 %2760, %2759
  %2762 = add i64 %2706, 31
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = zext i32 %2764 to i64
  store i64 %2765, i64* %RDX.i2064, align 8
  %2766 = add i64 %2706, 34
  store i64 %2766, i64* %3, align 8
  %2767 = load i32, i32* %2654, align 4
  %2768 = add i32 %2767, 1
  %2769 = zext i32 %2768 to i64
  store i64 %2769, i64* %RDI.i1529, align 8
  %2770 = sext i32 %2768 to i64
  %2771 = shl nsw i64 %2770, 6
  store i64 %2771, i64* %RSI.i2060, align 8
  %2772 = lshr i64 %2770, 57
  %2773 = and i64 %2772, 1
  %2774 = add i64 %2771, %2651
  store i64 %2774, i64* %RCX.i2066, align 8
  %2775 = icmp ult i64 %2774, %2651
  %2776 = icmp ult i64 %2774, %2771
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %14, align 1
  %2779 = trunc i64 %2774 to i32
  %2780 = and i32 %2779, 255
  %2781 = tail call i32 @llvm.ctpop.i32(i32 %2780)
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  %2784 = xor i8 %2783, 1
  store i8 %2784, i8* %21, align 1
  %2785 = xor i64 %2651, %2774
  %2786 = lshr i64 %2785, 4
  %2787 = trunc i64 %2786 to i8
  %2788 = and i8 %2787, 1
  store i8 %2788, i8* %27, align 1
  %2789 = icmp eq i64 %2774, 0
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %30, align 1
  %2791 = lshr i64 %2774, 63
  %2792 = trunc i64 %2791 to i8
  store i8 %2792, i8* %33, align 1
  %2793 = xor i64 %2791, %2681
  %2794 = xor i64 %2791, %2773
  %2795 = add nuw nsw i64 %2793, %2794
  %2796 = icmp eq i64 %2795, 2
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %39, align 1
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -4
  %2800 = add i64 %2706, 51
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i32*
  %2802 = load i32, i32* %2801, align 4
  %2803 = sext i32 %2802 to i64
  store i64 %2803, i64* %RSI.i2060, align 8
  %2804 = shl nsw i64 %2803, 2
  %2805 = add i64 %2804, %2774
  %2806 = add i64 %2706, 55
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = sext i32 %2808 to i64
  store i64 %2809, i64* %RCX.i2066, align 8
  %2810 = shl nsw i64 %2809, 2
  %2811 = add i64 %2810, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %2812 = add i64 %2706, 62
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = add i32 %2814, %2764
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RDX.i2064, align 8
  %2817 = icmp ult i32 %2815, %2764
  %2818 = icmp ult i32 %2815, %2814
  %2819 = or i1 %2817, %2818
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %14, align 1
  %2821 = and i32 %2815, 255
  %2822 = tail call i32 @llvm.ctpop.i32(i32 %2821)
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  store i8 %2825, i8* %21, align 1
  %2826 = xor i32 %2814, %2764
  %2827 = xor i32 %2826, %2815
  %2828 = lshr i32 %2827, 4
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  store i8 %2830, i8* %27, align 1
  %2831 = icmp eq i32 %2815, 0
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %30, align 1
  %2833 = lshr i32 %2815, 31
  %2834 = trunc i32 %2833 to i8
  store i8 %2834, i8* %33, align 1
  %2835 = lshr i32 %2764, 31
  %2836 = lshr i32 %2814, 31
  %2837 = xor i32 %2833, %2835
  %2838 = xor i32 %2833, %2836
  %2839 = add nuw nsw i32 %2837, %2838
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %39, align 1
  %2842 = add i64 %2798, -2708
  %2843 = load i32, i32* %EAX.i2012, align 4
  %2844 = add i64 %2706, 68
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2842 to i32*
  store i32 %2843, i32* %2845, align 4
  %2846 = load i32, i32* %EDX.i2048, align 4
  %2847 = zext i32 %2846 to i64
  %2848 = load i64, i64* %3, align 8
  store i64 %2847, i64* %RAX.i1508, align 8
  %2849 = sext i32 %2846 to i64
  %2850 = lshr i64 %2849, 32
  store i64 %2850, i64* %57, align 8
  %2851 = load i64, i64* %RBP.i, align 8
  %2852 = add i64 %2851, -2708
  %2853 = add i64 %2848, 9
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RDI.i1529, align 8
  %2857 = add i64 %2848, 11
  store i64 %2857, i64* %3, align 8
  %2858 = sext i32 %2855 to i64
  %2859 = shl nuw i64 %2850, 32
  %2860 = or i64 %2859, %2847
  %2861 = sdiv i64 %2860, %2858
  %2862 = shl i64 %2861, 32
  %2863 = ashr exact i64 %2862, 32
  %2864 = icmp eq i64 %2861, %2863
  br i1 %2864, label %2867, label %2865

; <label>:2865:                                   ; preds = %block_400f1e
  %2866 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2857, %struct.Memory* %MEMORY.19)
  %.pre28 = load i32, i32* %EDX.i2048, align 4
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:2867:                                   ; preds = %block_400f1e
  %2868 = srem i64 %2860, %2858
  %2869 = and i64 %2861, 4294967295
  store i64 %2869, i64* %58, align 8
  %2870 = and i64 %2868, 4294967295
  store i64 %2870, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2871 = trunc i64 %2868 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %2867, %2865
  %2872 = phi i64 [ %.pre30, %2865 ], [ %2851, %2867 ]
  %2873 = phi i64 [ %.pre29, %2865 ], [ %2857, %2867 ]
  %2874 = phi i32 [ %.pre28, %2865 ], [ %2871, %2867 ]
  %2875 = phi %struct.Memory* [ %2866, %2865 ], [ %MEMORY.19, %2867 ]
  %2876 = sext i32 %2874 to i64
  store i64 %2876, i64* %RCX.i2066, align 8
  %2877 = shl nsw i64 %2876, 2
  %2878 = add i64 %2877, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %2879 = add i64 %2873, 10
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RDX.i2064, align 8
  %2883 = add i64 %2872, -12
  %2884 = add i64 %2873, 14
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = add i32 %2886, 1
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %R8.i1487, align 8
  %2889 = icmp eq i32 %2886, -1
  %2890 = icmp eq i32 %2887, 0
  %2891 = or i1 %2889, %2890
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %14, align 1
  %2893 = and i32 %2887, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %21, align 1
  %2898 = xor i32 %2886, %2887
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %27, align 1
  %2902 = zext i1 %2890 to i8
  store i8 %2902, i8* %30, align 1
  %2903 = lshr i32 %2887, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %33, align 1
  %2905 = lshr i32 %2886, 31
  %2906 = xor i32 %2903, %2905
  %2907 = add nuw nsw i32 %2906, %2903
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %39, align 1
  %2910 = sext i32 %2887 to i64
  store i64 %2910, i64* %RCX.i2066, align 8
  %2911 = shl nsw i64 %2910, 2
  %2912 = add i64 %2872, -1248
  %2913 = add i64 %2912, %2911
  %2914 = add i64 %2873, 28
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = xor i32 %2916, %2881
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %2919 = and i32 %2917, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %21, align 1
  %2924 = icmp eq i32 %2917, 0
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %30, align 1
  %2926 = lshr i32 %2917, 31
  %2927 = trunc i32 %2926 to i8
  store i8 %2927, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2928 = add i64 %2873, 35
  store i64 %2928, i64* %3, align 8
  store i32 %2917, i32* %2915, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400f90

block_.L_400f90:                                  ; preds = %routine_idivl__edi.exit, %block_400ef9, %block_400edf
  %2929 = phi i64 [ %2649, %block_400edf ], [ %2706, %block_400ef9 ], [ %.pre31, %routine_idivl__edi.exit ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_400edf ], [ %MEMORY.19, %block_400ef9 ], [ %2875, %routine_idivl__edi.exit ]
  %2930 = load i64, i64* %RBP.i, align 8
  %2931 = add i64 %2930, -4
  %2932 = add i64 %2929, 8
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = add i32 %2934, 1
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RAX.i1508, align 8
  %2937 = icmp eq i32 %2934, -1
  %2938 = icmp eq i32 %2935, 0
  %2939 = or i1 %2937, %2938
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %14, align 1
  %2941 = and i32 %2935, 255
  %2942 = tail call i32 @llvm.ctpop.i32(i32 %2941)
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = xor i8 %2944, 1
  store i8 %2945, i8* %21, align 1
  %2946 = xor i32 %2934, %2935
  %2947 = lshr i32 %2946, 4
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  store i8 %2949, i8* %27, align 1
  %2950 = zext i1 %2938 to i8
  store i8 %2950, i8* %30, align 1
  %2951 = lshr i32 %2935, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %33, align 1
  %2953 = lshr i32 %2934, 31
  %2954 = xor i32 %2951, %2953
  %2955 = add nuw nsw i32 %2954, %2951
  %2956 = icmp eq i32 %2955, 2
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %39, align 1
  %2958 = add i64 %2929, 14
  store i64 %2958, i64* %3, align 8
  store i32 %2935, i32* %2933, align 4
  %2959 = load i64, i64* %3, align 8
  %2960 = add i64 %2959, -216
  store i64 %2960, i64* %3, align 8
  br label %block_.L_400ec6

block_.L_400fa3:                                  ; preds = %block_.L_400ec6
  %2961 = sext i32 %2570 to i64
  store i64 %2961, i64* %RCX.i2066, align 8
  %2962 = shl nsw i64 %2961, 2
  %2963 = add i64 %2500, -1248
  %2964 = add i64 %2963, %2962
  %2965 = add i64 %2566, 17
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = sext i32 %2967 to i64
  store i64 %2968, i64* %RCX.i2066, align 8
  %2969 = shl nsw i64 %2968, 2
  %2970 = add i64 %2969, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %2971 = add i64 %2566, 24
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RAX.i1508, align 8
  %2975 = add i64 %2566, 27
  store i64 %2975, i64* %3, align 8
  %2976 = load i32, i32* %2508, align 4
  %2977 = add i32 %2976, 1
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RDX.i2064, align 8
  %2979 = icmp eq i32 %2976, -1
  %2980 = icmp eq i32 %2977, 0
  %2981 = or i1 %2979, %2980
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %14, align 1
  %2983 = and i32 %2977, 255
  %2984 = tail call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %21, align 1
  %2988 = xor i32 %2976, %2977
  %2989 = lshr i32 %2988, 4
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  store i8 %2991, i8* %27, align 1
  %2992 = zext i1 %2980 to i8
  store i8 %2992, i8* %30, align 1
  %2993 = lshr i32 %2977, 31
  %2994 = trunc i32 %2993 to i8
  store i8 %2994, i8* %33, align 1
  %2995 = lshr i32 %2976, 31
  %2996 = xor i32 %2993, %2995
  %2997 = add nuw nsw i32 %2996, %2993
  %2998 = icmp eq i32 %2997, 2
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %39, align 1
  %3000 = sext i32 %2977 to i64
  store i64 %3000, i64* %RCX.i2066, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = shl nsw i64 %3000, 2
  %3003 = add i64 %3001, -1248
  %3004 = add i64 %3003, %3002
  %3005 = add i64 %2566, 40
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  store i32 %2973, i32* %3006, align 4
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcb

block_.L_400fcb:                                  ; preds = %block_.L_400e3a, %block_.L_400fa3
  %3007 = phi i64 [ %2330, %block_.L_400e3a ], [ %.pre33, %block_.L_400fa3 ]
  %3008 = phi i64 [ %2360, %block_.L_400e3a ], [ %.pre32, %block_.L_400fa3 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400e3a ], [ %MEMORY.19, %block_.L_400fa3 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %3009 = add i64 %3007, -12
  %3010 = add i64 %3008, 13
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = add i32 %3012, -16
  %3014 = icmp ult i32 %3012, 16
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %14, align 1
  %3016 = and i32 %3013, 255
  %3017 = tail call i32 @llvm.ctpop.i32(i32 %3016)
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = xor i8 %3019, 1
  store i8 %3020, i8* %21, align 1
  %3021 = xor i32 %3012, 16
  %3022 = xor i32 %3021, %3013
  %3023 = lshr i32 %3022, 4
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  store i8 %3025, i8* %27, align 1
  %3026 = icmp eq i32 %3013, 0
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %30, align 1
  %3028 = lshr i32 %3013, 31
  %3029 = trunc i32 %3028 to i8
  store i8 %3029, i8* %33, align 1
  %3030 = lshr i32 %3012, 31
  %3031 = xor i32 %3028, %3030
  %3032 = add nuw nsw i32 %3031, %3030
  %3033 = icmp eq i32 %3032, 2
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %39, align 1
  %3035 = add i64 %3007, -2709
  %3036 = add i64 %3008, 19
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i8*
  store i8 0, i8* %3037, align 1
  %3038 = load i64, i64* %3, align 8
  %3039 = load i8, i8* %33, align 1
  %3040 = icmp ne i8 %3039, 0
  %3041 = load i8, i8* %39, align 1
  %3042 = icmp ne i8 %3041, 0
  %3043 = xor i1 %3040, %3042
  %.v109 = select i1 %3043, i64 6, i64 32
  %3044 = add i64 %3038, %.v109
  store i64 %3044, i64* %3, align 8
  br i1 %3043, label %block_400fe4, label %block_.L_400ffe

block_400fe4:                                     ; preds = %block_.L_400fcb
  %3045 = load i64, i64* %RBP.i, align 8
  %3046 = add i64 %3045, -12
  %3047 = add i64 %3044, 3
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i32*
  %3049 = load i32, i32* %3048, align 4
  %3050 = add i32 %3049, 1
  %3051 = zext i32 %3050 to i64
  store i64 %3051, i64* %RAX.i1508, align 8
  %3052 = icmp eq i32 %3049, -1
  %3053 = icmp eq i32 %3050, 0
  %3054 = or i1 %3052, %3053
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %14, align 1
  %3056 = and i32 %3050, 255
  %3057 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %21, align 1
  %3061 = xor i32 %3049, %3050
  %3062 = lshr i32 %3061, 4
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  store i8 %3064, i8* %27, align 1
  %3065 = zext i1 %3053 to i8
  store i8 %3065, i8* %30, align 1
  %3066 = lshr i32 %3050, 31
  %3067 = trunc i32 %3066 to i8
  store i8 %3067, i8* %33, align 1
  %3068 = lshr i32 %3049, 31
  %3069 = xor i32 %3066, %3068
  %3070 = add nuw nsw i32 %3069, %3066
  %3071 = icmp eq i32 %3070, 2
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %39, align 1
  %3073 = sext i32 %3050 to i64
  store i64 %3073, i64* %RCX.i2066, align 8
  %3074 = shl nsw i64 %3073, 2
  %3075 = add i64 %3045, -1328
  %3076 = add i64 %3075, %3074
  %3077 = add i64 %3044, 17
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = add i32 %3079, -8
  %3081 = icmp ult i32 %3079, 8
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %14, align 1
  %3083 = and i32 %3080, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %21, align 1
  %3088 = xor i32 %3079, %3080
  %3089 = lshr i32 %3088, 4
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  store i8 %3091, i8* %27, align 1
  %3092 = icmp eq i32 %3080, 0
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %30, align 1
  %3094 = lshr i32 %3080, 31
  %3095 = trunc i32 %3094 to i8
  store i8 %3095, i8* %33, align 1
  %3096 = lshr i32 %3079, 31
  %3097 = xor i32 %3094, %3096
  %3098 = add nuw nsw i32 %3097, %3096
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %39, align 1
  %3101 = icmp ne i8 %3095, 0
  %3102 = xor i1 %3101, %3099
  %3103 = or i1 %3092, %3102
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %DL.i1081, align 1
  %3105 = add i64 %3045, -2709
  %3106 = add i64 %3044, 26
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i8*
  store i8 %3104, i8* %3107, align 1
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_400ffe

block_.L_400ffe:                                  ; preds = %block_.L_400fcb, %block_400fe4
  %3108 = phi i64 [ %.pre34, %block_400fe4 ], [ %3044, %block_.L_400fcb ]
  %3109 = load i64, i64* %RBP.i, align 8
  %3110 = add i64 %3109, -2709
  %3111 = add i64 %3108, 6
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i8*
  %3113 = load i8, i8* %3112, align 1
  store i8 %3113, i8* %AL.i1776, align 1
  %3114 = and i8 %3113, 1
  store i8 0, i8* %14, align 1
  %3115 = zext i8 %3114 to i32
  %3116 = tail call i32 @llvm.ctpop.i32(i32 %3115)
  %3117 = trunc i32 %3116 to i8
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %21, align 1
  %3119 = xor i8 %3114, 1
  store i8 %3119, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3120 = icmp eq i8 %3119, 0
  %.v110 = select i1 %3120, i64 -1349, i64 14
  %3121 = add i64 %3108, %.v110
  store i64 %3121, i64* %3, align 8
  br i1 %3120, label %block_.L_400ab9, label %block_40100c

block_40100c:                                     ; preds = %block_.L_400ffe
  %3122 = add i64 %3109, -12
  %3123 = add i64 %3121, 3
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  %3125 = load i32, i32* %3124, align 4
  %3126 = add i32 %3125, 1
  %3127 = zext i32 %3126 to i64
  store i64 %3127, i64* %RAX.i1508, align 8
  %3128 = icmp eq i32 %3125, -1
  %3129 = icmp eq i32 %3126, 0
  %3130 = or i1 %3128, %3129
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %14, align 1
  %3132 = and i32 %3126, 255
  %3133 = tail call i32 @llvm.ctpop.i32(i32 %3132)
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = xor i8 %3135, 1
  store i8 %3136, i8* %21, align 1
  %3137 = xor i32 %3125, %3126
  %3138 = lshr i32 %3137, 4
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  store i8 %3140, i8* %27, align 1
  %3141 = zext i1 %3129 to i8
  store i8 %3141, i8* %30, align 1
  %3142 = lshr i32 %3126, 31
  %3143 = trunc i32 %3142 to i8
  store i8 %3143, i8* %33, align 1
  %3144 = lshr i32 %3125, 31
  %3145 = xor i32 %3142, %3144
  %3146 = add nuw nsw i32 %3145, %3142
  %3147 = icmp eq i32 %3146, 2
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %39, align 1
  %3149 = add i64 %3121, 9
  store i64 %3149, i64* %3, align 8
  store i32 %3126, i32* %3124, align 4
  %3150 = load i64, i64* %RBP.i, align 8
  %3151 = add i64 %3150, -12
  %3152 = load i64, i64* %3, align 8
  %3153 = add i64 %3152, 4
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3151 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = sext i32 %3155 to i64
  store i64 %3156, i64* %RCX.i2066, align 8
  %3157 = shl nsw i64 %3156, 2
  %3158 = add i64 %3150, -1328
  %3159 = add i64 %3158, %3157
  %3160 = add i64 %3152, 12
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = add i32 %3162, -8
  %3164 = icmp ult i32 %3162, 8
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %14, align 1
  %3166 = and i32 %3163, 255
  %3167 = tail call i32 @llvm.ctpop.i32(i32 %3166)
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = xor i8 %3169, 1
  store i8 %3170, i8* %21, align 1
  %3171 = xor i32 %3162, %3163
  %3172 = lshr i32 %3171, 4
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  store i8 %3174, i8* %27, align 1
  %3175 = icmp eq i32 %3163, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %30, align 1
  %3177 = lshr i32 %3163, 31
  %3178 = trunc i32 %3177 to i8
  store i8 %3178, i8* %33, align 1
  %3179 = lshr i32 %3162, 31
  %3180 = xor i32 %3177, %3179
  %3181 = add nuw nsw i32 %3180, %3179
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %39, align 1
  %3184 = icmp ne i8 %3178, 0
  %3185 = xor i1 %3184, %3182
  %.demorgan111 = or i1 %3175, %3185
  %.v112 = select i1 %.demorgan111, i64 18, i64 1859
  %3186 = add i64 %3152, %.v112
  %3187 = add i64 %3150, -4
  %3188 = add i64 %3186, 7
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i32*
  store i32 0, i32* %3189, align 4
  %.pre80 = load i64, i64* %3, align 8
  br i1 %.demorgan111, label %block_40100c.block_.L_40102e_crit_edge, label %block_40100c.block_.L_40175f_crit_edge

block_40100c.block_.L_40102e_crit_edge:           ; preds = %block_40100c
  br label %block_.L_40102e

block_40100c.block_.L_40175f_crit_edge:           ; preds = %block_40100c
  br label %block_.L_40175f

block_.L_40102e:                                  ; preds = %block_40100c.block_.L_40102e_crit_edge, %block_401042
  %3190 = phi i64 [ %3353, %block_401042 ], [ %.pre80, %block_40100c.block_.L_40102e_crit_edge ]
  %3191 = load i64, i64* %RBP.i, align 8
  %3192 = add i64 %3191, -4
  %3193 = add i64 %3190, 3
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3192 to i32*
  %3195 = load i32, i32* %3194, align 4
  %3196 = zext i32 %3195 to i64
  store i64 %3196, i64* %RAX.i1508, align 8
  %3197 = add i64 %3191, -12
  %3198 = add i64 %3190, 7
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = sext i32 %3200 to i64
  store i64 %3201, i64* %RCX.i2066, align 8
  %3202 = shl nsw i64 %3201, 2
  %3203 = add i64 %3191, -1328
  %3204 = add i64 %3203, %3202
  %3205 = add i64 %3190, 14
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  %3208 = sub i32 %3195, %3207
  %3209 = icmp ult i32 %3195, %3207
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %14, align 1
  %3211 = and i32 %3208, 255
  %3212 = tail call i32 @llvm.ctpop.i32(i32 %3211)
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = xor i8 %3214, 1
  store i8 %3215, i8* %21, align 1
  %3216 = xor i32 %3207, %3195
  %3217 = xor i32 %3216, %3208
  %3218 = lshr i32 %3217, 4
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  store i8 %3220, i8* %27, align 1
  %3221 = icmp eq i32 %3208, 0
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %30, align 1
  %3223 = lshr i32 %3208, 31
  %3224 = trunc i32 %3223 to i8
  store i8 %3224, i8* %33, align 1
  %3225 = lshr i32 %3195, 31
  %3226 = lshr i32 %3207, 31
  %3227 = xor i32 %3226, %3225
  %3228 = xor i32 %3223, %3225
  %3229 = add nuw nsw i32 %3228, %3227
  %3230 = icmp eq i32 %3229, 2
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %39, align 1
  %3232 = icmp ne i8 %3224, 0
  %3233 = xor i1 %3232, %3230
  %.demorgan113 = or i1 %3221, %3233
  %.v114 = select i1 %.demorgan113, i64 20, i64 88
  %3234 = add i64 %3190, %.v114
  store i64 %3234, i64* %3, align 8
  br i1 %.demorgan113, label %block_401042, label %block_.L_401086

block_401042:                                     ; preds = %block_.L_40102e
  %3235 = add i64 %3191, -1168
  store i64 %3235, i64* %RAX.i1508, align 8
  %3236 = add i64 %3234, 11
  store i64 %3236, i64* %3, align 8
  %3237 = load i32, i32* %3199, align 4
  %3238 = sext i32 %3237 to i64
  %3239 = shl nsw i64 %3238, 6
  store i64 %3239, i64* %RCX.i2066, align 8
  %3240 = lshr i64 %3238, 57
  %3241 = and i64 %3240, 1
  %3242 = add i64 %3239, %3235
  store i64 %3242, i64* %RDX.i2064, align 8
  %3243 = icmp ult i64 %3242, %3235
  %3244 = icmp ult i64 %3242, %3239
  %3245 = or i1 %3243, %3244
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %14, align 1
  %3247 = trunc i64 %3242 to i32
  %3248 = and i32 %3247, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %21, align 1
  %3253 = xor i64 %3235, %3242
  %3254 = lshr i64 %3253, 4
  %3255 = trunc i64 %3254 to i8
  %3256 = and i8 %3255, 1
  store i8 %3256, i8* %27, align 1
  %3257 = icmp eq i64 %3242, 0
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %30, align 1
  %3259 = lshr i64 %3242, 63
  %3260 = trunc i64 %3259 to i8
  store i8 %3260, i8* %33, align 1
  %3261 = lshr i64 %3235, 63
  %3262 = xor i64 %3259, %3261
  %3263 = xor i64 %3259, %3241
  %3264 = add nuw nsw i64 %3262, %3263
  %3265 = icmp eq i64 %3264, 2
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %39, align 1
  %3267 = add i64 %3234, 25
  store i64 %3267, i64* %3, align 8
  %3268 = load i32, i32* %3194, align 4
  %3269 = sext i32 %3268 to i64
  store i64 %3269, i64* %RCX.i2066, align 8
  %3270 = shl nsw i64 %3269, 2
  %3271 = add i64 %3270, %3242
  %3272 = add i64 %3234, 29
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = sext i32 %3274 to i64
  store i64 %3275, i64* %RCX.i2066, align 8
  %3276 = shl nsw i64 %3275, 2
  %3277 = add i64 %3276, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %3278 = add i64 %3234, 36
  store i64 %3278, i64* %3, align 8
  %3279 = inttoptr i64 %3277 to i32*
  %3280 = load i32, i32* %3279, align 4
  %3281 = zext i32 %3280 to i64
  store i64 %3281, i64* %RSI.i2060, align 8
  %3282 = add i64 %3234, 40
  store i64 %3282, i64* %3, align 8
  %3283 = load i32, i32* %3199, align 4
  %3284 = sext i32 %3283 to i64
  %3285 = shl nsw i64 %3284, 6
  store i64 %3285, i64* %RCX.i2066, align 8
  %3286 = lshr i64 %3284, 57
  %3287 = and i64 %3286, 1
  %3288 = add i64 %3285, %3235
  store i64 %3288, i64* %RAX.i1508, align 8
  %3289 = icmp ult i64 %3288, %3235
  %3290 = icmp ult i64 %3288, %3285
  %3291 = or i1 %3289, %3290
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %14, align 1
  %3293 = trunc i64 %3288 to i32
  %3294 = and i32 %3293, 255
  %3295 = tail call i32 @llvm.ctpop.i32(i32 %3294)
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = xor i8 %3297, 1
  store i8 %3298, i8* %21, align 1
  %3299 = xor i64 %3235, %3288
  %3300 = lshr i64 %3299, 4
  %3301 = trunc i64 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %27, align 1
  %3303 = icmp eq i64 %3288, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %30, align 1
  %3305 = lshr i64 %3288, 63
  %3306 = trunc i64 %3305 to i8
  store i8 %3306, i8* %33, align 1
  %3307 = xor i64 %3305, %3261
  %3308 = xor i64 %3305, %3287
  %3309 = add nuw nsw i64 %3307, %3308
  %3310 = icmp eq i64 %3309, 2
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %39, align 1
  %3312 = load i64, i64* %RBP.i, align 8
  %3313 = add i64 %3312, -4
  %3314 = add i64 %3234, 51
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to i32*
  %3316 = load i32, i32* %3315, align 4
  %3317 = sext i32 %3316 to i64
  store i64 %3317, i64* %RCX.i2066, align 8
  %3318 = shl nsw i64 %3317, 2
  %3319 = add i64 %3318, %3288
  %3320 = add i64 %3234, 54
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  store i32 %3280, i32* %3321, align 4
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -4
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = add i32 %3327, 1
  %3329 = zext i32 %3328 to i64
  store i64 %3329, i64* %RAX.i1508, align 8
  %3330 = icmp eq i32 %3327, -1
  %3331 = icmp eq i32 %3328, 0
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %14, align 1
  %3334 = and i32 %3328, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %21, align 1
  %3339 = xor i32 %3327, %3328
  %3340 = lshr i32 %3339, 4
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  store i8 %3342, i8* %27, align 1
  %3343 = zext i1 %3331 to i8
  store i8 %3343, i8* %30, align 1
  %3344 = lshr i32 %3328, 31
  %3345 = trunc i32 %3344 to i8
  store i8 %3345, i8* %33, align 1
  %3346 = lshr i32 %3327, 31
  %3347 = xor i32 %3344, %3346
  %3348 = add nuw nsw i32 %3347, %3344
  %3349 = icmp eq i32 %3348, 2
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %39, align 1
  %3351 = add i64 %3324, 9
  store i64 %3351, i64* %3, align 8
  store i32 %3328, i32* %3326, align 4
  %3352 = load i64, i64* %3, align 8
  %3353 = add i64 %3352, -83
  store i64 %3353, i64* %3, align 8
  br label %block_.L_40102e

block_.L_401086:                                  ; preds = %block_.L_40102e
  %3354 = add i64 %3234, 7
  store i64 %3354, i64* %3, align 8
  store i32 1, i32* %3194, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_40108d

block_.L_40108d:                                  ; preds = %block_4010a1, %block_.L_401086
  %3355 = phi i64 [ %3480, %block_4010a1 ], [ %.pre36, %block_.L_401086 ]
  %3356 = load i64, i64* %RBP.i, align 8
  %3357 = add i64 %3356, -4
  %3358 = add i64 %3355, 3
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RAX.i1508, align 8
  %3362 = add i64 %3356, -12
  %3363 = add i64 %3355, 7
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i32*
  %3365 = load i32, i32* %3364, align 4
  %3366 = sext i32 %3365 to i64
  store i64 %3366, i64* %RCX.i2066, align 8
  %3367 = shl nsw i64 %3366, 2
  %3368 = add i64 %3356, -1328
  %3369 = add i64 %3368, %3367
  %3370 = add i64 %3355, 14
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = sub i32 %3360, %3372
  %3374 = icmp ult i32 %3360, %3372
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %14, align 1
  %3376 = and i32 %3373, 255
  %3377 = tail call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  store i8 %3380, i8* %21, align 1
  %3381 = xor i32 %3372, %3360
  %3382 = xor i32 %3381, %3373
  %3383 = lshr i32 %3382, 4
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  store i8 %3385, i8* %27, align 1
  %3386 = icmp eq i32 %3373, 0
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %30, align 1
  %3388 = lshr i32 %3373, 31
  %3389 = trunc i32 %3388 to i8
  store i8 %3389, i8* %33, align 1
  %3390 = lshr i32 %3360, 31
  %3391 = lshr i32 %3372, 31
  %3392 = xor i32 %3391, %3390
  %3393 = xor i32 %3388, %3390
  %3394 = add nuw nsw i32 %3393, %3392
  %3395 = icmp eq i32 %3394, 2
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %39, align 1
  %3397 = icmp ne i8 %3389, 0
  %3398 = xor i1 %3397, %3395
  %.demorgan115 = or i1 %3386, %3398
  %.v116 = select i1 %.demorgan115, i64 20, i64 70
  %3399 = add i64 %3355, %.v116
  store i64 %3399, i64* %3, align 8
  br i1 %.demorgan115, label %block_4010a1, label %block_.L_4010d3

block_4010a1:                                     ; preds = %block_.L_40108d
  %3400 = add i64 %3356, -1168
  store i64 %3400, i64* %RAX.i1508, align 8
  %3401 = add i64 %3399, 11
  store i64 %3401, i64* %3, align 8
  %3402 = load i32, i32* %3364, align 4
  %3403 = sext i32 %3402 to i64
  %3404 = shl nsw i64 %3403, 6
  store i64 %3404, i64* %RCX.i2066, align 8
  %3405 = lshr i64 %3403, 57
  %3406 = and i64 %3405, 1
  %3407 = add i64 %3404, %3400
  store i64 %3407, i64* %RAX.i1508, align 8
  %3408 = icmp ult i64 %3407, %3400
  %3409 = icmp ult i64 %3407, %3404
  %3410 = or i1 %3408, %3409
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %14, align 1
  %3412 = trunc i64 %3407 to i32
  %3413 = and i32 %3412, 255
  %3414 = tail call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  store i8 %3417, i8* %21, align 1
  %3418 = xor i64 %3400, %3407
  %3419 = lshr i64 %3418, 4
  %3420 = trunc i64 %3419 to i8
  %3421 = and i8 %3420, 1
  store i8 %3421, i8* %27, align 1
  %3422 = icmp eq i64 %3407, 0
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %30, align 1
  %3424 = lshr i64 %3407, 63
  %3425 = trunc i64 %3424 to i8
  store i8 %3425, i8* %33, align 1
  %3426 = lshr i64 %3400, 63
  %3427 = xor i64 %3424, %3426
  %3428 = xor i64 %3424, %3406
  %3429 = add nuw nsw i64 %3427, %3428
  %3430 = icmp eq i64 %3429, 2
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %39, align 1
  %3432 = add i64 %3399, 22
  store i64 %3432, i64* %3, align 8
  %3433 = load i32, i32* %3359, align 4
  %3434 = sext i32 %3433 to i64
  store i64 %3434, i64* %RCX.i2066, align 8
  %3435 = shl nsw i64 %3434, 2
  %3436 = add i64 %3435, %3407
  %3437 = add i64 %3399, 25
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i32*
  %3439 = load i32, i32* %3438, align 4
  %3440 = zext i32 %3439 to i64
  store i64 %3440, i64* %RDX.i2064, align 8
  %3441 = add i64 %3399, 29
  store i64 %3441, i64* %3, align 8
  %3442 = load i32, i32* %3359, align 4
  %3443 = sext i32 %3442 to i64
  store i64 %3443, i64* %RAX.i1508, align 8
  %3444 = shl nsw i64 %3443, 2
  %3445 = add i64 %3356, -2688
  %3446 = add i64 %3445, %3444
  %3447 = add i64 %3399, 36
  store i64 %3447, i64* %3, align 8
  %3448 = inttoptr i64 %3446 to i32*
  store i32 %3439, i32* %3448, align 4
  %3449 = load i64, i64* %RBP.i, align 8
  %3450 = add i64 %3449, -4
  %3451 = load i64, i64* %3, align 8
  %3452 = add i64 %3451, 3
  store i64 %3452, i64* %3, align 8
  %3453 = inttoptr i64 %3450 to i32*
  %3454 = load i32, i32* %3453, align 4
  %3455 = add i32 %3454, 1
  %3456 = zext i32 %3455 to i64
  store i64 %3456, i64* %RAX.i1508, align 8
  %3457 = icmp eq i32 %3454, -1
  %3458 = icmp eq i32 %3455, 0
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %14, align 1
  %3461 = and i32 %3455, 255
  %3462 = tail call i32 @llvm.ctpop.i32(i32 %3461)
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  store i8 %3465, i8* %21, align 1
  %3466 = xor i32 %3454, %3455
  %3467 = lshr i32 %3466, 4
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  store i8 %3469, i8* %27, align 1
  %3470 = zext i1 %3458 to i8
  store i8 %3470, i8* %30, align 1
  %3471 = lshr i32 %3455, 31
  %3472 = trunc i32 %3471 to i8
  store i8 %3472, i8* %33, align 1
  %3473 = lshr i32 %3454, 31
  %3474 = xor i32 %3471, %3473
  %3475 = add nuw nsw i32 %3474, %3471
  %3476 = icmp eq i32 %3475, 2
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %39, align 1
  %3478 = add i64 %3451, 9
  store i64 %3478, i64* %3, align 8
  store i32 %3455, i32* %3453, align 4
  %3479 = load i64, i64* %3, align 8
  %3480 = add i64 %3479, -65
  store i64 %3480, i64* %3, align 8
  br label %block_.L_40108d

block_.L_4010d3:                                  ; preds = %block_.L_40108d
  %3481 = add i64 %3356, -1492
  %3482 = add i64 %3399, 10
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  store i32 0, i32* %3483, align 4
  %3484 = load i64, i64* %RBP.i, align 8
  %3485 = add i64 %3484, -4
  %3486 = load i64, i64* %3, align 8
  %3487 = add i64 %3486, 7
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3485 to i32*
  store i32 1, i32* %3488, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4010e4:                                  ; preds = %block_.L_4011c0, %block_.L_4010d3
  %3489 = phi i64 [ %.pre37, %block_.L_4010d3 ], [ %3888, %block_.L_4011c0 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4010d3 ], [ %MEMORY.26, %block_.L_4011c0 ]
  %3490 = load i64, i64* %RBP.i, align 8
  %3491 = add i64 %3490, -4
  %3492 = add i64 %3489, 7
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3491 to i32*
  %3494 = load i32, i32* %3493, align 4
  %3495 = add i32 %3494, -255
  %3496 = icmp ult i32 %3494, 255
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %14, align 1
  %3498 = and i32 %3495, 255
  %3499 = tail call i32 @llvm.ctpop.i32(i32 %3498)
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  %3502 = xor i8 %3501, 1
  store i8 %3502, i8* %21, align 1
  %3503 = xor i32 %3494, 16
  %3504 = xor i32 %3503, %3495
  %3505 = lshr i32 %3504, 4
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  store i8 %3507, i8* %27, align 1
  %3508 = icmp eq i32 %3495, 0
  %3509 = zext i1 %3508 to i8
  store i8 %3509, i8* %30, align 1
  %3510 = lshr i32 %3495, 31
  %3511 = trunc i32 %3510 to i8
  store i8 %3511, i8* %33, align 1
  %3512 = lshr i32 %3494, 31
  %3513 = xor i32 %3510, %3512
  %3514 = add nuw nsw i32 %3513, %3512
  %3515 = icmp eq i32 %3514, 2
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %39, align 1
  %3517 = icmp ne i8 %3511, 0
  %3518 = xor i1 %3517, %3515
  %.demorgan117 = or i1 %3508, %3518
  %.v118 = select i1 %.demorgan117, i64 13, i64 239
  %3519 = add i64 %3489, %.v118
  store i64 %3519, i64* %3, align 8
  br i1 %.demorgan117, label %block_4010f1, label %block_.L_4011d3

block_4010f1:                                     ; preds = %block_.L_4010e4
  %3520 = add i64 %3490, -16
  %3521 = add i64 %3519, 7
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i32*
  store i32 1, i32* %3522, align 4
  %3523 = load i64, i64* %RBP.i, align 8
  %3524 = add i64 %3523, -8
  %3525 = load i64, i64* %3, align 8
  %3526 = add i64 %3525, 7
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3524 to i32*
  store i32 1, i32* %3527, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_4010ff

block_.L_4010ff:                                  ; preds = %block_.L_40116d, %block_4010f1
  %3528 = phi i64 [ %.pre38, %block_4010f1 ], [ %3754, %block_.L_40116d ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_4010f1 ], [ %MEMORY.27, %block_.L_40116d ]
  %3529 = load i64, i64* %RBP.i, align 8
  %3530 = add i64 %3529, -8
  %3531 = add i64 %3528, 3
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RAX.i1508, align 8
  %3535 = add i64 %3529, -12
  %3536 = add i64 %3528, 7
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i32*
  %3538 = load i32, i32* %3537, align 4
  %3539 = sext i32 %3538 to i64
  store i64 %3539, i64* %RCX.i2066, align 8
  %3540 = shl nsw i64 %3539, 2
  %3541 = add i64 %3529, -1328
  %3542 = add i64 %3541, %3540
  %3543 = add i64 %3528, 14
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i32*
  %3545 = load i32, i32* %3544, align 4
  %3546 = sub i32 %3533, %3545
  %3547 = icmp ult i32 %3533, %3545
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %14, align 1
  %3549 = and i32 %3546, 255
  %3550 = tail call i32 @llvm.ctpop.i32(i32 %3549)
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  store i8 %3553, i8* %21, align 1
  %3554 = xor i32 %3545, %3533
  %3555 = xor i32 %3554, %3546
  %3556 = lshr i32 %3555, 4
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  store i8 %3558, i8* %27, align 1
  %3559 = icmp eq i32 %3546, 0
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %30, align 1
  %3561 = lshr i32 %3546, 31
  %3562 = trunc i32 %3561 to i8
  store i8 %3562, i8* %33, align 1
  %3563 = lshr i32 %3533, 31
  %3564 = lshr i32 %3545, 31
  %3565 = xor i32 %3564, %3563
  %3566 = xor i32 %3561, %3563
  %3567 = add nuw nsw i32 %3566, %3565
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %39, align 1
  %3570 = icmp ne i8 %3562, 0
  %3571 = xor i1 %3570, %3568
  %.demorgan119 = or i1 %3559, %3571
  %.v120 = select i1 %.demorgan119, i64 20, i64 129
  %3572 = add i64 %3528, %.v120
  store i64 %3572, i64* %3, align 8
  br i1 %.demorgan119, label %block_401113, label %block_.L_401180

block_401113:                                     ; preds = %block_.L_4010ff
  %3573 = add i64 %3572, 4
  store i64 %3573, i64* %3, align 8
  %3574 = load i32, i32* %3532, align 4
  %3575 = sext i32 %3574 to i64
  store i64 %3575, i64* %RAX.i1508, align 8
  %3576 = shl nsw i64 %3575, 2
  %3577 = add i64 %3529, -2688
  %3578 = add i64 %3577, %3576
  %3579 = add i64 %3572, 12
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = add i32 %3581, 1
  %3583 = icmp ne i32 %3581, -1
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %14, align 1
  %3585 = and i32 %3582, 255
  %3586 = tail call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  store i8 %3589, i8* %21, align 1
  %3590 = xor i32 %3581, 16
  %3591 = xor i32 %3582, %3590
  %3592 = lshr i32 %3591, 4
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  store i8 %3594, i8* %27, align 1
  %3595 = icmp eq i32 %3582, 0
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %30, align 1
  %3597 = lshr i32 %3582, 31
  %3598 = trunc i32 %3597 to i8
  store i8 %3598, i8* %33, align 1
  %3599 = lshr i32 %3581, 31
  %3600 = xor i32 %3599, 1
  %3601 = xor i32 %3597, %3599
  %3602 = add nuw nsw i32 %3601, %3600
  %3603 = icmp eq i32 %3602, 2
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %39, align 1
  %.v121 = select i1 %3595, i64 90, i64 18
  %3605 = add i64 %3572, %.v121
  store i64 %3605, i64* %3, align 8
  br i1 %3595, label %block_.L_40116d, label %block_401125

block_401125:                                     ; preds = %block_401113
  store i64 255, i64* %RAX.i1508, align 8
  %3606 = add i64 %3605, 9
  store i64 %3606, i64* %3, align 8
  %3607 = load i32, i32* %3532, align 4
  %3608 = sext i32 %3607 to i64
  store i64 %3608, i64* %RCX.i2066, align 8
  %3609 = shl nsw i64 %3608, 2
  %3610 = add i64 %3577, %3609
  %3611 = add i64 %3605, 16
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i32*
  %3613 = load i32, i32* %3612, align 4
  %3614 = zext i32 %3613 to i64
  store i64 %3614, i64* %RDX.i2064, align 8
  %3615 = add i64 %3605, 19
  store i64 %3615, i64* %3, align 8
  %3616 = load i32, i32* %3532, align 4
  %3617 = add i32 %3616, %3613
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RDX.i2064, align 8
  %3619 = icmp ult i32 %3617, %3613
  %3620 = icmp ult i32 %3617, %3616
  %3621 = or i1 %3619, %3620
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %14, align 1
  %3623 = and i32 %3617, 255
  %3624 = tail call i32 @llvm.ctpop.i32(i32 %3623)
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  store i8 %3627, i8* %21, align 1
  %3628 = xor i32 %3616, %3613
  %3629 = xor i32 %3628, %3617
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  store i8 %3632, i8* %27, align 1
  %3633 = icmp eq i32 %3617, 0
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %30, align 1
  %3635 = lshr i32 %3617, 31
  %3636 = trunc i32 %3635 to i8
  store i8 %3636, i8* %33, align 1
  %3637 = lshr i32 %3613, 31
  %3638 = lshr i32 %3616, 31
  %3639 = xor i32 %3635, %3637
  %3640 = xor i32 %3635, %3638
  %3641 = add nuw nsw i32 %3639, %3640
  %3642 = icmp eq i32 %3641, 2
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %39, align 1
  %3644 = add i64 %3529, -2716
  %3645 = add i64 %3605, 25
  store i64 %3645, i64* %3, align 8
  %3646 = inttoptr i64 %3644 to i32*
  store i32 255, i32* %3646, align 4
  %3647 = load i32, i32* %EDX.i2048, align 4
  %3648 = zext i32 %3647 to i64
  %3649 = load i64, i64* %3, align 8
  store i64 %3648, i64* %RAX.i1508, align 8
  %3650 = sext i32 %3647 to i64
  %3651 = lshr i64 %3650, 32
  store i64 %3651, i64* %57, align 8
  %3652 = load i64, i64* %RBP.i, align 8
  %3653 = add i64 %3652, -2716
  %3654 = add i64 %3649, 9
  store i64 %3654, i64* %3, align 8
  %3655 = inttoptr i64 %3653 to i32*
  %3656 = load i32, i32* %3655, align 4
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RSI.i2060, align 8
  %3658 = add i64 %3649, 11
  store i64 %3658, i64* %3, align 8
  %3659 = sext i32 %3656 to i64
  %3660 = shl nuw i64 %3651, 32
  %3661 = or i64 %3660, %3648
  %3662 = sdiv i64 %3661, %3659
  %3663 = shl i64 %3662, 32
  %3664 = ashr exact i64 %3663, 32
  %3665 = icmp eq i64 %3662, %3664
  br i1 %3665, label %3668, label %3666

; <label>:3666:                                   ; preds = %block_401125
  %3667 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3658, %struct.Memory* %MEMORY.26)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  %.pre41 = load i32, i32* %EDX.i2048, align 4
  br label %routine_idivl__esi.exit897

; <label>:3668:                                   ; preds = %block_401125
  %3669 = srem i64 %3661, %3659
  %3670 = and i64 %3662, 4294967295
  store i64 %3670, i64* %58, align 8
  %3671 = and i64 %3669, 4294967295
  store i64 %3671, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3672 = trunc i64 %3669 to i32
  br label %routine_idivl__esi.exit897

routine_idivl__esi.exit897:                       ; preds = %3668, %3666
  %3673 = phi i32 [ %.pre41, %3666 ], [ %3672, %3668 ]
  %3674 = phi i64 [ %.pre40, %3666 ], [ %3658, %3668 ]
  %3675 = phi i64 [ %.pre39, %3666 ], [ %3652, %3668 ]
  %3676 = phi %struct.Memory* [ %3667, %3666 ], [ %MEMORY.26, %3668 ]
  %3677 = add i64 %3675, -8
  %3678 = add i64 %3674, 4
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = sext i32 %3680 to i64
  store i64 %3681, i64* %RCX.i2066, align 8
  %3682 = shl nsw i64 %3681, 2
  %3683 = add i64 %3675, -2688
  %3684 = add i64 %3683, %3682
  %3685 = add i64 %3674, 11
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  store i32 %3673, i32* %3686, align 4
  %3687 = load i64, i64* %RBP.i, align 8
  %3688 = add i64 %3687, -8
  %3689 = load i64, i64* %3, align 8
  %3690 = add i64 %3689, 4
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = sext i32 %3692 to i64
  store i64 %3693, i64* %RCX.i2066, align 8
  %3694 = shl nsw i64 %3693, 2
  %3695 = add i64 %3687, -2688
  %3696 = add i64 %3695, %3694
  %3697 = add i64 %3689, 12
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = sext i32 %3699 to i64
  store i64 %3700, i64* %RCX.i2066, align 8
  %3701 = shl nsw i64 %3700, 2
  %3702 = add i64 %3701, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %3703 = add i64 %3689, 19
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RDX.i2064, align 8
  %3707 = add i64 %3687, -16
  %3708 = add i64 %3689, 22
  store i64 %3708, i64* %3, align 8
  %3709 = inttoptr i64 %3707 to i32*
  %3710 = load i32, i32* %3709, align 4
  %3711 = xor i32 %3710, %3705
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %3713 = and i32 %3711, 255
  %3714 = tail call i32 @llvm.ctpop.i32(i32 %3713)
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = xor i8 %3716, 1
  store i8 %3717, i8* %21, align 1
  %3718 = icmp eq i32 %3711, 0
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %30, align 1
  %3720 = lshr i32 %3711, 31
  %3721 = trunc i32 %3720 to i8
  store i8 %3721, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3722 = add i64 %3689, 25
  store i64 %3722, i64* %3, align 8
  store i32 %3711, i32* %3709, align 4
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40116d

block_.L_40116d:                                  ; preds = %routine_idivl__esi.exit897, %block_401113
  %3723 = phi i64 [ %3529, %block_401113 ], [ %.pre43, %routine_idivl__esi.exit897 ]
  %3724 = phi i64 [ %3605, %block_401113 ], [ %.pre42, %routine_idivl__esi.exit897 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_401113 ], [ %3676, %routine_idivl__esi.exit897 ]
  %3725 = add i64 %3723, -8
  %3726 = add i64 %3724, 8
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  %3728 = load i32, i32* %3727, align 4
  %3729 = add i32 %3728, 1
  %3730 = zext i32 %3729 to i64
  store i64 %3730, i64* %RAX.i1508, align 8
  %3731 = icmp eq i32 %3728, -1
  %3732 = icmp eq i32 %3729, 0
  %3733 = or i1 %3731, %3732
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %14, align 1
  %3735 = and i32 %3729, 255
  %3736 = tail call i32 @llvm.ctpop.i32(i32 %3735)
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  %3739 = xor i8 %3738, 1
  store i8 %3739, i8* %21, align 1
  %3740 = xor i32 %3728, %3729
  %3741 = lshr i32 %3740, 4
  %3742 = trunc i32 %3741 to i8
  %3743 = and i8 %3742, 1
  store i8 %3743, i8* %27, align 1
  %3744 = zext i1 %3732 to i8
  store i8 %3744, i8* %30, align 1
  %3745 = lshr i32 %3729, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %33, align 1
  %3747 = lshr i32 %3728, 31
  %3748 = xor i32 %3745, %3747
  %3749 = add nuw nsw i32 %3748, %3745
  %3750 = icmp eq i32 %3749, 2
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %39, align 1
  %3752 = add i64 %3724, 14
  store i64 %3752, i64* %3, align 8
  store i32 %3729, i32* %3727, align 4
  %3753 = load i64, i64* %3, align 8
  %3754 = add i64 %3753, -124
  store i64 %3754, i64* %3, align 8
  br label %block_.L_4010ff

block_.L_401180:                                  ; preds = %block_.L_4010ff
  %3755 = add i64 %3529, -16
  %3756 = add i64 %3572, 4
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  store i8 0, i8* %14, align 1
  %3759 = and i32 %3758, 255
  %3760 = tail call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  store i8 %3763, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3764 = icmp eq i32 %3758, 0
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %30, align 1
  %3766 = lshr i32 %3758, 31
  %3767 = trunc i32 %3766 to i8
  store i8 %3767, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %3764, i64 10, i64 64
  %3768 = add i64 %3572, %.v122
  store i64 %3768, i64* %3, align 8
  br i1 %3764, label %block_40118a, label %block_.L_4011c0

block_40118a:                                     ; preds = %block_.L_401180
  store i64 255, i64* %RAX.i1508, align 8
  %3769 = add i64 %3529, -4
  %3770 = add i64 %3768, 8
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = zext i32 %3772 to i64
  store i64 %3773, i64* %RCX.i2066, align 8
  %3774 = add i64 %3529, -1492
  %3775 = add i64 %3768, 15
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i32*
  %3777 = load i32, i32* %3776, align 4
  %3778 = sext i32 %3777 to i64
  store i64 %3778, i64* %RDX.i2064, align 8
  %3779 = shl nsw i64 %3778, 2
  %3780 = add i64 %3529, -1536
  %3781 = add i64 %3780, %3779
  %3782 = add i64 %3768, 22
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3781 to i32*
  store i32 %3772, i32* %3783, align 4
  %3784 = load i64, i64* %RAX.i1508, align 8
  %3785 = load i64, i64* %RBP.i, align 8
  %3786 = add i64 %3785, -4
  %3787 = load i64, i64* %3, align 8
  %3788 = add i64 %3787, 3
  store i64 %3788, i64* %3, align 8
  %3789 = trunc i64 %3784 to i32
  %3790 = inttoptr i64 %3786 to i32*
  %3791 = load i32, i32* %3790, align 4
  %3792 = sub i32 %3789, %3791
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RAX.i1508, align 8
  %3794 = icmp ult i32 %3789, %3791
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %14, align 1
  %3796 = and i32 %3792, 255
  %3797 = tail call i32 @llvm.ctpop.i32(i32 %3796)
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = xor i8 %3799, 1
  store i8 %3800, i8* %21, align 1
  %3801 = xor i32 %3791, %3789
  %3802 = xor i32 %3801, %3792
  %3803 = lshr i32 %3802, 4
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  store i8 %3805, i8* %27, align 1
  %3806 = icmp eq i32 %3792, 0
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %30, align 1
  %3808 = lshr i32 %3792, 31
  %3809 = trunc i32 %3808 to i8
  store i8 %3809, i8* %33, align 1
  %3810 = lshr i32 %3789, 31
  %3811 = lshr i32 %3791, 31
  %3812 = xor i32 %3811, %3810
  %3813 = xor i32 %3808, %3810
  %3814 = add nuw nsw i32 %3813, %3812
  %3815 = icmp eq i32 %3814, 2
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %39, align 1
  %3817 = add i64 %3785, -1492
  %3818 = add i64 %3787, 10
  store i64 %3818, i64* %3, align 8
  %3819 = inttoptr i64 %3817 to i32*
  %3820 = load i32, i32* %3819, align 4
  %3821 = sext i32 %3820 to i64
  store i64 %3821, i64* %RDX.i2064, align 8
  %3822 = shl nsw i64 %3821, 2
  %3823 = add i64 %3785, -1568
  %3824 = add i64 %3823, %3822
  %3825 = add i64 %3787, 17
  store i64 %3825, i64* %3, align 8
  %3826 = inttoptr i64 %3824 to i32*
  store i32 %3792, i32* %3826, align 4
  %3827 = load i64, i64* %RBP.i, align 8
  %3828 = add i64 %3827, -1492
  %3829 = load i64, i64* %3, align 8
  %3830 = add i64 %3829, 6
  store i64 %3830, i64* %3, align 8
  %3831 = inttoptr i64 %3828 to i32*
  %3832 = load i32, i32* %3831, align 4
  %3833 = add i32 %3832, 1
  %3834 = zext i32 %3833 to i64
  store i64 %3834, i64* %RAX.i1508, align 8
  %3835 = icmp eq i32 %3832, -1
  %3836 = icmp eq i32 %3833, 0
  %3837 = or i1 %3835, %3836
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %14, align 1
  %3839 = and i32 %3833, 255
  %3840 = tail call i32 @llvm.ctpop.i32(i32 %3839)
  %3841 = trunc i32 %3840 to i8
  %3842 = and i8 %3841, 1
  %3843 = xor i8 %3842, 1
  store i8 %3843, i8* %21, align 1
  %3844 = xor i32 %3832, %3833
  %3845 = lshr i32 %3844, 4
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  store i8 %3847, i8* %27, align 1
  %3848 = zext i1 %3836 to i8
  store i8 %3848, i8* %30, align 1
  %3849 = lshr i32 %3833, 31
  %3850 = trunc i32 %3849 to i8
  store i8 %3850, i8* %33, align 1
  %3851 = lshr i32 %3832, 31
  %3852 = xor i32 %3849, %3851
  %3853 = add nuw nsw i32 %3852, %3849
  %3854 = icmp eq i32 %3853, 2
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %39, align 1
  %3856 = add i64 %3829, 15
  store i64 %3856, i64* %3, align 8
  store i32 %3833, i32* %3831, align 4
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4011c0

block_.L_4011c0:                                  ; preds = %block_.L_401180, %block_40118a
  %3857 = phi i64 [ %.pre45, %block_40118a ], [ %3529, %block_.L_401180 ]
  %3858 = phi i64 [ %.pre44, %block_40118a ], [ %3768, %block_.L_401180 ]
  %3859 = add i64 %3857, -4
  %3860 = add i64 %3858, 8
  store i64 %3860, i64* %3, align 8
  %3861 = inttoptr i64 %3859 to i32*
  %3862 = load i32, i32* %3861, align 4
  %3863 = add i32 %3862, 1
  %3864 = zext i32 %3863 to i64
  store i64 %3864, i64* %RAX.i1508, align 8
  %3865 = icmp eq i32 %3862, -1
  %3866 = icmp eq i32 %3863, 0
  %3867 = or i1 %3865, %3866
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %14, align 1
  %3869 = and i32 %3863, 255
  %3870 = tail call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  store i8 %3873, i8* %21, align 1
  %3874 = xor i32 %3862, %3863
  %3875 = lshr i32 %3874, 4
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  store i8 %3877, i8* %27, align 1
  %3878 = zext i1 %3866 to i8
  store i8 %3878, i8* %30, align 1
  %3879 = lshr i32 %3863, 31
  %3880 = trunc i32 %3879 to i8
  store i8 %3880, i8* %33, align 1
  %3881 = lshr i32 %3862, 31
  %3882 = xor i32 %3879, %3881
  %3883 = add nuw nsw i32 %3882, %3879
  %3884 = icmp eq i32 %3883, 2
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %39, align 1
  %3886 = add i64 %3858, 14
  store i64 %3886, i64* %3, align 8
  store i32 %3863, i32* %3861, align 4
  %3887 = load i64, i64* %3, align 8
  %3888 = add i64 %3887, -234
  store i64 %3888, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4011d3:                                  ; preds = %block_.L_4010e4
  %3889 = add i64 %3490, -1492
  %3890 = add i64 %3519, 6
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3889 to i32*
  %3892 = load i32, i32* %3891, align 4
  %3893 = zext i32 %3892 to i64
  store i64 %3893, i64* %RAX.i1508, align 8
  %3894 = add i64 %3490, -12
  %3895 = add i64 %3519, 10
  store i64 %3895, i64* %3, align 8
  %3896 = inttoptr i64 %3894 to i32*
  %3897 = load i32, i32* %3896, align 4
  %3898 = sext i32 %3897 to i64
  store i64 %3898, i64* %RCX.i2066, align 8
  %3899 = shl nsw i64 %3898, 2
  %3900 = add i64 %3490, -1328
  %3901 = add i64 %3900, %3899
  %3902 = add i64 %3519, 17
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = sub i32 %3892, %3904
  %3906 = icmp ult i32 %3892, %3904
  %3907 = zext i1 %3906 to i8
  store i8 %3907, i8* %14, align 1
  %3908 = and i32 %3905, 255
  %3909 = tail call i32 @llvm.ctpop.i32(i32 %3908)
  %3910 = trunc i32 %3909 to i8
  %3911 = and i8 %3910, 1
  %3912 = xor i8 %3911, 1
  store i8 %3912, i8* %21, align 1
  %3913 = xor i32 %3904, %3892
  %3914 = xor i32 %3913, %3905
  %3915 = lshr i32 %3914, 4
  %3916 = trunc i32 %3915 to i8
  %3917 = and i8 %3916, 1
  store i8 %3917, i8* %27, align 1
  %3918 = icmp eq i32 %3905, 0
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %30, align 1
  %3920 = lshr i32 %3905, 31
  %3921 = trunc i32 %3920 to i8
  store i8 %3921, i8* %33, align 1
  %3922 = lshr i32 %3892, 31
  %3923 = lshr i32 %3904, 31
  %3924 = xor i32 %3923, %3922
  %3925 = xor i32 %3920, %3922
  %3926 = add nuw nsw i32 %3925, %3924
  %3927 = icmp eq i32 %3926, 2
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %39, align 1
  %.v123 = select i1 %3918, i64 23, i64 1296
  %3929 = add i64 %3519, %.v123
  %3930 = add i64 %3929, 7
  store i64 %3930, i64* %3, align 8
  br i1 %3918, label %block_4011ea, label %block_.L_4016e3

block_4011ea:                                     ; preds = %block_.L_4011d3
  store i32 1, i32* %3493, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_4011f1

block_.L_4011f1:                                  ; preds = %block_.L_401404, %block_4011ea
  %3931 = phi i64 [ %.pre46, %block_4011ea ], [ %4869, %block_.L_401404 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.25, %block_4011ea ], [ %MEMORY.36, %block_.L_401404 ]
  %3932 = load i64, i64* %RBP.i, align 8
  %3933 = add i64 %3932, -4
  %3934 = add i64 %3931, 3
  store i64 %3934, i64* %3, align 8
  %3935 = inttoptr i64 %3933 to i32*
  %3936 = load i32, i32* %3935, align 4
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %RAX.i1508, align 8
  %3938 = add i64 %3932, -12
  %3939 = add i64 %3931, 7
  store i64 %3939, i64* %3, align 8
  %3940 = inttoptr i64 %3938 to i32*
  %3941 = load i32, i32* %3940, align 4
  %3942 = sext i32 %3941 to i64
  store i64 %3942, i64* %RCX.i2066, align 8
  %3943 = shl nsw i64 %3942, 2
  %3944 = add i64 %3932, -1328
  %3945 = add i64 %3944, %3943
  %3946 = add i64 %3931, 14
  store i64 %3946, i64* %3, align 8
  %3947 = inttoptr i64 %3945 to i32*
  %3948 = load i32, i32* %3947, align 4
  %3949 = sub i32 %3936, %3948
  %3950 = icmp ult i32 %3936, %3948
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %14, align 1
  %3952 = and i32 %3949, 255
  %3953 = tail call i32 @llvm.ctpop.i32(i32 %3952)
  %3954 = trunc i32 %3953 to i8
  %3955 = and i8 %3954, 1
  %3956 = xor i8 %3955, 1
  store i8 %3956, i8* %21, align 1
  %3957 = xor i32 %3948, %3936
  %3958 = xor i32 %3957, %3949
  %3959 = lshr i32 %3958, 4
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  store i8 %3961, i8* %27, align 1
  %3962 = icmp eq i32 %3949, 0
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %30, align 1
  %3964 = lshr i32 %3949, 31
  %3965 = trunc i32 %3964 to i8
  store i8 %3965, i8* %33, align 1
  %3966 = lshr i32 %3936, 31
  %3967 = lshr i32 %3948, 31
  %3968 = xor i32 %3967, %3966
  %3969 = xor i32 %3964, %3966
  %3970 = add nuw nsw i32 %3969, %3968
  %3971 = icmp eq i32 %3970, 2
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %39, align 1
  %3973 = icmp ne i8 %3965, 0
  %3974 = xor i1 %3973, %3971
  %.demorgan124 = or i1 %3962, %3974
  %.v125 = select i1 %.demorgan124, i64 20, i64 575
  %3975 = add i64 %3931, %.v125
  store i64 %3975, i64* %3, align 8
  br i1 %.demorgan124, label %block_401205, label %block_.L_401430

block_401205:                                     ; preds = %block_.L_4011f1
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %3, align 8
  %3977 = load i32, i32* %3935, align 4
  %3978 = sext i32 %3977 to i64
  store i64 %3978, i64* %RAX.i1508, align 8
  %3979 = shl nsw i64 %3978, 2
  %3980 = add i64 %3932, -1488
  %3981 = add i64 %3980, %3979
  %3982 = add i64 %3975, 12
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3981 to i32*
  %3984 = load i32, i32* %3983, align 4
  %3985 = add i32 %3984, 1
  %3986 = icmp ne i32 %3984, -1
  %3987 = zext i1 %3986 to i8
  store i8 %3987, i8* %14, align 1
  %3988 = and i32 %3985, 255
  %3989 = tail call i32 @llvm.ctpop.i32(i32 %3988)
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = xor i8 %3991, 1
  store i8 %3992, i8* %21, align 1
  %3993 = xor i32 %3984, 16
  %3994 = xor i32 %3985, %3993
  %3995 = lshr i32 %3994, 4
  %3996 = trunc i32 %3995 to i8
  %3997 = and i8 %3996, 1
  store i8 %3997, i8* %27, align 1
  %3998 = icmp eq i32 %3985, 0
  %3999 = zext i1 %3998 to i8
  store i8 %3999, i8* %30, align 1
  %4000 = lshr i32 %3985, 31
  %4001 = trunc i32 %4000 to i8
  store i8 %4001, i8* %33, align 1
  %4002 = lshr i32 %3984, 31
  %4003 = xor i32 %4002, 1
  %4004 = xor i32 %4000, %4002
  %4005 = add nuw nsw i32 %4004, %4003
  %4006 = icmp eq i32 %4005, 2
  %4007 = zext i1 %4006 to i8
  store i8 %4007, i8* %39, align 1
  %.v126 = select i1 %3998, i64 118, i64 18
  %4008 = add i64 %3975, %.v126
  store i64 %4008, i64* %3, align 8
  br i1 %3998, label %block_.L_40127b, label %block_401217

block_401217:                                     ; preds = %block_401205
  %4009 = add i64 %3932, -1168
  store i64 %4009, i64* %RAX.i1508, align 8
  %4010 = add i64 %4008, 11
  store i64 %4010, i64* %3, align 8
  %4011 = load i32, i32* %3940, align 4
  %4012 = sext i32 %4011 to i64
  %4013 = shl nsw i64 %4012, 6
  store i64 %4013, i64* %RCX.i2066, align 8
  %4014 = lshr i64 %4012, 57
  %4015 = and i64 %4014, 1
  %4016 = add i64 %4013, %4009
  store i64 %4016, i64* %RAX.i1508, align 8
  %4017 = icmp ult i64 %4016, %4009
  %4018 = icmp ult i64 %4016, %4013
  %4019 = or i1 %4017, %4018
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %14, align 1
  %4021 = trunc i64 %4016 to i32
  %4022 = and i32 %4021, 255
  %4023 = tail call i32 @llvm.ctpop.i32(i32 %4022)
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  %4026 = xor i8 %4025, 1
  store i8 %4026, i8* %21, align 1
  %4027 = xor i64 %4009, %4016
  %4028 = lshr i64 %4027, 4
  %4029 = trunc i64 %4028 to i8
  %4030 = and i8 %4029, 1
  store i8 %4030, i8* %27, align 1
  %4031 = icmp eq i64 %4016, 0
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %30, align 1
  %4033 = lshr i64 %4016, 63
  %4034 = trunc i64 %4033 to i8
  store i8 %4034, i8* %33, align 1
  %4035 = lshr i64 %4009, 63
  %4036 = xor i64 %4033, %4035
  %4037 = xor i64 %4033, %4015
  %4038 = add nuw nsw i64 %4036, %4037
  %4039 = icmp eq i64 %4038, 2
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %39, align 1
  %4041 = add i64 %4008, 22
  store i64 %4041, i64* %3, align 8
  %4042 = load i32, i32* %3935, align 4
  %4043 = sext i32 %4042 to i64
  store i64 %4043, i64* %RCX.i2066, align 8
  %4044 = shl nsw i64 %4043, 2
  %4045 = add i64 %4044, %4016
  %4046 = add i64 %4008, 26
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i32*
  %4048 = load i32, i32* %4047, align 4
  %4049 = add i32 %4048, 1
  %4050 = icmp ne i32 %4048, -1
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %14, align 1
  %4052 = and i32 %4049, 255
  %4053 = tail call i32 @llvm.ctpop.i32(i32 %4052)
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  %4056 = xor i8 %4055, 1
  store i8 %4056, i8* %21, align 1
  %4057 = xor i32 %4048, 16
  %4058 = xor i32 %4049, %4057
  %4059 = lshr i32 %4058, 4
  %4060 = trunc i32 %4059 to i8
  %4061 = and i8 %4060, 1
  store i8 %4061, i8* %27, align 1
  %4062 = icmp eq i32 %4049, 0
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %30, align 1
  %4064 = lshr i32 %4049, 31
  %4065 = trunc i32 %4064 to i8
  store i8 %4065, i8* %33, align 1
  %4066 = lshr i32 %4048, 31
  %4067 = xor i32 %4066, 1
  %4068 = xor i32 %4064, %4066
  %4069 = add nuw nsw i32 %4068, %4067
  %4070 = icmp eq i32 %4069, 2
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %39, align 1
  %.v127 = select i1 %4062, i64 100, i64 32
  %4072 = add i64 %4008, %.v127
  store i64 %4072, i64* %3, align 8
  br i1 %4062, label %block_.L_40127b, label %block_401237

block_401237:                                     ; preds = %block_401217
  store i64 %4009, i64* %RAX.i1508, align 8
  %4073 = add i64 %4072, 11
  store i64 %4073, i64* %3, align 8
  %4074 = load i32, i32* %3935, align 4
  %4075 = sext i32 %4074 to i64
  store i64 %4075, i64* %RCX.i2066, align 8
  %4076 = shl nsw i64 %4075, 2
  %4077 = add i64 %3980, %4076
  %4078 = add i64 %4072, 19
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4077 to i32*
  %4080 = load i32, i32* %4079, align 4
  %4081 = sext i32 %4080 to i64
  store i64 %4081, i64* %RCX.i2066, align 8
  %4082 = shl nsw i64 %4081, 2
  %4083 = add i64 %4082, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %4084 = add i64 %4072, 26
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i32*
  %4086 = load i32, i32* %4085, align 4
  %4087 = zext i32 %4086 to i64
  store i64 %4087, i64* %RDX.i2064, align 8
  %4088 = add i64 %4072, 30
  store i64 %4088, i64* %3, align 8
  %4089 = load i32, i32* %3940, align 4
  %4090 = sext i32 %4089 to i64
  %4091 = shl nsw i64 %4090, 6
  store i64 %4091, i64* %RCX.i2066, align 8
  %4092 = lshr i64 %4090, 57
  %4093 = and i64 %4092, 1
  %4094 = add i64 %4091, %4009
  store i64 %4094, i64* %RAX.i1508, align 8
  %4095 = icmp ult i64 %4094, %4009
  %4096 = icmp ult i64 %4094, %4091
  %4097 = or i1 %4095, %4096
  %4098 = zext i1 %4097 to i8
  store i8 %4098, i8* %14, align 1
  %4099 = trunc i64 %4094 to i32
  %4100 = and i32 %4099, 255
  %4101 = tail call i32 @llvm.ctpop.i32(i32 %4100)
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = xor i8 %4103, 1
  store i8 %4104, i8* %21, align 1
  %4105 = xor i64 %4009, %4094
  %4106 = lshr i64 %4105, 4
  %4107 = trunc i64 %4106 to i8
  %4108 = and i8 %4107, 1
  store i8 %4108, i8* %27, align 1
  %4109 = icmp eq i64 %4094, 0
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %30, align 1
  %4111 = lshr i64 %4094, 63
  %4112 = trunc i64 %4111 to i8
  store i8 %4112, i8* %33, align 1
  %4113 = xor i64 %4111, %4035
  %4114 = xor i64 %4111, %4093
  %4115 = add nuw nsw i64 %4113, %4114
  %4116 = icmp eq i64 %4115, 2
  %4117 = zext i1 %4116 to i8
  store i8 %4117, i8* %39, align 1
  %4118 = add i64 %4072, 41
  store i64 %4118, i64* %3, align 8
  %4119 = load i32, i32* %3935, align 4
  %4120 = sext i32 %4119 to i64
  store i64 %4120, i64* %RCX.i2066, align 8
  %4121 = shl nsw i64 %4120, 2
  %4122 = add i64 %4121, %4094
  %4123 = add i64 %4072, 45
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = sext i32 %4125 to i64
  store i64 %4126, i64* %RAX.i1508, align 8
  %4127 = shl nsw i64 %4126, 2
  %4128 = add i64 %4127, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4129 = add i64 %4072, 52
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = xor i32 %4131, %4086
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4134 = and i32 %4132, 255
  %4135 = tail call i32 @llvm.ctpop.i32(i32 %4134)
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  store i8 %4138, i8* %21, align 1
  %4139 = icmp eq i32 %4132, 0
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %30, align 1
  %4141 = lshr i32 %4132, 31
  %4142 = trunc i32 %4141 to i8
  store i8 %4142, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4143 = add i64 %4072, 56
  store i64 %4143, i64* %3, align 8
  %4144 = load i32, i32* %3935, align 4
  %4145 = sext i32 %4144 to i64
  store i64 %4145, i64* %RAX.i1508, align 8
  %4146 = shl nsw i64 %4145, 2
  %4147 = add i64 %3932, -1616
  %4148 = add i64 %4147, %4146
  %4149 = add i64 %4072, 63
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i32*
  store i32 %4132, i32* %4150, align 4
  %4151 = load i64, i64* %3, align 8
  %4152 = add i64 %4151, 214
  br label %block_.L_40134c

block_.L_40127b:                                  ; preds = %block_401217, %block_401205
  %4153 = phi i64 [ %4008, %block_401205 ], [ %4072, %block_401217 ]
  %4154 = add i64 %4153, 4
  store i64 %4154, i64* %3, align 8
  %4155 = load i32, i32* %3935, align 4
  %4156 = sext i32 %4155 to i64
  store i64 %4156, i64* %RAX.i1508, align 8
  %4157 = shl nsw i64 %4156, 2
  %4158 = add i64 %3980, %4157
  %4159 = add i64 %4153, 12
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = add i32 %4161, 1
  %4163 = icmp ne i32 %4161, -1
  %4164 = zext i1 %4163 to i8
  store i8 %4164, i8* %14, align 1
  %4165 = and i32 %4162, 255
  %4166 = tail call i32 @llvm.ctpop.i32(i32 %4165)
  %4167 = trunc i32 %4166 to i8
  %4168 = and i8 %4167, 1
  %4169 = xor i8 %4168, 1
  store i8 %4169, i8* %21, align 1
  %4170 = xor i32 %4161, 16
  %4171 = xor i32 %4162, %4170
  %4172 = lshr i32 %4171, 4
  %4173 = trunc i32 %4172 to i8
  %4174 = and i8 %4173, 1
  store i8 %4174, i8* %27, align 1
  %4175 = icmp eq i32 %4162, 0
  %4176 = zext i1 %4175 to i8
  store i8 %4176, i8* %30, align 1
  %4177 = lshr i32 %4162, 31
  %4178 = trunc i32 %4177 to i8
  store i8 %4178, i8* %33, align 1
  %4179 = lshr i32 %4161, 31
  %4180 = xor i32 %4179, 1
  %4181 = xor i32 %4177, %4179
  %4182 = add nuw nsw i32 %4181, %4180
  %4183 = icmp eq i32 %4182, 2
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %39, align 1
  %.v131 = select i1 %4175, i64 85, i64 18
  %4185 = add i64 %4153, %.v131
  store i64 %4185, i64* %3, align 8
  br i1 %4175, label %block_.L_4012d0, label %block_40128d

block_40128d:                                     ; preds = %block_.L_40127b
  %4186 = add i64 %3932, -1168
  store i64 %4186, i64* %RAX.i1508, align 8
  %4187 = add i64 %4185, 11
  store i64 %4187, i64* %3, align 8
  %4188 = load i32, i32* %3940, align 4
  %4189 = sext i32 %4188 to i64
  %4190 = shl nsw i64 %4189, 6
  store i64 %4190, i64* %RCX.i2066, align 8
  %4191 = lshr i64 %4189, 57
  %4192 = and i64 %4191, 1
  %4193 = add i64 %4190, %4186
  store i64 %4193, i64* %RAX.i1508, align 8
  %4194 = icmp ult i64 %4193, %4186
  %4195 = icmp ult i64 %4193, %4190
  %4196 = or i1 %4194, %4195
  %4197 = zext i1 %4196 to i8
  store i8 %4197, i8* %14, align 1
  %4198 = trunc i64 %4193 to i32
  %4199 = and i32 %4198, 255
  %4200 = tail call i32 @llvm.ctpop.i32(i32 %4199)
  %4201 = trunc i32 %4200 to i8
  %4202 = and i8 %4201, 1
  %4203 = xor i8 %4202, 1
  store i8 %4203, i8* %21, align 1
  %4204 = xor i64 %4186, %4193
  %4205 = lshr i64 %4204, 4
  %4206 = trunc i64 %4205 to i8
  %4207 = and i8 %4206, 1
  store i8 %4207, i8* %27, align 1
  %4208 = icmp eq i64 %4193, 0
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %30, align 1
  %4210 = lshr i64 %4193, 63
  %4211 = trunc i64 %4210 to i8
  store i8 %4211, i8* %33, align 1
  %4212 = lshr i64 %4186, 63
  %4213 = xor i64 %4210, %4212
  %4214 = xor i64 %4210, %4192
  %4215 = add nuw nsw i64 %4213, %4214
  %4216 = icmp eq i64 %4215, 2
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %39, align 1
  %4218 = add i64 %4185, 22
  store i64 %4218, i64* %3, align 8
  %4219 = load i32, i32* %3935, align 4
  %4220 = sext i32 %4219 to i64
  store i64 %4220, i64* %RCX.i2066, align 8
  %4221 = shl nsw i64 %4220, 2
  %4222 = add i64 %4221, %4193
  %4223 = add i64 %4185, 26
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = add i32 %4225, 1
  %4227 = icmp ne i32 %4225, -1
  %4228 = zext i1 %4227 to i8
  store i8 %4228, i8* %14, align 1
  %4229 = and i32 %4226, 255
  %4230 = tail call i32 @llvm.ctpop.i32(i32 %4229)
  %4231 = trunc i32 %4230 to i8
  %4232 = and i8 %4231, 1
  %4233 = xor i8 %4232, 1
  store i8 %4233, i8* %21, align 1
  %4234 = xor i32 %4225, 16
  %4235 = xor i32 %4226, %4234
  %4236 = lshr i32 %4235, 4
  %4237 = trunc i32 %4236 to i8
  %4238 = and i8 %4237, 1
  store i8 %4238, i8* %27, align 1
  %4239 = icmp eq i32 %4226, 0
  %4240 = zext i1 %4239 to i8
  store i8 %4240, i8* %30, align 1
  %4241 = lshr i32 %4226, 31
  %4242 = trunc i32 %4241 to i8
  store i8 %4242, i8* %33, align 1
  %4243 = lshr i32 %4225, 31
  %4244 = xor i32 %4243, 1
  %4245 = xor i32 %4241, %4243
  %4246 = add nuw nsw i32 %4245, %4244
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %39, align 1
  %.v132 = select i1 %4239, i64 32, i64 67
  %4249 = add i64 %4185, %.v132
  store i64 %4249, i64* %3, align 8
  br i1 %4239, label %block_4012ad, label %block_.L_4012d0

block_4012ad:                                     ; preds = %block_40128d
  %4250 = add i64 %4249, 4
  store i64 %4250, i64* %3, align 8
  %4251 = load i32, i32* %3935, align 4
  %4252 = sext i32 %4251 to i64
  store i64 %4252, i64* %RAX.i1508, align 8
  %4253 = shl nsw i64 %4252, 2
  %4254 = add i64 %3980, %4253
  %4255 = add i64 %4249, 12
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = sext i32 %4257 to i64
  store i64 %4258, i64* %RAX.i1508, align 8
  %4259 = shl nsw i64 %4258, 2
  %4260 = add i64 %4259, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4261 = add i64 %4249, 19
  store i64 %4261, i64* %3, align 8
  %4262 = inttoptr i64 %4260 to i32*
  %4263 = load i32, i32* %4262, align 4
  %4264 = zext i32 %4263 to i64
  store i64 %4264, i64* %RCX.i2066, align 8
  %4265 = add i64 %4249, 23
  store i64 %4265, i64* %3, align 8
  %4266 = load i32, i32* %3935, align 4
  %4267 = sext i32 %4266 to i64
  store i64 %4267, i64* %RAX.i1508, align 8
  %4268 = shl nsw i64 %4267, 2
  %4269 = add i64 %3932, -1616
  %4270 = add i64 %4269, %4268
  %4271 = add i64 %4249, 30
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i32*
  store i32 %4263, i32* %4272, align 4
  %4273 = load i64, i64* %3, align 8
  %4274 = add i64 %4273, 124
  br label %block_.L_401347

block_.L_4012d0:                                  ; preds = %block_40128d, %block_.L_40127b
  %4275 = phi i64 [ %4185, %block_.L_40127b ], [ %4249, %block_40128d ]
  %4276 = add i64 %4275, 4
  store i64 %4276, i64* %3, align 8
  %4277 = load i32, i32* %3935, align 4
  %4278 = sext i32 %4277 to i64
  store i64 %4278, i64* %RAX.i1508, align 8
  %4279 = shl nsw i64 %4278, 2
  %4280 = add i64 %3980, %4279
  %4281 = add i64 %4275, 12
  store i64 %4281, i64* %3, align 8
  %4282 = inttoptr i64 %4280 to i32*
  %4283 = load i32, i32* %4282, align 4
  %4284 = add i32 %4283, 1
  %4285 = icmp ne i32 %4283, -1
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %14, align 1
  %4287 = and i32 %4284, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %21, align 1
  %4292 = xor i32 %4283, 16
  %4293 = xor i32 %4284, %4292
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %27, align 1
  %4297 = icmp eq i32 %4284, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %30, align 1
  %4299 = lshr i32 %4284, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %33, align 1
  %4301 = lshr i32 %4283, 31
  %4302 = xor i32 %4301, 1
  %4303 = xor i32 %4299, %4301
  %4304 = add nuw nsw i32 %4303, %4302
  %4305 = icmp eq i32 %4304, 2
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %39, align 1
  %.v133 = select i1 %4297, i64 18, i64 99
  %4307 = add i64 %4275, %.v133
  store i64 %4307, i64* %3, align 8
  br i1 %4297, label %block_4012e2, label %block_.L_401333

block_4012e2:                                     ; preds = %block_.L_4012d0
  %4308 = add i64 %3932, -1168
  store i64 %4308, i64* %RAX.i1508, align 8
  %4309 = add i64 %4307, 11
  store i64 %4309, i64* %3, align 8
  %4310 = load i32, i32* %3940, align 4
  %4311 = sext i32 %4310 to i64
  %4312 = shl nsw i64 %4311, 6
  store i64 %4312, i64* %RCX.i2066, align 8
  %4313 = lshr i64 %4311, 57
  %4314 = and i64 %4313, 1
  %4315 = add i64 %4312, %4308
  store i64 %4315, i64* %RAX.i1508, align 8
  %4316 = icmp ult i64 %4315, %4308
  %4317 = icmp ult i64 %4315, %4312
  %4318 = or i1 %4316, %4317
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %14, align 1
  %4320 = trunc i64 %4315 to i32
  %4321 = and i32 %4320, 255
  %4322 = tail call i32 @llvm.ctpop.i32(i32 %4321)
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  %4325 = xor i8 %4324, 1
  store i8 %4325, i8* %21, align 1
  %4326 = xor i64 %4308, %4315
  %4327 = lshr i64 %4326, 4
  %4328 = trunc i64 %4327 to i8
  %4329 = and i8 %4328, 1
  store i8 %4329, i8* %27, align 1
  %4330 = icmp eq i64 %4315, 0
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %30, align 1
  %4332 = lshr i64 %4315, 63
  %4333 = trunc i64 %4332 to i8
  store i8 %4333, i8* %33, align 1
  %4334 = lshr i64 %4308, 63
  %4335 = xor i64 %4332, %4334
  %4336 = xor i64 %4332, %4314
  %4337 = add nuw nsw i64 %4335, %4336
  %4338 = icmp eq i64 %4337, 2
  %4339 = zext i1 %4338 to i8
  store i8 %4339, i8* %39, align 1
  %4340 = add i64 %4307, 22
  store i64 %4340, i64* %3, align 8
  %4341 = load i32, i32* %3935, align 4
  %4342 = sext i32 %4341 to i64
  store i64 %4342, i64* %RCX.i2066, align 8
  %4343 = shl nsw i64 %4342, 2
  %4344 = add i64 %4343, %4315
  %4345 = add i64 %4307, 26
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = add i32 %4347, 1
  %4349 = icmp ne i32 %4347, -1
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %14, align 1
  %4351 = and i32 %4348, 255
  %4352 = tail call i32 @llvm.ctpop.i32(i32 %4351)
  %4353 = trunc i32 %4352 to i8
  %4354 = and i8 %4353, 1
  %4355 = xor i8 %4354, 1
  store i8 %4355, i8* %21, align 1
  %4356 = xor i32 %4347, 16
  %4357 = xor i32 %4348, %4356
  %4358 = lshr i32 %4357, 4
  %4359 = trunc i32 %4358 to i8
  %4360 = and i8 %4359, 1
  store i8 %4360, i8* %27, align 1
  %4361 = icmp eq i32 %4348, 0
  %4362 = zext i1 %4361 to i8
  store i8 %4362, i8* %30, align 1
  %4363 = lshr i32 %4348, 31
  %4364 = trunc i32 %4363 to i8
  store i8 %4364, i8* %33, align 1
  %4365 = lshr i32 %4347, 31
  %4366 = xor i32 %4365, 1
  %4367 = xor i32 %4363, %4365
  %4368 = add nuw nsw i32 %4367, %4366
  %4369 = icmp eq i32 %4368, 2
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %39, align 1
  %.v134 = select i1 %4361, i64 81, i64 32
  %4371 = add i64 %4307, %.v134
  store i64 %4371, i64* %3, align 8
  br i1 %4361, label %block_.L_401333, label %block_401302

block_401302:                                     ; preds = %block_4012e2
  store i64 %4308, i64* %RAX.i1508, align 8
  %4372 = add i64 %4371, 11
  store i64 %4372, i64* %3, align 8
  %4373 = load i32, i32* %3940, align 4
  %4374 = sext i32 %4373 to i64
  %4375 = shl nsw i64 %4374, 6
  store i64 %4375, i64* %RCX.i2066, align 8
  %4376 = lshr i64 %4374, 57
  %4377 = and i64 %4376, 1
  %4378 = add i64 %4375, %4308
  store i64 %4378, i64* %RAX.i1508, align 8
  %4379 = icmp ult i64 %4378, %4308
  %4380 = icmp ult i64 %4378, %4375
  %4381 = or i1 %4379, %4380
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %14, align 1
  %4383 = trunc i64 %4378 to i32
  %4384 = and i32 %4383, 255
  %4385 = tail call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  store i8 %4388, i8* %21, align 1
  %4389 = xor i64 %4308, %4378
  %4390 = lshr i64 %4389, 4
  %4391 = trunc i64 %4390 to i8
  %4392 = and i8 %4391, 1
  store i8 %4392, i8* %27, align 1
  %4393 = icmp eq i64 %4378, 0
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %30, align 1
  %4395 = lshr i64 %4378, 63
  %4396 = trunc i64 %4395 to i8
  store i8 %4396, i8* %33, align 1
  %4397 = xor i64 %4395, %4334
  %4398 = xor i64 %4395, %4377
  %4399 = add nuw nsw i64 %4397, %4398
  %4400 = icmp eq i64 %4399, 2
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %39, align 1
  %4402 = add i64 %4371, 22
  store i64 %4402, i64* %3, align 8
  %4403 = load i32, i32* %3935, align 4
  %4404 = sext i32 %4403 to i64
  store i64 %4404, i64* %RCX.i2066, align 8
  %4405 = shl nsw i64 %4404, 2
  %4406 = add i64 %4405, %4378
  %4407 = add i64 %4371, 26
  store i64 %4407, i64* %3, align 8
  %4408 = inttoptr i64 %4406 to i32*
  %4409 = load i32, i32* %4408, align 4
  %4410 = sext i32 %4409 to i64
  store i64 %4410, i64* %RAX.i1508, align 8
  %4411 = shl nsw i64 %4410, 2
  %4412 = add i64 %4411, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4413 = add i64 %4371, 33
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = zext i32 %4415 to i64
  store i64 %4416, i64* %RDX.i2064, align 8
  %4417 = add i64 %4371, 37
  store i64 %4417, i64* %3, align 8
  %4418 = load i32, i32* %3935, align 4
  %4419 = sext i32 %4418 to i64
  store i64 %4419, i64* %RAX.i1508, align 8
  %4420 = shl nsw i64 %4419, 2
  %4421 = add i64 %3932, -1616
  %4422 = add i64 %4421, %4420
  %4423 = add i64 %4371, 44
  store i64 %4423, i64* %3, align 8
  %4424 = inttoptr i64 %4422 to i32*
  store i32 %4415, i32* %4424, align 4
  %4425 = load i64, i64* %3, align 8
  %4426 = add i64 %4425, 20
  store i64 %4426, i64* %3, align 8
  br label %block_.L_401342

block_.L_401333:                                  ; preds = %block_.L_4012d0, %block_4012e2
  %4427 = phi i64 [ %4307, %block_.L_4012d0 ], [ %4371, %block_4012e2 ]
  %4428 = add i64 %4427, 4
  store i64 %4428, i64* %3, align 8
  %4429 = load i32, i32* %3935, align 4
  %4430 = sext i32 %4429 to i64
  store i64 %4430, i64* %RAX.i1508, align 8
  %4431 = shl nsw i64 %4430, 2
  %4432 = add i64 %3932, -1616
  %4433 = add i64 %4432, %4431
  %4434 = add i64 %4427, 15
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4433 to i32*
  store i32 0, i32* %4435, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_401342

block_.L_401342:                                  ; preds = %block_.L_401333, %block_401302
  %4436 = phi i64 [ %.pre50, %block_.L_401333 ], [ %4426, %block_401302 ]
  %4437 = add i64 %4436, 5
  br label %block_.L_401347

block_.L_401347:                                  ; preds = %block_.L_401342, %block_4012ad
  %.sink87 = phi i64 [ %4437, %block_.L_401342 ], [ %4274, %block_4012ad ]
  store i64 %.sink87, i64* %3, align 8
  %4438 = add i64 %.sink87, 5
  br label %block_.L_40134c

block_.L_40134c:                                  ; preds = %block_.L_401347, %block_401237
  %.sink85 = phi i64 [ %4438, %block_.L_401347 ], [ %4152, %block_401237 ]
  %4439 = load i64, i64* %RBP.i, align 8
  %4440 = add i64 %4439, -8
  %4441 = add i64 %.sink85, 7
  store i64 %4441, i64* %3, align 8
  %4442 = inttoptr i64 %4440 to i32*
  store i32 1, i32* %4442, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_401353

block_.L_401353:                                  ; preds = %block_.L_4013f1, %block_.L_40134c
  %4443 = phi i64 [ %.pre51, %block_.L_40134c ], [ %4815, %block_.L_4013f1 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.29, %block_.L_40134c ], [ %MEMORY.37, %block_.L_4013f1 ]
  %4444 = load i64, i64* %RBP.i, align 8
  %4445 = add i64 %4444, -8
  %4446 = add i64 %4443, 3
  store i64 %4446, i64* %3, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  %4449 = zext i32 %4448 to i64
  store i64 %4449, i64* %RAX.i1508, align 8
  %4450 = add i64 %4444, -4
  %4451 = add i64 %4443, 6
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4450 to i32*
  %4453 = load i32, i32* %4452, align 4
  %4454 = sub i32 %4448, %4453
  %4455 = icmp ult i32 %4448, %4453
  %4456 = zext i1 %4455 to i8
  store i8 %4456, i8* %14, align 1
  %4457 = and i32 %4454, 255
  %4458 = tail call i32 @llvm.ctpop.i32(i32 %4457)
  %4459 = trunc i32 %4458 to i8
  %4460 = and i8 %4459, 1
  %4461 = xor i8 %4460, 1
  store i8 %4461, i8* %21, align 1
  %4462 = xor i32 %4453, %4448
  %4463 = xor i32 %4462, %4454
  %4464 = lshr i32 %4463, 4
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  store i8 %4466, i8* %27, align 1
  %4467 = icmp eq i32 %4454, 0
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %30, align 1
  %4469 = lshr i32 %4454, 31
  %4470 = trunc i32 %4469 to i8
  store i8 %4470, i8* %33, align 1
  %4471 = lshr i32 %4448, 31
  %4472 = lshr i32 %4453, 31
  %4473 = xor i32 %4472, %4471
  %4474 = xor i32 %4469, %4471
  %4475 = add nuw nsw i32 %4474, %4473
  %4476 = icmp eq i32 %4475, 2
  %4477 = zext i1 %4476 to i8
  store i8 %4477, i8* %39, align 1
  %4478 = icmp ne i8 %4470, 0
  %4479 = xor i1 %4478, %4476
  %.v128 = select i1 %4479, i64 12, i64 177
  %4480 = add i64 %4443, %.v128
  %4481 = add i64 %4480, 4
  store i64 %4481, i64* %3, align 8
  br i1 %4479, label %block_40135f, label %block_.L_401404

block_40135f:                                     ; preds = %block_.L_401353
  %4482 = load i32, i32* %4447, align 4
  %4483 = sext i32 %4482 to i64
  store i64 %4483, i64* %RAX.i1508, align 8
  %4484 = shl nsw i64 %4483, 2
  %4485 = add i64 %4444, -1488
  %4486 = add i64 %4485, %4484
  %4487 = add i64 %4480, 12
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = add i32 %4489, 1
  %4491 = icmp ne i32 %4489, -1
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %14, align 1
  %4493 = and i32 %4490, 255
  %4494 = tail call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  store i8 %4497, i8* %21, align 1
  %4498 = xor i32 %4489, 16
  %4499 = xor i32 %4490, %4498
  %4500 = lshr i32 %4499, 4
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  store i8 %4502, i8* %27, align 1
  %4503 = icmp eq i32 %4490, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %30, align 1
  %4505 = lshr i32 %4490, 31
  %4506 = trunc i32 %4505 to i8
  store i8 %4506, i8* %33, align 1
  %4507 = lshr i32 %4489, 31
  %4508 = xor i32 %4507, 1
  %4509 = xor i32 %4505, %4507
  %4510 = add nuw nsw i32 %4509, %4508
  %4511 = icmp eq i32 %4510, 2
  %4512 = zext i1 %4511 to i8
  store i8 %4512, i8* %39, align 1
  %.v129 = select i1 %4503, i64 146, i64 18
  %4513 = add i64 %4480, %.v129
  store i64 %4513, i64* %3, align 8
  br i1 %4503, label %block_.L_4013f1, label %block_401371

block_401371:                                     ; preds = %block_40135f
  %4514 = add i64 %4444, -1168
  store i64 %4514, i64* %RAX.i1508, align 8
  %4515 = add i64 %4444, -12
  %4516 = add i64 %4513, 11
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4515 to i32*
  %4518 = load i32, i32* %4517, align 4
  %4519 = sext i32 %4518 to i64
  %4520 = shl nsw i64 %4519, 6
  store i64 %4520, i64* %RCX.i2066, align 8
  %4521 = lshr i64 %4519, 57
  %4522 = and i64 %4521, 1
  %4523 = add i64 %4520, %4514
  store i64 %4523, i64* %RAX.i1508, align 8
  %4524 = icmp ult i64 %4523, %4514
  %4525 = icmp ult i64 %4523, %4520
  %4526 = or i1 %4524, %4525
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %14, align 1
  %4528 = trunc i64 %4523 to i32
  %4529 = and i32 %4528, 255
  %4530 = tail call i32 @llvm.ctpop.i32(i32 %4529)
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = xor i8 %4532, 1
  store i8 %4533, i8* %21, align 1
  %4534 = xor i64 %4514, %4523
  %4535 = lshr i64 %4534, 4
  %4536 = trunc i64 %4535 to i8
  %4537 = and i8 %4536, 1
  store i8 %4537, i8* %27, align 1
  %4538 = icmp eq i64 %4523, 0
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %30, align 1
  %4540 = lshr i64 %4523, 63
  %4541 = trunc i64 %4540 to i8
  store i8 %4541, i8* %33, align 1
  %4542 = lshr i64 %4514, 63
  %4543 = xor i64 %4540, %4542
  %4544 = xor i64 %4540, %4522
  %4545 = add nuw nsw i64 %4543, %4544
  %4546 = icmp eq i64 %4545, 2
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %39, align 1
  %4548 = add i64 %4513, 21
  store i64 %4548, i64* %3, align 8
  %4549 = load i32, i32* %4452, align 4
  %4550 = zext i32 %4549 to i64
  store i64 %4550, i64* %RDX.i2064, align 8
  %4551 = add i64 %4513, 24
  store i64 %4551, i64* %3, align 8
  %4552 = load i32, i32* %4447, align 4
  %4553 = sub i32 %4549, %4552
  %4554 = zext i32 %4553 to i64
  store i64 %4554, i64* %RDX.i2064, align 8
  %4555 = icmp ult i32 %4549, %4552
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %14, align 1
  %4557 = and i32 %4553, 255
  %4558 = tail call i32 @llvm.ctpop.i32(i32 %4557)
  %4559 = trunc i32 %4558 to i8
  %4560 = and i8 %4559, 1
  %4561 = xor i8 %4560, 1
  store i8 %4561, i8* %21, align 1
  %4562 = xor i32 %4552, %4549
  %4563 = xor i32 %4562, %4553
  %4564 = lshr i32 %4563, 4
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  store i8 %4566, i8* %27, align 1
  %4567 = icmp eq i32 %4553, 0
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %30, align 1
  %4569 = lshr i32 %4553, 31
  %4570 = trunc i32 %4569 to i8
  store i8 %4570, i8* %33, align 1
  %4571 = lshr i32 %4549, 31
  %4572 = lshr i32 %4552, 31
  %4573 = xor i32 %4572, %4571
  %4574 = xor i32 %4569, %4571
  %4575 = add nuw nsw i32 %4574, %4573
  %4576 = icmp eq i32 %4575, 2
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %39, align 1
  %4578 = sext i32 %4553 to i64
  store i64 %4578, i64* %RCX.i2066, align 8
  %4579 = shl nsw i64 %4578, 2
  %4580 = add i64 %4579, %4523
  %4581 = add i64 %4513, 31
  store i64 %4581, i64* %3, align 8
  %4582 = inttoptr i64 %4580 to i32*
  %4583 = load i32, i32* %4582, align 4
  %4584 = add i32 %4583, 1
  %4585 = icmp ne i32 %4583, -1
  %4586 = zext i1 %4585 to i8
  store i8 %4586, i8* %14, align 1
  %4587 = and i32 %4584, 255
  %4588 = tail call i32 @llvm.ctpop.i32(i32 %4587)
  %4589 = trunc i32 %4588 to i8
  %4590 = and i8 %4589, 1
  %4591 = xor i8 %4590, 1
  store i8 %4591, i8* %21, align 1
  %4592 = xor i32 %4583, 16
  %4593 = xor i32 %4584, %4592
  %4594 = lshr i32 %4593, 4
  %4595 = trunc i32 %4594 to i8
  %4596 = and i8 %4595, 1
  store i8 %4596, i8* %27, align 1
  %4597 = icmp eq i32 %4584, 0
  %4598 = zext i1 %4597 to i8
  store i8 %4598, i8* %30, align 1
  %4599 = lshr i32 %4584, 31
  %4600 = trunc i32 %4599 to i8
  store i8 %4600, i8* %33, align 1
  %4601 = lshr i32 %4583, 31
  %4602 = xor i32 %4601, 1
  %4603 = xor i32 %4599, %4601
  %4604 = add nuw nsw i32 %4603, %4602
  %4605 = icmp eq i32 %4604, 2
  %4606 = zext i1 %4605 to i8
  store i8 %4606, i8* %39, align 1
  %.v130 = select i1 %4597, i64 128, i64 37
  %4607 = add i64 %4513, %.v130
  store i64 %4607, i64* %3, align 8
  br i1 %4597, label %block_.L_4013f1, label %block_401396

block_401396:                                     ; preds = %block_401371
  store i64 255, i64* %RAX.i1508, align 8
  %4608 = load i64, i64* %RBP.i, align 8
  %4609 = add i64 %4608, -1168
  store i64 %4609, i64* %RCX.i2066, align 8
  %4610 = add i64 %4608, -12
  %4611 = add i64 %4607, 16
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i32*
  %4613 = load i32, i32* %4612, align 4
  %4614 = sext i32 %4613 to i64
  %4615 = shl nsw i64 %4614, 6
  store i64 %4615, i64* %RDX.i2064, align 8
  %4616 = lshr i64 %4614, 57
  %4617 = and i64 %4616, 1
  %4618 = add i64 %4615, %4609
  store i64 %4618, i64* %RCX.i2066, align 8
  %4619 = icmp ult i64 %4618, %4609
  %4620 = icmp ult i64 %4618, %4615
  %4621 = or i1 %4619, %4620
  %4622 = zext i1 %4621 to i8
  store i8 %4622, i8* %14, align 1
  %4623 = trunc i64 %4618 to i32
  %4624 = and i32 %4623, 255
  %4625 = tail call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  store i8 %4628, i8* %21, align 1
  %4629 = xor i64 %4609, %4618
  %4630 = lshr i64 %4629, 4
  %4631 = trunc i64 %4630 to i8
  %4632 = and i8 %4631, 1
  store i8 %4632, i8* %27, align 1
  %4633 = icmp eq i64 %4618, 0
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %30, align 1
  %4635 = lshr i64 %4618, 63
  %4636 = trunc i64 %4635 to i8
  store i8 %4636, i8* %33, align 1
  %4637 = lshr i64 %4609, 63
  %4638 = xor i64 %4635, %4637
  %4639 = xor i64 %4635, %4617
  %4640 = add nuw nsw i64 %4638, %4639
  %4641 = icmp eq i64 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %39, align 1
  %4643 = add i64 %4608, -4
  %4644 = add i64 %4607, 26
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i32*
  %4646 = load i32, i32* %4645, align 4
  %4647 = zext i32 %4646 to i64
  store i64 %4647, i64* %RSI.i2060, align 8
  %4648 = add i64 %4608, -8
  %4649 = add i64 %4607, 29
  store i64 %4649, i64* %3, align 8
  %4650 = inttoptr i64 %4648 to i32*
  %4651 = load i32, i32* %4650, align 4
  %4652 = sub i32 %4646, %4651
  %4653 = zext i32 %4652 to i64
  store i64 %4653, i64* %RSI.i2060, align 8
  %4654 = icmp ult i32 %4646, %4651
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %14, align 1
  %4656 = and i32 %4652, 255
  %4657 = tail call i32 @llvm.ctpop.i32(i32 %4656)
  %4658 = trunc i32 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = xor i8 %4659, 1
  store i8 %4660, i8* %21, align 1
  %4661 = xor i32 %4651, %4646
  %4662 = xor i32 %4661, %4652
  %4663 = lshr i32 %4662, 4
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  store i8 %4665, i8* %27, align 1
  %4666 = icmp eq i32 %4652, 0
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %30, align 1
  %4668 = lshr i32 %4652, 31
  %4669 = trunc i32 %4668 to i8
  store i8 %4669, i8* %33, align 1
  %4670 = lshr i32 %4646, 31
  %4671 = lshr i32 %4651, 31
  %4672 = xor i32 %4671, %4670
  %4673 = xor i32 %4668, %4670
  %4674 = add nuw nsw i32 %4673, %4672
  %4675 = icmp eq i32 %4674, 2
  %4676 = zext i1 %4675 to i8
  store i8 %4676, i8* %39, align 1
  %4677 = sext i32 %4652 to i64
  store i64 %4677, i64* %RDX.i2064, align 8
  %4678 = shl nsw i64 %4677, 2
  %4679 = add i64 %4678, %4618
  %4680 = add i64 %4607, 35
  store i64 %4680, i64* %3, align 8
  %4681 = inttoptr i64 %4679 to i32*
  %4682 = load i32, i32* %4681, align 4
  %4683 = zext i32 %4682 to i64
  store i64 %4683, i64* %RSI.i2060, align 8
  %4684 = add i64 %4607, 39
  store i64 %4684, i64* %3, align 8
  %4685 = load i32, i32* %4650, align 4
  %4686 = sext i32 %4685 to i64
  store i64 %4686, i64* %RCX.i2066, align 8
  %4687 = shl nsw i64 %4686, 2
  %4688 = add i64 %4608, -1488
  %4689 = add i64 %4688, %4687
  %4690 = add i64 %4607, 46
  store i64 %4690, i64* %3, align 8
  %4691 = inttoptr i64 %4689 to i32*
  %4692 = load i32, i32* %4691, align 4
  %4693 = add i32 %4692, %4682
  %4694 = zext i32 %4693 to i64
  store i64 %4694, i64* %RSI.i2060, align 8
  %4695 = icmp ult i32 %4693, %4682
  %4696 = icmp ult i32 %4693, %4692
  %4697 = or i1 %4695, %4696
  %4698 = zext i1 %4697 to i8
  store i8 %4698, i8* %14, align 1
  %4699 = and i32 %4693, 255
  %4700 = tail call i32 @llvm.ctpop.i32(i32 %4699)
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  %4703 = xor i8 %4702, 1
  store i8 %4703, i8* %21, align 1
  %4704 = xor i32 %4692, %4682
  %4705 = xor i32 %4704, %4693
  %4706 = lshr i32 %4705, 4
  %4707 = trunc i32 %4706 to i8
  %4708 = and i8 %4707, 1
  store i8 %4708, i8* %27, align 1
  %4709 = icmp eq i32 %4693, 0
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %30, align 1
  %4711 = lshr i32 %4693, 31
  %4712 = trunc i32 %4711 to i8
  store i8 %4712, i8* %33, align 1
  %4713 = lshr i32 %4682, 31
  %4714 = lshr i32 %4692, 31
  %4715 = xor i32 %4711, %4713
  %4716 = xor i32 %4711, %4714
  %4717 = add nuw nsw i32 %4715, %4716
  %4718 = icmp eq i32 %4717, 2
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %39, align 1
  %4720 = add i64 %4608, -2720
  %4721 = load i32, i32* %EAX.i2012, align 4
  %4722 = add i64 %4607, 52
  store i64 %4722, i64* %3, align 8
  %4723 = inttoptr i64 %4720 to i32*
  store i32 %4721, i32* %4723, align 4
  %4724 = load i32, i32* %ESI.i2054, align 4
  %4725 = zext i32 %4724 to i64
  %4726 = load i64, i64* %3, align 8
  store i64 %4725, i64* %RAX.i1508, align 8
  %4727 = sext i32 %4724 to i64
  %4728 = lshr i64 %4727, 32
  store i64 %4728, i64* %57, align 8
  %4729 = load i64, i64* %RBP.i, align 8
  %4730 = add i64 %4729, -2720
  %4731 = add i64 %4726, 9
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4730 to i32*
  %4733 = load i32, i32* %4732, align 4
  %4734 = zext i32 %4733 to i64
  store i64 %4734, i64* %RSI.i2060, align 8
  %4735 = add i64 %4726, 11
  store i64 %4735, i64* %3, align 8
  %4736 = sext i32 %4733 to i64
  %4737 = shl nuw i64 %4728, 32
  %4738 = or i64 %4737, %4725
  %4739 = sdiv i64 %4738, %4736
  %4740 = shl i64 %4739, 32
  %4741 = ashr exact i64 %4740, 32
  %4742 = icmp eq i64 %4739, %4741
  br i1 %4742, label %4745, label %4743

; <label>:4743:                                   ; preds = %block_401396
  %4744 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4735, %struct.Memory* %MEMORY.36)
  %.pre52 = load i32, i32* %EDX.i2048, align 4
  %.pre53 = load i64, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit545

; <label>:4745:                                   ; preds = %block_401396
  %4746 = srem i64 %4738, %4736
  %4747 = and i64 %4739, 4294967295
  store i64 %4747, i64* %58, align 8
  %4748 = and i64 %4746, 4294967295
  store i64 %4748, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4749 = trunc i64 %4746 to i32
  br label %routine_idivl__esi.exit545

routine_idivl__esi.exit545:                       ; preds = %4745, %4743
  %4750 = phi i64 [ %.pre54, %4743 ], [ %4729, %4745 ]
  %4751 = phi i64 [ %.pre53, %4743 ], [ %4735, %4745 ]
  %4752 = phi i32 [ %.pre52, %4743 ], [ %4749, %4745 ]
  %4753 = phi %struct.Memory* [ %4744, %4743 ], [ %MEMORY.36, %4745 ]
  %4754 = sext i32 %4752 to i64
  store i64 %4754, i64* %RCX.i2066, align 8
  %4755 = shl nsw i64 %4754, 2
  %4756 = add i64 %4755, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %4757 = add i64 %4751, 10
  store i64 %4757, i64* %3, align 8
  %4758 = inttoptr i64 %4756 to i32*
  %4759 = load i32, i32* %4758, align 4
  %4760 = zext i32 %4759 to i64
  store i64 %4760, i64* %RDX.i2064, align 8
  %4761 = add i64 %4750, -4
  %4762 = add i64 %4751, 14
  store i64 %4762, i64* %3, align 8
  %4763 = inttoptr i64 %4761 to i32*
  %4764 = load i32, i32* %4763, align 4
  %4765 = sext i32 %4764 to i64
  store i64 %4765, i64* %RCX.i2066, align 8
  %4766 = shl nsw i64 %4765, 2
  %4767 = add i64 %4750, -1616
  %4768 = add i64 %4767, %4766
  %4769 = add i64 %4751, 21
  store i64 %4769, i64* %3, align 8
  %4770 = inttoptr i64 %4768 to i32*
  %4771 = load i32, i32* %4770, align 4
  %4772 = xor i32 %4771, %4759
  %4773 = zext i32 %4772 to i64
  store i64 %4773, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4774 = and i32 %4772, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %21, align 1
  %4779 = icmp eq i32 %4772, 0
  %4780 = zext i1 %4779 to i8
  store i8 %4780, i8* %30, align 1
  %4781 = lshr i32 %4772, 31
  %4782 = trunc i32 %4781 to i8
  store i8 %4782, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4783 = add i64 %4751, 28
  store i64 %4783, i64* %3, align 8
  store i32 %4772, i32* %4770, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4013f1

block_.L_4013f1:                                  ; preds = %routine_idivl__esi.exit545, %block_401371, %block_40135f
  %4784 = phi i64 [ %4513, %block_40135f ], [ %4607, %block_401371 ], [ %.pre55, %routine_idivl__esi.exit545 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.36, %block_40135f ], [ %MEMORY.36, %block_401371 ], [ %4753, %routine_idivl__esi.exit545 ]
  %4785 = load i64, i64* %RBP.i, align 8
  %4786 = add i64 %4785, -8
  %4787 = add i64 %4784, 8
  store i64 %4787, i64* %3, align 8
  %4788 = inttoptr i64 %4786 to i32*
  %4789 = load i32, i32* %4788, align 4
  %4790 = add i32 %4789, 1
  %4791 = zext i32 %4790 to i64
  store i64 %4791, i64* %RAX.i1508, align 8
  %4792 = icmp eq i32 %4789, -1
  %4793 = icmp eq i32 %4790, 0
  %4794 = or i1 %4792, %4793
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %14, align 1
  %4796 = and i32 %4790, 255
  %4797 = tail call i32 @llvm.ctpop.i32(i32 %4796)
  %4798 = trunc i32 %4797 to i8
  %4799 = and i8 %4798, 1
  %4800 = xor i8 %4799, 1
  store i8 %4800, i8* %21, align 1
  %4801 = xor i32 %4789, %4790
  %4802 = lshr i32 %4801, 4
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  store i8 %4804, i8* %27, align 1
  %4805 = zext i1 %4793 to i8
  store i8 %4805, i8* %30, align 1
  %4806 = lshr i32 %4790, 31
  %4807 = trunc i32 %4806 to i8
  store i8 %4807, i8* %33, align 1
  %4808 = lshr i32 %4789, 31
  %4809 = xor i32 %4806, %4808
  %4810 = add nuw nsw i32 %4809, %4806
  %4811 = icmp eq i32 %4810, 2
  %4812 = zext i1 %4811 to i8
  store i8 %4812, i8* %39, align 1
  %4813 = add i64 %4784, 14
  store i64 %4813, i64* %3, align 8
  store i32 %4790, i32* %4788, align 4
  %4814 = load i64, i64* %3, align 8
  %4815 = add i64 %4814, -172
  store i64 %4815, i64* %3, align 8
  br label %block_.L_401353

block_.L_401404:                                  ; preds = %block_.L_401353
  %4816 = load i32, i32* %4452, align 4
  %4817 = sext i32 %4816 to i64
  store i64 %4817, i64* %RAX.i1508, align 8
  %4818 = shl nsw i64 %4817, 2
  %4819 = add i64 %4444, -1616
  %4820 = add i64 %4819, %4818
  %4821 = add i64 %4480, 12
  store i64 %4821, i64* %3, align 8
  %4822 = inttoptr i64 %4820 to i32*
  %4823 = load i32, i32* %4822, align 4
  %4824 = sext i32 %4823 to i64
  store i64 %4824, i64* %RAX.i1508, align 8
  %4825 = shl nsw i64 %4824, 2
  %4826 = add i64 %4825, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %4827 = add i64 %4480, 19
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i32*
  %4829 = load i32, i32* %4828, align 4
  %4830 = zext i32 %4829 to i64
  store i64 %4830, i64* %RCX.i2066, align 8
  %4831 = add i64 %4480, 23
  store i64 %4831, i64* %3, align 8
  %4832 = load i32, i32* %4452, align 4
  %4833 = sext i32 %4832 to i64
  store i64 %4833, i64* %RAX.i1508, align 8
  %4834 = shl nsw i64 %4833, 2
  %4835 = add i64 %4819, %4834
  %4836 = add i64 %4480, 30
  store i64 %4836, i64* %3, align 8
  %4837 = inttoptr i64 %4835 to i32*
  store i32 %4829, i32* %4837, align 4
  %4838 = load i64, i64* %RBP.i, align 8
  %4839 = add i64 %4838, -4
  %4840 = load i64, i64* %3, align 8
  %4841 = add i64 %4840, 3
  store i64 %4841, i64* %3, align 8
  %4842 = inttoptr i64 %4839 to i32*
  %4843 = load i32, i32* %4842, align 4
  %4844 = add i32 %4843, 1
  %4845 = zext i32 %4844 to i64
  store i64 %4845, i64* %RAX.i1508, align 8
  %4846 = icmp eq i32 %4843, -1
  %4847 = icmp eq i32 %4844, 0
  %4848 = or i1 %4846, %4847
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %14, align 1
  %4850 = and i32 %4844, 255
  %4851 = tail call i32 @llvm.ctpop.i32(i32 %4850)
  %4852 = trunc i32 %4851 to i8
  %4853 = and i8 %4852, 1
  %4854 = xor i8 %4853, 1
  store i8 %4854, i8* %21, align 1
  %4855 = xor i32 %4843, %4844
  %4856 = lshr i32 %4855, 4
  %4857 = trunc i32 %4856 to i8
  %4858 = and i8 %4857, 1
  store i8 %4858, i8* %27, align 1
  %4859 = zext i1 %4847 to i8
  store i8 %4859, i8* %30, align 1
  %4860 = lshr i32 %4844, 31
  %4861 = trunc i32 %4860 to i8
  store i8 %4861, i8* %33, align 1
  %4862 = lshr i32 %4843, 31
  %4863 = xor i32 %4860, %4862
  %4864 = add nuw nsw i32 %4863, %4860
  %4865 = icmp eq i32 %4864, 2
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %39, align 1
  %4867 = add i64 %4840, 9
  store i64 %4867, i64* %3, align 8
  store i32 %4844, i32* %4842, align 4
  %4868 = load i64, i64* %3, align 8
  %4869 = add i64 %4868, -570
  store i64 %4869, i64* %3, align 8
  br label %block_.L_4011f1

block_.L_401430:                                  ; preds = %block_.L_4011f1
  %4870 = add i64 %3975, 7
  store i64 %4870, i64* %3, align 8
  store i32 0, i32* %3935, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_401437

block_.L_401437:                                  ; preds = %block_.L_401497, %block_.L_401430
  %4871 = phi i64 [ %5003, %block_.L_401497 ], [ %.pre56, %block_.L_401430 ]
  %4872 = load i64, i64* %RBP.i, align 8
  %4873 = add i64 %4872, -4
  %4874 = add i64 %4871, 7
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  %4876 = load i32, i32* %4875, align 4
  %4877 = add i32 %4876, -255
  %4878 = icmp ult i32 %4876, 255
  %4879 = zext i1 %4878 to i8
  store i8 %4879, i8* %14, align 1
  %4880 = and i32 %4877, 255
  %4881 = tail call i32 @llvm.ctpop.i32(i32 %4880)
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = xor i8 %4883, 1
  store i8 %4884, i8* %21, align 1
  %4885 = xor i32 %4876, 16
  %4886 = xor i32 %4885, %4877
  %4887 = lshr i32 %4886, 4
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  store i8 %4889, i8* %27, align 1
  %4890 = icmp eq i32 %4877, 0
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %30, align 1
  %4892 = lshr i32 %4877, 31
  %4893 = trunc i32 %4892 to i8
  store i8 %4893, i8* %33, align 1
  %4894 = lshr i32 %4876, 31
  %4895 = xor i32 %4892, %4894
  %4896 = add nuw nsw i32 %4895, %4894
  %4897 = icmp eq i32 %4896, 2
  %4898 = zext i1 %4897 to i8
  store i8 %4898, i8* %39, align 1
  %4899 = icmp ne i8 %4893, 0
  %4900 = xor i1 %4899, %4897
  %.v135 = select i1 %4900, i64 13, i64 115
  %4901 = add i64 %4871, %.v135
  store i64 %4901, i64* %3, align 8
  br i1 %4900, label %block_401444, label %block_.L_4014aa

block_401444:                                     ; preds = %block_.L_401437
  %4902 = add i64 %4901, 4
  store i64 %4902, i64* %3, align 8
  %4903 = load i32, i32* %4875, align 4
  %4904 = sext i32 %4903 to i64
  store i64 %4904, i64* %RAX.i1508, align 8
  %4905 = shl nsw i64 %4904, 2
  %4906 = add i64 %4872, -2640
  %4907 = add i64 %4906, %4905
  %4908 = add i64 %4901, 15
  store i64 %4908, i64* %3, align 8
  %4909 = inttoptr i64 %4907 to i32*
  store i32 0, i32* %4909, align 4
  %4910 = load i64, i64* %RBP.i, align 8
  %4911 = add i64 %4910, -4
  %4912 = load i64, i64* %3, align 8
  %4913 = add i64 %4912, 4
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4911 to i32*
  %4915 = load i32, i32* %4914, align 4
  %4916 = sext i32 %4915 to i64
  store i64 %4916, i64* %RAX.i1508, align 8
  %4917 = shl nsw i64 %4916, 2
  %4918 = add i64 %4917, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %4919 = add i64 %4912, 12
  store i64 %4919, i64* %3, align 8
  %4920 = inttoptr i64 %4918 to i32*
  %4921 = load i32, i32* %4920, align 4
  %4922 = add i32 %4921, 1
  %4923 = icmp ne i32 %4921, -1
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %14, align 1
  %4925 = and i32 %4922, 255
  %4926 = tail call i32 @llvm.ctpop.i32(i32 %4925)
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  %4929 = xor i8 %4928, 1
  store i8 %4929, i8* %21, align 1
  %4930 = xor i32 %4921, 16
  %4931 = xor i32 %4922, %4930
  %4932 = lshr i32 %4931, 4
  %4933 = trunc i32 %4932 to i8
  %4934 = and i8 %4933, 1
  store i8 %4934, i8* %27, align 1
  %4935 = icmp eq i32 %4922, 0
  %4936 = zext i1 %4935 to i8
  store i8 %4936, i8* %30, align 1
  %4937 = lshr i32 %4922, 31
  %4938 = trunc i32 %4937 to i8
  store i8 %4938, i8* %33, align 1
  %4939 = lshr i32 %4921, 31
  %4940 = xor i32 %4939, 1
  %4941 = xor i32 %4937, %4939
  %4942 = add nuw nsw i32 %4941, %4940
  %4943 = icmp eq i32 %4942, 2
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %39, align 1
  %.v136 = select i1 %4935, i64 53, i64 18
  %4945 = add i64 %4912, %.v136
  %4946 = add i64 %4945, 4
  store i64 %4946, i64* %3, align 8
  %4947 = load i32, i32* %4914, align 4
  %4948 = sext i32 %4947 to i64
  store i64 %4948, i64* %RAX.i1508, align 8
  %4949 = shl nsw i64 %4948, 2
  %4950 = add i64 %4949, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %4935, label %block_.L_401488, label %block_401465

block_401465:                                     ; preds = %block_401444
  %4951 = add i64 %4945, 12
  store i64 %4951, i64* %3, align 8
  %4952 = inttoptr i64 %4950 to i32*
  %4953 = load i32, i32* %4952, align 4
  %4954 = sext i32 %4953 to i64
  store i64 %4954, i64* %RAX.i1508, align 8
  %4955 = shl nsw i64 %4954, 2
  %4956 = add i64 %4955, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4957 = add i64 %4945, 19
  store i64 %4957, i64* %3, align 8
  %4958 = inttoptr i64 %4956 to i32*
  %4959 = load i32, i32* %4958, align 4
  %4960 = zext i32 %4959 to i64
  store i64 %4960, i64* %RCX.i2066, align 8
  %4961 = add i64 %4945, 23
  store i64 %4961, i64* %3, align 8
  %4962 = load i32, i32* %4914, align 4
  %4963 = sext i32 %4962 to i64
  store i64 %4963, i64* %RAX.i1508, align 8
  %4964 = shl nsw i64 %4963, 2
  %4965 = add i64 %4964, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %4966 = add i64 %4945, 30
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  store i32 %4959, i32* %4967, align 4
  %4968 = load i64, i64* %3, align 8
  %4969 = add i64 %4968, 20
  store i64 %4969, i64* %3, align 8
  br label %block_.L_401497

block_.L_401488:                                  ; preds = %block_401444
  %4970 = add i64 %4945, 15
  store i64 %4970, i64* %3, align 8
  %4971 = inttoptr i64 %4950 to i32*
  store i32 0, i32* %4971, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_401497

block_.L_401497:                                  ; preds = %block_.L_401488, %block_401465
  %4972 = phi i64 [ %.pre57, %block_.L_401488 ], [ %4969, %block_401465 ]
  %4973 = load i64, i64* %RBP.i, align 8
  %4974 = add i64 %4973, -4
  %4975 = add i64 %4972, 8
  store i64 %4975, i64* %3, align 8
  %4976 = inttoptr i64 %4974 to i32*
  %4977 = load i32, i32* %4976, align 4
  %4978 = add i32 %4977, 1
  %4979 = zext i32 %4978 to i64
  store i64 %4979, i64* %RAX.i1508, align 8
  %4980 = icmp eq i32 %4977, -1
  %4981 = icmp eq i32 %4978, 0
  %4982 = or i1 %4980, %4981
  %4983 = zext i1 %4982 to i8
  store i8 %4983, i8* %14, align 1
  %4984 = and i32 %4978, 255
  %4985 = tail call i32 @llvm.ctpop.i32(i32 %4984)
  %4986 = trunc i32 %4985 to i8
  %4987 = and i8 %4986, 1
  %4988 = xor i8 %4987, 1
  store i8 %4988, i8* %21, align 1
  %4989 = xor i32 %4977, %4978
  %4990 = lshr i32 %4989, 4
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  store i8 %4992, i8* %27, align 1
  %4993 = zext i1 %4981 to i8
  store i8 %4993, i8* %30, align 1
  %4994 = lshr i32 %4978, 31
  %4995 = trunc i32 %4994 to i8
  store i8 %4995, i8* %33, align 1
  %4996 = lshr i32 %4977, 31
  %4997 = xor i32 %4994, %4996
  %4998 = add nuw nsw i32 %4997, %4994
  %4999 = icmp eq i32 %4998, 2
  %5000 = zext i1 %4999 to i8
  store i8 %5000, i8* %39, align 1
  %5001 = add i64 %4972, 14
  store i64 %5001, i64* %3, align 8
  store i32 %4978, i32* %4976, align 4
  %5002 = load i64, i64* %3, align 8
  %5003 = add i64 %5002, -110
  store i64 %5003, i64* %3, align 8
  br label %block_.L_401437

block_.L_4014aa:                                  ; preds = %block_.L_401437
  %5004 = add i64 %4901, 7
  store i64 %5004, i64* %3, align 8
  store i32 0, i32* %4875, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_4014b1

block_.L_4014b1:                                  ; preds = %block_.L_4016cb, %block_.L_4014aa
  %5005 = phi i64 [ %.pre58, %block_.L_4014aa ], [ %5836, %block_.L_4016cb ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4014aa ], [ %MEMORY.45, %block_.L_4016cb ]
  %5006 = load i64, i64* %RBP.i, align 8
  %5007 = add i64 %5006, -4
  %5008 = add i64 %5005, 3
  store i64 %5008, i64* %3, align 8
  %5009 = inttoptr i64 %5007 to i32*
  %5010 = load i32, i32* %5009, align 4
  %5011 = zext i32 %5010 to i64
  store i64 %5011, i64* %RAX.i1508, align 8
  %5012 = add i64 %5006, -12
  %5013 = add i64 %5005, 7
  store i64 %5013, i64* %3, align 8
  %5014 = inttoptr i64 %5012 to i32*
  %5015 = load i32, i32* %5014, align 4
  %5016 = sext i32 %5015 to i64
  store i64 %5016, i64* %RCX.i2066, align 8
  %5017 = shl nsw i64 %5016, 2
  %5018 = add i64 %5006, -1328
  %5019 = add i64 %5018, %5017
  %5020 = add i64 %5005, 14
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  %5023 = sub i32 %5010, %5022
  %5024 = icmp ult i32 %5010, %5022
  %5025 = zext i1 %5024 to i8
  store i8 %5025, i8* %14, align 1
  %5026 = and i32 %5023, 255
  %5027 = tail call i32 @llvm.ctpop.i32(i32 %5026)
  %5028 = trunc i32 %5027 to i8
  %5029 = and i8 %5028, 1
  %5030 = xor i8 %5029, 1
  store i8 %5030, i8* %21, align 1
  %5031 = xor i32 %5022, %5010
  %5032 = xor i32 %5031, %5023
  %5033 = lshr i32 %5032, 4
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  store i8 %5035, i8* %27, align 1
  %5036 = icmp eq i32 %5023, 0
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %30, align 1
  %5038 = lshr i32 %5023, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %33, align 1
  %5040 = lshr i32 %5010, 31
  %5041 = lshr i32 %5022, 31
  %5042 = xor i32 %5041, %5040
  %5043 = xor i32 %5038, %5040
  %5044 = add nuw nsw i32 %5043, %5042
  %5045 = icmp eq i32 %5044, 2
  %5046 = zext i1 %5045 to i8
  store i8 %5046, i8* %39, align 1
  %5047 = icmp ne i8 %5039, 0
  %5048 = xor i1 %5047, %5045
  %.v137 = select i1 %5048, i64 20, i64 557
  %5049 = add i64 %5005, %.v137
  store i64 %5049, i64* %3, align 8
  br i1 %5048, label %block_4014c5, label %block_.L_4016de

block_4014c5:                                     ; preds = %block_.L_4014b1
  %5050 = add i64 %5049, 4
  store i64 %5050, i64* %3, align 8
  %5051 = load i32, i32* %5009, align 4
  %5052 = sext i32 %5051 to i64
  store i64 %5052, i64* %RAX.i1508, align 8
  %5053 = shl nsw i64 %5052, 2
  %5054 = add i64 %5006, -1568
  %5055 = add i64 %5054, %5053
  %5056 = add i64 %5049, 12
  store i64 %5056, i64* %3, align 8
  %5057 = inttoptr i64 %5055 to i32*
  %5058 = load i32, i32* %5057, align 4
  %5059 = sext i32 %5058 to i64
  store i64 %5059, i64* %RAX.i1508, align 8
  %5060 = shl nsw i64 %5059, 2
  %5061 = add i64 %5006, -2640
  %5062 = add i64 %5061, %5060
  %5063 = add i64 %5049, 23
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5062 to i32*
  store i32 1, i32* %5064, align 4
  %5065 = load i64, i64* %RBP.i, align 8
  %5066 = add i64 %5065, -8
  %5067 = load i64, i64* %3, align 8
  %5068 = add i64 %5067, 7
  store i64 %5068, i64* %3, align 8
  %5069 = inttoptr i64 %5066 to i32*
  store i32 1, i32* %5069, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_4014e3

block_.L_4014e3:                                  ; preds = %block_.L_40155f, %block_4014c5
  %5070 = phi i64 [ %.pre59, %block_4014c5 ], [ %5305, %block_.L_40155f ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.40, %block_4014c5 ], [ %MEMORY.42, %block_.L_40155f ]
  %5071 = load i64, i64* %RBP.i, align 8
  %5072 = add i64 %5071, -8
  %5073 = add i64 %5070, 3
  store i64 %5073, i64* %3, align 8
  %5074 = inttoptr i64 %5072 to i32*
  %5075 = load i32, i32* %5074, align 4
  %5076 = zext i32 %5075 to i64
  store i64 %5076, i64* %RAX.i1508, align 8
  %5077 = add i64 %5071, -12
  %5078 = add i64 %5070, 7
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5077 to i32*
  %5080 = load i32, i32* %5079, align 4
  %5081 = sext i32 %5080 to i64
  store i64 %5081, i64* %RCX.i2066, align 8
  %5082 = shl nsw i64 %5081, 2
  %5083 = add i64 %5071, -1328
  %5084 = add i64 %5083, %5082
  %5085 = add i64 %5070, 14
  store i64 %5085, i64* %3, align 8
  %5086 = inttoptr i64 %5084 to i32*
  %5087 = load i32, i32* %5086, align 4
  %5088 = sub i32 %5075, %5087
  %5089 = icmp ult i32 %5075, %5087
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %14, align 1
  %5091 = and i32 %5088, 255
  %5092 = tail call i32 @llvm.ctpop.i32(i32 %5091)
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  store i8 %5095, i8* %21, align 1
  %5096 = xor i32 %5087, %5075
  %5097 = xor i32 %5096, %5088
  %5098 = lshr i32 %5097, 4
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  store i8 %5100, i8* %27, align 1
  %5101 = icmp eq i32 %5088, 0
  %5102 = zext i1 %5101 to i8
  store i8 %5102, i8* %30, align 1
  %5103 = lshr i32 %5088, 31
  %5104 = trunc i32 %5103 to i8
  store i8 %5104, i8* %33, align 1
  %5105 = lshr i32 %5075, 31
  %5106 = lshr i32 %5087, 31
  %5107 = xor i32 %5106, %5105
  %5108 = xor i32 %5103, %5105
  %5109 = add nuw nsw i32 %5108, %5107
  %5110 = icmp eq i32 %5109, 2
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %39, align 1
  %5112 = icmp ne i8 %5104, 0
  %5113 = xor i1 %5112, %5110
  %.demorgan138 = or i1 %5101, %5113
  %.v139 = select i1 %.demorgan138, i64 20, i64 143
  %5114 = add i64 %5070, %.v139
  store i64 %5114, i64* %3, align 8
  br i1 %.demorgan138, label %block_4014f7, label %block_.L_401572

block_4014f7:                                     ; preds = %block_.L_4014e3
  %5115 = add i64 %5114, 4
  store i64 %5115, i64* %3, align 8
  %5116 = load i32, i32* %5074, align 4
  %5117 = sext i32 %5116 to i64
  store i64 %5117, i64* %RAX.i1508, align 8
  %5118 = shl nsw i64 %5117, 2
  %5119 = add i64 %5071, -1616
  %5120 = add i64 %5119, %5118
  %5121 = add i64 %5114, 12
  store i64 %5121, i64* %3, align 8
  %5122 = inttoptr i64 %5120 to i32*
  %5123 = load i32, i32* %5122, align 4
  %5124 = add i32 %5123, 1
  %5125 = icmp ne i32 %5123, -1
  %5126 = zext i1 %5125 to i8
  store i8 %5126, i8* %14, align 1
  %5127 = and i32 %5124, 255
  %5128 = tail call i32 @llvm.ctpop.i32(i32 %5127)
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  store i8 %5131, i8* %21, align 1
  %5132 = xor i32 %5123, 16
  %5133 = xor i32 %5124, %5132
  %5134 = lshr i32 %5133, 4
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  store i8 %5136, i8* %27, align 1
  %5137 = icmp eq i32 %5124, 0
  %5138 = zext i1 %5137 to i8
  store i8 %5138, i8* %30, align 1
  %5139 = lshr i32 %5124, 31
  %5140 = trunc i32 %5139 to i8
  store i8 %5140, i8* %33, align 1
  %5141 = lshr i32 %5123, 31
  %5142 = xor i32 %5141, 1
  %5143 = xor i32 %5139, %5141
  %5144 = add nuw nsw i32 %5143, %5142
  %5145 = icmp eq i32 %5144, 2
  %5146 = zext i1 %5145 to i8
  store i8 %5146, i8* %39, align 1
  %.v140 = select i1 %5137, i64 104, i64 18
  %5147 = add i64 %5114, %.v140
  store i64 %5147, i64* %3, align 8
  br i1 %5137, label %block_.L_40155f, label %block_401509

block_401509:                                     ; preds = %block_4014f7
  store i64 255, i64* %RAX.i1508, align 8
  %5148 = add i64 %5147, 9
  store i64 %5148, i64* %3, align 8
  %5149 = load i32, i32* %5074, align 4
  %5150 = sext i32 %5149 to i64
  store i64 %5150, i64* %RCX.i2066, align 8
  %5151 = shl nsw i64 %5150, 2
  %5152 = add i64 %5119, %5151
  %5153 = add i64 %5147, 16
  store i64 %5153, i64* %3, align 8
  %5154 = inttoptr i64 %5152 to i32*
  %5155 = load i32, i32* %5154, align 4
  %5156 = zext i32 %5155 to i64
  store i64 %5156, i64* %RDX.i2064, align 8
  %5157 = add i64 %5147, 19
  store i64 %5157, i64* %3, align 8
  %5158 = load i32, i32* %5074, align 4
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RSI.i2060, align 8
  %5160 = add i64 %5071, -4
  %5161 = add i64 %5147, 23
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i32*
  %5163 = load i32, i32* %5162, align 4
  %5164 = sext i32 %5163 to i64
  store i64 %5164, i64* %RCX.i2066, align 8
  %5165 = shl nsw i64 %5164, 2
  %5166 = add i64 %5071, -1536
  %5167 = add i64 %5166, %5165
  %5168 = add i64 %5147, 31
  store i64 %5168, i64* %3, align 8
  %5169 = inttoptr i64 %5167 to i32*
  %5170 = load i32, i32* %5169, align 4
  %5171 = sext i32 %5158 to i64
  %5172 = sext i32 %5170 to i64
  %5173 = mul nsw i64 %5172, %5171
  %5174 = and i64 %5173, 4294967295
  store i64 %5174, i64* %RSI.i2060, align 8
  %5175 = trunc i64 %5173 to i32
  %5176 = add i32 %5175, %5155
  %5177 = zext i32 %5176 to i64
  store i64 %5177, i64* %RDX.i2064, align 8
  %5178 = icmp ult i32 %5176, %5155
  %5179 = icmp ult i32 %5176, %5175
  %5180 = or i1 %5178, %5179
  %5181 = zext i1 %5180 to i8
  store i8 %5181, i8* %14, align 1
  %5182 = and i32 %5176, 255
  %5183 = tail call i32 @llvm.ctpop.i32(i32 %5182)
  %5184 = trunc i32 %5183 to i8
  %5185 = and i8 %5184, 1
  %5186 = xor i8 %5185, 1
  store i8 %5186, i8* %21, align 1
  %5187 = xor i64 %5173, %5156
  %5188 = trunc i64 %5187 to i32
  %5189 = xor i32 %5188, %5176
  %5190 = lshr i32 %5189, 4
  %5191 = trunc i32 %5190 to i8
  %5192 = and i8 %5191, 1
  store i8 %5192, i8* %27, align 1
  %5193 = icmp eq i32 %5176, 0
  %5194 = zext i1 %5193 to i8
  store i8 %5194, i8* %30, align 1
  %5195 = lshr i32 %5176, 31
  %5196 = trunc i32 %5195 to i8
  store i8 %5196, i8* %33, align 1
  %5197 = lshr i32 %5155, 31
  %5198 = lshr i32 %5175, 31
  %5199 = xor i32 %5195, %5197
  %5200 = xor i32 %5195, %5198
  %5201 = add nuw nsw i32 %5199, %5200
  %5202 = icmp eq i32 %5201, 2
  %5203 = zext i1 %5202 to i8
  store i8 %5203, i8* %39, align 1
  %5204 = add i64 %5071, -2724
  %5205 = add i64 %5147, 39
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5204 to i32*
  store i32 255, i32* %5206, align 4
  %5207 = load i32, i32* %EDX.i2048, align 4
  %5208 = zext i32 %5207 to i64
  %5209 = load i64, i64* %3, align 8
  store i64 %5208, i64* %RAX.i1508, align 8
  %5210 = sext i32 %5207 to i64
  %5211 = lshr i64 %5210, 32
  store i64 %5211, i64* %57, align 8
  %5212 = load i64, i64* %RBP.i, align 8
  %5213 = add i64 %5212, -2724
  %5214 = add i64 %5209, 9
  store i64 %5214, i64* %3, align 8
  %5215 = inttoptr i64 %5213 to i32*
  %5216 = load i32, i32* %5215, align 4
  %5217 = zext i32 %5216 to i64
  store i64 %5217, i64* %RSI.i2060, align 8
  %5218 = add i64 %5209, 11
  store i64 %5218, i64* %3, align 8
  %5219 = sext i32 %5216 to i64
  %5220 = shl nuw i64 %5211, 32
  %5221 = or i64 %5220, %5208
  %5222 = sdiv i64 %5221, %5219
  %5223 = shl i64 %5222, 32
  %5224 = ashr exact i64 %5223, 32
  %5225 = icmp eq i64 %5222, %5224
  br i1 %5225, label %5228, label %5226

; <label>:5226:                                   ; preds = %block_401509
  %5227 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5218, %struct.Memory* %MEMORY.41)
  %.pre60 = load i32, i32* %EDX.i2048, align 4
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit367

; <label>:5228:                                   ; preds = %block_401509
  %5229 = srem i64 %5221, %5219
  %5230 = and i64 %5222, 4294967295
  store i64 %5230, i64* %58, align 8
  %5231 = and i64 %5229, 4294967295
  store i64 %5231, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5232 = trunc i64 %5229 to i32
  br label %routine_idivl__esi.exit367

routine_idivl__esi.exit367:                       ; preds = %5228, %5226
  %5233 = phi i64 [ %.pre62, %5226 ], [ %5212, %5228 ]
  %5234 = phi i64 [ %.pre61, %5226 ], [ %5218, %5228 ]
  %5235 = phi i32 [ %.pre60, %5226 ], [ %5232, %5228 ]
  %5236 = phi %struct.Memory* [ %5227, %5226 ], [ %MEMORY.41, %5228 ]
  %5237 = sext i32 %5235 to i64
  store i64 %5237, i64* %RCX.i2066, align 8
  %5238 = shl nsw i64 %5237, 2
  %5239 = add i64 %5238, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %5240 = add i64 %5234, 10
  store i64 %5240, i64* %3, align 8
  %5241 = inttoptr i64 %5239 to i32*
  %5242 = load i32, i32* %5241, align 4
  %5243 = zext i32 %5242 to i64
  store i64 %5243, i64* %RDX.i2064, align 8
  %5244 = add i64 %5233, -4
  %5245 = add i64 %5234, 14
  store i64 %5245, i64* %3, align 8
  %5246 = inttoptr i64 %5244 to i32*
  %5247 = load i32, i32* %5246, align 4
  %5248 = sext i32 %5247 to i64
  store i64 %5248, i64* %RCX.i2066, align 8
  %5249 = shl nsw i64 %5248, 2
  %5250 = add i64 %5233, -1568
  %5251 = add i64 %5250, %5249
  %5252 = add i64 %5234, 22
  store i64 %5252, i64* %3, align 8
  %5253 = inttoptr i64 %5251 to i32*
  %5254 = load i32, i32* %5253, align 4
  %5255 = sext i32 %5254 to i64
  store i64 %5255, i64* %RCX.i2066, align 8
  %5256 = shl nsw i64 %5255, 2
  %5257 = add i64 %5233, -2640
  %5258 = add i64 %5257, %5256
  %5259 = add i64 %5234, 29
  store i64 %5259, i64* %3, align 8
  %5260 = inttoptr i64 %5258 to i32*
  %5261 = load i32, i32* %5260, align 4
  %5262 = xor i32 %5261, %5242
  %5263 = zext i32 %5262 to i64
  store i64 %5263, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5264 = and i32 %5262, 255
  %5265 = tail call i32 @llvm.ctpop.i32(i32 %5264)
  %5266 = trunc i32 %5265 to i8
  %5267 = and i8 %5266, 1
  %5268 = xor i8 %5267, 1
  store i8 %5268, i8* %21, align 1
  %5269 = icmp eq i32 %5262, 0
  %5270 = zext i1 %5269 to i8
  store i8 %5270, i8* %30, align 1
  %5271 = lshr i32 %5262, 31
  %5272 = trunc i32 %5271 to i8
  store i8 %5272, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5273 = add i64 %5234, 36
  store i64 %5273, i64* %3, align 8
  store i32 %5262, i32* %5260, align 4
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40155f

block_.L_40155f:                                  ; preds = %routine_idivl__esi.exit367, %block_4014f7
  %5274 = phi i64 [ %5071, %block_4014f7 ], [ %.pre64, %routine_idivl__esi.exit367 ]
  %5275 = phi i64 [ %5147, %block_4014f7 ], [ %.pre63, %routine_idivl__esi.exit367 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.41, %block_4014f7 ], [ %5236, %routine_idivl__esi.exit367 ]
  %5276 = add i64 %5274, -8
  %5277 = add i64 %5275, 8
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = add i32 %5279, 1
  %5281 = zext i32 %5280 to i64
  store i64 %5281, i64* %RAX.i1508, align 8
  %5282 = icmp eq i32 %5279, -1
  %5283 = icmp eq i32 %5280, 0
  %5284 = or i1 %5282, %5283
  %5285 = zext i1 %5284 to i8
  store i8 %5285, i8* %14, align 1
  %5286 = and i32 %5280, 255
  %5287 = tail call i32 @llvm.ctpop.i32(i32 %5286)
  %5288 = trunc i32 %5287 to i8
  %5289 = and i8 %5288, 1
  %5290 = xor i8 %5289, 1
  store i8 %5290, i8* %21, align 1
  %5291 = xor i32 %5279, %5280
  %5292 = lshr i32 %5291, 4
  %5293 = trunc i32 %5292 to i8
  %5294 = and i8 %5293, 1
  store i8 %5294, i8* %27, align 1
  %5295 = zext i1 %5283 to i8
  store i8 %5295, i8* %30, align 1
  %5296 = lshr i32 %5280, 31
  %5297 = trunc i32 %5296 to i8
  store i8 %5297, i8* %33, align 1
  %5298 = lshr i32 %5279, 31
  %5299 = xor i32 %5296, %5298
  %5300 = add nuw nsw i32 %5299, %5296
  %5301 = icmp eq i32 %5300, 2
  %5302 = zext i1 %5301 to i8
  store i8 %5302, i8* %39, align 1
  %5303 = add i64 %5275, 14
  store i64 %5303, i64* %3, align 8
  store i32 %5280, i32* %5278, align 4
  %5304 = load i64, i64* %3, align 8
  %5305 = add i64 %5304, -138
  store i64 %5305, i64* %3, align 8
  br label %block_.L_4014e3

block_.L_401572:                                  ; preds = %block_.L_4014e3
  %5306 = add i64 %5071, -4
  %5307 = add i64 %5114, 4
  store i64 %5307, i64* %3, align 8
  %5308 = inttoptr i64 %5306 to i32*
  %5309 = load i32, i32* %5308, align 4
  %5310 = sext i32 %5309 to i64
  store i64 %5310, i64* %RAX.i1508, align 8
  %5311 = shl nsw i64 %5310, 2
  %5312 = add i64 %5071, -1568
  %5313 = add i64 %5312, %5311
  %5314 = add i64 %5114, 12
  store i64 %5314, i64* %3, align 8
  %5315 = inttoptr i64 %5313 to i32*
  %5316 = load i32, i32* %5315, align 4
  %5317 = sext i32 %5316 to i64
  store i64 %5317, i64* %RAX.i1508, align 8
  %5318 = shl nsw i64 %5317, 2
  %5319 = add i64 %5071, -2640
  %5320 = add i64 %5319, %5318
  %5321 = add i64 %5114, 20
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  store i8 0, i8* %14, align 1
  %5324 = and i32 %5323, 255
  %5325 = tail call i32 @llvm.ctpop.i32(i32 %5324)
  %5326 = trunc i32 %5325 to i8
  %5327 = and i8 %5326, 1
  %5328 = xor i8 %5327, 1
  store i8 %5328, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5329 = icmp eq i32 %5323, 0
  %5330 = zext i1 %5329 to i8
  store i8 %5330, i8* %30, align 1
  %5331 = lshr i32 %5323, 31
  %5332 = trunc i32 %5331 to i8
  store i8 %5332, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %5329, i64 345, i64 26
  %5333 = add i64 %5114, %.v141
  store i64 %5333, i64* %3, align 8
  br i1 %5329, label %block_.L_4016cb, label %block_40158c

block_40158c:                                     ; preds = %block_.L_401572
  %5334 = add i64 %5333, 4
  store i64 %5334, i64* %3, align 8
  %5335 = load i32, i32* %5308, align 4
  %5336 = sext i32 %5335 to i64
  store i64 %5336, i64* %RAX.i1508, align 8
  %5337 = shl nsw i64 %5336, 2
  %5338 = add i64 %5312, %5337
  %5339 = add i64 %5333, 12
  store i64 %5339, i64* %3, align 8
  %5340 = inttoptr i64 %5338 to i32*
  %5341 = load i32, i32* %5340, align 4
  %5342 = sext i32 %5341 to i64
  store i64 %5342, i64* %RAX.i1508, align 8
  %5343 = shl nsw i64 %5342, 2
  %5344 = add i64 %5319, %5343
  %5345 = add i64 %5333, 20
  store i64 %5345, i64* %3, align 8
  %5346 = inttoptr i64 %5344 to i32*
  %5347 = load i32, i32* %5346, align 4
  %5348 = sext i32 %5347 to i64
  store i64 %5348, i64* %RAX.i1508, align 8
  %5349 = shl nsw i64 %5348, 2
  %5350 = add i64 %5349, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %5351 = add i64 %5333, 27
  store i64 %5351, i64* %3, align 8
  %5352 = inttoptr i64 %5350 to i32*
  %5353 = load i32, i32* %5352, align 4
  %5354 = zext i32 %5353 to i64
  store i64 %5354, i64* %RCX.i2066, align 8
  %5355 = add i64 %5333, 31
  store i64 %5355, i64* %3, align 8
  %5356 = load i32, i32* %5308, align 4
  %5357 = sext i32 %5356 to i64
  store i64 %5357, i64* %RAX.i1508, align 8
  %5358 = shl nsw i64 %5357, 2
  %5359 = add i64 %5312, %5358
  %5360 = add i64 %5333, 39
  store i64 %5360, i64* %3, align 8
  %5361 = inttoptr i64 %5359 to i32*
  %5362 = load i32, i32* %5361, align 4
  %5363 = sext i32 %5362 to i64
  store i64 %5363, i64* %RAX.i1508, align 8
  %5364 = shl nsw i64 %5363, 2
  %5365 = add i64 %5319, %5364
  %5366 = add i64 %5333, 46
  store i64 %5366, i64* %3, align 8
  %5367 = inttoptr i64 %5365 to i32*
  store i32 %5353, i32* %5367, align 4
  %5368 = load i64, i64* %RBP.i, align 8
  %5369 = add i64 %5368, -16
  %5370 = load i64, i64* %3, align 8
  %5371 = add i64 %5370, 7
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5369 to i32*
  store i32 0, i32* %5372, align 4
  %5373 = load i64, i64* %RBP.i, align 8
  %5374 = add i64 %5373, -8
  %5375 = load i64, i64* %3, align 8
  %5376 = add i64 %5375, 7
  store i64 %5376, i64* %3, align 8
  %5377 = inttoptr i64 %5374 to i32*
  store i32 0, i32* %5377, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4015c8

block_.L_4015c8:                                  ; preds = %block_.L_401631, %block_40158c
  %5378 = phi i64 [ %.pre65, %block_40158c ], [ %5621, %block_.L_401631 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.41, %block_40158c ], [ %MEMORY.44, %block_.L_401631 ]
  %5379 = load i64, i64* %RBP.i, align 8
  %5380 = add i64 %5379, -8
  %5381 = add i64 %5378, 3
  store i64 %5381, i64* %3, align 8
  %5382 = inttoptr i64 %5380 to i32*
  %5383 = load i32, i32* %5382, align 4
  %5384 = zext i32 %5383 to i64
  store i64 %5384, i64* %RAX.i1508, align 8
  %5385 = add i64 %5379, -12
  %5386 = add i64 %5378, 7
  store i64 %5386, i64* %3, align 8
  %5387 = inttoptr i64 %5385 to i32*
  %5388 = load i32, i32* %5387, align 4
  %5389 = sext i32 %5388 to i64
  store i64 %5389, i64* %RCX.i2066, align 8
  %5390 = shl nsw i64 %5389, 2
  %5391 = add i64 %5379, -1328
  %5392 = add i64 %5391, %5390
  %5393 = add i64 %5378, 14
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = sub i32 %5383, %5395
  %5397 = icmp ult i32 %5383, %5395
  %5398 = zext i1 %5397 to i8
  store i8 %5398, i8* %14, align 1
  %5399 = and i32 %5396, 255
  %5400 = tail call i32 @llvm.ctpop.i32(i32 %5399)
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  %5403 = xor i8 %5402, 1
  store i8 %5403, i8* %21, align 1
  %5404 = xor i32 %5395, %5383
  %5405 = xor i32 %5404, %5396
  %5406 = lshr i32 %5405, 4
  %5407 = trunc i32 %5406 to i8
  %5408 = and i8 %5407, 1
  store i8 %5408, i8* %27, align 1
  %5409 = icmp eq i32 %5396, 0
  %5410 = zext i1 %5409 to i8
  store i8 %5410, i8* %30, align 1
  %5411 = lshr i32 %5396, 31
  %5412 = trunc i32 %5411 to i8
  store i8 %5412, i8* %33, align 1
  %5413 = lshr i32 %5383, 31
  %5414 = lshr i32 %5395, 31
  %5415 = xor i32 %5414, %5413
  %5416 = xor i32 %5411, %5413
  %5417 = add nuw nsw i32 %5416, %5415
  %5418 = icmp eq i32 %5417, 2
  %5419 = zext i1 %5418 to i8
  store i8 %5419, i8* %39, align 1
  %5420 = icmp ne i8 %5412, 0
  %5421 = xor i1 %5420, %5418
  %.v142 = select i1 %5421, i64 20, i64 124
  %5422 = add i64 %5378, %.v142
  store i64 %5422, i64* %3, align 8
  br i1 %5421, label %block_4015dc, label %block_.L_401644

block_4015dc:                                     ; preds = %block_.L_4015c8
  %5423 = add i64 %5422, 3
  store i64 %5423, i64* %3, align 8
  %5424 = load i32, i32* %5382, align 4
  %5425 = zext i32 %5424 to i64
  store i64 %5425, i64* %RAX.i1508, align 8
  %5426 = add i64 %5379, -4
  %5427 = add i64 %5422, 6
  store i64 %5427, i64* %3, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  %5430 = sub i32 %5424, %5429
  %5431 = icmp ult i32 %5424, %5429
  %5432 = zext i1 %5431 to i8
  store i8 %5432, i8* %14, align 1
  %5433 = and i32 %5430, 255
  %5434 = tail call i32 @llvm.ctpop.i32(i32 %5433)
  %5435 = trunc i32 %5434 to i8
  %5436 = and i8 %5435, 1
  %5437 = xor i8 %5436, 1
  store i8 %5437, i8* %21, align 1
  %5438 = xor i32 %5429, %5424
  %5439 = xor i32 %5438, %5430
  %5440 = lshr i32 %5439, 4
  %5441 = trunc i32 %5440 to i8
  %5442 = and i8 %5441, 1
  store i8 %5442, i8* %27, align 1
  %5443 = icmp eq i32 %5430, 0
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %30, align 1
  %5445 = lshr i32 %5430, 31
  %5446 = trunc i32 %5445 to i8
  store i8 %5446, i8* %33, align 1
  %5447 = lshr i32 %5424, 31
  %5448 = lshr i32 %5429, 31
  %5449 = xor i32 %5448, %5447
  %5450 = xor i32 %5445, %5447
  %5451 = add nuw nsw i32 %5450, %5449
  %5452 = icmp eq i32 %5451, 2
  %5453 = zext i1 %5452 to i8
  store i8 %5453, i8* %39, align 1
  %.v143 = select i1 %5443, i64 85, i64 12
  %5454 = add i64 %5422, %.v143
  store i64 %5454, i64* %3, align 8
  br i1 %5443, label %block_.L_401631, label %block_4015e8

block_4015e8:                                     ; preds = %block_4015dc
  store i64 255, i64* %RAX.i1508, align 8
  %5455 = add i64 %5454, 9
  store i64 %5455, i64* %3, align 8
  %5456 = load i32, i32* %5382, align 4
  %5457 = sext i32 %5456 to i64
  store i64 %5457, i64* %RCX.i2066, align 8
  %5458 = shl nsw i64 %5457, 2
  %5459 = add i64 %5379, -1568
  %5460 = add i64 %5459, %5458
  %5461 = add i64 %5454, 16
  store i64 %5461, i64* %3, align 8
  %5462 = inttoptr i64 %5460 to i32*
  %5463 = load i32, i32* %5462, align 4
  %5464 = zext i32 %5463 to i64
  store i64 %5464, i64* %RDX.i2064, align 8
  %5465 = add i64 %5454, 20
  store i64 %5465, i64* %3, align 8
  %5466 = load i32, i32* %5428, align 4
  %5467 = sext i32 %5466 to i64
  store i64 %5467, i64* %RCX.i2066, align 8
  %5468 = shl nsw i64 %5467, 2
  %5469 = add i64 %5379, -1536
  %5470 = add i64 %5469, %5468
  %5471 = add i64 %5454, 27
  store i64 %5471, i64* %3, align 8
  %5472 = inttoptr i64 %5470 to i32*
  %5473 = load i32, i32* %5472, align 4
  %5474 = add i32 %5473, %5463
  %5475 = zext i32 %5474 to i64
  store i64 %5475, i64* %RDX.i2064, align 8
  %5476 = icmp ult i32 %5474, %5463
  %5477 = icmp ult i32 %5474, %5473
  %5478 = or i1 %5476, %5477
  %5479 = zext i1 %5478 to i8
  store i8 %5479, i8* %14, align 1
  %5480 = and i32 %5474, 255
  %5481 = tail call i32 @llvm.ctpop.i32(i32 %5480)
  %5482 = trunc i32 %5481 to i8
  %5483 = and i8 %5482, 1
  %5484 = xor i8 %5483, 1
  store i8 %5484, i8* %21, align 1
  %5485 = xor i32 %5473, %5463
  %5486 = xor i32 %5485, %5474
  %5487 = lshr i32 %5486, 4
  %5488 = trunc i32 %5487 to i8
  %5489 = and i8 %5488, 1
  store i8 %5489, i8* %27, align 1
  %5490 = icmp eq i32 %5474, 0
  %5491 = zext i1 %5490 to i8
  store i8 %5491, i8* %30, align 1
  %5492 = lshr i32 %5474, 31
  %5493 = trunc i32 %5492 to i8
  store i8 %5493, i8* %33, align 1
  %5494 = lshr i32 %5463, 31
  %5495 = lshr i32 %5473, 31
  %5496 = xor i32 %5492, %5494
  %5497 = xor i32 %5492, %5495
  %5498 = add nuw nsw i32 %5496, %5497
  %5499 = icmp eq i32 %5498, 2
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %39, align 1
  %5501 = add i64 %5379, -2728
  %5502 = add i64 %5454, 33
  store i64 %5502, i64* %3, align 8
  %5503 = inttoptr i64 %5501 to i32*
  store i32 255, i32* %5503, align 4
  %5504 = load i32, i32* %EDX.i2048, align 4
  %5505 = zext i32 %5504 to i64
  %5506 = load i64, i64* %3, align 8
  store i64 %5505, i64* %RAX.i1508, align 8
  %5507 = sext i32 %5504 to i64
  %5508 = lshr i64 %5507, 32
  store i64 %5508, i64* %57, align 8
  %5509 = load i64, i64* %RBP.i, align 8
  %5510 = add i64 %5509, -2728
  %5511 = add i64 %5506, 9
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i32*
  %5513 = load i32, i32* %5512, align 4
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RSI.i2060, align 8
  %5515 = add i64 %5506, 11
  store i64 %5515, i64* %3, align 8
  %5516 = sext i32 %5513 to i64
  %5517 = shl nuw i64 %5508, 32
  %5518 = or i64 %5517, %5505
  %5519 = sdiv i64 %5518, %5516
  %5520 = shl i64 %5519, 32
  %5521 = ashr exact i64 %5520, 32
  %5522 = icmp eq i64 %5519, %5521
  br i1 %5522, label %5525, label %5523

; <label>:5523:                                   ; preds = %block_4015e8
  %5524 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5515, %struct.Memory* %MEMORY.43)
  %.pre66 = load i32, i32* %EDX.i2048, align 4
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:5525:                                   ; preds = %block_4015e8
  %5526 = srem i64 %5518, %5516
  %5527 = and i64 %5519, 4294967295
  store i64 %5527, i64* %58, align 8
  %5528 = and i64 %5526, 4294967295
  store i64 %5528, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5529 = trunc i64 %5526 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5525, %5523
  %5530 = phi i64 [ %.pre68, %5523 ], [ %5509, %5525 ]
  %5531 = phi i64 [ %.pre67, %5523 ], [ %5515, %5525 ]
  %5532 = phi i32 [ %.pre66, %5523 ], [ %5529, %5525 ]
  %5533 = phi %struct.Memory* [ %5524, %5523 ], [ %MEMORY.43, %5525 ]
  %5534 = sext i32 %5532 to i64
  store i64 %5534, i64* %RCX.i2066, align 8
  %5535 = shl nsw i64 %5534, 2
  %5536 = add i64 %5535, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %5537 = add i64 %5531, 10
  store i64 %5537, i64* %3, align 8
  %5538 = inttoptr i64 %5536 to i32*
  %5539 = load i32, i32* %5538, align 4
  %5540 = xor i32 %5539, 1
  %5541 = zext i32 %5540 to i64
  store i64 %5541, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5542 = and i32 %5540, 255
  %5543 = tail call i32 @llvm.ctpop.i32(i32 %5542)
  %5544 = trunc i32 %5543 to i8
  %5545 = and i8 %5544, 1
  %5546 = xor i8 %5545, 1
  store i8 %5546, i8* %21, align 1
  %5547 = icmp eq i32 %5540, 0
  %5548 = zext i1 %5547 to i8
  store i8 %5548, i8* %30, align 1
  %5549 = lshr i32 %5539, 31
  %5550 = trunc i32 %5549 to i8
  store i8 %5550, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5551 = sext i32 %5540 to i64
  store i64 %5551, i64* %RCX.i2066, align 8
  %5552 = shl nsw i64 %5551, 2
  %5553 = add i64 %5552, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %5554 = add i64 %5531, 23
  store i64 %5554, i64* %3, align 8
  %5555 = inttoptr i64 %5553 to i32*
  %5556 = load i32, i32* %5555, align 4
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RDX.i2064, align 8
  %5558 = add i64 %5530, -16
  %5559 = add i64 %5531, 26
  store i64 %5559, i64* %3, align 8
  %5560 = inttoptr i64 %5558 to i32*
  %5561 = load i32, i32* %5560, align 4
  %5562 = add i32 %5561, %5556
  %5563 = zext i32 %5562 to i64
  store i64 %5563, i64* %RDX.i2064, align 8
  %5564 = icmp ult i32 %5562, %5556
  %5565 = icmp ult i32 %5562, %5561
  %5566 = or i1 %5564, %5565
  %5567 = zext i1 %5566 to i8
  store i8 %5567, i8* %14, align 1
  %5568 = and i32 %5562, 255
  %5569 = tail call i32 @llvm.ctpop.i32(i32 %5568)
  %5570 = trunc i32 %5569 to i8
  %5571 = and i8 %5570, 1
  %5572 = xor i8 %5571, 1
  store i8 %5572, i8* %21, align 1
  %5573 = xor i32 %5561, %5556
  %5574 = xor i32 %5573, %5562
  %5575 = lshr i32 %5574, 4
  %5576 = trunc i32 %5575 to i8
  %5577 = and i8 %5576, 1
  store i8 %5577, i8* %27, align 1
  %5578 = icmp eq i32 %5562, 0
  %5579 = zext i1 %5578 to i8
  store i8 %5579, i8* %30, align 1
  %5580 = lshr i32 %5562, 31
  %5581 = trunc i32 %5580 to i8
  store i8 %5581, i8* %33, align 1
  %5582 = lshr i32 %5556, 31
  %5583 = lshr i32 %5561, 31
  %5584 = xor i32 %5580, %5582
  %5585 = xor i32 %5580, %5583
  %5586 = add nuw nsw i32 %5584, %5585
  %5587 = icmp eq i32 %5586, 2
  %5588 = zext i1 %5587 to i8
  store i8 %5588, i8* %39, align 1
  %5589 = add i64 %5531, 29
  store i64 %5589, i64* %3, align 8
  store i32 %5562, i32* %5560, align 4
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401631

block_.L_401631:                                  ; preds = %routine_idivl__esi.exit, %block_4015dc
  %5590 = phi i64 [ %5379, %block_4015dc ], [ %.pre70, %routine_idivl__esi.exit ]
  %5591 = phi i64 [ %5454, %block_4015dc ], [ %.pre69, %routine_idivl__esi.exit ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_4015dc ], [ %5533, %routine_idivl__esi.exit ]
  %5592 = add i64 %5590, -8
  %5593 = add i64 %5591, 8
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i32*
  %5595 = load i32, i32* %5594, align 4
  %5596 = add i32 %5595, 1
  %5597 = zext i32 %5596 to i64
  store i64 %5597, i64* %RAX.i1508, align 8
  %5598 = icmp eq i32 %5595, -1
  %5599 = icmp eq i32 %5596, 0
  %5600 = or i1 %5598, %5599
  %5601 = zext i1 %5600 to i8
  store i8 %5601, i8* %14, align 1
  %5602 = and i32 %5596, 255
  %5603 = tail call i32 @llvm.ctpop.i32(i32 %5602)
  %5604 = trunc i32 %5603 to i8
  %5605 = and i8 %5604, 1
  %5606 = xor i8 %5605, 1
  store i8 %5606, i8* %21, align 1
  %5607 = xor i32 %5595, %5596
  %5608 = lshr i32 %5607, 4
  %5609 = trunc i32 %5608 to i8
  %5610 = and i8 %5609, 1
  store i8 %5610, i8* %27, align 1
  %5611 = zext i1 %5599 to i8
  store i8 %5611, i8* %30, align 1
  %5612 = lshr i32 %5596, 31
  %5613 = trunc i32 %5612 to i8
  store i8 %5613, i8* %33, align 1
  %5614 = lshr i32 %5595, 31
  %5615 = xor i32 %5612, %5614
  %5616 = add nuw nsw i32 %5615, %5612
  %5617 = icmp eq i32 %5616, 2
  %5618 = zext i1 %5617 to i8
  store i8 %5618, i8* %39, align 1
  %5619 = add i64 %5591, 14
  store i64 %5619, i64* %3, align 8
  store i32 %5596, i32* %5594, align 4
  %5620 = load i64, i64* %3, align 8
  %5621 = add i64 %5620, -119
  store i64 %5621, i64* %3, align 8
  br label %block_.L_4015c8

block_.L_401644:                                  ; preds = %block_.L_4015c8
  store i64 255, i64* %RAX.i1508, align 8
  %5622 = add i64 %5379, -16
  %5623 = add i64 %5422, 8
  store i64 %5623, i64* %3, align 8
  %5624 = inttoptr i64 %5622 to i32*
  %5625 = load i32, i32* %5624, align 4
  %5626 = zext i32 %5625 to i64
  store i64 %5626, i64* %RCX.i2066, align 8
  %5627 = add i64 %5379, -2732
  %5628 = add i64 %5422, 14
  store i64 %5628, i64* %3, align 8
  %5629 = inttoptr i64 %5627 to i32*
  store i32 255, i32* %5629, align 4
  %5630 = load i32, i32* %ECX.i1986, align 4
  %5631 = zext i32 %5630 to i64
  %5632 = load i64, i64* %3, align 8
  store i64 %5631, i64* %RAX.i1508, align 8
  %5633 = sext i32 %5630 to i64
  %5634 = lshr i64 %5633, 32
  store i64 %5634, i64* %57, align 8
  %5635 = load i64, i64* %RBP.i, align 8
  %5636 = add i64 %5635, -2732
  %5637 = add i64 %5632, 9
  store i64 %5637, i64* %3, align 8
  %5638 = inttoptr i64 %5636 to i32*
  %5639 = load i32, i32* %5638, align 4
  %5640 = zext i32 %5639 to i64
  store i64 %5640, i64* %RCX.i2066, align 8
  %5641 = add i64 %5632, 11
  store i64 %5641, i64* %3, align 8
  %5642 = sext i32 %5639 to i64
  %5643 = shl nuw i64 %5634, 32
  %5644 = or i64 %5643, %5631
  %5645 = sdiv i64 %5644, %5642
  %5646 = shl i64 %5645, 32
  %5647 = ashr exact i64 %5646, 32
  %5648 = icmp eq i64 %5645, %5647
  br i1 %5648, label %5651, label %5649

; <label>:5649:                                   ; preds = %block_.L_401644
  %5650 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5641, %struct.Memory* %MEMORY.43)
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i32, i32* %EDX.i2048, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit204

; <label>:5651:                                   ; preds = %block_.L_401644
  %5652 = srem i64 %5644, %5642
  %5653 = and i64 %5645, 4294967295
  store i64 %5653, i64* %58, align 8
  %5654 = and i64 %5652, 4294967295
  store i64 %5654, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5655 = trunc i64 %5652 to i32
  br label %routine_idivl__ecx.exit204

routine_idivl__ecx.exit204:                       ; preds = %5651, %5649
  %5656 = phi i64 [ %.pre73, %5649 ], [ %5641, %5651 ]
  %5657 = phi i32 [ %.pre72, %5649 ], [ %5655, %5651 ]
  %5658 = phi i64 [ %.pre71, %5649 ], [ %5635, %5651 ]
  %5659 = phi %struct.Memory* [ %5650, %5649 ], [ %MEMORY.43, %5651 ]
  %5660 = add i64 %5658, -16
  %5661 = add i64 %5656, 3
  store i64 %5661, i64* %3, align 8
  %5662 = inttoptr i64 %5660 to i32*
  store i32 %5657, i32* %5662, align 4
  %5663 = load i64, i64* %RBP.i, align 8
  %5664 = add i64 %5663, -4
  %5665 = load i64, i64* %3, align 8
  %5666 = add i64 %5665, 4
  store i64 %5666, i64* %3, align 8
  %5667 = inttoptr i64 %5664 to i32*
  %5668 = load i32, i32* %5667, align 4
  %5669 = sext i32 %5668 to i64
  store i64 %5669, i64* %RSI.i2060, align 8
  %5670 = shl nsw i64 %5669, 2
  %5671 = add i64 %5663, -1568
  %5672 = add i64 %5671, %5670
  %5673 = add i64 %5665, 12
  store i64 %5673, i64* %3, align 8
  %5674 = inttoptr i64 %5672 to i32*
  %5675 = load i32, i32* %5674, align 4
  %5676 = sext i32 %5675 to i64
  store i64 %5676, i64* %RSI.i2060, align 8
  %5677 = shl nsw i64 %5676, 2
  %5678 = add i64 %5663, -2640
  %5679 = add i64 %5678, %5677
  %5680 = add i64 %5665, 19
  store i64 %5680, i64* %3, align 8
  %5681 = inttoptr i64 %5679 to i32*
  %5682 = load i32, i32* %5681, align 4
  %5683 = zext i32 %5682 to i64
  store i64 %5683, i64* %RDX.i2064, align 8
  %5684 = add i64 %5663, -16
  %5685 = add i64 %5665, 22
  store i64 %5685, i64* %3, align 8
  %5686 = inttoptr i64 %5684 to i32*
  %5687 = load i32, i32* %5686, align 4
  %5688 = sub i32 %5682, %5687
  %5689 = lshr i32 %5688, 31
  %5690 = add i32 %5688, 255
  %5691 = zext i32 %5690 to i64
  %5692 = icmp ugt i32 %5688, -256
  %5693 = zext i1 %5692 to i8
  store i8 %5693, i8* %14, align 1
  %5694 = and i32 %5690, 255
  %5695 = tail call i32 @llvm.ctpop.i32(i32 %5694)
  %5696 = trunc i32 %5695 to i8
  %5697 = and i8 %5696, 1
  %5698 = xor i8 %5697, 1
  store i8 %5698, i8* %21, align 1
  %5699 = xor i32 %5688, 16
  %5700 = xor i32 %5699, %5690
  %5701 = lshr i32 %5700, 4
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  store i8 %5703, i8* %27, align 1
  %5704 = icmp eq i32 %5690, 0
  %5705 = zext i1 %5704 to i8
  store i8 %5705, i8* %30, align 1
  %5706 = lshr i32 %5690, 31
  %5707 = trunc i32 %5706 to i8
  store i8 %5707, i8* %33, align 1
  %5708 = xor i32 %5706, %5689
  %5709 = add nuw nsw i32 %5708, %5706
  %5710 = icmp eq i32 %5709, 2
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %39, align 1
  store i64 %5691, i64* %RAX.i1508, align 8
  %5712 = sext i32 %5690 to i64
  %5713 = lshr i64 %5712, 32
  store i64 %5713, i64* %57, align 8
  %5714 = load i32, i32* %ECX.i1986, align 4
  %5715 = add i64 %5665, 33
  store i64 %5715, i64* %3, align 8
  %5716 = sext i32 %5714 to i64
  %5717 = shl nuw i64 %5713, 32
  %5718 = or i64 %5717, %5691
  %5719 = sdiv i64 %5718, %5716
  %5720 = shl i64 %5719, 32
  %5721 = ashr exact i64 %5720, 32
  %5722 = icmp eq i64 %5719, %5721
  br i1 %5722, label %5725, label %5723

; <label>:5723:                                   ; preds = %routine_idivl__ecx.exit204
  %5724 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5715, %struct.Memory* %5659)
  %.pre74 = load i32, i32* %EDX.i2048, align 4
  %.pre75 = load i64, i64* %3, align 8
  %.pre164 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:5725:                                   ; preds = %routine_idivl__ecx.exit204
  %5726 = srem i64 %5718, %5716
  %5727 = and i64 %5719, 4294967295
  store i64 %5727, i64* %58, align 8
  %5728 = and i64 %5726, 4294967295
  store i64 %5728, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5729 = trunc i64 %5726 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5725, %5723
  %5730 = phi i64 [ %.pre164, %5723 ], [ %5663, %5725 ]
  %5731 = phi i64 [ %.pre75, %5723 ], [ %5715, %5725 ]
  %5732 = phi i32 [ %.pre74, %5723 ], [ %5729, %5725 ]
  %5733 = phi %struct.Memory* [ %5724, %5723 ], [ %5659, %5725 ]
  %5734 = sext i32 %5732 to i64
  store i64 %5734, i64* %RSI.i2060, align 8
  %5735 = shl nsw i64 %5734, 2
  %5736 = add i64 %5735, ptrtoint (%G_0x603880___rsi_4__type* @G_0x603880___rsi_4_ to i64)
  %5737 = add i64 %5731, 10
  store i64 %5737, i64* %3, align 8
  %5738 = inttoptr i64 %5736 to i32*
  %5739 = load i32, i32* %5738, align 4
  %5740 = zext i32 %5739 to i64
  store i64 %5740, i64* %RDX.i2064, align 8
  %5741 = add i64 %5730, -4
  %5742 = add i64 %5731, 14
  store i64 %5742, i64* %3, align 8
  %5743 = inttoptr i64 %5741 to i32*
  %5744 = load i32, i32* %5743, align 4
  %5745 = sext i32 %5744 to i64
  store i64 %5745, i64* %RSI.i2060, align 8
  %5746 = shl nsw i64 %5745, 2
  %5747 = add i64 %5730, -1568
  %5748 = add i64 %5747, %5746
  %5749 = add i64 %5731, 22
  store i64 %5749, i64* %3, align 8
  %5750 = inttoptr i64 %5748 to i32*
  %5751 = load i32, i32* %5750, align 4
  %5752 = sext i32 %5751 to i64
  store i64 %5752, i64* %RSI.i2060, align 8
  %5753 = shl nsw i64 %5752, 2
  %5754 = add i64 %5730, -2640
  %5755 = add i64 %5754, %5753
  %5756 = add i64 %5731, 29
  store i64 %5756, i64* %3, align 8
  %5757 = inttoptr i64 %5755 to i32*
  store i32 %5739, i32* %5757, align 4
  %5758 = load i64, i64* %RBP.i, align 8
  %5759 = add i64 %5758, -4
  %5760 = load i64, i64* %3, align 8
  %5761 = add i64 %5760, 4
  store i64 %5761, i64* %3, align 8
  %5762 = inttoptr i64 %5759 to i32*
  %5763 = load i32, i32* %5762, align 4
  %5764 = sext i32 %5763 to i64
  store i64 %5764, i64* %RSI.i2060, align 8
  %5765 = shl nsw i64 %5764, 2
  %5766 = add i64 %5758, -1568
  %5767 = add i64 %5766, %5765
  %5768 = add i64 %5760, 12
  store i64 %5768, i64* %3, align 8
  %5769 = inttoptr i64 %5767 to i32*
  %5770 = load i32, i32* %5769, align 4
  %5771 = sext i32 %5770 to i64
  store i64 %5771, i64* %RSI.i2060, align 8
  %5772 = shl nsw i64 %5771, 2
  %5773 = add i64 %5758, -2640
  %5774 = add i64 %5773, %5772
  %5775 = add i64 %5760, 19
  store i64 %5775, i64* %3, align 8
  %5776 = inttoptr i64 %5774 to i32*
  %5777 = load i32, i32* %5776, align 4
  %5778 = zext i32 %5777 to i64
  store i64 %5778, i64* %RDX.i2064, align 8
  %5779 = add i64 %5760, 23
  store i64 %5779, i64* %3, align 8
  %5780 = load i32, i32* %5762, align 4
  %5781 = sext i32 %5780 to i64
  store i64 %5781, i64* %RSI.i2060, align 8
  %5782 = shl nsw i64 %5781, 2
  %5783 = add i64 %5766, %5782
  %5784 = add i64 %5760, 31
  store i64 %5784, i64* %3, align 8
  %5785 = inttoptr i64 %5783 to i32*
  %5786 = load i32, i32* %5785, align 4
  %5787 = sext i32 %5786 to i64
  store i64 %5787, i64* %RSI.i2060, align 8
  %5788 = shl nsw i64 %5787, 2
  %5789 = add i64 %5788, ptrtoint (%G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %5790 = add i64 %5760, 38
  store i64 %5790, i64* %3, align 8
  %5791 = inttoptr i64 %5789 to i32*
  %5792 = load i32, i32* %5791, align 4
  %5793 = xor i32 %5792, %5777
  %5794 = zext i32 %5793 to i64
  store i64 %5794, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5795 = and i32 %5793, 255
  %5796 = tail call i32 @llvm.ctpop.i32(i32 %5795)
  %5797 = trunc i32 %5796 to i8
  %5798 = and i8 %5797, 1
  %5799 = xor i8 %5798, 1
  store i8 %5799, i8* %21, align 1
  %5800 = icmp eq i32 %5793, 0
  %5801 = zext i1 %5800 to i8
  store i8 %5801, i8* %30, align 1
  %5802 = lshr i32 %5793, 31
  %5803 = trunc i32 %5802 to i8
  store i8 %5803, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5804 = add i64 %5760, 45
  store i64 %5804, i64* %3, align 8
  store i32 %5793, i32* %5791, align 4
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4016cb

block_.L_4016cb:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_401572
  %5805 = phi i64 [ %5071, %block_.L_401572 ], [ %.pre77, %routine_idivl__ecx.exit ]
  %5806 = phi i64 [ %5333, %block_.L_401572 ], [ %.pre76, %routine_idivl__ecx.exit ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.41, %block_.L_401572 ], [ %5733, %routine_idivl__ecx.exit ]
  %5807 = add i64 %5805, -4
  %5808 = add i64 %5806, 8
  store i64 %5808, i64* %3, align 8
  %5809 = inttoptr i64 %5807 to i32*
  %5810 = load i32, i32* %5809, align 4
  %5811 = add i32 %5810, 1
  %5812 = zext i32 %5811 to i64
  store i64 %5812, i64* %RAX.i1508, align 8
  %5813 = icmp eq i32 %5810, -1
  %5814 = icmp eq i32 %5811, 0
  %5815 = or i1 %5813, %5814
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %14, align 1
  %5817 = and i32 %5811, 255
  %5818 = tail call i32 @llvm.ctpop.i32(i32 %5817)
  %5819 = trunc i32 %5818 to i8
  %5820 = and i8 %5819, 1
  %5821 = xor i8 %5820, 1
  store i8 %5821, i8* %21, align 1
  %5822 = xor i32 %5810, %5811
  %5823 = lshr i32 %5822, 4
  %5824 = trunc i32 %5823 to i8
  %5825 = and i8 %5824, 1
  store i8 %5825, i8* %27, align 1
  %5826 = zext i1 %5814 to i8
  store i8 %5826, i8* %30, align 1
  %5827 = lshr i32 %5811, 31
  %5828 = trunc i32 %5827 to i8
  store i8 %5828, i8* %33, align 1
  %5829 = lshr i32 %5810, 31
  %5830 = xor i32 %5827, %5829
  %5831 = add nuw nsw i32 %5830, %5827
  %5832 = icmp eq i32 %5831, 2
  %5833 = zext i1 %5832 to i8
  store i8 %5833, i8* %39, align 1
  %5834 = add i64 %5806, 14
  store i64 %5834, i64* %3, align 8
  store i32 %5811, i32* %5809, align 4
  %5835 = load i64, i64* %3, align 8
  %5836 = add i64 %5835, -552
  store i64 %5836, i64* %3, align 8
  br label %block_.L_4014b1

block_.L_4016de:                                  ; preds = %block_.L_4014b1
  %5837 = add i64 %5049, 117
  br label %block_.L_401753

block_.L_4016e3:                                  ; preds = %block_.L_4011d3
  store i32 0, i32* %3493, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_4016ea

block_.L_4016ea:                                  ; preds = %block_.L_40173b, %block_.L_4016e3
  %5838 = phi i64 [ %5958, %block_.L_40173b ], [ %.pre78, %block_.L_4016e3 ]
  %5839 = load i64, i64* %RBP.i, align 8
  %5840 = add i64 %5839, -4
  %5841 = add i64 %5838, 7
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i32*
  %5843 = load i32, i32* %5842, align 4
  %5844 = add i32 %5843, -255
  %5845 = icmp ult i32 %5843, 255
  %5846 = zext i1 %5845 to i8
  store i8 %5846, i8* %14, align 1
  %5847 = and i32 %5844, 255
  %5848 = tail call i32 @llvm.ctpop.i32(i32 %5847)
  %5849 = trunc i32 %5848 to i8
  %5850 = and i8 %5849, 1
  %5851 = xor i8 %5850, 1
  store i8 %5851, i8* %21, align 1
  %5852 = xor i32 %5843, 16
  %5853 = xor i32 %5852, %5844
  %5854 = lshr i32 %5853, 4
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  store i8 %5856, i8* %27, align 1
  %5857 = icmp eq i32 %5844, 0
  %5858 = zext i1 %5857 to i8
  store i8 %5858, i8* %30, align 1
  %5859 = lshr i32 %5844, 31
  %5860 = trunc i32 %5859 to i8
  store i8 %5860, i8* %33, align 1
  %5861 = lshr i32 %5843, 31
  %5862 = xor i32 %5859, %5861
  %5863 = add nuw nsw i32 %5862, %5861
  %5864 = icmp eq i32 %5863, 2
  %5865 = zext i1 %5864 to i8
  store i8 %5865, i8* %39, align 1
  %5866 = icmp ne i8 %5860, 0
  %5867 = xor i1 %5866, %5864
  %.v144 = select i1 %5867, i64 13, i64 100
  %5868 = add i64 %5838, %.v144
  store i64 %5868, i64* %3, align 8
  br i1 %5867, label %block_4016f7, label %block_.L_40174e

block_4016f7:                                     ; preds = %block_.L_4016ea
  %5869 = add i64 %5868, 4
  store i64 %5869, i64* %3, align 8
  %5870 = load i32, i32* %5842, align 4
  %5871 = sext i32 %5870 to i64
  store i64 %5871, i64* %RAX.i1508, align 8
  %5872 = shl nsw i64 %5871, 2
  %5873 = add i64 %5872, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5874 = add i64 %5868, 12
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = add i32 %5876, 1
  %5878 = icmp ne i32 %5876, -1
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %14, align 1
  %5880 = and i32 %5877, 255
  %5881 = tail call i32 @llvm.ctpop.i32(i32 %5880)
  %5882 = trunc i32 %5881 to i8
  %5883 = and i8 %5882, 1
  %5884 = xor i8 %5883, 1
  store i8 %5884, i8* %21, align 1
  %5885 = xor i32 %5876, 16
  %5886 = xor i32 %5877, %5885
  %5887 = lshr i32 %5886, 4
  %5888 = trunc i32 %5887 to i8
  %5889 = and i8 %5888, 1
  store i8 %5889, i8* %27, align 1
  %5890 = icmp eq i32 %5877, 0
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %30, align 1
  %5892 = lshr i32 %5877, 31
  %5893 = trunc i32 %5892 to i8
  store i8 %5893, i8* %33, align 1
  %5894 = lshr i32 %5876, 31
  %5895 = xor i32 %5894, 1
  %5896 = xor i32 %5892, %5894
  %5897 = add nuw nsw i32 %5896, %5895
  %5898 = icmp eq i32 %5897, 2
  %5899 = zext i1 %5898 to i8
  store i8 %5899, i8* %39, align 1
  %.v145 = select i1 %5890, i64 53, i64 18
  %5900 = add i64 %5868, %.v145
  %5901 = add i64 %5900, 4
  store i64 %5901, i64* %3, align 8
  %5902 = load i32, i32* %5842, align 4
  %5903 = sext i32 %5902 to i64
  store i64 %5903, i64* %RAX.i1508, align 8
  %5904 = shl nsw i64 %5903, 2
  %5905 = add i64 %5904, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %5890, label %block_.L_40172c, label %block_401709

block_401709:                                     ; preds = %block_4016f7
  %5906 = add i64 %5900, 12
  store i64 %5906, i64* %3, align 8
  %5907 = inttoptr i64 %5905 to i32*
  %5908 = load i32, i32* %5907, align 4
  %5909 = sext i32 %5908 to i64
  store i64 %5909, i64* %RAX.i1508, align 8
  %5910 = shl nsw i64 %5909, 2
  %5911 = add i64 %5910, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %5912 = add i64 %5900, 19
  store i64 %5912, i64* %3, align 8
  %5913 = inttoptr i64 %5911 to i32*
  %5914 = load i32, i32* %5913, align 4
  %5915 = zext i32 %5914 to i64
  store i64 %5915, i64* %RCX.i2066, align 8
  %5916 = add i64 %5900, 23
  store i64 %5916, i64* %3, align 8
  %5917 = load i32, i32* %5842, align 4
  %5918 = sext i32 %5917 to i64
  store i64 %5918, i64* %RAX.i1508, align 8
  %5919 = shl nsw i64 %5918, 2
  %5920 = add i64 %5919, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5921 = add i64 %5900, 30
  store i64 %5921, i64* %3, align 8
  %5922 = inttoptr i64 %5920 to i32*
  store i32 %5914, i32* %5922, align 4
  %5923 = load i64, i64* %3, align 8
  %5924 = add i64 %5923, 20
  store i64 %5924, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40172c:                                  ; preds = %block_4016f7
  %5925 = add i64 %5900, 15
  store i64 %5925, i64* %3, align 8
  %5926 = inttoptr i64 %5905 to i32*
  store i32 0, i32* %5926, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40173b:                                  ; preds = %block_.L_40172c, %block_401709
  %5927 = phi i64 [ %.pre79, %block_.L_40172c ], [ %5924, %block_401709 ]
  %5928 = load i64, i64* %RBP.i, align 8
  %5929 = add i64 %5928, -4
  %5930 = add i64 %5927, 8
  store i64 %5930, i64* %3, align 8
  %5931 = inttoptr i64 %5929 to i32*
  %5932 = load i32, i32* %5931, align 4
  %5933 = add i32 %5932, 1
  %5934 = zext i32 %5933 to i64
  store i64 %5934, i64* %RAX.i1508, align 8
  %5935 = icmp eq i32 %5932, -1
  %5936 = icmp eq i32 %5933, 0
  %5937 = or i1 %5935, %5936
  %5938 = zext i1 %5937 to i8
  store i8 %5938, i8* %14, align 1
  %5939 = and i32 %5933, 255
  %5940 = tail call i32 @llvm.ctpop.i32(i32 %5939)
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = xor i8 %5942, 1
  store i8 %5943, i8* %21, align 1
  %5944 = xor i32 %5932, %5933
  %5945 = lshr i32 %5944, 4
  %5946 = trunc i32 %5945 to i8
  %5947 = and i8 %5946, 1
  store i8 %5947, i8* %27, align 1
  %5948 = zext i1 %5936 to i8
  store i8 %5948, i8* %30, align 1
  %5949 = lshr i32 %5933, 31
  %5950 = trunc i32 %5949 to i8
  store i8 %5950, i8* %33, align 1
  %5951 = lshr i32 %5932, 31
  %5952 = xor i32 %5949, %5951
  %5953 = add nuw nsw i32 %5952, %5949
  %5954 = icmp eq i32 %5953, 2
  %5955 = zext i1 %5954 to i8
  store i8 %5955, i8* %39, align 1
  %5956 = add i64 %5927, 14
  store i64 %5956, i64* %3, align 8
  store i32 %5933, i32* %5931, align 4
  %5957 = load i64, i64* %3, align 8
  %5958 = add i64 %5957, -95
  store i64 %5958, i64* %3, align 8
  br label %block_.L_4016ea

block_.L_40174e:                                  ; preds = %block_.L_4016ea
  %5959 = add i64 %5868, 5
  br label %block_.L_401753

block_.L_401753:                                  ; preds = %block_.L_40174e, %block_.L_4016de
  %.sink89 = phi i64 [ %5959, %block_.L_40174e ], [ %5837, %block_.L_4016de ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.25, %block_.L_40174e ], [ %MEMORY.40, %block_.L_4016de ]
  store i64 %.sink89, i64* %3, align 8
  %5960 = add i64 %.sink89, 117
  br label %block_.L_4017c8

block_.L_40175f:                                  ; preds = %block_40100c.block_.L_40175f_crit_edge, %block_.L_4017b0
  %5961 = phi i64 [ %6081, %block_.L_4017b0 ], [ %.pre80, %block_40100c.block_.L_40175f_crit_edge ]
  %5962 = load i64, i64* %RBP.i, align 8
  %5963 = add i64 %5962, -4
  %5964 = add i64 %5961, 7
  store i64 %5964, i64* %3, align 8
  %5965 = inttoptr i64 %5963 to i32*
  %5966 = load i32, i32* %5965, align 4
  %5967 = add i32 %5966, -255
  %5968 = icmp ult i32 %5966, 255
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %14, align 1
  %5970 = and i32 %5967, 255
  %5971 = tail call i32 @llvm.ctpop.i32(i32 %5970)
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  %5974 = xor i8 %5973, 1
  store i8 %5974, i8* %21, align 1
  %5975 = xor i32 %5966, 16
  %5976 = xor i32 %5975, %5967
  %5977 = lshr i32 %5976, 4
  %5978 = trunc i32 %5977 to i8
  %5979 = and i8 %5978, 1
  store i8 %5979, i8* %27, align 1
  %5980 = icmp eq i32 %5967, 0
  %5981 = zext i1 %5980 to i8
  store i8 %5981, i8* %30, align 1
  %5982 = lshr i32 %5967, 31
  %5983 = trunc i32 %5982 to i8
  store i8 %5983, i8* %33, align 1
  %5984 = lshr i32 %5966, 31
  %5985 = xor i32 %5982, %5984
  %5986 = add nuw nsw i32 %5985, %5984
  %5987 = icmp eq i32 %5986, 2
  %5988 = zext i1 %5987 to i8
  store i8 %5988, i8* %39, align 1
  %5989 = icmp ne i8 %5983, 0
  %5990 = xor i1 %5989, %5987
  %.v146 = select i1 %5990, i64 13, i64 100
  %5991 = add i64 %5961, %.v146
  store i64 %5991, i64* %3, align 8
  br i1 %5990, label %block_40176c, label %block_.L_4017c3

block_40176c:                                     ; preds = %block_.L_40175f
  %5992 = add i64 %5991, 4
  store i64 %5992, i64* %3, align 8
  %5993 = load i32, i32* %5965, align 4
  %5994 = sext i32 %5993 to i64
  store i64 %5994, i64* %RAX.i1508, align 8
  %5995 = shl nsw i64 %5994, 2
  %5996 = add i64 %5995, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5997 = add i64 %5991, 12
  store i64 %5997, i64* %3, align 8
  %5998 = inttoptr i64 %5996 to i32*
  %5999 = load i32, i32* %5998, align 4
  %6000 = add i32 %5999, 1
  %6001 = icmp ne i32 %5999, -1
  %6002 = zext i1 %6001 to i8
  store i8 %6002, i8* %14, align 1
  %6003 = and i32 %6000, 255
  %6004 = tail call i32 @llvm.ctpop.i32(i32 %6003)
  %6005 = trunc i32 %6004 to i8
  %6006 = and i8 %6005, 1
  %6007 = xor i8 %6006, 1
  store i8 %6007, i8* %21, align 1
  %6008 = xor i32 %5999, 16
  %6009 = xor i32 %6000, %6008
  %6010 = lshr i32 %6009, 4
  %6011 = trunc i32 %6010 to i8
  %6012 = and i8 %6011, 1
  store i8 %6012, i8* %27, align 1
  %6013 = icmp eq i32 %6000, 0
  %6014 = zext i1 %6013 to i8
  store i8 %6014, i8* %30, align 1
  %6015 = lshr i32 %6000, 31
  %6016 = trunc i32 %6015 to i8
  store i8 %6016, i8* %33, align 1
  %6017 = lshr i32 %5999, 31
  %6018 = xor i32 %6017, 1
  %6019 = xor i32 %6015, %6017
  %6020 = add nuw nsw i32 %6019, %6018
  %6021 = icmp eq i32 %6020, 2
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %39, align 1
  %.v147 = select i1 %6013, i64 53, i64 18
  %6023 = add i64 %5991, %.v147
  %6024 = add i64 %6023, 4
  store i64 %6024, i64* %3, align 8
  %6025 = load i32, i32* %5965, align 4
  %6026 = sext i32 %6025 to i64
  store i64 %6026, i64* %RAX.i1508, align 8
  %6027 = shl nsw i64 %6026, 2
  %6028 = add i64 %6027, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %6013, label %block_.L_4017a1, label %block_40177e

block_40177e:                                     ; preds = %block_40176c
  %6029 = add i64 %6023, 12
  store i64 %6029, i64* %3, align 8
  %6030 = inttoptr i64 %6028 to i32*
  %6031 = load i32, i32* %6030, align 4
  %6032 = sext i32 %6031 to i64
  store i64 %6032, i64* %RAX.i1508, align 8
  %6033 = shl nsw i64 %6032, 2
  %6034 = add i64 %6033, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6035 = add i64 %6023, 19
  store i64 %6035, i64* %3, align 8
  %6036 = inttoptr i64 %6034 to i32*
  %6037 = load i32, i32* %6036, align 4
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RCX.i2066, align 8
  %6039 = add i64 %6023, 23
  store i64 %6039, i64* %3, align 8
  %6040 = load i32, i32* %5965, align 4
  %6041 = sext i32 %6040 to i64
  store i64 %6041, i64* %RAX.i1508, align 8
  %6042 = shl nsw i64 %6041, 2
  %6043 = add i64 %6042, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6044 = add i64 %6023, 30
  store i64 %6044, i64* %3, align 8
  %6045 = inttoptr i64 %6043 to i32*
  store i32 %6037, i32* %6045, align 4
  %6046 = load i64, i64* %3, align 8
  %6047 = add i64 %6046, 20
  store i64 %6047, i64* %3, align 8
  br label %block_.L_4017b0

block_.L_4017a1:                                  ; preds = %block_40176c
  %6048 = add i64 %6023, 15
  store i64 %6048, i64* %3, align 8
  %6049 = inttoptr i64 %6028 to i32*
  store i32 0, i32* %6049, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4017b0

block_.L_4017b0:                                  ; preds = %block_.L_4017a1, %block_40177e
  %6050 = phi i64 [ %.pre81, %block_.L_4017a1 ], [ %6047, %block_40177e ]
  %6051 = load i64, i64* %RBP.i, align 8
  %6052 = add i64 %6051, -4
  %6053 = add i64 %6050, 8
  store i64 %6053, i64* %3, align 8
  %6054 = inttoptr i64 %6052 to i32*
  %6055 = load i32, i32* %6054, align 4
  %6056 = add i32 %6055, 1
  %6057 = zext i32 %6056 to i64
  store i64 %6057, i64* %RAX.i1508, align 8
  %6058 = icmp eq i32 %6055, -1
  %6059 = icmp eq i32 %6056, 0
  %6060 = or i1 %6058, %6059
  %6061 = zext i1 %6060 to i8
  store i8 %6061, i8* %14, align 1
  %6062 = and i32 %6056, 255
  %6063 = tail call i32 @llvm.ctpop.i32(i32 %6062)
  %6064 = trunc i32 %6063 to i8
  %6065 = and i8 %6064, 1
  %6066 = xor i8 %6065, 1
  store i8 %6066, i8* %21, align 1
  %6067 = xor i32 %6055, %6056
  %6068 = lshr i32 %6067, 4
  %6069 = trunc i32 %6068 to i8
  %6070 = and i8 %6069, 1
  store i8 %6070, i8* %27, align 1
  %6071 = zext i1 %6059 to i8
  store i8 %6071, i8* %30, align 1
  %6072 = lshr i32 %6056, 31
  %6073 = trunc i32 %6072 to i8
  store i8 %6073, i8* %33, align 1
  %6074 = lshr i32 %6055, 31
  %6075 = xor i32 %6072, %6074
  %6076 = add nuw nsw i32 %6075, %6072
  %6077 = icmp eq i32 %6076, 2
  %6078 = zext i1 %6077 to i8
  store i8 %6078, i8* %39, align 1
  %6079 = add i64 %6050, 14
  store i64 %6079, i64* %3, align 8
  store i32 %6056, i32* %6054, align 4
  %6080 = load i64, i64* %3, align 8
  %6081 = add i64 %6080, -95
  store i64 %6081, i64* %3, align 8
  br label %block_.L_40175f

block_.L_4017c3:                                  ; preds = %block_.L_40175f
  %6082 = add i64 %5991, 5
  br label %block_.L_4017c8

block_.L_4017c8:                                  ; preds = %block_.L_4017c3, %block_.L_401753
  %.sink91 = phi i64 [ %6082, %block_.L_4017c3 ], [ %5960, %block_.L_401753 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4017c3 ], [ %MEMORY.48, %block_.L_401753 ]
  store i64 %.sink91, i64* %3, align 8
  %6083 = add i64 %.sink91, 117
  br label %block_.L_40183d

block_.L_4017cd:                                  ; preds = %block_.L_400a16
  %6084 = add i64 %406, 7
  store i64 %6084, i64* %3, align 8
  store i32 0, i32* %63, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4017d4

block_.L_4017d4:                                  ; preds = %block_.L_401825, %block_.L_4017cd
  %6085 = phi i64 [ %6205, %block_.L_401825 ], [ %.pre82, %block_.L_4017cd ]
  %6086 = load i64, i64* %RBP.i, align 8
  %6087 = add i64 %6086, -4
  %6088 = add i64 %6085, 7
  store i64 %6088, i64* %3, align 8
  %6089 = inttoptr i64 %6087 to i32*
  %6090 = load i32, i32* %6089, align 4
  %6091 = add i32 %6090, -255
  %6092 = icmp ult i32 %6090, 255
  %6093 = zext i1 %6092 to i8
  store i8 %6093, i8* %14, align 1
  %6094 = and i32 %6091, 255
  %6095 = tail call i32 @llvm.ctpop.i32(i32 %6094)
  %6096 = trunc i32 %6095 to i8
  %6097 = and i8 %6096, 1
  %6098 = xor i8 %6097, 1
  store i8 %6098, i8* %21, align 1
  %6099 = xor i32 %6090, 16
  %6100 = xor i32 %6099, %6091
  %6101 = lshr i32 %6100, 4
  %6102 = trunc i32 %6101 to i8
  %6103 = and i8 %6102, 1
  store i8 %6103, i8* %27, align 1
  %6104 = icmp eq i32 %6091, 0
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %30, align 1
  %6106 = lshr i32 %6091, 31
  %6107 = trunc i32 %6106 to i8
  store i8 %6107, i8* %33, align 1
  %6108 = lshr i32 %6090, 31
  %6109 = xor i32 %6106, %6108
  %6110 = add nuw nsw i32 %6109, %6108
  %6111 = icmp eq i32 %6110, 2
  %6112 = zext i1 %6111 to i8
  store i8 %6112, i8* %39, align 1
  %6113 = icmp ne i8 %6107, 0
  %6114 = xor i1 %6113, %6111
  %.v161 = select i1 %6114, i64 13, i64 100
  %6115 = add i64 %6085, %.v161
  store i64 %6115, i64* %3, align 8
  br i1 %6114, label %block_4017e1, label %block_.L_401838

block_4017e1:                                     ; preds = %block_.L_4017d4
  %6116 = add i64 %6115, 4
  store i64 %6116, i64* %3, align 8
  %6117 = load i32, i32* %6089, align 4
  %6118 = sext i32 %6117 to i64
  store i64 %6118, i64* %RAX.i1508, align 8
  %6119 = shl nsw i64 %6118, 2
  %6120 = add i64 %6119, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6121 = add i64 %6115, 12
  store i64 %6121, i64* %3, align 8
  %6122 = inttoptr i64 %6120 to i32*
  %6123 = load i32, i32* %6122, align 4
  %6124 = add i32 %6123, 1
  %6125 = icmp ne i32 %6123, -1
  %6126 = zext i1 %6125 to i8
  store i8 %6126, i8* %14, align 1
  %6127 = and i32 %6124, 255
  %6128 = tail call i32 @llvm.ctpop.i32(i32 %6127)
  %6129 = trunc i32 %6128 to i8
  %6130 = and i8 %6129, 1
  %6131 = xor i8 %6130, 1
  store i8 %6131, i8* %21, align 1
  %6132 = xor i32 %6123, 16
  %6133 = xor i32 %6124, %6132
  %6134 = lshr i32 %6133, 4
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  store i8 %6136, i8* %27, align 1
  %6137 = icmp eq i32 %6124, 0
  %6138 = zext i1 %6137 to i8
  store i8 %6138, i8* %30, align 1
  %6139 = lshr i32 %6124, 31
  %6140 = trunc i32 %6139 to i8
  store i8 %6140, i8* %33, align 1
  %6141 = lshr i32 %6123, 31
  %6142 = xor i32 %6141, 1
  %6143 = xor i32 %6139, %6141
  %6144 = add nuw nsw i32 %6143, %6142
  %6145 = icmp eq i32 %6144, 2
  %6146 = zext i1 %6145 to i8
  store i8 %6146, i8* %39, align 1
  %.v162 = select i1 %6137, i64 53, i64 18
  %6147 = add i64 %6115, %.v162
  %6148 = add i64 %6147, 4
  store i64 %6148, i64* %3, align 8
  %6149 = load i32, i32* %6089, align 4
  %6150 = sext i32 %6149 to i64
  store i64 %6150, i64* %RAX.i1508, align 8
  %6151 = shl nsw i64 %6150, 2
  %6152 = add i64 %6151, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %6137, label %block_.L_401816, label %block_4017f3

block_4017f3:                                     ; preds = %block_4017e1
  %6153 = add i64 %6147, 12
  store i64 %6153, i64* %3, align 8
  %6154 = inttoptr i64 %6152 to i32*
  %6155 = load i32, i32* %6154, align 4
  %6156 = sext i32 %6155 to i64
  store i64 %6156, i64* %RAX.i1508, align 8
  %6157 = shl nsw i64 %6156, 2
  %6158 = add i64 %6157, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6159 = add i64 %6147, 19
  store i64 %6159, i64* %3, align 8
  %6160 = inttoptr i64 %6158 to i32*
  %6161 = load i32, i32* %6160, align 4
  %6162 = zext i32 %6161 to i64
  store i64 %6162, i64* %RCX.i2066, align 8
  %6163 = add i64 %6147, 23
  store i64 %6163, i64* %3, align 8
  %6164 = load i32, i32* %6089, align 4
  %6165 = sext i32 %6164 to i64
  store i64 %6165, i64* %RAX.i1508, align 8
  %6166 = shl nsw i64 %6165, 2
  %6167 = add i64 %6166, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6168 = add i64 %6147, 30
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6167 to i32*
  store i32 %6161, i32* %6169, align 4
  %6170 = load i64, i64* %3, align 8
  %6171 = add i64 %6170, 20
  store i64 %6171, i64* %3, align 8
  br label %block_.L_401825

block_.L_401816:                                  ; preds = %block_4017e1
  %6172 = add i64 %6147, 15
  store i64 %6172, i64* %3, align 8
  %6173 = inttoptr i64 %6152 to i32*
  store i32 0, i32* %6173, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_401825

block_.L_401825:                                  ; preds = %block_.L_401816, %block_4017f3
  %6174 = phi i64 [ %.pre83, %block_.L_401816 ], [ %6171, %block_4017f3 ]
  %6175 = load i64, i64* %RBP.i, align 8
  %6176 = add i64 %6175, -4
  %6177 = add i64 %6174, 8
  store i64 %6177, i64* %3, align 8
  %6178 = inttoptr i64 %6176 to i32*
  %6179 = load i32, i32* %6178, align 4
  %6180 = add i32 %6179, 1
  %6181 = zext i32 %6180 to i64
  store i64 %6181, i64* %RAX.i1508, align 8
  %6182 = icmp eq i32 %6179, -1
  %6183 = icmp eq i32 %6180, 0
  %6184 = or i1 %6182, %6183
  %6185 = zext i1 %6184 to i8
  store i8 %6185, i8* %14, align 1
  %6186 = and i32 %6180, 255
  %6187 = tail call i32 @llvm.ctpop.i32(i32 %6186)
  %6188 = trunc i32 %6187 to i8
  %6189 = and i8 %6188, 1
  %6190 = xor i8 %6189, 1
  store i8 %6190, i8* %21, align 1
  %6191 = xor i32 %6179, %6180
  %6192 = lshr i32 %6191, 4
  %6193 = trunc i32 %6192 to i8
  %6194 = and i8 %6193, 1
  store i8 %6194, i8* %27, align 1
  %6195 = zext i1 %6183 to i8
  store i8 %6195, i8* %30, align 1
  %6196 = lshr i32 %6180, 31
  %6197 = trunc i32 %6196 to i8
  store i8 %6197, i8* %33, align 1
  %6198 = lshr i32 %6179, 31
  %6199 = xor i32 %6196, %6198
  %6200 = add nuw nsw i32 %6199, %6196
  %6201 = icmp eq i32 %6200, 2
  %6202 = zext i1 %6201 to i8
  store i8 %6202, i8* %39, align 1
  %6203 = add i64 %6174, 14
  store i64 %6203, i64* %3, align 8
  store i32 %6180, i32* %6178, align 4
  %6204 = load i64, i64* %3, align 8
  %6205 = add i64 %6204, -95
  store i64 %6205, i64* %3, align 8
  br label %block_.L_4017d4

block_.L_401838:                                  ; preds = %block_.L_4017d4
  %6206 = add i64 %6115, 5
  br label %block_.L_40183d

block_.L_40183d:                                  ; preds = %block_.L_401838, %block_.L_4017c8
  %.sink93 = phi i64 [ %6206, %block_.L_401838 ], [ %6083, %block_.L_4017c8 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.0, %block_.L_401838 ], [ %MEMORY.51, %block_.L_4017c8 ]
  %6207 = load i64, i64* %6, align 8
  %6208 = add i64 %6207, 2608
  store i64 %6208, i64* %6, align 8
  %6209 = icmp ugt i64 %6207, -2609
  %6210 = zext i1 %6209 to i8
  store i8 %6210, i8* %14, align 1
  %6211 = trunc i64 %6208 to i32
  %6212 = and i32 %6211, 255
  %6213 = tail call i32 @llvm.ctpop.i32(i32 %6212)
  %6214 = trunc i32 %6213 to i8
  %6215 = and i8 %6214, 1
  %6216 = xor i8 %6215, 1
  store i8 %6216, i8* %21, align 1
  %6217 = xor i64 %6207, 16
  %6218 = xor i64 %6217, %6208
  %6219 = lshr i64 %6218, 4
  %6220 = trunc i64 %6219 to i8
  %6221 = and i8 %6220, 1
  store i8 %6221, i8* %27, align 1
  %6222 = icmp eq i64 %6208, 0
  %6223 = zext i1 %6222 to i8
  store i8 %6223, i8* %30, align 1
  %6224 = lshr i64 %6208, 63
  %6225 = trunc i64 %6224 to i8
  store i8 %6225, i8* %33, align 1
  %6226 = lshr i64 %6207, 63
  %6227 = xor i64 %6224, %6226
  %6228 = add nuw nsw i64 %6227, %6224
  %6229 = icmp eq i64 %6228, 2
  %6230 = zext i1 %6229 to i8
  store i8 %6230, i8* %39, align 1
  %6231 = add i64 %.sink93, 8
  store i64 %6231, i64* %3, align 8
  %6232 = add i64 %6207, 2616
  %6233 = inttoptr i64 %6208 to i64*
  %6234 = load i64, i64* %6233, align 8
  store i64 %6234, i64* %RBP.i, align 8
  store i64 %6232, i64* %6, align 8
  %6235 = add i64 %.sink93, 9
  store i64 %6235, i64* %3, align 8
  %6236 = inttoptr i64 %6232 to i64*
  %6237 = load i64, i64* %6236, align 8
  store i64 %6237, i64* %3, align 8
  %6238 = add i64 %6207, 2624
  store i64 %6238, i64* %6, align 8
  ret %struct.Memory* %MEMORY.54
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

define %struct.Memory* @routine_subq__0xa30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 2608
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

define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400a16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xff__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4009ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, 1
  %11 = icmp ne i32 %9, -1
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, 16
  %21 = xor i32 %10, %20
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %9, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4009bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603080___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603080___rcx_4__type* @G_0x603080___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
  store i64 %15, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_movl_MINUS0xa84__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2692
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

define %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x5d0__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x5d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400956(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4009ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400936(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

define %struct.Memory* @routine_je_.L_4017cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5cc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x450__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400a8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x490__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1168
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x530__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x52c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x580__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x57c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400b82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1328
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1328
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400b7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400af6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0xa85__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400bb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_setg__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
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
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0xa85__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa85__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
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

define %struct.Memory* @routine_jne_.L_400bc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %7, %18
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x580__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1408
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x580__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1408
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

define %struct.Memory* @routine_jg_.L_400be5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_jle_.L_400c7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_400cdc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ca2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400da4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = add i32 %10, 1
  %12 = icmp ne i32 %10, -1
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
  %21 = xor i32 %10, 16
  %22 = xor i32 %11, %21
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
  %33 = lshr i32 %10, 31
  %34 = xor i32 %33, 1
  %35 = xor i32 %30, %33
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400d91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 255
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -256
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

define %struct.Memory* @routine_subl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl___rdi__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
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
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2704
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rdi_4__type* @G_0x603880___rdi_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa90__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____r8__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400e35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl___rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x530__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1328
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1408
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400fcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400eab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ebf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1328
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400fa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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

define %struct.Memory* @routine_je_.L_400f90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl_0x603480___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa94__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %5, %8
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x4e0__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ec6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4e0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0xa95__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400ffe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -8
  %13 = icmp ult i32 %11, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setle__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0xa95__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa95__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400ab9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401758(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401086(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40102e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4010d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2688
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40108d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4011d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401180(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0xa80__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40116d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa80__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movl__eax__MINUS0xa9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa9c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2716
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2688
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa80__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401172(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4011c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x600__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1568
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4016e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401430(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40127b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_0x603880___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40134c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401333(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401333(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401342(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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

define %struct.Memory* @routine_jge_.L_401404(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_4013f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x5d0__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x650__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4013f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401353(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x650__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4014aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401488(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401497(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40149c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401437(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4016de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401572(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40155f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x650__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x600__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul nsw i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RSI, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0xa50__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401564(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4016cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa50__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_401631(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x620__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x600__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2728
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2728
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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

define %struct.Memory* @routine_jmpq_.L_401636(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2732
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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

define %struct.Memory* @routine_movl_MINUS0xaac__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2732
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 255
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -256
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

define %struct.Memory* @routine_movl_0x603880___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, ptrtoint (%G_0x603880___rsi_4__type* @G_0x603880___rsi_4_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_0x603080___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x603080___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401753(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40174e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_40172c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40173b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401740(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4016ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4017c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_4017a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40175f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40183d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401838(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_401816(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401825(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40182a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xa30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -2609
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
