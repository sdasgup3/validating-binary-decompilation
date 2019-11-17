; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x603080___rax_4__type = type <{ [4 x i8] }>
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
  %RCX.i2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2064 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2060 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %ESI.i2054 = bitcast %union.anon* %55 to i32*
  %EDX.i2048 = bitcast %union.anon* %54 to i32*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1994 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %ECX.i1986 = bitcast %union.anon* %57 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400966

block_.L_400966:                                  ; preds = %block_.L_400a1a, %entry
  %58 = phi i64 [ %.pre, %entry ], [ %394, %block_.L_400a1a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_400a1a ]
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -4
  %61 = add i64 %58, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, -16
  %65 = icmp ult i32 %63, 16
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %14, align 1
  %67 = and i32 %64, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %21, align 1
  %72 = xor i32 %63, 16
  %73 = xor i32 %72, %64
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %27, align 1
  %77 = icmp eq i32 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %30, align 1
  %79 = lshr i32 %64, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %33, align 1
  %81 = lshr i32 %63, 31
  %82 = xor i32 %79, %81
  %83 = add nuw nsw i32 %82, %81
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %39, align 1
  %86 = icmp ne i8 %80, 0
  %87 = xor i1 %86, %84
  %.demorgan = or i1 %77, %87
  %.v263 = select i1 %.demorgan, i64 10, i64 224
  %88 = add i64 %58, %.v263
  store i64 %88, i64* %3, align 8
  br i1 %.demorgan, label %block_400970, label %block_.L_400a46

block_400970:                                     ; preds = %block_.L_400966
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = load i32, i32* %62, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %RAX.i1508, align 8
  %92 = shl nsw i64 %91, 2
  %93 = add i64 %59, -1488
  %94 = add i64 %93, %92
  %95 = add i64 %88, 15
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 7
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_400986

block_.L_400986:                                  ; preds = %block_.L_4009eb, %block_400970
  %102 = phi i64 [ %.pre156, %block_400970 ], [ %311, %block_.L_4009eb ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400970 ], [ %MEMORY.2, %block_.L_4009eb ]
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -8
  %105 = add i64 %102, 7
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -255
  %109 = icmp ult i32 %107, 255
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %14, align 1
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %21, align 1
  %116 = xor i32 %107, 16
  %117 = xor i32 %116, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %27, align 1
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %30, align 1
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %33, align 1
  %125 = lshr i32 %107, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %39, align 1
  %130 = icmp ne i8 %124, 0
  %131 = xor i1 %130, %128
  %.v303 = select i1 %131, i64 13, i64 120
  %132 = add i64 %102, %.v303
  store i64 %132, i64* %3, align 8
  br i1 %131, label %block_400993, label %block_.L_4009fe

block_400993:                                     ; preds = %block_.L_400986
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = load i32, i32* %106, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %RAX.i1508, align 8
  %136 = shl nsw i64 %135, 2
  %137 = add i64 %136, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %138 = add i64 %132, 12
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, 1
  %142 = icmp ne i32 %140, -1
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %14, align 1
  %144 = and i32 %141, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i32 %140, 16
  %150 = xor i32 %149, %141
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %27, align 1
  %154 = icmp eq i32 %141, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %30, align 1
  %156 = lshr i32 %141, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %33, align 1
  %158 = lshr i32 %140, 31
  %159 = xor i32 %158, 1
  %160 = xor i32 %156, %158
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1
  %.v305 = select i1 %154, i64 88, i64 18
  %164 = add i64 %132, %.v305
  store i64 %164, i64* %3, align 8
  br i1 %154, label %block_.L_4009eb, label %block_4009a5

block_4009a5:                                     ; preds = %block_400993
  store i64 255, i64* %RAX.i1508, align 8
  %165 = add i64 %164, 9
  store i64 %165, i64* %3, align 8
  %166 = load i32, i32* %106, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %RCX.i2066, align 8
  %168 = shl nsw i64 %167, 2
  %169 = add i64 %168, ptrtoint (%G_0x603080___rcx_4__type* @G_0x603080___rcx_4_ to i64)
  %170 = add i64 %164, 16
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RDX.i2064, align 8
  %174 = add i64 %103, -4
  %175 = add i64 %164, 19
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RSI.i2060, align 8
  %179 = add i64 %164, 23
  store i64 %179, i64* %3, align 8
  %180 = load i32, i32* %106, align 4
  %181 = sext i32 %177 to i64
  %182 = sext i32 %180 to i64
  %183 = mul nsw i64 %182, %181
  %184 = and i64 %183, 4294967295
  store i64 %184, i64* %RSI.i2060, align 8
  %185 = trunc i64 %183 to i32
  %186 = add i32 %185, %172
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RDX.i2064, align 8
  %188 = icmp ult i32 %186, %172
  %189 = icmp ult i32 %186, %185
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i64 %183, %173
  %198 = trunc i64 %197 to i32
  %199 = xor i32 %198, %186
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %27, align 1
  %203 = icmp eq i32 %186, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %30, align 1
  %205 = lshr i32 %186, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %33, align 1
  %207 = lshr i32 %172, 31
  %208 = lshr i32 %185, 31
  %209 = xor i32 %205, %207
  %210 = xor i32 %205, %208
  %211 = add nuw nsw i32 %209, %210
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %39, align 1
  %214 = add i64 %103, -2692
  %215 = add i64 %164, 31
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  store i32 255, i32* %216, align 4
  %217 = load i32, i32* %EDX.i2048, align 4
  %218 = zext i32 %217 to i64
  %219 = load i64, i64* %3, align 8
  store i64 %218, i64* %RAX.i1508, align 8
  %220 = sext i32 %217 to i64
  %221 = lshr i64 %220, 32
  store i64 %221, i64* %56, align 8
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -2692
  %224 = add i64 %219, 9
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RSI.i2060, align 8
  %228 = add i64 %219, 11
  store i64 %228, i64* %3, align 8
  %229 = sext i32 %226 to i64
  %230 = shl nuw i64 %221, 32
  %231 = or i64 %230, %218
  %232 = sdiv i64 %231, %229
  %233 = shl i64 %232, 32
  %234 = ashr exact i64 %233, 32
  %235 = icmp eq i64 %232, %234
  br i1 %235, label %238, label %236

; <label>:236:                                    ; preds = %block_4009a5
  %237 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %228, %struct.Memory* %MEMORY.1)
  %.pre159 = load i32, i32* %EDX.i2048, align 4
  %.pre160 = load i64, i64* %3, align 8
  %.pre161 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit2039

; <label>:238:                                    ; preds = %block_4009a5
  %239 = srem i64 %231, %229
  %240 = and i64 %232, 4294967295
  store i64 %240, i64* %RAX.i1508, align 8
  %241 = and i64 %239, 4294967295
  store i64 %241, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %242 = trunc i64 %239 to i32
  br label %routine_idivl__esi.exit2039

routine_idivl__esi.exit2039:                      ; preds = %238, %236
  %243 = phi i64 [ %.pre161, %236 ], [ %222, %238 ]
  %244 = phi i64 [ %.pre160, %236 ], [ %228, %238 ]
  %245 = phi i32 [ %.pre159, %236 ], [ %242, %238 ]
  %246 = phi %struct.Memory* [ %237, %236 ], [ %MEMORY.1, %238 ]
  %247 = sext i32 %245 to i64
  store i64 %247, i64* %RCX.i2066, align 8
  %248 = shl nsw i64 %247, 2
  %249 = add i64 %248, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %250 = add i64 %244, 10
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDX.i2064, align 8
  %254 = add i64 %243, -4
  %255 = add i64 %244, 14
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RCX.i2066, align 8
  %259 = shl nsw i64 %258, 2
  %260 = add nsw i64 %259, -1488
  %261 = add i64 %260, %243
  %262 = add i64 %244, 21
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = xor i32 %264, %252
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %267 = and i32 %265, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = icmp eq i32 %265, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %30, align 1
  %274 = lshr i32 %265, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %276 = add i64 %243, -1488
  %277 = add i64 %276, %259
  %278 = add i64 %244, 28
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  store i32 %265, i32* %279, align 4
  %.pre162 = load i64, i64* %3, align 8
  %.pre163 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009eb

block_.L_4009eb:                                  ; preds = %routine_idivl__esi.exit2039, %block_400993
  %280 = phi i64 [ %103, %block_400993 ], [ %.pre163, %routine_idivl__esi.exit2039 ]
  %281 = phi i64 [ %164, %block_400993 ], [ %.pre162, %routine_idivl__esi.exit2039 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400993 ], [ %246, %routine_idivl__esi.exit2039 ]
  %282 = add i64 %280, -8
  %283 = add i64 %281, 8
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i1508, align 8
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %14, align 1
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %21, align 1
  %297 = xor i32 %286, %285
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %27, align 1
  %301 = zext i1 %289 to i8
  store i8 %301, i8* %30, align 1
  %302 = lshr i32 %286, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %33, align 1
  %304 = lshr i32 %285, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %302
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %39, align 1
  %309 = add i64 %281, 14
  store i64 %309, i64* %3, align 8
  store i32 %286, i32* %284, align 4
  %310 = load i64, i64* %3, align 8
  %311 = add i64 %310, -115
  store i64 %311, i64* %3, align 8
  br label %block_.L_400986

block_.L_4009fe:                                  ; preds = %block_.L_400986
  %312 = add i64 %103, -4
  %313 = add i64 %132, 4
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %RAX.i1508, align 8
  %317 = shl nsw i64 %316, 2
  %318 = add i64 %103, -1488
  %319 = add i64 %318, %317
  %320 = add i64 %132, 12
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  store i8 0, i8* %14, align 1
  %323 = and i32 %322, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %328 = icmp eq i32 %322, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %30, align 1
  %330 = lshr i32 %322, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v304 = select i1 %328, i64 28, i64 18
  %332 = add i64 %132, %.v304
  store i64 %332, i64* %3, align 8
  br i1 %328, label %block_.L_400a1a, label %block_400a10

block_400a10:                                     ; preds = %block_.L_4009fe
  %333 = add i64 %103, -1496
  %334 = add i64 %332, 10
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 1, i32* %335, align 4
  %.pre157 = load i64, i64* %RBP.i, align 8
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_400a1a

block_.L_400a1a:                                  ; preds = %block_400a10, %block_.L_4009fe
  %336 = phi i64 [ %.pre158, %block_400a10 ], [ %332, %block_.L_4009fe ]
  %337 = phi i64 [ %.pre157, %block_400a10 ], [ %103, %block_.L_4009fe ]
  %338 = add i64 %337, -4
  %339 = add i64 %336, 4
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %RAX.i1508, align 8
  %343 = shl nsw i64 %342, 2
  %344 = add i64 %337, -1488
  %345 = add i64 %344, %343
  %346 = add i64 %336, 12
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %RAX.i1508, align 8
  %350 = shl nsw i64 %349, 2
  %351 = add i64 %350, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %352 = add i64 %336, 19
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RCX.i1994, align 8
  %356 = add i64 %336, 23
  store i64 %356, i64* %3, align 8
  %357 = load i32, i32* %340, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %RAX.i1508, align 8
  %359 = shl nsw i64 %358, 2
  %360 = add i64 %344, %359
  %361 = add i64 %336, 30
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  store i32 %354, i32* %362, align 4
  %363 = load i64, i64* %RBP.i, align 8
  %364 = add i64 %363, -4
  %365 = load i64, i64* %3, align 8
  %366 = add i64 %365, 3
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, 1
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i1508, align 8
  %371 = icmp eq i32 %368, -1
  %372 = icmp eq i32 %369, 0
  %373 = or i1 %371, %372
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %14, align 1
  %375 = and i32 %369, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %21, align 1
  %380 = xor i32 %369, %368
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %27, align 1
  %384 = zext i1 %372 to i8
  store i8 %384, i8* %30, align 1
  %385 = lshr i32 %369, 31
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %33, align 1
  %387 = lshr i32 %368, 31
  %388 = xor i32 %385, %387
  %389 = add nuw nsw i32 %388, %385
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %39, align 1
  %392 = add i64 %365, 9
  store i64 %392, i64* %3, align 8
  store i32 %369, i32* %367, align 4
  %393 = load i64, i64* %3, align 8
  %394 = add i64 %393, -219
  store i64 %394, i64* %3, align 8
  br label %block_.L_400966

block_.L_400a46:                                  ; preds = %block_.L_400966
  %395 = add i64 %59, -1496
  %396 = add i64 %88, 7
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  store i8 0, i8* %14, align 1
  %399 = and i32 %398, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %404 = icmp eq i32 %398, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %30, align 1
  %406 = lshr i32 %398, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v264 = select i1 %404, i64 3511, i64 13
  %408 = add i64 %88, %.v264
  store i64 %408, i64* %3, align 8
  br i1 %404, label %block_.L_4017fd, label %block_400a53

block_400a53:                                     ; preds = %block_.L_400a46
  %409 = add i64 %59, -1248
  %410 = add i64 %408, 10
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  store i32 0, i32* %411, align 4
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -1484
  %414 = load i64, i64* %3, align 8
  %415 = add i64 %414, 6
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX.i1508, align 8
  %419 = add i64 %412, -1244
  %420 = add i64 %414, 12
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  store i32 %417, i32* %421, align 4
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -1168
  %424 = load i64, i64* %3, align 8
  %425 = add i64 %424, 10
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %423 to i32*
  store i32 0, i32* %426, align 4
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -1104
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, 10
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %428 to i32*
  store i32 1, i32* %431, align 4
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -4
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 7
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %433 to i32*
  store i32 1, i32* %436, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_400a84

block_.L_400a84:                                  ; preds = %block_400a8e, %block_400a53
  %437 = phi i64 [ %519, %block_400a8e ], [ %.pre164, %block_400a53 ]
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -4
  %440 = add i64 %437, 4
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, -16
  %444 = icmp ult i32 %442, 16
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = and i32 %443, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i32 %442, 16
  %452 = xor i32 %451, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %27, align 1
  %456 = icmp eq i32 %443, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %30, align 1
  %458 = lshr i32 %443, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %33, align 1
  %460 = lshr i32 %442, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %39, align 1
  %465 = icmp ne i8 %459, 0
  %466 = xor i1 %465, %463
  %.v265 = select i1 %466, i64 10, i64 54
  %467 = add i64 %437, %.v265
  store i64 %467, i64* %3, align 8
  br i1 %466, label %block_400a8e, label %block_.L_400aba

block_400a8e:                                     ; preds = %block_.L_400a84
  %468 = add i64 %467, 4
  store i64 %468, i64* %3, align 8
  %469 = load i32, i32* %441, align 4
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RAX.i1508, align 8
  %471 = shl nsw i64 %470, 2
  %472 = add i64 %438, -1168
  %473 = add i64 %472, %471
  %474 = add i64 %467, 15
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  store i32 -1, i32* %475, align 4
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -4
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  store i64 %482, i64* %RAX.i1508, align 8
  %483 = shl nsw i64 %482, 2
  %484 = add i64 %476, -1104
  %485 = add i64 %484, %483
  %486 = add i64 %478, 15
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  store i32 0, i32* %487, align 4
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -4
  %490 = load i64, i64* %3, align 8
  %491 = add i64 %490, 3
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, 1
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX.i1508, align 8
  %496 = icmp eq i32 %493, -1
  %497 = icmp eq i32 %494, 0
  %498 = or i1 %496, %497
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %14, align 1
  %500 = and i32 %494, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = xor i32 %494, %493
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %27, align 1
  %509 = zext i1 %497 to i8
  store i8 %509, i8* %30, align 1
  %510 = lshr i32 %494, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %33, align 1
  %512 = lshr i32 %493, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %510
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %39, align 1
  %517 = add i64 %490, 9
  store i64 %517, i64* %3, align 8
  store i32 %494, i32* %492, align 4
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, -49
  store i64 %519, i64* %3, align 8
  br label %block_.L_400a84

block_.L_400aba:                                  ; preds = %block_.L_400a84
  %520 = add i64 %438, -1328
  %521 = add i64 %467, 10
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  store i32 0, i32* %522, align 4
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -1324
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 10
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %524 to i32*
  store i32 0, i32* %527, align 4
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -1408
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 10
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %529 to i32*
  store i32 -1, i32* %532, align 4
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -1404
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 10
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %534 to i32*
  store i32 0, i32* %537, align 4
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -12
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 7
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i32*
  store i32 0, i32* %542, align 4
  %AL.i1776 = bitcast %union.anon* %53 to i8*
  %CL.i1777 = bitcast %union.anon* %57 to i8*
  %RDI.i1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8.i1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %RDI.i1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSI.i1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %DL.i1081 = bitcast %union.anon* %54 to i8*
  %.pre165 = load i64, i64* %RBP.i, align 8
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_400ae9

block_.L_400ae9:                                  ; preds = %block_.L_40102e, %block_.L_400aba
  %544 = phi i64 [ %.pre166, %block_.L_400aba ], [ %3182, %block_.L_40102e ]
  %545 = phi i64 [ %.pre165, %block_.L_400aba ], [ %3170, %block_.L_40102e ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400aba ], [ %MEMORY.21, %block_.L_40102e ]
  %546 = add i64 %545, -12
  %547 = add i64 %544, 3
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = add i32 %549, 1
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RAX.i1508, align 8
  %552 = icmp eq i32 %549, -1
  %553 = icmp eq i32 %550, 0
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %14, align 1
  %556 = and i32 %550, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  %561 = xor i32 %550, %549
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %27, align 1
  %565 = zext i1 %553 to i8
  store i8 %565, i8* %30, align 1
  %566 = lshr i32 %550, 31
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %33, align 1
  %568 = lshr i32 %549, 31
  %569 = xor i32 %566, %568
  %570 = add nuw nsw i32 %569, %566
  %571 = icmp eq i32 %570, 2
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %39, align 1
  %573 = add i64 %544, 9
  store i64 %573, i64* %3, align 8
  store i32 %550, i32* %548, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -12
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RCX.i1994, align 8
  %581 = shl nsw i64 %580, 2
  %582 = add i64 %574, -1248
  %583 = add i64 %582, %581
  %584 = add i64 %576, 12
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %586, 1
  %588 = icmp ne i32 %586, -1
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %14, align 1
  %590 = and i32 %587, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  %595 = xor i32 %586, 16
  %596 = xor i32 %595, %587
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %27, align 1
  %600 = icmp eq i32 %587, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %30, align 1
  %602 = lshr i32 %587, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %33, align 1
  %604 = lshr i32 %586, 31
  %605 = xor i32 %604, 1
  %606 = xor i32 %602, %604
  %607 = add nuw nsw i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %39, align 1
  %.v266 = select i1 %600, i64 18, i64 192
  %610 = add i64 %576, %.v266
  store i64 %610, i64* %3, align 8
  br i1 %600, label %block_400b04, label %block_.L_400bb2

block_400b04:                                     ; preds = %block_.L_400ae9
  %611 = add i64 %610, 4
  store i64 %611, i64* %3, align 8
  %612 = load i32, i32* %578, align 4
  %613 = sext i32 %612 to i64
  store i64 %613, i64* %RAX.i1508, align 8
  %614 = shl nsw i64 %613, 2
  %615 = add i64 %574, -1328
  %616 = add i64 %615, %614
  %617 = add i64 %610, 11
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i1994, align 8
  %621 = add i64 %610, 14
  store i64 %621, i64* %3, align 8
  %622 = load i32, i32* %578, align 4
  %623 = add i32 %622, 1
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i2064, align 8
  %625 = icmp eq i32 %622, -1
  %626 = icmp eq i32 %623, 0
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %14, align 1
  %629 = and i32 %623, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %21, align 1
  %634 = xor i32 %623, %622
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %27, align 1
  %638 = zext i1 %626 to i8
  store i8 %638, i8* %30, align 1
  %639 = lshr i32 %623, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %33, align 1
  %641 = lshr i32 %622, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %639
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %39, align 1
  %646 = sext i32 %623 to i64
  store i64 %646, i64* %RAX.i1508, align 8
  %647 = shl nsw i64 %646, 2
  %648 = add nsw i64 %647, -1328
  %649 = add i64 %648, %574
  %650 = add i64 %610, 27
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  store i32 %619, i32* %651, align 4
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -4
  %654 = load i64, i64* %3, align 8
  %655 = add i64 %654, 7
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %653 to i32*
  store i32 0, i32* %656, align 4
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_400b26

block_.L_400b26:                                  ; preds = %block_400b3a, %block_400b04
  %657 = phi i64 [ %912, %block_400b3a ], [ %.pre167, %block_400b04 ]
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -4
  %660 = add i64 %657, 3
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i1508, align 8
  %664 = add i64 %658, -12
  %665 = add i64 %657, 7
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  store i64 %668, i64* %RCX.i1994, align 8
  %669 = shl nsw i64 %668, 2
  %670 = add nsw i64 %669, -1328
  %671 = add i64 %670, %658
  %672 = add i64 %657, 14
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = sub i32 %662, %674
  %676 = icmp ult i32 %662, %674
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = and i32 %675, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i32 %674, %662
  %684 = xor i32 %683, %675
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %27, align 1
  %688 = icmp eq i32 %675, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %30, align 1
  %690 = lshr i32 %675, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %33, align 1
  %692 = lshr i32 %662, 31
  %693 = lshr i32 %674, 31
  %694 = xor i32 %693, %692
  %695 = xor i32 %690, %692
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %39, align 1
  %699 = icmp ne i8 %691, 0
  %700 = xor i1 %699, %697
  %.demorgan240 = or i1 %688, %700
  %.v302 = select i1 %.demorgan240, i64 20, i64 135
  %701 = add i64 %657, %.v302
  store i64 %701, i64* %3, align 8
  br i1 %.demorgan240, label %block_400b3a, label %block_.L_400bad

block_400b3a:                                     ; preds = %block_.L_400b26
  %702 = add i64 %658, -1168
  store i64 %702, i64* %RAX.i1508, align 8
  %703 = add i64 %701, 11
  store i64 %703, i64* %3, align 8
  %704 = load i32, i32* %666, align 4
  %705 = sext i32 %704 to i64
  %706 = shl nsw i64 %705, 6
  store i64 %706, i64* %RCX.i1994, align 8
  %707 = add i64 %706, %702
  store i64 %707, i64* %RDX.i2064, align 8
  %708 = icmp ult i64 %707, %702
  %709 = icmp ult i64 %707, %706
  %710 = or i1 %708, %709
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %14, align 1
  %712 = trunc i64 %707 to i32
  %713 = and i32 %712, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %21, align 1
  %718 = xor i64 %702, %707
  %719 = lshr i64 %718, 4
  %720 = trunc i64 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %27, align 1
  %722 = icmp eq i64 %707, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %30, align 1
  %724 = lshr i64 %707, 63
  %725 = trunc i64 %724 to i8
  store i8 %725, i8* %33, align 1
  %726 = lshr i64 %702, 63
  %727 = lshr i64 %705, 57
  %728 = and i64 %727, 1
  %729 = xor i64 %724, %726
  %730 = xor i64 %724, %728
  %731 = add nuw nsw i64 %729, %730
  %732 = icmp eq i64 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %39, align 1
  %734 = add i64 %701, 25
  store i64 %734, i64* %3, align 8
  %735 = load i32, i32* %661, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RCX.i1994, align 8
  %737 = shl nsw i64 %736, 2
  %738 = add i64 %737, %707
  %739 = add i64 %701, 28
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RSI.i2060, align 8
  %743 = add i64 %701, 31
  store i64 %743, i64* %3, align 8
  %744 = load i32, i32* %666, align 4
  %745 = add i32 %744, 1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RDI.i1421, align 8
  %747 = sext i32 %745 to i64
  %748 = shl nsw i64 %747, 6
  store i64 %748, i64* %RCX.i1994, align 8
  %749 = load i64, i64* %RAX.i1508, align 8
  %750 = add i64 %748, %749
  store i64 %750, i64* %RDX.i2064, align 8
  %751 = icmp ult i64 %750, %749
  %752 = icmp ult i64 %750, %748
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %14, align 1
  %755 = trunc i64 %750 to i32
  %756 = and i32 %755, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i64 %749, %750
  %762 = lshr i64 %761, 4
  %763 = trunc i64 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = icmp eq i64 %750, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %30, align 1
  %767 = lshr i64 %750, 63
  %768 = trunc i64 %767 to i8
  store i8 %768, i8* %33, align 1
  %769 = lshr i64 %749, 63
  %770 = lshr i64 %747, 57
  %771 = and i64 %770, 1
  %772 = xor i64 %767, %769
  %773 = xor i64 %767, %771
  %774 = add nuw nsw i64 %772, %773
  %775 = icmp eq i64 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %39, align 1
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -4
  %779 = add i64 %701, 51
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = sext i32 %781 to i64
  store i64 %782, i64* %RCX.i1994, align 8
  %783 = shl nsw i64 %782, 2
  %784 = add i64 %783, %750
  %785 = load i32, i32* %ESI.i2054, align 4
  %786 = add i64 %701, 54
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %784 to i32*
  store i32 %785, i32* %787, align 4
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -12
  %790 = load i64, i64* %3, align 8
  %791 = add i64 %790, 4
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %789 to i32*
  %793 = load i32, i32* %792, align 4
  %794 = sext i32 %793 to i64
  %795 = shl nsw i64 %794, 6
  store i64 %795, i64* %RCX.i1994, align 8
  %796 = load i64, i64* %RAX.i1508, align 8
  %797 = add i64 %795, %796
  store i64 %797, i64* %RDX.i2064, align 8
  %798 = icmp ult i64 %797, %796
  %799 = icmp ult i64 %797, %795
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %14, align 1
  %802 = trunc i64 %797 to i32
  %803 = and i32 %802, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %21, align 1
  %808 = xor i64 %796, %797
  %809 = lshr i64 %808, 4
  %810 = trunc i64 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %27, align 1
  %812 = icmp eq i64 %797, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %30, align 1
  %814 = lshr i64 %797, 63
  %815 = trunc i64 %814 to i8
  store i8 %815, i8* %33, align 1
  %816 = lshr i64 %796, 63
  %817 = lshr i64 %794, 57
  %818 = and i64 %817, 1
  %819 = xor i64 %814, %816
  %820 = xor i64 %814, %818
  %821 = add nuw nsw i64 %819, %820
  %822 = icmp eq i64 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %39, align 1
  %824 = add i64 %788, -4
  %825 = add i64 %790, 18
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  store i64 %828, i64* %RCX.i1994, align 8
  %829 = shl nsw i64 %828, 2
  %830 = add i64 %829, %797
  %831 = add i64 %790, 22
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX.i1994, align 8
  %835 = shl nsw i64 %834, 2
  %836 = add i64 %835, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %837 = add i64 %790, 29
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RSI.i2060, align 8
  %841 = add i64 %790, 33
  store i64 %841, i64* %3, align 8
  %842 = load i32, i32* %792, align 4
  %843 = sext i32 %842 to i64
  %844 = shl nsw i64 %843, 6
  store i64 %844, i64* %RCX.i1994, align 8
  %845 = add i64 %844, %796
  store i64 %845, i64* %RAX.i1508, align 8
  %846 = icmp ult i64 %845, %796
  %847 = icmp ult i64 %845, %844
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %14, align 1
  %850 = trunc i64 %845 to i32
  %851 = and i32 %850, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i64 %796, %845
  %857 = lshr i64 %856, 4
  %858 = trunc i64 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %27, align 1
  %860 = icmp eq i64 %845, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %30, align 1
  %862 = lshr i64 %845, 63
  %863 = trunc i64 %862 to i8
  store i8 %863, i8* %33, align 1
  %864 = lshr i64 %843, 57
  %865 = and i64 %864, 1
  %866 = xor i64 %862, %816
  %867 = xor i64 %862, %865
  %868 = add nuw nsw i64 %866, %867
  %869 = icmp eq i64 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %39, align 1
  %871 = load i64, i64* %RBP.i, align 8
  %872 = add i64 %871, -4
  %873 = add i64 %790, 44
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sext i32 %875 to i64
  store i64 %876, i64* %RCX.i1994, align 8
  %877 = shl nsw i64 %876, 2
  %878 = add i64 %877, %845
  %879 = add i64 %790, 47
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  store i32 %839, i32* %880, align 4
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -4
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, 3
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = add i32 %886, 1
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i1508, align 8
  %889 = icmp eq i32 %886, -1
  %890 = icmp eq i32 %887, 0
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %14, align 1
  %893 = and i32 %887, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %21, align 1
  %898 = xor i32 %887, %886
  %899 = lshr i32 %898, 4
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %27, align 1
  %902 = zext i1 %890 to i8
  store i8 %902, i8* %30, align 1
  %903 = lshr i32 %887, 31
  %904 = trunc i32 %903 to i8
  store i8 %904, i8* %33, align 1
  %905 = lshr i32 %886, 31
  %906 = xor i32 %903, %905
  %907 = add nuw nsw i32 %906, %903
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %39, align 1
  %910 = add i64 %883, 9
  store i64 %910, i64* %3, align 8
  store i32 %887, i32* %885, align 4
  %911 = load i64, i64* %3, align 8
  %912 = add i64 %911, -130
  store i64 %912, i64* %3, align 8
  br label %block_.L_400b26

block_.L_400bad:                                  ; preds = %block_.L_400b26
  %913 = add i64 %701, 701
  br label %block_.L_400e6a

block_.L_400bb2:                                  ; preds = %block_.L_400ae9
  %914 = add i64 %610, 3
  store i64 %914, i64* %3, align 8
  %915 = load i32, i32* %578, align 4
  %916 = add i32 %915, -1
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RAX.i1508, align 8
  %918 = icmp eq i32 %915, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %14, align 1
  %920 = and i32 %916, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %21, align 1
  %925 = xor i32 %916, %915
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %27, align 1
  %929 = icmp eq i32 %916, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %30, align 1
  %931 = lshr i32 %916, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %33, align 1
  %933 = lshr i32 %915, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %933
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %39, align 1
  %938 = add i64 %574, -16
  %939 = add i64 %610, 9
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  store i32 %916, i32* %940, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_400bbb

block_.L_400bbb:                                  ; preds = %block_.L_400bf7, %block_.L_400bb2
  %941 = phi i64 [ %1066, %block_.L_400bf7 ], [ %.pre168, %block_.L_400bb2 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -16
  %944 = add i64 %941, 8
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RDX.i2064, align 8
  %948 = shl nsw i64 %947, 2
  %949 = add i64 %942, -1248
  %950 = add i64 %949, %948
  %951 = add i64 %941, 16
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = add i32 %953, 1
  %955 = icmp ne i32 %953, -1
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %954, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i32 %953, 16
  %963 = xor i32 %962, %954
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %27, align 1
  %967 = icmp eq i32 %954, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %30, align 1
  %969 = lshr i32 %954, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %33, align 1
  %971 = lshr i32 %953, 31
  %972 = xor i32 %971, 1
  %973 = xor i32 %969, %971
  %974 = add nuw nsw i32 %973, %972
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %39, align 1
  %977 = add i64 %942, -2693
  %978 = add i64 %941, 22
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i8*
  store i8 0, i8* %979, align 1
  %980 = load i64, i64* %3, align 8
  %981 = add i64 %980, 19
  %982 = add i64 %980, 6
  %983 = load i8, i8* %30, align 1
  %984 = icmp eq i8 %983, 0
  %985 = select i1 %984, i64 %981, i64 %982
  store i64 %985, i64* %3, align 8
  br i1 %984, label %block_.L_400be4, label %block_400bd7

block_400bd7:                                     ; preds = %block_.L_400bbb
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -16
  %988 = add i64 %985, 4
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  store i8 0, i8* %14, align 1
  %991 = and i32 %990, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %996 = icmp eq i32 %990, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %30, align 1
  %998 = lshr i32 %990, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1000 = xor i1 %996, true
  %1001 = icmp eq i8 %999, 0
  %1002 = and i1 %1001, %1000
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %AL.i1776, align 1
  %1004 = add i64 %986, -2693
  %1005 = add i64 %985, 13
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i8*
  store i8 %1003, i8* %1006, align 1
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_400be4

block_.L_400be4:                                  ; preds = %block_400bd7, %block_.L_400bbb
  %1007 = phi i64 [ %.pre169, %block_400bd7 ], [ %981, %block_.L_400bbb ]
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -2693
  %1010 = add i64 %1007, 6
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i8*
  %1012 = load i8, i8* %1011, align 1
  store i8 %1012, i8* %AL.i1776, align 1
  %1013 = and i8 %1012, 1
  store i8 0, i8* %14, align 1
  %1014 = zext i8 %1013 to i32
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  %1018 = xor i8 %1013, 1
  store i8 %1018, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1019 = icmp eq i8 %1018, 0
  %.v258 = select i1 %1019, i64 19, i64 14
  %1020 = add i64 %1007, %.v258
  store i64 %1020, i64* %3, align 8
  %1021 = add i64 %1008, -16
  br i1 %1019, label %block_.L_400bf7, label %block_400bf2

block_400bf2:                                     ; preds = %block_.L_400be4
  %1022 = add i64 %1020, 23
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  store i8 0, i8* %14, align 1
  %1025 = and i32 %1024, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1030 = icmp eq i32 %1024, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %30, align 1
  %1032 = lshr i32 %1024, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1034 = icmp ne i8 %1033, 0
  %1035 = or i1 %1030, %1034
  %.v267 = select i1 %1035, i64 116, i64 29
  %1036 = add i64 %1020, %.v267
  store i64 %1036, i64* %3, align 8
  br i1 %1035, label %block_.L_400c66, label %block_400c0f

block_.L_400bf7:                                  ; preds = %block_.L_400be4
  %1037 = add i64 %1020, 3
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1021 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = add i32 %1039, -1
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i1508, align 8
  %1042 = icmp ne i32 %1039, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %14, align 1
  %1044 = and i32 %1040, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  %1049 = xor i32 %1039, 16
  %1050 = xor i32 %1049, %1040
  %1051 = lshr i32 %1050, 4
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %27, align 1
  %1054 = icmp eq i32 %1040, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %30, align 1
  %1056 = lshr i32 %1040, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %33, align 1
  %1058 = lshr i32 %1039, 31
  %1059 = xor i32 %1056, %1058
  %1060 = xor i32 %1056, 1
  %1061 = add nuw nsw i32 %1059, %1060
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %39, align 1
  %1064 = add i64 %1020, 9
  store i64 %1064, i64* %3, align 8
  store i32 %1040, i32* %1038, align 4
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, -69
  store i64 %1066, i64* %3, align 8
  br label %block_.L_400bbb

block_400c0f:                                     ; preds = %block_400bf2
  %1067 = add i64 %1036, 3
  store i64 %1067, i64* %3, align 8
  %1068 = load i32, i32* %1023, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i1508, align 8
  %1070 = add i64 %1008, -8
  %1071 = add i64 %1036, 6
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  store i32 %1068, i32* %1072, align 4
  %.pre170 = load i64, i64* %RBP.i, align 8
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_400c15

block_.L_400c15:                                  ; preds = %block_.L_400c52, %block_400c0f
  %1073 = phi i64 [ %1211, %block_.L_400c52 ], [ %.pre171, %block_400c0f ]
  %1074 = phi i64 [ %1193, %block_.L_400c52 ], [ %.pre170, %block_400c0f ]
  %1075 = add i64 %1074, -8
  %1076 = add i64 %1073, 3
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = add i32 %1078, -1
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i1508, align 8
  %1081 = icmp ne i32 %1078, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %14, align 1
  %1083 = and i32 %1079, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  %1088 = xor i32 %1078, 16
  %1089 = xor i32 %1088, %1079
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %27, align 1
  %1093 = icmp eq i32 %1079, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %30, align 1
  %1095 = lshr i32 %1079, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %33, align 1
  %1097 = lshr i32 %1078, 31
  %1098 = xor i32 %1095, %1097
  %1099 = xor i32 %1095, 1
  %1100 = add nuw nsw i32 %1098, %1099
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %39, align 1
  %1103 = add i64 %1073, 9
  store i64 %1103, i64* %3, align 8
  store i32 %1079, i32* %1077, align 4
  %1104 = load i64, i64* %RBP.i, align 8
  %1105 = add i64 %1104, -8
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1105 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = sext i32 %1109 to i64
  store i64 %1110, i64* %RCX.i1994, align 8
  %1111 = shl nsw i64 %1110, 2
  %1112 = add i64 %1104, -1248
  %1113 = add i64 %1112, %1111
  %1114 = add i64 %1106, 12
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = add i32 %1116, 1
  %1118 = icmp ne i32 %1116, -1
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %14, align 1
  %1120 = and i32 %1117, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %21, align 1
  %1125 = xor i32 %1116, 16
  %1126 = xor i32 %1125, %1117
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %27, align 1
  %1130 = icmp eq i32 %1117, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %30, align 1
  %1132 = lshr i32 %1117, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %33, align 1
  %1134 = lshr i32 %1116, 31
  %1135 = xor i32 %1134, 1
  %1136 = xor i32 %1132, %1134
  %1137 = add nuw nsw i32 %1136, %1135
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %39, align 1
  %.v268 = select i1 %1130, i64 52, i64 18
  %1140 = add i64 %1106, %.v268
  store i64 %1140, i64* %3, align 8
  br i1 %1130, label %block_.L_400c52, label %block_400c30

block_400c30:                                     ; preds = %block_.L_400c15
  %1141 = add i64 %1104, -16
  %1142 = add i64 %1140, 4
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  store i64 %1145, i64* %RAX.i1508, align 8
  %1146 = shl nsw i64 %1145, 2
  %1147 = add i64 %1104, -1408
  %1148 = add i64 %1147, %1146
  %1149 = add i64 %1140, 11
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = zext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i1994, align 8
  %1153 = add i64 %1140, 15
  store i64 %1153, i64* %3, align 8
  %1154 = load i32, i32* %1108, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i1508, align 8
  %1156 = shl nsw i64 %1155, 2
  %1157 = add nsw i64 %1156, -1408
  %1158 = add i64 %1157, %1104
  %1159 = add i64 %1140, 22
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sub i32 %1151, %1161
  %1163 = icmp ult i32 %1151, %1161
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %14, align 1
  %1165 = and i32 %1162, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %21, align 1
  %1170 = xor i32 %1161, %1151
  %1171 = xor i32 %1170, %1162
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %27, align 1
  %1175 = icmp eq i32 %1162, 0
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %30, align 1
  %1177 = lshr i32 %1162, 31
  %1178 = trunc i32 %1177 to i8
  store i8 %1178, i8* %33, align 1
  %1179 = lshr i32 %1151, 31
  %1180 = lshr i32 %1161, 31
  %1181 = xor i32 %1180, %1179
  %1182 = xor i32 %1177, %1179
  %1183 = add nuw nsw i32 %1182, %1181
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %39, align 1
  %1186 = icmp ne i8 %1178, 0
  %1187 = xor i1 %1186, %1184
  %.v269 = select i1 %1187, i64 28, i64 34
  %1188 = add i64 %1140, %.v269
  store i64 %1188, i64* %3, align 8
  br i1 %1187, label %block_400c4c, label %block_.L_400c52

block_400c4c:                                     ; preds = %block_400c30
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %3, align 8
  %1190 = load i32, i32* %1108, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RAX.i1508, align 8
  %1192 = add i64 %1188, 6
  store i64 %1192, i64* %3, align 8
  store i32 %1190, i32* %1143, align 4
  %.pre172 = load i64, i64* %3, align 8
  %.pre173 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400c52

block_.L_400c52:                                  ; preds = %block_400c30, %block_400c4c, %block_.L_400c15
  %1193 = phi i64 [ %1104, %block_400c30 ], [ %.pre173, %block_400c4c ], [ %1104, %block_.L_400c15 ]
  %1194 = phi i64 [ %1188, %block_400c30 ], [ %.pre172, %block_400c4c ], [ %1140, %block_.L_400c15 ]
  %1195 = add i64 %1193, -8
  %1196 = add i64 %1194, 9
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  store i8 0, i8* %14, align 1
  %1199 = and i32 %1198, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1204 = icmp eq i32 %1198, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %30, align 1
  %1206 = lshr i32 %1198, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1208 = xor i1 %1204, true
  %1209 = icmp eq i8 %1207, 0
  %1210 = and i1 %1209, %1208
  %.v270 = select i1 %1210, i64 -61, i64 15
  %1211 = add i64 %1194, %.v270
  store i64 %1211, i64* %3, align 8
  br i1 %1210, label %block_.L_400c15, label %block_400c61

block_400c61:                                     ; preds = %block_.L_400c52
  %1212 = add i64 %1211, 5
  store i64 %1212, i64* %3, align 8
  br label %block_.L_400c66

block_.L_400c66:                                  ; preds = %block_400c61, %block_400bf2
  %1213 = phi i64 [ %1212, %block_400c61 ], [ %1036, %block_400bf2 ]
  %1214 = phi i64 [ %1193, %block_400c61 ], [ %1008, %block_400bf2 ]
  %1215 = add i64 %1214, -12
  %1216 = add i64 %1213, 4
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = sext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i1508, align 8
  %1220 = shl nsw i64 %1219, 2
  %1221 = add i64 %1214, -1328
  %1222 = add i64 %1221, %1220
  %1223 = add i64 %1213, 11
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = zext i32 %1225 to i64
  store i64 %1226, i64* %RCX.i1994, align 8
  %1227 = add i64 %1214, -16
  %1228 = add i64 %1213, 15
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = sext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i1508, align 8
  %1232 = shl nsw i64 %1231, 2
  %1233 = add i64 %1221, %1232
  %1234 = add i64 %1213, 22
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RDX.i2064, align 8
  %1238 = add i64 %1213, 25
  store i64 %1238, i64* %3, align 8
  %1239 = load i32, i32* %1217, align 4
  %1240 = add i32 %1239, %1236
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RDX.i2064, align 8
  %1242 = icmp ult i32 %1240, %1236
  %1243 = icmp ult i32 %1240, %1239
  %1244 = or i1 %1242, %1243
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %14, align 1
  %1246 = and i32 %1240, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %21, align 1
  %1251 = xor i32 %1239, %1236
  %1252 = xor i32 %1251, %1240
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %27, align 1
  %1256 = icmp eq i32 %1240, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %30, align 1
  %1258 = lshr i32 %1240, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %33, align 1
  %1260 = lshr i32 %1236, 31
  %1261 = lshr i32 %1239, 31
  %1262 = xor i32 %1258, %1260
  %1263 = xor i32 %1258, %1261
  %1264 = add nuw nsw i32 %1262, %1263
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %39, align 1
  %1267 = add i64 %1213, 28
  store i64 %1267, i64* %3, align 8
  %1268 = load i32, i32* %1229, align 4
  %1269 = sub i32 %1240, %1268
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDX.i2064, align 8
  %1271 = lshr i32 %1269, 31
  %1272 = sub i32 %1225, %1269
  %1273 = icmp ult i32 %1225, %1269
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = and i32 %1272, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  %1280 = xor i32 %1269, %1225
  %1281 = xor i32 %1280, %1272
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %27, align 1
  %1285 = icmp eq i32 %1272, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %30, align 1
  %1287 = lshr i32 %1272, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %33, align 1
  %1289 = lshr i32 %1225, 31
  %1290 = xor i32 %1271, %1289
  %1291 = xor i32 %1287, %1289
  %1292 = add nuw nsw i32 %1291, %1290
  %1293 = icmp eq i32 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %39, align 1
  %1295 = icmp ne i8 %1288, 0
  %1296 = xor i1 %1295, %1293
  %1297 = or i1 %1285, %1296
  %.v271 = select i1 %1297, i64 68, i64 36
  %1298 = add i64 %1213, %.v271
  store i64 %1298, i64* %3, align 8
  %1299 = load i64, i64* %RBP.i, align 8
  br i1 %1297, label %block_.L_400caa, label %block_400c8a

block_400c8a:                                     ; preds = %block_.L_400c66
  %1300 = add i64 %1299, -12
  %1301 = add i64 %1298, 4
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = sext i32 %1303 to i64
  store i64 %1304, i64* %RAX.i1508, align 8
  %1305 = shl nsw i64 %1304, 2
  %1306 = add i64 %1299, -1328
  %1307 = add i64 %1306, %1305
  %1308 = add i64 %1298, 11
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i1994, align 8
  %1312 = add i64 %1298, 14
  store i64 %1312, i64* %3, align 8
  %1313 = load i32, i32* %1302, align 4
  %1314 = add i32 %1313, 1
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RDX.i2064, align 8
  %1316 = icmp eq i32 %1313, -1
  %1317 = icmp eq i32 %1314, 0
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %14, align 1
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %21, align 1
  %1325 = xor i32 %1314, %1313
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %27, align 1
  %1329 = zext i1 %1317 to i8
  store i8 %1329, i8* %30, align 1
  %1330 = lshr i32 %1314, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %33, align 1
  %1332 = lshr i32 %1313, 31
  %1333 = xor i32 %1330, %1332
  %1334 = add nuw nsw i32 %1333, %1330
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %39, align 1
  %1337 = sext i32 %1314 to i64
  store i64 %1337, i64* %RAX.i1508, align 8
  %1338 = shl nsw i64 %1337, 2
  %1339 = add nsw i64 %1338, -1328
  %1340 = add i64 %1339, %1299
  %1341 = add i64 %1298, 27
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  store i32 %1310, i32* %1342, align 4
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, 38
  store i64 %1344, i64* %3, align 8
  br label %block_.L_400ccb

block_.L_400caa:                                  ; preds = %block_.L_400c66
  %1345 = add i64 %1299, -16
  %1346 = add i64 %1298, 4
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sext i32 %1348 to i64
  store i64 %1349, i64* %RAX.i1508, align 8
  %1350 = shl nsw i64 %1349, 2
  %1351 = add i64 %1299, -1328
  %1352 = add i64 %1351, %1350
  %1353 = add i64 %1298, 11
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RCX.i1994, align 8
  %1357 = add i64 %1299, -12
  %1358 = add i64 %1298, 14
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = add i32 %1360, %1355
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RCX.i1994, align 8
  %1363 = icmp ult i32 %1361, %1355
  %1364 = icmp ult i32 %1361, %1360
  %1365 = or i1 %1363, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %14, align 1
  %1367 = and i32 %1361, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367)
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %21, align 1
  %1372 = xor i32 %1360, %1355
  %1373 = xor i32 %1372, %1361
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  store i8 %1376, i8* %27, align 1
  %1377 = icmp eq i32 %1361, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %30, align 1
  %1379 = lshr i32 %1361, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %33, align 1
  %1381 = lshr i32 %1355, 31
  %1382 = lshr i32 %1360, 31
  %1383 = xor i32 %1379, %1381
  %1384 = xor i32 %1379, %1382
  %1385 = add nuw nsw i32 %1383, %1384
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %39, align 1
  %1388 = add i64 %1298, 17
  store i64 %1388, i64* %3, align 8
  %1389 = load i32, i32* %1347, align 4
  %1390 = sub i32 %1361, %1389
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RCX.i1994, align 8
  %1392 = icmp ult i32 %1361, %1389
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %14, align 1
  %1394 = and i32 %1390, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %21, align 1
  %1399 = xor i32 %1389, %1361
  %1400 = xor i32 %1399, %1390
  %1401 = lshr i32 %1400, 4
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %27, align 1
  %1404 = icmp eq i32 %1390, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %30, align 1
  %1406 = lshr i32 %1390, 31
  %1407 = trunc i32 %1406 to i8
  store i8 %1407, i8* %33, align 1
  %1408 = lshr i32 %1389, 31
  %1409 = xor i32 %1408, %1379
  %1410 = xor i32 %1406, %1379
  %1411 = add nuw nsw i32 %1410, %1409
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %39, align 1
  %1414 = add i64 %1298, 20
  store i64 %1414, i64* %3, align 8
  %1415 = load i32, i32* %1359, align 4
  %1416 = add i32 %1415, 1
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RDX.i2064, align 8
  %1418 = icmp eq i32 %1415, -1
  %1419 = icmp eq i32 %1416, 0
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %14, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %21, align 1
  %1427 = xor i32 %1416, %1415
  %1428 = lshr i32 %1427, 4
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %27, align 1
  %1431 = zext i1 %1419 to i8
  store i8 %1431, i8* %30, align 1
  %1432 = lshr i32 %1416, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %33, align 1
  %1434 = lshr i32 %1415, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1432
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %39, align 1
  %1439 = sext i32 %1416 to i64
  store i64 %1439, i64* %RAX.i1508, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = shl nsw i64 %1439, 2
  %1442 = add nsw i64 %1441, -1328
  %1443 = add i64 %1442, %1440
  %1444 = add i64 %1298, 33
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  store i32 %1390, i32* %1445, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_400ccb

block_.L_400ccb:                                  ; preds = %block_.L_400caa, %block_400c8a
  %1446 = phi i64 [ %.pre174, %block_.L_400caa ], [ %1344, %block_400c8a ]
  %1447 = load i64, i64* %RBP.i, align 8
  %1448 = add i64 %1447, -4
  %1449 = add i64 %1446, 7
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  store i32 0, i32* %1450, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_400cd2

block_.L_400cd2:                                  ; preds = %block_400cdc, %block_.L_400ccb
  %1451 = phi i64 [ %1559, %block_400cdc ], [ %.pre175, %block_.L_400ccb ]
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -4
  %1454 = add i64 %1451, 4
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = add i32 %1456, -16
  %1458 = icmp ult i32 %1456, 16
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %14, align 1
  %1460 = and i32 %1457, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %21, align 1
  %1465 = xor i32 %1456, 16
  %1466 = xor i32 %1465, %1457
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %27, align 1
  %1470 = icmp eq i32 %1457, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %30, align 1
  %1472 = lshr i32 %1457, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %33, align 1
  %1474 = lshr i32 %1456, 31
  %1475 = xor i32 %1472, %1474
  %1476 = add nuw nsw i32 %1475, %1474
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %39, align 1
  %1479 = icmp ne i8 %1473, 0
  %1480 = xor i1 %1479, %1477
  %.v272 = select i1 %1480, i64 10, i64 58
  %1481 = add i64 %1451, %.v272
  store i64 %1481, i64* %3, align 8
  br i1 %1480, label %block_400cdc, label %block_.L_400d0c

block_400cdc:                                     ; preds = %block_.L_400cd2
  %1482 = add i64 %1452, -1168
  store i64 %1482, i64* %RAX.i1508, align 8
  %1483 = add i64 %1452, -12
  %1484 = add i64 %1481, 10
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  %1486 = load i32, i32* %1485, align 4
  %1487 = add i32 %1486, 1
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i1994, align 8
  %1489 = sext i32 %1487 to i64
  %1490 = shl nsw i64 %1489, 6
  store i64 %1490, i64* %RDX.i2064, align 8
  %1491 = add i64 %1490, %1482
  store i64 %1491, i64* %RAX.i1508, align 8
  %1492 = icmp ult i64 %1491, %1482
  %1493 = icmp ult i64 %1491, %1490
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %14, align 1
  %1496 = trunc i64 %1491 to i32
  %1497 = and i32 %1496, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = xor i64 %1482, %1491
  %1503 = lshr i64 %1502, 4
  %1504 = trunc i64 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %27, align 1
  %1506 = icmp eq i64 %1491, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %30, align 1
  %1508 = lshr i64 %1491, 63
  %1509 = trunc i64 %1508 to i8
  store i8 %1509, i8* %33, align 1
  %1510 = lshr i64 %1482, 63
  %1511 = lshr i64 %1489, 57
  %1512 = and i64 %1511, 1
  %1513 = xor i64 %1508, %1510
  %1514 = xor i64 %1508, %1512
  %1515 = add nuw nsw i64 %1513, %1514
  %1516 = icmp eq i64 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %39, align 1
  %1518 = load i64, i64* %RBP.i, align 8
  %1519 = add i64 %1518, -4
  %1520 = add i64 %1481, 27
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = sext i32 %1522 to i64
  store i64 %1523, i64* %RDX.i2064, align 8
  %1524 = shl nsw i64 %1523, 2
  %1525 = add i64 %1524, %1491
  %1526 = add i64 %1481, 34
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  store i32 0, i32* %1527, align 4
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -4
  %1530 = load i64, i64* %3, align 8
  %1531 = add i64 %1530, 3
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1529 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = add i32 %1533, 1
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RAX.i1508, align 8
  %1536 = icmp eq i32 %1533, -1
  %1537 = icmp eq i32 %1534, 0
  %1538 = or i1 %1536, %1537
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %14, align 1
  %1540 = and i32 %1534, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %21, align 1
  %1545 = xor i32 %1534, %1533
  %1546 = lshr i32 %1545, 4
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  store i8 %1548, i8* %27, align 1
  %1549 = zext i1 %1537 to i8
  store i8 %1549, i8* %30, align 1
  %1550 = lshr i32 %1534, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %33, align 1
  %1552 = lshr i32 %1533, 31
  %1553 = xor i32 %1550, %1552
  %1554 = add nuw nsw i32 %1553, %1550
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %39, align 1
  %1557 = add i64 %1530, 9
  store i64 %1557, i64* %3, align 8
  store i32 %1534, i32* %1532, align 4
  %1558 = load i64, i64* %3, align 8
  %1559 = add i64 %1558, -53
  store i64 %1559, i64* %3, align 8
  br label %block_.L_400cd2

block_.L_400d0c:                                  ; preds = %block_.L_400cd2
  %1560 = add i64 %1481, 7
  store i64 %1560, i64* %3, align 8
  store i32 0, i32* %1455, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_400d13

block_.L_400d13:                                  ; preds = %block_.L_400dc1, %block_.L_400d0c
  %1561 = phi i64 [ %.pre176, %block_.L_400d0c ], [ %2006, %block_.L_400dc1 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.5, %block_.L_400d0c ], [ %MEMORY.15, %block_.L_400dc1 ]
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -4
  %1564 = add i64 %1561, 3
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RAX.i1508, align 8
  %1568 = add i64 %1562, -16
  %1569 = add i64 %1561, 7
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sext i32 %1571 to i64
  store i64 %1572, i64* %RCX.i1994, align 8
  %1573 = shl nsw i64 %1572, 2
  %1574 = add nsw i64 %1573, -1328
  %1575 = add i64 %1574, %1562
  %1576 = add i64 %1561, 14
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sub i32 %1566, %1578
  %1580 = icmp ult i32 %1566, %1578
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %14, align 1
  %1582 = and i32 %1579, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %21, align 1
  %1587 = xor i32 %1578, %1566
  %1588 = xor i32 %1587, %1579
  %1589 = lshr i32 %1588, 4
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  store i8 %1591, i8* %27, align 1
  %1592 = icmp eq i32 %1579, 0
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %30, align 1
  %1594 = lshr i32 %1579, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %33, align 1
  %1596 = lshr i32 %1566, 31
  %1597 = lshr i32 %1578, 31
  %1598 = xor i32 %1597, %1596
  %1599 = xor i32 %1594, %1596
  %1600 = add nuw nsw i32 %1599, %1598
  %1601 = icmp eq i32 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %39, align 1
  %1603 = icmp ne i8 %1595, 0
  %1604 = xor i1 %1603, %1601
  %.demorgan259 = or i1 %1592, %1604
  %.v273 = select i1 %.demorgan259, i64 20, i64 193
  %1605 = add i64 %1561, %.v273
  store i64 %1605, i64* %3, align 8
  br i1 %.demorgan259, label %block_400d27, label %block_.L_400dd4

block_400d27:                                     ; preds = %block_.L_400d13
  %1606 = add i64 %1562, -1168
  store i64 %1606, i64* %RAX.i1508, align 8
  %1607 = add i64 %1605, 11
  store i64 %1607, i64* %3, align 8
  %1608 = load i32, i32* %1570, align 4
  %1609 = sext i32 %1608 to i64
  %1610 = shl nsw i64 %1609, 6
  store i64 %1610, i64* %RCX.i1994, align 8
  %1611 = add i64 %1610, %1606
  store i64 %1611, i64* %RAX.i1508, align 8
  %1612 = icmp ult i64 %1611, %1606
  %1613 = icmp ult i64 %1611, %1610
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %14, align 1
  %1616 = trunc i64 %1611 to i32
  %1617 = and i32 %1616, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %21, align 1
  %1622 = xor i64 %1606, %1611
  %1623 = lshr i64 %1622, 4
  %1624 = trunc i64 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %27, align 1
  %1626 = icmp eq i64 %1611, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %30, align 1
  %1628 = lshr i64 %1611, 63
  %1629 = trunc i64 %1628 to i8
  store i8 %1629, i8* %33, align 1
  %1630 = lshr i64 %1606, 63
  %1631 = lshr i64 %1609, 57
  %1632 = and i64 %1631, 1
  %1633 = xor i64 %1628, %1630
  %1634 = xor i64 %1628, %1632
  %1635 = add nuw nsw i64 %1633, %1634
  %1636 = icmp eq i64 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %39, align 1
  %1638 = add i64 %1605, 22
  store i64 %1638, i64* %3, align 8
  %1639 = load i32, i32* %1565, align 4
  %1640 = sext i32 %1639 to i64
  store i64 %1640, i64* %RCX.i1994, align 8
  %1641 = shl nsw i64 %1640, 2
  %1642 = add i64 %1641, %1611
  %1643 = add i64 %1605, 26
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 1
  %1647 = icmp ne i32 %1645, -1
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %14, align 1
  %1649 = and i32 %1646, 255
  %1650 = tail call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  store i8 %1653, i8* %21, align 1
  %1654 = xor i32 %1645, 16
  %1655 = xor i32 %1654, %1646
  %1656 = lshr i32 %1655, 4
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %27, align 1
  %1659 = icmp eq i32 %1646, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %30, align 1
  %1661 = lshr i32 %1646, 31
  %1662 = trunc i32 %1661 to i8
  store i8 %1662, i8* %33, align 1
  %1663 = lshr i32 %1645, 31
  %1664 = xor i32 %1663, 1
  %1665 = xor i32 %1661, %1663
  %1666 = add nuw nsw i32 %1665, %1664
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %39, align 1
  %.v301 = select i1 %1659, i64 154, i64 32
  %1669 = add i64 %1605, %.v301
  store i64 %1669, i64* %3, align 8
  br i1 %1659, label %block_.L_400dc1, label %block_400d47

block_400d47:                                     ; preds = %block_400d27
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -1168
  store i64 %1671, i64* %RAX.i1508, align 8
  store i64 255, i64* %RCX.i1994, align 8
  %1672 = add i64 %1670, -12
  %1673 = add i64 %1669, 16
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = sext i32 %1675 to i64
  store i64 %1676, i64* %RDX.i2064, align 8
  %1677 = shl nsw i64 %1676, 2
  %1678 = add i64 %1670, -1248
  %1679 = add i64 %1678, %1677
  %1680 = add i64 %1669, 23
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = add i32 %1682, 255
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RSI.i2060, align 8
  %1685 = icmp ugt i32 %1682, -256
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1683, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1682, 16
  %1693 = xor i32 %1692, %1683
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  %1697 = icmp eq i32 %1683, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %30, align 1
  %1699 = lshr i32 %1683, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %33, align 1
  %1701 = lshr i32 %1682, 31
  %1702 = xor i32 %1699, %1701
  %1703 = add nuw nsw i32 %1702, %1699
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %39, align 1
  %1706 = add i64 %1670, -16
  %1707 = add i64 %1669, 33
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = sext i32 %1709 to i64
  store i64 %1710, i64* %RDX.i2064, align 8
  %1711 = shl nsw i64 %1710, 2
  %1712 = add nsw i64 %1711, -1248
  %1713 = add i64 %1712, %1670
  %1714 = add i64 %1669, 40
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = sub i32 %1683, %1716
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RSI.i2060, align 8
  %1719 = icmp ult i32 %1683, %1716
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %14, align 1
  %1721 = and i32 %1717, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %21, align 1
  %1726 = xor i32 %1716, %1683
  %1727 = xor i32 %1726, %1717
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  store i8 %1730, i8* %27, align 1
  %1731 = icmp eq i32 %1717, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %30, align 1
  %1733 = lshr i32 %1717, 31
  %1734 = trunc i32 %1733 to i8
  store i8 %1734, i8* %33, align 1
  %1735 = lshr i32 %1716, 31
  %1736 = xor i32 %1735, %1699
  %1737 = xor i32 %1733, %1699
  %1738 = add nuw nsw i32 %1737, %1736
  %1739 = icmp eq i32 %1738, 2
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %39, align 1
  %1741 = load i64, i64* %RBP.i, align 8
  %1742 = add i64 %1741, -16
  %1743 = add i64 %1669, 44
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i32*
  %1745 = load i32, i32* %1744, align 4
  %1746 = sext i32 %1745 to i64
  %1747 = shl nsw i64 %1746, 6
  store i64 %1747, i64* %RDX.i2064, align 8
  %1748 = load i64, i64* %RAX.i1508, align 8
  %1749 = add i64 %1747, %1748
  store i64 %1749, i64* %RDI.i1529, align 8
  %1750 = icmp ult i64 %1749, %1748
  %1751 = icmp ult i64 %1749, %1747
  %1752 = or i1 %1750, %1751
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %14, align 1
  %1754 = trunc i64 %1749 to i32
  %1755 = and i32 %1754, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = xor i64 %1748, %1749
  %1761 = lshr i64 %1760, 4
  %1762 = trunc i64 %1761 to i8
  %1763 = and i8 %1762, 1
  store i8 %1763, i8* %27, align 1
  %1764 = icmp eq i64 %1749, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %30, align 1
  %1766 = lshr i64 %1749, 63
  %1767 = trunc i64 %1766 to i8
  store i8 %1767, i8* %33, align 1
  %1768 = lshr i64 %1748, 63
  %1769 = lshr i64 %1746, 57
  %1770 = and i64 %1769, 1
  %1771 = xor i64 %1766, %1768
  %1772 = xor i64 %1766, %1770
  %1773 = add nuw nsw i64 %1771, %1772
  %1774 = icmp eq i64 %1773, 2
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %39, align 1
  %1776 = add i64 %1741, -4
  %1777 = add i64 %1669, 58
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = sext i32 %1779 to i64
  store i64 %1780, i64* %RDX.i2064, align 8
  %1781 = load i64, i64* %RSI.i2060, align 8
  %1782 = shl nsw i64 %1780, 2
  %1783 = add i64 %1749, %1782
  %1784 = add i64 %1669, 61
  store i64 %1784, i64* %3, align 8
  %1785 = trunc i64 %1781 to i32
  %1786 = inttoptr i64 %1783 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = add i32 %1787, %1785
  %1789 = zext i32 %1788 to i64
  store i64 %1789, i64* %RSI.i2060, align 8
  %1790 = icmp ult i32 %1788, %1785
  %1791 = icmp ult i32 %1788, %1787
  %1792 = or i1 %1790, %1791
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %14, align 1
  %1794 = and i32 %1788, 255
  %1795 = tail call i32 @llvm.ctpop.i32(i32 %1794)
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  store i8 %1798, i8* %21, align 1
  %1799 = xor i32 %1787, %1785
  %1800 = xor i32 %1799, %1788
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %27, align 1
  %1804 = icmp eq i32 %1788, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %30, align 1
  %1806 = lshr i32 %1788, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %33, align 1
  %1808 = lshr i32 %1785, 31
  %1809 = lshr i32 %1787, 31
  %1810 = xor i32 %1806, %1808
  %1811 = xor i32 %1806, %1809
  %1812 = add nuw nsw i32 %1810, %1811
  %1813 = icmp eq i32 %1812, 2
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %39, align 1
  %1815 = load i64, i64* %RBP.i, align 8
  %1816 = add i64 %1815, -2704
  %1817 = add i64 %1669, 68
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i64*
  store i64 %1748, i64* %1818, align 8
  %1819 = load i32, i32* %ESI.i2054, align 4
  %1820 = zext i32 %1819 to i64
  %1821 = load i64, i64* %3, align 8
  store i64 %1820, i64* %RAX.i1508, align 8
  %1822 = sext i32 %1819 to i64
  %1823 = lshr i64 %1822, 32
  store i64 %1823, i64* %56, align 8
  %1824 = load i32, i32* %ECX.i1986, align 4
  %1825 = add i64 %1821, 5
  store i64 %1825, i64* %3, align 8
  %1826 = sext i32 %1824 to i64
  %1827 = shl nuw i64 %1823, 32
  %1828 = or i64 %1827, %1820
  %1829 = sdiv i64 %1828, %1826
  %1830 = shl i64 %1829, 32
  %1831 = ashr exact i64 %1830, 32
  %1832 = icmp eq i64 %1829, %1831
  br i1 %1832, label %1835, label %1833

; <label>:1833:                                   ; preds = %block_400d47
  %1834 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1825, %struct.Memory* %MEMORY.14)
  %.pre177 = load i32, i32* %EDX.i2048, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1506

; <label>:1835:                                   ; preds = %block_400d47
  %1836 = srem i64 %1828, %1826
  %1837 = and i64 %1829, 4294967295
  store i64 %1837, i64* %RAX.i1508, align 8
  %1838 = and i64 %1836, 4294967295
  store i64 %1838, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1839 = trunc i64 %1836 to i32
  br label %routine_idivl__ecx.exit1506

routine_idivl__ecx.exit1506:                      ; preds = %1835, %1833
  %1840 = phi i64 [ %.pre178, %1833 ], [ %1825, %1835 ]
  %1841 = phi i32 [ %.pre177, %1833 ], [ %1839, %1835 ]
  %1842 = phi %struct.Memory* [ %1834, %1833 ], [ %MEMORY.14, %1835 ]
  %1843 = sext i32 %1841 to i64
  store i64 %1843, i64* %RDI.i1529, align 8
  %1844 = shl nsw i64 %1843, 2
  %1845 = add i64 %1844, ptrtoint (%G_0x603880___rdi_4__type* @G_0x603880___rdi_4_ to i64)
  %1846 = add i64 %1840, 10
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RCX.i1994, align 8
  %1850 = load i64, i64* %RBP.i, align 8
  %1851 = add i64 %1850, -12
  %1852 = add i64 %1840, 13
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1851 to i32*
  %1854 = load i32, i32* %1853, align 4
  %1855 = add i32 %1854, 1
  %1856 = zext i32 %1855 to i64
  store i64 %1856, i64* %RDX.i2064, align 8
  %1857 = icmp eq i32 %1855, 0
  %1858 = zext i1 %1857 to i8
  %1859 = lshr i32 %1855, 31
  %1860 = trunc i32 %1859 to i8
  %1861 = sext i32 %1855 to i64
  %1862 = shl nsw i64 %1861, 6
  store i64 %1862, i64* %RDI.i1529, align 8
  store i8 %1860, i8* %14, align 1
  %1863 = trunc i64 %1862 to i32
  %1864 = and i32 %1863, 192
  %1865 = tail call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  store i8 %1868, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %1858, i8* %30, align 1
  %1869 = lshr i64 %1861, 57
  %1870 = trunc i64 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1872 = add i64 %1850, -2704
  %1873 = add i64 %1840, 30
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  %1875 = load i64, i64* %1874, align 8
  %1876 = add i64 %1862, %1875
  store i64 %1876, i64* %R8.i1487, align 8
  %1877 = icmp ult i64 %1876, %1875
  %1878 = icmp ult i64 %1876, %1862
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %14, align 1
  %1881 = trunc i64 %1876 to i32
  %1882 = and i32 %1881, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i64 %1875, %1876
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %27, align 1
  %1891 = icmp eq i64 %1876, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %30, align 1
  %1893 = lshr i64 %1876, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %33, align 1
  %1895 = lshr i64 %1875, 63
  %1896 = lshr i64 %1861, 57
  %1897 = and i64 %1896, 1
  %1898 = xor i64 %1893, %1895
  %1899 = xor i64 %1893, %1897
  %1900 = add nuw nsw i64 %1898, %1899
  %1901 = icmp eq i64 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %39, align 1
  %1903 = load i64, i64* %RBP.i, align 8
  %1904 = add i64 %1903, -4
  %1905 = add i64 %1840, 36
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RDX.i2064, align 8
  %1909 = add i64 %1903, -12
  %1910 = add i64 %1840, 39
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = add i32 %1912, %1907
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RDX.i2064, align 8
  %1915 = icmp ult i32 %1913, %1907
  %1916 = icmp ult i32 %1913, %1912
  %1917 = or i1 %1915, %1916
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %14, align 1
  %1919 = and i32 %1913, 255
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %21, align 1
  %1924 = xor i32 %1912, %1907
  %1925 = xor i32 %1924, %1913
  %1926 = lshr i32 %1925, 4
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  store i8 %1928, i8* %27, align 1
  %1929 = icmp eq i32 %1913, 0
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %30, align 1
  %1931 = lshr i32 %1913, 31
  %1932 = trunc i32 %1931 to i8
  store i8 %1932, i8* %33, align 1
  %1933 = lshr i32 %1907, 31
  %1934 = lshr i32 %1912, 31
  %1935 = xor i32 %1931, %1933
  %1936 = xor i32 %1931, %1934
  %1937 = add nuw nsw i32 %1935, %1936
  %1938 = icmp eq i32 %1937, 2
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %39, align 1
  %1940 = add i64 %1903, -16
  %1941 = add i64 %1840, 42
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = sub i32 %1913, %1943
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RDX.i2064, align 8
  %1946 = icmp ult i32 %1913, %1943
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %14, align 1
  %1948 = and i32 %1944, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i32 %1943, %1913
  %1954 = xor i32 %1953, %1944
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %27, align 1
  %1958 = icmp eq i32 %1944, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i32 %1944, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = lshr i32 %1943, 31
  %1963 = xor i32 %1962, %1931
  %1964 = xor i32 %1960, %1931
  %1965 = add nuw nsw i32 %1964, %1963
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = sext i32 %1944 to i64
  store i64 %1968, i64* %RDI.i1529, align 8
  %1969 = load i64, i64* %R8.i1487, align 8
  %1970 = shl nsw i64 %1968, 2
  %1971 = add i64 %1969, %1970
  %1972 = load i32, i32* %ECX.i1986, align 4
  %1973 = add i64 %1840, 49
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1971 to i32*
  store i32 %1972, i32* %1974, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_400dc1

block_.L_400dc1:                                  ; preds = %routine_idivl__ecx.exit1506, %block_400d27
  %1975 = phi i64 [ %1669, %block_400d27 ], [ %.pre179, %routine_idivl__ecx.exit1506 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_400d27 ], [ %1842, %routine_idivl__ecx.exit1506 ]
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -4
  %1978 = add i64 %1975, 8
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = add i32 %1980, 1
  %1982 = zext i32 %1981 to i64
  store i64 %1982, i64* %RAX.i1508, align 8
  %1983 = icmp eq i32 %1980, -1
  %1984 = icmp eq i32 %1981, 0
  %1985 = or i1 %1983, %1984
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %14, align 1
  %1987 = and i32 %1981, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  %1992 = xor i32 %1981, %1980
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %27, align 1
  %1996 = zext i1 %1984 to i8
  store i8 %1996, i8* %30, align 1
  %1997 = lshr i32 %1981, 31
  %1998 = trunc i32 %1997 to i8
  store i8 %1998, i8* %33, align 1
  %1999 = lshr i32 %1980, 31
  %2000 = xor i32 %1997, %1999
  %2001 = add nuw nsw i32 %2000, %1997
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %39, align 1
  %2004 = add i64 %1975, 14
  store i64 %2004, i64* %3, align 8
  store i32 %1981, i32* %1979, align 4
  %2005 = load i64, i64* %3, align 8
  %2006 = add i64 %2005, -188
  store i64 %2006, i64* %3, align 8
  br label %block_.L_400d13

block_.L_400dd4:                                  ; preds = %block_.L_400d13
  %2007 = add i64 %1605, 7
  store i64 %2007, i64* %3, align 8
  store i32 0, i32* %1565, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_400ddb

block_.L_400ddb:                                  ; preds = %block_400def, %block_.L_400dd4
  %2008 = phi i64 [ %2277, %block_400def ], [ %.pre180, %block_.L_400dd4 ]
  %2009 = load i64, i64* %RBP.i, align 8
  %2010 = add i64 %2009, -4
  %2011 = add i64 %2008, 3
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i1508, align 8
  %2015 = add i64 %2009, -12
  %2016 = add i64 %2008, 7
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = sext i32 %2018 to i64
  store i64 %2019, i64* %RCX.i1994, align 8
  %2020 = shl nsw i64 %2019, 2
  %2021 = add nsw i64 %2020, -1328
  %2022 = add i64 %2021, %2009
  %2023 = add i64 %2008, 14
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i32*
  %2025 = load i32, i32* %2024, align 4
  %2026 = sub i32 %2013, %2025
  %2027 = icmp ult i32 %2013, %2025
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %14, align 1
  %2029 = and i32 %2026, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %21, align 1
  %2034 = xor i32 %2025, %2013
  %2035 = xor i32 %2034, %2026
  %2036 = lshr i32 %2035, 4
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  store i8 %2038, i8* %27, align 1
  %2039 = icmp eq i32 %2026, 0
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %30, align 1
  %2041 = lshr i32 %2026, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %33, align 1
  %2043 = lshr i32 %2013, 31
  %2044 = lshr i32 %2025, 31
  %2045 = xor i32 %2044, %2043
  %2046 = xor i32 %2041, %2043
  %2047 = add nuw nsw i32 %2046, %2045
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %39, align 1
  %2050 = icmp ne i8 %2042, 0
  %2051 = xor i1 %2050, %2048
  %.demorgan260 = or i1 %2039, %2051
  %.v274 = select i1 %.demorgan260, i64 20, i64 138
  %2052 = add i64 %2008, %.v274
  store i64 %2052, i64* %3, align 8
  br i1 %.demorgan260, label %block_400def, label %block_.L_400e65

block_400def:                                     ; preds = %block_.L_400ddb
  %2053 = add i64 %2009, -1168
  store i64 %2053, i64* %RAX.i1508, align 8
  %2054 = add i64 %2052, 11
  store i64 %2054, i64* %3, align 8
  %2055 = load i32, i32* %2017, align 4
  %2056 = sext i32 %2055 to i64
  %2057 = shl nsw i64 %2056, 6
  store i64 %2057, i64* %RCX.i1994, align 8
  %2058 = add i64 %2057, %2053
  store i64 %2058, i64* %RDX.i2064, align 8
  %2059 = icmp ult i64 %2058, %2053
  %2060 = icmp ult i64 %2058, %2057
  %2061 = or i1 %2059, %2060
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %14, align 1
  %2063 = trunc i64 %2058 to i32
  %2064 = and i32 %2063, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i64 %2053, %2058
  %2070 = lshr i64 %2069, 4
  %2071 = trunc i64 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %27, align 1
  %2073 = icmp eq i64 %2058, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %30, align 1
  %2075 = lshr i64 %2058, 63
  %2076 = trunc i64 %2075 to i8
  store i8 %2076, i8* %33, align 1
  %2077 = lshr i64 %2053, 63
  %2078 = lshr i64 %2056, 57
  %2079 = and i64 %2078, 1
  %2080 = xor i64 %2075, %2077
  %2081 = xor i64 %2075, %2079
  %2082 = add nuw nsw i64 %2080, %2081
  %2083 = icmp eq i64 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %39, align 1
  %2085 = add i64 %2052, 25
  store i64 %2085, i64* %3, align 8
  %2086 = load i32, i32* %2012, align 4
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i1994, align 8
  %2088 = shl nsw i64 %2087, 2
  %2089 = add i64 %2088, %2058
  %2090 = add i64 %2052, 28
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RSI.i2060, align 8
  %2094 = add i64 %2052, 31
  store i64 %2094, i64* %3, align 8
  %2095 = load i32, i32* %2017, align 4
  %2096 = add i32 %2095, 1
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RDI.i1421, align 8
  %2098 = sext i32 %2096 to i64
  %2099 = shl nsw i64 %2098, 6
  store i64 %2099, i64* %RCX.i1994, align 8
  %2100 = load i64, i64* %RAX.i1508, align 8
  %2101 = add i64 %2099, %2100
  store i64 %2101, i64* %RDX.i2064, align 8
  %2102 = icmp ult i64 %2101, %2100
  %2103 = icmp ult i64 %2101, %2099
  %2104 = or i1 %2102, %2103
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %14, align 1
  %2106 = trunc i64 %2101 to i32
  %2107 = and i32 %2106, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i64 %2100, %2101
  %2113 = lshr i64 %2112, 4
  %2114 = trunc i64 %2113 to i8
  %2115 = and i8 %2114, 1
  store i8 %2115, i8* %27, align 1
  %2116 = icmp eq i64 %2101, 0
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %30, align 1
  %2118 = lshr i64 %2101, 63
  %2119 = trunc i64 %2118 to i8
  store i8 %2119, i8* %33, align 1
  %2120 = lshr i64 %2100, 63
  %2121 = lshr i64 %2098, 57
  %2122 = and i64 %2121, 1
  %2123 = xor i64 %2118, %2120
  %2124 = xor i64 %2118, %2122
  %2125 = add nuw nsw i64 %2123, %2124
  %2126 = icmp eq i64 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %39, align 1
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -4
  %2130 = add i64 %2052, 51
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = sext i32 %2132 to i64
  store i64 %2133, i64* %RCX.i1994, align 8
  %2134 = load i64, i64* %RSI.i2060, align 8
  %2135 = shl nsw i64 %2133, 2
  %2136 = add i64 %2101, %2135
  %2137 = add i64 %2052, 54
  store i64 %2137, i64* %3, align 8
  %2138 = trunc i64 %2134 to i32
  %2139 = inttoptr i64 %2136 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = xor i32 %2140, %2138
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RSI.i2060, align 8
  store i8 0, i8* %14, align 1
  %2143 = and i32 %2141, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %21, align 1
  %2148 = icmp eq i32 %2141, 0
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %30, align 1
  %2150 = lshr i32 %2141, 31
  %2151 = trunc i32 %2150 to i8
  store i8 %2151, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2152 = add i64 %2052, 57
  store i64 %2152, i64* %3, align 8
  store i32 %2141, i32* %2139, align 4
  %2153 = load i64, i64* %RBP.i, align 8
  %2154 = add i64 %2153, -12
  %2155 = load i64, i64* %3, align 8
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2154 to i32*
  %2158 = load i32, i32* %2157, align 4
  %2159 = sext i32 %2158 to i64
  %2160 = shl nsw i64 %2159, 6
  store i64 %2160, i64* %RCX.i1994, align 8
  %2161 = load i64, i64* %RAX.i1508, align 8
  %2162 = add i64 %2160, %2161
  store i64 %2162, i64* %RDX.i2064, align 8
  %2163 = icmp ult i64 %2162, %2161
  %2164 = icmp ult i64 %2162, %2160
  %2165 = or i1 %2163, %2164
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %14, align 1
  %2167 = trunc i64 %2162 to i32
  %2168 = and i32 %2167, 255
  %2169 = tail call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  store i8 %2172, i8* %21, align 1
  %2173 = xor i64 %2161, %2162
  %2174 = lshr i64 %2173, 4
  %2175 = trunc i64 %2174 to i8
  %2176 = and i8 %2175, 1
  store i8 %2176, i8* %27, align 1
  %2177 = icmp eq i64 %2162, 0
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %30, align 1
  %2179 = lshr i64 %2162, 63
  %2180 = trunc i64 %2179 to i8
  store i8 %2180, i8* %33, align 1
  %2181 = lshr i64 %2161, 63
  %2182 = lshr i64 %2159, 57
  %2183 = and i64 %2182, 1
  %2184 = xor i64 %2179, %2181
  %2185 = xor i64 %2179, %2183
  %2186 = add nuw nsw i64 %2184, %2185
  %2187 = icmp eq i64 %2186, 2
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %39, align 1
  %2189 = add i64 %2153, -4
  %2190 = add i64 %2155, 18
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = sext i32 %2192 to i64
  store i64 %2193, i64* %RCX.i1994, align 8
  %2194 = shl nsw i64 %2193, 2
  %2195 = add i64 %2194, %2162
  %2196 = add i64 %2155, 22
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  %2198 = load i32, i32* %2197, align 4
  %2199 = sext i32 %2198 to i64
  store i64 %2199, i64* %RCX.i1994, align 8
  %2200 = shl nsw i64 %2199, 2
  %2201 = add i64 %2200, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %2202 = add i64 %2155, 29
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RSI.i2060, align 8
  %2206 = add i64 %2155, 33
  store i64 %2206, i64* %3, align 8
  %2207 = load i32, i32* %2157, align 4
  %2208 = sext i32 %2207 to i64
  %2209 = shl nsw i64 %2208, 6
  store i64 %2209, i64* %RCX.i1994, align 8
  %2210 = add i64 %2209, %2161
  store i64 %2210, i64* %RAX.i1508, align 8
  %2211 = icmp ult i64 %2210, %2161
  %2212 = icmp ult i64 %2210, %2209
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %14, align 1
  %2215 = trunc i64 %2210 to i32
  %2216 = and i32 %2215, 255
  %2217 = tail call i32 @llvm.ctpop.i32(i32 %2216)
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  %2220 = xor i8 %2219, 1
  store i8 %2220, i8* %21, align 1
  %2221 = xor i64 %2161, %2210
  %2222 = lshr i64 %2221, 4
  %2223 = trunc i64 %2222 to i8
  %2224 = and i8 %2223, 1
  store i8 %2224, i8* %27, align 1
  %2225 = icmp eq i64 %2210, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %30, align 1
  %2227 = lshr i64 %2210, 63
  %2228 = trunc i64 %2227 to i8
  store i8 %2228, i8* %33, align 1
  %2229 = lshr i64 %2208, 57
  %2230 = and i64 %2229, 1
  %2231 = xor i64 %2227, %2181
  %2232 = xor i64 %2227, %2230
  %2233 = add nuw nsw i64 %2231, %2232
  %2234 = icmp eq i64 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %39, align 1
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -4
  %2238 = add i64 %2155, 44
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = sext i32 %2240 to i64
  store i64 %2241, i64* %RCX.i1994, align 8
  %2242 = shl nsw i64 %2241, 2
  %2243 = add i64 %2242, %2210
  %2244 = add i64 %2155, 47
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  store i32 %2204, i32* %2245, align 4
  %2246 = load i64, i64* %RBP.i, align 8
  %2247 = add i64 %2246, -4
  %2248 = load i64, i64* %3, align 8
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = add i32 %2251, 1
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RAX.i1508, align 8
  %2254 = icmp eq i32 %2251, -1
  %2255 = icmp eq i32 %2252, 0
  %2256 = or i1 %2254, %2255
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %14, align 1
  %2258 = and i32 %2252, 255
  %2259 = tail call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  store i8 %2262, i8* %21, align 1
  %2263 = xor i32 %2252, %2251
  %2264 = lshr i32 %2263, 4
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  store i8 %2266, i8* %27, align 1
  %2267 = zext i1 %2255 to i8
  store i8 %2267, i8* %30, align 1
  %2268 = lshr i32 %2252, 31
  %2269 = trunc i32 %2268 to i8
  store i8 %2269, i8* %33, align 1
  %2270 = lshr i32 %2251, 31
  %2271 = xor i32 %2268, %2270
  %2272 = add nuw nsw i32 %2271, %2268
  %2273 = icmp eq i32 %2272, 2
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %39, align 1
  %2275 = add i64 %2248, 9
  store i64 %2275, i64* %3, align 8
  store i32 %2252, i32* %2250, align 4
  %2276 = load i64, i64* %3, align 8
  %2277 = add i64 %2276, -133
  store i64 %2277, i64* %3, align 8
  br label %block_.L_400ddb

block_.L_400e65:                                  ; preds = %block_.L_400ddb
  %2278 = add i64 %2052, 5
  store i64 %2278, i64* %3, align 8
  br label %block_.L_400e6a

block_.L_400e6a:                                  ; preds = %block_.L_400e65, %block_.L_400bad
  %2279 = phi i64 [ %658, %block_.L_400bad ], [ %2009, %block_.L_400e65 ]
  %storemerge = phi i64 [ %913, %block_.L_400bad ], [ %2278, %block_.L_400e65 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.5, %block_.L_400bad ], [ %MEMORY.14, %block_.L_400e65 ]
  %2280 = add i64 %2279, -12
  %2281 = add i64 %storemerge, 3
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  %2283 = load i32, i32* %2282, align 4
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %RAX.i1508, align 8
  %2285 = add i64 %storemerge, 6
  store i64 %2285, i64* %3, align 8
  %2286 = load i32, i32* %2282, align 4
  %2287 = add i32 %2286, 1
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RCX.i1994, align 8
  %2289 = icmp eq i32 %2286, -1
  %2290 = icmp eq i32 %2287, 0
  %2291 = or i1 %2289, %2290
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %14, align 1
  %2293 = and i32 %2287, 255
  %2294 = tail call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  store i8 %2297, i8* %21, align 1
  %2298 = xor i32 %2287, %2286
  %2299 = lshr i32 %2298, 4
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  store i8 %2301, i8* %27, align 1
  %2302 = zext i1 %2290 to i8
  store i8 %2302, i8* %30, align 1
  %2303 = lshr i32 %2287, 31
  %2304 = trunc i32 %2303 to i8
  store i8 %2304, i8* %33, align 1
  %2305 = lshr i32 %2286, 31
  %2306 = xor i32 %2303, %2305
  %2307 = add nuw nsw i32 %2306, %2303
  %2308 = icmp eq i32 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %39, align 1
  %2310 = sext i32 %2287 to i64
  store i64 %2310, i64* %RDX.i2064, align 8
  %2311 = shl nsw i64 %2310, 2
  %2312 = add nsw i64 %2311, -1328
  %2313 = add i64 %2312, %2279
  %2314 = add i64 %storemerge, 19
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = sub i32 %2283, %2316
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RAX.i1508, align 8
  %2319 = icmp ult i32 %2283, %2316
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = and i32 %2317, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i32 %2316, %2283
  %2327 = xor i32 %2326, %2317
  %2328 = lshr i32 %2327, 4
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %27, align 1
  %2331 = icmp eq i32 %2317, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %30, align 1
  %2333 = lshr i32 %2317, 31
  %2334 = trunc i32 %2333 to i8
  store i8 %2334, i8* %33, align 1
  %2335 = lshr i32 %2283, 31
  %2336 = lshr i32 %2316, 31
  %2337 = xor i32 %2336, %2335
  %2338 = xor i32 %2333, %2335
  %2339 = add nuw nsw i32 %2338, %2337
  %2340 = icmp eq i32 %2339, 2
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %39, align 1
  %2342 = add i64 %storemerge, 22
  store i64 %2342, i64* %3, align 8
  %2343 = load i32, i32* %2282, align 4
  %2344 = add i32 %2343, 1
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RCX.i1994, align 8
  %2346 = icmp eq i32 %2343, -1
  %2347 = icmp eq i32 %2344, 0
  %2348 = or i1 %2346, %2347
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %14, align 1
  %2350 = and i32 %2344, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %21, align 1
  %2355 = xor i32 %2344, %2343
  %2356 = lshr i32 %2355, 4
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %27, align 1
  %2359 = zext i1 %2347 to i8
  store i8 %2359, i8* %30, align 1
  %2360 = lshr i32 %2344, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %33, align 1
  %2362 = lshr i32 %2343, 31
  %2363 = xor i32 %2360, %2362
  %2364 = add nuw nsw i32 %2363, %2360
  %2365 = icmp eq i32 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %39, align 1
  %2367 = sext i32 %2344 to i64
  store i64 %2367, i64* %RDX.i2064, align 8
  %2368 = load i64, i64* %RBP.i, align 8
  %2369 = shl nsw i64 %2367, 2
  %2370 = add nsw i64 %2369, -1408
  %2371 = add i64 %2370, %2368
  %2372 = add i64 %storemerge, 35
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  store i32 %2317, i32* %2373, align 4
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -12
  %2376 = load i64, i64* %3, align 8
  %2377 = add i64 %2376, 4
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2375 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = add i32 %2379, -16
  %2381 = icmp ult i32 %2379, 16
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %14, align 1
  %2383 = and i32 %2380, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %21, align 1
  %2388 = xor i32 %2379, 16
  %2389 = xor i32 %2388, %2380
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %27, align 1
  %2393 = icmp eq i32 %2380, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %30, align 1
  %2395 = lshr i32 %2380, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %33, align 1
  %2397 = lshr i32 %2379, 31
  %2398 = xor i32 %2395, %2397
  %2399 = add nuw nsw i32 %2398, %2397
  %2400 = icmp eq i32 %2399, 2
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %39, align 1
  %2402 = icmp ne i8 %2396, 0
  %2403 = xor i1 %2402, %2400
  %.v256 = select i1 %2403, i64 10, i64 366
  %2404 = add i64 %2376, %.v256
  store i64 %2404, i64* %3, align 8
  br i1 %2403, label %block_400e97, label %block_.L_400ffb

block_400e97:                                     ; preds = %block_.L_400e6a
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %3, align 8
  %2406 = load i32, i32* %2378, align 4
  %2407 = add i32 %2406, 1
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RAX.i1508, align 8
  %2409 = icmp eq i32 %2406, -1
  %2410 = icmp eq i32 %2407, 0
  %2411 = or i1 %2409, %2410
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %14, align 1
  %2413 = and i32 %2407, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %21, align 1
  %2418 = xor i32 %2407, %2406
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %27, align 1
  %2422 = zext i1 %2410 to i8
  store i8 %2422, i8* %30, align 1
  %2423 = lshr i32 %2407, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %33, align 1
  %2425 = lshr i32 %2406, 31
  %2426 = xor i32 %2423, %2425
  %2427 = add nuw nsw i32 %2426, %2423
  %2428 = icmp eq i32 %2427, 2
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %39, align 1
  %2430 = sext i32 %2407 to i64
  store i64 %2430, i64* %RCX.i1994, align 8
  %2431 = shl nsw i64 %2430, 2
  %2432 = add nsw i64 %2431, -1488
  %2433 = add i64 %2432, %2374
  %2434 = add i64 %2404, 17
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = add i32 %2436, 1
  %2438 = icmp ne i32 %2436, -1
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %14, align 1
  %2440 = and i32 %2437, 255
  %2441 = tail call i32 @llvm.ctpop.i32(i32 %2440)
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  store i8 %2444, i8* %21, align 1
  %2445 = xor i32 %2436, 16
  %2446 = xor i32 %2445, %2437
  %2447 = lshr i32 %2446, 4
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %27, align 1
  %2450 = icmp eq i32 %2437, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %30, align 1
  %2452 = lshr i32 %2437, 31
  %2453 = trunc i32 %2452 to i8
  store i8 %2453, i8* %33, align 1
  %2454 = lshr i32 %2436, 31
  %2455 = xor i32 %2454, 1
  %2456 = xor i32 %2452, %2454
  %2457 = add nuw nsw i32 %2456, %2455
  %2458 = icmp eq i32 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %39, align 1
  %.v255 = select i1 %2450, i64 68, i64 23
  %2460 = add i64 %2404, %.v255
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %3, align 8
  %2462 = load i32, i32* %2378, align 4
  %2463 = add i32 %2462, 1
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i1508, align 8
  %2465 = icmp eq i32 %2462, -1
  %2466 = icmp eq i32 %2463, 0
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %14, align 1
  %2469 = and i32 %2463, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  %2474 = xor i32 %2463, %2462
  %2475 = lshr i32 %2474, 4
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  store i8 %2477, i8* %27, align 1
  %2478 = zext i1 %2466 to i8
  store i8 %2478, i8* %30, align 1
  %2479 = lshr i32 %2463, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %33, align 1
  %2481 = lshr i32 %2462, 31
  %2482 = xor i32 %2479, %2481
  %2483 = add nuw nsw i32 %2482, %2479
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %39, align 1
  %2486 = add i64 %2460, 9
  store i64 %2486, i64* %3, align 8
  %2487 = sext i32 %2463 to i64
  store i64 %2487, i64* %RCX.i1994, align 8
  %2488 = load i64, i64* %RBP.i, align 8
  %2489 = shl nsw i64 %2487, 2
  br i1 %2450, label %block_.L_400edb, label %block_400eae

block_400eae:                                     ; preds = %block_400e97
  %2490 = add nsw i64 %2489, -1488
  %2491 = add i64 %2490, %2488
  %2492 = add i64 %2460, 17
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = sext i32 %2494 to i64
  store i64 %2495, i64* %RCX.i1994, align 8
  %2496 = shl nsw i64 %2495, 2
  %2497 = add i64 %2496, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %2498 = add i64 %2460, 24
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = zext i32 %2500 to i64
  store i64 %2501, i64* %RAX.i1508, align 8
  %2502 = add i64 %2488, -12
  %2503 = add i64 %2460, 27
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = add i32 %2505, 1
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RDX.i2064, align 8
  %2508 = icmp eq i32 %2505, -1
  %2509 = icmp eq i32 %2506, 0
  %2510 = or i1 %2508, %2509
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %14, align 1
  %2512 = and i32 %2506, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %21, align 1
  %2517 = xor i32 %2506, %2505
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %27, align 1
  %2521 = zext i1 %2509 to i8
  store i8 %2521, i8* %30, align 1
  %2522 = lshr i32 %2506, 31
  %2523 = trunc i32 %2522 to i8
  store i8 %2523, i8* %33, align 1
  %2524 = lshr i32 %2505, 31
  %2525 = xor i32 %2522, %2524
  %2526 = add nuw nsw i32 %2525, %2522
  %2527 = icmp eq i32 %2526, 2
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %39, align 1
  %2529 = sext i32 %2506 to i64
  store i64 %2529, i64* %RCX.i1994, align 8
  %2530 = shl nsw i64 %2529, 2
  %2531 = add nsw i64 %2530, -1248
  %2532 = add i64 %2531, %2488
  %2533 = add i64 %2460, 40
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  store i32 %2500, i32* %2534, align 4
  %2535 = load i64, i64* %3, align 8
  %2536 = add i64 %2535, 25
  store i64 %2536, i64* %3, align 8
  br label %block_.L_400eef

block_.L_400edb:                                  ; preds = %block_400e97
  %2537 = add nsw i64 %2489, -1248
  %2538 = add i64 %2537, %2488
  %2539 = add i64 %2460, 20
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  store i32 0, i32* %2540, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_400eef

block_.L_400eef:                                  ; preds = %block_.L_400edb, %block_400eae
  %2541 = phi i64 [ %.pre181, %block_.L_400edb ], [ %2536, %block_400eae ]
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -4
  %2544 = add i64 %2541, 7
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2543 to i32*
  store i32 1, i32* %2545, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_400ef6

block_.L_400ef6:                                  ; preds = %block_.L_400fc0, %block_.L_400eef
  %2546 = phi i64 [ %.pre182, %block_.L_400eef ], [ %3020, %block_.L_400fc0 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400eef ], [ %MEMORY.20, %block_.L_400fc0 ]
  %2547 = load i64, i64* %RBP.i, align 8
  %2548 = add i64 %2547, -4
  %2549 = add i64 %2546, 3
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RAX.i1508, align 8
  %2553 = add i64 %2547, -12
  %2554 = add i64 %2546, 6
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = add i32 %2556, 1
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RCX.i1994, align 8
  %2559 = icmp eq i32 %2556, -1
  %2560 = icmp eq i32 %2557, 0
  %2561 = or i1 %2559, %2560
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %14, align 1
  %2563 = and i32 %2557, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %21, align 1
  %2568 = xor i32 %2557, %2556
  %2569 = lshr i32 %2568, 4
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  store i8 %2571, i8* %27, align 1
  %2572 = zext i1 %2560 to i8
  store i8 %2572, i8* %30, align 1
  %2573 = lshr i32 %2557, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %33, align 1
  %2575 = lshr i32 %2556, 31
  %2576 = xor i32 %2573, %2575
  %2577 = add nuw nsw i32 %2576, %2573
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %39, align 1
  %2580 = sext i32 %2557 to i64
  store i64 %2580, i64* %RDX.i2064, align 8
  %2581 = shl nsw i64 %2580, 2
  %2582 = add nsw i64 %2581, -1328
  %2583 = add i64 %2582, %2547
  %2584 = add i64 %2546, 19
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  %2586 = load i32, i32* %2585, align 4
  %2587 = sub i32 %2551, %2586
  %2588 = icmp ult i32 %2551, %2586
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %14, align 1
  %2590 = and i32 %2587, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %21, align 1
  %2595 = xor i32 %2586, %2551
  %2596 = xor i32 %2595, %2587
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %27, align 1
  %2600 = icmp eq i32 %2587, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %30, align 1
  %2602 = lshr i32 %2587, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %33, align 1
  %2604 = lshr i32 %2551, 31
  %2605 = lshr i32 %2586, 31
  %2606 = xor i32 %2605, %2604
  %2607 = xor i32 %2602, %2604
  %2608 = add nuw nsw i32 %2607, %2606
  %2609 = icmp eq i32 %2608, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %39, align 1
  %2611 = icmp ne i8 %2603, 0
  %2612 = xor i1 %2611, %2609
  %.demorgan257 = or i1 %2600, %2612
  %.v298 = select i1 %.demorgan257, i64 25, i64 221
  %2613 = add i64 %2546, %.v298
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -12
  %2616 = add i64 %2613, 3
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = add i64 %2613, 6
  store i64 %2619, i64* %3, align 8
  %2620 = add i32 %2618, 1
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RAX.i1508, align 8
  %2622 = icmp eq i32 %2618, -1
  %2623 = icmp eq i32 %2620, 0
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = and i32 %2620, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i32 %2620, %2618
  %2632 = lshr i32 %2631, 4
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %27, align 1
  %2635 = zext i1 %2623 to i8
  store i8 %2635, i8* %30, align 1
  %2636 = lshr i32 %2620, 31
  %2637 = trunc i32 %2636 to i8
  store i8 %2637, i8* %33, align 1
  %2638 = lshr i32 %2618, 31
  %2639 = xor i32 %2636, %2638
  %2640 = add nuw nsw i32 %2639, %2636
  %2641 = icmp eq i32 %2640, 2
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %39, align 1
  br i1 %.demorgan257, label %block_400f0f, label %block_.L_400fd3

block_400f0f:                                     ; preds = %block_.L_400ef6
  %2643 = add i64 %2614, -4
  %2644 = add i64 %2613, 9
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = sub i32 %2620, %2646
  %2648 = zext i32 %2647 to i64
  store i64 %2648, i64* %RAX.i1508, align 8
  %2649 = icmp ult i32 %2620, %2646
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %14, align 1
  %2651 = and i32 %2647, 255
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %21, align 1
  %2656 = xor i32 %2646, %2620
  %2657 = xor i32 %2656, %2647
  %2658 = lshr i32 %2657, 4
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  store i8 %2660, i8* %27, align 1
  %2661 = icmp eq i32 %2647, 0
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %30, align 1
  %2663 = lshr i32 %2647, 31
  %2664 = trunc i32 %2663 to i8
  store i8 %2664, i8* %33, align 1
  %2665 = lshr i32 %2646, 31
  %2666 = xor i32 %2665, %2636
  %2667 = xor i32 %2663, %2636
  %2668 = add nuw nsw i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %39, align 1
  %2671 = sext i32 %2647 to i64
  store i64 %2671, i64* %RCX.i1994, align 8
  %2672 = shl nsw i64 %2671, 2
  %2673 = add nsw i64 %2672, -1488
  %2674 = add i64 %2673, %2614
  %2675 = add i64 %2613, 20
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = add i32 %2677, 1
  %2679 = icmp ne i32 %2677, -1
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %14, align 1
  %2681 = and i32 %2678, 255
  %2682 = tail call i32 @llvm.ctpop.i32(i32 %2681)
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = xor i8 %2684, 1
  store i8 %2685, i8* %21, align 1
  %2686 = xor i32 %2677, 16
  %2687 = xor i32 %2686, %2678
  %2688 = lshr i32 %2687, 4
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  store i8 %2690, i8* %27, align 1
  %2691 = icmp eq i32 %2678, 0
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %30, align 1
  %2693 = lshr i32 %2678, 31
  %2694 = trunc i32 %2693 to i8
  store i8 %2694, i8* %33, align 1
  %2695 = lshr i32 %2677, 31
  %2696 = xor i32 %2695, 1
  %2697 = xor i32 %2693, %2695
  %2698 = add nuw nsw i32 %2697, %2696
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %39, align 1
  %.v299 = select i1 %2691, i64 177, i64 26
  %2701 = add i64 %2613, %.v299
  store i64 %2701, i64* %3, align 8
  br i1 %2691, label %block_.L_400fc0, label %block_400f29

block_400f29:                                     ; preds = %block_400f0f
  %2702 = add i64 %2614, -1168
  store i64 %2702, i64* %RAX.i1508, align 8
  %2703 = add i64 %2701, 10
  store i64 %2703, i64* %3, align 8
  %2704 = load i32, i32* %2617, align 4
  %2705 = add i32 %2704, 1
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i1994, align 8
  %2707 = sext i32 %2705 to i64
  %2708 = shl nsw i64 %2707, 6
  store i64 %2708, i64* %RDX.i2064, align 8
  %2709 = add i64 %2708, %2702
  store i64 %2709, i64* %RAX.i1508, align 8
  %2710 = icmp ult i64 %2709, %2702
  %2711 = icmp ult i64 %2709, %2708
  %2712 = or i1 %2710, %2711
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %14, align 1
  %2714 = trunc i64 %2709 to i32
  %2715 = and i32 %2714, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %21, align 1
  %2720 = xor i64 %2702, %2709
  %2721 = lshr i64 %2720, 4
  %2722 = trunc i64 %2721 to i8
  %2723 = and i8 %2722, 1
  store i8 %2723, i8* %27, align 1
  %2724 = icmp eq i64 %2709, 0
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %30, align 1
  %2726 = lshr i64 %2709, 63
  %2727 = trunc i64 %2726 to i8
  store i8 %2727, i8* %33, align 1
  %2728 = lshr i64 %2702, 63
  %2729 = lshr i64 %2707, 57
  %2730 = and i64 %2729, 1
  %2731 = xor i64 %2726, %2728
  %2732 = xor i64 %2726, %2730
  %2733 = add nuw nsw i64 %2731, %2732
  %2734 = icmp eq i64 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %39, align 1
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -4
  %2738 = add i64 %2701, 27
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = sext i32 %2740 to i64
  store i64 %2741, i64* %RDX.i2064, align 8
  %2742 = shl nsw i64 %2741, 2
  %2743 = add i64 %2742, %2709
  %2744 = add i64 %2701, 31
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  store i8 0, i8* %14, align 1
  %2747 = and i32 %2746, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2752 = icmp eq i32 %2746, 0
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %30, align 1
  %2754 = lshr i32 %2746, 31
  %2755 = trunc i32 %2754 to i8
  store i8 %2755, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v300 = select i1 %2752, i64 151, i64 37
  %2756 = add i64 %2701, %.v300
  store i64 %2756, i64* %3, align 8
  br i1 %2752, label %block_.L_400fc0, label %block_400f4e

block_400f4e:                                     ; preds = %block_400f29
  store i64 255, i64* %RAX.i1508, align 8
  %2757 = add i64 %2736, -1168
  store i64 %2757, i64* %RCX.i1994, align 8
  %2758 = add i64 %2736, -12
  %2759 = add i64 %2756, 15
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = add i32 %2761, 1
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RDX.i2064, align 8
  %2764 = icmp eq i32 %2761, -1
  %2765 = icmp eq i32 %2762, 0
  %2766 = or i1 %2764, %2765
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %14, align 1
  %2768 = and i32 %2762, 255
  %2769 = tail call i32 @llvm.ctpop.i32(i32 %2768)
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = xor i8 %2771, 1
  store i8 %2772, i8* %21, align 1
  %2773 = xor i32 %2762, %2761
  %2774 = lshr i32 %2773, 4
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  store i8 %2776, i8* %27, align 1
  %2777 = zext i1 %2765 to i8
  store i8 %2777, i8* %30, align 1
  %2778 = lshr i32 %2762, 31
  %2779 = trunc i32 %2778 to i8
  store i8 %2779, i8* %33, align 1
  %2780 = lshr i32 %2761, 31
  %2781 = xor i32 %2778, %2780
  %2782 = add nuw nsw i32 %2781, %2778
  %2783 = icmp eq i32 %2782, 2
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %39, align 1
  %2785 = add i64 %2756, 21
  store i64 %2785, i64* %3, align 8
  %2786 = load i32, i32* %2739, align 4
  %2787 = sub i32 %2762, %2786
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RDX.i2064, align 8
  %2789 = icmp ult i32 %2762, %2786
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %14, align 1
  %2791 = and i32 %2787, 255
  %2792 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %21, align 1
  %2796 = xor i32 %2786, %2762
  %2797 = xor i32 %2796, %2787
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %27, align 1
  %2801 = icmp eq i32 %2787, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %30, align 1
  %2803 = lshr i32 %2787, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %33, align 1
  %2805 = lshr i32 %2786, 31
  %2806 = xor i32 %2805, %2778
  %2807 = xor i32 %2803, %2778
  %2808 = add nuw nsw i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %39, align 1
  %2811 = sext i32 %2787 to i64
  store i64 %2811, i64* %RSI.i1201, align 8
  %2812 = shl nsw i64 %2811, 2
  %2813 = add nsw i64 %2812, -1488
  %2814 = add i64 %2813, %2736
  %2815 = add i64 %2756, 31
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RDX.i2064, align 8
  %2819 = add i64 %2756, 34
  store i64 %2819, i64* %3, align 8
  %2820 = load i32, i32* %2760, align 4
  %2821 = add i32 %2820, 1
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RDI.i1421, align 8
  %2823 = sext i32 %2821 to i64
  %2824 = shl nsw i64 %2823, 6
  store i64 %2824, i64* %RSI.i1201, align 8
  %2825 = load i64, i64* %RCX.i1994, align 8
  %2826 = add i64 %2824, %2825
  store i64 %2826, i64* %RCX.i1994, align 8
  %2827 = icmp ult i64 %2826, %2825
  %2828 = icmp ult i64 %2826, %2824
  %2829 = or i1 %2827, %2828
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %14, align 1
  %2831 = trunc i64 %2826 to i32
  %2832 = and i32 %2831, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %21, align 1
  %2837 = xor i64 %2825, %2826
  %2838 = lshr i64 %2837, 4
  %2839 = trunc i64 %2838 to i8
  %2840 = and i8 %2839, 1
  store i8 %2840, i8* %27, align 1
  %2841 = icmp eq i64 %2826, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %30, align 1
  %2843 = lshr i64 %2826, 63
  %2844 = trunc i64 %2843 to i8
  store i8 %2844, i8* %33, align 1
  %2845 = lshr i64 %2825, 63
  %2846 = lshr i64 %2823, 57
  %2847 = and i64 %2846, 1
  %2848 = xor i64 %2843, %2845
  %2849 = xor i64 %2843, %2847
  %2850 = add nuw nsw i64 %2848, %2849
  %2851 = icmp eq i64 %2850, 2
  %2852 = zext i1 %2851 to i8
  store i8 %2852, i8* %39, align 1
  %2853 = load i64, i64* %RBP.i, align 8
  %2854 = add i64 %2853, -4
  %2855 = add i64 %2756, 51
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  %2857 = load i32, i32* %2856, align 4
  %2858 = sext i32 %2857 to i64
  store i64 %2858, i64* %RSI.i1201, align 8
  %2859 = shl nsw i64 %2858, 2
  %2860 = add i64 %2859, %2826
  %2861 = add i64 %2756, 55
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = sext i32 %2863 to i64
  store i64 %2864, i64* %RCX.i1994, align 8
  %2865 = load i64, i64* %RDX.i2064, align 8
  %2866 = shl nsw i64 %2864, 2
  %2867 = add i64 %2866, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %2868 = add i64 %2756, 62
  store i64 %2868, i64* %3, align 8
  %2869 = trunc i64 %2865 to i32
  %2870 = inttoptr i64 %2867 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = add i32 %2871, %2869
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RDX.i2064, align 8
  %2874 = icmp ult i32 %2872, %2869
  %2875 = icmp ult i32 %2872, %2871
  %2876 = or i1 %2874, %2875
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %14, align 1
  %2878 = and i32 %2872, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %21, align 1
  %2883 = xor i32 %2871, %2869
  %2884 = xor i32 %2883, %2872
  %2885 = lshr i32 %2884, 4
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  store i8 %2887, i8* %27, align 1
  %2888 = icmp eq i32 %2872, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %30, align 1
  %2890 = lshr i32 %2872, 31
  %2891 = trunc i32 %2890 to i8
  store i8 %2891, i8* %33, align 1
  %2892 = lshr i32 %2869, 31
  %2893 = lshr i32 %2871, 31
  %2894 = xor i32 %2890, %2892
  %2895 = xor i32 %2890, %2893
  %2896 = add nuw nsw i32 %2894, %2895
  %2897 = icmp eq i32 %2896, 2
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %39, align 1
  %2899 = add i64 %2853, -2708
  %2900 = load i32, i32* %EAX.i2012, align 4
  %2901 = add i64 %2756, 68
  store i64 %2901, i64* %3, align 8
  %2902 = inttoptr i64 %2899 to i32*
  store i32 %2900, i32* %2902, align 4
  %2903 = load i32, i32* %EDX.i2048, align 4
  %2904 = zext i32 %2903 to i64
  %2905 = load i64, i64* %3, align 8
  store i64 %2904, i64* %RAX.i1508, align 8
  %2906 = sext i32 %2903 to i64
  %2907 = lshr i64 %2906, 32
  store i64 %2907, i64* %56, align 8
  %2908 = load i64, i64* %RBP.i, align 8
  %2909 = add i64 %2908, -2708
  %2910 = add i64 %2905, 9
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i32*
  %2912 = load i32, i32* %2911, align 4
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RDI.i1421, align 8
  %2914 = add i64 %2905, 11
  store i64 %2914, i64* %3, align 8
  %2915 = sext i32 %2912 to i64
  %2916 = shl nuw i64 %2907, 32
  %2917 = or i64 %2916, %2904
  %2918 = sdiv i64 %2917, %2915
  %2919 = shl i64 %2918, 32
  %2920 = ashr exact i64 %2919, 32
  %2921 = icmp eq i64 %2918, %2920
  br i1 %2921, label %2924, label %2922

; <label>:2922:                                   ; preds = %block_400f4e
  %2923 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2914, %struct.Memory* %MEMORY.19)
  %.pre183 = load i32, i32* %EDX.i2048, align 4
  %.pre184 = load i64, i64* %3, align 8
  %.pre185 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:2924:                                   ; preds = %block_400f4e
  %2925 = srem i64 %2917, %2915
  %2926 = and i64 %2918, 4294967295
  store i64 %2926, i64* %RAX.i1508, align 8
  %2927 = and i64 %2925, 4294967295
  store i64 %2927, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2928 = trunc i64 %2925 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %2924, %2922
  %2929 = phi i64 [ %.pre185, %2922 ], [ %2908, %2924 ]
  %2930 = phi i64 [ %.pre184, %2922 ], [ %2914, %2924 ]
  %2931 = phi i32 [ %.pre183, %2922 ], [ %2928, %2924 ]
  %2932 = phi %struct.Memory* [ %2923, %2922 ], [ %MEMORY.19, %2924 ]
  %2933 = sext i32 %2931 to i64
  store i64 %2933, i64* %RCX.i1994, align 8
  %2934 = shl nsw i64 %2933, 2
  %2935 = add i64 %2934, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %2936 = add i64 %2930, 10
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i32*
  %2938 = load i32, i32* %2937, align 4
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RDX.i2064, align 8
  %2940 = add i64 %2929, -12
  %2941 = add i64 %2930, 14
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = add i32 %2943, 1
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %543, align 8
  %2946 = icmp eq i32 %2943, -1
  %2947 = icmp eq i32 %2944, 0
  %2948 = or i1 %2946, %2947
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %14, align 1
  %2950 = and i32 %2944, 255
  %2951 = tail call i32 @llvm.ctpop.i32(i32 %2950)
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  %2954 = xor i8 %2953, 1
  store i8 %2954, i8* %21, align 1
  %2955 = xor i32 %2944, %2943
  %2956 = lshr i32 %2955, 4
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  store i8 %2958, i8* %27, align 1
  %2959 = zext i1 %2947 to i8
  store i8 %2959, i8* %30, align 1
  %2960 = lshr i32 %2944, 31
  %2961 = trunc i32 %2960 to i8
  store i8 %2961, i8* %33, align 1
  %2962 = lshr i32 %2943, 31
  %2963 = xor i32 %2960, %2962
  %2964 = add nuw nsw i32 %2963, %2960
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %39, align 1
  %2967 = sext i32 %2944 to i64
  store i64 %2967, i64* %RCX.i1994, align 8
  %2968 = shl nsw i64 %2967, 2
  %2969 = add nsw i64 %2968, -1248
  %2970 = add i64 %2969, %2929
  %2971 = add i64 %2930, 28
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = xor i32 %2973, %2938
  %2975 = zext i32 %2974 to i64
  store i64 %2975, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %2976 = and i32 %2974, 255
  %2977 = tail call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  store i8 %2980, i8* %21, align 1
  %2981 = icmp eq i32 %2974, 0
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %30, align 1
  %2983 = lshr i32 %2974, 31
  %2984 = trunc i32 %2983 to i8
  store i8 %2984, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2985 = add i64 %2929, -1248
  %2986 = add i64 %2985, %2968
  %2987 = add i64 %2930, 35
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  store i32 %2974, i32* %2988, align 4
  %.pre186 = load i64, i64* %3, align 8
  %.pre187 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fc0

block_.L_400fc0:                                  ; preds = %routine_idivl__edi.exit, %block_400f29, %block_400f0f
  %2989 = phi i64 [ %2614, %block_400f0f ], [ %2736, %block_400f29 ], [ %.pre187, %routine_idivl__edi.exit ]
  %2990 = phi i64 [ %2701, %block_400f0f ], [ %2756, %block_400f29 ], [ %.pre186, %routine_idivl__edi.exit ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_400f0f ], [ %MEMORY.19, %block_400f29 ], [ %2932, %routine_idivl__edi.exit ]
  %2991 = add i64 %2989, -4
  %2992 = add i64 %2990, 8
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = add i32 %2994, 1
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %RAX.i1508, align 8
  %2997 = icmp eq i32 %2994, -1
  %2998 = icmp eq i32 %2995, 0
  %2999 = or i1 %2997, %2998
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %14, align 1
  %3001 = and i32 %2995, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  %3006 = xor i32 %2995, %2994
  %3007 = lshr i32 %3006, 4
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  store i8 %3009, i8* %27, align 1
  %3010 = zext i1 %2998 to i8
  store i8 %3010, i8* %30, align 1
  %3011 = lshr i32 %2995, 31
  %3012 = trunc i32 %3011 to i8
  store i8 %3012, i8* %33, align 1
  %3013 = lshr i32 %2994, 31
  %3014 = xor i32 %3011, %3013
  %3015 = add nuw nsw i32 %3014, %3011
  %3016 = icmp eq i32 %3015, 2
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %39, align 1
  %3018 = add i64 %2990, 14
  store i64 %3018, i64* %3, align 8
  store i32 %2995, i32* %2993, align 4
  %3019 = load i64, i64* %3, align 8
  %3020 = add i64 %3019, -216
  store i64 %3020, i64* %3, align 8
  br label %block_.L_400ef6

block_.L_400fd3:                                  ; preds = %block_.L_400ef6
  %3021 = sext i32 %2620 to i64
  store i64 %3021, i64* %RCX.i1994, align 8
  %3022 = shl nsw i64 %3021, 2
  %3023 = add nsw i64 %3022, -1248
  %3024 = add i64 %3023, %2614
  %3025 = add i64 %2613, 17
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3024 to i32*
  %3027 = load i32, i32* %3026, align 4
  %3028 = sext i32 %3027 to i64
  store i64 %3028, i64* %RCX.i1994, align 8
  %3029 = shl nsw i64 %3028, 2
  %3030 = add i64 %3029, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %3031 = add i64 %2613, 24
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RAX.i1508, align 8
  %3035 = add i64 %2613, 27
  store i64 %3035, i64* %3, align 8
  %3036 = load i32, i32* %2617, align 4
  %3037 = add i32 %3036, 1
  %3038 = zext i32 %3037 to i64
  store i64 %3038, i64* %RDX.i2064, align 8
  %3039 = icmp eq i32 %3036, -1
  %3040 = icmp eq i32 %3037, 0
  %3041 = or i1 %3039, %3040
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %14, align 1
  %3043 = and i32 %3037, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %21, align 1
  %3048 = xor i32 %3037, %3036
  %3049 = lshr i32 %3048, 4
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  store i8 %3051, i8* %27, align 1
  %3052 = zext i1 %3040 to i8
  store i8 %3052, i8* %30, align 1
  %3053 = lshr i32 %3037, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %33, align 1
  %3055 = lshr i32 %3036, 31
  %3056 = xor i32 %3053, %3055
  %3057 = add nuw nsw i32 %3056, %3053
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %39, align 1
  %3060 = sext i32 %3037 to i64
  store i64 %3060, i64* %RCX.i1994, align 8
  %3061 = shl nsw i64 %3060, 2
  %3062 = add nsw i64 %3061, -1248
  %3063 = add i64 %3062, %2614
  %3064 = add i64 %2613, 40
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  store i32 %3033, i32* %3065, align 4
  %.pre188 = load i64, i64* %3, align 8
  %.pre189 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ffb

block_.L_400ffb:                                  ; preds = %block_.L_400e6a, %block_.L_400fd3
  %3066 = phi i64 [ %2374, %block_.L_400e6a ], [ %.pre189, %block_.L_400fd3 ]
  %3067 = phi i64 [ %2404, %block_.L_400e6a ], [ %.pre188, %block_.L_400fd3 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400e6a ], [ %MEMORY.19, %block_.L_400fd3 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %3068 = add i64 %3066, -12
  %3069 = add i64 %3067, 13
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = add i32 %3071, -16
  %3073 = icmp ult i32 %3071, 16
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %14, align 1
  %3075 = and i32 %3072, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %21, align 1
  %3080 = xor i32 %3071, 16
  %3081 = xor i32 %3080, %3072
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %27, align 1
  %3085 = icmp eq i32 %3072, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %30, align 1
  %3087 = lshr i32 %3072, 31
  %3088 = trunc i32 %3087 to i8
  store i8 %3088, i8* %33, align 1
  %3089 = lshr i32 %3071, 31
  %3090 = xor i32 %3087, %3089
  %3091 = add nuw nsw i32 %3090, %3089
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %39, align 1
  %3094 = add i64 %3066, -2709
  %3095 = add i64 %3067, 19
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i8*
  store i8 0, i8* %3096, align 1
  %3097 = load i64, i64* %3, align 8
  %3098 = add i64 %3097, 32
  %3099 = add i64 %3097, 6
  %3100 = load i8, i8* %33, align 1
  %3101 = icmp ne i8 %3100, 0
  %3102 = load i8, i8* %39, align 1
  %3103 = icmp ne i8 %3102, 0
  %3104 = xor i1 %3101, %3103
  %3105 = select i1 %3104, i64 %3099, i64 %3098
  store i64 %3105, i64* %3, align 8
  br i1 %3104, label %block_401014, label %block_.L_40102e

block_401014:                                     ; preds = %block_.L_400ffb
  %3106 = load i64, i64* %RBP.i, align 8
  %3107 = add i64 %3106, -12
  %3108 = add i64 %3105, 3
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = add i32 %3110, 1
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RAX.i1508, align 8
  %3113 = icmp eq i32 %3110, -1
  %3114 = icmp eq i32 %3111, 0
  %3115 = or i1 %3113, %3114
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %14, align 1
  %3117 = and i32 %3111, 255
  %3118 = tail call i32 @llvm.ctpop.i32(i32 %3117)
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  store i8 %3121, i8* %21, align 1
  %3122 = xor i32 %3111, %3110
  %3123 = lshr i32 %3122, 4
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  store i8 %3125, i8* %27, align 1
  %3126 = zext i1 %3114 to i8
  store i8 %3126, i8* %30, align 1
  %3127 = lshr i32 %3111, 31
  %3128 = trunc i32 %3127 to i8
  store i8 %3128, i8* %33, align 1
  %3129 = lshr i32 %3110, 31
  %3130 = xor i32 %3127, %3129
  %3131 = add nuw nsw i32 %3130, %3127
  %3132 = icmp eq i32 %3131, 2
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %39, align 1
  %3134 = sext i32 %3111 to i64
  store i64 %3134, i64* %RCX.i1994, align 8
  %3135 = shl nsw i64 %3134, 2
  %3136 = add nsw i64 %3135, -1328
  %3137 = add i64 %3136, %3106
  %3138 = add i64 %3105, 17
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = add i32 %3140, -8
  %3142 = icmp ult i32 %3140, 8
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %14, align 1
  %3144 = and i32 %3141, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %21, align 1
  %3149 = xor i32 %3141, %3140
  %3150 = lshr i32 %3149, 4
  %3151 = trunc i32 %3150 to i8
  %3152 = and i8 %3151, 1
  store i8 %3152, i8* %27, align 1
  %3153 = icmp eq i32 %3141, 0
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %30, align 1
  %3155 = lshr i32 %3141, 31
  %3156 = trunc i32 %3155 to i8
  store i8 %3156, i8* %33, align 1
  %3157 = lshr i32 %3140, 31
  %3158 = xor i32 %3155, %3157
  %3159 = add nuw nsw i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %39, align 1
  %3162 = icmp ne i8 %3156, 0
  %3163 = xor i1 %3162, %3160
  %3164 = or i1 %3153, %3163
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %DL.i1081, align 1
  %3166 = add i64 %3106, -2709
  %3167 = add i64 %3105, 26
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i8*
  store i8 %3165, i8* %3168, align 1
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_40102e

block_.L_40102e:                                  ; preds = %block_.L_400ffb, %block_401014
  %3169 = phi i64 [ %3098, %block_.L_400ffb ], [ %.pre190, %block_401014 ]
  %3170 = load i64, i64* %RBP.i, align 8
  %3171 = add i64 %3170, -2709
  %3172 = add i64 %3169, 6
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i8*
  %3174 = load i8, i8* %3173, align 1
  store i8 %3174, i8* %AL.i1776, align 1
  %3175 = and i8 %3174, 1
  store i8 0, i8* %14, align 1
  %3176 = zext i8 %3175 to i32
  %3177 = tail call i32 @llvm.ctpop.i32(i32 %3176)
  %3178 = trunc i32 %3177 to i8
  %3179 = xor i8 %3178, 1
  store i8 %3179, i8* %21, align 1
  %3180 = xor i8 %3175, 1
  store i8 %3180, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3181 = icmp eq i8 %3180, 0
  %.v275 = select i1 %3181, i64 -1349, i64 14
  %3182 = add i64 %3169, %.v275
  store i64 %3182, i64* %3, align 8
  br i1 %3181, label %block_.L_400ae9, label %block_40103c

block_40103c:                                     ; preds = %block_.L_40102e
  %3183 = add i64 %3170, -12
  %3184 = add i64 %3182, 3
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, 1
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX.i1508, align 8
  %3189 = icmp eq i32 %3186, -1
  %3190 = icmp eq i32 %3187, 0
  %3191 = or i1 %3189, %3190
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %14, align 1
  %3193 = and i32 %3187, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193)
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %21, align 1
  %3198 = xor i32 %3187, %3186
  %3199 = lshr i32 %3198, 4
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  store i8 %3201, i8* %27, align 1
  %3202 = zext i1 %3190 to i8
  store i8 %3202, i8* %30, align 1
  %3203 = lshr i32 %3187, 31
  %3204 = trunc i32 %3203 to i8
  store i8 %3204, i8* %33, align 1
  %3205 = lshr i32 %3186, 31
  %3206 = xor i32 %3203, %3205
  %3207 = add nuw nsw i32 %3206, %3203
  %3208 = icmp eq i32 %3207, 2
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %39, align 1
  %3210 = add i64 %3182, 9
  store i64 %3210, i64* %3, align 8
  store i32 %3187, i32* %3185, align 4
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -12
  %3213 = load i64, i64* %3, align 8
  %3214 = add i64 %3213, 4
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3212 to i32*
  %3216 = load i32, i32* %3215, align 4
  %3217 = sext i32 %3216 to i64
  store i64 %3217, i64* %RCX.i1994, align 8
  %3218 = shl nsw i64 %3217, 2
  %3219 = add i64 %3211, -1328
  %3220 = add i64 %3219, %3218
  %3221 = add i64 %3213, 12
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  %3223 = load i32, i32* %3222, align 4
  %3224 = add i32 %3223, -8
  %3225 = icmp ult i32 %3223, 8
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %14, align 1
  %3227 = and i32 %3224, 255
  %3228 = tail call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  store i8 %3231, i8* %21, align 1
  %3232 = xor i32 %3224, %3223
  %3233 = lshr i32 %3232, 4
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  store i8 %3235, i8* %27, align 1
  %3236 = icmp eq i32 %3224, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %30, align 1
  %3238 = lshr i32 %3224, 31
  %3239 = trunc i32 %3238 to i8
  store i8 %3239, i8* %33, align 1
  %3240 = lshr i32 %3223, 31
  %3241 = xor i32 %3238, %3240
  %3242 = add nuw nsw i32 %3241, %3240
  %3243 = icmp eq i32 %3242, 2
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %39, align 1
  %3245 = icmp ne i8 %3239, 0
  %3246 = xor i1 %3245, %3243
  %.demorgan241 = or i1 %3236, %3246
  %.v = select i1 %.demorgan241, i64 18, i64 1859
  %3247 = add i64 %3213, %.v
  %3248 = add i64 %3211, -4
  %3249 = add i64 %3247, 7
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  store i32 0, i32* %3250, align 4
  %.pre191 = load i64, i64* %3, align 8
  br i1 %.demorgan241, label %block_.L_40105e.preheader, label %block_.L_40178f.preheader

block_.L_40178f.preheader:                        ; preds = %block_40103c
  br label %block_.L_40178f

block_.L_40105e.preheader:                        ; preds = %block_40103c
  br label %block_.L_40105e

block_.L_40105e:                                  ; preds = %block_.L_40105e.preheader, %block_401072
  %3251 = phi i64 [ %3416, %block_401072 ], [ %.pre191, %block_.L_40105e.preheader ]
  %3252 = load i64, i64* %RBP.i, align 8
  %3253 = add i64 %3252, -4
  %3254 = add i64 %3251, 3
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = zext i32 %3256 to i64
  store i64 %3257, i64* %RAX.i1508, align 8
  %3258 = add i64 %3252, -12
  %3259 = add i64 %3251, 7
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  %3262 = sext i32 %3261 to i64
  store i64 %3262, i64* %RCX.i1994, align 8
  %3263 = shl nsw i64 %3262, 2
  %3264 = add nsw i64 %3263, -1328
  %3265 = add i64 %3264, %3252
  %3266 = add i64 %3251, 14
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i32*
  %3268 = load i32, i32* %3267, align 4
  %3269 = sub i32 %3256, %3268
  %3270 = icmp ult i32 %3256, %3268
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %14, align 1
  %3272 = and i32 %3269, 255
  %3273 = tail call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  store i8 %3276, i8* %21, align 1
  %3277 = xor i32 %3268, %3256
  %3278 = xor i32 %3277, %3269
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %27, align 1
  %3282 = icmp eq i32 %3269, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %30, align 1
  %3284 = lshr i32 %3269, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %33, align 1
  %3286 = lshr i32 %3256, 31
  %3287 = lshr i32 %3268, 31
  %3288 = xor i32 %3287, %3286
  %3289 = xor i32 %3284, %3286
  %3290 = add nuw nsw i32 %3289, %3288
  %3291 = icmp eq i32 %3290, 2
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %39, align 1
  %3293 = icmp ne i8 %3285, 0
  %3294 = xor i1 %3293, %3291
  %.demorgan242 = or i1 %3282, %3294
  %.v276 = select i1 %.demorgan242, i64 20, i64 88
  %3295 = add i64 %3251, %.v276
  store i64 %3295, i64* %3, align 8
  br i1 %.demorgan242, label %block_401072, label %block_.L_4010b6

block_401072:                                     ; preds = %block_.L_40105e
  %3296 = add i64 %3252, -1168
  store i64 %3296, i64* %RAX.i1508, align 8
  %3297 = add i64 %3295, 11
  store i64 %3297, i64* %3, align 8
  %3298 = load i32, i32* %3260, align 4
  %3299 = sext i32 %3298 to i64
  %3300 = shl nsw i64 %3299, 6
  store i64 %3300, i64* %RCX.i1994, align 8
  %3301 = add i64 %3300, %3296
  store i64 %3301, i64* %RDX.i2064, align 8
  %3302 = icmp ult i64 %3301, %3296
  %3303 = icmp ult i64 %3301, %3300
  %3304 = or i1 %3302, %3303
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %14, align 1
  %3306 = trunc i64 %3301 to i32
  %3307 = and i32 %3306, 255
  %3308 = tail call i32 @llvm.ctpop.i32(i32 %3307)
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = xor i8 %3310, 1
  store i8 %3311, i8* %21, align 1
  %3312 = xor i64 %3296, %3301
  %3313 = lshr i64 %3312, 4
  %3314 = trunc i64 %3313 to i8
  %3315 = and i8 %3314, 1
  store i8 %3315, i8* %27, align 1
  %3316 = icmp eq i64 %3301, 0
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %30, align 1
  %3318 = lshr i64 %3301, 63
  %3319 = trunc i64 %3318 to i8
  store i8 %3319, i8* %33, align 1
  %3320 = lshr i64 %3296, 63
  %3321 = lshr i64 %3299, 57
  %3322 = and i64 %3321, 1
  %3323 = xor i64 %3318, %3320
  %3324 = xor i64 %3318, %3322
  %3325 = add nuw nsw i64 %3323, %3324
  %3326 = icmp eq i64 %3325, 2
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %39, align 1
  %3328 = add i64 %3295, 25
  store i64 %3328, i64* %3, align 8
  %3329 = load i32, i32* %3255, align 4
  %3330 = sext i32 %3329 to i64
  store i64 %3330, i64* %RCX.i1994, align 8
  %3331 = shl nsw i64 %3330, 2
  %3332 = add i64 %3331, %3301
  %3333 = add i64 %3295, 29
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = sext i32 %3335 to i64
  store i64 %3336, i64* %RCX.i1994, align 8
  %3337 = shl nsw i64 %3336, 2
  %3338 = add i64 %3337, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %3339 = add i64 %3295, 36
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i32*
  %3341 = load i32, i32* %3340, align 4
  %3342 = zext i32 %3341 to i64
  store i64 %3342, i64* %RSI.i2060, align 8
  %3343 = add i64 %3295, 40
  store i64 %3343, i64* %3, align 8
  %3344 = load i32, i32* %3260, align 4
  %3345 = sext i32 %3344 to i64
  %3346 = shl nsw i64 %3345, 6
  store i64 %3346, i64* %RCX.i1994, align 8
  %3347 = load i64, i64* %RAX.i1508, align 8
  %3348 = add i64 %3346, %3347
  store i64 %3348, i64* %RAX.i1508, align 8
  %3349 = icmp ult i64 %3348, %3347
  %3350 = icmp ult i64 %3348, %3346
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %14, align 1
  %3353 = trunc i64 %3348 to i32
  %3354 = and i32 %3353, 255
  %3355 = tail call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  store i8 %3358, i8* %21, align 1
  %3359 = xor i64 %3347, %3348
  %3360 = lshr i64 %3359, 4
  %3361 = trunc i64 %3360 to i8
  %3362 = and i8 %3361, 1
  store i8 %3362, i8* %27, align 1
  %3363 = icmp eq i64 %3348, 0
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %30, align 1
  %3365 = lshr i64 %3348, 63
  %3366 = trunc i64 %3365 to i8
  store i8 %3366, i8* %33, align 1
  %3367 = lshr i64 %3347, 63
  %3368 = lshr i64 %3345, 57
  %3369 = and i64 %3368, 1
  %3370 = xor i64 %3365, %3367
  %3371 = xor i64 %3365, %3369
  %3372 = add nuw nsw i64 %3370, %3371
  %3373 = icmp eq i64 %3372, 2
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %39, align 1
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -4
  %3377 = add i64 %3295, 51
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  store i64 %3380, i64* %RCX.i1994, align 8
  %3381 = shl nsw i64 %3380, 2
  %3382 = add i64 %3381, %3348
  %3383 = add i64 %3295, 54
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  store i32 %3341, i32* %3384, align 4
  %3385 = load i64, i64* %RBP.i, align 8
  %3386 = add i64 %3385, -4
  %3387 = load i64, i64* %3, align 8
  %3388 = add i64 %3387, 3
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = add i32 %3390, 1
  %3392 = zext i32 %3391 to i64
  store i64 %3392, i64* %RAX.i1508, align 8
  %3393 = icmp eq i32 %3390, -1
  %3394 = icmp eq i32 %3391, 0
  %3395 = or i1 %3393, %3394
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %14, align 1
  %3397 = and i32 %3391, 255
  %3398 = tail call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  store i8 %3401, i8* %21, align 1
  %3402 = xor i32 %3391, %3390
  %3403 = lshr i32 %3402, 4
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  store i8 %3405, i8* %27, align 1
  %3406 = zext i1 %3394 to i8
  store i8 %3406, i8* %30, align 1
  %3407 = lshr i32 %3391, 31
  %3408 = trunc i32 %3407 to i8
  store i8 %3408, i8* %33, align 1
  %3409 = lshr i32 %3390, 31
  %3410 = xor i32 %3407, %3409
  %3411 = add nuw nsw i32 %3410, %3407
  %3412 = icmp eq i32 %3411, 2
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %39, align 1
  %3414 = add i64 %3387, 9
  store i64 %3414, i64* %3, align 8
  store i32 %3391, i32* %3389, align 4
  %3415 = load i64, i64* %3, align 8
  %3416 = add i64 %3415, -83
  store i64 %3416, i64* %3, align 8
  br label %block_.L_40105e

block_.L_4010b6:                                  ; preds = %block_.L_40105e
  %3417 = add i64 %3295, 7
  store i64 %3417, i64* %3, align 8
  store i32 1, i32* %3255, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_4010bd

block_.L_4010bd:                                  ; preds = %block_4010d1, %block_.L_4010b6
  %3418 = phi i64 [ %3543, %block_4010d1 ], [ %.pre192, %block_.L_4010b6 ]
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -4
  %3421 = add i64 %3418, 3
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = zext i32 %3423 to i64
  store i64 %3424, i64* %RAX.i1508, align 8
  %3425 = add i64 %3419, -12
  %3426 = add i64 %3418, 7
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i32*
  %3428 = load i32, i32* %3427, align 4
  %3429 = sext i32 %3428 to i64
  store i64 %3429, i64* %RCX.i1994, align 8
  %3430 = shl nsw i64 %3429, 2
  %3431 = add nsw i64 %3430, -1328
  %3432 = add i64 %3431, %3419
  %3433 = add i64 %3418, 14
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = sub i32 %3423, %3435
  %3437 = icmp ult i32 %3423, %3435
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %14, align 1
  %3439 = and i32 %3436, 255
  %3440 = tail call i32 @llvm.ctpop.i32(i32 %3439)
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  %3443 = xor i8 %3442, 1
  store i8 %3443, i8* %21, align 1
  %3444 = xor i32 %3435, %3423
  %3445 = xor i32 %3444, %3436
  %3446 = lshr i32 %3445, 4
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  store i8 %3448, i8* %27, align 1
  %3449 = icmp eq i32 %3436, 0
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %30, align 1
  %3451 = lshr i32 %3436, 31
  %3452 = trunc i32 %3451 to i8
  store i8 %3452, i8* %33, align 1
  %3453 = lshr i32 %3423, 31
  %3454 = lshr i32 %3435, 31
  %3455 = xor i32 %3454, %3453
  %3456 = xor i32 %3451, %3453
  %3457 = add nuw nsw i32 %3456, %3455
  %3458 = icmp eq i32 %3457, 2
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %39, align 1
  %3460 = icmp ne i8 %3452, 0
  %3461 = xor i1 %3460, %3458
  %.demorgan243 = or i1 %3449, %3461
  %.v277 = select i1 %.demorgan243, i64 20, i64 70
  %3462 = add i64 %3418, %.v277
  store i64 %3462, i64* %3, align 8
  br i1 %.demorgan243, label %block_4010d1, label %block_.L_401103

block_4010d1:                                     ; preds = %block_.L_4010bd
  %3463 = add i64 %3419, -1168
  store i64 %3463, i64* %RAX.i1508, align 8
  %3464 = add i64 %3462, 11
  store i64 %3464, i64* %3, align 8
  %3465 = load i32, i32* %3427, align 4
  %3466 = sext i32 %3465 to i64
  %3467 = shl nsw i64 %3466, 6
  store i64 %3467, i64* %RCX.i1994, align 8
  %3468 = add i64 %3467, %3463
  store i64 %3468, i64* %RAX.i1508, align 8
  %3469 = icmp ult i64 %3468, %3463
  %3470 = icmp ult i64 %3468, %3467
  %3471 = or i1 %3469, %3470
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %14, align 1
  %3473 = trunc i64 %3468 to i32
  %3474 = and i32 %3473, 255
  %3475 = tail call i32 @llvm.ctpop.i32(i32 %3474)
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = xor i8 %3477, 1
  store i8 %3478, i8* %21, align 1
  %3479 = xor i64 %3463, %3468
  %3480 = lshr i64 %3479, 4
  %3481 = trunc i64 %3480 to i8
  %3482 = and i8 %3481, 1
  store i8 %3482, i8* %27, align 1
  %3483 = icmp eq i64 %3468, 0
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %30, align 1
  %3485 = lshr i64 %3468, 63
  %3486 = trunc i64 %3485 to i8
  store i8 %3486, i8* %33, align 1
  %3487 = lshr i64 %3463, 63
  %3488 = lshr i64 %3466, 57
  %3489 = and i64 %3488, 1
  %3490 = xor i64 %3485, %3487
  %3491 = xor i64 %3485, %3489
  %3492 = add nuw nsw i64 %3490, %3491
  %3493 = icmp eq i64 %3492, 2
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %39, align 1
  %3495 = add i64 %3462, 22
  store i64 %3495, i64* %3, align 8
  %3496 = load i32, i32* %3422, align 4
  %3497 = sext i32 %3496 to i64
  store i64 %3497, i64* %RCX.i1994, align 8
  %3498 = shl nsw i64 %3497, 2
  %3499 = add i64 %3498, %3468
  %3500 = add i64 %3462, 25
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = zext i32 %3502 to i64
  store i64 %3503, i64* %RDX.i2064, align 8
  %3504 = add i64 %3462, 29
  store i64 %3504, i64* %3, align 8
  %3505 = load i32, i32* %3422, align 4
  %3506 = sext i32 %3505 to i64
  store i64 %3506, i64* %RAX.i1508, align 8
  %3507 = shl nsw i64 %3506, 2
  %3508 = add i64 %3419, -2688
  %3509 = add i64 %3508, %3507
  %3510 = add i64 %3462, 36
  store i64 %3510, i64* %3, align 8
  %3511 = inttoptr i64 %3509 to i32*
  store i32 %3502, i32* %3511, align 4
  %3512 = load i64, i64* %RBP.i, align 8
  %3513 = add i64 %3512, -4
  %3514 = load i64, i64* %3, align 8
  %3515 = add i64 %3514, 3
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = add i32 %3517, 1
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RAX.i1508, align 8
  %3520 = icmp eq i32 %3517, -1
  %3521 = icmp eq i32 %3518, 0
  %3522 = or i1 %3520, %3521
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %14, align 1
  %3524 = and i32 %3518, 255
  %3525 = tail call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  store i8 %3528, i8* %21, align 1
  %3529 = xor i32 %3518, %3517
  %3530 = lshr i32 %3529, 4
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  store i8 %3532, i8* %27, align 1
  %3533 = zext i1 %3521 to i8
  store i8 %3533, i8* %30, align 1
  %3534 = lshr i32 %3518, 31
  %3535 = trunc i32 %3534 to i8
  store i8 %3535, i8* %33, align 1
  %3536 = lshr i32 %3517, 31
  %3537 = xor i32 %3534, %3536
  %3538 = add nuw nsw i32 %3537, %3534
  %3539 = icmp eq i32 %3538, 2
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %39, align 1
  %3541 = add i64 %3514, 9
  store i64 %3541, i64* %3, align 8
  store i32 %3518, i32* %3516, align 4
  %3542 = load i64, i64* %3, align 8
  %3543 = add i64 %3542, -65
  store i64 %3543, i64* %3, align 8
  br label %block_.L_4010bd

block_.L_401103:                                  ; preds = %block_.L_4010bd
  %3544 = add i64 %3419, -1492
  %3545 = add i64 %3462, 10
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  store i32 0, i32* %3546, align 4
  %3547 = load i64, i64* %RBP.i, align 8
  %3548 = add i64 %3547, -4
  %3549 = load i64, i64* %3, align 8
  %3550 = add i64 %3549, 7
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3548 to i32*
  store i32 1, i32* %3551, align 4
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_401114

block_.L_401114:                                  ; preds = %block_.L_4011f0, %block_.L_401103
  %3552 = phi i64 [ %.pre193, %block_.L_401103 ], [ %3951, %block_.L_4011f0 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.21, %block_.L_401103 ], [ %MEMORY.26, %block_.L_4011f0 ]
  %3553 = load i64, i64* %RBP.i, align 8
  %3554 = add i64 %3553, -4
  %3555 = add i64 %3552, 7
  store i64 %3555, i64* %3, align 8
  %3556 = inttoptr i64 %3554 to i32*
  %3557 = load i32, i32* %3556, align 4
  %3558 = add i32 %3557, -255
  %3559 = icmp ult i32 %3557, 255
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %14, align 1
  %3561 = and i32 %3558, 255
  %3562 = tail call i32 @llvm.ctpop.i32(i32 %3561)
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = xor i8 %3564, 1
  store i8 %3565, i8* %21, align 1
  %3566 = xor i32 %3557, 16
  %3567 = xor i32 %3566, %3558
  %3568 = lshr i32 %3567, 4
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  store i8 %3570, i8* %27, align 1
  %3571 = icmp eq i32 %3558, 0
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %30, align 1
  %3573 = lshr i32 %3558, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %33, align 1
  %3575 = lshr i32 %3557, 31
  %3576 = xor i32 %3573, %3575
  %3577 = add nuw nsw i32 %3576, %3575
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %39, align 1
  %3580 = icmp ne i8 %3574, 0
  %3581 = xor i1 %3580, %3578
  %.demorgan244 = or i1 %3571, %3581
  %.v247 = select i1 %.demorgan244, i64 13, i64 239
  %3582 = add i64 %3552, %.v247
  store i64 %3582, i64* %3, align 8
  br i1 %.demorgan244, label %block_401121, label %block_.L_401203

block_401121:                                     ; preds = %block_.L_401114
  %3583 = add i64 %3553, -16
  %3584 = add i64 %3582, 7
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3583 to i32*
  store i32 1, i32* %3585, align 4
  %3586 = load i64, i64* %RBP.i, align 8
  %3587 = add i64 %3586, -8
  %3588 = load i64, i64* %3, align 8
  %3589 = add i64 %3588, 7
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3587 to i32*
  store i32 1, i32* %3590, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_40112f

block_.L_40112f:                                  ; preds = %block_.L_40119d, %block_401121
  %3591 = phi i64 [ %.pre194, %block_401121 ], [ %3817, %block_.L_40119d ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_401121 ], [ %MEMORY.27, %block_.L_40119d ]
  %3592 = load i64, i64* %RBP.i, align 8
  %3593 = add i64 %3592, -8
  %3594 = add i64 %3591, 3
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RAX.i1508, align 8
  %3598 = add i64 %3592, -12
  %3599 = add i64 %3591, 7
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to i32*
  %3601 = load i32, i32* %3600, align 4
  %3602 = sext i32 %3601 to i64
  store i64 %3602, i64* %RCX.i1994, align 8
  %3603 = shl nsw i64 %3602, 2
  %3604 = add nsw i64 %3603, -1328
  %3605 = add i64 %3604, %3592
  %3606 = add i64 %3591, 14
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = sub i32 %3596, %3608
  %3610 = icmp ult i32 %3596, %3608
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %14, align 1
  %3612 = and i32 %3609, 255
  %3613 = tail call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  store i8 %3616, i8* %21, align 1
  %3617 = xor i32 %3608, %3596
  %3618 = xor i32 %3617, %3609
  %3619 = lshr i32 %3618, 4
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  store i8 %3621, i8* %27, align 1
  %3622 = icmp eq i32 %3609, 0
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %30, align 1
  %3624 = lshr i32 %3609, 31
  %3625 = trunc i32 %3624 to i8
  store i8 %3625, i8* %33, align 1
  %3626 = lshr i32 %3596, 31
  %3627 = lshr i32 %3608, 31
  %3628 = xor i32 %3627, %3626
  %3629 = xor i32 %3624, %3626
  %3630 = add nuw nsw i32 %3629, %3628
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %39, align 1
  %3633 = icmp ne i8 %3625, 0
  %3634 = xor i1 %3633, %3631
  %.demorgan245 = or i1 %3622, %3634
  %.v295 = select i1 %.demorgan245, i64 20, i64 129
  %3635 = add i64 %3591, %.v295
  store i64 %3635, i64* %3, align 8
  br i1 %.demorgan245, label %block_401143, label %block_.L_4011b0

block_401143:                                     ; preds = %block_.L_40112f
  %3636 = add i64 %3635, 4
  store i64 %3636, i64* %3, align 8
  %3637 = load i32, i32* %3595, align 4
  %3638 = sext i32 %3637 to i64
  store i64 %3638, i64* %RAX.i1508, align 8
  %3639 = shl nsw i64 %3638, 2
  %3640 = add i64 %3592, -2688
  %3641 = add i64 %3640, %3639
  %3642 = add i64 %3635, 12
  store i64 %3642, i64* %3, align 8
  %3643 = inttoptr i64 %3641 to i32*
  %3644 = load i32, i32* %3643, align 4
  %3645 = add i32 %3644, 1
  %3646 = icmp ne i32 %3644, -1
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %14, align 1
  %3648 = and i32 %3645, 255
  %3649 = tail call i32 @llvm.ctpop.i32(i32 %3648)
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = xor i8 %3651, 1
  store i8 %3652, i8* %21, align 1
  %3653 = xor i32 %3644, 16
  %3654 = xor i32 %3653, %3645
  %3655 = lshr i32 %3654, 4
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  store i8 %3657, i8* %27, align 1
  %3658 = icmp eq i32 %3645, 0
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %30, align 1
  %3660 = lshr i32 %3645, 31
  %3661 = trunc i32 %3660 to i8
  store i8 %3661, i8* %33, align 1
  %3662 = lshr i32 %3644, 31
  %3663 = xor i32 %3662, 1
  %3664 = xor i32 %3660, %3662
  %3665 = add nuw nsw i32 %3664, %3663
  %3666 = icmp eq i32 %3665, 2
  %3667 = zext i1 %3666 to i8
  store i8 %3667, i8* %39, align 1
  %.v297 = select i1 %3658, i64 90, i64 18
  %3668 = add i64 %3635, %.v297
  store i64 %3668, i64* %3, align 8
  br i1 %3658, label %block_.L_40119d, label %block_401155

block_401155:                                     ; preds = %block_401143
  store i64 255, i64* %RAX.i1508, align 8
  %3669 = add i64 %3668, 9
  store i64 %3669, i64* %3, align 8
  %3670 = load i32, i32* %3595, align 4
  %3671 = sext i32 %3670 to i64
  store i64 %3671, i64* %RCX.i1994, align 8
  %3672 = shl nsw i64 %3671, 2
  %3673 = add i64 %3640, %3672
  %3674 = add i64 %3668, 16
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RDX.i2064, align 8
  %3678 = add i64 %3668, 19
  store i64 %3678, i64* %3, align 8
  %3679 = load i32, i32* %3595, align 4
  %3680 = add i32 %3679, %3676
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %RDX.i2064, align 8
  %3682 = icmp ult i32 %3680, %3676
  %3683 = icmp ult i32 %3680, %3679
  %3684 = or i1 %3682, %3683
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %14, align 1
  %3686 = and i32 %3680, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %21, align 1
  %3691 = xor i32 %3679, %3676
  %3692 = xor i32 %3691, %3680
  %3693 = lshr i32 %3692, 4
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  store i8 %3695, i8* %27, align 1
  %3696 = icmp eq i32 %3680, 0
  %3697 = zext i1 %3696 to i8
  store i8 %3697, i8* %30, align 1
  %3698 = lshr i32 %3680, 31
  %3699 = trunc i32 %3698 to i8
  store i8 %3699, i8* %33, align 1
  %3700 = lshr i32 %3676, 31
  %3701 = lshr i32 %3679, 31
  %3702 = xor i32 %3698, %3700
  %3703 = xor i32 %3698, %3701
  %3704 = add nuw nsw i32 %3702, %3703
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %39, align 1
  %3707 = add i64 %3592, -2716
  %3708 = add i64 %3668, 25
  store i64 %3708, i64* %3, align 8
  %3709 = inttoptr i64 %3707 to i32*
  store i32 255, i32* %3709, align 4
  %3710 = load i32, i32* %EDX.i2048, align 4
  %3711 = zext i32 %3710 to i64
  %3712 = load i64, i64* %3, align 8
  store i64 %3711, i64* %RAX.i1508, align 8
  %3713 = sext i32 %3710 to i64
  %3714 = lshr i64 %3713, 32
  store i64 %3714, i64* %56, align 8
  %3715 = load i64, i64* %RBP.i, align 8
  %3716 = add i64 %3715, -2716
  %3717 = add i64 %3712, 9
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i32*
  %3719 = load i32, i32* %3718, align 4
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RSI.i2060, align 8
  %3721 = add i64 %3712, 11
  store i64 %3721, i64* %3, align 8
  %3722 = sext i32 %3719 to i64
  %3723 = shl nuw i64 %3714, 32
  %3724 = or i64 %3723, %3711
  %3725 = sdiv i64 %3724, %3722
  %3726 = shl i64 %3725, 32
  %3727 = ashr exact i64 %3726, 32
  %3728 = icmp eq i64 %3725, %3727
  br i1 %3728, label %3731, label %3729

; <label>:3729:                                   ; preds = %block_401155
  %3730 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3721, %struct.Memory* %MEMORY.26)
  %.pre195 = load i64, i64* %RBP.i, align 8
  %.pre196 = load i64, i64* %3, align 8
  %.pre197 = load i32, i32* %EDX.i2048, align 4
  br label %routine_idivl__esi.exit897

; <label>:3731:                                   ; preds = %block_401155
  %3732 = srem i64 %3724, %3722
  %3733 = and i64 %3725, 4294967295
  store i64 %3733, i64* %RAX.i1508, align 8
  %3734 = and i64 %3732, 4294967295
  store i64 %3734, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3735 = trunc i64 %3732 to i32
  br label %routine_idivl__esi.exit897

routine_idivl__esi.exit897:                       ; preds = %3731, %3729
  %3736 = phi i32 [ %.pre197, %3729 ], [ %3735, %3731 ]
  %3737 = phi i64 [ %.pre196, %3729 ], [ %3721, %3731 ]
  %3738 = phi i64 [ %.pre195, %3729 ], [ %3715, %3731 ]
  %3739 = phi %struct.Memory* [ %3730, %3729 ], [ %MEMORY.26, %3731 ]
  %3740 = add i64 %3738, -8
  %3741 = add i64 %3737, 4
  store i64 %3741, i64* %3, align 8
  %3742 = inttoptr i64 %3740 to i32*
  %3743 = load i32, i32* %3742, align 4
  %3744 = sext i32 %3743 to i64
  store i64 %3744, i64* %RCX.i1994, align 8
  %3745 = shl nsw i64 %3744, 2
  %3746 = add i64 %3738, -2688
  %3747 = add i64 %3746, %3745
  %3748 = add i64 %3737, 11
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  store i32 %3736, i32* %3749, align 4
  %3750 = load i64, i64* %RBP.i, align 8
  %3751 = add i64 %3750, -8
  %3752 = load i64, i64* %3, align 8
  %3753 = add i64 %3752, 4
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3751 to i32*
  %3755 = load i32, i32* %3754, align 4
  %3756 = sext i32 %3755 to i64
  store i64 %3756, i64* %RCX.i1994, align 8
  %3757 = shl nsw i64 %3756, 2
  %3758 = add i64 %3750, -2688
  %3759 = add i64 %3758, %3757
  %3760 = add i64 %3752, 12
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = sext i32 %3762 to i64
  store i64 %3763, i64* %RCX.i1994, align 8
  %3764 = shl nsw i64 %3763, 2
  %3765 = add i64 %3764, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %3766 = add i64 %3752, 19
  store i64 %3766, i64* %3, align 8
  %3767 = inttoptr i64 %3765 to i32*
  %3768 = load i32, i32* %3767, align 4
  %3769 = zext i32 %3768 to i64
  store i64 %3769, i64* %RDX.i2064, align 8
  %3770 = add i64 %3750, -16
  %3771 = add i64 %3752, 22
  store i64 %3771, i64* %3, align 8
  %3772 = inttoptr i64 %3770 to i32*
  %3773 = load i32, i32* %3772, align 4
  %3774 = xor i32 %3773, %3768
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %3776 = and i32 %3774, 255
  %3777 = tail call i32 @llvm.ctpop.i32(i32 %3776)
  %3778 = trunc i32 %3777 to i8
  %3779 = and i8 %3778, 1
  %3780 = xor i8 %3779, 1
  store i8 %3780, i8* %21, align 1
  %3781 = icmp eq i32 %3774, 0
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %30, align 1
  %3783 = lshr i32 %3774, 31
  %3784 = trunc i32 %3783 to i8
  store i8 %3784, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3785 = add i64 %3752, 25
  store i64 %3785, i64* %3, align 8
  store i32 %3774, i32* %3772, align 4
  %.pre198 = load i64, i64* %3, align 8
  %.pre199 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40119d

block_.L_40119d:                                  ; preds = %routine_idivl__esi.exit897, %block_401143
  %3786 = phi i64 [ %3592, %block_401143 ], [ %.pre199, %routine_idivl__esi.exit897 ]
  %3787 = phi i64 [ %3668, %block_401143 ], [ %.pre198, %routine_idivl__esi.exit897 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_401143 ], [ %3739, %routine_idivl__esi.exit897 ]
  %3788 = add i64 %3786, -8
  %3789 = add i64 %3787, 8
  store i64 %3789, i64* %3, align 8
  %3790 = inttoptr i64 %3788 to i32*
  %3791 = load i32, i32* %3790, align 4
  %3792 = add i32 %3791, 1
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RAX.i1508, align 8
  %3794 = icmp eq i32 %3791, -1
  %3795 = icmp eq i32 %3792, 0
  %3796 = or i1 %3794, %3795
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %14, align 1
  %3798 = and i32 %3792, 255
  %3799 = tail call i32 @llvm.ctpop.i32(i32 %3798)
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = xor i8 %3801, 1
  store i8 %3802, i8* %21, align 1
  %3803 = xor i32 %3792, %3791
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %27, align 1
  %3807 = zext i1 %3795 to i8
  store i8 %3807, i8* %30, align 1
  %3808 = lshr i32 %3792, 31
  %3809 = trunc i32 %3808 to i8
  store i8 %3809, i8* %33, align 1
  %3810 = lshr i32 %3791, 31
  %3811 = xor i32 %3808, %3810
  %3812 = add nuw nsw i32 %3811, %3808
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %39, align 1
  %3815 = add i64 %3787, 14
  store i64 %3815, i64* %3, align 8
  store i32 %3792, i32* %3790, align 4
  %3816 = load i64, i64* %3, align 8
  %3817 = add i64 %3816, -124
  store i64 %3817, i64* %3, align 8
  br label %block_.L_40112f

block_.L_4011b0:                                  ; preds = %block_.L_40112f
  %3818 = add i64 %3592, -16
  %3819 = add i64 %3635, 4
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3818 to i32*
  %3821 = load i32, i32* %3820, align 4
  store i8 0, i8* %14, align 1
  %3822 = and i32 %3821, 255
  %3823 = tail call i32 @llvm.ctpop.i32(i32 %3822)
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = xor i8 %3825, 1
  store i8 %3826, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3827 = icmp eq i32 %3821, 0
  %3828 = zext i1 %3827 to i8
  store i8 %3828, i8* %30, align 1
  %3829 = lshr i32 %3821, 31
  %3830 = trunc i32 %3829 to i8
  store i8 %3830, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v296 = select i1 %3827, i64 10, i64 64
  %3831 = add i64 %3635, %.v296
  store i64 %3831, i64* %3, align 8
  br i1 %3827, label %block_4011ba, label %block_.L_4011f0

block_4011ba:                                     ; preds = %block_.L_4011b0
  store i64 255, i64* %RAX.i1508, align 8
  %3832 = add i64 %3592, -4
  %3833 = add i64 %3831, 8
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RCX.i1994, align 8
  %3837 = add i64 %3592, -1492
  %3838 = add i64 %3831, 15
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = sext i32 %3840 to i64
  store i64 %3841, i64* %RDX.i2064, align 8
  %3842 = shl nsw i64 %3841, 2
  %3843 = add i64 %3592, -1536
  %3844 = add i64 %3843, %3842
  %3845 = add i64 %3831, 22
  store i64 %3845, i64* %3, align 8
  %3846 = inttoptr i64 %3844 to i32*
  store i32 %3835, i32* %3846, align 4
  %3847 = load i64, i64* %RAX.i1508, align 8
  %3848 = load i64, i64* %RBP.i, align 8
  %3849 = add i64 %3848, -4
  %3850 = load i64, i64* %3, align 8
  %3851 = add i64 %3850, 3
  store i64 %3851, i64* %3, align 8
  %3852 = trunc i64 %3847 to i32
  %3853 = inttoptr i64 %3849 to i32*
  %3854 = load i32, i32* %3853, align 4
  %3855 = sub i32 %3852, %3854
  %3856 = zext i32 %3855 to i64
  store i64 %3856, i64* %RAX.i1508, align 8
  %3857 = icmp ult i32 %3852, %3854
  %3858 = zext i1 %3857 to i8
  store i8 %3858, i8* %14, align 1
  %3859 = and i32 %3855, 255
  %3860 = tail call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  store i8 %3863, i8* %21, align 1
  %3864 = xor i32 %3854, %3852
  %3865 = xor i32 %3864, %3855
  %3866 = lshr i32 %3865, 4
  %3867 = trunc i32 %3866 to i8
  %3868 = and i8 %3867, 1
  store i8 %3868, i8* %27, align 1
  %3869 = icmp eq i32 %3855, 0
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %30, align 1
  %3871 = lshr i32 %3855, 31
  %3872 = trunc i32 %3871 to i8
  store i8 %3872, i8* %33, align 1
  %3873 = lshr i32 %3852, 31
  %3874 = lshr i32 %3854, 31
  %3875 = xor i32 %3874, %3873
  %3876 = xor i32 %3871, %3873
  %3877 = add nuw nsw i32 %3876, %3875
  %3878 = icmp eq i32 %3877, 2
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %39, align 1
  %3880 = add i64 %3848, -1492
  %3881 = add i64 %3850, 10
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  store i64 %3884, i64* %RDX.i2064, align 8
  %3885 = shl nsw i64 %3884, 2
  %3886 = add i64 %3848, -1568
  %3887 = add i64 %3886, %3885
  %3888 = add i64 %3850, 17
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  store i32 %3855, i32* %3889, align 4
  %3890 = load i64, i64* %RBP.i, align 8
  %3891 = add i64 %3890, -1492
  %3892 = load i64, i64* %3, align 8
  %3893 = add i64 %3892, 6
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = add i32 %3895, 1
  %3897 = zext i32 %3896 to i64
  store i64 %3897, i64* %RAX.i1508, align 8
  %3898 = icmp eq i32 %3895, -1
  %3899 = icmp eq i32 %3896, 0
  %3900 = or i1 %3898, %3899
  %3901 = zext i1 %3900 to i8
  store i8 %3901, i8* %14, align 1
  %3902 = and i32 %3896, 255
  %3903 = tail call i32 @llvm.ctpop.i32(i32 %3902)
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = xor i8 %3905, 1
  store i8 %3906, i8* %21, align 1
  %3907 = xor i32 %3896, %3895
  %3908 = lshr i32 %3907, 4
  %3909 = trunc i32 %3908 to i8
  %3910 = and i8 %3909, 1
  store i8 %3910, i8* %27, align 1
  %3911 = zext i1 %3899 to i8
  store i8 %3911, i8* %30, align 1
  %3912 = lshr i32 %3896, 31
  %3913 = trunc i32 %3912 to i8
  store i8 %3913, i8* %33, align 1
  %3914 = lshr i32 %3895, 31
  %3915 = xor i32 %3912, %3914
  %3916 = add nuw nsw i32 %3915, %3912
  %3917 = icmp eq i32 %3916, 2
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %39, align 1
  %3919 = add i64 %3892, 15
  store i64 %3919, i64* %3, align 8
  store i32 %3896, i32* %3894, align 4
  %.pre200 = load i64, i64* %3, align 8
  %.pre201 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4011f0

block_.L_4011f0:                                  ; preds = %block_.L_4011b0, %block_4011ba
  %3920 = phi i64 [ %.pre201, %block_4011ba ], [ %3592, %block_.L_4011b0 ]
  %3921 = phi i64 [ %.pre200, %block_4011ba ], [ %3831, %block_.L_4011b0 ]
  %3922 = add i64 %3920, -4
  %3923 = add i64 %3921, 8
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = add i32 %3925, 1
  %3927 = zext i32 %3926 to i64
  store i64 %3927, i64* %RAX.i1508, align 8
  %3928 = icmp eq i32 %3925, -1
  %3929 = icmp eq i32 %3926, 0
  %3930 = or i1 %3928, %3929
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %14, align 1
  %3932 = and i32 %3926, 255
  %3933 = tail call i32 @llvm.ctpop.i32(i32 %3932)
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = xor i8 %3935, 1
  store i8 %3936, i8* %21, align 1
  %3937 = xor i32 %3926, %3925
  %3938 = lshr i32 %3937, 4
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  store i8 %3940, i8* %27, align 1
  %3941 = zext i1 %3929 to i8
  store i8 %3941, i8* %30, align 1
  %3942 = lshr i32 %3926, 31
  %3943 = trunc i32 %3942 to i8
  store i8 %3943, i8* %33, align 1
  %3944 = lshr i32 %3925, 31
  %3945 = xor i32 %3942, %3944
  %3946 = add nuw nsw i32 %3945, %3942
  %3947 = icmp eq i32 %3946, 2
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %39, align 1
  %3949 = add i64 %3921, 14
  store i64 %3949, i64* %3, align 8
  store i32 %3926, i32* %3924, align 4
  %3950 = load i64, i64* %3, align 8
  %3951 = add i64 %3950, -234
  store i64 %3951, i64* %3, align 8
  br label %block_.L_401114

block_.L_401203:                                  ; preds = %block_.L_401114
  %3952 = add i64 %3553, -1492
  %3953 = add i64 %3582, 6
  store i64 %3953, i64* %3, align 8
  %3954 = inttoptr i64 %3952 to i32*
  %3955 = load i32, i32* %3954, align 4
  %3956 = zext i32 %3955 to i64
  store i64 %3956, i64* %RAX.i1508, align 8
  %3957 = add i64 %3553, -12
  %3958 = add i64 %3582, 10
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = sext i32 %3960 to i64
  store i64 %3961, i64* %RCX.i1994, align 8
  %3962 = shl nsw i64 %3961, 2
  %3963 = add nsw i64 %3962, -1328
  %3964 = add i64 %3963, %3553
  %3965 = add i64 %3582, 17
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i32*
  %3967 = load i32, i32* %3966, align 4
  %3968 = sub i32 %3955, %3967
  %3969 = icmp ult i32 %3955, %3967
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %14, align 1
  %3971 = and i32 %3968, 255
  %3972 = tail call i32 @llvm.ctpop.i32(i32 %3971)
  %3973 = trunc i32 %3972 to i8
  %3974 = and i8 %3973, 1
  %3975 = xor i8 %3974, 1
  store i8 %3975, i8* %21, align 1
  %3976 = xor i32 %3967, %3955
  %3977 = xor i32 %3976, %3968
  %3978 = lshr i32 %3977, 4
  %3979 = trunc i32 %3978 to i8
  %3980 = and i8 %3979, 1
  store i8 %3980, i8* %27, align 1
  %3981 = icmp eq i32 %3968, 0
  %3982 = zext i1 %3981 to i8
  store i8 %3982, i8* %30, align 1
  %3983 = lshr i32 %3968, 31
  %3984 = trunc i32 %3983 to i8
  store i8 %3984, i8* %33, align 1
  %3985 = lshr i32 %3955, 31
  %3986 = lshr i32 %3967, 31
  %3987 = xor i32 %3986, %3985
  %3988 = xor i32 %3983, %3985
  %3989 = add nuw nsw i32 %3988, %3987
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %39, align 1
  %.v246 = select i1 %3981, i64 23, i64 1296
  %3992 = add i64 %3582, %.v246
  %3993 = add i64 %3992, 7
  store i64 %3993, i64* %3, align 8
  br i1 %3981, label %block_40121a, label %block_.L_401713

block_40121a:                                     ; preds = %block_.L_401203
  store i32 1, i32* %3556, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_401221

block_.L_401221:                                  ; preds = %block_.L_401434, %block_40121a
  %3994 = phi i64 [ %.pre202, %block_40121a ], [ %4973, %block_.L_401434 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.25, %block_40121a ], [ %MEMORY.36, %block_.L_401434 ]
  %3995 = load i64, i64* %RBP.i, align 8
  %3996 = add i64 %3995, -4
  %3997 = add i64 %3994, 3
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  %4000 = zext i32 %3999 to i64
  store i64 %4000, i64* %RAX.i1508, align 8
  %4001 = add i64 %3995, -12
  %4002 = add i64 %3994, 7
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i32*
  %4004 = load i32, i32* %4003, align 4
  %4005 = sext i32 %4004 to i64
  store i64 %4005, i64* %RCX.i1994, align 8
  %4006 = shl nsw i64 %4005, 2
  %4007 = add nsw i64 %4006, -1328
  %4008 = add i64 %4007, %3995
  %4009 = add i64 %3994, 14
  store i64 %4009, i64* %3, align 8
  %4010 = inttoptr i64 %4008 to i32*
  %4011 = load i32, i32* %4010, align 4
  %4012 = sub i32 %3999, %4011
  %4013 = icmp ult i32 %3999, %4011
  %4014 = zext i1 %4013 to i8
  store i8 %4014, i8* %14, align 1
  %4015 = and i32 %4012, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %21, align 1
  %4020 = xor i32 %4011, %3999
  %4021 = xor i32 %4020, %4012
  %4022 = lshr i32 %4021, 4
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  store i8 %4024, i8* %27, align 1
  %4025 = icmp eq i32 %4012, 0
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %30, align 1
  %4027 = lshr i32 %4012, 31
  %4028 = trunc i32 %4027 to i8
  store i8 %4028, i8* %33, align 1
  %4029 = lshr i32 %3999, 31
  %4030 = lshr i32 %4011, 31
  %4031 = xor i32 %4030, %4029
  %4032 = xor i32 %4027, %4029
  %4033 = add nuw nsw i32 %4032, %4031
  %4034 = icmp eq i32 %4033, 2
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %39, align 1
  %4036 = icmp ne i8 %4028, 0
  %4037 = xor i1 %4036, %4034
  %.demorgan248 = or i1 %4025, %4037
  %.v278 = select i1 %.demorgan248, i64 20, i64 575
  %4038 = add i64 %3994, %.v278
  store i64 %4038, i64* %3, align 8
  br i1 %.demorgan248, label %block_401235, label %block_.L_401460

block_401235:                                     ; preds = %block_.L_401221
  %4039 = add i64 %4038, 4
  store i64 %4039, i64* %3, align 8
  %4040 = load i32, i32* %3998, align 4
  %4041 = sext i32 %4040 to i64
  store i64 %4041, i64* %RAX.i1508, align 8
  %4042 = shl nsw i64 %4041, 2
  %4043 = add i64 %3995, -1488
  %4044 = add i64 %4043, %4042
  %4045 = add i64 %4038, 12
  store i64 %4045, i64* %3, align 8
  %4046 = inttoptr i64 %4044 to i32*
  %4047 = load i32, i32* %4046, align 4
  %4048 = add i32 %4047, 1
  %4049 = icmp ne i32 %4047, -1
  %4050 = zext i1 %4049 to i8
  store i8 %4050, i8* %14, align 1
  %4051 = and i32 %4048, 255
  %4052 = tail call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %21, align 1
  %4056 = xor i32 %4047, 16
  %4057 = xor i32 %4056, %4048
  %4058 = lshr i32 %4057, 4
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  store i8 %4060, i8* %27, align 1
  %4061 = icmp eq i32 %4048, 0
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %30, align 1
  %4063 = lshr i32 %4048, 31
  %4064 = trunc i32 %4063 to i8
  store i8 %4064, i8* %33, align 1
  %4065 = lshr i32 %4047, 31
  %4066 = xor i32 %4065, 1
  %4067 = xor i32 %4063, %4065
  %4068 = add nuw nsw i32 %4067, %4066
  %4069 = icmp eq i32 %4068, 2
  %4070 = zext i1 %4069 to i8
  store i8 %4070, i8* %39, align 1
  %.v286 = select i1 %4061, i64 118, i64 18
  %4071 = add i64 %4038, %.v286
  store i64 %4071, i64* %3, align 8
  br i1 %4061, label %block_.L_4012ab, label %block_401247

block_401247:                                     ; preds = %block_401235
  %4072 = add i64 %3995, -1168
  store i64 %4072, i64* %RAX.i1508, align 8
  %4073 = add i64 %4071, 11
  store i64 %4073, i64* %3, align 8
  %4074 = load i32, i32* %4003, align 4
  %4075 = sext i32 %4074 to i64
  %4076 = shl nsw i64 %4075, 6
  store i64 %4076, i64* %RCX.i1994, align 8
  %4077 = add i64 %4076, %4072
  store i64 %4077, i64* %RAX.i1508, align 8
  %4078 = icmp ult i64 %4077, %4072
  %4079 = icmp ult i64 %4077, %4076
  %4080 = or i1 %4078, %4079
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %14, align 1
  %4082 = trunc i64 %4077 to i32
  %4083 = and i32 %4082, 255
  %4084 = tail call i32 @llvm.ctpop.i32(i32 %4083)
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  store i8 %4087, i8* %21, align 1
  %4088 = xor i64 %4072, %4077
  %4089 = lshr i64 %4088, 4
  %4090 = trunc i64 %4089 to i8
  %4091 = and i8 %4090, 1
  store i8 %4091, i8* %27, align 1
  %4092 = icmp eq i64 %4077, 0
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %30, align 1
  %4094 = lshr i64 %4077, 63
  %4095 = trunc i64 %4094 to i8
  store i8 %4095, i8* %33, align 1
  %4096 = lshr i64 %4072, 63
  %4097 = lshr i64 %4075, 57
  %4098 = and i64 %4097, 1
  %4099 = xor i64 %4094, %4096
  %4100 = xor i64 %4094, %4098
  %4101 = add nuw nsw i64 %4099, %4100
  %4102 = icmp eq i64 %4101, 2
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %39, align 1
  %4104 = add i64 %4071, 22
  store i64 %4104, i64* %3, align 8
  %4105 = load i32, i32* %3998, align 4
  %4106 = sext i32 %4105 to i64
  store i64 %4106, i64* %RCX.i1994, align 8
  %4107 = shl nsw i64 %4106, 2
  %4108 = add i64 %4107, %4077
  %4109 = add i64 %4071, 26
  store i64 %4109, i64* %3, align 8
  %4110 = inttoptr i64 %4108 to i32*
  %4111 = load i32, i32* %4110, align 4
  %4112 = add i32 %4111, 1
  %4113 = icmp ne i32 %4111, -1
  %4114 = zext i1 %4113 to i8
  store i8 %4114, i8* %14, align 1
  %4115 = and i32 %4112, 255
  %4116 = tail call i32 @llvm.ctpop.i32(i32 %4115)
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  %4119 = xor i8 %4118, 1
  store i8 %4119, i8* %21, align 1
  %4120 = xor i32 %4111, 16
  %4121 = xor i32 %4120, %4112
  %4122 = lshr i32 %4121, 4
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  store i8 %4124, i8* %27, align 1
  %4125 = icmp eq i32 %4112, 0
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %30, align 1
  %4127 = lshr i32 %4112, 31
  %4128 = trunc i32 %4127 to i8
  store i8 %4128, i8* %33, align 1
  %4129 = lshr i32 %4111, 31
  %4130 = xor i32 %4129, 1
  %4131 = xor i32 %4127, %4129
  %4132 = add nuw nsw i32 %4131, %4130
  %4133 = icmp eq i32 %4132, 2
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %39, align 1
  %.v287 = select i1 %4125, i64 100, i64 32
  %4135 = add i64 %4071, %.v287
  store i64 %4135, i64* %3, align 8
  %.pre203 = load i64, i64* %RBP.i, align 8
  br i1 %4125, label %block_.L_4012ab, label %block_401267

block_401267:                                     ; preds = %block_401247
  %4136 = add i64 %.pre203, -1168
  store i64 %4136, i64* %RAX.i1508, align 8
  %4137 = add i64 %.pre203, -4
  %4138 = add i64 %4135, 11
  store i64 %4138, i64* %3, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = sext i32 %4140 to i64
  store i64 %4141, i64* %RCX.i1994, align 8
  %4142 = shl nsw i64 %4141, 2
  %4143 = add i64 %.pre203, -1488
  %4144 = add i64 %4143, %4142
  %4145 = add i64 %4135, 19
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = sext i32 %4147 to i64
  store i64 %4148, i64* %RCX.i1994, align 8
  %4149 = shl nsw i64 %4148, 2
  %4150 = add i64 %4149, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %4151 = add i64 %4135, 26
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i32*
  %4153 = load i32, i32* %4152, align 4
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RDX.i2064, align 8
  %4155 = add i64 %.pre203, -12
  %4156 = add i64 %4135, 30
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sext i32 %4158 to i64
  %4160 = shl nsw i64 %4159, 6
  store i64 %4160, i64* %RCX.i1994, align 8
  %4161 = add i64 %4160, %4136
  store i64 %4161, i64* %RAX.i1508, align 8
  %4162 = icmp ult i64 %4161, %4136
  %4163 = icmp ult i64 %4161, %4160
  %4164 = or i1 %4162, %4163
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %14, align 1
  %4166 = trunc i64 %4161 to i32
  %4167 = and i32 %4166, 255
  %4168 = tail call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  store i8 %4171, i8* %21, align 1
  %4172 = xor i64 %4136, %4161
  %4173 = lshr i64 %4172, 4
  %4174 = trunc i64 %4173 to i8
  %4175 = and i8 %4174, 1
  store i8 %4175, i8* %27, align 1
  %4176 = icmp eq i64 %4161, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %30, align 1
  %4178 = lshr i64 %4161, 63
  %4179 = trunc i64 %4178 to i8
  store i8 %4179, i8* %33, align 1
  %4180 = lshr i64 %4136, 63
  %4181 = lshr i64 %4159, 57
  %4182 = and i64 %4181, 1
  %4183 = xor i64 %4178, %4180
  %4184 = xor i64 %4178, %4182
  %4185 = add nuw nsw i64 %4183, %4184
  %4186 = icmp eq i64 %4185, 2
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %39, align 1
  %4188 = add i64 %4135, 41
  store i64 %4188, i64* %3, align 8
  %4189 = load i32, i32* %4139, align 4
  %4190 = sext i32 %4189 to i64
  store i64 %4190, i64* %RCX.i1994, align 8
  %4191 = shl nsw i64 %4190, 2
  %4192 = add i64 %4191, %4161
  %4193 = add i64 %4135, 45
  store i64 %4193, i64* %3, align 8
  %4194 = inttoptr i64 %4192 to i32*
  %4195 = load i32, i32* %4194, align 4
  %4196 = sext i32 %4195 to i64
  store i64 %4196, i64* %RAX.i1508, align 8
  %4197 = shl nsw i64 %4196, 2
  %4198 = add i64 %4197, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4199 = add i64 %4135, 52
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i32*
  %4201 = load i32, i32* %4200, align 4
  %4202 = xor i32 %4201, %4153
  %4203 = zext i32 %4202 to i64
  store i64 %4203, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4204 = and i32 %4202, 255
  %4205 = tail call i32 @llvm.ctpop.i32(i32 %4204)
  %4206 = trunc i32 %4205 to i8
  %4207 = and i8 %4206, 1
  %4208 = xor i8 %4207, 1
  store i8 %4208, i8* %21, align 1
  %4209 = icmp eq i32 %4202, 0
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %30, align 1
  %4211 = lshr i32 %4202, 31
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4213 = load i64, i64* %RBP.i, align 8
  %4214 = add i64 %4213, -4
  %4215 = add i64 %4135, 56
  store i64 %4215, i64* %3, align 8
  %4216 = inttoptr i64 %4214 to i32*
  %4217 = load i32, i32* %4216, align 4
  %4218 = sext i32 %4217 to i64
  store i64 %4218, i64* %RAX.i1508, align 8
  %4219 = shl nsw i64 %4218, 2
  %4220 = add i64 %4213, -1616
  %4221 = add i64 %4220, %4219
  %4222 = add i64 %4135, 63
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i32*
  store i32 %4202, i32* %4223, align 4
  %4224 = load i64, i64* %3, align 8
  %4225 = add i64 %4224, 214
  br label %block_.L_40137c

block_.L_4012ab:                                  ; preds = %block_401247, %block_401235
  %4226 = phi i64 [ %4071, %block_401235 ], [ %4135, %block_401247 ]
  %4227 = phi i64 [ %3995, %block_401235 ], [ %.pre203, %block_401247 ]
  %4228 = add i64 %4227, -4
  %4229 = add i64 %4226, 4
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4228 to i32*
  %4231 = load i32, i32* %4230, align 4
  %4232 = sext i32 %4231 to i64
  store i64 %4232, i64* %RAX.i1508, align 8
  %4233 = shl nsw i64 %4232, 2
  %4234 = add i64 %4227, -1488
  %4235 = add i64 %4234, %4233
  %4236 = add i64 %4226, 12
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i32*
  %4238 = load i32, i32* %4237, align 4
  %4239 = add i32 %4238, 1
  %4240 = icmp ne i32 %4238, -1
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %14, align 1
  %4242 = and i32 %4239, 255
  %4243 = tail call i32 @llvm.ctpop.i32(i32 %4242)
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = xor i8 %4245, 1
  store i8 %4246, i8* %21, align 1
  %4247 = xor i32 %4238, 16
  %4248 = xor i32 %4247, %4239
  %4249 = lshr i32 %4248, 4
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  store i8 %4251, i8* %27, align 1
  %4252 = icmp eq i32 %4239, 0
  %4253 = zext i1 %4252 to i8
  store i8 %4253, i8* %30, align 1
  %4254 = lshr i32 %4239, 31
  %4255 = trunc i32 %4254 to i8
  store i8 %4255, i8* %33, align 1
  %4256 = lshr i32 %4238, 31
  %4257 = xor i32 %4256, 1
  %4258 = xor i32 %4254, %4256
  %4259 = add nuw nsw i32 %4258, %4257
  %4260 = icmp eq i32 %4259, 2
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %39, align 1
  %.v291 = select i1 %4252, i64 85, i64 18
  %4262 = add i64 %4226, %.v291
  store i64 %4262, i64* %3, align 8
  br i1 %4252, label %block_.L_401300, label %block_4012bd

block_4012bd:                                     ; preds = %block_.L_4012ab
  %4263 = add i64 %4227, -1168
  store i64 %4263, i64* %RAX.i1508, align 8
  %4264 = add i64 %4227, -12
  %4265 = add i64 %4262, 11
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  %4267 = load i32, i32* %4266, align 4
  %4268 = sext i32 %4267 to i64
  %4269 = shl nsw i64 %4268, 6
  store i64 %4269, i64* %RCX.i1994, align 8
  %4270 = add i64 %4269, %4263
  store i64 %4270, i64* %RAX.i1508, align 8
  %4271 = icmp ult i64 %4270, %4263
  %4272 = icmp ult i64 %4270, %4269
  %4273 = or i1 %4271, %4272
  %4274 = zext i1 %4273 to i8
  store i8 %4274, i8* %14, align 1
  %4275 = trunc i64 %4270 to i32
  %4276 = and i32 %4275, 255
  %4277 = tail call i32 @llvm.ctpop.i32(i32 %4276)
  %4278 = trunc i32 %4277 to i8
  %4279 = and i8 %4278, 1
  %4280 = xor i8 %4279, 1
  store i8 %4280, i8* %21, align 1
  %4281 = xor i64 %4263, %4270
  %4282 = lshr i64 %4281, 4
  %4283 = trunc i64 %4282 to i8
  %4284 = and i8 %4283, 1
  store i8 %4284, i8* %27, align 1
  %4285 = icmp eq i64 %4270, 0
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %30, align 1
  %4287 = lshr i64 %4270, 63
  %4288 = trunc i64 %4287 to i8
  store i8 %4288, i8* %33, align 1
  %4289 = lshr i64 %4263, 63
  %4290 = lshr i64 %4268, 57
  %4291 = and i64 %4290, 1
  %4292 = xor i64 %4287, %4289
  %4293 = xor i64 %4287, %4291
  %4294 = add nuw nsw i64 %4292, %4293
  %4295 = icmp eq i64 %4294, 2
  %4296 = zext i1 %4295 to i8
  store i8 %4296, i8* %39, align 1
  %4297 = add i64 %4262, 22
  store i64 %4297, i64* %3, align 8
  %4298 = load i32, i32* %4230, align 4
  %4299 = sext i32 %4298 to i64
  store i64 %4299, i64* %RCX.i1994, align 8
  %4300 = shl nsw i64 %4299, 2
  %4301 = add i64 %4300, %4270
  %4302 = add i64 %4262, 26
  store i64 %4302, i64* %3, align 8
  %4303 = inttoptr i64 %4301 to i32*
  %4304 = load i32, i32* %4303, align 4
  %4305 = add i32 %4304, 1
  %4306 = icmp ne i32 %4304, -1
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %14, align 1
  %4308 = and i32 %4305, 255
  %4309 = tail call i32 @llvm.ctpop.i32(i32 %4308)
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  %4312 = xor i8 %4311, 1
  store i8 %4312, i8* %21, align 1
  %4313 = xor i32 %4304, 16
  %4314 = xor i32 %4313, %4305
  %4315 = lshr i32 %4314, 4
  %4316 = trunc i32 %4315 to i8
  %4317 = and i8 %4316, 1
  store i8 %4317, i8* %27, align 1
  %4318 = icmp eq i32 %4305, 0
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %30, align 1
  %4320 = lshr i32 %4305, 31
  %4321 = trunc i32 %4320 to i8
  store i8 %4321, i8* %33, align 1
  %4322 = lshr i32 %4304, 31
  %4323 = xor i32 %4322, 1
  %4324 = xor i32 %4320, %4322
  %4325 = add nuw nsw i32 %4324, %4323
  %4326 = icmp eq i32 %4325, 2
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %39, align 1
  %.v292 = select i1 %4318, i64 32, i64 67
  %4328 = add i64 %4262, %.v292
  store i64 %4328, i64* %3, align 8
  %4329 = load i64, i64* %RBP.i, align 8
  br i1 %4318, label %block_4012dd, label %block_.L_401300

block_4012dd:                                     ; preds = %block_4012bd
  %4330 = add i64 %4329, -4
  %4331 = add i64 %4328, 4
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4330 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = sext i32 %4333 to i64
  store i64 %4334, i64* %RAX.i1508, align 8
  %4335 = shl nsw i64 %4334, 2
  %4336 = add i64 %4329, -1488
  %4337 = add i64 %4336, %4335
  %4338 = add i64 %4328, 12
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = sext i32 %4340 to i64
  store i64 %4341, i64* %RAX.i1508, align 8
  %4342 = shl nsw i64 %4341, 2
  %4343 = add i64 %4342, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4344 = add i64 %4328, 19
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i32*
  %4346 = load i32, i32* %4345, align 4
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RCX.i1994, align 8
  %4348 = add i64 %4328, 23
  store i64 %4348, i64* %3, align 8
  %4349 = load i32, i32* %4332, align 4
  %4350 = sext i32 %4349 to i64
  store i64 %4350, i64* %RAX.i1508, align 8
  %4351 = shl nsw i64 %4350, 2
  %4352 = add i64 %4329, -1616
  %4353 = add i64 %4352, %4351
  %4354 = add i64 %4328, 30
  store i64 %4354, i64* %3, align 8
  %4355 = inttoptr i64 %4353 to i32*
  store i32 %4346, i32* %4355, align 4
  %4356 = load i64, i64* %3, align 8
  %4357 = add i64 %4356, 124
  br label %block_.L_401377

block_.L_401300:                                  ; preds = %block_4012bd, %block_.L_4012ab
  %4358 = phi i64 [ %4262, %block_.L_4012ab ], [ %4328, %block_4012bd ]
  %4359 = phi i64 [ %4227, %block_.L_4012ab ], [ %4329, %block_4012bd ]
  %4360 = add i64 %4359, -4
  %4361 = add i64 %4358, 4
  store i64 %4361, i64* %3, align 8
  %4362 = inttoptr i64 %4360 to i32*
  %4363 = load i32, i32* %4362, align 4
  %4364 = sext i32 %4363 to i64
  store i64 %4364, i64* %RAX.i1508, align 8
  %4365 = shl nsw i64 %4364, 2
  %4366 = add i64 %4359, -1488
  %4367 = add i64 %4366, %4365
  %4368 = add i64 %4358, 12
  store i64 %4368, i64* %3, align 8
  %4369 = inttoptr i64 %4367 to i32*
  %4370 = load i32, i32* %4369, align 4
  %4371 = add i32 %4370, 1
  %4372 = icmp ne i32 %4370, -1
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %14, align 1
  %4374 = and i32 %4371, 255
  %4375 = tail call i32 @llvm.ctpop.i32(i32 %4374)
  %4376 = trunc i32 %4375 to i8
  %4377 = and i8 %4376, 1
  %4378 = xor i8 %4377, 1
  store i8 %4378, i8* %21, align 1
  %4379 = xor i32 %4370, 16
  %4380 = xor i32 %4379, %4371
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  store i8 %4383, i8* %27, align 1
  %4384 = icmp eq i32 %4371, 0
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %30, align 1
  %4386 = lshr i32 %4371, 31
  %4387 = trunc i32 %4386 to i8
  store i8 %4387, i8* %33, align 1
  %4388 = lshr i32 %4370, 31
  %4389 = xor i32 %4388, 1
  %4390 = xor i32 %4386, %4388
  %4391 = add nuw nsw i32 %4390, %4389
  %4392 = icmp eq i32 %4391, 2
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %39, align 1
  %.v293 = select i1 %4384, i64 18, i64 99
  %4394 = add i64 %4358, %.v293
  store i64 %4394, i64* %3, align 8
  br i1 %4384, label %block_401312, label %block_.L_401363

block_401312:                                     ; preds = %block_.L_401300
  %4395 = add i64 %4359, -1168
  store i64 %4395, i64* %RAX.i1508, align 8
  %4396 = add i64 %4359, -12
  %4397 = add i64 %4394, 11
  store i64 %4397, i64* %3, align 8
  %4398 = inttoptr i64 %4396 to i32*
  %4399 = load i32, i32* %4398, align 4
  %4400 = sext i32 %4399 to i64
  %4401 = shl nsw i64 %4400, 6
  store i64 %4401, i64* %RCX.i1994, align 8
  %4402 = add i64 %4401, %4395
  store i64 %4402, i64* %RAX.i1508, align 8
  %4403 = icmp ult i64 %4402, %4395
  %4404 = icmp ult i64 %4402, %4401
  %4405 = or i1 %4403, %4404
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %14, align 1
  %4407 = trunc i64 %4402 to i32
  %4408 = and i32 %4407, 255
  %4409 = tail call i32 @llvm.ctpop.i32(i32 %4408)
  %4410 = trunc i32 %4409 to i8
  %4411 = and i8 %4410, 1
  %4412 = xor i8 %4411, 1
  store i8 %4412, i8* %21, align 1
  %4413 = xor i64 %4395, %4402
  %4414 = lshr i64 %4413, 4
  %4415 = trunc i64 %4414 to i8
  %4416 = and i8 %4415, 1
  store i8 %4416, i8* %27, align 1
  %4417 = icmp eq i64 %4402, 0
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %30, align 1
  %4419 = lshr i64 %4402, 63
  %4420 = trunc i64 %4419 to i8
  store i8 %4420, i8* %33, align 1
  %4421 = lshr i64 %4395, 63
  %4422 = lshr i64 %4400, 57
  %4423 = and i64 %4422, 1
  %4424 = xor i64 %4419, %4421
  %4425 = xor i64 %4419, %4423
  %4426 = add nuw nsw i64 %4424, %4425
  %4427 = icmp eq i64 %4426, 2
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %39, align 1
  %4429 = add i64 %4394, 22
  store i64 %4429, i64* %3, align 8
  %4430 = load i32, i32* %4362, align 4
  %4431 = sext i32 %4430 to i64
  store i64 %4431, i64* %RCX.i1994, align 8
  %4432 = shl nsw i64 %4431, 2
  %4433 = add i64 %4432, %4402
  %4434 = add i64 %4394, 26
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4433 to i32*
  %4436 = load i32, i32* %4435, align 4
  %4437 = add i32 %4436, 1
  %4438 = icmp ne i32 %4436, -1
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %14, align 1
  %4440 = and i32 %4437, 255
  %4441 = tail call i32 @llvm.ctpop.i32(i32 %4440)
  %4442 = trunc i32 %4441 to i8
  %4443 = and i8 %4442, 1
  %4444 = xor i8 %4443, 1
  store i8 %4444, i8* %21, align 1
  %4445 = xor i32 %4436, 16
  %4446 = xor i32 %4445, %4437
  %4447 = lshr i32 %4446, 4
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  store i8 %4449, i8* %27, align 1
  %4450 = icmp eq i32 %4437, 0
  %4451 = zext i1 %4450 to i8
  store i8 %4451, i8* %30, align 1
  %4452 = lshr i32 %4437, 31
  %4453 = trunc i32 %4452 to i8
  store i8 %4453, i8* %33, align 1
  %4454 = lshr i32 %4436, 31
  %4455 = xor i32 %4454, 1
  %4456 = xor i32 %4452, %4454
  %4457 = add nuw nsw i32 %4456, %4455
  %4458 = icmp eq i32 %4457, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %39, align 1
  %.v294 = select i1 %4450, i64 81, i64 32
  %4460 = add i64 %4394, %.v294
  store i64 %4460, i64* %3, align 8
  %.pre205 = load i64, i64* %RBP.i, align 8
  br i1 %4450, label %block_.L_401363, label %block_401332

block_401332:                                     ; preds = %block_401312
  %4461 = add i64 %.pre205, -1168
  store i64 %4461, i64* %RAX.i1508, align 8
  %4462 = add i64 %.pre205, -12
  %4463 = add i64 %4460, 11
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i32*
  %4465 = load i32, i32* %4464, align 4
  %4466 = sext i32 %4465 to i64
  %4467 = shl nsw i64 %4466, 6
  store i64 %4467, i64* %RCX.i1994, align 8
  %4468 = add i64 %4467, %4461
  store i64 %4468, i64* %RAX.i1508, align 8
  %4469 = icmp ult i64 %4468, %4461
  %4470 = icmp ult i64 %4468, %4467
  %4471 = or i1 %4469, %4470
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %14, align 1
  %4473 = trunc i64 %4468 to i32
  %4474 = and i32 %4473, 255
  %4475 = tail call i32 @llvm.ctpop.i32(i32 %4474)
  %4476 = trunc i32 %4475 to i8
  %4477 = and i8 %4476, 1
  %4478 = xor i8 %4477, 1
  store i8 %4478, i8* %21, align 1
  %4479 = xor i64 %4461, %4468
  %4480 = lshr i64 %4479, 4
  %4481 = trunc i64 %4480 to i8
  %4482 = and i8 %4481, 1
  store i8 %4482, i8* %27, align 1
  %4483 = icmp eq i64 %4468, 0
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %30, align 1
  %4485 = lshr i64 %4468, 63
  %4486 = trunc i64 %4485 to i8
  store i8 %4486, i8* %33, align 1
  %4487 = lshr i64 %4461, 63
  %4488 = lshr i64 %4466, 57
  %4489 = and i64 %4488, 1
  %4490 = xor i64 %4485, %4487
  %4491 = xor i64 %4485, %4489
  %4492 = add nuw nsw i64 %4490, %4491
  %4493 = icmp eq i64 %4492, 2
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %39, align 1
  %4495 = add i64 %.pre205, -4
  %4496 = add i64 %4460, 22
  store i64 %4496, i64* %3, align 8
  %4497 = inttoptr i64 %4495 to i32*
  %4498 = load i32, i32* %4497, align 4
  %4499 = sext i32 %4498 to i64
  store i64 %4499, i64* %RCX.i1994, align 8
  %4500 = shl nsw i64 %4499, 2
  %4501 = add i64 %4500, %4468
  %4502 = add i64 %4460, 26
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i32*
  %4504 = load i32, i32* %4503, align 4
  %4505 = sext i32 %4504 to i64
  store i64 %4505, i64* %RAX.i1508, align 8
  %4506 = shl nsw i64 %4505, 2
  %4507 = add i64 %4506, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %4508 = add i64 %4460, 33
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  %4510 = load i32, i32* %4509, align 4
  %4511 = zext i32 %4510 to i64
  store i64 %4511, i64* %RDX.i2064, align 8
  %4512 = add i64 %4460, 37
  store i64 %4512, i64* %3, align 8
  %4513 = load i32, i32* %4497, align 4
  %4514 = sext i32 %4513 to i64
  store i64 %4514, i64* %RAX.i1508, align 8
  %4515 = shl nsw i64 %4514, 2
  %4516 = add i64 %.pre205, -1616
  %4517 = add i64 %4516, %4515
  %4518 = add i64 %4460, 44
  store i64 %4518, i64* %3, align 8
  %4519 = inttoptr i64 %4517 to i32*
  store i32 %4510, i32* %4519, align 4
  %4520 = load i64, i64* %3, align 8
  %4521 = add i64 %4520, 20
  store i64 %4521, i64* %3, align 8
  br label %block_.L_401372

block_.L_401363:                                  ; preds = %block_401312, %block_.L_401300
  %4522 = phi i64 [ %4394, %block_.L_401300 ], [ %4460, %block_401312 ]
  %4523 = phi i64 [ %4359, %block_.L_401300 ], [ %.pre205, %block_401312 ]
  %4524 = add i64 %4523, -4
  %4525 = add i64 %4522, 4
  store i64 %4525, i64* %3, align 8
  %4526 = inttoptr i64 %4524 to i32*
  %4527 = load i32, i32* %4526, align 4
  %4528 = sext i32 %4527 to i64
  store i64 %4528, i64* %RAX.i1508, align 8
  %4529 = shl nsw i64 %4528, 2
  %4530 = add i64 %4523, -1616
  %4531 = add i64 %4530, %4529
  %4532 = add i64 %4522, 15
  store i64 %4532, i64* %3, align 8
  %4533 = inttoptr i64 %4531 to i32*
  store i32 0, i32* %4533, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_401372

block_.L_401372:                                  ; preds = %block_.L_401363, %block_401332
  %4534 = phi i64 [ %.pre206, %block_.L_401363 ], [ %4521, %block_401332 ]
  %4535 = add i64 %4534, 5
  store i64 %4535, i64* %3, align 8
  br label %block_.L_401377

block_.L_401377:                                  ; preds = %block_.L_401372, %block_4012dd
  %storemerge72 = phi i64 [ %4357, %block_4012dd ], [ %4535, %block_.L_401372 ]
  %4536 = add i64 %storemerge72, 5
  store i64 %4536, i64* %3, align 8
  br label %block_.L_40137c

block_.L_40137c:                                  ; preds = %block_.L_401377, %block_401267
  %storemerge68 = phi i64 [ %4225, %block_401267 ], [ %4536, %block_.L_401377 ]
  %4537 = load i64, i64* %RBP.i, align 8
  %4538 = add i64 %4537, -8
  %4539 = add i64 %storemerge68, 7
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4538 to i32*
  store i32 1, i32* %4540, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_401383

block_.L_401383:                                  ; preds = %block_.L_401421, %block_.L_40137c
  %4541 = phi i64 [ %.pre207, %block_.L_40137c ], [ %4919, %block_.L_401421 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.29, %block_.L_40137c ], [ %MEMORY.37, %block_.L_401421 ]
  %4542 = load i64, i64* %RBP.i, align 8
  %4543 = add i64 %4542, -8
  %4544 = add i64 %4541, 3
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = zext i32 %4546 to i64
  store i64 %4547, i64* %RAX.i1508, align 8
  %4548 = add i64 %4542, -4
  %4549 = add i64 %4541, 6
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  %4551 = load i32, i32* %4550, align 4
  %4552 = sub i32 %4546, %4551
  %4553 = icmp ult i32 %4546, %4551
  %4554 = zext i1 %4553 to i8
  store i8 %4554, i8* %14, align 1
  %4555 = and i32 %4552, 255
  %4556 = tail call i32 @llvm.ctpop.i32(i32 %4555)
  %4557 = trunc i32 %4556 to i8
  %4558 = and i8 %4557, 1
  %4559 = xor i8 %4558, 1
  store i8 %4559, i8* %21, align 1
  %4560 = xor i32 %4551, %4546
  %4561 = xor i32 %4560, %4552
  %4562 = lshr i32 %4561, 4
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  store i8 %4564, i8* %27, align 1
  %4565 = icmp eq i32 %4552, 0
  %4566 = zext i1 %4565 to i8
  store i8 %4566, i8* %30, align 1
  %4567 = lshr i32 %4552, 31
  %4568 = trunc i32 %4567 to i8
  store i8 %4568, i8* %33, align 1
  %4569 = lshr i32 %4546, 31
  %4570 = lshr i32 %4551, 31
  %4571 = xor i32 %4570, %4569
  %4572 = xor i32 %4567, %4569
  %4573 = add nuw nsw i32 %4572, %4571
  %4574 = icmp eq i32 %4573, 2
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %39, align 1
  %4576 = icmp ne i8 %4568, 0
  %4577 = xor i1 %4576, %4574
  %.v288 = select i1 %4577, i64 12, i64 177
  %4578 = add i64 %4541, %.v288
  %4579 = add i64 %4578, 4
  store i64 %4579, i64* %3, align 8
  br i1 %4577, label %block_40138f, label %block_.L_401434

block_40138f:                                     ; preds = %block_.L_401383
  %4580 = load i32, i32* %4545, align 4
  %4581 = sext i32 %4580 to i64
  store i64 %4581, i64* %RAX.i1508, align 8
  %4582 = shl nsw i64 %4581, 2
  %4583 = add i64 %4542, -1488
  %4584 = add i64 %4583, %4582
  %4585 = add i64 %4578, 12
  store i64 %4585, i64* %3, align 8
  %4586 = inttoptr i64 %4584 to i32*
  %4587 = load i32, i32* %4586, align 4
  %4588 = add i32 %4587, 1
  %4589 = icmp ne i32 %4587, -1
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %14, align 1
  %4591 = and i32 %4588, 255
  %4592 = tail call i32 @llvm.ctpop.i32(i32 %4591)
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  %4595 = xor i8 %4594, 1
  store i8 %4595, i8* %21, align 1
  %4596 = xor i32 %4587, 16
  %4597 = xor i32 %4596, %4588
  %4598 = lshr i32 %4597, 4
  %4599 = trunc i32 %4598 to i8
  %4600 = and i8 %4599, 1
  store i8 %4600, i8* %27, align 1
  %4601 = icmp eq i32 %4588, 0
  %4602 = zext i1 %4601 to i8
  store i8 %4602, i8* %30, align 1
  %4603 = lshr i32 %4588, 31
  %4604 = trunc i32 %4603 to i8
  store i8 %4604, i8* %33, align 1
  %4605 = lshr i32 %4587, 31
  %4606 = xor i32 %4605, 1
  %4607 = xor i32 %4603, %4605
  %4608 = add nuw nsw i32 %4607, %4606
  %4609 = icmp eq i32 %4608, 2
  %4610 = zext i1 %4609 to i8
  store i8 %4610, i8* %39, align 1
  %.v289 = select i1 %4601, i64 146, i64 18
  %4611 = add i64 %4578, %.v289
  store i64 %4611, i64* %3, align 8
  br i1 %4601, label %block_.L_401421, label %block_4013a1

block_4013a1:                                     ; preds = %block_40138f
  %4612 = add i64 %4542, -1168
  store i64 %4612, i64* %RAX.i1508, align 8
  %4613 = add i64 %4542, -12
  %4614 = add i64 %4611, 11
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i32*
  %4616 = load i32, i32* %4615, align 4
  %4617 = sext i32 %4616 to i64
  %4618 = shl nsw i64 %4617, 6
  store i64 %4618, i64* %RCX.i1994, align 8
  %4619 = add i64 %4618, %4612
  store i64 %4619, i64* %RAX.i1508, align 8
  %4620 = icmp ult i64 %4619, %4612
  %4621 = icmp ult i64 %4619, %4618
  %4622 = or i1 %4620, %4621
  %4623 = zext i1 %4622 to i8
  store i8 %4623, i8* %14, align 1
  %4624 = trunc i64 %4619 to i32
  %4625 = and i32 %4624, 255
  %4626 = tail call i32 @llvm.ctpop.i32(i32 %4625)
  %4627 = trunc i32 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = xor i8 %4628, 1
  store i8 %4629, i8* %21, align 1
  %4630 = xor i64 %4612, %4619
  %4631 = lshr i64 %4630, 4
  %4632 = trunc i64 %4631 to i8
  %4633 = and i8 %4632, 1
  store i8 %4633, i8* %27, align 1
  %4634 = icmp eq i64 %4619, 0
  %4635 = zext i1 %4634 to i8
  store i8 %4635, i8* %30, align 1
  %4636 = lshr i64 %4619, 63
  %4637 = trunc i64 %4636 to i8
  store i8 %4637, i8* %33, align 1
  %4638 = lshr i64 %4612, 63
  %4639 = lshr i64 %4617, 57
  %4640 = and i64 %4639, 1
  %4641 = xor i64 %4636, %4638
  %4642 = xor i64 %4636, %4640
  %4643 = add nuw nsw i64 %4641, %4642
  %4644 = icmp eq i64 %4643, 2
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %39, align 1
  %4646 = add i64 %4611, 21
  store i64 %4646, i64* %3, align 8
  %4647 = load i32, i32* %4550, align 4
  %4648 = zext i32 %4647 to i64
  store i64 %4648, i64* %RDX.i2064, align 8
  %4649 = add i64 %4611, 24
  store i64 %4649, i64* %3, align 8
  %4650 = load i32, i32* %4545, align 4
  %4651 = sub i32 %4647, %4650
  %4652 = zext i32 %4651 to i64
  store i64 %4652, i64* %RDX.i2064, align 8
  %4653 = icmp ult i32 %4647, %4650
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %14, align 1
  %4655 = and i32 %4651, 255
  %4656 = tail call i32 @llvm.ctpop.i32(i32 %4655)
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  %4659 = xor i8 %4658, 1
  store i8 %4659, i8* %21, align 1
  %4660 = xor i32 %4650, %4647
  %4661 = xor i32 %4660, %4651
  %4662 = lshr i32 %4661, 4
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  store i8 %4664, i8* %27, align 1
  %4665 = icmp eq i32 %4651, 0
  %4666 = zext i1 %4665 to i8
  store i8 %4666, i8* %30, align 1
  %4667 = lshr i32 %4651, 31
  %4668 = trunc i32 %4667 to i8
  store i8 %4668, i8* %33, align 1
  %4669 = lshr i32 %4647, 31
  %4670 = lshr i32 %4650, 31
  %4671 = xor i32 %4670, %4669
  %4672 = xor i32 %4667, %4669
  %4673 = add nuw nsw i32 %4672, %4671
  %4674 = icmp eq i32 %4673, 2
  %4675 = zext i1 %4674 to i8
  store i8 %4675, i8* %39, align 1
  %4676 = sext i32 %4651 to i64
  store i64 %4676, i64* %RCX.i1994, align 8
  %4677 = shl nsw i64 %4676, 2
  %4678 = add i64 %4619, %4677
  %4679 = add i64 %4611, 31
  store i64 %4679, i64* %3, align 8
  %4680 = inttoptr i64 %4678 to i32*
  %4681 = load i32, i32* %4680, align 4
  %4682 = add i32 %4681, 1
  %4683 = icmp ne i32 %4681, -1
  %4684 = zext i1 %4683 to i8
  store i8 %4684, i8* %14, align 1
  %4685 = and i32 %4682, 255
  %4686 = tail call i32 @llvm.ctpop.i32(i32 %4685)
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  %4689 = xor i8 %4688, 1
  store i8 %4689, i8* %21, align 1
  %4690 = xor i32 %4681, 16
  %4691 = xor i32 %4690, %4682
  %4692 = lshr i32 %4691, 4
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  store i8 %4694, i8* %27, align 1
  %4695 = icmp eq i32 %4682, 0
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %30, align 1
  %4697 = lshr i32 %4682, 31
  %4698 = trunc i32 %4697 to i8
  store i8 %4698, i8* %33, align 1
  %4699 = lshr i32 %4681, 31
  %4700 = xor i32 %4699, 1
  %4701 = xor i32 %4697, %4699
  %4702 = add nuw nsw i32 %4701, %4700
  %4703 = icmp eq i32 %4702, 2
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %39, align 1
  %.v290 = select i1 %4695, i64 128, i64 37
  %4705 = add i64 %4611, %.v290
  store i64 %4705, i64* %3, align 8
  br i1 %4695, label %block_.L_401421, label %block_4013c6

block_4013c6:                                     ; preds = %block_4013a1
  store i64 255, i64* %RAX.i1508, align 8
  %4706 = load i64, i64* %RBP.i, align 8
  %4707 = add i64 %4706, -1168
  store i64 %4707, i64* %RCX.i1994, align 8
  %4708 = add i64 %4706, -12
  %4709 = add i64 %4705, 16
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4708 to i32*
  %4711 = load i32, i32* %4710, align 4
  %4712 = sext i32 %4711 to i64
  %4713 = shl nsw i64 %4712, 6
  store i64 %4713, i64* %RDX.i2064, align 8
  %4714 = add i64 %4713, %4707
  store i64 %4714, i64* %RCX.i1994, align 8
  %4715 = icmp ult i64 %4714, %4707
  %4716 = icmp ult i64 %4714, %4713
  %4717 = or i1 %4715, %4716
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %14, align 1
  %4719 = trunc i64 %4714 to i32
  %4720 = and i32 %4719, 255
  %4721 = tail call i32 @llvm.ctpop.i32(i32 %4720)
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  %4724 = xor i8 %4723, 1
  store i8 %4724, i8* %21, align 1
  %4725 = xor i64 %4707, %4714
  %4726 = lshr i64 %4725, 4
  %4727 = trunc i64 %4726 to i8
  %4728 = and i8 %4727, 1
  store i8 %4728, i8* %27, align 1
  %4729 = icmp eq i64 %4714, 0
  %4730 = zext i1 %4729 to i8
  store i8 %4730, i8* %30, align 1
  %4731 = lshr i64 %4714, 63
  %4732 = trunc i64 %4731 to i8
  store i8 %4732, i8* %33, align 1
  %4733 = lshr i64 %4707, 63
  %4734 = lshr i64 %4712, 57
  %4735 = and i64 %4734, 1
  %4736 = xor i64 %4731, %4733
  %4737 = xor i64 %4731, %4735
  %4738 = add nuw nsw i64 %4736, %4737
  %4739 = icmp eq i64 %4738, 2
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %39, align 1
  %4741 = add i64 %4706, -4
  %4742 = add i64 %4705, 26
  store i64 %4742, i64* %3, align 8
  %4743 = inttoptr i64 %4741 to i32*
  %4744 = load i32, i32* %4743, align 4
  %4745 = zext i32 %4744 to i64
  store i64 %4745, i64* %RSI.i2060, align 8
  %4746 = add i64 %4706, -8
  %4747 = add i64 %4705, 29
  store i64 %4747, i64* %3, align 8
  %4748 = inttoptr i64 %4746 to i32*
  %4749 = load i32, i32* %4748, align 4
  %4750 = sub i32 %4744, %4749
  %4751 = zext i32 %4750 to i64
  store i64 %4751, i64* %RSI.i2060, align 8
  %4752 = icmp ult i32 %4744, %4749
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %14, align 1
  %4754 = and i32 %4750, 255
  %4755 = tail call i32 @llvm.ctpop.i32(i32 %4754)
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  %4758 = xor i8 %4757, 1
  store i8 %4758, i8* %21, align 1
  %4759 = xor i32 %4749, %4744
  %4760 = xor i32 %4759, %4750
  %4761 = lshr i32 %4760, 4
  %4762 = trunc i32 %4761 to i8
  %4763 = and i8 %4762, 1
  store i8 %4763, i8* %27, align 1
  %4764 = icmp eq i32 %4750, 0
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %30, align 1
  %4766 = lshr i32 %4750, 31
  %4767 = trunc i32 %4766 to i8
  store i8 %4767, i8* %33, align 1
  %4768 = lshr i32 %4744, 31
  %4769 = lshr i32 %4749, 31
  %4770 = xor i32 %4769, %4768
  %4771 = xor i32 %4766, %4768
  %4772 = add nuw nsw i32 %4771, %4770
  %4773 = icmp eq i32 %4772, 2
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %39, align 1
  %4775 = sext i32 %4750 to i64
  store i64 %4775, i64* %RDX.i2064, align 8
  %4776 = shl nsw i64 %4775, 2
  %4777 = add i64 %4714, %4776
  %4778 = add i64 %4705, 35
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i32*
  %4780 = load i32, i32* %4779, align 4
  %4781 = zext i32 %4780 to i64
  store i64 %4781, i64* %RSI.i2060, align 8
  %4782 = load i64, i64* %RBP.i, align 8
  %4783 = add i64 %4782, -8
  %4784 = add i64 %4705, 39
  store i64 %4784, i64* %3, align 8
  %4785 = inttoptr i64 %4783 to i32*
  %4786 = load i32, i32* %4785, align 4
  %4787 = sext i32 %4786 to i64
  store i64 %4787, i64* %RCX.i1994, align 8
  %4788 = shl nsw i64 %4787, 2
  %4789 = add nsw i64 %4788, -1488
  %4790 = add i64 %4789, %4782
  %4791 = add i64 %4705, 46
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  %4793 = load i32, i32* %4792, align 4
  %4794 = add i32 %4793, %4780
  %4795 = zext i32 %4794 to i64
  store i64 %4795, i64* %RSI.i2060, align 8
  %4796 = icmp ult i32 %4794, %4780
  %4797 = icmp ult i32 %4794, %4793
  %4798 = or i1 %4796, %4797
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %14, align 1
  %4800 = and i32 %4794, 255
  %4801 = tail call i32 @llvm.ctpop.i32(i32 %4800)
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = xor i8 %4803, 1
  store i8 %4804, i8* %21, align 1
  %4805 = xor i32 %4793, %4780
  %4806 = xor i32 %4805, %4794
  %4807 = lshr i32 %4806, 4
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  store i8 %4809, i8* %27, align 1
  %4810 = icmp eq i32 %4794, 0
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %30, align 1
  %4812 = lshr i32 %4794, 31
  %4813 = trunc i32 %4812 to i8
  store i8 %4813, i8* %33, align 1
  %4814 = lshr i32 %4780, 31
  %4815 = lshr i32 %4793, 31
  %4816 = xor i32 %4812, %4814
  %4817 = xor i32 %4812, %4815
  %4818 = add nuw nsw i32 %4816, %4817
  %4819 = icmp eq i32 %4818, 2
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %39, align 1
  %4821 = add i64 %4782, -2720
  %4822 = load i32, i32* %EAX.i2012, align 4
  %4823 = add i64 %4705, 52
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4821 to i32*
  store i32 %4822, i32* %4824, align 4
  %4825 = load i32, i32* %ESI.i2054, align 4
  %4826 = zext i32 %4825 to i64
  %4827 = load i64, i64* %3, align 8
  store i64 %4826, i64* %RAX.i1508, align 8
  %4828 = sext i32 %4825 to i64
  %4829 = lshr i64 %4828, 32
  store i64 %4829, i64* %56, align 8
  %4830 = load i64, i64* %RBP.i, align 8
  %4831 = add i64 %4830, -2720
  %4832 = add i64 %4827, 9
  store i64 %4832, i64* %3, align 8
  %4833 = inttoptr i64 %4831 to i32*
  %4834 = load i32, i32* %4833, align 4
  %4835 = zext i32 %4834 to i64
  store i64 %4835, i64* %RSI.i2060, align 8
  %4836 = add i64 %4827, 11
  store i64 %4836, i64* %3, align 8
  %4837 = sext i32 %4834 to i64
  %4838 = shl nuw i64 %4829, 32
  %4839 = or i64 %4838, %4826
  %4840 = sdiv i64 %4839, %4837
  %4841 = shl i64 %4840, 32
  %4842 = ashr exact i64 %4841, 32
  %4843 = icmp eq i64 %4840, %4842
  br i1 %4843, label %4846, label %4844

; <label>:4844:                                   ; preds = %block_4013c6
  %4845 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4836, %struct.Memory* %MEMORY.36)
  %.pre208 = load i32, i32* %EDX.i2048, align 4
  %.pre209 = load i64, i64* %3, align 8
  %.pre210 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit545

; <label>:4846:                                   ; preds = %block_4013c6
  %4847 = srem i64 %4839, %4837
  %4848 = and i64 %4840, 4294967295
  store i64 %4848, i64* %RAX.i1508, align 8
  %4849 = and i64 %4847, 4294967295
  store i64 %4849, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4850 = trunc i64 %4847 to i32
  br label %routine_idivl__esi.exit545

routine_idivl__esi.exit545:                       ; preds = %4846, %4844
  %4851 = phi i64 [ %.pre210, %4844 ], [ %4830, %4846 ]
  %4852 = phi i64 [ %.pre209, %4844 ], [ %4836, %4846 ]
  %4853 = phi i32 [ %.pre208, %4844 ], [ %4850, %4846 ]
  %4854 = phi %struct.Memory* [ %4845, %4844 ], [ %MEMORY.36, %4846 ]
  %4855 = sext i32 %4853 to i64
  store i64 %4855, i64* %RCX.i1994, align 8
  %4856 = shl nsw i64 %4855, 2
  %4857 = add i64 %4856, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %4858 = add i64 %4852, 10
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i32*
  %4860 = load i32, i32* %4859, align 4
  %4861 = zext i32 %4860 to i64
  store i64 %4861, i64* %RDX.i2064, align 8
  %4862 = add i64 %4851, -4
  %4863 = add i64 %4852, 14
  store i64 %4863, i64* %3, align 8
  %4864 = inttoptr i64 %4862 to i32*
  %4865 = load i32, i32* %4864, align 4
  %4866 = sext i32 %4865 to i64
  store i64 %4866, i64* %RCX.i1994, align 8
  %4867 = shl nsw i64 %4866, 2
  %4868 = add nsw i64 %4867, -1616
  %4869 = add i64 %4868, %4851
  %4870 = add i64 %4852, 21
  store i64 %4870, i64* %3, align 8
  %4871 = inttoptr i64 %4869 to i32*
  %4872 = load i32, i32* %4871, align 4
  %4873 = xor i32 %4872, %4860
  %4874 = zext i32 %4873 to i64
  store i64 %4874, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4875 = and i32 %4873, 255
  %4876 = tail call i32 @llvm.ctpop.i32(i32 %4875)
  %4877 = trunc i32 %4876 to i8
  %4878 = and i8 %4877, 1
  %4879 = xor i8 %4878, 1
  store i8 %4879, i8* %21, align 1
  %4880 = icmp eq i32 %4873, 0
  %4881 = zext i1 %4880 to i8
  store i8 %4881, i8* %30, align 1
  %4882 = lshr i32 %4873, 31
  %4883 = trunc i32 %4882 to i8
  store i8 %4883, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4884 = add i64 %4851, -1616
  %4885 = add i64 %4884, %4867
  %4886 = add i64 %4852, 28
  store i64 %4886, i64* %3, align 8
  %4887 = inttoptr i64 %4885 to i32*
  store i32 %4873, i32* %4887, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_401421

block_.L_401421:                                  ; preds = %routine_idivl__esi.exit545, %block_4013a1, %block_40138f
  %4888 = phi i64 [ %4611, %block_40138f ], [ %4705, %block_4013a1 ], [ %.pre211, %routine_idivl__esi.exit545 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.36, %block_40138f ], [ %MEMORY.36, %block_4013a1 ], [ %4854, %routine_idivl__esi.exit545 ]
  %4889 = load i64, i64* %RBP.i, align 8
  %4890 = add i64 %4889, -8
  %4891 = add i64 %4888, 8
  store i64 %4891, i64* %3, align 8
  %4892 = inttoptr i64 %4890 to i32*
  %4893 = load i32, i32* %4892, align 4
  %4894 = add i32 %4893, 1
  %4895 = zext i32 %4894 to i64
  store i64 %4895, i64* %RAX.i1508, align 8
  %4896 = icmp eq i32 %4893, -1
  %4897 = icmp eq i32 %4894, 0
  %4898 = or i1 %4896, %4897
  %4899 = zext i1 %4898 to i8
  store i8 %4899, i8* %14, align 1
  %4900 = and i32 %4894, 255
  %4901 = tail call i32 @llvm.ctpop.i32(i32 %4900)
  %4902 = trunc i32 %4901 to i8
  %4903 = and i8 %4902, 1
  %4904 = xor i8 %4903, 1
  store i8 %4904, i8* %21, align 1
  %4905 = xor i32 %4894, %4893
  %4906 = lshr i32 %4905, 4
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  store i8 %4908, i8* %27, align 1
  %4909 = zext i1 %4897 to i8
  store i8 %4909, i8* %30, align 1
  %4910 = lshr i32 %4894, 31
  %4911 = trunc i32 %4910 to i8
  store i8 %4911, i8* %33, align 1
  %4912 = lshr i32 %4893, 31
  %4913 = xor i32 %4910, %4912
  %4914 = add nuw nsw i32 %4913, %4910
  %4915 = icmp eq i32 %4914, 2
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %39, align 1
  %4917 = add i64 %4888, 14
  store i64 %4917, i64* %3, align 8
  store i32 %4894, i32* %4892, align 4
  %4918 = load i64, i64* %3, align 8
  %4919 = add i64 %4918, -172
  store i64 %4919, i64* %3, align 8
  br label %block_.L_401383

block_.L_401434:                                  ; preds = %block_.L_401383
  %4920 = load i32, i32* %4550, align 4
  %4921 = sext i32 %4920 to i64
  store i64 %4921, i64* %RAX.i1508, align 8
  %4922 = shl nsw i64 %4921, 2
  %4923 = add i64 %4542, -1616
  %4924 = add i64 %4923, %4922
  %4925 = add i64 %4578, 12
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = sext i32 %4927 to i64
  store i64 %4928, i64* %RAX.i1508, align 8
  %4929 = shl nsw i64 %4928, 2
  %4930 = add i64 %4929, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %4931 = add i64 %4578, 19
  store i64 %4931, i64* %3, align 8
  %4932 = inttoptr i64 %4930 to i32*
  %4933 = load i32, i32* %4932, align 4
  %4934 = zext i32 %4933 to i64
  store i64 %4934, i64* %RCX.i1994, align 8
  %4935 = add i64 %4578, 23
  store i64 %4935, i64* %3, align 8
  %4936 = load i32, i32* %4550, align 4
  %4937 = sext i32 %4936 to i64
  store i64 %4937, i64* %RAX.i1508, align 8
  %4938 = shl nsw i64 %4937, 2
  %4939 = add i64 %4923, %4938
  %4940 = add i64 %4578, 30
  store i64 %4940, i64* %3, align 8
  %4941 = inttoptr i64 %4939 to i32*
  store i32 %4933, i32* %4941, align 4
  %4942 = load i64, i64* %RBP.i, align 8
  %4943 = add i64 %4942, -4
  %4944 = load i64, i64* %3, align 8
  %4945 = add i64 %4944, 3
  store i64 %4945, i64* %3, align 8
  %4946 = inttoptr i64 %4943 to i32*
  %4947 = load i32, i32* %4946, align 4
  %4948 = add i32 %4947, 1
  %4949 = zext i32 %4948 to i64
  store i64 %4949, i64* %RAX.i1508, align 8
  %4950 = icmp eq i32 %4947, -1
  %4951 = icmp eq i32 %4948, 0
  %4952 = or i1 %4950, %4951
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %14, align 1
  %4954 = and i32 %4948, 255
  %4955 = tail call i32 @llvm.ctpop.i32(i32 %4954)
  %4956 = trunc i32 %4955 to i8
  %4957 = and i8 %4956, 1
  %4958 = xor i8 %4957, 1
  store i8 %4958, i8* %21, align 1
  %4959 = xor i32 %4948, %4947
  %4960 = lshr i32 %4959, 4
  %4961 = trunc i32 %4960 to i8
  %4962 = and i8 %4961, 1
  store i8 %4962, i8* %27, align 1
  %4963 = zext i1 %4951 to i8
  store i8 %4963, i8* %30, align 1
  %4964 = lshr i32 %4948, 31
  %4965 = trunc i32 %4964 to i8
  store i8 %4965, i8* %33, align 1
  %4966 = lshr i32 %4947, 31
  %4967 = xor i32 %4964, %4966
  %4968 = add nuw nsw i32 %4967, %4964
  %4969 = icmp eq i32 %4968, 2
  %4970 = zext i1 %4969 to i8
  store i8 %4970, i8* %39, align 1
  %4971 = add i64 %4944, 9
  store i64 %4971, i64* %3, align 8
  store i32 %4948, i32* %4946, align 4
  %4972 = load i64, i64* %3, align 8
  %4973 = add i64 %4972, -570
  store i64 %4973, i64* %3, align 8
  br label %block_.L_401221

block_.L_401460:                                  ; preds = %block_.L_401221
  %4974 = add i64 %4038, 7
  store i64 %4974, i64* %3, align 8
  store i32 0, i32* %3998, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_401467

block_.L_401467:                                  ; preds = %block_.L_4014c7, %block_.L_401460
  %4975 = phi i64 [ %5107, %block_.L_4014c7 ], [ %.pre212, %block_.L_401460 ]
  %4976 = load i64, i64* %RBP.i, align 8
  %4977 = add i64 %4976, -4
  %4978 = add i64 %4975, 7
  store i64 %4978, i64* %3, align 8
  %4979 = inttoptr i64 %4977 to i32*
  %4980 = load i32, i32* %4979, align 4
  %4981 = add i32 %4980, -255
  %4982 = icmp ult i32 %4980, 255
  %4983 = zext i1 %4982 to i8
  store i8 %4983, i8* %14, align 1
  %4984 = and i32 %4981, 255
  %4985 = tail call i32 @llvm.ctpop.i32(i32 %4984)
  %4986 = trunc i32 %4985 to i8
  %4987 = and i8 %4986, 1
  %4988 = xor i8 %4987, 1
  store i8 %4988, i8* %21, align 1
  %4989 = xor i32 %4980, 16
  %4990 = xor i32 %4989, %4981
  %4991 = lshr i32 %4990, 4
  %4992 = trunc i32 %4991 to i8
  %4993 = and i8 %4992, 1
  store i8 %4993, i8* %27, align 1
  %4994 = icmp eq i32 %4981, 0
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %30, align 1
  %4996 = lshr i32 %4981, 31
  %4997 = trunc i32 %4996 to i8
  store i8 %4997, i8* %33, align 1
  %4998 = lshr i32 %4980, 31
  %4999 = xor i32 %4996, %4998
  %5000 = add nuw nsw i32 %4999, %4998
  %5001 = icmp eq i32 %5000, 2
  %5002 = zext i1 %5001 to i8
  store i8 %5002, i8* %39, align 1
  %5003 = icmp ne i8 %4997, 0
  %5004 = xor i1 %5003, %5001
  %.v279 = select i1 %5004, i64 13, i64 115
  %5005 = add i64 %4975, %.v279
  store i64 %5005, i64* %3, align 8
  br i1 %5004, label %block_401474, label %block_.L_4014da

block_401474:                                     ; preds = %block_.L_401467
  %5006 = add i64 %5005, 4
  store i64 %5006, i64* %3, align 8
  %5007 = load i32, i32* %4979, align 4
  %5008 = sext i32 %5007 to i64
  store i64 %5008, i64* %RAX.i1508, align 8
  %5009 = shl nsw i64 %5008, 2
  %5010 = add i64 %4976, -2640
  %5011 = add i64 %5010, %5009
  %5012 = add i64 %5005, 15
  store i64 %5012, i64* %3, align 8
  %5013 = inttoptr i64 %5011 to i32*
  store i32 0, i32* %5013, align 4
  %5014 = load i64, i64* %RBP.i, align 8
  %5015 = add i64 %5014, -4
  %5016 = load i64, i64* %3, align 8
  %5017 = add i64 %5016, 4
  store i64 %5017, i64* %3, align 8
  %5018 = inttoptr i64 %5015 to i32*
  %5019 = load i32, i32* %5018, align 4
  %5020 = sext i32 %5019 to i64
  store i64 %5020, i64* %RAX.i1508, align 8
  %5021 = shl nsw i64 %5020, 2
  %5022 = add i64 %5021, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5023 = add i64 %5016, 12
  store i64 %5023, i64* %3, align 8
  %5024 = inttoptr i64 %5022 to i32*
  %5025 = load i32, i32* %5024, align 4
  %5026 = add i32 %5025, 1
  %5027 = icmp ne i32 %5025, -1
  %5028 = zext i1 %5027 to i8
  store i8 %5028, i8* %14, align 1
  %5029 = and i32 %5026, 255
  %5030 = tail call i32 @llvm.ctpop.i32(i32 %5029)
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = xor i8 %5032, 1
  store i8 %5033, i8* %21, align 1
  %5034 = xor i32 %5025, 16
  %5035 = xor i32 %5034, %5026
  %5036 = lshr i32 %5035, 4
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  store i8 %5038, i8* %27, align 1
  %5039 = icmp eq i32 %5026, 0
  %5040 = zext i1 %5039 to i8
  store i8 %5040, i8* %30, align 1
  %5041 = lshr i32 %5026, 31
  %5042 = trunc i32 %5041 to i8
  store i8 %5042, i8* %33, align 1
  %5043 = lshr i32 %5025, 31
  %5044 = xor i32 %5043, 1
  %5045 = xor i32 %5041, %5043
  %5046 = add nuw nsw i32 %5045, %5044
  %5047 = icmp eq i32 %5046, 2
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %39, align 1
  %.v250 = select i1 %5039, i64 53, i64 18
  %5049 = add i64 %5016, %.v250
  %5050 = add i64 %5049, 4
  store i64 %5050, i64* %3, align 8
  %5051 = load i32, i32* %5018, align 4
  %5052 = sext i32 %5051 to i64
  store i64 %5052, i64* %RAX.i1508, align 8
  %5053 = shl nsw i64 %5052, 2
  %5054 = add i64 %5053, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %5039, label %block_.L_4014b8, label %block_401495

block_401495:                                     ; preds = %block_401474
  %5055 = add i64 %5049, 12
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5054 to i32*
  %5057 = load i32, i32* %5056, align 4
  %5058 = sext i32 %5057 to i64
  store i64 %5058, i64* %RAX.i1508, align 8
  %5059 = shl nsw i64 %5058, 2
  %5060 = add i64 %5059, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %5061 = add i64 %5049, 19
  store i64 %5061, i64* %3, align 8
  %5062 = inttoptr i64 %5060 to i32*
  %5063 = load i32, i32* %5062, align 4
  %5064 = zext i32 %5063 to i64
  store i64 %5064, i64* %RCX.i1994, align 8
  %5065 = add i64 %5049, 23
  store i64 %5065, i64* %3, align 8
  %5066 = load i32, i32* %5018, align 4
  %5067 = sext i32 %5066 to i64
  store i64 %5067, i64* %RAX.i1508, align 8
  %5068 = shl nsw i64 %5067, 2
  %5069 = add i64 %5068, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5070 = add i64 %5049, 30
  store i64 %5070, i64* %3, align 8
  %5071 = inttoptr i64 %5069 to i32*
  store i32 %5063, i32* %5071, align 4
  %5072 = load i64, i64* %3, align 8
  %5073 = add i64 %5072, 20
  store i64 %5073, i64* %3, align 8
  br label %block_.L_4014c7

block_.L_4014b8:                                  ; preds = %block_401474
  %5074 = add i64 %5049, 15
  store i64 %5074, i64* %3, align 8
  %5075 = inttoptr i64 %5054 to i32*
  store i32 0, i32* %5075, align 4
  %.pre233 = load i64, i64* %3, align 8
  br label %block_.L_4014c7

block_.L_4014c7:                                  ; preds = %block_.L_4014b8, %block_401495
  %5076 = phi i64 [ %.pre233, %block_.L_4014b8 ], [ %5073, %block_401495 ]
  %5077 = load i64, i64* %RBP.i, align 8
  %5078 = add i64 %5077, -4
  %5079 = add i64 %5076, 8
  store i64 %5079, i64* %3, align 8
  %5080 = inttoptr i64 %5078 to i32*
  %5081 = load i32, i32* %5080, align 4
  %5082 = add i32 %5081, 1
  %5083 = zext i32 %5082 to i64
  store i64 %5083, i64* %RAX.i1508, align 8
  %5084 = icmp eq i32 %5081, -1
  %5085 = icmp eq i32 %5082, 0
  %5086 = or i1 %5084, %5085
  %5087 = zext i1 %5086 to i8
  store i8 %5087, i8* %14, align 1
  %5088 = and i32 %5082, 255
  %5089 = tail call i32 @llvm.ctpop.i32(i32 %5088)
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  %5092 = xor i8 %5091, 1
  store i8 %5092, i8* %21, align 1
  %5093 = xor i32 %5082, %5081
  %5094 = lshr i32 %5093, 4
  %5095 = trunc i32 %5094 to i8
  %5096 = and i8 %5095, 1
  store i8 %5096, i8* %27, align 1
  %5097 = zext i1 %5085 to i8
  store i8 %5097, i8* %30, align 1
  %5098 = lshr i32 %5082, 31
  %5099 = trunc i32 %5098 to i8
  store i8 %5099, i8* %33, align 1
  %5100 = lshr i32 %5081, 31
  %5101 = xor i32 %5098, %5100
  %5102 = add nuw nsw i32 %5101, %5098
  %5103 = icmp eq i32 %5102, 2
  %5104 = zext i1 %5103 to i8
  store i8 %5104, i8* %39, align 1
  %5105 = add i64 %5076, 14
  store i64 %5105, i64* %3, align 8
  store i32 %5082, i32* %5080, align 4
  %5106 = load i64, i64* %3, align 8
  %5107 = add i64 %5106, -110
  store i64 %5107, i64* %3, align 8
  br label %block_.L_401467

block_.L_4014da:                                  ; preds = %block_.L_401467
  %5108 = add i64 %5005, 7
  store i64 %5108, i64* %3, align 8
  store i32 0, i32* %4979, align 4
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_4014e1

block_.L_4014e1:                                  ; preds = %block_.L_4016fb, %block_.L_4014da
  %5109 = phi i64 [ %.pre213, %block_.L_4014da ], [ %5943, %block_.L_4016fb ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4014da ], [ %MEMORY.45, %block_.L_4016fb ]
  %5110 = load i64, i64* %RBP.i, align 8
  %5111 = add i64 %5110, -4
  %5112 = add i64 %5109, 3
  store i64 %5112, i64* %3, align 8
  %5113 = inttoptr i64 %5111 to i32*
  %5114 = load i32, i32* %5113, align 4
  %5115 = zext i32 %5114 to i64
  store i64 %5115, i64* %RAX.i1508, align 8
  %5116 = add i64 %5110, -12
  %5117 = add i64 %5109, 7
  store i64 %5117, i64* %3, align 8
  %5118 = inttoptr i64 %5116 to i32*
  %5119 = load i32, i32* %5118, align 4
  %5120 = sext i32 %5119 to i64
  store i64 %5120, i64* %RCX.i1994, align 8
  %5121 = shl nsw i64 %5120, 2
  %5122 = add nsw i64 %5121, -1328
  %5123 = add i64 %5122, %5110
  %5124 = add i64 %5109, 14
  store i64 %5124, i64* %3, align 8
  %5125 = inttoptr i64 %5123 to i32*
  %5126 = load i32, i32* %5125, align 4
  %5127 = sub i32 %5114, %5126
  %5128 = icmp ult i32 %5114, %5126
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %14, align 1
  %5130 = and i32 %5127, 255
  %5131 = tail call i32 @llvm.ctpop.i32(i32 %5130)
  %5132 = trunc i32 %5131 to i8
  %5133 = and i8 %5132, 1
  %5134 = xor i8 %5133, 1
  store i8 %5134, i8* %21, align 1
  %5135 = xor i32 %5126, %5114
  %5136 = xor i32 %5135, %5127
  %5137 = lshr i32 %5136, 4
  %5138 = trunc i32 %5137 to i8
  %5139 = and i8 %5138, 1
  store i8 %5139, i8* %27, align 1
  %5140 = icmp eq i32 %5127, 0
  %5141 = zext i1 %5140 to i8
  store i8 %5141, i8* %30, align 1
  %5142 = lshr i32 %5127, 31
  %5143 = trunc i32 %5142 to i8
  store i8 %5143, i8* %33, align 1
  %5144 = lshr i32 %5114, 31
  %5145 = lshr i32 %5126, 31
  %5146 = xor i32 %5145, %5144
  %5147 = xor i32 %5142, %5144
  %5148 = add nuw nsw i32 %5147, %5146
  %5149 = icmp eq i32 %5148, 2
  %5150 = zext i1 %5149 to i8
  store i8 %5150, i8* %39, align 1
  %5151 = icmp ne i8 %5143, 0
  %5152 = xor i1 %5151, %5149
  %.v280 = select i1 %5152, i64 20, i64 557
  %5153 = add i64 %5109, %.v280
  store i64 %5153, i64* %3, align 8
  br i1 %5152, label %block_4014f5, label %block_.L_40170e

block_4014f5:                                     ; preds = %block_.L_4014e1
  %5154 = add i64 %5153, 4
  store i64 %5154, i64* %3, align 8
  %5155 = load i32, i32* %5113, align 4
  %5156 = sext i32 %5155 to i64
  store i64 %5156, i64* %RAX.i1508, align 8
  %5157 = shl nsw i64 %5156, 2
  %5158 = add i64 %5110, -1568
  %5159 = add i64 %5158, %5157
  %5160 = add i64 %5153, 12
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5159 to i32*
  %5162 = load i32, i32* %5161, align 4
  %5163 = sext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i1508, align 8
  %5164 = shl nsw i64 %5163, 2
  %5165 = add i64 %5110, -2640
  %5166 = add i64 %5165, %5164
  %5167 = add i64 %5153, 23
  store i64 %5167, i64* %3, align 8
  %5168 = inttoptr i64 %5166 to i32*
  store i32 1, i32* %5168, align 4
  %5169 = load i64, i64* %RBP.i, align 8
  %5170 = add i64 %5169, -8
  %5171 = load i64, i64* %3, align 8
  %5172 = add i64 %5171, 7
  store i64 %5172, i64* %3, align 8
  %5173 = inttoptr i64 %5170 to i32*
  store i32 1, i32* %5173, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_401513

block_.L_401513:                                  ; preds = %block_.L_40158f, %block_4014f5
  %5174 = phi i64 [ %.pre214, %block_4014f5 ], [ %5412, %block_.L_40158f ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.40, %block_4014f5 ], [ %MEMORY.42, %block_.L_40158f ]
  %5175 = load i64, i64* %RBP.i, align 8
  %5176 = add i64 %5175, -8
  %5177 = add i64 %5174, 3
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i32*
  %5179 = load i32, i32* %5178, align 4
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RAX.i1508, align 8
  %5181 = add i64 %5175, -12
  %5182 = add i64 %5174, 7
  store i64 %5182, i64* %3, align 8
  %5183 = inttoptr i64 %5181 to i32*
  %5184 = load i32, i32* %5183, align 4
  %5185 = sext i32 %5184 to i64
  store i64 %5185, i64* %RCX.i1994, align 8
  %5186 = shl nsw i64 %5185, 2
  %5187 = add nsw i64 %5186, -1328
  %5188 = add i64 %5187, %5175
  %5189 = add i64 %5174, 14
  store i64 %5189, i64* %3, align 8
  %5190 = inttoptr i64 %5188 to i32*
  %5191 = load i32, i32* %5190, align 4
  %5192 = sub i32 %5179, %5191
  %5193 = icmp ult i32 %5179, %5191
  %5194 = zext i1 %5193 to i8
  store i8 %5194, i8* %14, align 1
  %5195 = and i32 %5192, 255
  %5196 = tail call i32 @llvm.ctpop.i32(i32 %5195)
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  %5199 = xor i8 %5198, 1
  store i8 %5199, i8* %21, align 1
  %5200 = xor i32 %5191, %5179
  %5201 = xor i32 %5200, %5192
  %5202 = lshr i32 %5201, 4
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  store i8 %5204, i8* %27, align 1
  %5205 = icmp eq i32 %5192, 0
  %5206 = zext i1 %5205 to i8
  store i8 %5206, i8* %30, align 1
  %5207 = lshr i32 %5192, 31
  %5208 = trunc i32 %5207 to i8
  store i8 %5208, i8* %33, align 1
  %5209 = lshr i32 %5179, 31
  %5210 = lshr i32 %5191, 31
  %5211 = xor i32 %5210, %5209
  %5212 = xor i32 %5207, %5209
  %5213 = add nuw nsw i32 %5212, %5211
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %39, align 1
  %5216 = icmp ne i8 %5208, 0
  %5217 = xor i1 %5216, %5214
  %.demorgan249 = or i1 %5205, %5217
  %.v281 = select i1 %.demorgan249, i64 20, i64 143
  %5218 = add i64 %5174, %.v281
  store i64 %5218, i64* %3, align 8
  br i1 %.demorgan249, label %block_401527, label %block_.L_4015a2

block_401527:                                     ; preds = %block_.L_401513
  %5219 = add i64 %5218, 4
  store i64 %5219, i64* %3, align 8
  %5220 = load i32, i32* %5178, align 4
  %5221 = sext i32 %5220 to i64
  store i64 %5221, i64* %RAX.i1508, align 8
  %5222 = shl nsw i64 %5221, 2
  %5223 = add i64 %5175, -1616
  %5224 = add i64 %5223, %5222
  %5225 = add i64 %5218, 12
  store i64 %5225, i64* %3, align 8
  %5226 = inttoptr i64 %5224 to i32*
  %5227 = load i32, i32* %5226, align 4
  %5228 = add i32 %5227, 1
  %5229 = icmp ne i32 %5227, -1
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %14, align 1
  %5231 = and i32 %5228, 255
  %5232 = tail call i32 @llvm.ctpop.i32(i32 %5231)
  %5233 = trunc i32 %5232 to i8
  %5234 = and i8 %5233, 1
  %5235 = xor i8 %5234, 1
  store i8 %5235, i8* %21, align 1
  %5236 = xor i32 %5227, 16
  %5237 = xor i32 %5236, %5228
  %5238 = lshr i32 %5237, 4
  %5239 = trunc i32 %5238 to i8
  %5240 = and i8 %5239, 1
  store i8 %5240, i8* %27, align 1
  %5241 = icmp eq i32 %5228, 0
  %5242 = zext i1 %5241 to i8
  store i8 %5242, i8* %30, align 1
  %5243 = lshr i32 %5228, 31
  %5244 = trunc i32 %5243 to i8
  store i8 %5244, i8* %33, align 1
  %5245 = lshr i32 %5227, 31
  %5246 = xor i32 %5245, 1
  %5247 = xor i32 %5243, %5245
  %5248 = add nuw nsw i32 %5247, %5246
  %5249 = icmp eq i32 %5248, 2
  %5250 = zext i1 %5249 to i8
  store i8 %5250, i8* %39, align 1
  %.v285 = select i1 %5241, i64 104, i64 18
  %5251 = add i64 %5218, %.v285
  store i64 %5251, i64* %3, align 8
  br i1 %5241, label %block_.L_40158f, label %block_401539

block_401539:                                     ; preds = %block_401527
  store i64 255, i64* %RAX.i1508, align 8
  %5252 = add i64 %5251, 9
  store i64 %5252, i64* %3, align 8
  %5253 = load i32, i32* %5178, align 4
  %5254 = sext i32 %5253 to i64
  store i64 %5254, i64* %RCX.i1994, align 8
  %5255 = shl nsw i64 %5254, 2
  %5256 = add i64 %5223, %5255
  %5257 = add i64 %5251, 16
  store i64 %5257, i64* %3, align 8
  %5258 = inttoptr i64 %5256 to i32*
  %5259 = load i32, i32* %5258, align 4
  %5260 = zext i32 %5259 to i64
  store i64 %5260, i64* %RDX.i2064, align 8
  %5261 = add i64 %5251, 19
  store i64 %5261, i64* %3, align 8
  %5262 = load i32, i32* %5178, align 4
  %5263 = zext i32 %5262 to i64
  store i64 %5263, i64* %RSI.i2060, align 8
  %5264 = add i64 %5175, -4
  %5265 = add i64 %5251, 23
  store i64 %5265, i64* %3, align 8
  %5266 = inttoptr i64 %5264 to i32*
  %5267 = load i32, i32* %5266, align 4
  %5268 = sext i32 %5267 to i64
  store i64 %5268, i64* %RCX.i1994, align 8
  %5269 = shl nsw i64 %5268, 2
  %5270 = add nsw i64 %5269, -1536
  %5271 = add i64 %5270, %5175
  %5272 = add i64 %5251, 31
  store i64 %5272, i64* %3, align 8
  %5273 = inttoptr i64 %5271 to i32*
  %5274 = load i32, i32* %5273, align 4
  %5275 = sext i32 %5262 to i64
  %5276 = sext i32 %5274 to i64
  %5277 = mul nsw i64 %5276, %5275
  %5278 = and i64 %5277, 4294967295
  store i64 %5278, i64* %RSI.i2060, align 8
  %5279 = trunc i64 %5277 to i32
  %5280 = add i32 %5279, %5259
  %5281 = zext i32 %5280 to i64
  store i64 %5281, i64* %RDX.i2064, align 8
  %5282 = icmp ult i32 %5280, %5259
  %5283 = icmp ult i32 %5280, %5279
  %5284 = or i1 %5282, %5283
  %5285 = zext i1 %5284 to i8
  store i8 %5285, i8* %14, align 1
  %5286 = and i32 %5280, 255
  %5287 = tail call i32 @llvm.ctpop.i32(i32 %5286)
  %5288 = trunc i32 %5287 to i8
  %5289 = and i8 %5288, 1
  %5290 = xor i8 %5289, 1
  store i8 %5290, i8* %21, align 1
  %5291 = xor i64 %5277, %5260
  %5292 = trunc i64 %5291 to i32
  %5293 = xor i32 %5292, %5280
  %5294 = lshr i32 %5293, 4
  %5295 = trunc i32 %5294 to i8
  %5296 = and i8 %5295, 1
  store i8 %5296, i8* %27, align 1
  %5297 = icmp eq i32 %5280, 0
  %5298 = zext i1 %5297 to i8
  store i8 %5298, i8* %30, align 1
  %5299 = lshr i32 %5280, 31
  %5300 = trunc i32 %5299 to i8
  store i8 %5300, i8* %33, align 1
  %5301 = lshr i32 %5259, 31
  %5302 = lshr i32 %5279, 31
  %5303 = xor i32 %5299, %5301
  %5304 = xor i32 %5299, %5302
  %5305 = add nuw nsw i32 %5303, %5304
  %5306 = icmp eq i32 %5305, 2
  %5307 = zext i1 %5306 to i8
  store i8 %5307, i8* %39, align 1
  %5308 = add i64 %5175, -2724
  %5309 = add i64 %5251, 39
  store i64 %5309, i64* %3, align 8
  %5310 = inttoptr i64 %5308 to i32*
  store i32 255, i32* %5310, align 4
  %5311 = load i32, i32* %EDX.i2048, align 4
  %5312 = zext i32 %5311 to i64
  %5313 = load i64, i64* %3, align 8
  store i64 %5312, i64* %RAX.i1508, align 8
  %5314 = sext i32 %5311 to i64
  %5315 = lshr i64 %5314, 32
  store i64 %5315, i64* %56, align 8
  %5316 = load i64, i64* %RBP.i, align 8
  %5317 = add i64 %5316, -2724
  %5318 = add i64 %5313, 9
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i32*
  %5320 = load i32, i32* %5319, align 4
  %5321 = zext i32 %5320 to i64
  store i64 %5321, i64* %RSI.i2060, align 8
  %5322 = add i64 %5313, 11
  store i64 %5322, i64* %3, align 8
  %5323 = sext i32 %5320 to i64
  %5324 = shl nuw i64 %5315, 32
  %5325 = or i64 %5324, %5312
  %5326 = sdiv i64 %5325, %5323
  %5327 = shl i64 %5326, 32
  %5328 = ashr exact i64 %5327, 32
  %5329 = icmp eq i64 %5326, %5328
  br i1 %5329, label %5332, label %5330

; <label>:5330:                                   ; preds = %block_401539
  %5331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5322, %struct.Memory* %MEMORY.41)
  %.pre215 = load i32, i32* %EDX.i2048, align 4
  %.pre216 = load i64, i64* %3, align 8
  %.pre217 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit367

; <label>:5332:                                   ; preds = %block_401539
  %5333 = srem i64 %5325, %5323
  %5334 = and i64 %5326, 4294967295
  store i64 %5334, i64* %RAX.i1508, align 8
  %5335 = and i64 %5333, 4294967295
  store i64 %5335, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5336 = trunc i64 %5333 to i32
  br label %routine_idivl__esi.exit367

routine_idivl__esi.exit367:                       ; preds = %5332, %5330
  %5337 = phi i64 [ %.pre217, %5330 ], [ %5316, %5332 ]
  %5338 = phi i64 [ %.pre216, %5330 ], [ %5322, %5332 ]
  %5339 = phi i32 [ %.pre215, %5330 ], [ %5336, %5332 ]
  %5340 = phi %struct.Memory* [ %5331, %5330 ], [ %MEMORY.41, %5332 ]
  %5341 = sext i32 %5339 to i64
  store i64 %5341, i64* %RCX.i1994, align 8
  %5342 = shl nsw i64 %5341, 2
  %5343 = add i64 %5342, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %5344 = add i64 %5338, 10
  store i64 %5344, i64* %3, align 8
  %5345 = inttoptr i64 %5343 to i32*
  %5346 = load i32, i32* %5345, align 4
  %5347 = zext i32 %5346 to i64
  store i64 %5347, i64* %RDX.i2064, align 8
  %5348 = add i64 %5337, -4
  %5349 = add i64 %5338, 14
  store i64 %5349, i64* %3, align 8
  %5350 = inttoptr i64 %5348 to i32*
  %5351 = load i32, i32* %5350, align 4
  %5352 = sext i32 %5351 to i64
  store i64 %5352, i64* %RCX.i1994, align 8
  %5353 = shl nsw i64 %5352, 2
  %5354 = add i64 %5337, -1568
  %5355 = add i64 %5354, %5353
  %5356 = add i64 %5338, 22
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i32*
  %5358 = load i32, i32* %5357, align 4
  %5359 = sext i32 %5358 to i64
  store i64 %5359, i64* %RCX.i1994, align 8
  %5360 = shl nsw i64 %5359, 2
  %5361 = add nsw i64 %5360, -2640
  %5362 = add i64 %5361, %5337
  %5363 = add i64 %5338, 29
  store i64 %5363, i64* %3, align 8
  %5364 = inttoptr i64 %5362 to i32*
  %5365 = load i32, i32* %5364, align 4
  %5366 = xor i32 %5365, %5346
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5368 = and i32 %5366, 255
  %5369 = tail call i32 @llvm.ctpop.i32(i32 %5368)
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  %5372 = xor i8 %5371, 1
  store i8 %5372, i8* %21, align 1
  %5373 = icmp eq i32 %5366, 0
  %5374 = zext i1 %5373 to i8
  store i8 %5374, i8* %30, align 1
  %5375 = lshr i32 %5366, 31
  %5376 = trunc i32 %5375 to i8
  store i8 %5376, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5377 = add i64 %5337, -2640
  %5378 = add i64 %5377, %5360
  %5379 = add i64 %5338, 36
  store i64 %5379, i64* %3, align 8
  %5380 = inttoptr i64 %5378 to i32*
  store i32 %5366, i32* %5380, align 4
  %.pre218 = load i64, i64* %3, align 8
  %.pre219 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40158f

block_.L_40158f:                                  ; preds = %routine_idivl__esi.exit367, %block_401527
  %5381 = phi i64 [ %5175, %block_401527 ], [ %.pre219, %routine_idivl__esi.exit367 ]
  %5382 = phi i64 [ %5251, %block_401527 ], [ %.pre218, %routine_idivl__esi.exit367 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.41, %block_401527 ], [ %5340, %routine_idivl__esi.exit367 ]
  %5383 = add i64 %5381, -8
  %5384 = add i64 %5382, 8
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5383 to i32*
  %5386 = load i32, i32* %5385, align 4
  %5387 = add i32 %5386, 1
  %5388 = zext i32 %5387 to i64
  store i64 %5388, i64* %RAX.i1508, align 8
  %5389 = icmp eq i32 %5386, -1
  %5390 = icmp eq i32 %5387, 0
  %5391 = or i1 %5389, %5390
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %14, align 1
  %5393 = and i32 %5387, 255
  %5394 = tail call i32 @llvm.ctpop.i32(i32 %5393)
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = xor i8 %5396, 1
  store i8 %5397, i8* %21, align 1
  %5398 = xor i32 %5387, %5386
  %5399 = lshr i32 %5398, 4
  %5400 = trunc i32 %5399 to i8
  %5401 = and i8 %5400, 1
  store i8 %5401, i8* %27, align 1
  %5402 = zext i1 %5390 to i8
  store i8 %5402, i8* %30, align 1
  %5403 = lshr i32 %5387, 31
  %5404 = trunc i32 %5403 to i8
  store i8 %5404, i8* %33, align 1
  %5405 = lshr i32 %5386, 31
  %5406 = xor i32 %5403, %5405
  %5407 = add nuw nsw i32 %5406, %5403
  %5408 = icmp eq i32 %5407, 2
  %5409 = zext i1 %5408 to i8
  store i8 %5409, i8* %39, align 1
  %5410 = add i64 %5382, 14
  store i64 %5410, i64* %3, align 8
  store i32 %5387, i32* %5385, align 4
  %5411 = load i64, i64* %3, align 8
  %5412 = add i64 %5411, -138
  store i64 %5412, i64* %3, align 8
  br label %block_.L_401513

block_.L_4015a2:                                  ; preds = %block_.L_401513
  %5413 = add i64 %5175, -4
  %5414 = add i64 %5218, 4
  store i64 %5414, i64* %3, align 8
  %5415 = inttoptr i64 %5413 to i32*
  %5416 = load i32, i32* %5415, align 4
  %5417 = sext i32 %5416 to i64
  store i64 %5417, i64* %RAX.i1508, align 8
  %5418 = shl nsw i64 %5417, 2
  %5419 = add i64 %5175, -1568
  %5420 = add i64 %5419, %5418
  %5421 = add i64 %5218, 12
  store i64 %5421, i64* %3, align 8
  %5422 = inttoptr i64 %5420 to i32*
  %5423 = load i32, i32* %5422, align 4
  %5424 = sext i32 %5423 to i64
  store i64 %5424, i64* %RAX.i1508, align 8
  %5425 = shl nsw i64 %5424, 2
  %5426 = add i64 %5175, -2640
  %5427 = add i64 %5426, %5425
  %5428 = add i64 %5218, 20
  store i64 %5428, i64* %3, align 8
  %5429 = inttoptr i64 %5427 to i32*
  %5430 = load i32, i32* %5429, align 4
  store i8 0, i8* %14, align 1
  %5431 = and i32 %5430, 255
  %5432 = tail call i32 @llvm.ctpop.i32(i32 %5431)
  %5433 = trunc i32 %5432 to i8
  %5434 = and i8 %5433, 1
  %5435 = xor i8 %5434, 1
  store i8 %5435, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5436 = icmp eq i32 %5430, 0
  %5437 = zext i1 %5436 to i8
  store i8 %5437, i8* %30, align 1
  %5438 = lshr i32 %5430, 31
  %5439 = trunc i32 %5438 to i8
  store i8 %5439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v282 = select i1 %5436, i64 345, i64 26
  %5440 = add i64 %5218, %.v282
  store i64 %5440, i64* %3, align 8
  br i1 %5436, label %block_.L_4016fb, label %block_4015bc

block_4015bc:                                     ; preds = %block_.L_4015a2
  %5441 = add i64 %5440, 4
  store i64 %5441, i64* %3, align 8
  %5442 = load i32, i32* %5415, align 4
  %5443 = sext i32 %5442 to i64
  store i64 %5443, i64* %RAX.i1508, align 8
  %5444 = shl nsw i64 %5443, 2
  %5445 = add i64 %5419, %5444
  %5446 = add i64 %5440, 12
  store i64 %5446, i64* %3, align 8
  %5447 = inttoptr i64 %5445 to i32*
  %5448 = load i32, i32* %5447, align 4
  %5449 = sext i32 %5448 to i64
  store i64 %5449, i64* %RAX.i1508, align 8
  %5450 = shl nsw i64 %5449, 2
  %5451 = add i64 %5426, %5450
  %5452 = add i64 %5440, 20
  store i64 %5452, i64* %3, align 8
  %5453 = inttoptr i64 %5451 to i32*
  %5454 = load i32, i32* %5453, align 4
  %5455 = sext i32 %5454 to i64
  store i64 %5455, i64* %RAX.i1508, align 8
  %5456 = shl nsw i64 %5455, 2
  %5457 = add i64 %5456, ptrtoint (%G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %5458 = add i64 %5440, 27
  store i64 %5458, i64* %3, align 8
  %5459 = inttoptr i64 %5457 to i32*
  %5460 = load i32, i32* %5459, align 4
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RCX.i1994, align 8
  %5462 = add i64 %5440, 31
  store i64 %5462, i64* %3, align 8
  %5463 = load i32, i32* %5415, align 4
  %5464 = sext i32 %5463 to i64
  store i64 %5464, i64* %RAX.i1508, align 8
  %5465 = shl nsw i64 %5464, 2
  %5466 = add i64 %5419, %5465
  %5467 = add i64 %5440, 39
  store i64 %5467, i64* %3, align 8
  %5468 = inttoptr i64 %5466 to i32*
  %5469 = load i32, i32* %5468, align 4
  %5470 = sext i32 %5469 to i64
  store i64 %5470, i64* %RAX.i1508, align 8
  %5471 = shl nsw i64 %5470, 2
  %5472 = add i64 %5426, %5471
  %5473 = add i64 %5440, 46
  store i64 %5473, i64* %3, align 8
  %5474 = inttoptr i64 %5472 to i32*
  store i32 %5460, i32* %5474, align 4
  %5475 = load i64, i64* %RBP.i, align 8
  %5476 = add i64 %5475, -16
  %5477 = load i64, i64* %3, align 8
  %5478 = add i64 %5477, 7
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5476 to i32*
  store i32 0, i32* %5479, align 4
  %5480 = load i64, i64* %RBP.i, align 8
  %5481 = add i64 %5480, -8
  %5482 = load i64, i64* %3, align 8
  %5483 = add i64 %5482, 7
  store i64 %5483, i64* %3, align 8
  %5484 = inttoptr i64 %5481 to i32*
  store i32 0, i32* %5484, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_4015f8

block_.L_4015f8:                                  ; preds = %block_.L_401661, %block_4015bc
  %5485 = phi i64 [ %.pre220, %block_4015bc ], [ %5728, %block_.L_401661 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.41, %block_4015bc ], [ %MEMORY.44, %block_.L_401661 ]
  %5486 = load i64, i64* %RBP.i, align 8
  %5487 = add i64 %5486, -8
  %5488 = add i64 %5485, 3
  store i64 %5488, i64* %3, align 8
  %5489 = inttoptr i64 %5487 to i32*
  %5490 = load i32, i32* %5489, align 4
  %5491 = zext i32 %5490 to i64
  store i64 %5491, i64* %RAX.i1508, align 8
  %5492 = add i64 %5486, -12
  %5493 = add i64 %5485, 7
  store i64 %5493, i64* %3, align 8
  %5494 = inttoptr i64 %5492 to i32*
  %5495 = load i32, i32* %5494, align 4
  %5496 = sext i32 %5495 to i64
  store i64 %5496, i64* %RCX.i1994, align 8
  %5497 = shl nsw i64 %5496, 2
  %5498 = add nsw i64 %5497, -1328
  %5499 = add i64 %5498, %5486
  %5500 = add i64 %5485, 14
  store i64 %5500, i64* %3, align 8
  %5501 = inttoptr i64 %5499 to i32*
  %5502 = load i32, i32* %5501, align 4
  %5503 = sub i32 %5490, %5502
  %5504 = icmp ult i32 %5490, %5502
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %14, align 1
  %5506 = and i32 %5503, 255
  %5507 = tail call i32 @llvm.ctpop.i32(i32 %5506)
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  store i8 %5510, i8* %21, align 1
  %5511 = xor i32 %5502, %5490
  %5512 = xor i32 %5511, %5503
  %5513 = lshr i32 %5512, 4
  %5514 = trunc i32 %5513 to i8
  %5515 = and i8 %5514, 1
  store i8 %5515, i8* %27, align 1
  %5516 = icmp eq i32 %5503, 0
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %30, align 1
  %5518 = lshr i32 %5503, 31
  %5519 = trunc i32 %5518 to i8
  store i8 %5519, i8* %33, align 1
  %5520 = lshr i32 %5490, 31
  %5521 = lshr i32 %5502, 31
  %5522 = xor i32 %5521, %5520
  %5523 = xor i32 %5518, %5520
  %5524 = add nuw nsw i32 %5523, %5522
  %5525 = icmp eq i32 %5524, 2
  %5526 = zext i1 %5525 to i8
  store i8 %5526, i8* %39, align 1
  %5527 = icmp ne i8 %5519, 0
  %5528 = xor i1 %5527, %5525
  %.v283 = select i1 %5528, i64 20, i64 124
  %5529 = add i64 %5485, %.v283
  store i64 %5529, i64* %3, align 8
  br i1 %5528, label %block_40160c, label %block_.L_401674

block_40160c:                                     ; preds = %block_.L_4015f8
  %5530 = add i64 %5529, 3
  store i64 %5530, i64* %3, align 8
  %5531 = load i32, i32* %5489, align 4
  %5532 = zext i32 %5531 to i64
  store i64 %5532, i64* %RAX.i1508, align 8
  %5533 = add i64 %5486, -4
  %5534 = add i64 %5529, 6
  store i64 %5534, i64* %3, align 8
  %5535 = inttoptr i64 %5533 to i32*
  %5536 = load i32, i32* %5535, align 4
  %5537 = sub i32 %5531, %5536
  %5538 = icmp ult i32 %5531, %5536
  %5539 = zext i1 %5538 to i8
  store i8 %5539, i8* %14, align 1
  %5540 = and i32 %5537, 255
  %5541 = tail call i32 @llvm.ctpop.i32(i32 %5540)
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = xor i8 %5543, 1
  store i8 %5544, i8* %21, align 1
  %5545 = xor i32 %5536, %5531
  %5546 = xor i32 %5545, %5537
  %5547 = lshr i32 %5546, 4
  %5548 = trunc i32 %5547 to i8
  %5549 = and i8 %5548, 1
  store i8 %5549, i8* %27, align 1
  %5550 = icmp eq i32 %5537, 0
  %5551 = zext i1 %5550 to i8
  store i8 %5551, i8* %30, align 1
  %5552 = lshr i32 %5537, 31
  %5553 = trunc i32 %5552 to i8
  store i8 %5553, i8* %33, align 1
  %5554 = lshr i32 %5531, 31
  %5555 = lshr i32 %5536, 31
  %5556 = xor i32 %5555, %5554
  %5557 = xor i32 %5552, %5554
  %5558 = add nuw nsw i32 %5557, %5556
  %5559 = icmp eq i32 %5558, 2
  %5560 = zext i1 %5559 to i8
  store i8 %5560, i8* %39, align 1
  %.v284 = select i1 %5550, i64 85, i64 12
  %5561 = add i64 %5529, %.v284
  store i64 %5561, i64* %3, align 8
  br i1 %5550, label %block_.L_401661, label %block_401618

block_401618:                                     ; preds = %block_40160c
  store i64 255, i64* %RAX.i1508, align 8
  %5562 = add i64 %5561, 9
  store i64 %5562, i64* %3, align 8
  %5563 = load i32, i32* %5489, align 4
  %5564 = sext i32 %5563 to i64
  store i64 %5564, i64* %RCX.i1994, align 8
  %5565 = shl nsw i64 %5564, 2
  %5566 = add i64 %5486, -1568
  %5567 = add i64 %5566, %5565
  %5568 = add i64 %5561, 16
  store i64 %5568, i64* %3, align 8
  %5569 = inttoptr i64 %5567 to i32*
  %5570 = load i32, i32* %5569, align 4
  %5571 = zext i32 %5570 to i64
  store i64 %5571, i64* %RDX.i2064, align 8
  %5572 = add i64 %5561, 20
  store i64 %5572, i64* %3, align 8
  %5573 = load i32, i32* %5535, align 4
  %5574 = sext i32 %5573 to i64
  store i64 %5574, i64* %RCX.i1994, align 8
  %5575 = shl nsw i64 %5574, 2
  %5576 = add nsw i64 %5575, -1536
  %5577 = add i64 %5576, %5486
  %5578 = add i64 %5561, 27
  store i64 %5578, i64* %3, align 8
  %5579 = inttoptr i64 %5577 to i32*
  %5580 = load i32, i32* %5579, align 4
  %5581 = add i32 %5580, %5570
  %5582 = zext i32 %5581 to i64
  store i64 %5582, i64* %RDX.i2064, align 8
  %5583 = icmp ult i32 %5581, %5570
  %5584 = icmp ult i32 %5581, %5580
  %5585 = or i1 %5583, %5584
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %14, align 1
  %5587 = and i32 %5581, 255
  %5588 = tail call i32 @llvm.ctpop.i32(i32 %5587)
  %5589 = trunc i32 %5588 to i8
  %5590 = and i8 %5589, 1
  %5591 = xor i8 %5590, 1
  store i8 %5591, i8* %21, align 1
  %5592 = xor i32 %5580, %5570
  %5593 = xor i32 %5592, %5581
  %5594 = lshr i32 %5593, 4
  %5595 = trunc i32 %5594 to i8
  %5596 = and i8 %5595, 1
  store i8 %5596, i8* %27, align 1
  %5597 = icmp eq i32 %5581, 0
  %5598 = zext i1 %5597 to i8
  store i8 %5598, i8* %30, align 1
  %5599 = lshr i32 %5581, 31
  %5600 = trunc i32 %5599 to i8
  store i8 %5600, i8* %33, align 1
  %5601 = lshr i32 %5570, 31
  %5602 = lshr i32 %5580, 31
  %5603 = xor i32 %5599, %5601
  %5604 = xor i32 %5599, %5602
  %5605 = add nuw nsw i32 %5603, %5604
  %5606 = icmp eq i32 %5605, 2
  %5607 = zext i1 %5606 to i8
  store i8 %5607, i8* %39, align 1
  %5608 = add i64 %5486, -2728
  %5609 = add i64 %5561, 33
  store i64 %5609, i64* %3, align 8
  %5610 = inttoptr i64 %5608 to i32*
  store i32 255, i32* %5610, align 4
  %5611 = load i32, i32* %EDX.i2048, align 4
  %5612 = zext i32 %5611 to i64
  %5613 = load i64, i64* %3, align 8
  store i64 %5612, i64* %RAX.i1508, align 8
  %5614 = sext i32 %5611 to i64
  %5615 = lshr i64 %5614, 32
  store i64 %5615, i64* %56, align 8
  %5616 = load i64, i64* %RBP.i, align 8
  %5617 = add i64 %5616, -2728
  %5618 = add i64 %5613, 9
  store i64 %5618, i64* %3, align 8
  %5619 = inttoptr i64 %5617 to i32*
  %5620 = load i32, i32* %5619, align 4
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RSI.i2060, align 8
  %5622 = add i64 %5613, 11
  store i64 %5622, i64* %3, align 8
  %5623 = sext i32 %5620 to i64
  %5624 = shl nuw i64 %5615, 32
  %5625 = or i64 %5624, %5612
  %5626 = sdiv i64 %5625, %5623
  %5627 = shl i64 %5626, 32
  %5628 = ashr exact i64 %5627, 32
  %5629 = icmp eq i64 %5626, %5628
  br i1 %5629, label %5632, label %5630

; <label>:5630:                                   ; preds = %block_401618
  %5631 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5622, %struct.Memory* %MEMORY.43)
  %.pre226 = load i32, i32* %EDX.i2048, align 4
  %.pre227 = load i64, i64* %3, align 8
  %.pre228 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:5632:                                   ; preds = %block_401618
  %5633 = srem i64 %5625, %5623
  %5634 = and i64 %5626, 4294967295
  store i64 %5634, i64* %RAX.i1508, align 8
  %5635 = and i64 %5633, 4294967295
  store i64 %5635, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5636 = trunc i64 %5633 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5632, %5630
  %5637 = phi i64 [ %.pre228, %5630 ], [ %5616, %5632 ]
  %5638 = phi i64 [ %.pre227, %5630 ], [ %5622, %5632 ]
  %5639 = phi i32 [ %.pre226, %5630 ], [ %5636, %5632 ]
  %5640 = phi %struct.Memory* [ %5631, %5630 ], [ %MEMORY.43, %5632 ]
  %5641 = sext i32 %5639 to i64
  store i64 %5641, i64* %RCX.i1994, align 8
  %5642 = shl nsw i64 %5641, 2
  %5643 = add i64 %5642, ptrtoint (%G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %5644 = add i64 %5638, 10
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = xor i32 %5646, 1
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5649 = and i32 %5647, 255
  %5650 = tail call i32 @llvm.ctpop.i32(i32 %5649)
  %5651 = trunc i32 %5650 to i8
  %5652 = and i8 %5651, 1
  %5653 = xor i8 %5652, 1
  store i8 %5653, i8* %21, align 1
  %5654 = icmp eq i32 %5647, 0
  %5655 = zext i1 %5654 to i8
  store i8 %5655, i8* %30, align 1
  %5656 = lshr i32 %5646, 31
  %5657 = trunc i32 %5656 to i8
  store i8 %5657, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %sext = shl nuw i64 %5648, 32
  %5658 = sext i32 %5647 to i64
  store i64 %5658, i64* %RCX.i1994, align 8
  %5659 = ashr exact i64 %sext, 30
  %5660 = add i64 %5659, ptrtoint (%G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %5661 = add i64 %5638, 23
  store i64 %5661, i64* %3, align 8
  %5662 = inttoptr i64 %5660 to i32*
  %5663 = load i32, i32* %5662, align 4
  %5664 = zext i32 %5663 to i64
  store i64 %5664, i64* %RDX.i2064, align 8
  %5665 = add i64 %5637, -16
  %5666 = add i64 %5638, 26
  store i64 %5666, i64* %3, align 8
  %5667 = inttoptr i64 %5665 to i32*
  %5668 = load i32, i32* %5667, align 4
  %5669 = add i32 %5668, %5663
  %5670 = zext i32 %5669 to i64
  store i64 %5670, i64* %RDX.i2064, align 8
  %5671 = icmp ult i32 %5669, %5663
  %5672 = icmp ult i32 %5669, %5668
  %5673 = or i1 %5671, %5672
  %5674 = zext i1 %5673 to i8
  store i8 %5674, i8* %14, align 1
  %5675 = and i32 %5669, 255
  %5676 = tail call i32 @llvm.ctpop.i32(i32 %5675)
  %5677 = trunc i32 %5676 to i8
  %5678 = and i8 %5677, 1
  %5679 = xor i8 %5678, 1
  store i8 %5679, i8* %21, align 1
  %5680 = xor i32 %5668, %5663
  %5681 = xor i32 %5680, %5669
  %5682 = lshr i32 %5681, 4
  %5683 = trunc i32 %5682 to i8
  %5684 = and i8 %5683, 1
  store i8 %5684, i8* %27, align 1
  %5685 = icmp eq i32 %5669, 0
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %30, align 1
  %5687 = lshr i32 %5669, 31
  %5688 = trunc i32 %5687 to i8
  store i8 %5688, i8* %33, align 1
  %5689 = lshr i32 %5663, 31
  %5690 = lshr i32 %5668, 31
  %5691 = xor i32 %5687, %5689
  %5692 = xor i32 %5687, %5690
  %5693 = add nuw nsw i32 %5691, %5692
  %5694 = icmp eq i32 %5693, 2
  %5695 = zext i1 %5694 to i8
  store i8 %5695, i8* %39, align 1
  %5696 = add i64 %5638, 29
  store i64 %5696, i64* %3, align 8
  store i32 %5669, i32* %5667, align 4
  %.pre229 = load i64, i64* %3, align 8
  %.pre230 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401661

block_.L_401661:                                  ; preds = %routine_idivl__esi.exit, %block_40160c
  %5697 = phi i64 [ %5486, %block_40160c ], [ %.pre230, %routine_idivl__esi.exit ]
  %5698 = phi i64 [ %5561, %block_40160c ], [ %.pre229, %routine_idivl__esi.exit ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_40160c ], [ %5640, %routine_idivl__esi.exit ]
  %5699 = add i64 %5697, -8
  %5700 = add i64 %5698, 8
  store i64 %5700, i64* %3, align 8
  %5701 = inttoptr i64 %5699 to i32*
  %5702 = load i32, i32* %5701, align 4
  %5703 = add i32 %5702, 1
  %5704 = zext i32 %5703 to i64
  store i64 %5704, i64* %RAX.i1508, align 8
  %5705 = icmp eq i32 %5702, -1
  %5706 = icmp eq i32 %5703, 0
  %5707 = or i1 %5705, %5706
  %5708 = zext i1 %5707 to i8
  store i8 %5708, i8* %14, align 1
  %5709 = and i32 %5703, 255
  %5710 = tail call i32 @llvm.ctpop.i32(i32 %5709)
  %5711 = trunc i32 %5710 to i8
  %5712 = and i8 %5711, 1
  %5713 = xor i8 %5712, 1
  store i8 %5713, i8* %21, align 1
  %5714 = xor i32 %5703, %5702
  %5715 = lshr i32 %5714, 4
  %5716 = trunc i32 %5715 to i8
  %5717 = and i8 %5716, 1
  store i8 %5717, i8* %27, align 1
  %5718 = zext i1 %5706 to i8
  store i8 %5718, i8* %30, align 1
  %5719 = lshr i32 %5703, 31
  %5720 = trunc i32 %5719 to i8
  store i8 %5720, i8* %33, align 1
  %5721 = lshr i32 %5702, 31
  %5722 = xor i32 %5719, %5721
  %5723 = add nuw nsw i32 %5722, %5719
  %5724 = icmp eq i32 %5723, 2
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %39, align 1
  %5726 = add i64 %5698, 14
  store i64 %5726, i64* %3, align 8
  store i32 %5703, i32* %5701, align 4
  %5727 = load i64, i64* %3, align 8
  %5728 = add i64 %5727, -119
  store i64 %5728, i64* %3, align 8
  br label %block_.L_4015f8

block_.L_401674:                                  ; preds = %block_.L_4015f8
  store i64 255, i64* %RAX.i1508, align 8
  %5729 = add i64 %5486, -16
  %5730 = add i64 %5529, 8
  store i64 %5730, i64* %3, align 8
  %5731 = inttoptr i64 %5729 to i32*
  %5732 = load i32, i32* %5731, align 4
  %5733 = zext i32 %5732 to i64
  store i64 %5733, i64* %RCX.i1994, align 8
  %5734 = add i64 %5486, -2732
  %5735 = add i64 %5529, 14
  store i64 %5735, i64* %3, align 8
  %5736 = inttoptr i64 %5734 to i32*
  store i32 255, i32* %5736, align 4
  %5737 = load i32, i32* %ECX.i1986, align 4
  %5738 = zext i32 %5737 to i64
  %5739 = load i64, i64* %3, align 8
  store i64 %5738, i64* %RAX.i1508, align 8
  %5740 = sext i32 %5737 to i64
  %5741 = lshr i64 %5740, 32
  store i64 %5741, i64* %56, align 8
  %5742 = load i64, i64* %RBP.i, align 8
  %5743 = add i64 %5742, -2732
  %5744 = add i64 %5739, 9
  store i64 %5744, i64* %3, align 8
  %5745 = inttoptr i64 %5743 to i32*
  %5746 = load i32, i32* %5745, align 4
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %RCX.i1994, align 8
  %5748 = add i64 %5739, 11
  store i64 %5748, i64* %3, align 8
  %5749 = sext i32 %5746 to i64
  %5750 = shl nuw i64 %5741, 32
  %5751 = or i64 %5750, %5738
  %5752 = sdiv i64 %5751, %5749
  %5753 = shl i64 %5752, 32
  %5754 = ashr exact i64 %5753, 32
  %5755 = icmp eq i64 %5752, %5754
  br i1 %5755, label %5758, label %5756

; <label>:5756:                                   ; preds = %block_.L_401674
  %5757 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5748, %struct.Memory* %MEMORY.43)
  %.pre221 = load i64, i64* %RBP.i, align 8
  %.pre222 = load i32, i32* %EDX.i2048, align 4
  %.pre223 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit204

; <label>:5758:                                   ; preds = %block_.L_401674
  %5759 = srem i64 %5751, %5749
  %5760 = and i64 %5752, 4294967295
  store i64 %5760, i64* %RAX.i1508, align 8
  %5761 = and i64 %5759, 4294967295
  store i64 %5761, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5762 = trunc i64 %5759 to i32
  br label %routine_idivl__ecx.exit204

routine_idivl__ecx.exit204:                       ; preds = %5758, %5756
  %5763 = phi i64 [ %.pre223, %5756 ], [ %5748, %5758 ]
  %5764 = phi i32 [ %.pre222, %5756 ], [ %5762, %5758 ]
  %5765 = phi i64 [ %.pre221, %5756 ], [ %5742, %5758 ]
  %5766 = phi %struct.Memory* [ %5757, %5756 ], [ %MEMORY.43, %5758 ]
  %5767 = add i64 %5765, -16
  %5768 = add i64 %5763, 3
  store i64 %5768, i64* %3, align 8
  %5769 = inttoptr i64 %5767 to i32*
  store i32 %5764, i32* %5769, align 4
  %5770 = load i64, i64* %RBP.i, align 8
  %5771 = add i64 %5770, -4
  %5772 = load i64, i64* %3, align 8
  %5773 = add i64 %5772, 4
  store i64 %5773, i64* %3, align 8
  %5774 = inttoptr i64 %5771 to i32*
  %5775 = load i32, i32* %5774, align 4
  %5776 = sext i32 %5775 to i64
  store i64 %5776, i64* %RSI.i1201, align 8
  %5777 = shl nsw i64 %5776, 2
  %5778 = add i64 %5770, -1568
  %5779 = add i64 %5778, %5777
  %5780 = add i64 %5772, 12
  store i64 %5780, i64* %3, align 8
  %5781 = inttoptr i64 %5779 to i32*
  %5782 = load i32, i32* %5781, align 4
  %5783 = sext i32 %5782 to i64
  store i64 %5783, i64* %RSI.i1201, align 8
  %5784 = shl nsw i64 %5783, 2
  %5785 = add i64 %5770, -2640
  %5786 = add i64 %5785, %5784
  %5787 = add i64 %5772, 19
  store i64 %5787, i64* %3, align 8
  %5788 = inttoptr i64 %5786 to i32*
  %5789 = load i32, i32* %5788, align 4
  %5790 = zext i32 %5789 to i64
  store i64 %5790, i64* %RDX.i2064, align 8
  %5791 = add i64 %5770, -16
  %5792 = add i64 %5772, 22
  store i64 %5792, i64* %3, align 8
  %5793 = inttoptr i64 %5791 to i32*
  %5794 = load i32, i32* %5793, align 4
  %5795 = sub i32 %5789, %5794
  %5796 = lshr i32 %5795, 31
  %5797 = add i32 %5795, 255
  %5798 = zext i32 %5797 to i64
  %5799 = icmp ugt i32 %5795, -256
  %5800 = zext i1 %5799 to i8
  store i8 %5800, i8* %14, align 1
  %5801 = and i32 %5797, 255
  %5802 = tail call i32 @llvm.ctpop.i32(i32 %5801)
  %5803 = trunc i32 %5802 to i8
  %5804 = and i8 %5803, 1
  %5805 = xor i8 %5804, 1
  store i8 %5805, i8* %21, align 1
  %5806 = xor i32 %5795, 16
  %5807 = xor i32 %5806, %5797
  %5808 = lshr i32 %5807, 4
  %5809 = trunc i32 %5808 to i8
  %5810 = and i8 %5809, 1
  store i8 %5810, i8* %27, align 1
  %5811 = icmp eq i32 %5797, 0
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %30, align 1
  %5813 = lshr i32 %5797, 31
  %5814 = trunc i32 %5813 to i8
  store i8 %5814, i8* %33, align 1
  %5815 = xor i32 %5813, %5796
  %5816 = add nuw nsw i32 %5815, %5813
  %5817 = icmp eq i32 %5816, 2
  %5818 = zext i1 %5817 to i8
  store i8 %5818, i8* %39, align 1
  store i64 %5798, i64* %RAX.i1508, align 8
  %5819 = sext i32 %5797 to i64
  %5820 = lshr i64 %5819, 32
  store i64 %5820, i64* %56, align 8
  %5821 = load i32, i32* %ECX.i1986, align 4
  %5822 = add i64 %5772, 33
  store i64 %5822, i64* %3, align 8
  %5823 = sext i32 %5821 to i64
  %5824 = shl nuw i64 %5820, 32
  %5825 = or i64 %5824, %5798
  %5826 = sdiv i64 %5825, %5823
  %5827 = shl i64 %5826, 32
  %5828 = ashr exact i64 %5827, 32
  %5829 = icmp eq i64 %5826, %5828
  br i1 %5829, label %5832, label %5830

; <label>:5830:                                   ; preds = %routine_idivl__ecx.exit204
  %5831 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5822, %struct.Memory* %5766)
  %.pre224 = load i32, i32* %EDX.i2048, align 4
  %.pre225 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:5832:                                   ; preds = %routine_idivl__ecx.exit204
  %5833 = srem i64 %5825, %5823
  %5834 = and i64 %5826, 4294967295
  store i64 %5834, i64* %RAX.i1508, align 8
  %5835 = and i64 %5833, 4294967295
  store i64 %5835, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5836 = trunc i64 %5833 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5832, %5830
  %5837 = phi i64 [ %.pre225, %5830 ], [ %5822, %5832 ]
  %5838 = phi i32 [ %.pre224, %5830 ], [ %5836, %5832 ]
  %5839 = phi %struct.Memory* [ %5831, %5830 ], [ %5766, %5832 ]
  %5840 = sext i32 %5838 to i64
  store i64 %5840, i64* %RSI.i1201, align 8
  %5841 = shl nsw i64 %5840, 2
  %5842 = add i64 %5841, ptrtoint (%G_0x603880___rsi_4__type* @G_0x603880___rsi_4_ to i64)
  %5843 = add i64 %5837, 10
  store i64 %5843, i64* %3, align 8
  %5844 = inttoptr i64 %5842 to i32*
  %5845 = load i32, i32* %5844, align 4
  %5846 = zext i32 %5845 to i64
  store i64 %5846, i64* %RDX.i2064, align 8
  %5847 = load i64, i64* %RBP.i, align 8
  %5848 = add i64 %5847, -4
  %5849 = add i64 %5837, 14
  store i64 %5849, i64* %3, align 8
  %5850 = inttoptr i64 %5848 to i32*
  %5851 = load i32, i32* %5850, align 4
  %5852 = sext i32 %5851 to i64
  store i64 %5852, i64* %RSI.i1201, align 8
  %5853 = shl nsw i64 %5852, 2
  %5854 = add i64 %5847, -1568
  %5855 = add i64 %5854, %5853
  %5856 = add i64 %5837, 22
  store i64 %5856, i64* %3, align 8
  %5857 = inttoptr i64 %5855 to i32*
  %5858 = load i32, i32* %5857, align 4
  %5859 = sext i32 %5858 to i64
  store i64 %5859, i64* %RSI.i1201, align 8
  %5860 = shl nsw i64 %5859, 2
  %5861 = add i64 %5847, -2640
  %5862 = add i64 %5861, %5860
  %5863 = add i64 %5837, 29
  store i64 %5863, i64* %3, align 8
  %5864 = inttoptr i64 %5862 to i32*
  store i32 %5845, i32* %5864, align 4
  %5865 = load i64, i64* %RBP.i, align 8
  %5866 = add i64 %5865, -4
  %5867 = load i64, i64* %3, align 8
  %5868 = add i64 %5867, 4
  store i64 %5868, i64* %3, align 8
  %5869 = inttoptr i64 %5866 to i32*
  %5870 = load i32, i32* %5869, align 4
  %5871 = sext i32 %5870 to i64
  store i64 %5871, i64* %RSI.i1201, align 8
  %5872 = shl nsw i64 %5871, 2
  %5873 = add i64 %5865, -1568
  %5874 = add i64 %5873, %5872
  %5875 = add i64 %5867, 12
  store i64 %5875, i64* %3, align 8
  %5876 = inttoptr i64 %5874 to i32*
  %5877 = load i32, i32* %5876, align 4
  %5878 = sext i32 %5877 to i64
  store i64 %5878, i64* %RSI.i1201, align 8
  %5879 = shl nsw i64 %5878, 2
  %5880 = add i64 %5865, -2640
  %5881 = add i64 %5880, %5879
  %5882 = add i64 %5867, 19
  store i64 %5882, i64* %3, align 8
  %5883 = inttoptr i64 %5881 to i32*
  %5884 = load i32, i32* %5883, align 4
  %5885 = zext i32 %5884 to i64
  store i64 %5885, i64* %RDX.i2064, align 8
  %5886 = add i64 %5867, 23
  store i64 %5886, i64* %3, align 8
  %5887 = load i32, i32* %5869, align 4
  %5888 = sext i32 %5887 to i64
  store i64 %5888, i64* %RSI.i1201, align 8
  %5889 = shl nsw i64 %5888, 2
  %5890 = add i64 %5873, %5889
  %5891 = add i64 %5867, 31
  store i64 %5891, i64* %3, align 8
  %5892 = inttoptr i64 %5890 to i32*
  %5893 = load i32, i32* %5892, align 4
  %5894 = sext i32 %5893 to i64
  store i64 %5894, i64* %RSI.i1201, align 8
  %5895 = shl nsw i64 %5894, 2
  %5896 = add i64 %5895, ptrtoint (%G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %5897 = add i64 %5867, 38
  store i64 %5897, i64* %3, align 8
  %5898 = inttoptr i64 %5896 to i32*
  %5899 = load i32, i32* %5898, align 4
  %5900 = xor i32 %5899, %5884
  %5901 = zext i32 %5900 to i64
  store i64 %5901, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5902 = and i32 %5900, 255
  %5903 = tail call i32 @llvm.ctpop.i32(i32 %5902)
  %5904 = trunc i32 %5903 to i8
  %5905 = and i8 %5904, 1
  %5906 = xor i8 %5905, 1
  store i8 %5906, i8* %21, align 1
  %5907 = icmp eq i32 %5900, 0
  %5908 = zext i1 %5907 to i8
  store i8 %5908, i8* %30, align 1
  %5909 = lshr i32 %5900, 31
  %5910 = trunc i32 %5909 to i8
  store i8 %5910, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5911 = add i64 %5867, 45
  store i64 %5911, i64* %3, align 8
  store i32 %5900, i32* %5898, align 4
  %.pre231 = load i64, i64* %3, align 8
  %.pre232 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4016fb

block_.L_4016fb:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_4015a2
  %5912 = phi i64 [ %5175, %block_.L_4015a2 ], [ %.pre232, %routine_idivl__ecx.exit ]
  %5913 = phi i64 [ %5440, %block_.L_4015a2 ], [ %.pre231, %routine_idivl__ecx.exit ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.41, %block_.L_4015a2 ], [ %5839, %routine_idivl__ecx.exit ]
  %5914 = add i64 %5912, -4
  %5915 = add i64 %5913, 8
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i32*
  %5917 = load i32, i32* %5916, align 4
  %5918 = add i32 %5917, 1
  %5919 = zext i32 %5918 to i64
  store i64 %5919, i64* %RAX.i1508, align 8
  %5920 = icmp eq i32 %5917, -1
  %5921 = icmp eq i32 %5918, 0
  %5922 = or i1 %5920, %5921
  %5923 = zext i1 %5922 to i8
  store i8 %5923, i8* %14, align 1
  %5924 = and i32 %5918, 255
  %5925 = tail call i32 @llvm.ctpop.i32(i32 %5924)
  %5926 = trunc i32 %5925 to i8
  %5927 = and i8 %5926, 1
  %5928 = xor i8 %5927, 1
  store i8 %5928, i8* %21, align 1
  %5929 = xor i32 %5918, %5917
  %5930 = lshr i32 %5929, 4
  %5931 = trunc i32 %5930 to i8
  %5932 = and i8 %5931, 1
  store i8 %5932, i8* %27, align 1
  %5933 = zext i1 %5921 to i8
  store i8 %5933, i8* %30, align 1
  %5934 = lshr i32 %5918, 31
  %5935 = trunc i32 %5934 to i8
  store i8 %5935, i8* %33, align 1
  %5936 = lshr i32 %5917, 31
  %5937 = xor i32 %5934, %5936
  %5938 = add nuw nsw i32 %5937, %5934
  %5939 = icmp eq i32 %5938, 2
  %5940 = zext i1 %5939 to i8
  store i8 %5940, i8* %39, align 1
  %5941 = add i64 %5913, 14
  store i64 %5941, i64* %3, align 8
  store i32 %5918, i32* %5916, align 4
  %5942 = load i64, i64* %3, align 8
  %5943 = add i64 %5942, -552
  store i64 %5943, i64* %3, align 8
  br label %block_.L_4014e1

block_.L_40170e:                                  ; preds = %block_.L_4014e1
  %5944 = add i64 %5153, 117
  br label %block_.L_401783

block_.L_401713:                                  ; preds = %block_.L_401203
  store i32 0, i32* %3556, align 4
  %.pre234 = load i64, i64* %3, align 8
  br label %block_.L_40171a

block_.L_40171a:                                  ; preds = %block_.L_40176b, %block_.L_401713
  %5945 = phi i64 [ %6065, %block_.L_40176b ], [ %.pre234, %block_.L_401713 ]
  %5946 = load i64, i64* %RBP.i, align 8
  %5947 = add i64 %5946, -4
  %5948 = add i64 %5945, 7
  store i64 %5948, i64* %3, align 8
  %5949 = inttoptr i64 %5947 to i32*
  %5950 = load i32, i32* %5949, align 4
  %5951 = add i32 %5950, -255
  %5952 = icmp ult i32 %5950, 255
  %5953 = zext i1 %5952 to i8
  store i8 %5953, i8* %14, align 1
  %5954 = and i32 %5951, 255
  %5955 = tail call i32 @llvm.ctpop.i32(i32 %5954)
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  %5958 = xor i8 %5957, 1
  store i8 %5958, i8* %21, align 1
  %5959 = xor i32 %5950, 16
  %5960 = xor i32 %5959, %5951
  %5961 = lshr i32 %5960, 4
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  store i8 %5963, i8* %27, align 1
  %5964 = icmp eq i32 %5951, 0
  %5965 = zext i1 %5964 to i8
  store i8 %5965, i8* %30, align 1
  %5966 = lshr i32 %5951, 31
  %5967 = trunc i32 %5966 to i8
  store i8 %5967, i8* %33, align 1
  %5968 = lshr i32 %5950, 31
  %5969 = xor i32 %5966, %5968
  %5970 = add nuw nsw i32 %5969, %5968
  %5971 = icmp eq i32 %5970, 2
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %39, align 1
  %5973 = icmp ne i8 %5967, 0
  %5974 = xor i1 %5973, %5971
  %.v252 = select i1 %5974, i64 13, i64 100
  %5975 = add i64 %5945, %.v252
  store i64 %5975, i64* %3, align 8
  br i1 %5974, label %block_401727, label %block_.L_40177e

block_401727:                                     ; preds = %block_.L_40171a
  %5976 = add i64 %5975, 4
  store i64 %5976, i64* %3, align 8
  %5977 = load i32, i32* %5949, align 4
  %5978 = sext i32 %5977 to i64
  store i64 %5978, i64* %RAX.i1508, align 8
  %5979 = shl nsw i64 %5978, 2
  %5980 = add i64 %5979, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %5981 = add i64 %5975, 12
  store i64 %5981, i64* %3, align 8
  %5982 = inttoptr i64 %5980 to i32*
  %5983 = load i32, i32* %5982, align 4
  %5984 = add i32 %5983, 1
  %5985 = icmp ne i32 %5983, -1
  %5986 = zext i1 %5985 to i8
  store i8 %5986, i8* %14, align 1
  %5987 = and i32 %5984, 255
  %5988 = tail call i32 @llvm.ctpop.i32(i32 %5987)
  %5989 = trunc i32 %5988 to i8
  %5990 = and i8 %5989, 1
  %5991 = xor i8 %5990, 1
  store i8 %5991, i8* %21, align 1
  %5992 = xor i32 %5983, 16
  %5993 = xor i32 %5992, %5984
  %5994 = lshr i32 %5993, 4
  %5995 = trunc i32 %5994 to i8
  %5996 = and i8 %5995, 1
  store i8 %5996, i8* %27, align 1
  %5997 = icmp eq i32 %5984, 0
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %30, align 1
  %5999 = lshr i32 %5984, 31
  %6000 = trunc i32 %5999 to i8
  store i8 %6000, i8* %33, align 1
  %6001 = lshr i32 %5983, 31
  %6002 = xor i32 %6001, 1
  %6003 = xor i32 %5999, %6001
  %6004 = add nuw nsw i32 %6003, %6002
  %6005 = icmp eq i32 %6004, 2
  %6006 = zext i1 %6005 to i8
  store i8 %6006, i8* %39, align 1
  %.v251 = select i1 %5997, i64 53, i64 18
  %6007 = add i64 %5975, %.v251
  %6008 = add i64 %6007, 4
  store i64 %6008, i64* %3, align 8
  %6009 = load i32, i32* %5949, align 4
  %6010 = sext i32 %6009 to i64
  store i64 %6010, i64* %RAX.i1508, align 8
  %6011 = shl nsw i64 %6010, 2
  %6012 = add i64 %6011, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %5997, label %block_.L_40175c, label %block_401739

block_401739:                                     ; preds = %block_401727
  %6013 = add i64 %6007, 12
  store i64 %6013, i64* %3, align 8
  %6014 = inttoptr i64 %6012 to i32*
  %6015 = load i32, i32* %6014, align 4
  %6016 = sext i32 %6015 to i64
  store i64 %6016, i64* %RAX.i1508, align 8
  %6017 = shl nsw i64 %6016, 2
  %6018 = add i64 %6017, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6019 = add i64 %6007, 19
  store i64 %6019, i64* %3, align 8
  %6020 = inttoptr i64 %6018 to i32*
  %6021 = load i32, i32* %6020, align 4
  %6022 = zext i32 %6021 to i64
  store i64 %6022, i64* %RCX.i1994, align 8
  %6023 = add i64 %6007, 23
  store i64 %6023, i64* %3, align 8
  %6024 = load i32, i32* %5949, align 4
  %6025 = sext i32 %6024 to i64
  store i64 %6025, i64* %RAX.i1508, align 8
  %6026 = shl nsw i64 %6025, 2
  %6027 = add i64 %6026, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6028 = add i64 %6007, 30
  store i64 %6028, i64* %3, align 8
  %6029 = inttoptr i64 %6027 to i32*
  store i32 %6021, i32* %6029, align 4
  %6030 = load i64, i64* %3, align 8
  %6031 = add i64 %6030, 20
  store i64 %6031, i64* %3, align 8
  br label %block_.L_40176b

block_.L_40175c:                                  ; preds = %block_401727
  %6032 = add i64 %6007, 15
  store i64 %6032, i64* %3, align 8
  %6033 = inttoptr i64 %6012 to i32*
  store i32 0, i32* %6033, align 4
  %.pre235 = load i64, i64* %3, align 8
  br label %block_.L_40176b

block_.L_40176b:                                  ; preds = %block_.L_40175c, %block_401739
  %6034 = phi i64 [ %.pre235, %block_.L_40175c ], [ %6031, %block_401739 ]
  %6035 = load i64, i64* %RBP.i, align 8
  %6036 = add i64 %6035, -4
  %6037 = add i64 %6034, 8
  store i64 %6037, i64* %3, align 8
  %6038 = inttoptr i64 %6036 to i32*
  %6039 = load i32, i32* %6038, align 4
  %6040 = add i32 %6039, 1
  %6041 = zext i32 %6040 to i64
  store i64 %6041, i64* %RAX.i1508, align 8
  %6042 = icmp eq i32 %6039, -1
  %6043 = icmp eq i32 %6040, 0
  %6044 = or i1 %6042, %6043
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %14, align 1
  %6046 = and i32 %6040, 255
  %6047 = tail call i32 @llvm.ctpop.i32(i32 %6046)
  %6048 = trunc i32 %6047 to i8
  %6049 = and i8 %6048, 1
  %6050 = xor i8 %6049, 1
  store i8 %6050, i8* %21, align 1
  %6051 = xor i32 %6040, %6039
  %6052 = lshr i32 %6051, 4
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  store i8 %6054, i8* %27, align 1
  %6055 = zext i1 %6043 to i8
  store i8 %6055, i8* %30, align 1
  %6056 = lshr i32 %6040, 31
  %6057 = trunc i32 %6056 to i8
  store i8 %6057, i8* %33, align 1
  %6058 = lshr i32 %6039, 31
  %6059 = xor i32 %6056, %6058
  %6060 = add nuw nsw i32 %6059, %6056
  %6061 = icmp eq i32 %6060, 2
  %6062 = zext i1 %6061 to i8
  store i8 %6062, i8* %39, align 1
  %6063 = add i64 %6034, 14
  store i64 %6063, i64* %3, align 8
  store i32 %6040, i32* %6038, align 4
  %6064 = load i64, i64* %3, align 8
  %6065 = add i64 %6064, -95
  store i64 %6065, i64* %3, align 8
  br label %block_.L_40171a

block_.L_40177e:                                  ; preds = %block_.L_40171a
  %6066 = add i64 %5975, 5
  store i64 %6066, i64* %3, align 8
  br label %block_.L_401783

block_.L_401783:                                  ; preds = %block_.L_40177e, %block_.L_40170e
  %storemerge75 = phi i64 [ %5944, %block_.L_40170e ], [ %6066, %block_.L_40177e ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.40, %block_.L_40170e ], [ %MEMORY.25, %block_.L_40177e ]
  %6067 = add i64 %storemerge75, 117
  br label %block_.L_4017f8

block_.L_40178f:                                  ; preds = %block_.L_40178f.preheader, %block_.L_4017e0
  %6068 = phi i64 [ %6188, %block_.L_4017e0 ], [ %.pre191, %block_.L_40178f.preheader ]
  %6069 = load i64, i64* %RBP.i, align 8
  %6070 = add i64 %6069, -4
  %6071 = add i64 %6068, 7
  store i64 %6071, i64* %3, align 8
  %6072 = inttoptr i64 %6070 to i32*
  %6073 = load i32, i32* %6072, align 4
  %6074 = add i32 %6073, -255
  %6075 = icmp ult i32 %6073, 255
  %6076 = zext i1 %6075 to i8
  store i8 %6076, i8* %14, align 1
  %6077 = and i32 %6074, 255
  %6078 = tail call i32 @llvm.ctpop.i32(i32 %6077)
  %6079 = trunc i32 %6078 to i8
  %6080 = and i8 %6079, 1
  %6081 = xor i8 %6080, 1
  store i8 %6081, i8* %21, align 1
  %6082 = xor i32 %6073, 16
  %6083 = xor i32 %6082, %6074
  %6084 = lshr i32 %6083, 4
  %6085 = trunc i32 %6084 to i8
  %6086 = and i8 %6085, 1
  store i8 %6086, i8* %27, align 1
  %6087 = icmp eq i32 %6074, 0
  %6088 = zext i1 %6087 to i8
  store i8 %6088, i8* %30, align 1
  %6089 = lshr i32 %6074, 31
  %6090 = trunc i32 %6089 to i8
  store i8 %6090, i8* %33, align 1
  %6091 = lshr i32 %6073, 31
  %6092 = xor i32 %6089, %6091
  %6093 = add nuw nsw i32 %6092, %6091
  %6094 = icmp eq i32 %6093, 2
  %6095 = zext i1 %6094 to i8
  store i8 %6095, i8* %39, align 1
  %6096 = icmp ne i8 %6090, 0
  %6097 = xor i1 %6096, %6094
  %.v254 = select i1 %6097, i64 13, i64 100
  %6098 = add i64 %6068, %.v254
  store i64 %6098, i64* %3, align 8
  br i1 %6097, label %block_40179c, label %block_.L_4017f3

block_40179c:                                     ; preds = %block_.L_40178f
  %6099 = add i64 %6098, 4
  store i64 %6099, i64* %3, align 8
  %6100 = load i32, i32* %6072, align 4
  %6101 = sext i32 %6100 to i64
  store i64 %6101, i64* %RAX.i1508, align 8
  %6102 = shl nsw i64 %6101, 2
  %6103 = add i64 %6102, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6104 = add i64 %6098, 12
  store i64 %6104, i64* %3, align 8
  %6105 = inttoptr i64 %6103 to i32*
  %6106 = load i32, i32* %6105, align 4
  %6107 = add i32 %6106, 1
  %6108 = icmp ne i32 %6106, -1
  %6109 = zext i1 %6108 to i8
  store i8 %6109, i8* %14, align 1
  %6110 = and i32 %6107, 255
  %6111 = tail call i32 @llvm.ctpop.i32(i32 %6110)
  %6112 = trunc i32 %6111 to i8
  %6113 = and i8 %6112, 1
  %6114 = xor i8 %6113, 1
  store i8 %6114, i8* %21, align 1
  %6115 = xor i32 %6106, 16
  %6116 = xor i32 %6115, %6107
  %6117 = lshr i32 %6116, 4
  %6118 = trunc i32 %6117 to i8
  %6119 = and i8 %6118, 1
  store i8 %6119, i8* %27, align 1
  %6120 = icmp eq i32 %6107, 0
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %30, align 1
  %6122 = lshr i32 %6107, 31
  %6123 = trunc i32 %6122 to i8
  store i8 %6123, i8* %33, align 1
  %6124 = lshr i32 %6106, 31
  %6125 = xor i32 %6124, 1
  %6126 = xor i32 %6122, %6124
  %6127 = add nuw nsw i32 %6126, %6125
  %6128 = icmp eq i32 %6127, 2
  %6129 = zext i1 %6128 to i8
  store i8 %6129, i8* %39, align 1
  %.v253 = select i1 %6120, i64 53, i64 18
  %6130 = add i64 %6098, %.v253
  %6131 = add i64 %6130, 4
  store i64 %6131, i64* %3, align 8
  %6132 = load i32, i32* %6072, align 4
  %6133 = sext i32 %6132 to i64
  store i64 %6133, i64* %RAX.i1508, align 8
  %6134 = shl nsw i64 %6133, 2
  %6135 = add i64 %6134, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %6120, label %block_.L_4017d1, label %block_4017ae

block_4017ae:                                     ; preds = %block_40179c
  %6136 = add i64 %6130, 12
  store i64 %6136, i64* %3, align 8
  %6137 = inttoptr i64 %6135 to i32*
  %6138 = load i32, i32* %6137, align 4
  %6139 = sext i32 %6138 to i64
  store i64 %6139, i64* %RAX.i1508, align 8
  %6140 = shl nsw i64 %6139, 2
  %6141 = add i64 %6140, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6142 = add i64 %6130, 19
  store i64 %6142, i64* %3, align 8
  %6143 = inttoptr i64 %6141 to i32*
  %6144 = load i32, i32* %6143, align 4
  %6145 = zext i32 %6144 to i64
  store i64 %6145, i64* %RCX.i1994, align 8
  %6146 = add i64 %6130, 23
  store i64 %6146, i64* %3, align 8
  %6147 = load i32, i32* %6072, align 4
  %6148 = sext i32 %6147 to i64
  store i64 %6148, i64* %RAX.i1508, align 8
  %6149 = shl nsw i64 %6148, 2
  %6150 = add i64 %6149, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6151 = add i64 %6130, 30
  store i64 %6151, i64* %3, align 8
  %6152 = inttoptr i64 %6150 to i32*
  store i32 %6144, i32* %6152, align 4
  %6153 = load i64, i64* %3, align 8
  %6154 = add i64 %6153, 20
  store i64 %6154, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_4017d1:                                  ; preds = %block_40179c
  %6155 = add i64 %6130, 15
  store i64 %6155, i64* %3, align 8
  %6156 = inttoptr i64 %6135 to i32*
  store i32 0, i32* %6156, align 4
  %.pre237 = load i64, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_4017e0:                                  ; preds = %block_.L_4017d1, %block_4017ae
  %6157 = phi i64 [ %.pre237, %block_.L_4017d1 ], [ %6154, %block_4017ae ]
  %6158 = load i64, i64* %RBP.i, align 8
  %6159 = add i64 %6158, -4
  %6160 = add i64 %6157, 8
  store i64 %6160, i64* %3, align 8
  %6161 = inttoptr i64 %6159 to i32*
  %6162 = load i32, i32* %6161, align 4
  %6163 = add i32 %6162, 1
  %6164 = zext i32 %6163 to i64
  store i64 %6164, i64* %RAX.i1508, align 8
  %6165 = icmp eq i32 %6162, -1
  %6166 = icmp eq i32 %6163, 0
  %6167 = or i1 %6165, %6166
  %6168 = zext i1 %6167 to i8
  store i8 %6168, i8* %14, align 1
  %6169 = and i32 %6163, 255
  %6170 = tail call i32 @llvm.ctpop.i32(i32 %6169)
  %6171 = trunc i32 %6170 to i8
  %6172 = and i8 %6171, 1
  %6173 = xor i8 %6172, 1
  store i8 %6173, i8* %21, align 1
  %6174 = xor i32 %6163, %6162
  %6175 = lshr i32 %6174, 4
  %6176 = trunc i32 %6175 to i8
  %6177 = and i8 %6176, 1
  store i8 %6177, i8* %27, align 1
  %6178 = zext i1 %6166 to i8
  store i8 %6178, i8* %30, align 1
  %6179 = lshr i32 %6163, 31
  %6180 = trunc i32 %6179 to i8
  store i8 %6180, i8* %33, align 1
  %6181 = lshr i32 %6162, 31
  %6182 = xor i32 %6179, %6181
  %6183 = add nuw nsw i32 %6182, %6179
  %6184 = icmp eq i32 %6183, 2
  %6185 = zext i1 %6184 to i8
  store i8 %6185, i8* %39, align 1
  %6186 = add i64 %6157, 14
  store i64 %6186, i64* %3, align 8
  store i32 %6163, i32* %6161, align 4
  %6187 = load i64, i64* %3, align 8
  %6188 = add i64 %6187, -95
  store i64 %6188, i64* %3, align 8
  br label %block_.L_40178f

block_.L_4017f3:                                  ; preds = %block_.L_40178f
  %6189 = add i64 %6098, 5
  store i64 %6189, i64* %3, align 8
  br label %block_.L_4017f8

block_.L_4017f8:                                  ; preds = %block_.L_4017f3, %block_.L_401783
  %storemerge76 = phi i64 [ %6067, %block_.L_401783 ], [ %6189, %block_.L_4017f3 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.48, %block_.L_401783 ], [ %MEMORY.21, %block_.L_4017f3 ]
  %6190 = add i64 %storemerge76, 117
  br label %block_.L_40186d

block_.L_4017fd:                                  ; preds = %block_.L_400a46
  %6191 = add i64 %408, 7
  store i64 %6191, i64* %3, align 8
  store i32 0, i32* %62, align 4
  %.pre238 = load i64, i64* %3, align 8
  br label %block_.L_401804

block_.L_401804:                                  ; preds = %block_.L_401855, %block_.L_4017fd
  %6192 = phi i64 [ %6312, %block_.L_401855 ], [ %.pre238, %block_.L_4017fd ]
  %6193 = load i64, i64* %RBP.i, align 8
  %6194 = add i64 %6193, -4
  %6195 = add i64 %6192, 7
  store i64 %6195, i64* %3, align 8
  %6196 = inttoptr i64 %6194 to i32*
  %6197 = load i32, i32* %6196, align 4
  %6198 = add i32 %6197, -255
  %6199 = icmp ult i32 %6197, 255
  %6200 = zext i1 %6199 to i8
  store i8 %6200, i8* %14, align 1
  %6201 = and i32 %6198, 255
  %6202 = tail call i32 @llvm.ctpop.i32(i32 %6201)
  %6203 = trunc i32 %6202 to i8
  %6204 = and i8 %6203, 1
  %6205 = xor i8 %6204, 1
  store i8 %6205, i8* %21, align 1
  %6206 = xor i32 %6197, 16
  %6207 = xor i32 %6206, %6198
  %6208 = lshr i32 %6207, 4
  %6209 = trunc i32 %6208 to i8
  %6210 = and i8 %6209, 1
  store i8 %6210, i8* %27, align 1
  %6211 = icmp eq i32 %6198, 0
  %6212 = zext i1 %6211 to i8
  store i8 %6212, i8* %30, align 1
  %6213 = lshr i32 %6198, 31
  %6214 = trunc i32 %6213 to i8
  store i8 %6214, i8* %33, align 1
  %6215 = lshr i32 %6197, 31
  %6216 = xor i32 %6213, %6215
  %6217 = add nuw nsw i32 %6216, %6215
  %6218 = icmp eq i32 %6217, 2
  %6219 = zext i1 %6218 to i8
  store i8 %6219, i8* %39, align 1
  %6220 = icmp ne i8 %6214, 0
  %6221 = xor i1 %6220, %6218
  %.v262 = select i1 %6221, i64 13, i64 100
  %6222 = add i64 %6192, %.v262
  store i64 %6222, i64* %3, align 8
  br i1 %6221, label %block_401811, label %block_.L_401868

block_401811:                                     ; preds = %block_.L_401804
  %6223 = add i64 %6222, 4
  store i64 %6223, i64* %3, align 8
  %6224 = load i32, i32* %6196, align 4
  %6225 = sext i32 %6224 to i64
  store i64 %6225, i64* %RAX.i1508, align 8
  %6226 = shl nsw i64 %6225, 2
  %6227 = add i64 %6226, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6228 = add i64 %6222, 12
  store i64 %6228, i64* %3, align 8
  %6229 = inttoptr i64 %6227 to i32*
  %6230 = load i32, i32* %6229, align 4
  %6231 = add i32 %6230, 1
  %6232 = icmp ne i32 %6230, -1
  %6233 = zext i1 %6232 to i8
  store i8 %6233, i8* %14, align 1
  %6234 = and i32 %6231, 255
  %6235 = tail call i32 @llvm.ctpop.i32(i32 %6234)
  %6236 = trunc i32 %6235 to i8
  %6237 = and i8 %6236, 1
  %6238 = xor i8 %6237, 1
  store i8 %6238, i8* %21, align 1
  %6239 = xor i32 %6230, 16
  %6240 = xor i32 %6239, %6231
  %6241 = lshr i32 %6240, 4
  %6242 = trunc i32 %6241 to i8
  %6243 = and i8 %6242, 1
  store i8 %6243, i8* %27, align 1
  %6244 = icmp eq i32 %6231, 0
  %6245 = zext i1 %6244 to i8
  store i8 %6245, i8* %30, align 1
  %6246 = lshr i32 %6231, 31
  %6247 = trunc i32 %6246 to i8
  store i8 %6247, i8* %33, align 1
  %6248 = lshr i32 %6230, 31
  %6249 = xor i32 %6248, 1
  %6250 = xor i32 %6246, %6248
  %6251 = add nuw nsw i32 %6250, %6249
  %6252 = icmp eq i32 %6251, 2
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %39, align 1
  %.v261 = select i1 %6244, i64 53, i64 18
  %6254 = add i64 %6222, %.v261
  %6255 = add i64 %6254, 4
  store i64 %6255, i64* %3, align 8
  %6256 = load i32, i32* %6196, align 4
  %6257 = sext i32 %6256 to i64
  store i64 %6257, i64* %RAX.i1508, align 8
  %6258 = shl nsw i64 %6257, 2
  %6259 = add i64 %6258, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  br i1 %6244, label %block_.L_401846, label %block_401823

block_401823:                                     ; preds = %block_401811
  %6260 = add i64 %6254, 12
  store i64 %6260, i64* %3, align 8
  %6261 = inttoptr i64 %6259 to i32*
  %6262 = load i32, i32* %6261, align 4
  %6263 = sext i32 %6262 to i64
  store i64 %6263, i64* %RAX.i1508, align 8
  %6264 = shl nsw i64 %6263, 2
  %6265 = add i64 %6264, ptrtoint (%G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %6266 = add i64 %6254, 19
  store i64 %6266, i64* %3, align 8
  %6267 = inttoptr i64 %6265 to i32*
  %6268 = load i32, i32* %6267, align 4
  %6269 = zext i32 %6268 to i64
  store i64 %6269, i64* %RCX.i1994, align 8
  %6270 = add i64 %6254, 23
  store i64 %6270, i64* %3, align 8
  %6271 = load i32, i32* %6196, align 4
  %6272 = sext i32 %6271 to i64
  store i64 %6272, i64* %RAX.i1508, align 8
  %6273 = shl nsw i64 %6272, 2
  %6274 = add i64 %6273, ptrtoint (%G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %6275 = add i64 %6254, 30
  store i64 %6275, i64* %3, align 8
  %6276 = inttoptr i64 %6274 to i32*
  store i32 %6268, i32* %6276, align 4
  %6277 = load i64, i64* %3, align 8
  %6278 = add i64 %6277, 20
  store i64 %6278, i64* %3, align 8
  br label %block_.L_401855

block_.L_401846:                                  ; preds = %block_401811
  %6279 = add i64 %6254, 15
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6259 to i32*
  store i32 0, i32* %6280, align 4
  %.pre239 = load i64, i64* %3, align 8
  br label %block_.L_401855

block_.L_401855:                                  ; preds = %block_.L_401846, %block_401823
  %6281 = phi i64 [ %.pre239, %block_.L_401846 ], [ %6278, %block_401823 ]
  %6282 = load i64, i64* %RBP.i, align 8
  %6283 = add i64 %6282, -4
  %6284 = add i64 %6281, 8
  store i64 %6284, i64* %3, align 8
  %6285 = inttoptr i64 %6283 to i32*
  %6286 = load i32, i32* %6285, align 4
  %6287 = add i32 %6286, 1
  %6288 = zext i32 %6287 to i64
  store i64 %6288, i64* %RAX.i1508, align 8
  %6289 = icmp eq i32 %6286, -1
  %6290 = icmp eq i32 %6287, 0
  %6291 = or i1 %6289, %6290
  %6292 = zext i1 %6291 to i8
  store i8 %6292, i8* %14, align 1
  %6293 = and i32 %6287, 255
  %6294 = tail call i32 @llvm.ctpop.i32(i32 %6293)
  %6295 = trunc i32 %6294 to i8
  %6296 = and i8 %6295, 1
  %6297 = xor i8 %6296, 1
  store i8 %6297, i8* %21, align 1
  %6298 = xor i32 %6287, %6286
  %6299 = lshr i32 %6298, 4
  %6300 = trunc i32 %6299 to i8
  %6301 = and i8 %6300, 1
  store i8 %6301, i8* %27, align 1
  %6302 = zext i1 %6290 to i8
  store i8 %6302, i8* %30, align 1
  %6303 = lshr i32 %6287, 31
  %6304 = trunc i32 %6303 to i8
  store i8 %6304, i8* %33, align 1
  %6305 = lshr i32 %6286, 31
  %6306 = xor i32 %6303, %6305
  %6307 = add nuw nsw i32 %6306, %6303
  %6308 = icmp eq i32 %6307, 2
  %6309 = zext i1 %6308 to i8
  store i8 %6309, i8* %39, align 1
  %6310 = add i64 %6281, 14
  store i64 %6310, i64* %3, align 8
  store i32 %6287, i32* %6285, align 4
  %6311 = load i64, i64* %3, align 8
  %6312 = add i64 %6311, -95
  store i64 %6312, i64* %3, align 8
  br label %block_.L_401804

block_.L_401868:                                  ; preds = %block_.L_401804
  %6313 = add i64 %6222, 5
  store i64 %6313, i64* %3, align 8
  br label %block_.L_40186d

block_.L_40186d:                                  ; preds = %block_.L_401868, %block_.L_4017f8
  %storemerge77 = phi i64 [ %6190, %block_.L_4017f8 ], [ %6313, %block_.L_401868 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.51, %block_.L_4017f8 ], [ %MEMORY.0, %block_.L_401868 ]
  %6314 = load i64, i64* %6, align 8
  %6315 = add i64 %6314, 2608
  store i64 %6315, i64* %6, align 8
  %6316 = icmp ugt i64 %6314, -2609
  %6317 = zext i1 %6316 to i8
  store i8 %6317, i8* %14, align 1
  %6318 = trunc i64 %6315 to i32
  %6319 = and i32 %6318, 255
  %6320 = tail call i32 @llvm.ctpop.i32(i32 %6319)
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  %6323 = xor i8 %6322, 1
  store i8 %6323, i8* %21, align 1
  %6324 = xor i64 %6314, 16
  %6325 = xor i64 %6324, %6315
  %6326 = lshr i64 %6325, 4
  %6327 = trunc i64 %6326 to i8
  %6328 = and i8 %6327, 1
  store i8 %6328, i8* %27, align 1
  %6329 = icmp eq i64 %6315, 0
  %6330 = zext i1 %6329 to i8
  store i8 %6330, i8* %30, align 1
  %6331 = lshr i64 %6315, 63
  %6332 = trunc i64 %6331 to i8
  store i8 %6332, i8* %33, align 1
  %6333 = lshr i64 %6314, 63
  %6334 = xor i64 %6331, %6333
  %6335 = add nuw nsw i64 %6334, %6331
  %6336 = icmp eq i64 %6335, 2
  %6337 = zext i1 %6336 to i8
  store i8 %6337, i8* %39, align 1
  %6338 = add i64 %storemerge77, 8
  store i64 %6338, i64* %3, align 8
  %6339 = add i64 %6314, 2616
  %6340 = inttoptr i64 %6315 to i64*
  %6341 = load i64, i64* %6340, align 8
  store i64 %6341, i64* %RBP.i, align 8
  store i64 %6339, i64* %6, align 8
  %6342 = add i64 %storemerge77, 9
  store i64 %6342, i64* %3, align 8
  %6343 = inttoptr i64 %6339 to i64*
  %6344 = load i64, i64* %6343, align 8
  store i64 %6344, i64* %3, align 8
  %6345 = add i64 %6314, 2624
  store i64 %6345, i64* %6, align 8
  ret %struct.Memory* %MEMORY.54
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
define %struct.Memory* @routine_subq__0xa30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400a46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xff__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4009fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %21 = xor i32 %20, %10
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4009eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0xff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603080___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imull_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa84__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_MINUS0x5d0__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400986(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5d0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400966(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4017fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x450__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400aba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x490__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x530__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x52c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x580__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x57c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400bb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400bad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xa85__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400be4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_setg__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xa85__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa85__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400bf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jle_.L_400c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400c52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x580__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x580__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400c52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400c57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400c15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jle_.L_400caa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ccb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400dd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0xff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0xff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl___rdi__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rdi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa90__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__rdi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx____r8__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl___rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ddb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x530__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400ffb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400edb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400eef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_400fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400fc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_0x603480___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa94__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %21 = xor i32 %8, %5
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_MINUS0x4e0__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ef6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4e0__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603480___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401000(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0xa95__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_40102e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %22 = xor i32 %12, %11
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_setle__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0xa95__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xa95__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400ae9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_401788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_4010b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40105e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_401103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_401203(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_4011b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0xa80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_40119d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa80__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa9c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa80__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4011a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40112f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_4011f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x600__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4011f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401114(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401713(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_401460(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4012ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_0x603880___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40137c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401377(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_401363(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_401363(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401372(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_401434(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401421(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x5d0__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xaa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaa0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_MINUS0x650__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401426(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401383(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x650__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401221(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4014da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4014b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401467(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_40170e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xa50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_4015a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %23 = xor i32 %22, %12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_40158f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x650__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imull_MINUS0x600__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xaa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_MINUS0xa50__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401594(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4016fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa50__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xa50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_401674(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401661(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x620__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x600__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xaa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603480___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401666(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xaac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0xff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x603880___rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorl_0x603080___rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x603080___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401700(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_40177e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40175c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40176b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40171a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4017f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4017d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40178f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40186d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_401868(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40185a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401804(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0xa30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
