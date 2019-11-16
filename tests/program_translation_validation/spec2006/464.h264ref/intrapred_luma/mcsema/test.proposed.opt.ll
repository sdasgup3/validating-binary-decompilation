; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @intrapred_luma(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -376
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 368
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i100 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i100, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RDX.i, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i163 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX.i163, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i187 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %R8.i187, align 8
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %74, i64* %RCX.i163, align 8
  %75 = add i64 %74, 6424
  %76 = add i64 %73, 15
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RCX.i163, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -104
  %81 = add i64 %73, 19
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 %78, i64* %82, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -4
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 3
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RSI.i, align 8
  store i8 0, i8* %14, align 1
  %91 = tail call i32 @llvm.ctpop.i32(i32 %89)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %21, align 1
  %95 = icmp eq i32 %89, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %97 = add i64 %83, -108
  %98 = add i64 %85, 9
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  store i32 %89, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -8
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 3
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 15
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RSI.i, align 8
  store i8 0, i8* %14, align 1
  %108 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  %112 = icmp eq i32 %106, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %114 = add i64 %100, -112
  %115 = add i64 %102, 9
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 %106, i32* %116, align 4
  %117 = load i64, i64* %3, align 8
  %118 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %118, i64* %RCX.i163, align 8
  %119 = add i64 %118, 12
  %120 = add i64 %117, 11
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RSI.i, align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -116
  %126 = add i64 %117, 14
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 %122, i32* %127, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -36
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i732 = getelementptr inbounds %union.anon, %union.anon* %133, i64 0, i32 0
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %EDX.i1119 = bitcast %union.anon* %52 to i32*
  %EAX.i1314 = bitcast %union.anon* %133 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402607

block_.L_402607:                                  ; preds = %block_402611, %entry
  %134 = phi i64 [ %314, %block_402611 ], [ %.pre, %entry ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -36
  %137 = add i64 %134, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, -4
  %141 = icmp ult i32 %139, 4
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = and i32 %140, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1
  %148 = xor i32 %140, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %27, align 1
  %152 = icmp eq i32 %140, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %30, align 1
  %154 = lshr i32 %140, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %33, align 1
  %156 = lshr i32 %139, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %39, align 1
  %161 = icmp ne i8 %155, 0
  %162 = xor i1 %161, %159
  %.v222 = select i1 %162, i64 10, i64 84
  %163 = add i64 %134, %.v222
  %164 = add i64 %163, 5
  store i64 %164, i64* %3, align 8
  store i64 1, i64* %RCX.i163, align 8
  br i1 %162, label %block_402611, label %block_.L_40265b

block_402611:                                     ; preds = %block_.L_402607
  %165 = add i64 %135, -224
  store i64 %165, i64* %RAX.i732, align 8
  %166 = add i64 %135, -116
  %167 = add i64 %163, 15
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RDI.i, align 8
  %171 = add i64 %135, -108
  %172 = add i64 %163, 18
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = add i32 %174, -1
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RDX.i, align 8
  %177 = icmp eq i32 %174, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %14, align 1
  %179 = and i32 %175, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %21, align 1
  %184 = xor i32 %175, %174
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %27, align 1
  %188 = icmp eq i32 %175, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %30, align 1
  %190 = lshr i32 %175, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %33, align 1
  %192 = lshr i32 %174, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %39, align 1
  %197 = add i64 %135, -112
  %198 = add i64 %163, 24
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RSI.i, align 8
  %202 = add i64 %163, 27
  store i64 %202, i64* %3, align 8
  %203 = load i32, i32* %138, align 4
  %204 = add i32 %203, %200
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RSI.i, align 8
  %206 = icmp ult i32 %204, %200
  %207 = icmp ult i32 %204, %203
  %208 = or i1 %206, %207
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %14, align 1
  %210 = and i32 %204, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i32 %203, %200
  %216 = xor i32 %215, %204
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %27, align 1
  %220 = icmp eq i32 %204, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %30, align 1
  %222 = lshr i32 %204, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %33, align 1
  %224 = lshr i32 %200, 31
  %225 = lshr i32 %203, 31
  %226 = xor i32 %222, %224
  %227 = xor i32 %222, %225
  %228 = add nuw nsw i32 %226, %227
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %39, align 1
  %231 = add i64 %163, 31
  store i64 %231, i64* %3, align 8
  %232 = load i32, i32* %138, align 4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, 24
  store i64 %234, i64* %R8.i187, align 8
  %235 = lshr i64 %234, 63
  %236 = load i64, i64* %RAX.i732, align 8
  %237 = add i64 %234, %236
  store i64 %237, i64* %RAX.i732, align 8
  %238 = icmp ult i64 %237, %236
  %239 = icmp ult i64 %237, %234
  %240 = or i1 %238, %239
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %14, align 1
  %242 = trunc i64 %237 to i32
  %243 = and i32 %242, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %21, align 1
  %248 = xor i64 %234, %236
  %249 = xor i64 %248, %237
  %250 = lshr i64 %249, 4
  %251 = trunc i64 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %27, align 1
  %253 = icmp eq i64 %237, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %30, align 1
  %255 = lshr i64 %237, 63
  %256 = trunc i64 %255 to i8
  store i8 %256, i8* %33, align 1
  %257 = lshr i64 %236, 63
  %258 = xor i64 %255, %257
  %259 = xor i64 %255, %235
  %260 = add nuw nsw i64 %258, %259
  %261 = icmp eq i64 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %39, align 1
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -316
  %265 = load i32, i32* %ESI.i100, align 4
  %266 = add i64 %163, 44
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i32*
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* %EDX.i1119, align 4
  %269 = zext i32 %268 to i64
  %270 = load i64, i64* %3, align 8
  store i64 %269, i64* %RSI.i, align 8
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -316
  %273 = add i64 %270, 8
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RDX.i, align 8
  %277 = load i64, i64* %RAX.i732, align 8
  store i64 %277, i64* %R8.i187, align 8
  %278 = add i64 %270, 297843
  %279 = add i64 %270, 16
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_402648 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %278, %struct.Memory* %2)
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -36
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 3
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i732, align 8
  %291 = icmp eq i32 %288, -1
  %292 = icmp eq i32 %289, 0
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %289, %288
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %27, align 1
  %304 = zext i1 %292 to i8
  store i8 %304, i8* %30, align 1
  %305 = lshr i32 %289, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %33, align 1
  %307 = lshr i32 %288, 31
  %308 = xor i32 %305, %307
  %309 = add nuw nsw i32 %308, %305
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %39, align 1
  %312 = add i64 %285, 9
  store i64 %312, i64* %3, align 8
  store i32 %289, i32* %287, align 4
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, -79
  store i64 %314, i64* %3, align 8
  br label %block_.L_402607

block_.L_40265b:                                  ; preds = %block_.L_402607
  %315 = add i64 %135, -248
  store i64 %315, i64* %R8.i187, align 8
  %316 = add i64 %135, -116
  %317 = add i64 %163, 15
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RDI.i, align 8
  %321 = add i64 %135, -108
  %322 = add i64 %163, 18
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RSI.i, align 8
  %326 = add i64 %135, -112
  %327 = add i64 %163, 21
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, -1
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i732, align 8
  %332 = icmp eq i32 %329, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %14, align 1
  %334 = and i32 %330, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %21, align 1
  %339 = xor i32 %330, %329
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %27, align 1
  %343 = icmp eq i32 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %30, align 1
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %33, align 1
  %347 = lshr i32 %329, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %39, align 1
  store i64 %331, i64* %RDX.i, align 8
  %352 = add i64 %163, 297813
  %353 = add i64 %163, 31
  %354 = load i64, i64* %6, align 8
  %355 = add i64 %354, -8
  %356 = inttoptr i64 %355 to i64*
  store i64 %353, i64* %356, align 8
  store i64 %355, i64* %6, align 8
  store i64 %352, i64* %3, align 8
  %call2_402675 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %352, %struct.Memory* %2)
  %357 = load i64, i64* %3, align 8
  store i64 1, i64* %RCX.i163, align 8
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -272
  store i64 %359, i64* %R8.i187, align 8
  %360 = add i64 %358, -116
  %361 = add i64 %357, 15
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RDI.i, align 8
  %365 = add i64 %358, -108
  %366 = add i64 %357, 18
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i732, align 8
  %371 = icmp ugt i32 %368, -5
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %14, align 1
  %373 = and i32 %369, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  %378 = xor i32 %369, %368
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = icmp eq i32 %369, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %30, align 1
  %384 = lshr i32 %369, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %33, align 1
  %386 = lshr i32 %368, 31
  %387 = xor i32 %384, %386
  %388 = add nuw nsw i32 %387, %384
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %39, align 1
  %391 = add i64 %358, -112
  %392 = add i64 %357, 24
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i32 %394, -1
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RDX.i, align 8
  %397 = icmp eq i32 %394, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %395, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %395, %394
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %27, align 1
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %30, align 1
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %33, align 1
  %412 = lshr i32 %394, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %412
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %39, align 1
  store i64 %370, i64* %RSI.i, align 8
  %417 = add i64 %357, 297782
  %418 = add i64 %357, 34
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %418, i64* %421, align 8
  store i64 %420, i64* %6, align 8
  store i64 %417, i64* %3, align 8
  %call2_402697 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %417, %struct.Memory* %call2_402675)
  %422 = load i64, i64* %3, align 8
  store i64 1, i64* %RCX.i163, align 8
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -296
  store i64 %424, i64* %R8.i187, align 8
  %425 = add i64 %423, -116
  %426 = add i64 %422, 15
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDI.i, align 8
  %430 = add i64 %423, -108
  %431 = add i64 %422, 18
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, -1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i732, align 8
  %436 = icmp eq i32 %433, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = and i32 %434, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  %443 = xor i32 %434, %433
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %27, align 1
  %447 = icmp eq i32 %434, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %30, align 1
  %449 = lshr i32 %434, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %33, align 1
  %451 = lshr i32 %433, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %451
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %39, align 1
  %456 = add i64 %423, -112
  %457 = add i64 %422, 24
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, -1
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RDX.i, align 8
  %462 = icmp eq i32 %459, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %14, align 1
  %464 = and i32 %460, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %21, align 1
  %469 = xor i32 %460, %459
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %27, align 1
  %473 = icmp eq i32 %460, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %30, align 1
  %475 = lshr i32 %460, 31
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %33, align 1
  %477 = lshr i32 %459, 31
  %478 = xor i32 %475, %477
  %479 = add nuw nsw i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %39, align 1
  store i64 %435, i64* %RSI.i, align 8
  %482 = add i64 %422, 297748
  %483 = add i64 %422, 34
  %484 = load i64, i64* %6, align 8
  %485 = add i64 %484, -8
  %486 = inttoptr i64 %485 to i64*
  store i64 %483, i64* %486, align 8
  store i64 %485, i64* %6, align 8
  store i64 %482, i64* %3, align 8
  %call2_4026b9 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %482, %struct.Memory* %call2_402697)
  %487 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %AL.i2746 = bitcast %union.anon* %133 to i8*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i2747 = bitcast %union.anon* %488 to i8*
  store i8 0, i8* %R9B.i2747, align 1
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -272
  %491 = add i64 %487, 12
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  store i8 0, i8* %14, align 1
  %494 = and i32 %493, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %499 = icmp eq i32 %493, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %30, align 1
  %501 = lshr i32 %493, 31
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %503 = add i64 %489, -317
  %504 = add i64 %487, 19
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i8*
  store i8 0, i8* %505, align 1
  %506 = load i64, i64* %3, align 8
  %507 = load i8, i8* %30, align 1
  %508 = icmp ne i8 %507, 0
  %.v258 = select i1 %508, i64 93, i64 6
  %509 = add i64 %506, %.v258
  store i64 %509, i64* %3, align 8
  %cmpBr_4026d1 = icmp eq i8 %507, 1
  br i1 %cmpBr_4026d1, label %block_.L_40272e, label %block_4026d7

block_4026d7:                                     ; preds = %block_.L_40265b
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -108
  %512 = add i64 %509, 4
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i32 %514, -4
  %516 = icmp ult i32 %514, 4
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %14, align 1
  %518 = and i32 %515, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %21, align 1
  %523 = xor i32 %515, %514
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %27, align 1
  %527 = icmp eq i32 %515, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %30, align 1
  %529 = lshr i32 %515, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %33, align 1
  %531 = lshr i32 %514, 31
  %532 = xor i32 %529, %531
  %533 = add nuw nsw i32 %532, %531
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %39, align 1
  %.v223 = select i1 %527, i64 30, i64 10
  %536 = add i64 %509, %.v223
  store i64 %536, i64* %3, align 8
  br i1 %527, label %block_.L_4026f5, label %block_4026e1

block_4026e1:                                     ; preds = %block_4026d7
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %CL.i2733 = bitcast %union.anon* %59 to i8*
  store i8 0, i8* %CL.i2733, align 1
  %537 = add i64 %536, 8
  store i64 %537, i64* %3, align 8
  %538 = load i32, i32* %513, align 4
  %539 = add i32 %538, -12
  %540 = icmp ult i32 %538, 12
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %14, align 1
  %542 = and i32 %539, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  %547 = xor i32 %539, %538
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %27, align 1
  %551 = icmp eq i32 %539, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %30, align 1
  %553 = lshr i32 %539, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %33, align 1
  %555 = lshr i32 %538, 31
  %556 = xor i32 %553, %555
  %557 = add nuw nsw i32 %556, %555
  %558 = icmp eq i32 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %39, align 1
  %560 = add i64 %510, -318
  %561 = add i64 %536, 14
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i8*
  store i8 0, i8* %562, align 1
  %563 = load i64, i64* %3, align 8
  %564 = add i64 %563, 49
  %565 = add i64 %563, 6
  %566 = load i8, i8* %30, align 1
  %567 = icmp eq i8 %566, 0
  %568 = select i1 %567, i64 %564, i64 %565
  store i64 %568, i64* %3, align 8
  br i1 %567, label %block_.L_402720, label %block_4026e1.block_.L_4026f5_crit_edge

block_4026e1.block_.L_4026f5_crit_edge:           ; preds = %block_4026e1
  %.pre87 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4026f5

block_.L_4026f5:                                  ; preds = %block_4026e1.block_.L_4026f5_crit_edge, %block_4026d7
  %569 = phi i64 [ %.pre87, %block_4026e1.block_.L_4026f5_crit_edge ], [ %510, %block_4026d7 ]
  %570 = phi i64 [ %565, %block_4026e1.block_.L_4026f5_crit_edge ], [ %536, %block_4026d7 ]
  store i8 1, i8* %AL.i2746, align 1
  %571 = add i64 %569, -112
  %572 = add i64 %570, 6
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, -4
  %576 = icmp ult i32 %574, 4
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %14, align 1
  %578 = and i32 %575, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %21, align 1
  %583 = xor i32 %575, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %27, align 1
  %587 = icmp eq i32 %575, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %30, align 1
  %589 = lshr i32 %575, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %33, align 1
  %591 = lshr i32 %574, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %591
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %39, align 1
  %596 = add i64 %569, -319
  %597 = add i64 %570, 12
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i8*
  store i8 1, i8* %598, align 1
  %599 = load i64, i64* %3, align 8
  %600 = load i8, i8* %30, align 1
  %601 = icmp ne i8 %600, 0
  %.v259 = select i1 %601, i64 19, i64 6
  %602 = add i64 %599, %.v259
  store i64 %602, i64* %3, align 8
  %cmpBr_402701 = icmp eq i8 %600, 1
  br i1 %cmpBr_402701, label %block_.L_402714, label %block_402707

block_402707:                                     ; preds = %block_.L_4026f5
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -112
  %605 = add i64 %602, 4
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = add i32 %607, -12
  %609 = icmp ult i32 %607, 12
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %14, align 1
  %611 = and i32 %608, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %21, align 1
  %616 = xor i32 %608, %607
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %27, align 1
  %620 = icmp eq i32 %608, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %30, align 1
  %622 = lshr i32 %608, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %33, align 1
  %624 = lshr i32 %607, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %624
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %39, align 1
  store i8 %621, i8* %AL.i2746, align 1
  %629 = add i64 %603, -319
  %630 = add i64 %602, 13
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i8*
  store i8 %621, i8* %631, align 1
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_402714

block_.L_402714:                                  ; preds = %block_402707, %block_.L_4026f5
  %632 = phi i64 [ %.pre88, %block_402707 ], [ %602, %block_.L_4026f5 ]
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -319
  %635 = add i64 %632, 6
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i8*
  %637 = load i8, i8* %636, align 1
  store i8 %637, i8* %AL.i2746, align 1
  %638 = add i64 %633, -318
  %639 = add i64 %632, 12
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i8*
  store i8 %637, i8* %640, align 1
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_402720

block_.L_402720:                                  ; preds = %block_.L_402714, %block_4026e1
  %641 = phi i64 [ %.pre89, %block_.L_402714 ], [ %564, %block_4026e1 ]
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -318
  %644 = add i64 %641, 6
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i8*
  %646 = load i8, i8* %645, align 1
  %647 = xor i8 %646, -1
  store i8 %647, i8* %AL.i2746, align 1
  store i8 0, i8* %14, align 1
  %648 = zext i8 %647 to i32
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %21, align 1
  %653 = icmp eq i8 %646, -1
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %30, align 1
  %655 = lshr i8 %647, 7
  store i8 %655, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %656 = add i64 %642, -317
  %657 = add i64 %641, 14
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i8*
  store i8 %647, i8* %658, align 1
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_40272e

block_.L_40272e:                                  ; preds = %block_.L_402720, %block_.L_40265b
  %659 = phi i64 [ %.pre90, %block_.L_402720 ], [ %509, %block_.L_40265b ]
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -317
  %662 = add i64 %659, 6
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i8*
  %664 = load i8, i8* %663, align 1
  %665 = and i8 %664, 1
  store i8 %665, i8* %AL.i2746, align 1
  store i8 0, i8* %14, align 1
  %666 = zext i8 %665 to i32
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666)
  %668 = trunc i32 %667 to i8
  %669 = xor i8 %668, 1
  store i8 %669, i8* %21, align 1
  %670 = xor i8 %665, 1
  store i8 %670, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %671 = zext i8 %665 to i64
  store i64 %671, i64* %RCX.i163, align 8
  %ECX.i2686 = bitcast %union.anon* %59 to i32*
  %672 = add i64 %660, -272
  %673 = zext i8 %665 to i32
  %674 = add i64 %659, 17
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %672 to i32*
  store i32 %673, i32* %675, align 4
  %676 = load i64, i64* %3, align 8
  %677 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %677, i64* %RDX.i, align 8
  %678 = add i64 %677, 216
  %679 = add i64 %676, 15
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  store i8 0, i8* %14, align 1
  %682 = and i32 %681, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %687 = icmp eq i32 %681, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %30, align 1
  %689 = lshr i32 %681, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v224 = select i1 %687, i64 398, i64 21
  %691 = add i64 %676, %.v224
  store i64 %691, i64* %3, align 8
  %692 = load i64, i64* %RBP.i, align 8
  br i1 %687, label %block_.L_4028cd, label %block_402754

block_402754:                                     ; preds = %block_.L_40272e
  %693 = add i64 %692, -36
  %694 = add i64 %691, 7
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  store i32 0, i32* %695, align 4
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -304
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 10
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %697 to i32*
  store i32 1, i32* %700, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_402765

block_.L_402765:                                  ; preds = %block_.L_4027ca, %block_402754
  %701 = phi i64 [ %885, %block_.L_4027ca ], [ %.pre91, %block_402754 ]
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -36
  %704 = add i64 %701, 4
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = add i32 %706, -4
  %708 = icmp ult i32 %706, 4
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %14, align 1
  %710 = and i32 %707, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i32 %707, %706
  %716 = lshr i32 %715, 4
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %27, align 1
  %719 = icmp eq i32 %707, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %30, align 1
  %721 = lshr i32 %707, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %33, align 1
  %723 = lshr i32 %706, 31
  %724 = xor i32 %721, %723
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %728 = icmp ne i8 %722, 0
  %729 = xor i1 %728, %726
  %.v225 = select i1 %729, i64 10, i64 133
  %730 = add i64 %701, %.v225
  store i64 %730, i64* %3, align 8
  br i1 %729, label %block_40276f, label %block_.L_4027ea

block_40276f:                                     ; preds = %block_.L_402765
  %731 = add i64 %702, -224
  store i64 %731, i64* %RAX.i732, align 8
  %732 = add i64 %730, 11
  store i64 %732, i64* %3, align 8
  %733 = load i32, i32* %705, align 4
  %734 = sext i32 %733 to i64
  %735 = mul nsw i64 %734, 24
  store i64 %735, i64* %RCX.i163, align 8
  %736 = lshr i64 %735, 63
  %737 = add i64 %735, %731
  store i64 %737, i64* %RAX.i732, align 8
  %738 = icmp ult i64 %737, %731
  %739 = icmp ult i64 %737, %735
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1
  %742 = trunc i64 %737 to i32
  %743 = and i32 %742, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i64 %735, %731
  %749 = xor i64 %748, %737
  %750 = lshr i64 %749, 4
  %751 = trunc i64 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1
  %753 = icmp eq i64 %737, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i64 %737, 63
  %756 = trunc i64 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = lshr i64 %731, 63
  %758 = xor i64 %755, %757
  %759 = xor i64 %755, %736
  %760 = add nuw nsw i64 %758, %759
  %761 = icmp eq i64 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %39, align 1
  %763 = inttoptr i64 %737 to i32*
  %764 = add i64 %730, 21
  store i64 %764, i64* %3, align 8
  %765 = load i32, i32* %763, align 4
  store i8 0, i8* %14, align 1
  %766 = and i32 %765, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %771 = icmp eq i32 %765, 0
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %30, align 1
  %773 = lshr i32 %765, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v248 = select i1 %771, i64 78, i64 27
  %775 = add i64 %730, %.v248
  store i64 %775, i64* %3, align 8
  br i1 %771, label %block_.L_4027bd, label %block_40278a

block_40278a:                                     ; preds = %block_40276f
  store i64 %731, i64* %RAX.i732, align 8
  %776 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %776, i64* %RCX.i163, align 8
  %777 = add i64 %776, 71784
  %778 = add i64 %775, 22
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i64*
  %780 = load i64, i64* %779, align 8
  store i64 %780, i64* %RCX.i163, align 8
  %781 = add i64 %775, 26
  store i64 %781, i64* %3, align 8
  %782 = load i32, i32* %705, align 4
  %783 = sext i32 %782 to i64
  %784 = mul nsw i64 %783, 24
  store i64 %784, i64* %RDX.i, align 8
  %785 = lshr i64 %784, 63
  %786 = add i64 %784, %731
  store i64 %786, i64* %RAX.i732, align 8
  %787 = icmp ult i64 %786, %731
  %788 = icmp ult i64 %786, %784
  %789 = or i1 %787, %788
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %14, align 1
  %791 = trunc i64 %786 to i32
  %792 = and i32 %791, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  %797 = xor i64 %784, %731
  %798 = xor i64 %797, %786
  %799 = lshr i64 %798, 4
  %800 = trunc i64 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %27, align 1
  %802 = icmp eq i64 %786, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %30, align 1
  %804 = lshr i64 %786, 63
  %805 = trunc i64 %804 to i8
  store i8 %805, i8* %33, align 1
  %806 = xor i64 %804, %757
  %807 = xor i64 %804, %785
  %808 = add nuw nsw i64 %806, %807
  %809 = icmp eq i64 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %39, align 1
  %811 = add i64 %786, 4
  %812 = add i64 %775, 37
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %RAX.i732, align 8
  %816 = shl nsw i64 %815, 2
  %817 = add i64 %816, %780
  %818 = add i64 %775, 40
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RSI.i, align 8
  %822 = add i64 %702, -324
  %823 = add i64 %775, 46
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  store i32 %820, i32* %824, align 4
  %825 = load i64, i64* %3, align 8
  %826 = add i64 %825, 18
  br label %block_.L_4027ca

block_.L_4027bd:                                  ; preds = %block_40276f
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %827 = add i64 %702, -324
  %828 = add i64 %775, 8
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  store i32 0, i32* %829, align 4
  %830 = load i64, i64* %3, align 8
  %831 = add i64 %830, 5
  store i64 %831, i64* %3, align 8
  br label %block_.L_4027ca

block_.L_4027ca:                                  ; preds = %block_.L_4027bd, %block_40278a
  %storemerge = phi i64 [ %826, %block_40278a ], [ %831, %block_.L_4027bd ]
  %832 = load i64, i64* %RBP.i, align 8
  %833 = add i64 %832, -324
  %834 = add i64 %storemerge, 6
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i732, align 8
  %838 = add i64 %832, -304
  %839 = add i64 %storemerge, 12
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = and i32 %841, %836
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  %844 = and i32 %842, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  %849 = icmp eq i32 %842, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %30, align 1
  %851 = lshr i32 %842, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %853 = add i64 %storemerge, 18
  store i64 %853, i64* %3, align 8
  store i32 %842, i32* %840, align 4
  %854 = load i64, i64* %RBP.i, align 8
  %855 = add i64 %854, -36
  %856 = load i64, i64* %3, align 8
  %857 = add i64 %856, 3
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %855 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = add i32 %859, 1
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX.i732, align 8
  %862 = icmp eq i32 %859, -1
  %863 = icmp eq i32 %860, 0
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %14, align 1
  %866 = and i32 %860, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %21, align 1
  %871 = xor i32 %860, %859
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %27, align 1
  %875 = zext i1 %863 to i8
  store i8 %875, i8* %30, align 1
  %876 = lshr i32 %860, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %33, align 1
  %878 = lshr i32 %859, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %876
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %39, align 1
  %883 = add i64 %856, 9
  store i64 %883, i64* %3, align 8
  store i32 %860, i32* %858, align 4
  %884 = load i64, i64* %3, align 8
  %885 = add i64 %884, -128
  store i64 %885, i64* %3, align 8
  br label %block_.L_402765

block_.L_4027ea:                                  ; preds = %block_.L_402765
  %886 = add i64 %702, -248
  %887 = add i64 %730, 7
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  store i8 0, i8* %14, align 1
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %895 = icmp eq i32 %889, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %30, align 1
  %897 = lshr i32 %889, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v226 = select i1 %895, i64 49, i64 13
  %899 = add i64 %730, %.v226
  store i64 %899, i64* %3, align 8
  br i1 %895, label %block_.L_40281b, label %block_4027f7

block_4027f7:                                     ; preds = %block_.L_4027ea
  %900 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %900, i64* %RAX.i732, align 8
  %901 = add i64 %900, 71784
  %902 = add i64 %899, 15
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RAX.i732, align 8
  %905 = add i64 %702, -244
  %906 = add i64 %899, 22
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RCX.i163, align 8
  %910 = shl nsw i64 %909, 2
  %911 = add i64 %910, %904
  %912 = add i64 %899, 25
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RDX.i, align 8
  %916 = add i64 %702, -328
  %917 = add i64 %899, 31
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  store i32 %914, i32* %918, align 4
  %919 = load i64, i64* %3, align 8
  %920 = add i64 %919, 18
  br label %block_.L_402828

block_.L_40281b:                                  ; preds = %block_.L_4027ea
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %921 = add i64 %702, -328
  %922 = add i64 %899, 8
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  store i32 0, i32* %923, align 4
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, 5
  store i64 %925, i64* %3, align 8
  br label %block_.L_402828

block_.L_402828:                                  ; preds = %block_.L_40281b, %block_4027f7
  %storemerge34 = phi i64 [ %920, %block_4027f7 ], [ %925, %block_.L_40281b ]
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -328
  %928 = add i64 %storemerge34, 6
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX.i732, align 8
  %932 = add i64 %926, -300
  %933 = add i64 %storemerge34, 12
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  store i32 %930, i32* %934, align 4
  %935 = load i64, i64* %RBP.i, align 8
  %936 = add i64 %935, -272
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 7
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %936 to i32*
  %940 = load i32, i32* %939, align 4
  store i8 0, i8* %14, align 1
  %941 = and i32 %940, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %946 = icmp eq i32 %940, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %30, align 1
  %948 = lshr i32 %940, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v227 = select i1 %946, i64 49, i64 13
  %950 = add i64 %937, %.v227
  store i64 %950, i64* %3, align 8
  br i1 %946, label %block_.L_402865, label %block_402841

block_402841:                                     ; preds = %block_.L_402828
  %951 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %951, i64* %RAX.i732, align 8
  %952 = add i64 %951, 71784
  %953 = add i64 %950, 15
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX.i732, align 8
  %956 = add i64 %935, -268
  %957 = add i64 %950, 22
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  store i64 %960, i64* %RCX.i163, align 8
  %961 = shl nsw i64 %960, 2
  %962 = add i64 %961, %955
  %963 = add i64 %950, 25
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RDX.i, align 8
  %967 = add i64 %935, -332
  %968 = add i64 %950, 31
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  store i32 %965, i32* %969, align 4
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 18
  br label %block_.L_402872

block_.L_402865:                                  ; preds = %block_.L_402828
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %972 = add i64 %935, -332
  %973 = add i64 %950, 8
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  store i32 0, i32* %974, align 4
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, 5
  store i64 %976, i64* %3, align 8
  br label %block_.L_402872

block_.L_402872:                                  ; preds = %block_.L_402865, %block_402841
  %storemerge35 = phi i64 [ %971, %block_402841 ], [ %976, %block_.L_402865 ]
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -332
  %979 = add i64 %storemerge35, 6
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RAX.i732, align 8
  %983 = add i64 %977, -312
  %984 = add i64 %storemerge35, 12
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  store i32 %981, i32* %985, align 4
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -296
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, 7
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %987 to i32*
  %991 = load i32, i32* %990, align 4
  store i8 0, i8* %14, align 1
  %992 = and i32 %991, 255
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %997 = icmp eq i32 %991, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %30, align 1
  %999 = lshr i32 %991, 31
  %1000 = trunc i32 %999 to i8
  store i8 %1000, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v228 = select i1 %997, i64 49, i64 13
  %1001 = add i64 %988, %.v228
  store i64 %1001, i64* %3, align 8
  br i1 %997, label %block_.L_4028af, label %block_40288b

block_40288b:                                     ; preds = %block_.L_402872
  %1002 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1002, i64* %RAX.i732, align 8
  %1003 = add i64 %1002, 71784
  %1004 = add i64 %1001, 15
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i64*
  %1006 = load i64, i64* %1005, align 8
  store i64 %1006, i64* %RAX.i732, align 8
  %1007 = add i64 %986, -292
  %1008 = add i64 %1001, 22
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = sext i32 %1010 to i64
  store i64 %1011, i64* %RCX.i163, align 8
  %1012 = shl nsw i64 %1011, 2
  %1013 = add i64 %1012, %1006
  %1014 = add i64 %1001, 25
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RDX.i, align 8
  %1018 = add i64 %986, -336
  %1019 = add i64 %1001, 31
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  store i32 %1016, i32* %1020, align 4
  %1021 = load i64, i64* %3, align 8
  %1022 = add i64 %1021, 18
  br label %block_.L_4028bc

block_.L_4028af:                                  ; preds = %block_.L_402872
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1023 = add i64 %986, -336
  %1024 = add i64 %1001, 8
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  store i32 0, i32* %1025, align 4
  %1026 = load i64, i64* %3, align 8
  %1027 = add i64 %1026, 5
  store i64 %1027, i64* %3, align 8
  br label %block_.L_4028bc

block_.L_4028bc:                                  ; preds = %block_.L_4028af, %block_40288b
  %storemerge36 = phi i64 [ %1022, %block_40288b ], [ %1027, %block_.L_4028af ]
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -336
  %1030 = add i64 %storemerge36, 6
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i732, align 8
  %1034 = add i64 %1028, -308
  %1035 = add i64 %storemerge36, 12
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  store i32 %1032, i32* %1036, align 4
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, 53
  store i64 %1038, i64* %3, align 8
  br label %block_.L_4028fd

block_.L_4028cd:                                  ; preds = %block_.L_40272e
  %1039 = add i64 %692, -224
  %1040 = add i64 %691, 6
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX.i732, align 8
  %1044 = add i64 %692, -304
  %1045 = add i64 %691, 12
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  store i32 %1042, i32* %1046, align 4
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -248
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, 6
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX.i732, align 8
  %1054 = add i64 %1047, -300
  %1055 = add i64 %1049, 12
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  store i32 %1052, i32* %1056, align 4
  %1057 = load i64, i64* %RBP.i, align 8
  %1058 = add i64 %1057, -272
  %1059 = load i64, i64* %3, align 8
  %1060 = add i64 %1059, 6
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1058 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX.i732, align 8
  %1064 = add i64 %1057, -312
  %1065 = add i64 %1059, 12
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  store i32 %1062, i32* %1066, align 4
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -296
  %1069 = load i64, i64* %3, align 8
  %1070 = add i64 %1069, 6
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RAX.i732, align 8
  %1074 = add i64 %1067, -308
  %1075 = add i64 %1069, 12
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  store i32 %1072, i32* %1076, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_4028fd

block_.L_4028fd:                                  ; preds = %block_.L_4028cd, %block_.L_4028bc
  %1077 = phi i64 [ %.pre92, %block_.L_4028cd ], [ %1038, %block_.L_4028bc ]
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %CL.i2487 = bitcast %union.anon* %59 to i8*
  store i8 0, i8* %CL.i2487, align 1
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -304
  %1080 = add i64 %1077, 10
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i732, align 8
  %1084 = add i64 %1078, -16
  %1085 = add i64 %1077, 14
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RDX.i, align 8
  %1088 = add i64 %1077, 16
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  store i32 %1082, i32* %1089, align 4
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -300
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 6
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i732, align 8
  %1097 = add i64 %1090, -24
  %1098 = add i64 %1092, 10
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RDX.i, align 8
  %1101 = add i64 %1092, 12
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  store i32 %1095, i32* %1102, align 4
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -300
  %1105 = load i64, i64* %3, align 8
  %1106 = add i64 %1105, 7
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107, align 4
  store i8 0, i8* %14, align 1
  %1109 = and i32 %1108, 255
  %1110 = tail call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  store i8 %1113, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1114 = icmp eq i32 %1108, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %30, align 1
  %1116 = lshr i32 %1108, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1118 = add i64 %1103, -337
  %1119 = load i8, i8* %CL.i2487, align 1
  %1120 = add i64 %1105, 13
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1118 to i8*
  store i8 %1119, i8* %1121, align 1
  %1122 = load i64, i64* %3, align 8
  %1123 = load i8, i8* %30, align 1
  %1124 = icmp ne i8 %1123, 0
  %.v260 = select i1 %1124, i64 45, i64 6
  %1125 = add i64 %1122, %.v260
  store i64 %1125, i64* %3, align 8
  %cmpBr_402926 = icmp eq i8 %1123, 1
  br i1 %cmpBr_402926, label %block_.L_402953, label %block_40292c

block_40292c:                                     ; preds = %block_.L_4028fd
  store i64 0, i64* %RAX.i732, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i2487, align 1
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -304
  %1128 = add i64 %1125, 11
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  store i8 0, i8* %14, align 1
  %1131 = and i32 %1130, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1136 = icmp eq i32 %1130, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %30, align 1
  %1138 = lshr i32 %1130, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1140 = add i64 %1126, -337
  %1141 = add i64 %1125, 17
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i8*
  store i8 0, i8* %1142, align 1
  %1143 = load i64, i64* %3, align 8
  %1144 = load i8, i8* %30, align 1
  %1145 = icmp ne i8 %1144, 0
  %.v261 = select i1 %1145, i64 22, i64 6
  %1146 = add i64 %1143, %.v261
  store i64 %1146, i64* %3, align 8
  %cmpBr_40293d = icmp eq i8 %1144, 1
  br i1 %cmpBr_40293d, label %block_.L_402953, label %block_402943

block_402943:                                     ; preds = %block_40292c
  %1147 = load i64, i64* %RBP.i, align 8
  %1148 = add i64 %1147, -308
  %1149 = add i64 %1146, 7
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  store i8 0, i8* %14, align 1
  %1152 = and i32 %1151, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1157 = icmp eq i32 %1151, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %30, align 1
  %1159 = lshr i32 %1151, 31
  %1160 = trunc i32 %1159 to i8
  store i8 %1160, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1161 = xor i1 %1157, true
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %AL.i2746, align 1
  %1163 = add i64 %1147, -337
  %1164 = add i64 %1146, 16
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i8*
  store i8 %1162, i8* %1165, align 1
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_402953

block_.L_402953:                                  ; preds = %block_402943, %block_40292c, %block_.L_4028fd
  %1166 = phi i64 [ %.pre93, %block_402943 ], [ %1146, %block_40292c ], [ %1125, %block_.L_4028fd ]
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -337
  %1169 = add i64 %1166, 6
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i8*
  %1171 = load i8, i8* %1170, align 1
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %AL.i2746, align 1
  store i8 0, i8* %14, align 1
  %1173 = zext i8 %1172 to i32
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %21, align 1
  %1177 = xor i8 %1172, 1
  store i8 %1177, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1178 = zext i8 %1172 to i64
  store i64 %1178, i64* %RCX.i163, align 8
  %1179 = add i64 %1167, -32
  %1180 = add i64 %1166, 15
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RDX.i, align 8
  %1183 = zext i8 %1172 to i32
  %1184 = add i64 %1166, 17
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1182 to i32*
  store i32 %1183, i32* %1185, align 4
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -4
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = and i32 %1191, 15
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RCX.i163, align 8
  store i8 0, i8* %14, align 1
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1192)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %21, align 1
  %1198 = icmp eq i32 %1192, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1200 = add i64 %1186, -36
  %1201 = add i64 %1188, 9
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  store i32 %1192, i32* %1202, align 4
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -8
  %1205 = load i64, i64* %3, align 8
  %1206 = add i64 %1205, 3
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1204 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = and i32 %1208, 15
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RCX.i163, align 8
  store i8 0, i8* %14, align 1
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = icmp eq i32 %1209, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1217 = add i64 %1203, -40
  %1218 = add i64 %1205, 9
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  store i32 %1209, i32* %1219, align 4
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -300
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 7
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to i32*
  %1225 = load i32, i32* %1224, align 4
  store i8 0, i8* %14, align 1
  %1226 = and i32 %1225, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1231 = icmp eq i32 %1225, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %30, align 1
  %1233 = lshr i32 %1225, 31
  %1234 = trunc i32 %1233 to i8
  store i8 %1234, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v229 = select i1 %1231, i64 154, i64 13
  %1235 = add i64 %1222, %.v229
  store i64 %1235, i64* %3, align 8
  br i1 %1231, label %block_.L_402a10, label %block_402983

block_402983:                                     ; preds = %block_.L_402953
  %1236 = add i64 %1220, -104
  %1237 = add i64 %1235, 4
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RAX.i732, align 8
  %1240 = add i64 %1220, -228
  %1241 = add i64 %1235, 11
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = sext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i163, align 8
  %1245 = shl nsw i64 %1244, 3
  %1246 = add i64 %1245, %1239
  %1247 = add i64 %1235, 15
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RAX.i732, align 8
  %1250 = add i64 %1220, -232
  %1251 = add i64 %1235, 21
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  %1255 = and i32 %1253, 255
  %1256 = tail call i32 @llvm.ctpop.i32(i32 %1255)
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  %1259 = xor i8 %1258, 1
  store i8 %1259, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1260 = icmp eq i32 %1253, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %30, align 1
  %1262 = lshr i32 %1253, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1264 = sext i32 %1253 to i64
  store i64 %1264, i64* %RCX.i163, align 8
  %1265 = shl nsw i64 %1264, 1
  %1266 = add i64 %1249, %1265
  %1267 = add i64 %1235, 31
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i16*
  %1269 = load i16, i16* %1268, align 2
  %1270 = zext i16 %1269 to i64
  store i64 %1270, i64* %RDX.i, align 8
  %1271 = add i64 %1220, -92
  %1272 = zext i16 %1269 to i32
  %1273 = add i64 %1235, 34
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1271 to i32*
  store i32 %1272, i32* %1274, align 4
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -104
  %1277 = load i64, i64* %3, align 8
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1276 to i64*
  %1280 = load i64, i64* %1279, align 8
  store i64 %1280, i64* %RAX.i732, align 8
  %1281 = add i64 %1275, -228
  %1282 = add i64 %1277, 11
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sext i32 %1284 to i64
  store i64 %1285, i64* %RCX.i163, align 8
  %1286 = shl nsw i64 %1285, 3
  %1287 = add i64 %1286, %1280
  %1288 = add i64 %1277, 15
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %RAX.i732, align 8
  %1291 = add i64 %1275, -232
  %1292 = add i64 %1277, 21
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = add i32 %1294, 1
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RDX.i, align 8
  %1297 = icmp eq i32 %1294, -1
  %1298 = icmp eq i32 %1295, 0
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1295, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1295, %1294
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %27, align 1
  %1310 = zext i1 %1298 to i8
  store i8 %1310, i8* %30, align 1
  %1311 = lshr i32 %1295, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %33, align 1
  %1313 = lshr i32 %1294, 31
  %1314 = xor i32 %1311, %1313
  %1315 = add nuw nsw i32 %1314, %1311
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %39, align 1
  %1318 = sext i32 %1295 to i64
  store i64 %1318, i64* %RCX.i163, align 8
  %1319 = shl nsw i64 %1318, 1
  %1320 = add i64 %1290, %1319
  %1321 = add i64 %1277, 31
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i16*
  %1323 = load i16, i16* %1322, align 2
  %1324 = zext i16 %1323 to i64
  store i64 %1324, i64* %RDX.i, align 8
  %1325 = add i64 %1275, -88
  %1326 = zext i16 %1323 to i32
  %1327 = add i64 %1277, 34
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i32*
  store i32 %1326, i32* %1328, align 4
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -104
  %1331 = load i64, i64* %3, align 8
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1330 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RAX.i732, align 8
  %1335 = add i64 %1329, -228
  %1336 = add i64 %1331, 11
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i163, align 8
  %1340 = shl nsw i64 %1339, 3
  %1341 = add i64 %1340, %1334
  %1342 = add i64 %1331, 15
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i64*
  %1344 = load i64, i64* %1343, align 8
  store i64 %1344, i64* %RAX.i732, align 8
  %1345 = add i64 %1329, -232
  %1346 = add i64 %1331, 21
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = add i32 %1348, 2
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RDX.i, align 8
  %1351 = icmp ugt i32 %1348, -3
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = and i32 %1349, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i32 %1349, %1348
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %27, align 1
  %1362 = icmp eq i32 %1349, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %30, align 1
  %1364 = lshr i32 %1349, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %33, align 1
  %1366 = lshr i32 %1348, 31
  %1367 = xor i32 %1364, %1366
  %1368 = add nuw nsw i32 %1367, %1364
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %39, align 1
  %1371 = sext i32 %1349 to i64
  store i64 %1371, i64* %RCX.i163, align 8
  %1372 = shl nsw i64 %1371, 1
  %1373 = add i64 %1344, %1372
  %1374 = add i64 %1331, 31
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i16*
  %1376 = load i16, i16* %1375, align 2
  %1377 = zext i16 %1376 to i64
  store i64 %1377, i64* %RDX.i, align 8
  %1378 = add i64 %1329, -84
  %1379 = zext i16 %1376 to i32
  %1380 = add i64 %1331, 34
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1378 to i32*
  store i32 %1379, i32* %1381, align 4
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -104
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %RAX.i732, align 8
  %1388 = add i64 %1382, -228
  %1389 = add i64 %1384, 11
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = sext i32 %1391 to i64
  store i64 %1392, i64* %RCX.i163, align 8
  %1393 = shl nsw i64 %1392, 3
  %1394 = add i64 %1393, %1387
  %1395 = add i64 %1384, 15
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RAX.i732, align 8
  %1398 = add i64 %1382, -232
  %1399 = add i64 %1384, 21
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, 3
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RDX.i, align 8
  %1404 = icmp ugt i32 %1401, -4
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %14, align 1
  %1406 = and i32 %1402, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %21, align 1
  %1411 = xor i32 %1402, %1401
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %27, align 1
  %1415 = icmp eq i32 %1402, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %30, align 1
  %1417 = lshr i32 %1402, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %33, align 1
  %1419 = lshr i32 %1401, 31
  %1420 = xor i32 %1417, %1419
  %1421 = add nuw nsw i32 %1420, %1417
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %39, align 1
  %1424 = sext i32 %1402 to i64
  store i64 %1424, i64* %RCX.i163, align 8
  %1425 = shl nsw i64 %1424, 1
  %1426 = add i64 %1397, %1425
  %1427 = add i64 %1384, 31
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i16*
  %1429 = load i16, i16* %1428, align 2
  %1430 = zext i16 %1429 to i64
  store i64 %1430, i64* %RDX.i, align 8
  %1431 = add i64 %1382, -80
  %1432 = zext i16 %1429 to i32
  %1433 = add i64 %1384, 34
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i32*
  store i32 %1432, i32* %1434, align 4
  %1435 = load i64, i64* %3, align 8
  %1436 = add i64 %1435, 31
  store i64 %1436, i64* %3, align 8
  br label %block_.L_402a2a

block_.L_402a10:                                  ; preds = %block_.L_402953
  %1437 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1437, i64* %RAX.i732, align 8
  %1438 = add i64 %1437, 72680
  %1439 = add i64 %1235, 14
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RCX.i163, align 8
  %1443 = add i64 %1220, -80
  %1444 = add i64 %1235, 17
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  store i32 %1441, i32* %1445, align 4
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -84
  %1448 = load i32, i32* %ECX.i2686, align 4
  %1449 = load i64, i64* %3, align 8
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1447 to i32*
  store i32 %1448, i32* %1451, align 4
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -88
  %1454 = load i32, i32* %ECX.i2686, align 4
  %1455 = load i64, i64* %3, align 8
  %1456 = add i64 %1455, 3
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1453 to i32*
  store i32 %1454, i32* %1457, align 4
  %1458 = load i64, i64* %RBP.i, align 8
  %1459 = add i64 %1458, -92
  %1460 = load i32, i32* %ECX.i2686, align 4
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1459 to i32*
  store i32 %1460, i32* %1463, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_402a2a

block_.L_402a2a:                                  ; preds = %block_.L_402a10, %block_402983
  %1464 = phi i64 [ %.pre94, %block_.L_402a10 ], [ %1436, %block_402983 ]
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -312
  %1467 = add i64 %1464, 7
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  %1469 = load i32, i32* %1468, align 4
  store i8 0, i8* %14, align 1
  %1470 = and i32 %1469, 255
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1475 = icmp eq i32 %1469, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %30, align 1
  %1477 = lshr i32 %1469, 31
  %1478 = trunc i32 %1477 to i8
  store i8 %1478, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v230 = select i1 %1475, i64 154, i64 13
  %1479 = add i64 %1464, %.v230
  store i64 %1479, i64* %3, align 8
  br i1 %1475, label %block_.L_402ac4, label %block_402a37

block_402a37:                                     ; preds = %block_.L_402a2a
  %1480 = add i64 %1465, -104
  %1481 = add i64 %1479, 4
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RAX.i732, align 8
  %1484 = add i64 %1465, -252
  %1485 = add i64 %1479, 11
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i163, align 8
  %1489 = shl nsw i64 %1488, 3
  %1490 = add i64 %1489, %1483
  %1491 = add i64 %1479, 15
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RAX.i732, align 8
  %1494 = add i64 %1465, -256
  %1495 = add i64 %1479, 21
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  %1499 = and i32 %1497, 255
  %1500 = tail call i32 @llvm.ctpop.i32(i32 %1499)
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1504 = icmp eq i32 %1497, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %30, align 1
  %1506 = lshr i32 %1497, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1508 = sext i32 %1497 to i64
  store i64 %1508, i64* %RCX.i163, align 8
  %1509 = shl nsw i64 %1508, 1
  %1510 = add i64 %1493, %1509
  %1511 = add i64 %1479, 31
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i16*
  %1513 = load i16, i16* %1512, align 2
  %1514 = zext i16 %1513 to i64
  store i64 %1514, i64* %RDX.i, align 8
  %1515 = add i64 %1465, -76
  %1516 = zext i16 %1513 to i32
  %1517 = add i64 %1479, 34
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1515 to i32*
  store i32 %1516, i32* %1518, align 4
  %1519 = load i64, i64* %RBP.i, align 8
  %1520 = add i64 %1519, -104
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %RAX.i732, align 8
  %1525 = add i64 %1519, -252
  %1526 = add i64 %1521, 11
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  %1528 = load i32, i32* %1527, align 4
  %1529 = sext i32 %1528 to i64
  store i64 %1529, i64* %RCX.i163, align 8
  %1530 = shl nsw i64 %1529, 3
  %1531 = add i64 %1530, %1524
  %1532 = add i64 %1521, 15
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %RAX.i732, align 8
  %1535 = add i64 %1519, -256
  %1536 = add i64 %1521, 21
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = add i32 %1538, 1
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RDX.i, align 8
  %1541 = icmp eq i32 %1538, -1
  %1542 = icmp eq i32 %1539, 0
  %1543 = or i1 %1541, %1542
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %14, align 1
  %1545 = and i32 %1539, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %21, align 1
  %1550 = xor i32 %1539, %1538
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  store i8 %1553, i8* %27, align 1
  %1554 = zext i1 %1542 to i8
  store i8 %1554, i8* %30, align 1
  %1555 = lshr i32 %1539, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %33, align 1
  %1557 = lshr i32 %1538, 31
  %1558 = xor i32 %1555, %1557
  %1559 = add nuw nsw i32 %1558, %1555
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %39, align 1
  %1562 = sext i32 %1539 to i64
  store i64 %1562, i64* %RCX.i163, align 8
  %1563 = shl nsw i64 %1562, 1
  %1564 = add i64 %1534, %1563
  %1565 = add i64 %1521, 31
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i16*
  %1567 = load i16, i16* %1566, align 2
  %1568 = zext i16 %1567 to i64
  store i64 %1568, i64* %RDX.i, align 8
  %1569 = add i64 %1519, -72
  %1570 = zext i16 %1567 to i32
  %1571 = add i64 %1521, 34
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1569 to i32*
  store i32 %1570, i32* %1572, align 4
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -104
  %1575 = load i64, i64* %3, align 8
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1574 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RAX.i732, align 8
  %1579 = add i64 %1573, -252
  %1580 = add i64 %1575, 11
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RCX.i163, align 8
  %1584 = shl nsw i64 %1583, 3
  %1585 = add i64 %1584, %1578
  %1586 = add i64 %1575, 15
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i64*
  %1588 = load i64, i64* %1587, align 8
  store i64 %1588, i64* %RAX.i732, align 8
  %1589 = add i64 %1573, -256
  %1590 = add i64 %1575, 21
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, 2
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RDX.i, align 8
  %1595 = icmp ugt i32 %1592, -3
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %14, align 1
  %1597 = and i32 %1593, 255
  %1598 = tail call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  store i8 %1601, i8* %21, align 1
  %1602 = xor i32 %1593, %1592
  %1603 = lshr i32 %1602, 4
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  store i8 %1605, i8* %27, align 1
  %1606 = icmp eq i32 %1593, 0
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %30, align 1
  %1608 = lshr i32 %1593, 31
  %1609 = trunc i32 %1608 to i8
  store i8 %1609, i8* %33, align 1
  %1610 = lshr i32 %1592, 31
  %1611 = xor i32 %1608, %1610
  %1612 = add nuw nsw i32 %1611, %1608
  %1613 = icmp eq i32 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %39, align 1
  %1615 = sext i32 %1593 to i64
  store i64 %1615, i64* %RCX.i163, align 8
  %1616 = shl nsw i64 %1615, 1
  %1617 = add i64 %1588, %1616
  %1618 = add i64 %1575, 31
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i16*
  %1620 = load i16, i16* %1619, align 2
  %1621 = zext i16 %1620 to i64
  store i64 %1621, i64* %RDX.i, align 8
  %1622 = add i64 %1573, -68
  %1623 = zext i16 %1620 to i32
  %1624 = add i64 %1575, 34
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1622 to i32*
  store i32 %1623, i32* %1625, align 4
  %1626 = load i64, i64* %RBP.i, align 8
  %1627 = add i64 %1626, -104
  %1628 = load i64, i64* %3, align 8
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1627 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %RAX.i732, align 8
  %1632 = add i64 %1626, -252
  %1633 = add i64 %1628, 11
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = sext i32 %1635 to i64
  store i64 %1636, i64* %RCX.i163, align 8
  %1637 = shl nsw i64 %1636, 3
  %1638 = add i64 %1637, %1631
  %1639 = add i64 %1628, 15
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RAX.i732, align 8
  %1642 = add i64 %1626, -256
  %1643 = add i64 %1628, 21
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, 3
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RDX.i, align 8
  %1648 = icmp ugt i32 %1645, -4
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = and i32 %1646, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i32 %1646, %1645
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
  %1664 = xor i32 %1661, %1663
  %1665 = add nuw nsw i32 %1664, %1661
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %39, align 1
  %1668 = sext i32 %1646 to i64
  store i64 %1668, i64* %RCX.i163, align 8
  %1669 = shl nsw i64 %1668, 1
  %1670 = add i64 %1641, %1669
  %1671 = add i64 %1628, 31
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i16*
  %1673 = load i16, i16* %1672, align 2
  %1674 = zext i16 %1673 to i64
  store i64 %1674, i64* %RDX.i, align 8
  %1675 = add i64 %1626, -64
  %1676 = zext i16 %1673 to i32
  %1677 = add i64 %1628, 34
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1675 to i32*
  store i32 %1676, i32* %1678, align 4
  %1679 = load i64, i64* %3, align 8
  %1680 = add i64 %1679, 20
  store i64 %1680, i64* %3, align 8
  br label %block_.L_402ad3

block_.L_402ac4:                                  ; preds = %block_.L_402a2a
  %1681 = add i64 %1465, -80
  %1682 = add i64 %1479, 3
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RAX.i732, align 8
  %1686 = add i64 %1465, -64
  %1687 = add i64 %1479, 6
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  store i32 %1684, i32* %1688, align 4
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -68
  %1691 = load i32, i32* %EAX.i1314, align 4
  %1692 = load i64, i64* %3, align 8
  %1693 = add i64 %1692, 3
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1690 to i32*
  store i32 %1691, i32* %1694, align 4
  %1695 = load i64, i64* %RBP.i, align 8
  %1696 = add i64 %1695, -72
  %1697 = load i32, i32* %EAX.i1314, align 4
  %1698 = load i64, i64* %3, align 8
  %1699 = add i64 %1698, 3
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1696 to i32*
  store i32 %1697, i32* %1700, align 4
  %1701 = load i64, i64* %RBP.i, align 8
  %1702 = add i64 %1701, -76
  %1703 = load i32, i32* %EAX.i1314, align 4
  %1704 = load i64, i64* %3, align 8
  %1705 = add i64 %1704, 3
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1702 to i32*
  store i32 %1703, i32* %1706, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_402ad3

block_.L_402ad3:                                  ; preds = %block_.L_402ac4, %block_402a37
  %1707 = phi i64 [ %.pre95, %block_.L_402ac4 ], [ %1680, %block_402a37 ]
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -304
  %1710 = add i64 %1707, 7
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  store i8 0, i8* %14, align 1
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1718 = icmp eq i32 %1712, 0
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %30, align 1
  %1720 = lshr i32 %1712, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v231 = select i1 %1718, i64 134, i64 13
  %1722 = add i64 %1707, %.v231
  store i64 %1722, i64* %3, align 8
  br i1 %1718, label %block_.L_402b59, label %block_402ae0

block_402ae0:                                     ; preds = %block_.L_402ad3
  %1723 = add i64 %1708, -104
  %1724 = add i64 %1722, 4
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i732, align 8
  %1727 = add i64 %1708, -204
  %1728 = add i64 %1722, 11
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = sext i32 %1730 to i64
  store i64 %1731, i64* %RCX.i163, align 8
  %1732 = shl nsw i64 %1731, 3
  %1733 = add i64 %1732, %1726
  %1734 = add i64 %1722, 15
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i64*
  %1736 = load i64, i64* %1735, align 8
  store i64 %1736, i64* %RAX.i732, align 8
  %1737 = add i64 %1708, -208
  %1738 = add i64 %1722, 22
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = sext i32 %1740 to i64
  store i64 %1741, i64* %RCX.i163, align 8
  %1742 = shl nsw i64 %1741, 1
  %1743 = add i64 %1742, %1736
  %1744 = add i64 %1722, 26
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i16*
  %1746 = load i16, i16* %1745, align 2
  %1747 = zext i16 %1746 to i64
  store i64 %1747, i64* %RDX.i, align 8
  %1748 = add i64 %1708, -60
  %1749 = zext i16 %1746 to i32
  %1750 = add i64 %1722, 29
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1748 to i32*
  store i32 %1749, i32* %1751, align 4
  %1752 = load i64, i64* %RBP.i, align 8
  %1753 = add i64 %1752, -104
  %1754 = load i64, i64* %3, align 8
  %1755 = add i64 %1754, 4
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1753 to i64*
  %1757 = load i64, i64* %1756, align 8
  store i64 %1757, i64* %RAX.i732, align 8
  %1758 = add i64 %1752, -180
  %1759 = add i64 %1754, 11
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = sext i32 %1761 to i64
  store i64 %1762, i64* %RCX.i163, align 8
  %1763 = shl nsw i64 %1762, 3
  %1764 = add i64 %1763, %1757
  %1765 = add i64 %1754, 15
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i64*
  %1767 = load i64, i64* %1766, align 8
  store i64 %1767, i64* %RAX.i732, align 8
  %1768 = add i64 %1752, -184
  %1769 = add i64 %1754, 22
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i163, align 8
  %1773 = shl nsw i64 %1772, 1
  %1774 = add i64 %1773, %1767
  %1775 = add i64 %1754, 26
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i16*
  %1777 = load i16, i16* %1776, align 2
  %1778 = zext i16 %1777 to i64
  store i64 %1778, i64* %RDX.i, align 8
  %1779 = add i64 %1752, -56
  %1780 = zext i16 %1777 to i32
  %1781 = add i64 %1754, 29
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1779 to i32*
  store i32 %1780, i32* %1782, align 4
  %1783 = load i64, i64* %RBP.i, align 8
  %1784 = add i64 %1783, -104
  %1785 = load i64, i64* %3, align 8
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX.i732, align 8
  %1789 = add i64 %1783, -156
  %1790 = add i64 %1785, 11
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = sext i32 %1792 to i64
  store i64 %1793, i64* %RCX.i163, align 8
  %1794 = shl nsw i64 %1793, 3
  %1795 = add i64 %1794, %1788
  %1796 = add i64 %1785, 15
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RAX.i732, align 8
  %1799 = add i64 %1783, -160
  %1800 = add i64 %1785, 22
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = sext i32 %1802 to i64
  store i64 %1803, i64* %RCX.i163, align 8
  %1804 = shl nsw i64 %1803, 1
  %1805 = add i64 %1804, %1798
  %1806 = add i64 %1785, 26
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i16*
  %1808 = load i16, i16* %1807, align 2
  %1809 = zext i16 %1808 to i64
  store i64 %1809, i64* %RDX.i, align 8
  %1810 = add i64 %1783, -52
  %1811 = zext i16 %1808 to i32
  %1812 = add i64 %1785, 29
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1810 to i32*
  store i32 %1811, i32* %1813, align 4
  %1814 = load i64, i64* %RBP.i, align 8
  %1815 = add i64 %1814, -104
  %1816 = load i64, i64* %3, align 8
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1815 to i64*
  %1819 = load i64, i64* %1818, align 8
  store i64 %1819, i64* %RAX.i732, align 8
  %1820 = add i64 %1814, -132
  %1821 = add i64 %1816, 11
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  store i64 %1824, i64* %RCX.i163, align 8
  %1825 = shl nsw i64 %1824, 3
  %1826 = add i64 %1825, %1819
  %1827 = add i64 %1816, 15
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i64*
  %1829 = load i64, i64* %1828, align 8
  store i64 %1829, i64* %RAX.i732, align 8
  %1830 = add i64 %1814, -136
  %1831 = add i64 %1816, 22
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = sext i32 %1833 to i64
  store i64 %1834, i64* %RCX.i163, align 8
  %1835 = shl nsw i64 %1834, 1
  %1836 = add i64 %1835, %1829
  %1837 = add i64 %1816, 26
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i16*
  %1839 = load i16, i16* %1838, align 2
  %1840 = zext i16 %1839 to i64
  store i64 %1840, i64* %RDX.i, align 8
  %1841 = add i64 %1814, -48
  %1842 = zext i16 %1839 to i32
  %1843 = add i64 %1816, 29
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1841 to i32*
  store i32 %1842, i32* %1844, align 4
  %1845 = load i64, i64* %3, align 8
  %1846 = add i64 %1845, 31
  store i64 %1846, i64* %3, align 8
  br label %block_.L_402b73

block_.L_402b59:                                  ; preds = %block_.L_402ad3
  %1847 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1847, i64* %RAX.i732, align 8
  %1848 = add i64 %1847, 72680
  %1849 = add i64 %1722, 14
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RCX.i163, align 8
  %1853 = add i64 %1708, -48
  %1854 = add i64 %1722, 17
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i32*
  store i32 %1851, i32* %1855, align 4
  %1856 = load i64, i64* %RBP.i, align 8
  %1857 = add i64 %1856, -52
  %1858 = load i32, i32* %ECX.i2686, align 4
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1857 to i32*
  store i32 %1858, i32* %1861, align 4
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -56
  %1864 = load i32, i32* %ECX.i2686, align 4
  %1865 = load i64, i64* %3, align 8
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1863 to i32*
  store i32 %1864, i32* %1867, align 4
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -60
  %1870 = load i32, i32* %ECX.i2686, align 4
  %1871 = load i64, i64* %3, align 8
  %1872 = add i64 %1871, 3
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1869 to i32*
  store i32 %1870, i32* %1873, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_402b73

block_.L_402b73:                                  ; preds = %block_.L_402b59, %block_402ae0
  %1874 = phi i64 [ %.pre96, %block_.L_402b59 ], [ %1846, %block_402ae0 ]
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -308
  %1877 = add i64 %1874, 7
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  store i8 0, i8* %14, align 1
  %1880 = and i32 %1879, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1885 = icmp eq i32 %1879, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %30, align 1
  %1887 = lshr i32 %1879, 31
  %1888 = trunc i32 %1887 to i8
  store i8 %1888, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v232 = select i1 %1885, i64 47, i64 13
  %1889 = add i64 %1874, %.v232
  store i64 %1889, i64* %3, align 8
  br i1 %1885, label %block_.L_402ba2, label %block_402b80

block_402b80:                                     ; preds = %block_.L_402b73
  %1890 = add i64 %1875, -104
  %1891 = add i64 %1889, 4
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RAX.i732, align 8
  %1894 = add i64 %1875, -276
  %1895 = add i64 %1889, 11
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = sext i32 %1897 to i64
  store i64 %1898, i64* %RCX.i163, align 8
  %1899 = shl nsw i64 %1898, 3
  %1900 = add i64 %1899, %1893
  %1901 = add i64 %1889, 15
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i64*
  %1903 = load i64, i64* %1902, align 8
  store i64 %1903, i64* %RAX.i732, align 8
  %1904 = add i64 %1875, -280
  %1905 = add i64 %1889, 22
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = sext i32 %1907 to i64
  store i64 %1908, i64* %RCX.i163, align 8
  %1909 = shl nsw i64 %1908, 1
  %1910 = add i64 %1909, %1903
  %1911 = add i64 %1889, 26
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i16*
  %1913 = load i16, i16* %1912, align 2
  %1914 = zext i16 %1913 to i64
  store i64 %1914, i64* %RDX.i, align 8
  %1915 = add i64 %1875, -96
  %1916 = zext i16 %1913 to i32
  %1917 = add i64 %1889, 29
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1915 to i32*
  store i32 %1916, i32* %1918, align 4
  %1919 = load i64, i64* %3, align 8
  %1920 = add i64 %1919, 22
  store i64 %1920, i64* %3, align 8
  br label %block_.L_402bb3

block_.L_402ba2:                                  ; preds = %block_.L_402b73
  %1921 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1921, i64* %RAX.i732, align 8
  %1922 = add i64 %1921, 72680
  %1923 = add i64 %1889, 14
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RCX.i163, align 8
  %1927 = add i64 %1875, -96
  %1928 = add i64 %1889, 17
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  store i32 %1925, i32* %1929, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_402bb3

block_.L_402bb3:                                  ; preds = %block_.L_402ba2, %block_402b80
  %1930 = phi i64 [ %.pre97, %block_.L_402ba2 ], [ %1920, %block_402b80 ]
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -36
  %1933 = add i64 %1930, 7
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  store i32 0, i32* %1934, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_402bba

block_.L_402bba:                                  ; preds = %block_402bc4, %block_.L_402bb3
  %1935 = phi i64 [ %2052, %block_402bc4 ], [ %.pre98, %block_.L_402bb3 ]
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -36
  %1938 = add i64 %1935, 4
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, -9
  %1942 = icmp ult i32 %1940, 9
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %14, align 1
  %1944 = and i32 %1941, 255
  %1945 = tail call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  store i8 %1948, i8* %21, align 1
  %1949 = xor i32 %1941, %1940
  %1950 = lshr i32 %1949, 4
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  store i8 %1952, i8* %27, align 1
  %1953 = icmp eq i32 %1941, 0
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %30, align 1
  %1955 = lshr i32 %1941, 31
  %1956 = trunc i32 %1955 to i8
  store i8 %1956, i8* %33, align 1
  %1957 = lshr i32 %1940, 31
  %1958 = xor i32 %1955, %1957
  %1959 = add nuw nsw i32 %1958, %1957
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %39, align 1
  %1962 = icmp ne i8 %1956, 0
  %1963 = xor i1 %1962, %1960
  %.v233 = select i1 %1963, i64 10, i64 54
  %1964 = add i64 %1935, %.v233
  store i64 %1964, i64* %3, align 8
  br i1 %1963, label %block_402bc4, label %block_.L_402bf0

block_402bc4:                                     ; preds = %block_.L_402bba
  %1965 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1966 = add i64 %1965, 184
  store i64 %1966, i64* %RAX.i732, align 8
  %1967 = icmp ugt i64 %1965, -185
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = trunc i64 %1966 to i32
  %1970 = and i32 %1969, 255
  %1971 = tail call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  store i8 %1974, i8* %21, align 1
  %1975 = xor i64 %1965, 16
  %1976 = xor i64 %1975, %1966
  %1977 = lshr i64 %1976, 4
  %1978 = trunc i64 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %27, align 1
  %1980 = icmp eq i64 %1966, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %30, align 1
  %1982 = lshr i64 %1966, 63
  %1983 = trunc i64 %1982 to i8
  store i8 %1983, i8* %33, align 1
  %1984 = lshr i64 %1965, 63
  %1985 = xor i64 %1982, %1984
  %1986 = add nuw nsw i64 %1985, %1982
  %1987 = icmp eq i64 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %39, align 1
  %1989 = add i64 %1964, 18
  store i64 %1989, i64* %3, align 8
  %1990 = load i32, i32* %1939, align 4
  %1991 = sext i32 %1990 to i64
  %1992 = shl nsw i64 %1991, 9
  store i64 %1992, i64* %RCX.i163, align 8
  %1993 = add i64 %1992, %1966
  store i64 %1993, i64* %RAX.i732, align 8
  %1994 = icmp ult i64 %1993, %1966
  %1995 = icmp ult i64 %1993, %1992
  %1996 = or i1 %1994, %1995
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %14, align 1
  %1998 = trunc i64 %1993 to i32
  %1999 = and i32 %1998, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %21, align 1
  %2004 = xor i64 %1966, %1993
  %2005 = lshr i64 %2004, 4
  %2006 = trunc i64 %2005 to i8
  %2007 = and i8 %2006, 1
  store i8 %2007, i8* %27, align 1
  %2008 = icmp eq i64 %1993, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %30, align 1
  %2010 = lshr i64 %1993, 63
  %2011 = trunc i64 %2010 to i8
  store i8 %2011, i8* %33, align 1
  %2012 = lshr i64 %1991, 54
  %2013 = and i64 %2012, 1
  %2014 = xor i64 %2010, %1982
  %2015 = xor i64 %2010, %2013
  %2016 = add nuw nsw i64 %2014, %2015
  %2017 = icmp eq i64 %2016, 2
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %39, align 1
  %2019 = inttoptr i64 %1993 to i16*
  %2020 = add i64 %1964, 30
  store i64 %2020, i64* %3, align 8
  store i16 -1, i16* %2019, align 2
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -36
  %2023 = load i64, i64* %3, align 8
  %2024 = add i64 %2023, 3
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2022 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = add i32 %2026, 1
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RAX.i732, align 8
  %2029 = icmp eq i32 %2026, -1
  %2030 = icmp eq i32 %2027, 0
  %2031 = or i1 %2029, %2030
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %14, align 1
  %2033 = and i32 %2027, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %21, align 1
  %2038 = xor i32 %2027, %2026
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %27, align 1
  %2042 = zext i1 %2030 to i8
  store i8 %2042, i8* %30, align 1
  %2043 = lshr i32 %2027, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %33, align 1
  %2045 = lshr i32 %2026, 31
  %2046 = xor i32 %2043, %2045
  %2047 = add nuw nsw i32 %2046, %2043
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %39, align 1
  %2050 = add i64 %2023, 9
  store i64 %2050, i64* %3, align 8
  store i32 %2027, i32* %2025, align 4
  %2051 = load i64, i64* %3, align 8
  %2052 = add i64 %2051, -49
  store i64 %2052, i64* %3, align 8
  br label %block_.L_402bba

block_.L_402bf0:                                  ; preds = %block_.L_402bba
  %2053 = add i64 %1936, -44
  %2054 = add i64 %1964, 7
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  store i32 0, i32* %2055, align 4
  %2056 = load i64, i64* %RBP.i, align 8
  %2057 = add i64 %2056, -300
  %2058 = load i64, i64* %3, align 8
  %2059 = add i64 %2058, 7
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2057 to i32*
  %2061 = load i32, i32* %2060, align 4
  store i8 0, i8* %14, align 1
  %2062 = and i32 %2061, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2067 = icmp eq i32 %2061, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %30, align 1
  %2069 = lshr i32 %2061, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v234 = select i1 %2067, i64 83, i64 13
  %2071 = add i64 %2058, %.v234
  store i64 %2071, i64* %3, align 8
  br i1 %2067, label %block_.L_402c4a, label %block_402c04

block_402c04:                                     ; preds = %block_.L_402bf0
  %2072 = add i64 %2056, -304
  %2073 = add i64 %2071, 7
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  store i8 0, i8* %14, align 1
  %2076 = and i32 %2075, 255
  %2077 = tail call i32 @llvm.ctpop.i32(i32 %2076)
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = xor i8 %2079, 1
  store i8 %2080, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2081 = icmp eq i32 %2075, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %30, align 1
  %2083 = lshr i32 %2075, 31
  %2084 = trunc i32 %2083 to i8
  store i8 %2084, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v235 = select i1 %2081, i64 70, i64 13
  %2085 = add i64 %2071, %.v235
  store i64 %2085, i64* %3, align 8
  br i1 %2081, label %block_.L_402c4a, label %block_402c11

block_402c11:                                     ; preds = %block_402c04
  store i64 8, i64* %RAX.i732, align 8
  %2086 = add i64 %2056, -92
  %2087 = add i64 %2085, 8
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i32*
  %2089 = load i32, i32* %2088, align 4
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RCX.i163, align 8
  %2091 = add i64 %2056, -88
  %2092 = add i64 %2085, 11
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  %2094 = load i32, i32* %2093, align 4
  %2095 = add i32 %2094, %2089
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RCX.i163, align 8
  %2097 = icmp ult i32 %2095, %2089
  %2098 = icmp ult i32 %2095, %2094
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %14, align 1
  %2101 = and i32 %2095, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %21, align 1
  %2106 = xor i32 %2094, %2089
  %2107 = xor i32 %2106, %2095
  %2108 = lshr i32 %2107, 4
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %27, align 1
  %2111 = icmp eq i32 %2095, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %30, align 1
  %2113 = lshr i32 %2095, 31
  %2114 = trunc i32 %2113 to i8
  store i8 %2114, i8* %33, align 1
  %2115 = lshr i32 %2089, 31
  %2116 = lshr i32 %2094, 31
  %2117 = xor i32 %2113, %2115
  %2118 = xor i32 %2113, %2116
  %2119 = add nuw nsw i32 %2117, %2118
  %2120 = icmp eq i32 %2119, 2
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %39, align 1
  %2122 = add i64 %2056, -84
  %2123 = add i64 %2085, 14
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = add i32 %2125, %2095
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RCX.i163, align 8
  %2128 = icmp ult i32 %2126, %2095
  %2129 = icmp ult i32 %2126, %2125
  %2130 = or i1 %2128, %2129
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %14, align 1
  %2132 = and i32 %2126, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %21, align 1
  %2137 = xor i32 %2125, %2095
  %2138 = xor i32 %2137, %2126
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  store i8 %2141, i8* %27, align 1
  %2142 = icmp eq i32 %2126, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %30, align 1
  %2144 = lshr i32 %2126, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %33, align 1
  %2146 = lshr i32 %2125, 31
  %2147 = xor i32 %2144, %2113
  %2148 = xor i32 %2144, %2146
  %2149 = add nuw nsw i32 %2147, %2148
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %39, align 1
  %2152 = add i64 %2056, -80
  %2153 = add i64 %2085, 17
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  %2156 = add i32 %2155, %2126
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RCX.i163, align 8
  %2158 = icmp ult i32 %2156, %2126
  %2159 = icmp ult i32 %2156, %2155
  %2160 = or i1 %2158, %2159
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %14, align 1
  %2162 = and i32 %2156, 255
  %2163 = tail call i32 @llvm.ctpop.i32(i32 %2162)
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  %2166 = xor i8 %2165, 1
  store i8 %2166, i8* %21, align 1
  %2167 = xor i32 %2155, %2126
  %2168 = xor i32 %2167, %2156
  %2169 = lshr i32 %2168, 4
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  store i8 %2171, i8* %27, align 1
  %2172 = icmp eq i32 %2156, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %30, align 1
  %2174 = lshr i32 %2156, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %33, align 1
  %2176 = lshr i32 %2155, 31
  %2177 = xor i32 %2174, %2144
  %2178 = xor i32 %2174, %2176
  %2179 = add nuw nsw i32 %2177, %2178
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %39, align 1
  %2182 = load i64, i64* %RBP.i, align 8
  %2183 = add i64 %2182, -60
  %2184 = add i64 %2085, 20
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = add i32 %2186, %2156
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RCX.i163, align 8
  %2189 = icmp ult i32 %2187, %2156
  %2190 = icmp ult i32 %2187, %2186
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %14, align 1
  %2193 = and i32 %2187, 255
  %2194 = tail call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  store i8 %2197, i8* %21, align 1
  %2198 = xor i32 %2186, %2156
  %2199 = xor i32 %2198, %2187
  %2200 = lshr i32 %2199, 4
  %2201 = trunc i32 %2200 to i8
  %2202 = and i8 %2201, 1
  store i8 %2202, i8* %27, align 1
  %2203 = icmp eq i32 %2187, 0
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %30, align 1
  %2205 = lshr i32 %2187, 31
  %2206 = trunc i32 %2205 to i8
  store i8 %2206, i8* %33, align 1
  %2207 = lshr i32 %2186, 31
  %2208 = xor i32 %2205, %2174
  %2209 = xor i32 %2205, %2207
  %2210 = add nuw nsw i32 %2208, %2209
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %39, align 1
  %2213 = add i64 %2182, -56
  %2214 = add i64 %2085, 23
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = add i32 %2216, %2187
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RCX.i163, align 8
  %2219 = icmp ult i32 %2217, %2187
  %2220 = icmp ult i32 %2217, %2216
  %2221 = or i1 %2219, %2220
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %14, align 1
  %2223 = and i32 %2217, 255
  %2224 = tail call i32 @llvm.ctpop.i32(i32 %2223)
  %2225 = trunc i32 %2224 to i8
  %2226 = and i8 %2225, 1
  %2227 = xor i8 %2226, 1
  store i8 %2227, i8* %21, align 1
  %2228 = xor i32 %2216, %2187
  %2229 = xor i32 %2228, %2217
  %2230 = lshr i32 %2229, 4
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  store i8 %2232, i8* %27, align 1
  %2233 = icmp eq i32 %2217, 0
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %30, align 1
  %2235 = lshr i32 %2217, 31
  %2236 = trunc i32 %2235 to i8
  store i8 %2236, i8* %33, align 1
  %2237 = lshr i32 %2216, 31
  %2238 = xor i32 %2235, %2205
  %2239 = xor i32 %2235, %2237
  %2240 = add nuw nsw i32 %2238, %2239
  %2241 = icmp eq i32 %2240, 2
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %39, align 1
  %2243 = add i64 %2182, -52
  %2244 = add i64 %2085, 26
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = add i32 %2246, %2217
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i163, align 8
  %2249 = icmp ult i32 %2247, %2217
  %2250 = icmp ult i32 %2247, %2246
  %2251 = or i1 %2249, %2250
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %14, align 1
  %2253 = and i32 %2247, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %21, align 1
  %2258 = xor i32 %2246, %2217
  %2259 = xor i32 %2258, %2247
  %2260 = lshr i32 %2259, 4
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  store i8 %2262, i8* %27, align 1
  %2263 = icmp eq i32 %2247, 0
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %30, align 1
  %2265 = lshr i32 %2247, 31
  %2266 = trunc i32 %2265 to i8
  store i8 %2266, i8* %33, align 1
  %2267 = lshr i32 %2246, 31
  %2268 = xor i32 %2265, %2235
  %2269 = xor i32 %2265, %2267
  %2270 = add nuw nsw i32 %2268, %2269
  %2271 = icmp eq i32 %2270, 2
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %39, align 1
  %2273 = load i64, i64* %RBP.i, align 8
  %2274 = add i64 %2273, -48
  %2275 = add i64 %2085, 29
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = add i32 %2277, %2247
  %2279 = lshr i32 %2278, 31
  %2280 = add i32 %2278, 4
  %2281 = zext i32 %2280 to i64
  store i64 %2281, i64* %RCX.i163, align 8
  %2282 = icmp ugt i32 %2278, -5
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %14, align 1
  %2284 = and i32 %2280, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %21, align 1
  %2289 = xor i32 %2280, %2278
  %2290 = lshr i32 %2289, 4
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %27, align 1
  %2293 = icmp eq i32 %2280, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %30, align 1
  %2295 = lshr i32 %2280, 31
  %2296 = trunc i32 %2295 to i8
  store i8 %2296, i8* %33, align 1
  %2297 = xor i32 %2295, %2279
  %2298 = add nuw nsw i32 %2297, %2295
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %39, align 1
  %2301 = add i64 %2273, -344
  %2302 = load i32, i32* %EAX.i1314, align 4
  %2303 = add i64 %2085, 38
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2301 to i32*
  store i32 %2302, i32* %2304, align 4
  %2305 = load i32, i32* %ECX.i2686, align 4
  %2306 = zext i32 %2305 to i64
  %2307 = load i64, i64* %3, align 8
  store i64 %2306, i64* %RAX.i732, align 8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2309 = sext i32 %2305 to i64
  %2310 = lshr i64 %2309, 32
  store i64 %2310, i64* %2308, align 8
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -344
  %2313 = add i64 %2307, 9
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RCX.i163, align 8
  %2317 = add i64 %2307, 11
  store i64 %2317, i64* %3, align 8
  %2318 = sext i32 %2315 to i64
  %2319 = shl nuw i64 %2310, 32
  %2320 = or i64 %2319, %2306
  %2321 = sdiv i64 %2320, %2318
  %2322 = shl i64 %2321, 32
  %2323 = ashr exact i64 %2322, 32
  %2324 = icmp eq i64 %2321, %2323
  br i1 %2324, label %2327, label %2325

; <label>:2325:                                   ; preds = %block_402c11
  %2326 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2317, %struct.Memory* %call2_4026b9)
  %.pre99 = load i64, i64* %RBP.i, align 8
  %.pre100 = load i32, i32* %EAX.i1314, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1976

; <label>:2327:                                   ; preds = %block_402c11
  %2328 = srem i64 %2320, %2318
  %2329 = and i64 %2321, 4294967295
  store i64 %2329, i64* %RAX.i732, align 8
  %2330 = and i64 %2328, 4294967295
  store i64 %2330, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2331 = trunc i64 %2321 to i32
  br label %routine_idivl__ecx.exit1976

routine_idivl__ecx.exit1976:                      ; preds = %2327, %2325
  %2332 = phi i64 [ %.pre101, %2325 ], [ %2317, %2327 ]
  %2333 = phi i32 [ %.pre100, %2325 ], [ %2331, %2327 ]
  %2334 = phi i64 [ %.pre99, %2325 ], [ %2311, %2327 ]
  %2335 = phi %struct.Memory* [ %2326, %2325 ], [ %call2_4026b9, %2327 ]
  %2336 = add i64 %2334, -44
  %2337 = add i64 %2332, 3
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  store i32 %2333, i32* %2338, align 4
  %2339 = load i64, i64* %3, align 8
  %2340 = add i64 %2339, 174
  br label %block_.L_402cf3

block_.L_402c4a:                                  ; preds = %block_402c04, %block_.L_402bf0
  %2341 = phi i64 [ %2085, %block_402c04 ], [ %2071, %block_.L_402bf0 ]
  %2342 = add i64 %2341, 7
  store i64 %2342, i64* %3, align 8
  %2343 = load i32, i32* %2060, align 4
  store i8 0, i8* %14, align 1
  %2344 = and i32 %2343, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2349 = icmp eq i32 %2343, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %30, align 1
  %2351 = lshr i32 %2343, 31
  %2352 = trunc i32 %2351 to i8
  store i8 %2352, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v244 = select i1 %2349, i64 13, i64 71
  %2353 = add i64 %2341, %.v244
  store i64 %2353, i64* %3, align 8
  br i1 %2349, label %block_402c57, label %block_.L_402c91

block_402c57:                                     ; preds = %block_.L_402c4a
  %2354 = add i64 %2056, -304
  %2355 = add i64 %2353, 7
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  store i8 0, i8* %14, align 1
  %2358 = and i32 %2357, 255
  %2359 = tail call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  store i8 %2362, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2363 = icmp eq i32 %2357, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %30, align 1
  %2365 = lshr i32 %2357, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v247 = select i1 %2363, i64 58, i64 13
  %2367 = add i64 %2353, %.v247
  store i64 %2367, i64* %3, align 8
  br i1 %2363, label %block_.L_402c91, label %block_402c64

block_402c64:                                     ; preds = %block_402c57
  store i64 4, i64* %RAX.i732, align 8
  %2368 = add i64 %2056, -60
  %2369 = add i64 %2367, 8
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RCX.i163, align 8
  %2373 = add i64 %2056, -56
  %2374 = add i64 %2367, 11
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, %2371
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RCX.i163, align 8
  %2379 = icmp ult i32 %2377, %2371
  %2380 = icmp ult i32 %2377, %2376
  %2381 = or i1 %2379, %2380
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %14, align 1
  %2383 = and i32 %2377, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %21, align 1
  %2388 = xor i32 %2376, %2371
  %2389 = xor i32 %2388, %2377
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %27, align 1
  %2393 = icmp eq i32 %2377, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %30, align 1
  %2395 = lshr i32 %2377, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %33, align 1
  %2397 = lshr i32 %2371, 31
  %2398 = lshr i32 %2376, 31
  %2399 = xor i32 %2395, %2397
  %2400 = xor i32 %2395, %2398
  %2401 = add nuw nsw i32 %2399, %2400
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %39, align 1
  %2404 = add i64 %2056, -52
  %2405 = add i64 %2367, 14
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = add i32 %2407, %2377
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RCX.i163, align 8
  %2410 = icmp ult i32 %2408, %2377
  %2411 = icmp ult i32 %2408, %2407
  %2412 = or i1 %2410, %2411
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %14, align 1
  %2414 = and i32 %2408, 255
  %2415 = tail call i32 @llvm.ctpop.i32(i32 %2414)
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  %2418 = xor i8 %2417, 1
  store i8 %2418, i8* %21, align 1
  %2419 = xor i32 %2407, %2377
  %2420 = xor i32 %2419, %2408
  %2421 = lshr i32 %2420, 4
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  store i8 %2423, i8* %27, align 1
  %2424 = icmp eq i32 %2408, 0
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %30, align 1
  %2426 = lshr i32 %2408, 31
  %2427 = trunc i32 %2426 to i8
  store i8 %2427, i8* %33, align 1
  %2428 = lshr i32 %2407, 31
  %2429 = xor i32 %2426, %2395
  %2430 = xor i32 %2426, %2428
  %2431 = add nuw nsw i32 %2429, %2430
  %2432 = icmp eq i32 %2431, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %39, align 1
  %2434 = add i64 %2056, -48
  %2435 = add i64 %2367, 17
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  %2437 = load i32, i32* %2436, align 4
  %2438 = add i32 %2437, %2408
  %2439 = lshr i32 %2438, 31
  %2440 = add i32 %2438, 2
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RCX.i163, align 8
  %2442 = icmp ugt i32 %2438, -3
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %14, align 1
  %2444 = and i32 %2440, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %21, align 1
  %2449 = xor i32 %2440, %2438
  %2450 = lshr i32 %2449, 4
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %27, align 1
  %2453 = icmp eq i32 %2440, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %30, align 1
  %2455 = lshr i32 %2440, 31
  %2456 = trunc i32 %2455 to i8
  store i8 %2456, i8* %33, align 1
  %2457 = xor i32 %2455, %2439
  %2458 = add nuw nsw i32 %2457, %2455
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %39, align 1
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -348
  %2463 = load i32, i32* %EAX.i1314, align 4
  %2464 = add i64 %2367, 26
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2462 to i32*
  store i32 %2463, i32* %2465, align 4
  %2466 = load i32, i32* %ECX.i2686, align 4
  %2467 = zext i32 %2466 to i64
  %2468 = load i64, i64* %3, align 8
  store i64 %2467, i64* %RAX.i732, align 8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2470 = sext i32 %2466 to i64
  %2471 = lshr i64 %2470, 32
  store i64 %2471, i64* %2469, align 8
  %2472 = load i64, i64* %RBP.i, align 8
  %2473 = add i64 %2472, -348
  %2474 = add i64 %2468, 9
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RCX.i163, align 8
  %2478 = add i64 %2468, 11
  store i64 %2478, i64* %3, align 8
  %2479 = sext i32 %2476 to i64
  %2480 = shl nuw i64 %2471, 32
  %2481 = or i64 %2480, %2467
  %2482 = sdiv i64 %2481, %2479
  %2483 = shl i64 %2482, 32
  %2484 = ashr exact i64 %2483, 32
  %2485 = icmp eq i64 %2482, %2484
  br i1 %2485, label %2488, label %2486

; <label>:2486:                                   ; preds = %block_402c64
  %2487 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2478, %struct.Memory* %call2_4026b9)
  %.pre102 = load i64, i64* %RBP.i, align 8
  %.pre103 = load i32, i32* %EAX.i1314, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1934

; <label>:2488:                                   ; preds = %block_402c64
  %2489 = srem i64 %2481, %2479
  %2490 = and i64 %2482, 4294967295
  store i64 %2490, i64* %RAX.i732, align 8
  %2491 = and i64 %2489, 4294967295
  store i64 %2491, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2492 = trunc i64 %2482 to i32
  br label %routine_idivl__ecx.exit1934

routine_idivl__ecx.exit1934:                      ; preds = %2488, %2486
  %2493 = phi i64 [ %.pre104, %2486 ], [ %2478, %2488 ]
  %2494 = phi i32 [ %.pre103, %2486 ], [ %2492, %2488 ]
  %2495 = phi i64 [ %.pre102, %2486 ], [ %2472, %2488 ]
  %2496 = phi %struct.Memory* [ %2487, %2486 ], [ %call2_4026b9, %2488 ]
  %2497 = add i64 %2495, -44
  %2498 = add i64 %2493, 3
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  store i32 %2494, i32* %2499, align 4
  %2500 = load i64, i64* %3, align 8
  %2501 = add i64 %2500, 98
  br label %block_.L_402cee

block_.L_402c91:                                  ; preds = %block_.L_402c4a, %block_402c57
  %2502 = phi i64 [ %2367, %block_402c57 ], [ %2353, %block_.L_402c4a ]
  %2503 = add i64 %2502, 7
  store i64 %2503, i64* %3, align 8
  %2504 = load i32, i32* %2060, align 4
  store i8 0, i8* %14, align 1
  %2505 = and i32 %2504, 255
  %2506 = tail call i32 @llvm.ctpop.i32(i32 %2505)
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = xor i8 %2508, 1
  store i8 %2509, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2510 = icmp eq i32 %2504, 0
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %30, align 1
  %2512 = lshr i32 %2504, 31
  %2513 = trunc i32 %2512 to i8
  store i8 %2513, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v245 = select i1 %2510, i64 71, i64 13
  %2514 = add i64 %2502, %.v245
  store i64 %2514, i64* %3, align 8
  br i1 %2510, label %block_.L_402cd8, label %block_402c9e

block_402c9e:                                     ; preds = %block_.L_402c91
  %2515 = add i64 %2056, -304
  %2516 = add i64 %2514, 7
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  store i8 0, i8* %14, align 1
  %2519 = and i32 %2518, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2524 = icmp eq i32 %2518, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %30, align 1
  %2526 = lshr i32 %2518, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v246 = select i1 %2524, i64 13, i64 58
  %2528 = add i64 %2514, %.v246
  store i64 %2528, i64* %3, align 8
  br i1 %2524, label %block_402cab, label %block_.L_402cd8

block_402cab:                                     ; preds = %block_402c9e
  store i64 4, i64* %RAX.i732, align 8
  %2529 = add i64 %2056, -92
  %2530 = add i64 %2528, 8
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RCX.i163, align 8
  %2534 = add i64 %2056, -88
  %2535 = add i64 %2528, 11
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = add i32 %2537, %2532
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RCX.i163, align 8
  %2540 = icmp ult i32 %2538, %2532
  %2541 = icmp ult i32 %2538, %2537
  %2542 = or i1 %2540, %2541
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %14, align 1
  %2544 = and i32 %2538, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %21, align 1
  %2549 = xor i32 %2537, %2532
  %2550 = xor i32 %2549, %2538
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  store i8 %2553, i8* %27, align 1
  %2554 = icmp eq i32 %2538, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %30, align 1
  %2556 = lshr i32 %2538, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %33, align 1
  %2558 = lshr i32 %2532, 31
  %2559 = lshr i32 %2537, 31
  %2560 = xor i32 %2556, %2558
  %2561 = xor i32 %2556, %2559
  %2562 = add nuw nsw i32 %2560, %2561
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %39, align 1
  %2565 = add i64 %2056, -84
  %2566 = add i64 %2528, 14
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = add i32 %2568, %2538
  %2570 = zext i32 %2569 to i64
  store i64 %2570, i64* %RCX.i163, align 8
  %2571 = icmp ult i32 %2569, %2538
  %2572 = icmp ult i32 %2569, %2568
  %2573 = or i1 %2571, %2572
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %14, align 1
  %2575 = and i32 %2569, 255
  %2576 = tail call i32 @llvm.ctpop.i32(i32 %2575)
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  %2579 = xor i8 %2578, 1
  store i8 %2579, i8* %21, align 1
  %2580 = xor i32 %2568, %2538
  %2581 = xor i32 %2580, %2569
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  store i8 %2584, i8* %27, align 1
  %2585 = icmp eq i32 %2569, 0
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %30, align 1
  %2587 = lshr i32 %2569, 31
  %2588 = trunc i32 %2587 to i8
  store i8 %2588, i8* %33, align 1
  %2589 = lshr i32 %2568, 31
  %2590 = xor i32 %2587, %2556
  %2591 = xor i32 %2587, %2589
  %2592 = add nuw nsw i32 %2590, %2591
  %2593 = icmp eq i32 %2592, 2
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %39, align 1
  %2595 = add i64 %2056, -80
  %2596 = add i64 %2528, 17
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i32*
  %2598 = load i32, i32* %2597, align 4
  %2599 = add i32 %2598, %2569
  %2600 = lshr i32 %2599, 31
  %2601 = add i32 %2599, 2
  %2602 = zext i32 %2601 to i64
  store i64 %2602, i64* %RCX.i163, align 8
  %2603 = icmp ugt i32 %2599, -3
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %14, align 1
  %2605 = and i32 %2601, 255
  %2606 = tail call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  store i8 %2609, i8* %21, align 1
  %2610 = xor i32 %2601, %2599
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %27, align 1
  %2614 = icmp eq i32 %2601, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %30, align 1
  %2616 = lshr i32 %2601, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %33, align 1
  %2618 = xor i32 %2616, %2600
  %2619 = add nuw nsw i32 %2618, %2616
  %2620 = icmp eq i32 %2619, 2
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %39, align 1
  %2622 = load i64, i64* %RBP.i, align 8
  %2623 = add i64 %2622, -352
  %2624 = load i32, i32* %EAX.i1314, align 4
  %2625 = add i64 %2528, 26
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2623 to i32*
  store i32 %2624, i32* %2626, align 4
  %2627 = load i32, i32* %ECX.i2686, align 4
  %2628 = zext i32 %2627 to i64
  %2629 = load i64, i64* %3, align 8
  store i64 %2628, i64* %RAX.i732, align 8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2631 = sext i32 %2627 to i64
  %2632 = lshr i64 %2631, 32
  store i64 %2632, i64* %2630, align 8
  %2633 = load i64, i64* %RBP.i, align 8
  %2634 = add i64 %2633, -352
  %2635 = add i64 %2629, 9
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RCX.i163, align 8
  %2639 = add i64 %2629, 11
  store i64 %2639, i64* %3, align 8
  %2640 = sext i32 %2637 to i64
  %2641 = shl nuw i64 %2632, 32
  %2642 = or i64 %2641, %2628
  %2643 = sdiv i64 %2642, %2640
  %2644 = shl i64 %2643, 32
  %2645 = ashr exact i64 %2644, 32
  %2646 = icmp eq i64 %2643, %2645
  br i1 %2646, label %2649, label %2647

; <label>:2647:                                   ; preds = %block_402cab
  %2648 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2639, %struct.Memory* %call2_4026b9)
  %.pre105 = load i64, i64* %RBP.i, align 8
  %.pre106 = load i32, i32* %EAX.i1314, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1892

; <label>:2649:                                   ; preds = %block_402cab
  %2650 = srem i64 %2642, %2640
  %2651 = and i64 %2643, 4294967295
  store i64 %2651, i64* %RAX.i732, align 8
  %2652 = and i64 %2650, 4294967295
  store i64 %2652, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2653 = trunc i64 %2643 to i32
  br label %routine_idivl__ecx.exit1892

routine_idivl__ecx.exit1892:                      ; preds = %2649, %2647
  %2654 = phi i64 [ %.pre107, %2647 ], [ %2639, %2649 ]
  %2655 = phi i32 [ %.pre106, %2647 ], [ %2653, %2649 ]
  %2656 = phi i64 [ %.pre105, %2647 ], [ %2633, %2649 ]
  %2657 = phi %struct.Memory* [ %2648, %2647 ], [ %call2_4026b9, %2649 ]
  %2658 = add i64 %2656, -44
  %2659 = add i64 %2654, 3
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  store i32 %2655, i32* %2660, align 4
  %2661 = load i64, i64* %3, align 8
  %2662 = add i64 %2661, 22
  store i64 %2662, i64* %3, align 8
  br label %block_.L_402ce9

block_.L_402cd8:                                  ; preds = %block_402c9e, %block_.L_402c91
  %2663 = phi i64 [ %2528, %block_402c9e ], [ %2514, %block_.L_402c91 ]
  %2664 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2664, i64* %RAX.i732, align 8
  %2665 = add i64 %2664, 72680
  %2666 = add i64 %2663, 14
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  %2668 = load i32, i32* %2667, align 4
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RCX.i163, align 8
  %2670 = add i64 %2056, -44
  %2671 = add i64 %2663, 17
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  store i32 %2668, i32* %2672, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_402ce9

block_.L_402ce9:                                  ; preds = %block_.L_402cd8, %routine_idivl__ecx.exit1892
  %2673 = phi i64 [ %.pre108, %block_.L_402cd8 ], [ %2662, %routine_idivl__ecx.exit1892 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_4026b9, %block_.L_402cd8 ], [ %2657, %routine_idivl__ecx.exit1892 ]
  %2674 = add i64 %2673, 5
  store i64 %2674, i64* %3, align 8
  br label %block_.L_402cee

block_.L_402cee:                                  ; preds = %block_.L_402ce9, %routine_idivl__ecx.exit1934
  %storemerge76 = phi i64 [ %2501, %routine_idivl__ecx.exit1934 ], [ %2674, %block_.L_402ce9 ]
  %MEMORY.21 = phi %struct.Memory* [ %2496, %routine_idivl__ecx.exit1934 ], [ %MEMORY.20, %block_.L_402ce9 ]
  %2675 = add i64 %storemerge76, 5
  store i64 %2675, i64* %3, align 8
  br label %block_.L_402cf3

block_.L_402cf3:                                  ; preds = %block_.L_402cee, %routine_idivl__ecx.exit1976
  %storemerge37 = phi i64 [ %2340, %routine_idivl__ecx.exit1976 ], [ %2675, %block_.L_402cee ]
  %MEMORY.22 = phi %struct.Memory* [ %2335, %routine_idivl__ecx.exit1976 ], [ %MEMORY.21, %block_.L_402cee ]
  %2676 = load i64, i64* %RBP.i, align 8
  %2677 = add i64 %2676, -40
  %2678 = add i64 %storemerge37, 7
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  store i32 0, i32* %2679, align 4
  %AX.i1861 = bitcast %union.anon* %133 to i16*
  %CX.i1862 = bitcast %union.anon* %59 to i16*
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_402cfa

block_.L_402cfa:                                  ; preds = %block_.L_402d52, %block_.L_402cf3
  %2680 = phi i64 [ %2875, %block_.L_402d52 ], [ %.pre109, %block_.L_402cf3 ]
  %2681 = load i64, i64* %RBP.i, align 8
  %2682 = add i64 %2681, -40
  %2683 = add i64 %2680, 4
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = add i32 %2685, -4
  %2687 = icmp ult i32 %2685, 4
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %14, align 1
  %2689 = and i32 %2686, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %21, align 1
  %2694 = xor i32 %2686, %2685
  %2695 = lshr i32 %2694, 4
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  store i8 %2697, i8* %27, align 1
  %2698 = icmp eq i32 %2686, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %30, align 1
  %2700 = lshr i32 %2686, 31
  %2701 = trunc i32 %2700 to i8
  store i8 %2701, i8* %33, align 1
  %2702 = lshr i32 %2685, 31
  %2703 = xor i32 %2700, %2702
  %2704 = add nuw nsw i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %39, align 1
  %2707 = icmp ne i8 %2701, 0
  %2708 = xor i1 %2707, %2705
  %.v = select i1 %2708, i64 10, i64 107
  %2709 = add i64 %2680, %.v
  %2710 = add i64 %2681, -36
  %2711 = add i64 %2709, 7
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  store i32 0, i32* %2712, align 4
  br i1 %2708, label %block_.L_402d0b.preheader, label %block_.L_402d6c.preheader

block_.L_402d0b.preheader:                        ; preds = %block_.L_402cfa
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_402d0b

block_.L_402d6c.preheader:                        ; preds = %block_.L_402cfa
  %DX.i1807 = bitcast %union.anon* %52 to i16*
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_402d6c

block_.L_402d0b:                                  ; preds = %block_.L_402d0b.preheader, %block_402d15
  %2713 = phi i64 [ %.pre220, %block_.L_402d0b.preheader ], [ %2845, %block_402d15 ]
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -36
  %2716 = add i64 %2713, 4
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = add i32 %2718, -4
  %2720 = icmp ult i32 %2718, 4
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %14, align 1
  %2722 = and i32 %2719, 255
  %2723 = tail call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  store i8 %2726, i8* %21, align 1
  %2727 = xor i32 %2719, %2718
  %2728 = lshr i32 %2727, 4
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  store i8 %2730, i8* %27, align 1
  %2731 = icmp eq i32 %2719, 0
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %30, align 1
  %2733 = lshr i32 %2719, 31
  %2734 = trunc i32 %2733 to i8
  store i8 %2734, i8* %33, align 1
  %2735 = lshr i32 %2718, 31
  %2736 = xor i32 %2733, %2735
  %2737 = add nuw nsw i32 %2736, %2735
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %39, align 1
  %2740 = icmp ne i8 %2734, 0
  %2741 = xor i1 %2740, %2738
  %.v221 = select i1 %2741, i64 10, i64 71
  %2742 = add i64 %2713, %.v221
  store i64 %2742, i64* %3, align 8
  br i1 %2741, label %block_402d15, label %block_.L_402d52

block_402d15:                                     ; preds = %block_.L_402d0b
  %2743 = add i64 %2714, -44
  %2744 = add i64 %2742, 3
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RAX.i732, align 8
  %2748 = trunc i32 %2746 to i16
  store i16 %2748, i16* %CX.i1862, align 2
  %2749 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2750 = add i64 %2749, 184
  %2751 = lshr i64 %2750, 63
  %2752 = add i64 %2749, 1208
  store i64 %2752, i64* %RDX.i, align 8
  %2753 = icmp ugt i64 %2750, -1025
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %14, align 1
  %2755 = trunc i64 %2752 to i32
  %2756 = and i32 %2755, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %21, align 1
  %2761 = xor i64 %2752, %2750
  %2762 = lshr i64 %2761, 4
  %2763 = trunc i64 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %27, align 1
  %2765 = icmp eq i64 %2752, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %30, align 1
  %2767 = lshr i64 %2752, 63
  %2768 = trunc i64 %2767 to i8
  store i8 %2768, i8* %33, align 1
  %2769 = xor i64 %2767, %2751
  %2770 = add nuw nsw i64 %2769, %2767
  %2771 = icmp eq i64 %2770, 2
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %39, align 1
  %2773 = add i64 %2742, 32
  store i64 %2773, i64* %3, align 8
  %2774 = load i32, i32* %2717, align 4
  %2775 = sext i32 %2774 to i64
  %2776 = shl nsw i64 %2775, 5
  store i64 %2776, i64* %RSI.i, align 8
  %2777 = add i64 %2776, %2752
  store i64 %2777, i64* %RDX.i, align 8
  %2778 = icmp ult i64 %2777, %2752
  %2779 = icmp ult i64 %2777, %2776
  %2780 = or i1 %2778, %2779
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %14, align 1
  %2782 = trunc i64 %2777 to i32
  %2783 = and i32 %2782, 255
  %2784 = tail call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  store i8 %2787, i8* %21, align 1
  %2788 = xor i64 %2752, %2777
  %2789 = lshr i64 %2788, 4
  %2790 = trunc i64 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %27, align 1
  %2792 = icmp eq i64 %2777, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %30, align 1
  %2794 = lshr i64 %2777, 63
  %2795 = trunc i64 %2794 to i8
  store i8 %2795, i8* %33, align 1
  %2796 = lshr i64 %2775, 58
  %2797 = and i64 %2796, 1
  %2798 = xor i64 %2794, %2767
  %2799 = xor i64 %2794, %2797
  %2800 = add nuw nsw i64 %2798, %2799
  %2801 = icmp eq i64 %2800, 2
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %39, align 1
  %2803 = load i64, i64* %RBP.i, align 8
  %2804 = add i64 %2803, -40
  %2805 = add i64 %2742, 43
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = sext i32 %2807 to i64
  store i64 %2808, i64* %RSI.i, align 8
  %2809 = shl nsw i64 %2808, 1
  %2810 = add i64 %2809, %2777
  %2811 = load i16, i16* %CX.i1862, align 2
  %2812 = add i64 %2742, 47
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2810 to i16*
  store i16 %2811, i16* %2813, align 2
  %2814 = load i64, i64* %RBP.i, align 8
  %2815 = add i64 %2814, -36
  %2816 = load i64, i64* %3, align 8
  %2817 = add i64 %2816, 3
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2815 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = add i32 %2819, 1
  %2821 = zext i32 %2820 to i64
  store i64 %2821, i64* %RAX.i732, align 8
  %2822 = icmp eq i32 %2819, -1
  %2823 = icmp eq i32 %2820, 0
  %2824 = or i1 %2822, %2823
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %14, align 1
  %2826 = and i32 %2820, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %21, align 1
  %2831 = xor i32 %2820, %2819
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %27, align 1
  %2835 = zext i1 %2823 to i8
  store i8 %2835, i8* %30, align 1
  %2836 = lshr i32 %2820, 31
  %2837 = trunc i32 %2836 to i8
  store i8 %2837, i8* %33, align 1
  %2838 = lshr i32 %2819, 31
  %2839 = xor i32 %2836, %2838
  %2840 = add nuw nsw i32 %2839, %2836
  %2841 = icmp eq i32 %2840, 2
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %39, align 1
  %2843 = add i64 %2816, 9
  store i64 %2843, i64* %3, align 8
  store i32 %2820, i32* %2818, align 4
  %2844 = load i64, i64* %3, align 8
  %2845 = add i64 %2844, -66
  store i64 %2845, i64* %3, align 8
  br label %block_.L_402d0b

block_.L_402d52:                                  ; preds = %block_.L_402d0b
  %2846 = add i64 %2714, -40
  %2847 = add i64 %2742, 8
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = add i32 %2849, 1
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i732, align 8
  %2852 = icmp eq i32 %2849, -1
  %2853 = icmp eq i32 %2850, 0
  %2854 = or i1 %2852, %2853
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %14, align 1
  %2856 = and i32 %2850, 255
  %2857 = tail call i32 @llvm.ctpop.i32(i32 %2856)
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = xor i8 %2859, 1
  store i8 %2860, i8* %21, align 1
  %2861 = xor i32 %2850, %2849
  %2862 = lshr i32 %2861, 4
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  store i8 %2864, i8* %27, align 1
  %2865 = zext i1 %2853 to i8
  store i8 %2865, i8* %30, align 1
  %2866 = lshr i32 %2850, 31
  %2867 = trunc i32 %2866 to i8
  store i8 %2867, i8* %33, align 1
  %2868 = lshr i32 %2849, 31
  %2869 = xor i32 %2866, %2868
  %2870 = add nuw nsw i32 %2869, %2866
  %2871 = icmp eq i32 %2870, 2
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %39, align 1
  %2873 = add i64 %2742, 14
  store i64 %2873, i64* %3, align 8
  store i32 %2850, i32* %2848, align 4
  %2874 = load i64, i64* %3, align 8
  %2875 = add i64 %2874, -102
  store i64 %2875, i64* %3, align 8
  br label %block_.L_402cfa

block_.L_402d6c:                                  ; preds = %block_.L_402d6c.preheader, %block_402d76
  %2876 = phi i64 [ %.pre110, %block_.L_402d6c.preheader ], [ %3182, %block_402d76 ]
  %2877 = load i64, i64* %RBP.i, align 8
  %2878 = add i64 %2877, -36
  %2879 = add i64 %2876, 4
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = add i32 %2881, -4
  %2883 = icmp ult i32 %2881, 4
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %14, align 1
  %2885 = and i32 %2882, 255
  %2886 = tail call i32 @llvm.ctpop.i32(i32 %2885)
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  store i8 %2889, i8* %21, align 1
  %2890 = xor i32 %2882, %2881
  %2891 = lshr i32 %2890, 4
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  store i8 %2893, i8* %27, align 1
  %2894 = icmp eq i32 %2882, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %30, align 1
  %2896 = lshr i32 %2882, 31
  %2897 = trunc i32 %2896 to i8
  store i8 %2897, i8* %33, align 1
  %2898 = lshr i32 %2881, 31
  %2899 = xor i32 %2896, %2898
  %2900 = add nuw nsw i32 %2899, %2898
  %2901 = icmp eq i32 %2900, 2
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %39, align 1
  %2903 = icmp ne i8 %2897, 0
  %2904 = xor i1 %2903, %2901
  %.v236 = select i1 %2904, i64 10, i64 265
  %2905 = add i64 %2876, %.v236
  store i64 %2905, i64* %3, align 8
  br i1 %2904, label %block_402d76, label %block_.L_402e75

block_402d76:                                     ; preds = %block_.L_402d6c
  %2906 = add i64 %2905, 4
  store i64 %2906, i64* %3, align 8
  %2907 = load i32, i32* %2880, align 4
  %2908 = sext i32 %2907 to i64
  store i64 %2908, i64* %RAX.i732, align 8
  %2909 = shl nsw i64 %2908, 2
  %2910 = add i64 %2877, -92
  %2911 = add i64 %2910, %2909
  %2912 = add i64 %2905, 8
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i32*
  %2914 = load i32, i32* %2913, align 4
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RCX.i163, align 8
  %2916 = trunc i32 %2914 to i16
  store i16 %2916, i16* %DX.i1807, align 2
  %2917 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2917, i64* %RAX.i732, align 8
  %2918 = add i64 %2905, 23
  store i64 %2918, i64* %3, align 8
  %2919 = load i32, i32* %2880, align 4
  %2920 = sext i32 %2919 to i64
  store i64 %2920, i64* %RSI.i, align 8
  %2921 = shl nsw i64 %2920, 1
  %2922 = add i64 %2917, 280
  %2923 = add i64 %2922, %2921
  %2924 = add i64 %2905, 31
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i16*
  store i16 %2916, i16* %2925, align 2
  %2926 = load i64, i64* %3, align 8
  %2927 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2927, i64* %RAX.i732, align 8
  %2928 = load i64, i64* %RBP.i, align 8
  %2929 = add i64 %2928, -36
  %2930 = add i64 %2926, 12
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i32*
  %2932 = load i32, i32* %2931, align 4
  %2933 = sext i32 %2932 to i64
  store i64 %2933, i64* %RSI.i, align 8
  %2934 = shl nsw i64 %2933, 1
  %2935 = add i64 %2927, 248
  %2936 = add i64 %2935, %2934
  %2937 = load i16, i16* %DX.i1807, align 2
  %2938 = add i64 %2926, 20
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2936 to i16*
  store i16 %2937, i16* %2939, align 2
  %2940 = load i64, i64* %3, align 8
  %2941 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2941, i64* %RAX.i732, align 8
  %2942 = load i64, i64* %RBP.i, align 8
  %2943 = add i64 %2942, -36
  %2944 = add i64 %2940, 12
  store i64 %2944, i64* %3, align 8
  %2945 = inttoptr i64 %2943 to i32*
  %2946 = load i32, i32* %2945, align 4
  %2947 = sext i32 %2946 to i64
  store i64 %2947, i64* %RSI.i, align 8
  %2948 = shl nsw i64 %2947, 1
  %2949 = add i64 %2941, 216
  %2950 = add i64 %2949, %2948
  %2951 = load i16, i16* %DX.i1807, align 2
  %2952 = add i64 %2940, 20
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2950 to i16*
  store i16 %2951, i16* %2953, align 2
  %2954 = load i64, i64* %3, align 8
  %2955 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2955, i64* %RAX.i732, align 8
  %2956 = load i64, i64* %RBP.i, align 8
  %2957 = add i64 %2956, -36
  %2958 = add i64 %2954, 12
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = sext i32 %2960 to i64
  store i64 %2961, i64* %RSI.i, align 8
  %2962 = shl nsw i64 %2961, 1
  %2963 = add i64 %2955, 184
  %2964 = add i64 %2963, %2962
  %2965 = load i16, i16* %DX.i1807, align 2
  %2966 = add i64 %2954, 20
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2964 to i16*
  store i16 %2965, i16* %2967, align 2
  %2968 = load i64, i64* %RBP.i, align 8
  %2969 = add i64 %2968, -36
  %2970 = load i64, i64* %3, align 8
  %2971 = add i64 %2970, 4
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2969 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = sext i32 %2973 to i64
  store i64 %2974, i64* %RAX.i732, align 8
  %2975 = shl nsw i64 %2974, 2
  %2976 = add i64 %2968, -60
  %2977 = add i64 %2976, %2975
  %2978 = add i64 %2970, 8
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RCX.i163, align 8
  %2982 = trunc i32 %2980 to i16
  store i16 %2982, i16* %DX.i1807, align 2
  %2983 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2984 = add i64 %2983, 184
  %2985 = lshr i64 %2984, 63
  %2986 = add i64 %2983, 696
  store i64 %2986, i64* %RAX.i732, align 8
  %2987 = icmp ugt i64 %2984, -513
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %14, align 1
  %2989 = trunc i64 %2986 to i32
  %2990 = and i32 %2989, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i64 %2986, %2984
  %2996 = lshr i64 %2995, 4
  %2997 = trunc i64 %2996 to i8
  %2998 = and i8 %2997, 1
  store i8 %2998, i8* %27, align 1
  %2999 = icmp eq i64 %2986, 0
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %30, align 1
  %3001 = lshr i64 %2986, 63
  %3002 = trunc i64 %3001 to i8
  store i8 %3002, i8* %33, align 1
  %3003 = xor i64 %3001, %2985
  %3004 = add nuw nsw i64 %3003, %3001
  %3005 = icmp eq i64 %3004, 2
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %39, align 1
  %3007 = add i64 %2970, 35
  store i64 %3007, i64* %3, align 8
  %3008 = load i32, i32* %2972, align 4
  %3009 = sext i32 %3008 to i64
  %3010 = shl nsw i64 %3009, 5
  store i64 %3010, i64* %RSI.i, align 8
  %3011 = add i64 %3010, %2986
  %3012 = add i64 %3011, 6
  %3013 = load i16, i16* %DX.i1807, align 2
  %3014 = add i64 %2970, 46
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3012 to i16*
  store i16 %3013, i16* %3015, align 2
  %3016 = load i64, i64* %3, align 8
  %3017 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3018 = add i64 %3017, 184
  %3019 = lshr i64 %3018, 63
  %3020 = add i64 %3017, 696
  store i64 %3020, i64* %RAX.i732, align 8
  %3021 = icmp ugt i64 %3018, -513
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %14, align 1
  %3023 = trunc i64 %3020 to i32
  %3024 = and i32 %3023, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %21, align 1
  %3029 = xor i64 %3020, %3018
  %3030 = lshr i64 %3029, 4
  %3031 = trunc i64 %3030 to i8
  %3032 = and i8 %3031, 1
  store i8 %3032, i8* %27, align 1
  %3033 = icmp eq i64 %3020, 0
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %30, align 1
  %3035 = lshr i64 %3020, 63
  %3036 = trunc i64 %3035 to i8
  store i8 %3036, i8* %33, align 1
  %3037 = xor i64 %3035, %3019
  %3038 = add nuw nsw i64 %3037, %3035
  %3039 = icmp eq i64 %3038, 2
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %39, align 1
  %3041 = load i64, i64* %RBP.i, align 8
  %3042 = add i64 %3041, -36
  %3043 = add i64 %3016, 24
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = sext i32 %3045 to i64
  %3047 = shl nsw i64 %3046, 5
  store i64 %3047, i64* %RSI.i, align 8
  %3048 = add i64 %3047, %3020
  %3049 = add i64 %3048, 4
  %3050 = load i16, i16* %DX.i1807, align 2
  %3051 = add i64 %3016, 35
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3049 to i16*
  store i16 %3050, i16* %3052, align 2
  %3053 = load i64, i64* %3, align 8
  %3054 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3055 = add i64 %3054, 184
  %3056 = lshr i64 %3055, 63
  %3057 = add i64 %3054, 696
  store i64 %3057, i64* %RAX.i732, align 8
  %3058 = icmp ugt i64 %3055, -513
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %14, align 1
  %3060 = trunc i64 %3057 to i32
  %3061 = and i32 %3060, 255
  %3062 = tail call i32 @llvm.ctpop.i32(i32 %3061)
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  store i8 %3065, i8* %21, align 1
  %3066 = xor i64 %3057, %3055
  %3067 = lshr i64 %3066, 4
  %3068 = trunc i64 %3067 to i8
  %3069 = and i8 %3068, 1
  store i8 %3069, i8* %27, align 1
  %3070 = icmp eq i64 %3057, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %30, align 1
  %3072 = lshr i64 %3057, 63
  %3073 = trunc i64 %3072 to i8
  store i8 %3073, i8* %33, align 1
  %3074 = xor i64 %3072, %3056
  %3075 = add nuw nsw i64 %3074, %3072
  %3076 = icmp eq i64 %3075, 2
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %39, align 1
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -36
  %3080 = add i64 %3053, 24
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i32*
  %3082 = load i32, i32* %3081, align 4
  %3083 = sext i32 %3082 to i64
  %3084 = shl nsw i64 %3083, 5
  store i64 %3084, i64* %RSI.i, align 8
  %3085 = add i64 %3084, %3057
  %3086 = add i64 %3085, 2
  %3087 = load i16, i16* %DX.i1807, align 2
  %3088 = add i64 %3053, 35
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3086 to i16*
  store i16 %3087, i16* %3089, align 2
  %3090 = load i64, i64* %3, align 8
  %3091 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3092 = add i64 %3091, 184
  %3093 = lshr i64 %3092, 63
  %3094 = add i64 %3091, 696
  store i64 %3094, i64* %RAX.i732, align 8
  %3095 = icmp ugt i64 %3092, -513
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %14, align 1
  %3097 = trunc i64 %3094 to i32
  %3098 = and i32 %3097, 255
  %3099 = tail call i32 @llvm.ctpop.i32(i32 %3098)
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  %3102 = xor i8 %3101, 1
  store i8 %3102, i8* %21, align 1
  %3103 = xor i64 %3094, %3092
  %3104 = lshr i64 %3103, 4
  %3105 = trunc i64 %3104 to i8
  %3106 = and i8 %3105, 1
  store i8 %3106, i8* %27, align 1
  %3107 = icmp eq i64 %3094, 0
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %30, align 1
  %3109 = lshr i64 %3094, 63
  %3110 = trunc i64 %3109 to i8
  store i8 %3110, i8* %33, align 1
  %3111 = xor i64 %3109, %3093
  %3112 = add nuw nsw i64 %3111, %3109
  %3113 = icmp eq i64 %3112, 2
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %39, align 1
  %3115 = load i64, i64* %RBP.i, align 8
  %3116 = add i64 %3115, -36
  %3117 = add i64 %3090, 24
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3116 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = sext i32 %3119 to i64
  %3121 = shl nsw i64 %3120, 5
  store i64 %3121, i64* %RSI.i, align 8
  %3122 = add i64 %3121, %3094
  store i64 %3122, i64* %RAX.i732, align 8
  %3123 = icmp ult i64 %3122, %3094
  %3124 = icmp ult i64 %3122, %3121
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %14, align 1
  %3127 = trunc i64 %3122 to i32
  %3128 = and i32 %3127, 255
  %3129 = tail call i32 @llvm.ctpop.i32(i32 %3128)
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = xor i8 %3131, 1
  store i8 %3132, i8* %21, align 1
  %3133 = xor i64 %3094, %3122
  %3134 = lshr i64 %3133, 4
  %3135 = trunc i64 %3134 to i8
  %3136 = and i8 %3135, 1
  store i8 %3136, i8* %27, align 1
  %3137 = icmp eq i64 %3122, 0
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %30, align 1
  %3139 = lshr i64 %3122, 63
  %3140 = trunc i64 %3139 to i8
  store i8 %3140, i8* %33, align 1
  %3141 = lshr i64 %3120, 58
  %3142 = and i64 %3141, 1
  %3143 = xor i64 %3139, %3109
  %3144 = xor i64 %3139, %3142
  %3145 = add nuw nsw i64 %3143, %3144
  %3146 = icmp eq i64 %3145, 2
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %39, align 1
  %3148 = inttoptr i64 %3122 to i16*
  %3149 = load i16, i16* %DX.i1807, align 2
  %3150 = add i64 %3090, 34
  store i64 %3150, i64* %3, align 8
  store i16 %3149, i16* %3148, align 2
  %3151 = load i64, i64* %RBP.i, align 8
  %3152 = add i64 %3151, -36
  %3153 = load i64, i64* %3, align 8
  %3154 = add i64 %3153, 3
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3152 to i32*
  %3156 = load i32, i32* %3155, align 4
  %3157 = add i32 %3156, 1
  %3158 = zext i32 %3157 to i64
  store i64 %3158, i64* %RAX.i732, align 8
  %3159 = icmp eq i32 %3156, -1
  %3160 = icmp eq i32 %3157, 0
  %3161 = or i1 %3159, %3160
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %14, align 1
  %3163 = and i32 %3157, 255
  %3164 = tail call i32 @llvm.ctpop.i32(i32 %3163)
  %3165 = trunc i32 %3164 to i8
  %3166 = and i8 %3165, 1
  %3167 = xor i8 %3166, 1
  store i8 %3167, i8* %21, align 1
  %3168 = xor i32 %3157, %3156
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  store i8 %3171, i8* %27, align 1
  %3172 = zext i1 %3160 to i8
  store i8 %3172, i8* %30, align 1
  %3173 = lshr i32 %3157, 31
  %3174 = trunc i32 %3173 to i8
  store i8 %3174, i8* %33, align 1
  %3175 = lshr i32 %3156, 31
  %3176 = xor i32 %3173, %3175
  %3177 = add nuw nsw i32 %3176, %3173
  %3178 = icmp eq i32 %3177, 2
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %39, align 1
  %3180 = add i64 %3153, 9
  store i64 %3180, i64* %3, align 8
  store i32 %3157, i32* %3155, align 4
  %3181 = load i64, i64* %3, align 8
  %3182 = add i64 %3181, -260
  store i64 %3182, i64* %3, align 8
  br label %block_.L_402d6c

block_.L_402e75:                                  ; preds = %block_.L_402d6c
  %3183 = add i64 %2877, -300
  %3184 = add i64 %2905, 7
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  store i8 0, i8* %14, align 1
  %3187 = and i32 %3186, 255
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3192 = icmp eq i32 %3186, 0
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %30, align 1
  %3194 = lshr i32 %3186, 31
  %3195 = trunc i32 %3194 to i8
  store i8 %3195, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v237 = select i1 %3192, i64 13, i64 30
  %3196 = add i64 %2905, %.v237
  store i64 %3196, i64* %3, align 8
  br i1 %3192, label %block_402e82, label %block_.L_402e93

block_402e82:                                     ; preds = %block_.L_402e75
  %3197 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3197, i64* %RAX.i732, align 8
  %3198 = add i64 %3197, 184
  %3199 = add i64 %3196, 17
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3198 to i16*
  store i16 -1, i16* %3200, align 2
  %.pre111 = load i64, i64* %RBP.i, align 8
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_402e93

block_.L_402e93:                                  ; preds = %block_.L_402e75, %block_402e82
  %3201 = phi i64 [ %.pre112, %block_402e82 ], [ %3196, %block_.L_402e75 ]
  %3202 = phi i64 [ %.pre111, %block_402e82 ], [ %2877, %block_.L_402e75 ]
  %3203 = add i64 %3202, -304
  %3204 = add i64 %3201, 7
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  store i8 0, i8* %14, align 1
  %3207 = and i32 %3206, 255
  %3208 = tail call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  store i8 %3211, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3212 = icmp eq i32 %3206, 0
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %30, align 1
  %3214 = lshr i32 %3206, 31
  %3215 = trunc i32 %3214 to i8
  store i8 %3215, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v238 = select i1 %3212, i64 13, i64 30
  %3216 = add i64 %3201, %.v238
  store i64 %3216, i64* %3, align 8
  br i1 %3212, label %block_402ea0, label %block_.L_402eb1

block_402ea0:                                     ; preds = %block_.L_402e93
  %3217 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3217, i64* %RAX.i732, align 8
  %3218 = add i64 %3217, 696
  %3219 = add i64 %3216, 17
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i16*
  store i16 -1, i16* %3220, align 2
  %.pre113 = load i64, i64* %RBP.i, align 8
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_402eb1

block_.L_402eb1:                                  ; preds = %block_.L_402e93, %block_402ea0
  %3221 = phi i64 [ %.pre114, %block_402ea0 ], [ %3216, %block_.L_402e93 ]
  %3222 = phi i64 [ %.pre113, %block_402ea0 ], [ %3202, %block_.L_402e93 ]
  %3223 = add i64 %3222, -300
  %3224 = add i64 %3221, 7
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  store i8 0, i8* %14, align 1
  %3227 = and i32 %3226, 255
  %3228 = tail call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  store i8 %3231, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3232 = icmp eq i32 %3226, 0
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %30, align 1
  %3234 = lshr i32 %3226, 31
  %3235 = trunc i32 %3234 to i8
  store i8 %3235, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v239 = select i1 %3232, i64 912, i64 13
  %3236 = add i64 %3221, %.v239
  store i64 %3236, i64* %3, align 8
  br i1 %3232, label %block_.L_403241, label %block_402ebe

block_402ebe:                                     ; preds = %block_.L_402eb1
  store i64 4, i64* %RAX.i732, align 8
  store i64 2, i64* %RCX.i163, align 8
  %3237 = add i64 %3222, -92
  %3238 = add i64 %3236, 13
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i32*
  %3240 = load i32, i32* %3239, align 4
  %3241 = zext i32 %3240 to i64
  store i64 %3241, i64* %RDX.i, align 8
  %3242 = add i64 %3222, -84
  %3243 = add i64 %3236, 16
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i32*
  %3245 = load i32, i32* %3244, align 4
  %3246 = add i32 %3245, %3240
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %RDX.i, align 8
  %3248 = icmp ult i32 %3246, %3240
  %3249 = icmp ult i32 %3246, %3245
  %3250 = or i1 %3248, %3249
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %14, align 1
  %3252 = and i32 %3246, 255
  %3253 = tail call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  store i8 %3256, i8* %21, align 1
  %3257 = xor i32 %3245, %3240
  %3258 = xor i32 %3257, %3246
  %3259 = lshr i32 %3258, 4
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %27, align 1
  %3262 = icmp eq i32 %3246, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %30, align 1
  %3264 = lshr i32 %3246, 31
  %3265 = trunc i32 %3264 to i8
  store i8 %3265, i8* %33, align 1
  %3266 = lshr i32 %3240, 31
  %3267 = lshr i32 %3245, 31
  %3268 = xor i32 %3264, %3266
  %3269 = xor i32 %3264, %3267
  %3270 = add nuw nsw i32 %3268, %3269
  %3271 = icmp eq i32 %3270, 2
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %39, align 1
  %3273 = add i64 %3222, -88
  %3274 = add i64 %3236, 19
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = shl i32 %3276, 1
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RSI.i, align 8
  %3279 = add i32 %3277, %3246
  %3280 = lshr i32 %3279, 31
  %3281 = add i32 %3279, 2
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %RDX.i, align 8
  %3283 = icmp ugt i32 %3279, -3
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %14, align 1
  %3285 = and i32 %3281, 255
  %3286 = tail call i32 @llvm.ctpop.i32(i32 %3285)
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  %3289 = xor i8 %3288, 1
  store i8 %3289, i8* %21, align 1
  %3290 = xor i32 %3281, %3279
  %3291 = lshr i32 %3290, 4
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  store i8 %3293, i8* %27, align 1
  %3294 = icmp eq i32 %3281, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %30, align 1
  %3296 = lshr i32 %3281, 31
  %3297 = trunc i32 %3296 to i8
  store i8 %3297, i8* %33, align 1
  %3298 = xor i32 %3296, %3280
  %3299 = add nuw nsw i32 %3298, %3296
  %3300 = icmp eq i32 %3299, 2
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %39, align 1
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -356
  %3304 = load i32, i32* %EAX.i1314, align 4
  %3305 = add i64 %3236, 32
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3303 to i32*
  store i32 %3304, i32* %3306, align 4
  %3307 = load i32, i32* %EDX.i1119, align 4
  %3308 = zext i32 %3307 to i64
  %3309 = load i64, i64* %3, align 8
  store i64 %3308, i64* %RAX.i732, align 8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3311 = sext i32 %3307 to i64
  %3312 = lshr i64 %3311, 32
  store i64 %3312, i64* %3310, align 8
  %3313 = load i64, i64* %RBP.i, align 8
  %3314 = add i64 %3313, -356
  %3315 = add i64 %3309, 9
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = zext i32 %3317 to i64
  store i64 %3318, i64* %RSI.i, align 8
  %3319 = add i64 %3309, 11
  store i64 %3319, i64* %3, align 8
  %3320 = sext i32 %3317 to i64
  %3321 = shl nuw i64 %3312, 32
  %3322 = or i64 %3321, %3308
  %3323 = sdiv i64 %3322, %3320
  %3324 = shl i64 %3323, 32
  %3325 = ashr exact i64 %3324, 32
  %3326 = icmp eq i64 %3323, %3325
  br i1 %3326, label %3329, label %3327

; <label>:3327:                                   ; preds = %block_402ebe
  %3328 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3319, %struct.Memory* %MEMORY.22)
  %.pre115 = load i16, i16* %AX.i1861, align 2
  %.pre116 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1634

; <label>:3329:                                   ; preds = %block_402ebe
  %3330 = srem i64 %3322, %3320
  %3331 = and i64 %3323, 4294967295
  store i64 %3331, i64* %RAX.i732, align 8
  %3332 = and i64 %3330, 4294967295
  store i64 %3332, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3333 = trunc i64 %3323 to i16
  br label %routine_idivl__esi.exit1634

routine_idivl__esi.exit1634:                      ; preds = %3329, %3327
  %3334 = phi i64 [ %.pre116, %3327 ], [ %3319, %3329 ]
  %3335 = phi i16 [ %.pre115, %3327 ], [ %3333, %3329 ]
  %3336 = phi %struct.Memory* [ %3328, %3327 ], [ %MEMORY.22, %3329 ]
  %DI.i1631 = bitcast %union.anon* %40 to i16*
  store i16 %3335, i16* %DI.i1631, align 2
  %3337 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3337, i64* %R8.i187, align 8
  %3338 = add i64 %3337, 1720
  %3339 = add i64 %3334, 19
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i16*
  store i16 %3335, i16* %3340, align 2
  %3341 = load i64, i64* %RBP.i, align 8
  %3342 = add i64 %3341, -88
  %3343 = load i64, i64* %3, align 8
  %3344 = add i64 %3343, 3
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3342 to i32*
  %3346 = load i32, i32* %3345, align 4
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RAX.i732, align 8
  %3348 = add i64 %3341, -80
  %3349 = add i64 %3343, 6
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = add i32 %3351, %3346
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RAX.i732, align 8
  %3354 = icmp ult i32 %3352, %3346
  %3355 = icmp ult i32 %3352, %3351
  %3356 = or i1 %3354, %3355
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %14, align 1
  %3358 = and i32 %3352, 255
  %3359 = tail call i32 @llvm.ctpop.i32(i32 %3358)
  %3360 = trunc i32 %3359 to i8
  %3361 = and i8 %3360, 1
  %3362 = xor i8 %3361, 1
  store i8 %3362, i8* %21, align 1
  %3363 = xor i32 %3351, %3346
  %3364 = xor i32 %3363, %3352
  %3365 = lshr i32 %3364, 4
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  store i8 %3367, i8* %27, align 1
  %3368 = icmp eq i32 %3352, 0
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %30, align 1
  %3370 = lshr i32 %3352, 31
  %3371 = trunc i32 %3370 to i8
  store i8 %3371, i8* %33, align 1
  %3372 = lshr i32 %3346, 31
  %3373 = lshr i32 %3351, 31
  %3374 = xor i32 %3370, %3372
  %3375 = xor i32 %3370, %3373
  %3376 = add nuw nsw i32 %3374, %3375
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %39, align 1
  %3379 = getelementptr inbounds %union.anon, %union.anon* %488, i64 0, i32 0
  %3380 = add i64 %3341, -84
  %3381 = add i64 %3343, 10
  store i64 %3381, i64* %3, align 8
  %3382 = inttoptr i64 %3380 to i32*
  %3383 = load i32, i32* %3382, align 4
  %3384 = shl i32 %3383, 1
  %3385 = zext i32 %3384 to i64
  store i64 %3385, i64* %3379, align 8
  %3386 = add i32 %3384, %3352
  %3387 = lshr i32 %3386, 31
  %3388 = add i32 %3386, 2
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RAX.i732, align 8
  %3390 = icmp ugt i32 %3386, -3
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %14, align 1
  %3392 = and i32 %3388, 255
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %21, align 1
  %3397 = xor i32 %3388, %3386
  %3398 = lshr i32 %3397, 4
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  store i8 %3400, i8* %27, align 1
  %3401 = icmp eq i32 %3388, 0
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %30, align 1
  %3403 = lshr i32 %3388, 31
  %3404 = trunc i32 %3403 to i8
  store i8 %3404, i8* %33, align 1
  %3405 = xor i32 %3403, %3387
  %3406 = add nuw nsw i32 %3405, %3403
  %3407 = icmp eq i32 %3406, 2
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %39, align 1
  %3409 = sext i32 %3388 to i64
  %3410 = lshr i64 %3409, 32
  store i64 %3410, i64* %3310, align 8
  %3411 = load i32, i32* %ESI.i100, align 4
  %3412 = add i64 %3343, 22
  store i64 %3412, i64* %3, align 8
  %3413 = sext i32 %3411 to i64
  %3414 = shl nuw i64 %3410, 32
  %3415 = or i64 %3414, %3389
  %3416 = sdiv i64 %3415, %3413
  %3417 = shl i64 %3416, 32
  %3418 = ashr exact i64 %3417, 32
  %3419 = icmp eq i64 %3416, %3418
  br i1 %3419, label %3422, label %3420

; <label>:3420:                                   ; preds = %routine_idivl__esi.exit1634
  %3421 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3412, %struct.Memory* %3336)
  %.pre117 = load i16, i16* %AX.i1861, align 2
  %.pre118 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1605

; <label>:3422:                                   ; preds = %routine_idivl__esi.exit1634
  %3423 = srem i64 %3415, %3413
  %3424 = and i64 %3416, 4294967295
  store i64 %3424, i64* %RAX.i732, align 8
  %3425 = and i64 %3423, 4294967295
  store i64 %3425, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3426 = trunc i64 %3416 to i16
  br label %routine_idivl__esi.exit1605

routine_idivl__esi.exit1605:                      ; preds = %3422, %3420
  %3427 = phi i64 [ %.pre118, %3420 ], [ %3412, %3422 ]
  %3428 = phi i16 [ %.pre117, %3420 ], [ %3426, %3422 ]
  %3429 = phi %struct.Memory* [ %3421, %3420 ], [ %3336, %3422 ]
  store i16 %3428, i16* %DI.i1631, align 2
  %3430 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3431 = add i64 %3430, 1752
  %3432 = add i64 %3427, 19
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3431 to i16*
  store i16 %3428, i16* %3433, align 2
  %3434 = load i64, i64* %3, align 8
  %3435 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3435, i64* %R8.i187, align 8
  %3436 = add i64 %3435, 1722
  %3437 = load i16, i16* %DI.i1631, align 2
  %3438 = add i64 %3434, 16
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3436 to i16*
  store i16 %3437, i16* %3439, align 2
  %3440 = load i64, i64* %RBP.i, align 8
  %3441 = add i64 %3440, -84
  %3442 = load i64, i64* %3, align 8
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3441 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RAX.i732, align 8
  %3447 = add i64 %3440, -76
  %3448 = add i64 %3442, 6
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = add i32 %3450, %3445
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RAX.i732, align 8
  %3453 = icmp ult i32 %3451, %3445
  %3454 = icmp ult i32 %3451, %3450
  %3455 = or i1 %3453, %3454
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %14, align 1
  %3457 = and i32 %3451, 255
  %3458 = tail call i32 @llvm.ctpop.i32(i32 %3457)
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = xor i8 %3460, 1
  store i8 %3461, i8* %21, align 1
  %3462 = xor i32 %3450, %3445
  %3463 = xor i32 %3462, %3451
  %3464 = lshr i32 %3463, 4
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  store i8 %3466, i8* %27, align 1
  %3467 = icmp eq i32 %3451, 0
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %30, align 1
  %3469 = lshr i32 %3451, 31
  %3470 = trunc i32 %3469 to i8
  store i8 %3470, i8* %33, align 1
  %3471 = lshr i32 %3445, 31
  %3472 = lshr i32 %3450, 31
  %3473 = xor i32 %3469, %3471
  %3474 = xor i32 %3469, %3472
  %3475 = add nuw nsw i32 %3473, %3474
  %3476 = icmp eq i32 %3475, 2
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %39, align 1
  %3478 = add i64 %3440, -80
  %3479 = add i64 %3442, 10
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = shl i32 %3481, 1
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %3379, align 8
  %3484 = add i32 %3482, %3451
  %3485 = lshr i32 %3484, 31
  %3486 = add i32 %3484, 2
  %3487 = zext i32 %3486 to i64
  store i64 %3487, i64* %RAX.i732, align 8
  %3488 = icmp ugt i32 %3484, -3
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %14, align 1
  %3490 = and i32 %3486, 255
  %3491 = tail call i32 @llvm.ctpop.i32(i32 %3490)
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = xor i8 %3493, 1
  store i8 %3494, i8* %21, align 1
  %3495 = xor i32 %3486, %3484
  %3496 = lshr i32 %3495, 4
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  store i8 %3498, i8* %27, align 1
  %3499 = icmp eq i32 %3486, 0
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %30, align 1
  %3501 = lshr i32 %3486, 31
  %3502 = trunc i32 %3501 to i8
  store i8 %3502, i8* %33, align 1
  %3503 = xor i32 %3501, %3485
  %3504 = add nuw nsw i32 %3503, %3501
  %3505 = icmp eq i32 %3504, 2
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %39, align 1
  %3507 = sext i32 %3486 to i64
  %3508 = lshr i64 %3507, 32
  store i64 %3508, i64* %3310, align 8
  %3509 = load i32, i32* %ESI.i100, align 4
  %3510 = add i64 %3442, 22
  store i64 %3510, i64* %3, align 8
  %3511 = sext i32 %3509 to i64
  %3512 = shl nuw i64 %3508, 32
  %3513 = or i64 %3512, %3487
  %3514 = sdiv i64 %3513, %3511
  %3515 = shl i64 %3514, 32
  %3516 = ashr exact i64 %3515, 32
  %3517 = icmp eq i64 %3514, %3516
  br i1 %3517, label %3520, label %3518

; <label>:3518:                                   ; preds = %routine_idivl__esi.exit1605
  %3519 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3510, %struct.Memory* %3429)
  %.pre119 = load i16, i16* %AX.i1861, align 2
  %.pre120 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1569

; <label>:3520:                                   ; preds = %routine_idivl__esi.exit1605
  %3521 = srem i64 %3513, %3511
  %3522 = and i64 %3514, 4294967295
  store i64 %3522, i64* %RAX.i732, align 8
  %3523 = and i64 %3521, 4294967295
  store i64 %3523, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3524 = trunc i64 %3514 to i16
  br label %routine_idivl__esi.exit1569

routine_idivl__esi.exit1569:                      ; preds = %3520, %3518
  %3525 = phi i64 [ %.pre120, %3518 ], [ %3510, %3520 ]
  %3526 = phi i16 [ %.pre119, %3518 ], [ %3524, %3520 ]
  %3527 = phi %struct.Memory* [ %3519, %3518 ], [ %3429, %3520 ]
  store i16 %3526, i16* %DI.i1631, align 2
  %3528 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3529 = add i64 %3528, 1784
  %3530 = add i64 %3525, 19
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i16*
  store i16 %3526, i16* %3531, align 2
  %3532 = load i64, i64* %3, align 8
  %3533 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3534 = add i64 %3533, 1754
  %3535 = load i16, i16* %DI.i1631, align 2
  %3536 = add i64 %3532, 16
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3534 to i16*
  store i16 %3535, i16* %3537, align 2
  %3538 = load i64, i64* %3, align 8
  %3539 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3539, i64* %R8.i187, align 8
  %3540 = add i64 %3539, 1724
  %3541 = load i16, i16* %DI.i1631, align 2
  %3542 = add i64 %3538, 16
  store i64 %3542, i64* %3, align 8
  %3543 = inttoptr i64 %3540 to i16*
  store i16 %3541, i16* %3543, align 2
  %3544 = load i64, i64* %RBP.i, align 8
  %3545 = add i64 %3544, -80
  %3546 = load i64, i64* %3, align 8
  %3547 = add i64 %3546, 3
  store i64 %3547, i64* %3, align 8
  %3548 = inttoptr i64 %3545 to i32*
  %3549 = load i32, i32* %3548, align 4
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RAX.i732, align 8
  %3551 = add i64 %3544, -72
  %3552 = add i64 %3546, 6
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3551 to i32*
  %3554 = load i32, i32* %3553, align 4
  %3555 = add i32 %3554, %3549
  %3556 = zext i32 %3555 to i64
  store i64 %3556, i64* %RAX.i732, align 8
  %3557 = icmp ult i32 %3555, %3549
  %3558 = icmp ult i32 %3555, %3554
  %3559 = or i1 %3557, %3558
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %14, align 1
  %3561 = and i32 %3555, 255
  %3562 = tail call i32 @llvm.ctpop.i32(i32 %3561)
  %3563 = trunc i32 %3562 to i8
  %3564 = and i8 %3563, 1
  %3565 = xor i8 %3564, 1
  store i8 %3565, i8* %21, align 1
  %3566 = xor i32 %3554, %3549
  %3567 = xor i32 %3566, %3555
  %3568 = lshr i32 %3567, 4
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  store i8 %3570, i8* %27, align 1
  %3571 = icmp eq i32 %3555, 0
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %30, align 1
  %3573 = lshr i32 %3555, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %33, align 1
  %3575 = lshr i32 %3549, 31
  %3576 = lshr i32 %3554, 31
  %3577 = xor i32 %3573, %3575
  %3578 = xor i32 %3573, %3576
  %3579 = add nuw nsw i32 %3577, %3578
  %3580 = icmp eq i32 %3579, 2
  %3581 = zext i1 %3580 to i8
  store i8 %3581, i8* %39, align 1
  %3582 = add i64 %3544, -76
  %3583 = add i64 %3546, 10
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = shl i32 %3585, 1
  %3587 = zext i32 %3586 to i64
  store i64 %3587, i64* %3379, align 8
  %3588 = add i32 %3586, %3555
  %3589 = lshr i32 %3588, 31
  %3590 = add i32 %3588, 2
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RAX.i732, align 8
  %3592 = icmp ugt i32 %3588, -3
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %14, align 1
  %3594 = and i32 %3590, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %21, align 1
  %3599 = xor i32 %3590, %3588
  %3600 = lshr i32 %3599, 4
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  store i8 %3602, i8* %27, align 1
  %3603 = icmp eq i32 %3590, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %30, align 1
  %3605 = lshr i32 %3590, 31
  %3606 = trunc i32 %3605 to i8
  store i8 %3606, i8* %33, align 1
  %3607 = xor i32 %3605, %3589
  %3608 = add nuw nsw i32 %3607, %3605
  %3609 = icmp eq i32 %3608, 2
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %39, align 1
  %3611 = sext i32 %3590 to i64
  %3612 = lshr i64 %3611, 32
  store i64 %3612, i64* %3310, align 8
  %3613 = load i32, i32* %ESI.i100, align 4
  %3614 = add i64 %3546, 22
  store i64 %3614, i64* %3, align 8
  %3615 = sext i32 %3613 to i64
  %3616 = shl nuw i64 %3612, 32
  %3617 = or i64 %3616, %3591
  %3618 = sdiv i64 %3617, %3615
  %3619 = shl i64 %3618, 32
  %3620 = ashr exact i64 %3619, 32
  %3621 = icmp eq i64 %3618, %3620
  br i1 %3621, label %3624, label %3622

; <label>:3622:                                   ; preds = %routine_idivl__esi.exit1569
  %3623 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3614, %struct.Memory* %3527)
  %.pre121 = load i16, i16* %AX.i1861, align 2
  %.pre122 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1529

; <label>:3624:                                   ; preds = %routine_idivl__esi.exit1569
  %3625 = srem i64 %3617, %3615
  %3626 = and i64 %3618, 4294967295
  store i64 %3626, i64* %RAX.i732, align 8
  %3627 = and i64 %3625, 4294967295
  store i64 %3627, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3628 = trunc i64 %3618 to i16
  br label %routine_idivl__esi.exit1529

routine_idivl__esi.exit1529:                      ; preds = %3624, %3622
  %3629 = phi i64 [ %.pre122, %3622 ], [ %3614, %3624 ]
  %3630 = phi i16 [ %.pre121, %3622 ], [ %3628, %3624 ]
  %3631 = phi %struct.Memory* [ %3623, %3622 ], [ %3527, %3624 ]
  store i16 %3630, i16* %DI.i1631, align 2
  %3632 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3633 = add i64 %3632, 1816
  %3634 = add i64 %3629, 19
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3633 to i16*
  store i16 %3630, i16* %3635, align 2
  %3636 = load i64, i64* %3, align 8
  %3637 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3638 = add i64 %3637, 1786
  %3639 = load i16, i16* %DI.i1631, align 2
  %3640 = add i64 %3636, 16
  store i64 %3640, i64* %3, align 8
  %3641 = inttoptr i64 %3638 to i16*
  store i16 %3639, i16* %3641, align 2
  %3642 = load i64, i64* %3, align 8
  %3643 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3644 = add i64 %3643, 1756
  %3645 = load i16, i16* %DI.i1631, align 2
  %3646 = add i64 %3642, 16
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3644 to i16*
  store i16 %3645, i16* %3647, align 2
  %3648 = load i64, i64* %3, align 8
  %3649 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3649, i64* %R8.i187, align 8
  %3650 = add i64 %3649, 1726
  %3651 = load i16, i16* %DI.i1631, align 2
  %3652 = add i64 %3648, 16
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3650 to i16*
  store i16 %3651, i16* %3653, align 2
  %3654 = load i64, i64* %RBP.i, align 8
  %3655 = add i64 %3654, -76
  %3656 = load i64, i64* %3, align 8
  %3657 = add i64 %3656, 3
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3655 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RAX.i732, align 8
  %3661 = add i64 %3654, -68
  %3662 = add i64 %3656, 6
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = add i32 %3664, %3659
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RAX.i732, align 8
  %3667 = icmp ult i32 %3665, %3659
  %3668 = icmp ult i32 %3665, %3664
  %3669 = or i1 %3667, %3668
  %3670 = zext i1 %3669 to i8
  store i8 %3670, i8* %14, align 1
  %3671 = and i32 %3665, 255
  %3672 = tail call i32 @llvm.ctpop.i32(i32 %3671)
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = xor i8 %3674, 1
  store i8 %3675, i8* %21, align 1
  %3676 = xor i32 %3664, %3659
  %3677 = xor i32 %3676, %3665
  %3678 = lshr i32 %3677, 4
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  store i8 %3680, i8* %27, align 1
  %3681 = icmp eq i32 %3665, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %30, align 1
  %3683 = lshr i32 %3665, 31
  %3684 = trunc i32 %3683 to i8
  store i8 %3684, i8* %33, align 1
  %3685 = lshr i32 %3659, 31
  %3686 = lshr i32 %3664, 31
  %3687 = xor i32 %3683, %3685
  %3688 = xor i32 %3683, %3686
  %3689 = add nuw nsw i32 %3687, %3688
  %3690 = icmp eq i32 %3689, 2
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %39, align 1
  %3692 = add i64 %3654, -72
  %3693 = add i64 %3656, 10
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to i32*
  %3695 = load i32, i32* %3694, align 4
  %3696 = shl i32 %3695, 1
  %3697 = zext i32 %3696 to i64
  store i64 %3697, i64* %3379, align 8
  %3698 = add i32 %3696, %3665
  %3699 = lshr i32 %3698, 31
  %3700 = add i32 %3698, 2
  %3701 = zext i32 %3700 to i64
  store i64 %3701, i64* %RAX.i732, align 8
  %3702 = icmp ugt i32 %3698, -3
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %14, align 1
  %3704 = and i32 %3700, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i32 %3700, %3698
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  store i8 %3712, i8* %27, align 1
  %3713 = icmp eq i32 %3700, 0
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %30, align 1
  %3715 = lshr i32 %3700, 31
  %3716 = trunc i32 %3715 to i8
  store i8 %3716, i8* %33, align 1
  %3717 = xor i32 %3715, %3699
  %3718 = add nuw nsw i32 %3717, %3715
  %3719 = icmp eq i32 %3718, 2
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %39, align 1
  %3721 = sext i32 %3700 to i64
  %3722 = lshr i64 %3721, 32
  store i64 %3722, i64* %3310, align 8
  %3723 = load i32, i32* %ESI.i100, align 4
  %3724 = add i64 %3656, 22
  store i64 %3724, i64* %3, align 8
  %3725 = sext i32 %3723 to i64
  %3726 = shl nuw i64 %3722, 32
  %3727 = or i64 %3726, %3701
  %3728 = sdiv i64 %3727, %3725
  %3729 = shl i64 %3728, 32
  %3730 = ashr exact i64 %3729, 32
  %3731 = icmp eq i64 %3728, %3730
  br i1 %3731, label %3734, label %3732

; <label>:3732:                                   ; preds = %routine_idivl__esi.exit1529
  %3733 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3724, %struct.Memory* %3631)
  %.pre123 = load i16, i16* %AX.i1861, align 2
  %.pre124 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1483

; <label>:3734:                                   ; preds = %routine_idivl__esi.exit1529
  %3735 = srem i64 %3727, %3725
  %3736 = and i64 %3728, 4294967295
  store i64 %3736, i64* %RAX.i732, align 8
  %3737 = and i64 %3735, 4294967295
  store i64 %3737, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3738 = trunc i64 %3728 to i16
  br label %routine_idivl__esi.exit1483

routine_idivl__esi.exit1483:                      ; preds = %3734, %3732
  %3739 = phi i64 [ %.pre124, %3732 ], [ %3724, %3734 ]
  %3740 = phi i16 [ %.pre123, %3732 ], [ %3738, %3734 ]
  %3741 = phi %struct.Memory* [ %3733, %3732 ], [ %3631, %3734 ]
  store i16 %3740, i16* %DI.i1631, align 2
  %3742 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3743 = add i64 %3742, 1818
  %3744 = add i64 %3739, 19
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i16*
  store i16 %3740, i16* %3745, align 2
  %3746 = load i64, i64* %3, align 8
  %3747 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3748 = add i64 %3747, 1788
  %3749 = load i16, i16* %DI.i1631, align 2
  %3750 = add i64 %3746, 16
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3748 to i16*
  store i16 %3749, i16* %3751, align 2
  %3752 = load i64, i64* %3, align 8
  %3753 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3753, i64* %R8.i187, align 8
  %3754 = add i64 %3753, 1758
  %3755 = load i16, i16* %DI.i1631, align 2
  %3756 = add i64 %3752, 16
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3754 to i16*
  store i16 %3755, i16* %3757, align 2
  %3758 = load i64, i64* %RBP.i, align 8
  %3759 = add i64 %3758, -72
  %3760 = load i64, i64* %3, align 8
  %3761 = add i64 %3760, 3
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3759 to i32*
  %3763 = load i32, i32* %3762, align 4
  %3764 = zext i32 %3763 to i64
  store i64 %3764, i64* %RAX.i732, align 8
  %3765 = add i64 %3758, -64
  %3766 = add i64 %3760, 6
  store i64 %3766, i64* %3, align 8
  %3767 = inttoptr i64 %3765 to i32*
  %3768 = load i32, i32* %3767, align 4
  %3769 = add i32 %3768, %3763
  %3770 = zext i32 %3769 to i64
  store i64 %3770, i64* %RAX.i732, align 8
  %3771 = icmp ult i32 %3769, %3763
  %3772 = icmp ult i32 %3769, %3768
  %3773 = or i1 %3771, %3772
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %14, align 1
  %3775 = and i32 %3769, 255
  %3776 = tail call i32 @llvm.ctpop.i32(i32 %3775)
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  %3779 = xor i8 %3778, 1
  store i8 %3779, i8* %21, align 1
  %3780 = xor i32 %3768, %3763
  %3781 = xor i32 %3780, %3769
  %3782 = lshr i32 %3781, 4
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  store i8 %3784, i8* %27, align 1
  %3785 = icmp eq i32 %3769, 0
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %30, align 1
  %3787 = lshr i32 %3769, 31
  %3788 = trunc i32 %3787 to i8
  store i8 %3788, i8* %33, align 1
  %3789 = lshr i32 %3763, 31
  %3790 = lshr i32 %3768, 31
  %3791 = xor i32 %3787, %3789
  %3792 = xor i32 %3787, %3790
  %3793 = add nuw nsw i32 %3791, %3792
  %3794 = icmp eq i32 %3793, 2
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %39, align 1
  %3796 = add i64 %3758, -68
  %3797 = add i64 %3760, 10
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i32*
  %3799 = load i32, i32* %3798, align 4
  %3800 = shl i32 %3799, 1
  %3801 = zext i32 %3800 to i64
  store i64 %3801, i64* %3379, align 8
  %3802 = add i32 %3800, %3769
  %3803 = lshr i32 %3802, 31
  %3804 = add i32 %3802, 2
  %3805 = zext i32 %3804 to i64
  store i64 %3805, i64* %RAX.i732, align 8
  %3806 = icmp ugt i32 %3802, -3
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %14, align 1
  %3808 = and i32 %3804, 255
  %3809 = tail call i32 @llvm.ctpop.i32(i32 %3808)
  %3810 = trunc i32 %3809 to i8
  %3811 = and i8 %3810, 1
  %3812 = xor i8 %3811, 1
  store i8 %3812, i8* %21, align 1
  %3813 = xor i32 %3804, %3802
  %3814 = lshr i32 %3813, 4
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  store i8 %3816, i8* %27, align 1
  %3817 = icmp eq i32 %3804, 0
  %3818 = zext i1 %3817 to i8
  store i8 %3818, i8* %30, align 1
  %3819 = lshr i32 %3804, 31
  %3820 = trunc i32 %3819 to i8
  store i8 %3820, i8* %33, align 1
  %3821 = xor i32 %3819, %3803
  %3822 = add nuw nsw i32 %3821, %3819
  %3823 = icmp eq i32 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %39, align 1
  %3825 = sext i32 %3804 to i64
  %3826 = lshr i64 %3825, 32
  store i64 %3826, i64* %3310, align 8
  %3827 = load i32, i32* %ESI.i100, align 4
  %3828 = add i64 %3760, 22
  store i64 %3828, i64* %3, align 8
  %3829 = sext i32 %3827 to i64
  %3830 = shl nuw i64 %3826, 32
  %3831 = or i64 %3830, %3805
  %3832 = sdiv i64 %3831, %3829
  %3833 = shl i64 %3832, 32
  %3834 = ashr exact i64 %3833, 32
  %3835 = icmp eq i64 %3832, %3834
  br i1 %3835, label %3838, label %3836

; <label>:3836:                                   ; preds = %routine_idivl__esi.exit1483
  %3837 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3828, %struct.Memory* %3741)
  %.pre125 = load i16, i16* %AX.i1861, align 2
  %.pre126 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1442

; <label>:3838:                                   ; preds = %routine_idivl__esi.exit1483
  %3839 = srem i64 %3831, %3829
  %3840 = and i64 %3832, 4294967295
  store i64 %3840, i64* %RAX.i732, align 8
  %3841 = and i64 %3839, 4294967295
  store i64 %3841, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3842 = trunc i64 %3832 to i16
  br label %routine_idivl__esi.exit1442

routine_idivl__esi.exit1442:                      ; preds = %3838, %3836
  %3843 = phi i64 [ %.pre126, %3836 ], [ %3828, %3838 ]
  %3844 = phi i16 [ %.pre125, %3836 ], [ %3842, %3838 ]
  %3845 = phi %struct.Memory* [ %3837, %3836 ], [ %3741, %3838 ]
  store i16 %3844, i16* %DI.i1631, align 2
  %3846 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3847 = add i64 %3846, 1820
  %3848 = add i64 %3843, 19
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i16*
  store i16 %3844, i16* %3849, align 2
  %3850 = load i64, i64* %3, align 8
  %3851 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3851, i64* %R8.i187, align 8
  %3852 = add i64 %3851, 1790
  %3853 = load i16, i16* %DI.i1631, align 2
  %3854 = add i64 %3850, 16
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3852 to i16*
  store i16 %3853, i16* %3855, align 2
  %3856 = load i64, i64* %RBP.i, align 8
  %3857 = add i64 %3856, -68
  %3858 = load i64, i64* %3, align 8
  %3859 = add i64 %3858, 3
  store i64 %3859, i64* %3, align 8
  %3860 = inttoptr i64 %3857 to i32*
  %3861 = load i32, i32* %3860, align 4
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %RAX.i732, align 8
  %3863 = add i64 %3856, -64
  %3864 = add i64 %3858, 8
  store i64 %3864, i64* %3, align 8
  %3865 = inttoptr i64 %3863 to i32*
  %3866 = load i32, i32* %3865, align 4
  %3867 = sext i32 %3866 to i64
  %3868 = mul nsw i64 %3867, 3
  %3869 = and i64 %3868, 4294967295
  store i64 %3869, i64* %3379, align 8
  %3870 = trunc i64 %3868 to i32
  %3871 = add i32 %3870, %3861
  %3872 = lshr i32 %3871, 31
  %3873 = add i32 %3871, 2
  %3874 = zext i32 %3873 to i64
  store i64 %3874, i64* %RAX.i732, align 8
  %3875 = icmp ugt i32 %3871, -3
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %14, align 1
  %3877 = and i32 %3873, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i32 %3873, %3871
  %3883 = lshr i32 %3882, 4
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %27, align 1
  %3886 = icmp eq i32 %3873, 0
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %30, align 1
  %3888 = lshr i32 %3873, 31
  %3889 = trunc i32 %3888 to i8
  store i8 %3889, i8* %33, align 1
  %3890 = xor i32 %3888, %3872
  %3891 = add nuw nsw i32 %3890, %3888
  %3892 = icmp eq i32 %3891, 2
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %39, align 1
  %3894 = sext i32 %3873 to i64
  %3895 = lshr i64 %3894, 32
  store i64 %3895, i64* %3310, align 8
  %3896 = load i32, i32* %ESI.i100, align 4
  %3897 = add i64 %3858, 17
  store i64 %3897, i64* %3, align 8
  %3898 = sext i32 %3896 to i64
  %3899 = shl nuw i64 %3895, 32
  %3900 = or i64 %3899, %3874
  %3901 = sdiv i64 %3900, %3898
  %3902 = shl i64 %3901, 32
  %3903 = ashr exact i64 %3902, 32
  %3904 = icmp eq i64 %3901, %3903
  br i1 %3904, label %3907, label %3905

; <label>:3905:                                   ; preds = %routine_idivl__esi.exit1442
  %3906 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3897, %struct.Memory* %3845)
  %.pre127 = load i16, i16* %AX.i1861, align 2
  %.pre128 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1411

; <label>:3907:                                   ; preds = %routine_idivl__esi.exit1442
  %3908 = srem i64 %3900, %3898
  %3909 = and i64 %3901, 4294967295
  store i64 %3909, i64* %RAX.i732, align 8
  %3910 = and i64 %3908, 4294967295
  store i64 %3910, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3911 = trunc i64 %3901 to i16
  br label %routine_idivl__esi.exit1411

routine_idivl__esi.exit1411:                      ; preds = %3907, %3905
  %3912 = phi i64 [ %.pre128, %3905 ], [ %3897, %3907 ]
  %3913 = phi i16 [ %.pre127, %3905 ], [ %3911, %3907 ]
  %3914 = phi %struct.Memory* [ %3906, %3905 ], [ %3845, %3907 ]
  store i16 %3913, i16* %DI.i1631, align 2
  %3915 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3915, i64* %R8.i187, align 8
  %3916 = add i64 %3915, 1822
  %3917 = add i64 %3912, 19
  store i64 %3917, i64* %3, align 8
  %3918 = inttoptr i64 %3916 to i16*
  store i16 %3913, i16* %3918, align 2
  %3919 = load i64, i64* %RBP.i, align 8
  %3920 = add i64 %3919, -92
  %3921 = load i64, i64* %3, align 8
  %3922 = add i64 %3921, 3
  store i64 %3922, i64* %3, align 8
  %3923 = inttoptr i64 %3920 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RAX.i732, align 8
  %3926 = add i64 %3919, -88
  %3927 = add i64 %3921, 6
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = add i32 %3929, %3924
  %3931 = lshr i32 %3930, 31
  %3932 = add i32 %3930, 1
  %3933 = zext i32 %3932 to i64
  store i64 %3933, i64* %RAX.i732, align 8
  %3934 = icmp eq i32 %3930, -1
  %3935 = icmp eq i32 %3932, 0
  %3936 = or i1 %3934, %3935
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = and i32 %3932, 255
  %3939 = tail call i32 @llvm.ctpop.i32(i32 %3938)
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  %3942 = xor i8 %3941, 1
  store i8 %3942, i8* %21, align 1
  %3943 = xor i32 %3932, %3930
  %3944 = lshr i32 %3943, 4
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  store i8 %3946, i8* %27, align 1
  %3947 = zext i1 %3935 to i8
  store i8 %3947, i8* %30, align 1
  %3948 = lshr i32 %3932, 31
  %3949 = trunc i32 %3948 to i8
  store i8 %3949, i8* %33, align 1
  %3950 = xor i32 %3948, %3931
  %3951 = add nuw nsw i32 %3950, %3948
  %3952 = icmp eq i32 %3951, 2
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %39, align 1
  %3954 = sext i32 %3932 to i64
  %3955 = lshr i64 %3954, 32
  store i64 %3955, i64* %3310, align 8
  %3956 = load i32, i32* %ECX.i2686, align 4
  %3957 = add i64 %3921, 12
  store i64 %3957, i64* %3, align 8
  %3958 = sext i32 %3956 to i64
  %3959 = shl nuw i64 %3955, 32
  %3960 = or i64 %3959, %3933
  %3961 = sdiv i64 %3960, %3958
  %3962 = shl i64 %3961, 32
  %3963 = ashr exact i64 %3962, 32
  %3964 = icmp eq i64 %3961, %3963
  br i1 %3964, label %3967, label %3965

; <label>:3965:                                   ; preds = %routine_idivl__esi.exit1411
  %3966 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3957, %struct.Memory* %3914)
  %.pre129 = load i16, i16* %AX.i1861, align 2
  %.pre130 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1388

; <label>:3967:                                   ; preds = %routine_idivl__esi.exit1411
  %3968 = srem i64 %3960, %3958
  %3969 = and i64 %3961, 4294967295
  store i64 %3969, i64* %RAX.i732, align 8
  %3970 = and i64 %3968, 4294967295
  store i64 %3970, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3971 = trunc i64 %3961 to i16
  br label %routine_idivl__ecx.exit1388

routine_idivl__ecx.exit1388:                      ; preds = %3967, %3965
  %3972 = phi i64 [ %.pre130, %3965 ], [ %3957, %3967 ]
  %3973 = phi i16 [ %.pre129, %3965 ], [ %3971, %3967 ]
  %3974 = phi %struct.Memory* [ %3966, %3965 ], [ %3914, %3967 ]
  store i16 %3973, i16* %DI.i1631, align 2
  %3975 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3975, i64* %R8.i187, align 8
  %3976 = add i64 %3975, 3768
  %3977 = add i64 %3972, 19
  store i64 %3977, i64* %3, align 8
  %3978 = inttoptr i64 %3976 to i16*
  store i16 %3973, i16* %3978, align 2
  %3979 = load i64, i64* %RBP.i, align 8
  %3980 = add i64 %3979, -88
  %3981 = load i64, i64* %3, align 8
  %3982 = add i64 %3981, 3
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3980 to i32*
  %3984 = load i32, i32* %3983, align 4
  %3985 = zext i32 %3984 to i64
  store i64 %3985, i64* %RAX.i732, align 8
  %3986 = add i64 %3979, -84
  %3987 = add i64 %3981, 6
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3986 to i32*
  %3989 = load i32, i32* %3988, align 4
  %3990 = add i32 %3989, %3984
  %3991 = lshr i32 %3990, 31
  %3992 = add i32 %3990, 1
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RAX.i732, align 8
  %3994 = icmp eq i32 %3990, -1
  %3995 = icmp eq i32 %3992, 0
  %3996 = or i1 %3994, %3995
  %3997 = zext i1 %3996 to i8
  store i8 %3997, i8* %14, align 1
  %3998 = and i32 %3992, 255
  %3999 = tail call i32 @llvm.ctpop.i32(i32 %3998)
  %4000 = trunc i32 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = xor i8 %4001, 1
  store i8 %4002, i8* %21, align 1
  %4003 = xor i32 %3992, %3990
  %4004 = lshr i32 %4003, 4
  %4005 = trunc i32 %4004 to i8
  %4006 = and i8 %4005, 1
  store i8 %4006, i8* %27, align 1
  %4007 = zext i1 %3995 to i8
  store i8 %4007, i8* %30, align 1
  %4008 = lshr i32 %3992, 31
  %4009 = trunc i32 %4008 to i8
  store i8 %4009, i8* %33, align 1
  %4010 = xor i32 %4008, %3991
  %4011 = add nuw nsw i32 %4010, %4008
  %4012 = icmp eq i32 %4011, 2
  %4013 = zext i1 %4012 to i8
  store i8 %4013, i8* %39, align 1
  %4014 = sext i32 %3992 to i64
  %4015 = lshr i64 %4014, 32
  store i64 %4015, i64* %3310, align 8
  %4016 = load i32, i32* %ECX.i2686, align 4
  %4017 = add i64 %3981, 12
  store i64 %4017, i64* %3, align 8
  %4018 = sext i32 %4016 to i64
  %4019 = shl nuw i64 %4015, 32
  %4020 = or i64 %4019, %3993
  %4021 = sdiv i64 %4020, %4018
  %4022 = shl i64 %4021, 32
  %4023 = ashr exact i64 %4022, 32
  %4024 = icmp eq i64 %4021, %4023
  br i1 %4024, label %4027, label %4025

; <label>:4025:                                   ; preds = %routine_idivl__ecx.exit1388
  %4026 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4017, %struct.Memory* %3974)
  %.pre131 = load i16, i16* %AX.i1861, align 2
  %.pre132 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1366

; <label>:4027:                                   ; preds = %routine_idivl__ecx.exit1388
  %4028 = srem i64 %4020, %4018
  %4029 = and i64 %4021, 4294967295
  store i64 %4029, i64* %RAX.i732, align 8
  %4030 = and i64 %4028, 4294967295
  store i64 %4030, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4031 = trunc i64 %4021 to i16
  br label %routine_idivl__ecx.exit1366

routine_idivl__ecx.exit1366:                      ; preds = %4027, %4025
  %4032 = phi i64 [ %.pre132, %4025 ], [ %4017, %4027 ]
  %4033 = phi i16 [ %.pre131, %4025 ], [ %4031, %4027 ]
  %4034 = phi %struct.Memory* [ %4026, %4025 ], [ %3974, %4027 ]
  store i16 %4033, i16* %DI.i1631, align 2
  %4035 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4036 = add i64 %4035, 3832
  %4037 = add i64 %4032, 19
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i16*
  store i16 %4033, i16* %4038, align 2
  %4039 = load i64, i64* %3, align 8
  %4040 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4040, i64* %R8.i187, align 8
  %4041 = add i64 %4040, 3770
  %4042 = load i16, i16* %DI.i1631, align 2
  %4043 = add i64 %4039, 16
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4041 to i16*
  store i16 %4042, i16* %4044, align 2
  %4045 = load i64, i64* %RBP.i, align 8
  %4046 = add i64 %4045, -84
  %4047 = load i64, i64* %3, align 8
  %4048 = add i64 %4047, 3
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4046 to i32*
  %4050 = load i32, i32* %4049, align 4
  %4051 = zext i32 %4050 to i64
  store i64 %4051, i64* %RAX.i732, align 8
  %4052 = add i64 %4045, -80
  %4053 = add i64 %4047, 6
  store i64 %4053, i64* %3, align 8
  %4054 = inttoptr i64 %4052 to i32*
  %4055 = load i32, i32* %4054, align 4
  %4056 = add i32 %4055, %4050
  %4057 = lshr i32 %4056, 31
  %4058 = add i32 %4056, 1
  %4059 = zext i32 %4058 to i64
  store i64 %4059, i64* %RAX.i732, align 8
  %4060 = icmp eq i32 %4056, -1
  %4061 = icmp eq i32 %4058, 0
  %4062 = or i1 %4060, %4061
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %14, align 1
  %4064 = and i32 %4058, 255
  %4065 = tail call i32 @llvm.ctpop.i32(i32 %4064)
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  store i8 %4068, i8* %21, align 1
  %4069 = xor i32 %4058, %4056
  %4070 = lshr i32 %4069, 4
  %4071 = trunc i32 %4070 to i8
  %4072 = and i8 %4071, 1
  store i8 %4072, i8* %27, align 1
  %4073 = zext i1 %4061 to i8
  store i8 %4073, i8* %30, align 1
  %4074 = lshr i32 %4058, 31
  %4075 = trunc i32 %4074 to i8
  store i8 %4075, i8* %33, align 1
  %4076 = xor i32 %4074, %4057
  %4077 = add nuw nsw i32 %4076, %4074
  %4078 = icmp eq i32 %4077, 2
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %39, align 1
  %4080 = sext i32 %4058 to i64
  %4081 = lshr i64 %4080, 32
  store i64 %4081, i64* %3310, align 8
  %4082 = load i32, i32* %ECX.i2686, align 4
  %4083 = add i64 %4047, 12
  store i64 %4083, i64* %3, align 8
  %4084 = sext i32 %4082 to i64
  %4085 = shl nuw i64 %4081, 32
  %4086 = or i64 %4085, %4059
  %4087 = sdiv i64 %4086, %4084
  %4088 = shl i64 %4087, 32
  %4089 = ashr exact i64 %4088, 32
  %4090 = icmp eq i64 %4087, %4089
  br i1 %4090, label %4093, label %4091

; <label>:4091:                                   ; preds = %routine_idivl__ecx.exit1366
  %4092 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4083, %struct.Memory* %4034)
  %.pre133 = load i16, i16* %AX.i1861, align 2
  %.pre134 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1340

; <label>:4093:                                   ; preds = %routine_idivl__ecx.exit1366
  %4094 = srem i64 %4086, %4084
  %4095 = and i64 %4087, 4294967295
  store i64 %4095, i64* %RAX.i732, align 8
  %4096 = and i64 %4094, 4294967295
  store i64 %4096, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4097 = trunc i64 %4087 to i16
  br label %routine_idivl__ecx.exit1340

routine_idivl__ecx.exit1340:                      ; preds = %4093, %4091
  %4098 = phi i64 [ %.pre134, %4091 ], [ %4083, %4093 ]
  %4099 = phi i16 [ %.pre133, %4091 ], [ %4097, %4093 ]
  %4100 = phi %struct.Memory* [ %4092, %4091 ], [ %4034, %4093 ]
  store i16 %4099, i16* %DI.i1631, align 2
  %4101 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4102 = add i64 %4101, 3834
  %4103 = add i64 %4098, 19
  store i64 %4103, i64* %3, align 8
  %4104 = inttoptr i64 %4102 to i16*
  store i16 %4099, i16* %4104, align 2
  %4105 = load i64, i64* %3, align 8
  %4106 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4106, i64* %R8.i187, align 8
  %4107 = add i64 %4106, 3772
  %4108 = load i16, i16* %DI.i1631, align 2
  %4109 = add i64 %4105, 16
  store i64 %4109, i64* %3, align 8
  %4110 = inttoptr i64 %4107 to i16*
  store i16 %4108, i16* %4110, align 2
  %4111 = load i64, i64* %RBP.i, align 8
  %4112 = add i64 %4111, -80
  %4113 = load i64, i64* %3, align 8
  %4114 = add i64 %4113, 3
  store i64 %4114, i64* %3, align 8
  %4115 = inttoptr i64 %4112 to i32*
  %4116 = load i32, i32* %4115, align 4
  %4117 = zext i32 %4116 to i64
  store i64 %4117, i64* %RAX.i732, align 8
  %4118 = add i64 %4111, -76
  %4119 = add i64 %4113, 6
  store i64 %4119, i64* %3, align 8
  %4120 = inttoptr i64 %4118 to i32*
  %4121 = load i32, i32* %4120, align 4
  %4122 = add i32 %4121, %4116
  %4123 = lshr i32 %4122, 31
  %4124 = add i32 %4122, 1
  %4125 = zext i32 %4124 to i64
  store i64 %4125, i64* %RAX.i732, align 8
  %4126 = icmp eq i32 %4122, -1
  %4127 = icmp eq i32 %4124, 0
  %4128 = or i1 %4126, %4127
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %14, align 1
  %4130 = and i32 %4124, 255
  %4131 = tail call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  store i8 %4134, i8* %21, align 1
  %4135 = xor i32 %4124, %4122
  %4136 = lshr i32 %4135, 4
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  store i8 %4138, i8* %27, align 1
  %4139 = zext i1 %4127 to i8
  store i8 %4139, i8* %30, align 1
  %4140 = lshr i32 %4124, 31
  %4141 = trunc i32 %4140 to i8
  store i8 %4141, i8* %33, align 1
  %4142 = xor i32 %4140, %4123
  %4143 = add nuw nsw i32 %4142, %4140
  %4144 = icmp eq i32 %4143, 2
  %4145 = zext i1 %4144 to i8
  store i8 %4145, i8* %39, align 1
  %4146 = sext i32 %4124 to i64
  %4147 = lshr i64 %4146, 32
  store i64 %4147, i64* %3310, align 8
  %4148 = load i32, i32* %ECX.i2686, align 4
  %4149 = add i64 %4113, 12
  store i64 %4149, i64* %3, align 8
  %4150 = sext i32 %4148 to i64
  %4151 = shl nuw i64 %4147, 32
  %4152 = or i64 %4151, %4125
  %4153 = sdiv i64 %4152, %4150
  %4154 = shl i64 %4153, 32
  %4155 = ashr exact i64 %4154, 32
  %4156 = icmp eq i64 %4153, %4155
  br i1 %4156, label %4159, label %4157

; <label>:4157:                                   ; preds = %routine_idivl__ecx.exit1340
  %4158 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4149, %struct.Memory* %4100)
  %.pre135 = load i16, i16* %AX.i1861, align 2
  %.pre136 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1312

; <label>:4159:                                   ; preds = %routine_idivl__ecx.exit1340
  %4160 = srem i64 %4152, %4150
  %4161 = and i64 %4153, 4294967295
  store i64 %4161, i64* %RAX.i732, align 8
  %4162 = and i64 %4160, 4294967295
  store i64 %4162, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4163 = trunc i64 %4153 to i16
  br label %routine_idivl__ecx.exit1312

routine_idivl__ecx.exit1312:                      ; preds = %4159, %4157
  %4164 = phi i64 [ %.pre136, %4157 ], [ %4149, %4159 ]
  %4165 = phi i16 [ %.pre135, %4157 ], [ %4163, %4159 ]
  %4166 = phi %struct.Memory* [ %4158, %4157 ], [ %4100, %4159 ]
  store i16 %4165, i16* %DI.i1631, align 2
  %4167 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4168 = add i64 %4167, 3836
  %4169 = add i64 %4164, 19
  store i64 %4169, i64* %3, align 8
  %4170 = inttoptr i64 %4168 to i16*
  store i16 %4165, i16* %4170, align 2
  %4171 = load i64, i64* %3, align 8
  %4172 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4172, i64* %R8.i187, align 8
  %4173 = add i64 %4172, 3774
  %4174 = load i16, i16* %DI.i1631, align 2
  %4175 = add i64 %4171, 16
  store i64 %4175, i64* %3, align 8
  %4176 = inttoptr i64 %4173 to i16*
  store i16 %4174, i16* %4176, align 2
  %4177 = load i64, i64* %RBP.i, align 8
  %4178 = add i64 %4177, -76
  %4179 = load i64, i64* %3, align 8
  %4180 = add i64 %4179, 3
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4178 to i32*
  %4182 = load i32, i32* %4181, align 4
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i732, align 8
  %4184 = add i64 %4177, -72
  %4185 = add i64 %4179, 6
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i32*
  %4187 = load i32, i32* %4186, align 4
  %4188 = add i32 %4187, %4182
  %4189 = lshr i32 %4188, 31
  %4190 = add i32 %4188, 1
  %4191 = zext i32 %4190 to i64
  store i64 %4191, i64* %RAX.i732, align 8
  %4192 = icmp eq i32 %4188, -1
  %4193 = icmp eq i32 %4190, 0
  %4194 = or i1 %4192, %4193
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %14, align 1
  %4196 = and i32 %4190, 255
  %4197 = tail call i32 @llvm.ctpop.i32(i32 %4196)
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = xor i8 %4199, 1
  store i8 %4200, i8* %21, align 1
  %4201 = xor i32 %4190, %4188
  %4202 = lshr i32 %4201, 4
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  store i8 %4204, i8* %27, align 1
  %4205 = zext i1 %4193 to i8
  store i8 %4205, i8* %30, align 1
  %4206 = lshr i32 %4190, 31
  %4207 = trunc i32 %4206 to i8
  store i8 %4207, i8* %33, align 1
  %4208 = xor i32 %4206, %4189
  %4209 = add nuw nsw i32 %4208, %4206
  %4210 = icmp eq i32 %4209, 2
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %39, align 1
  %4212 = sext i32 %4190 to i64
  %4213 = lshr i64 %4212, 32
  store i64 %4213, i64* %3310, align 8
  %4214 = load i32, i32* %ECX.i2686, align 4
  %4215 = add i64 %4179, 12
  store i64 %4215, i64* %3, align 8
  %4216 = sext i32 %4214 to i64
  %4217 = shl nuw i64 %4213, 32
  %4218 = or i64 %4217, %4191
  %4219 = sdiv i64 %4218, %4216
  %4220 = shl i64 %4219, 32
  %4221 = ashr exact i64 %4220, 32
  %4222 = icmp eq i64 %4219, %4221
  br i1 %4222, label %4225, label %4223

; <label>:4223:                                   ; preds = %routine_idivl__ecx.exit1312
  %4224 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4215, %struct.Memory* %4166)
  %.pre137 = load i16, i16* %AX.i1861, align 2
  %.pre138 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1285

; <label>:4225:                                   ; preds = %routine_idivl__ecx.exit1312
  %4226 = srem i64 %4218, %4216
  %4227 = and i64 %4219, 4294967295
  store i64 %4227, i64* %RAX.i732, align 8
  %4228 = and i64 %4226, 4294967295
  store i64 %4228, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4229 = trunc i64 %4219 to i16
  br label %routine_idivl__ecx.exit1285

routine_idivl__ecx.exit1285:                      ; preds = %4225, %4223
  %4230 = phi i64 [ %.pre138, %4223 ], [ %4215, %4225 ]
  %4231 = phi i16 [ %.pre137, %4223 ], [ %4229, %4225 ]
  %4232 = phi %struct.Memory* [ %4224, %4223 ], [ %4166, %4225 ]
  store i16 %4231, i16* %DI.i1631, align 2
  %4233 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4233, i64* %R8.i187, align 8
  %4234 = add i64 %4233, 3838
  %4235 = add i64 %4230, 19
  store i64 %4235, i64* %3, align 8
  %4236 = inttoptr i64 %4234 to i16*
  store i16 %4231, i16* %4236, align 2
  %4237 = load i64, i64* %RBP.i, align 8
  %4238 = add i64 %4237, -92
  %4239 = load i64, i64* %3, align 8
  %4240 = add i64 %4239, 3
  store i64 %4240, i64* %3, align 8
  %4241 = inttoptr i64 %4238 to i32*
  %4242 = load i32, i32* %4241, align 4
  %4243 = zext i32 %4242 to i64
  store i64 %4243, i64* %RAX.i732, align 8
  %4244 = add i64 %4237, -88
  %4245 = add i64 %4239, 6
  store i64 %4245, i64* %3, align 8
  %4246 = inttoptr i64 %4244 to i32*
  %4247 = load i32, i32* %4246, align 4
  %4248 = shl i32 %4247, 1
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RCX.i163, align 8
  %4250 = add i32 %4248, %4242
  %4251 = zext i32 %4250 to i64
  store i64 %4251, i64* %RAX.i732, align 8
  %4252 = icmp ult i32 %4250, %4242
  %4253 = icmp ult i32 %4250, %4248
  %4254 = or i1 %4252, %4253
  %4255 = zext i1 %4254 to i8
  store i8 %4255, i8* %14, align 1
  %4256 = and i32 %4250, 255
  %4257 = tail call i32 @llvm.ctpop.i32(i32 %4256)
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  %4260 = xor i8 %4259, 1
  store i8 %4260, i8* %21, align 1
  %4261 = xor i32 %4248, %4242
  %4262 = xor i32 %4261, %4250
  %4263 = lshr i32 %4262, 4
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  store i8 %4265, i8* %27, align 1
  %4266 = icmp eq i32 %4250, 0
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %30, align 1
  %4268 = lshr i32 %4250, 31
  %4269 = trunc i32 %4268 to i8
  store i8 %4269, i8* %33, align 1
  %4270 = lshr i32 %4242, 31
  %4271 = lshr i32 %4247, 30
  %4272 = and i32 %4271, 1
  %4273 = xor i32 %4268, %4270
  %4274 = xor i32 %4268, %4272
  %4275 = add nuw nsw i32 %4273, %4274
  %4276 = icmp eq i32 %4275, 2
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %39, align 1
  %4278 = add i64 %4237, -84
  %4279 = add i64 %4239, 13
  store i64 %4279, i64* %3, align 8
  %4280 = inttoptr i64 %4278 to i32*
  %4281 = load i32, i32* %4280, align 4
  %4282 = add i32 %4281, %4250
  %4283 = lshr i32 %4282, 31
  %4284 = add i32 %4282, 2
  %4285 = zext i32 %4284 to i64
  store i64 %4285, i64* %RAX.i732, align 8
  %4286 = icmp ugt i32 %4282, -3
  %4287 = zext i1 %4286 to i8
  store i8 %4287, i8* %14, align 1
  %4288 = and i32 %4284, 255
  %4289 = tail call i32 @llvm.ctpop.i32(i32 %4288)
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = xor i8 %4291, 1
  store i8 %4292, i8* %21, align 1
  %4293 = xor i32 %4284, %4282
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
  %4301 = xor i32 %4299, %4283
  %4302 = add nuw nsw i32 %4301, %4299
  %4303 = icmp eq i32 %4302, 2
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %39, align 1
  %4305 = sext i32 %4284 to i64
  %4306 = lshr i64 %4305, 32
  store i64 %4306, i64* %3310, align 8
  %4307 = load i32, i32* %ESI.i100, align 4
  %4308 = add i64 %4239, 19
  store i64 %4308, i64* %3, align 8
  %4309 = sext i32 %4307 to i64
  %4310 = shl nuw i64 %4306, 32
  %4311 = or i64 %4310, %4285
  %4312 = sdiv i64 %4311, %4309
  %4313 = shl i64 %4312, 32
  %4314 = ashr exact i64 %4313, 32
  %4315 = icmp eq i64 %4312, %4314
  br i1 %4315, label %4318, label %4316

; <label>:4316:                                   ; preds = %routine_idivl__ecx.exit1285
  %4317 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4308, %struct.Memory* %4232)
  %.pre139 = load i16, i16* %AX.i1861, align 2
  %.pre140 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1254

; <label>:4318:                                   ; preds = %routine_idivl__ecx.exit1285
  %4319 = srem i64 %4311, %4309
  %4320 = and i64 %4312, 4294967295
  store i64 %4320, i64* %RAX.i732, align 8
  %4321 = and i64 %4319, 4294967295
  store i64 %4321, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4322 = trunc i64 %4312 to i16
  br label %routine_idivl__esi.exit1254

routine_idivl__esi.exit1254:                      ; preds = %4318, %4316
  %4323 = phi i64 [ %.pre140, %4316 ], [ %4308, %4318 ]
  %4324 = phi i16 [ %.pre139, %4316 ], [ %4322, %4318 ]
  %4325 = phi %struct.Memory* [ %4317, %4316 ], [ %4232, %4318 ]
  store i16 %4324, i16* %DI.i1631, align 2
  %4326 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4326, i64* %R8.i187, align 8
  %4327 = add i64 %4326, 3800
  %4328 = add i64 %4323, 19
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i16*
  store i16 %4324, i16* %4329, align 2
  %4330 = load i64, i64* %RBP.i, align 8
  %4331 = add i64 %4330, -88
  %4332 = load i64, i64* %3, align 8
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RAX.i732, align 8
  %4337 = add i64 %4330, -84
  %4338 = add i64 %4332, 6
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = shl i32 %4340, 1
  %4342 = zext i32 %4341 to i64
  store i64 %4342, i64* %RCX.i163, align 8
  %4343 = add i32 %4341, %4335
  %4344 = zext i32 %4343 to i64
  store i64 %4344, i64* %RAX.i732, align 8
  %4345 = icmp ult i32 %4343, %4335
  %4346 = icmp ult i32 %4343, %4341
  %4347 = or i1 %4345, %4346
  %4348 = zext i1 %4347 to i8
  store i8 %4348, i8* %14, align 1
  %4349 = and i32 %4343, 255
  %4350 = tail call i32 @llvm.ctpop.i32(i32 %4349)
  %4351 = trunc i32 %4350 to i8
  %4352 = and i8 %4351, 1
  %4353 = xor i8 %4352, 1
  store i8 %4353, i8* %21, align 1
  %4354 = xor i32 %4341, %4335
  %4355 = xor i32 %4354, %4343
  %4356 = lshr i32 %4355, 4
  %4357 = trunc i32 %4356 to i8
  %4358 = and i8 %4357, 1
  store i8 %4358, i8* %27, align 1
  %4359 = icmp eq i32 %4343, 0
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %30, align 1
  %4361 = lshr i32 %4343, 31
  %4362 = trunc i32 %4361 to i8
  store i8 %4362, i8* %33, align 1
  %4363 = lshr i32 %4335, 31
  %4364 = lshr i32 %4340, 30
  %4365 = and i32 %4364, 1
  %4366 = xor i32 %4361, %4363
  %4367 = xor i32 %4361, %4365
  %4368 = add nuw nsw i32 %4366, %4367
  %4369 = icmp eq i32 %4368, 2
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %39, align 1
  %4371 = add i64 %4330, -80
  %4372 = add i64 %4332, 13
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4371 to i32*
  %4374 = load i32, i32* %4373, align 4
  %4375 = add i32 %4374, %4343
  %4376 = lshr i32 %4375, 31
  %4377 = add i32 %4375, 2
  %4378 = zext i32 %4377 to i64
  store i64 %4378, i64* %RAX.i732, align 8
  %4379 = icmp ugt i32 %4375, -3
  %4380 = zext i1 %4379 to i8
  store i8 %4380, i8* %14, align 1
  %4381 = and i32 %4377, 255
  %4382 = tail call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  store i8 %4385, i8* %21, align 1
  %4386 = xor i32 %4377, %4375
  %4387 = lshr i32 %4386, 4
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  store i8 %4389, i8* %27, align 1
  %4390 = icmp eq i32 %4377, 0
  %4391 = zext i1 %4390 to i8
  store i8 %4391, i8* %30, align 1
  %4392 = lshr i32 %4377, 31
  %4393 = trunc i32 %4392 to i8
  store i8 %4393, i8* %33, align 1
  %4394 = xor i32 %4392, %4376
  %4395 = add nuw nsw i32 %4394, %4392
  %4396 = icmp eq i32 %4395, 2
  %4397 = zext i1 %4396 to i8
  store i8 %4397, i8* %39, align 1
  %4398 = sext i32 %4377 to i64
  %4399 = lshr i64 %4398, 32
  store i64 %4399, i64* %3310, align 8
  %4400 = load i32, i32* %ESI.i100, align 4
  %4401 = add i64 %4332, 19
  store i64 %4401, i64* %3, align 8
  %4402 = sext i32 %4400 to i64
  %4403 = shl nuw i64 %4399, 32
  %4404 = or i64 %4403, %4378
  %4405 = sdiv i64 %4404, %4402
  %4406 = shl i64 %4405, 32
  %4407 = ashr exact i64 %4406, 32
  %4408 = icmp eq i64 %4405, %4407
  br i1 %4408, label %4411, label %4409

; <label>:4409:                                   ; preds = %routine_idivl__esi.exit1254
  %4410 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4401, %struct.Memory* %4325)
  %.pre141 = load i16, i16* %AX.i1861, align 2
  %.pre142 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1225

; <label>:4411:                                   ; preds = %routine_idivl__esi.exit1254
  %4412 = srem i64 %4404, %4402
  %4413 = and i64 %4405, 4294967295
  store i64 %4413, i64* %RAX.i732, align 8
  %4414 = and i64 %4412, 4294967295
  store i64 %4414, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4415 = trunc i64 %4405 to i16
  br label %routine_idivl__esi.exit1225

routine_idivl__esi.exit1225:                      ; preds = %4411, %4409
  %4416 = phi i64 [ %.pre142, %4409 ], [ %4401, %4411 ]
  %4417 = phi i16 [ %.pre141, %4409 ], [ %4415, %4411 ]
  %4418 = phi %struct.Memory* [ %4410, %4409 ], [ %4325, %4411 ]
  store i16 %4417, i16* %DI.i1631, align 2
  %4419 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4420 = add i64 %4419, 3864
  %4421 = add i64 %4416, 19
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to i16*
  store i16 %4417, i16* %4422, align 2
  %4423 = load i64, i64* %3, align 8
  %4424 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4424, i64* %R8.i187, align 8
  %4425 = add i64 %4424, 3802
  %4426 = load i16, i16* %DI.i1631, align 2
  %4427 = add i64 %4423, 16
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4425 to i16*
  store i16 %4426, i16* %4428, align 2
  %4429 = load i64, i64* %RBP.i, align 8
  %4430 = add i64 %4429, -84
  %4431 = load i64, i64* %3, align 8
  %4432 = add i64 %4431, 3
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4430 to i32*
  %4434 = load i32, i32* %4433, align 4
  %4435 = zext i32 %4434 to i64
  store i64 %4435, i64* %RAX.i732, align 8
  %4436 = add i64 %4429, -80
  %4437 = add i64 %4431, 6
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4436 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = shl i32 %4439, 1
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %RCX.i163, align 8
  %4442 = add i32 %4440, %4434
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RAX.i732, align 8
  %4444 = icmp ult i32 %4442, %4434
  %4445 = icmp ult i32 %4442, %4440
  %4446 = or i1 %4444, %4445
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %14, align 1
  %4448 = and i32 %4442, 255
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %21, align 1
  %4453 = xor i32 %4440, %4434
  %4454 = xor i32 %4453, %4442
  %4455 = lshr i32 %4454, 4
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %27, align 1
  %4458 = icmp eq i32 %4442, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %30, align 1
  %4460 = lshr i32 %4442, 31
  %4461 = trunc i32 %4460 to i8
  store i8 %4461, i8* %33, align 1
  %4462 = lshr i32 %4434, 31
  %4463 = lshr i32 %4439, 30
  %4464 = and i32 %4463, 1
  %4465 = xor i32 %4460, %4462
  %4466 = xor i32 %4460, %4464
  %4467 = add nuw nsw i32 %4465, %4466
  %4468 = icmp eq i32 %4467, 2
  %4469 = zext i1 %4468 to i8
  store i8 %4469, i8* %39, align 1
  %4470 = add i64 %4429, -76
  %4471 = add i64 %4431, 13
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i32*
  %4473 = load i32, i32* %4472, align 4
  %4474 = add i32 %4473, %4442
  %4475 = lshr i32 %4474, 31
  %4476 = add i32 %4474, 2
  %4477 = zext i32 %4476 to i64
  store i64 %4477, i64* %RAX.i732, align 8
  %4478 = icmp ugt i32 %4474, -3
  %4479 = zext i1 %4478 to i8
  store i8 %4479, i8* %14, align 1
  %4480 = and i32 %4476, 255
  %4481 = tail call i32 @llvm.ctpop.i32(i32 %4480)
  %4482 = trunc i32 %4481 to i8
  %4483 = and i8 %4482, 1
  %4484 = xor i8 %4483, 1
  store i8 %4484, i8* %21, align 1
  %4485 = xor i32 %4476, %4474
  %4486 = lshr i32 %4485, 4
  %4487 = trunc i32 %4486 to i8
  %4488 = and i8 %4487, 1
  store i8 %4488, i8* %27, align 1
  %4489 = icmp eq i32 %4476, 0
  %4490 = zext i1 %4489 to i8
  store i8 %4490, i8* %30, align 1
  %4491 = lshr i32 %4476, 31
  %4492 = trunc i32 %4491 to i8
  store i8 %4492, i8* %33, align 1
  %4493 = xor i32 %4491, %4475
  %4494 = add nuw nsw i32 %4493, %4491
  %4495 = icmp eq i32 %4494, 2
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %39, align 1
  %4497 = sext i32 %4476 to i64
  %4498 = lshr i64 %4497, 32
  store i64 %4498, i64* %3310, align 8
  %4499 = load i32, i32* %ESI.i100, align 4
  %4500 = add i64 %4431, 19
  store i64 %4500, i64* %3, align 8
  %4501 = sext i32 %4499 to i64
  %4502 = shl nuw i64 %4498, 32
  %4503 = or i64 %4502, %4477
  %4504 = sdiv i64 %4503, %4501
  %4505 = shl i64 %4504, 32
  %4506 = ashr exact i64 %4505, 32
  %4507 = icmp eq i64 %4504, %4506
  br i1 %4507, label %4510, label %4508

; <label>:4508:                                   ; preds = %routine_idivl__esi.exit1225
  %4509 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4500, %struct.Memory* %4418)
  %.pre143 = load i16, i16* %AX.i1861, align 2
  %.pre144 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1189

; <label>:4510:                                   ; preds = %routine_idivl__esi.exit1225
  %4511 = srem i64 %4503, %4501
  %4512 = and i64 %4504, 4294967295
  store i64 %4512, i64* %RAX.i732, align 8
  %4513 = and i64 %4511, 4294967295
  store i64 %4513, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4514 = trunc i64 %4504 to i16
  br label %routine_idivl__esi.exit1189

routine_idivl__esi.exit1189:                      ; preds = %4510, %4508
  %4515 = phi i64 [ %.pre144, %4508 ], [ %4500, %4510 ]
  %4516 = phi i16 [ %.pre143, %4508 ], [ %4514, %4510 ]
  %4517 = phi %struct.Memory* [ %4509, %4508 ], [ %4418, %4510 ]
  store i16 %4516, i16* %DI.i1631, align 2
  %4518 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4519 = add i64 %4518, 3866
  %4520 = add i64 %4515, 19
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i16*
  store i16 %4516, i16* %4521, align 2
  %4522 = load i64, i64* %3, align 8
  %4523 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4523, i64* %R8.i187, align 8
  %4524 = add i64 %4523, 3804
  %4525 = load i16, i16* %DI.i1631, align 2
  %4526 = add i64 %4522, 16
  store i64 %4526, i64* %3, align 8
  %4527 = inttoptr i64 %4524 to i16*
  store i16 %4525, i16* %4527, align 2
  %4528 = load i64, i64* %RBP.i, align 8
  %4529 = add i64 %4528, -80
  %4530 = load i64, i64* %3, align 8
  %4531 = add i64 %4530, 3
  store i64 %4531, i64* %3, align 8
  %4532 = inttoptr i64 %4529 to i32*
  %4533 = load i32, i32* %4532, align 4
  %4534 = zext i32 %4533 to i64
  store i64 %4534, i64* %RAX.i732, align 8
  %4535 = add i64 %4528, -76
  %4536 = add i64 %4530, 6
  store i64 %4536, i64* %3, align 8
  %4537 = inttoptr i64 %4535 to i32*
  %4538 = load i32, i32* %4537, align 4
  %4539 = shl i32 %4538, 1
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RCX.i163, align 8
  %4541 = add i32 %4539, %4533
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RAX.i732, align 8
  %4543 = icmp ult i32 %4541, %4533
  %4544 = icmp ult i32 %4541, %4539
  %4545 = or i1 %4543, %4544
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %14, align 1
  %4547 = and i32 %4541, 255
  %4548 = tail call i32 @llvm.ctpop.i32(i32 %4547)
  %4549 = trunc i32 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = xor i8 %4550, 1
  store i8 %4551, i8* %21, align 1
  %4552 = xor i32 %4539, %4533
  %4553 = xor i32 %4552, %4541
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  store i8 %4556, i8* %27, align 1
  %4557 = icmp eq i32 %4541, 0
  %4558 = zext i1 %4557 to i8
  store i8 %4558, i8* %30, align 1
  %4559 = lshr i32 %4541, 31
  %4560 = trunc i32 %4559 to i8
  store i8 %4560, i8* %33, align 1
  %4561 = lshr i32 %4533, 31
  %4562 = lshr i32 %4538, 30
  %4563 = and i32 %4562, 1
  %4564 = xor i32 %4559, %4561
  %4565 = xor i32 %4559, %4563
  %4566 = add nuw nsw i32 %4564, %4565
  %4567 = icmp eq i32 %4566, 2
  %4568 = zext i1 %4567 to i8
  store i8 %4568, i8* %39, align 1
  %4569 = add i64 %4528, -72
  %4570 = add i64 %4530, 13
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = add i32 %4572, %4541
  %4574 = lshr i32 %4573, 31
  %4575 = add i32 %4573, 2
  %4576 = zext i32 %4575 to i64
  store i64 %4576, i64* %RAX.i732, align 8
  %4577 = icmp ugt i32 %4573, -3
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %14, align 1
  %4579 = and i32 %4575, 255
  %4580 = tail call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  store i8 %4583, i8* %21, align 1
  %4584 = xor i32 %4575, %4573
  %4585 = lshr i32 %4584, 4
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  store i8 %4587, i8* %27, align 1
  %4588 = icmp eq i32 %4575, 0
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %30, align 1
  %4590 = lshr i32 %4575, 31
  %4591 = trunc i32 %4590 to i8
  store i8 %4591, i8* %33, align 1
  %4592 = xor i32 %4590, %4574
  %4593 = add nuw nsw i32 %4592, %4590
  %4594 = icmp eq i32 %4593, 2
  %4595 = zext i1 %4594 to i8
  store i8 %4595, i8* %39, align 1
  %4596 = sext i32 %4575 to i64
  %4597 = lshr i64 %4596, 32
  store i64 %4597, i64* %3310, align 8
  %4598 = load i32, i32* %ESI.i100, align 4
  %4599 = add i64 %4530, 19
  store i64 %4599, i64* %3, align 8
  %4600 = sext i32 %4598 to i64
  %4601 = shl nuw i64 %4597, 32
  %4602 = or i64 %4601, %4576
  %4603 = sdiv i64 %4602, %4600
  %4604 = shl i64 %4603, 32
  %4605 = ashr exact i64 %4604, 32
  %4606 = icmp eq i64 %4603, %4605
  br i1 %4606, label %4609, label %4607

; <label>:4607:                                   ; preds = %routine_idivl__esi.exit1189
  %4608 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4599, %struct.Memory* %4517)
  %.pre145 = load i16, i16* %AX.i1861, align 2
  %.pre146 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1153

; <label>:4609:                                   ; preds = %routine_idivl__esi.exit1189
  %4610 = srem i64 %4602, %4600
  %4611 = and i64 %4603, 4294967295
  store i64 %4611, i64* %RAX.i732, align 8
  %4612 = and i64 %4610, 4294967295
  store i64 %4612, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4613 = trunc i64 %4603 to i16
  br label %routine_idivl__esi.exit1153

routine_idivl__esi.exit1153:                      ; preds = %4609, %4607
  %4614 = phi i64 [ %.pre146, %4607 ], [ %4599, %4609 ]
  %4615 = phi i16 [ %.pre145, %4607 ], [ %4613, %4609 ]
  %4616 = phi %struct.Memory* [ %4608, %4607 ], [ %4517, %4609 ]
  store i16 %4615, i16* %DI.i1631, align 2
  %4617 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4618 = add i64 %4617, 3868
  %4619 = add i64 %4614, 19
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i16*
  store i16 %4615, i16* %4620, align 2
  %4621 = load i64, i64* %3, align 8
  %4622 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4622, i64* %R8.i187, align 8
  %4623 = add i64 %4622, 3806
  %4624 = load i16, i16* %DI.i1631, align 2
  %4625 = add i64 %4621, 16
  store i64 %4625, i64* %3, align 8
  %4626 = inttoptr i64 %4623 to i16*
  store i16 %4624, i16* %4626, align 2
  %4627 = load i64, i64* %RBP.i, align 8
  %4628 = add i64 %4627, -76
  %4629 = load i64, i64* %3, align 8
  %4630 = add i64 %4629, 3
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4628 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i732, align 8
  %4634 = add i64 %4627, -72
  %4635 = add i64 %4629, 6
  store i64 %4635, i64* %3, align 8
  %4636 = inttoptr i64 %4634 to i32*
  %4637 = load i32, i32* %4636, align 4
  %4638 = shl i32 %4637, 1
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RCX.i163, align 8
  %4640 = add i32 %4638, %4632
  %4641 = zext i32 %4640 to i64
  store i64 %4641, i64* %RAX.i732, align 8
  %4642 = icmp ult i32 %4640, %4632
  %4643 = icmp ult i32 %4640, %4638
  %4644 = or i1 %4642, %4643
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %14, align 1
  %4646 = and i32 %4640, 255
  %4647 = tail call i32 @llvm.ctpop.i32(i32 %4646)
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = xor i8 %4649, 1
  store i8 %4650, i8* %21, align 1
  %4651 = xor i32 %4638, %4632
  %4652 = xor i32 %4651, %4640
  %4653 = lshr i32 %4652, 4
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  store i8 %4655, i8* %27, align 1
  %4656 = icmp eq i32 %4640, 0
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %30, align 1
  %4658 = lshr i32 %4640, 31
  %4659 = trunc i32 %4658 to i8
  store i8 %4659, i8* %33, align 1
  %4660 = lshr i32 %4632, 31
  %4661 = lshr i32 %4637, 30
  %4662 = and i32 %4661, 1
  %4663 = xor i32 %4658, %4660
  %4664 = xor i32 %4658, %4662
  %4665 = add nuw nsw i32 %4663, %4664
  %4666 = icmp eq i32 %4665, 2
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %39, align 1
  %4668 = add i64 %4627, -68
  %4669 = add i64 %4629, 13
  store i64 %4669, i64* %3, align 8
  %4670 = inttoptr i64 %4668 to i32*
  %4671 = load i32, i32* %4670, align 4
  %4672 = add i32 %4671, %4640
  %4673 = lshr i32 %4672, 31
  %4674 = add i32 %4672, 2
  %4675 = zext i32 %4674 to i64
  store i64 %4675, i64* %RAX.i732, align 8
  %4676 = icmp ugt i32 %4672, -3
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %14, align 1
  %4678 = and i32 %4674, 255
  %4679 = tail call i32 @llvm.ctpop.i32(i32 %4678)
  %4680 = trunc i32 %4679 to i8
  %4681 = and i8 %4680, 1
  %4682 = xor i8 %4681, 1
  store i8 %4682, i8* %21, align 1
  %4683 = xor i32 %4674, %4672
  %4684 = lshr i32 %4683, 4
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  store i8 %4686, i8* %27, align 1
  %4687 = icmp eq i32 %4674, 0
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %30, align 1
  %4689 = lshr i32 %4674, 31
  %4690 = trunc i32 %4689 to i8
  store i8 %4690, i8* %33, align 1
  %4691 = xor i32 %4689, %4673
  %4692 = add nuw nsw i32 %4691, %4689
  %4693 = icmp eq i32 %4692, 2
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %39, align 1
  %4695 = sext i32 %4674 to i64
  %4696 = lshr i64 %4695, 32
  store i64 %4696, i64* %3310, align 8
  %4697 = load i32, i32* %ESI.i100, align 4
  %4698 = add i64 %4629, 19
  store i64 %4698, i64* %3, align 8
  %4699 = sext i32 %4697 to i64
  %4700 = shl nuw i64 %4696, 32
  %4701 = or i64 %4700, %4675
  %4702 = sdiv i64 %4701, %4699
  %4703 = shl i64 %4702, 32
  %4704 = ashr exact i64 %4703, 32
  %4705 = icmp eq i64 %4702, %4704
  br i1 %4705, label %4708, label %4706

; <label>:4706:                                   ; preds = %routine_idivl__esi.exit1153
  %4707 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4698, %struct.Memory* %4616)
  %.pre147 = load i16, i16* %AX.i1861, align 2
  %.pre148 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1117

; <label>:4708:                                   ; preds = %routine_idivl__esi.exit1153
  %4709 = srem i64 %4701, %4699
  %4710 = and i64 %4702, 4294967295
  store i64 %4710, i64* %RAX.i732, align 8
  %4711 = and i64 %4709, 4294967295
  store i64 %4711, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4712 = trunc i64 %4702 to i16
  br label %routine_idivl__esi.exit1117

routine_idivl__esi.exit1117:                      ; preds = %4708, %4706
  %4713 = phi i64 [ %.pre148, %4706 ], [ %4698, %4708 ]
  %4714 = phi i16 [ %.pre147, %4706 ], [ %4712, %4708 ]
  %4715 = phi %struct.Memory* [ %4707, %4706 ], [ %4616, %4708 ]
  store i16 %4714, i16* %DI.i1631, align 2
  %4716 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4716, i64* %R8.i187, align 8
  %4717 = add i64 %4716, 3870
  %4718 = add i64 %4713, 19
  store i64 %4718, i64* %3, align 8
  %4719 = inttoptr i64 %4717 to i16*
  store i16 %4714, i16* %4719, align 2
  %.pre149 = load i64, i64* %RBP.i, align 8
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_403241

block_.L_403241:                                  ; preds = %routine_idivl__esi.exit1117, %block_.L_402eb1
  %4720 = phi i64 [ %3236, %block_.L_402eb1 ], [ %.pre150, %routine_idivl__esi.exit1117 ]
  %4721 = phi i64 [ %3222, %block_.L_402eb1 ], [ %.pre149, %routine_idivl__esi.exit1117 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.22, %block_.L_402eb1 ], [ %4715, %routine_idivl__esi.exit1117 ]
  %4722 = add i64 %4721, -304
  %4723 = add i64 %4720, 7
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  store i8 0, i8* %14, align 1
  %4726 = and i32 %4725, 255
  %4727 = tail call i32 @llvm.ctpop.i32(i32 %4726)
  %4728 = trunc i32 %4727 to i8
  %4729 = and i8 %4728, 1
  %4730 = xor i8 %4729, 1
  store i8 %4730, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4731 = icmp eq i32 %4725, 0
  %4732 = zext i1 %4731 to i8
  store i8 %4732, i8* %30, align 1
  %4733 = lshr i32 %4725, 31
  %4734 = trunc i32 %4733 to i8
  store i8 %4734, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v240 = select i1 %4731, i64 407, i64 13
  %4735 = add i64 %4720, %.v240
  store i64 %4735, i64* %3, align 8
  br i1 %4731, label %block_.L_4033d8, label %block_40324e

block_40324e:                                     ; preds = %block_.L_403241
  store i64 4, i64* %RAX.i732, align 8
  store i64 2, i64* %RCX.i163, align 8
  %4736 = add i64 %4721, -60
  %4737 = add i64 %4735, 13
  store i64 %4737, i64* %3, align 8
  %4738 = inttoptr i64 %4736 to i32*
  %4739 = load i32, i32* %4738, align 4
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RDX.i, align 8
  %4741 = add i64 %4721, -56
  %4742 = add i64 %4735, 16
  store i64 %4742, i64* %3, align 8
  %4743 = inttoptr i64 %4741 to i32*
  %4744 = load i32, i32* %4743, align 4
  %4745 = add i32 %4744, %4739
  %4746 = lshr i32 %4745, 31
  %4747 = add i32 %4745, 1
  %4748 = zext i32 %4747 to i64
  store i64 %4748, i64* %RDX.i, align 8
  %4749 = icmp eq i32 %4745, -1
  %4750 = icmp eq i32 %4747, 0
  %4751 = or i1 %4749, %4750
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %14, align 1
  %4753 = and i32 %4747, 255
  %4754 = tail call i32 @llvm.ctpop.i32(i32 %4753)
  %4755 = trunc i32 %4754 to i8
  %4756 = and i8 %4755, 1
  %4757 = xor i8 %4756, 1
  store i8 %4757, i8* %21, align 1
  %4758 = xor i32 %4747, %4745
  %4759 = lshr i32 %4758, 4
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  store i8 %4761, i8* %27, align 1
  %4762 = zext i1 %4750 to i8
  store i8 %4762, i8* %30, align 1
  %4763 = lshr i32 %4747, 31
  %4764 = trunc i32 %4763 to i8
  store i8 %4764, i8* %33, align 1
  %4765 = xor i32 %4763, %4746
  %4766 = add nuw nsw i32 %4765, %4763
  %4767 = icmp eq i32 %4766, 2
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %39, align 1
  %4769 = add i64 %4721, -360
  %4770 = add i64 %4735, 25
  store i64 %4770, i64* %3, align 8
  %4771 = inttoptr i64 %4769 to i32*
  store i32 4, i32* %4771, align 4
  %4772 = load i32, i32* %EDX.i1119, align 4
  %4773 = zext i32 %4772 to i64
  %4774 = load i64, i64* %3, align 8
  store i64 %4773, i64* %RAX.i732, align 8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4776 = sext i32 %4772 to i64
  %4777 = lshr i64 %4776, 32
  store i64 %4777, i64* %4775, align 8
  %4778 = load i32, i32* %ECX.i2686, align 4
  %4779 = add i64 %4774, 5
  store i64 %4779, i64* %3, align 8
  %4780 = sext i32 %4778 to i64
  %4781 = shl nuw i64 %4777, 32
  %4782 = or i64 %4781, %4773
  %4783 = sdiv i64 %4782, %4780
  %4784 = shl i64 %4783, 32
  %4785 = ashr exact i64 %4784, 32
  %4786 = icmp eq i64 %4783, %4785
  br i1 %4786, label %4789, label %4787

; <label>:4787:                                   ; preds = %block_40324e
  %4788 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4779, %struct.Memory* %MEMORY.28)
  %.pre151 = load i16, i16* %AX.i1861, align 2
  %.pre152 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1081

; <label>:4789:                                   ; preds = %block_40324e
  %4790 = srem i64 %4782, %4780
  %4791 = and i64 %4783, 4294967295
  store i64 %4791, i64* %RAX.i732, align 8
  %4792 = and i64 %4790, 4294967295
  store i64 %4792, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4793 = trunc i64 %4783 to i16
  br label %routine_idivl__ecx.exit1081

routine_idivl__ecx.exit1081:                      ; preds = %4789, %4787
  %4794 = phi i64 [ %.pre152, %4787 ], [ %4779, %4789 ]
  %4795 = phi i16 [ %.pre151, %4787 ], [ %4793, %4789 ]
  %4796 = phi %struct.Memory* [ %4788, %4787 ], [ %MEMORY.28, %4789 ]
  %SI.i1078 = bitcast %union.anon* %45 to i16*
  store i16 %4795, i16* %SI.i1078, align 2
  %4797 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4797, i64* %RDI.i, align 8
  %4798 = add i64 %4797, 4280
  %4799 = add i64 %4794, 18
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i16*
  store i16 %4795, i16* %4800, align 2
  %4801 = load i64, i64* %RBP.i, align 8
  %4802 = add i64 %4801, -60
  %4803 = load i64, i64* %3, align 8
  %4804 = add i64 %4803, 3
  store i64 %4804, i64* %3, align 8
  %4805 = inttoptr i64 %4802 to i32*
  %4806 = load i32, i32* %4805, align 4
  %4807 = zext i32 %4806 to i64
  store i64 %4807, i64* %RAX.i732, align 8
  %R8D.i1066 = bitcast %union.anon* %66 to i32*
  %4808 = add i64 %4801, -56
  %4809 = add i64 %4803, 7
  store i64 %4809, i64* %3, align 8
  %4810 = inttoptr i64 %4808 to i32*
  %4811 = load i32, i32* %4810, align 4
  %4812 = shl i32 %4811, 1
  %4813 = zext i32 %4812 to i64
  store i64 %4813, i64* %R8.i187, align 8
  %4814 = add i32 %4812, %4806
  %4815 = zext i32 %4814 to i64
  store i64 %4815, i64* %RAX.i732, align 8
  %4816 = icmp ult i32 %4814, %4806
  %4817 = icmp ult i32 %4814, %4812
  %4818 = or i1 %4816, %4817
  %4819 = zext i1 %4818 to i8
  store i8 %4819, i8* %14, align 1
  %4820 = and i32 %4814, 255
  %4821 = tail call i32 @llvm.ctpop.i32(i32 %4820)
  %4822 = trunc i32 %4821 to i8
  %4823 = and i8 %4822, 1
  %4824 = xor i8 %4823, 1
  store i8 %4824, i8* %21, align 1
  %4825 = xor i32 %4812, %4806
  %4826 = xor i32 %4825, %4814
  %4827 = lshr i32 %4826, 4
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  store i8 %4829, i8* %27, align 1
  %4830 = icmp eq i32 %4814, 0
  %4831 = zext i1 %4830 to i8
  store i8 %4831, i8* %30, align 1
  %4832 = lshr i32 %4814, 31
  %4833 = trunc i32 %4832 to i8
  store i8 %4833, i8* %33, align 1
  %4834 = lshr i32 %4806, 31
  %4835 = lshr i32 %4811, 30
  %4836 = and i32 %4835, 1
  %4837 = xor i32 %4832, %4834
  %4838 = xor i32 %4832, %4836
  %4839 = add nuw nsw i32 %4837, %4838
  %4840 = icmp eq i32 %4839, 2
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %39, align 1
  %4842 = add i64 %4801, -52
  %4843 = add i64 %4803, 16
  store i64 %4843, i64* %3, align 8
  %4844 = inttoptr i64 %4842 to i32*
  %4845 = load i32, i32* %4844, align 4
  %4846 = add i32 %4845, %4814
  %4847 = lshr i32 %4846, 31
  %4848 = add i32 %4846, 2
  %4849 = zext i32 %4848 to i64
  store i64 %4849, i64* %RAX.i732, align 8
  %4850 = icmp ugt i32 %4846, -3
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %14, align 1
  %4852 = and i32 %4848, 255
  %4853 = tail call i32 @llvm.ctpop.i32(i32 %4852)
  %4854 = trunc i32 %4853 to i8
  %4855 = and i8 %4854, 1
  %4856 = xor i8 %4855, 1
  store i8 %4856, i8* %21, align 1
  %4857 = xor i32 %4848, %4846
  %4858 = lshr i32 %4857, 4
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  store i8 %4860, i8* %27, align 1
  %4861 = icmp eq i32 %4848, 0
  %4862 = zext i1 %4861 to i8
  store i8 %4862, i8* %30, align 1
  %4863 = lshr i32 %4848, 31
  %4864 = trunc i32 %4863 to i8
  store i8 %4864, i8* %33, align 1
  %4865 = xor i32 %4863, %4847
  %4866 = add nuw nsw i32 %4865, %4863
  %4867 = icmp eq i32 %4866, 2
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %39, align 1
  %4869 = sext i32 %4848 to i64
  %4870 = lshr i64 %4869, 32
  store i64 %4870, i64* %4775, align 8
  %4871 = load i64, i64* %RBP.i, align 8
  %4872 = add i64 %4871, -360
  %4873 = add i64 %4803, 27
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %R8.i187, align 8
  %4877 = add i64 %4803, 30
  store i64 %4877, i64* %3, align 8
  %4878 = sext i32 %4875 to i64
  %4879 = shl nuw i64 %4870, 32
  %4880 = or i64 %4879, %4849
  %4881 = sdiv i64 %4880, %4878
  %4882 = shl i64 %4881, 32
  %4883 = ashr exact i64 %4882, 32
  %4884 = icmp eq i64 %4881, %4883
  br i1 %4884, label %4887, label %4885

; <label>:4885:                                   ; preds = %routine_idivl__ecx.exit1081
  %4886 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4877, %struct.Memory* %4796)
  %.pre153 = load i16, i16* %AX.i1861, align 2
  %.pre154 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit1047

; <label>:4887:                                   ; preds = %routine_idivl__ecx.exit1081
  %4888 = srem i64 %4880, %4878
  %4889 = and i64 %4881, 4294967295
  store i64 %4889, i64* %RAX.i732, align 8
  %4890 = and i64 %4888, 4294967295
  store i64 %4890, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4891 = trunc i64 %4881 to i16
  br label %routine_idivl__r8d.exit1047

routine_idivl__r8d.exit1047:                      ; preds = %4887, %4885
  %4892 = phi i64 [ %.pre154, %4885 ], [ %4877, %4887 ]
  %4893 = phi i16 [ %.pre153, %4885 ], [ %4891, %4887 ]
  %4894 = phi %struct.Memory* [ %4886, %4885 ], [ %4796, %4887 ]
  store i16 %4893, i16* %SI.i1078, align 2
  %4895 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4895, i64* %RDI.i, align 8
  %4896 = add i64 %4895, 4282
  %4897 = add i64 %4892, 18
  store i64 %4897, i64* %3, align 8
  %4898 = inttoptr i64 %4896 to i16*
  store i16 %4893, i16* %4898, align 2
  %4899 = load i64, i64* %RBP.i, align 8
  %4900 = add i64 %4899, -56
  %4901 = load i64, i64* %3, align 8
  %4902 = add i64 %4901, 3
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4900 to i32*
  %4904 = load i32, i32* %4903, align 4
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RAX.i732, align 8
  %4906 = add i64 %4899, -52
  %4907 = add i64 %4901, 6
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4906 to i32*
  %4909 = load i32, i32* %4908, align 4
  %4910 = add i32 %4909, %4904
  %4911 = lshr i32 %4910, 31
  %4912 = add i32 %4910, 1
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RAX.i732, align 8
  %4914 = icmp eq i32 %4910, -1
  %4915 = icmp eq i32 %4912, 0
  %4916 = or i1 %4914, %4915
  %4917 = zext i1 %4916 to i8
  store i8 %4917, i8* %14, align 1
  %4918 = and i32 %4912, 255
  %4919 = tail call i32 @llvm.ctpop.i32(i32 %4918)
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  store i8 %4922, i8* %21, align 1
  %4923 = xor i32 %4912, %4910
  %4924 = lshr i32 %4923, 4
  %4925 = trunc i32 %4924 to i8
  %4926 = and i8 %4925, 1
  store i8 %4926, i8* %27, align 1
  %4927 = zext i1 %4915 to i8
  store i8 %4927, i8* %30, align 1
  %4928 = lshr i32 %4912, 31
  %4929 = trunc i32 %4928 to i8
  store i8 %4929, i8* %33, align 1
  %4930 = xor i32 %4928, %4911
  %4931 = add nuw nsw i32 %4930, %4928
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  store i8 %4933, i8* %39, align 1
  %4934 = sext i32 %4912 to i64
  %4935 = lshr i64 %4934, 32
  store i64 %4935, i64* %4775, align 8
  %4936 = load i32, i32* %ECX.i2686, align 4
  %4937 = add i64 %4901, 12
  store i64 %4937, i64* %3, align 8
  %4938 = sext i32 %4936 to i64
  %4939 = shl nuw i64 %4935, 32
  %4940 = or i64 %4939, %4913
  %4941 = sdiv i64 %4940, %4938
  %4942 = shl i64 %4941, 32
  %4943 = ashr exact i64 %4942, 32
  %4944 = icmp eq i64 %4941, %4943
  br i1 %4944, label %4947, label %4945

; <label>:4945:                                   ; preds = %routine_idivl__r8d.exit1047
  %4946 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4937, %struct.Memory* %4894)
  %.pre155 = load i16, i16* %AX.i1861, align 2
  %.pre156 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1025

; <label>:4947:                                   ; preds = %routine_idivl__r8d.exit1047
  %4948 = srem i64 %4940, %4938
  %4949 = and i64 %4941, 4294967295
  store i64 %4949, i64* %RAX.i732, align 8
  %4950 = and i64 %4948, 4294967295
  store i64 %4950, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4951 = trunc i64 %4941 to i16
  br label %routine_idivl__ecx.exit1025

routine_idivl__ecx.exit1025:                      ; preds = %4947, %4945
  %4952 = phi i64 [ %.pre156, %4945 ], [ %4937, %4947 ]
  %4953 = phi i16 [ %.pre155, %4945 ], [ %4951, %4947 ]
  %4954 = phi %struct.Memory* [ %4946, %4945 ], [ %4894, %4947 ]
  store i16 %4953, i16* %SI.i1078, align 2
  %4955 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4956 = add i64 %4955, 4312
  %4957 = add i64 %4952, 18
  store i64 %4957, i64* %3, align 8
  %4958 = inttoptr i64 %4956 to i16*
  store i16 %4953, i16* %4958, align 2
  %4959 = load i64, i64* %3, align 8
  %4960 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4960, i64* %RDI.i, align 8
  %4961 = add i64 %4960, 4284
  %4962 = load i16, i16* %SI.i1078, align 2
  %4963 = add i64 %4959, 15
  store i64 %4963, i64* %3, align 8
  %4964 = inttoptr i64 %4961 to i16*
  store i16 %4962, i16* %4964, align 2
  %4965 = load i64, i64* %RBP.i, align 8
  %4966 = add i64 %4965, -56
  %4967 = load i64, i64* %3, align 8
  %4968 = add i64 %4967, 3
  store i64 %4968, i64* %3, align 8
  %4969 = inttoptr i64 %4966 to i32*
  %4970 = load i32, i32* %4969, align 4
  %4971 = zext i32 %4970 to i64
  store i64 %4971, i64* %RAX.i732, align 8
  %4972 = getelementptr inbounds %union.anon, %union.anon* %488, i64 0, i32 0
  %4973 = add i64 %4965, -52
  %4974 = add i64 %4967, 7
  store i64 %4974, i64* %3, align 8
  %4975 = inttoptr i64 %4973 to i32*
  %4976 = load i32, i32* %4975, align 4
  %4977 = shl i32 %4976, 1
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %4972, align 8
  %4979 = add i32 %4977, %4970
  %4980 = zext i32 %4979 to i64
  store i64 %4980, i64* %RAX.i732, align 8
  %4981 = icmp ult i32 %4979, %4970
  %4982 = icmp ult i32 %4979, %4977
  %4983 = or i1 %4981, %4982
  %4984 = zext i1 %4983 to i8
  store i8 %4984, i8* %14, align 1
  %4985 = and i32 %4979, 255
  %4986 = tail call i32 @llvm.ctpop.i32(i32 %4985)
  %4987 = trunc i32 %4986 to i8
  %4988 = and i8 %4987, 1
  %4989 = xor i8 %4988, 1
  store i8 %4989, i8* %21, align 1
  %4990 = xor i32 %4977, %4970
  %4991 = xor i32 %4990, %4979
  %4992 = lshr i32 %4991, 4
  %4993 = trunc i32 %4992 to i8
  %4994 = and i8 %4993, 1
  store i8 %4994, i8* %27, align 1
  %4995 = icmp eq i32 %4979, 0
  %4996 = zext i1 %4995 to i8
  store i8 %4996, i8* %30, align 1
  %4997 = lshr i32 %4979, 31
  %4998 = trunc i32 %4997 to i8
  store i8 %4998, i8* %33, align 1
  %4999 = lshr i32 %4970, 31
  %5000 = lshr i32 %4976, 30
  %5001 = and i32 %5000, 1
  %5002 = xor i32 %4997, %4999
  %5003 = xor i32 %4997, %5001
  %5004 = add nuw nsw i32 %5002, %5003
  %5005 = icmp eq i32 %5004, 2
  %5006 = zext i1 %5005 to i8
  store i8 %5006, i8* %39, align 1
  %5007 = add i64 %4965, -48
  %5008 = add i64 %4967, 16
  store i64 %5008, i64* %3, align 8
  %5009 = inttoptr i64 %5007 to i32*
  %5010 = load i32, i32* %5009, align 4
  %5011 = add i32 %5010, %4979
  %5012 = lshr i32 %5011, 31
  %5013 = add i32 %5011, 2
  %5014 = zext i32 %5013 to i64
  store i64 %5014, i64* %RAX.i732, align 8
  %5015 = icmp ugt i32 %5011, -3
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %14, align 1
  %5017 = and i32 %5013, 255
  %5018 = tail call i32 @llvm.ctpop.i32(i32 %5017)
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  store i8 %5021, i8* %21, align 1
  %5022 = xor i32 %5013, %5011
  %5023 = lshr i32 %5022, 4
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  store i8 %5025, i8* %27, align 1
  %5026 = icmp eq i32 %5013, 0
  %5027 = zext i1 %5026 to i8
  store i8 %5027, i8* %30, align 1
  %5028 = lshr i32 %5013, 31
  %5029 = trunc i32 %5028 to i8
  store i8 %5029, i8* %33, align 1
  %5030 = xor i32 %5028, %5012
  %5031 = add nuw nsw i32 %5030, %5028
  %5032 = icmp eq i32 %5031, 2
  %5033 = zext i1 %5032 to i8
  store i8 %5033, i8* %39, align 1
  %5034 = sext i32 %5013 to i64
  %5035 = lshr i64 %5034, 32
  store i64 %5035, i64* %4775, align 8
  %5036 = load i32, i32* %R8D.i1066, align 4
  %5037 = add i64 %4967, 23
  store i64 %5037, i64* %3, align 8
  %5038 = sext i32 %5036 to i64
  %5039 = shl nuw i64 %5035, 32
  %5040 = or i64 %5039, %5014
  %5041 = sdiv i64 %5040, %5038
  %5042 = shl i64 %5041, 32
  %5043 = ashr exact i64 %5042, 32
  %5044 = icmp eq i64 %5041, %5043
  br i1 %5044, label %5047, label %5045

; <label>:5045:                                   ; preds = %routine_idivl__ecx.exit1025
  %5046 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5037, %struct.Memory* %4954)
  %.pre157 = load i16, i16* %AX.i1861, align 2
  %.pre158 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit989

; <label>:5047:                                   ; preds = %routine_idivl__ecx.exit1025
  %5048 = srem i64 %5040, %5038
  %5049 = and i64 %5041, 4294967295
  store i64 %5049, i64* %RAX.i732, align 8
  %5050 = and i64 %5048, 4294967295
  store i64 %5050, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5051 = trunc i64 %5041 to i16
  br label %routine_idivl__r8d.exit989

routine_idivl__r8d.exit989:                       ; preds = %5047, %5045
  %5052 = phi i64 [ %.pre158, %5045 ], [ %5037, %5047 ]
  %5053 = phi i16 [ %.pre157, %5045 ], [ %5051, %5047 ]
  %5054 = phi %struct.Memory* [ %5046, %5045 ], [ %4954, %5047 ]
  store i16 %5053, i16* %SI.i1078, align 2
  %5055 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5056 = add i64 %5055, 4314
  %5057 = add i64 %5052, 18
  store i64 %5057, i64* %3, align 8
  %5058 = inttoptr i64 %5056 to i16*
  store i16 %5053, i16* %5058, align 2
  %5059 = load i64, i64* %3, align 8
  %5060 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5060, i64* %RDI.i, align 8
  %5061 = add i64 %5060, 4286
  %5062 = load i16, i16* %SI.i1078, align 2
  %5063 = add i64 %5059, 15
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5061 to i16*
  store i16 %5062, i16* %5064, align 2
  %5065 = load i64, i64* %RBP.i, align 8
  %5066 = add i64 %5065, -52
  %5067 = load i64, i64* %3, align 8
  %5068 = add i64 %5067, 3
  store i64 %5068, i64* %3, align 8
  %5069 = inttoptr i64 %5066 to i32*
  %5070 = load i32, i32* %5069, align 4
  %5071 = zext i32 %5070 to i64
  store i64 %5071, i64* %RAX.i732, align 8
  %5072 = add i64 %5065, -48
  %5073 = add i64 %5067, 6
  store i64 %5073, i64* %3, align 8
  %5074 = inttoptr i64 %5072 to i32*
  %5075 = load i32, i32* %5074, align 4
  %5076 = add i32 %5075, %5070
  %5077 = lshr i32 %5076, 31
  %5078 = add i32 %5076, 1
  %5079 = zext i32 %5078 to i64
  store i64 %5079, i64* %RAX.i732, align 8
  %5080 = icmp eq i32 %5076, -1
  %5081 = icmp eq i32 %5078, 0
  %5082 = or i1 %5080, %5081
  %5083 = zext i1 %5082 to i8
  store i8 %5083, i8* %14, align 1
  %5084 = and i32 %5078, 255
  %5085 = tail call i32 @llvm.ctpop.i32(i32 %5084)
  %5086 = trunc i32 %5085 to i8
  %5087 = and i8 %5086, 1
  %5088 = xor i8 %5087, 1
  store i8 %5088, i8* %21, align 1
  %5089 = xor i32 %5078, %5076
  %5090 = lshr i32 %5089, 4
  %5091 = trunc i32 %5090 to i8
  %5092 = and i8 %5091, 1
  store i8 %5092, i8* %27, align 1
  %5093 = zext i1 %5081 to i8
  store i8 %5093, i8* %30, align 1
  %5094 = lshr i32 %5078, 31
  %5095 = trunc i32 %5094 to i8
  store i8 %5095, i8* %33, align 1
  %5096 = xor i32 %5094, %5077
  %5097 = add nuw nsw i32 %5096, %5094
  %5098 = icmp eq i32 %5097, 2
  %5099 = zext i1 %5098 to i8
  store i8 %5099, i8* %39, align 1
  %5100 = sext i32 %5078 to i64
  %5101 = lshr i64 %5100, 32
  store i64 %5101, i64* %4775, align 8
  %5102 = load i32, i32* %ECX.i2686, align 4
  %5103 = add i64 %5067, 12
  store i64 %5103, i64* %3, align 8
  %5104 = sext i32 %5102 to i64
  %5105 = shl nuw i64 %5101, 32
  %5106 = or i64 %5105, %5079
  %5107 = sdiv i64 %5106, %5104
  %5108 = shl i64 %5107, 32
  %5109 = ashr exact i64 %5108, 32
  %5110 = icmp eq i64 %5107, %5109
  br i1 %5110, label %5113, label %5111

; <label>:5111:                                   ; preds = %routine_idivl__r8d.exit989
  %5112 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5103, %struct.Memory* %5054)
  %.pre159 = load i16, i16* %AX.i1861, align 2
  %.pre160 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit961

; <label>:5113:                                   ; preds = %routine_idivl__r8d.exit989
  %5114 = srem i64 %5106, %5104
  %5115 = and i64 %5107, 4294967295
  store i64 %5115, i64* %RAX.i732, align 8
  %5116 = and i64 %5114, 4294967295
  store i64 %5116, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5117 = trunc i64 %5107 to i16
  br label %routine_idivl__ecx.exit961

routine_idivl__ecx.exit961:                       ; preds = %5113, %5111
  %5118 = phi i64 [ %.pre160, %5111 ], [ %5103, %5113 ]
  %5119 = phi i16 [ %.pre159, %5111 ], [ %5117, %5113 ]
  %5120 = phi %struct.Memory* [ %5112, %5111 ], [ %5054, %5113 ]
  store i16 %5119, i16* %SI.i1078, align 2
  %5121 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5122 = add i64 %5121, 4344
  %5123 = add i64 %5118, 18
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5122 to i16*
  store i16 %5119, i16* %5124, align 2
  %5125 = load i64, i64* %3, align 8
  %5126 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5126, i64* %RDI.i, align 8
  %5127 = add i64 %5126, 4316
  %5128 = load i16, i16* %SI.i1078, align 2
  %5129 = add i64 %5125, 15
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5127 to i16*
  store i16 %5128, i16* %5130, align 2
  %5131 = load i64, i64* %RBP.i, align 8
  %5132 = add i64 %5131, -52
  %5133 = load i64, i64* %3, align 8
  %5134 = add i64 %5133, 3
  store i64 %5134, i64* %3, align 8
  %5135 = inttoptr i64 %5132 to i32*
  %5136 = load i32, i32* %5135, align 4
  %5137 = zext i32 %5136 to i64
  store i64 %5137, i64* %RAX.i732, align 8
  %5138 = add i64 %5131, -48
  %5139 = add i64 %5133, 6
  store i64 %5139, i64* %3, align 8
  %5140 = inttoptr i64 %5138 to i32*
  %5141 = load i32, i32* %5140, align 4
  %5142 = shl i32 %5141, 1
  %5143 = zext i32 %5142 to i64
  store i64 %5143, i64* %RCX.i163, align 8
  %5144 = add i32 %5142, %5136
  %5145 = zext i32 %5144 to i64
  store i64 %5145, i64* %RAX.i732, align 8
  %5146 = icmp ult i32 %5144, %5136
  %5147 = icmp ult i32 %5144, %5142
  %5148 = or i1 %5146, %5147
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %14, align 1
  %5150 = and i32 %5144, 255
  %5151 = tail call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  store i8 %5154, i8* %21, align 1
  %5155 = xor i32 %5142, %5136
  %5156 = xor i32 %5155, %5144
  %5157 = lshr i32 %5156, 4
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  store i8 %5159, i8* %27, align 1
  %5160 = icmp eq i32 %5144, 0
  %5161 = zext i1 %5160 to i8
  store i8 %5161, i8* %30, align 1
  %5162 = lshr i32 %5144, 31
  %5163 = trunc i32 %5162 to i8
  store i8 %5163, i8* %33, align 1
  %5164 = lshr i32 %5136, 31
  %5165 = lshr i32 %5141, 30
  %5166 = and i32 %5165, 1
  %5167 = xor i32 %5162, %5164
  %5168 = xor i32 %5162, %5166
  %5169 = add nuw nsw i32 %5167, %5168
  %5170 = icmp eq i32 %5169, 2
  %5171 = zext i1 %5170 to i8
  store i8 %5171, i8* %39, align 1
  %5172 = add i64 %5133, 13
  store i64 %5172, i64* %3, align 8
  %5173 = load i32, i32* %5140, align 4
  %5174 = add i32 %5173, %5144
  %5175 = lshr i32 %5174, 31
  %5176 = add i32 %5174, 2
  %5177 = zext i32 %5176 to i64
  store i64 %5177, i64* %RAX.i732, align 8
  %5178 = icmp ugt i32 %5174, -3
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %14, align 1
  %5180 = and i32 %5176, 255
  %5181 = tail call i32 @llvm.ctpop.i32(i32 %5180)
  %5182 = trunc i32 %5181 to i8
  %5183 = and i8 %5182, 1
  %5184 = xor i8 %5183, 1
  store i8 %5184, i8* %21, align 1
  %5185 = xor i32 %5176, %5174
  %5186 = lshr i32 %5185, 4
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  store i8 %5188, i8* %27, align 1
  %5189 = icmp eq i32 %5176, 0
  %5190 = zext i1 %5189 to i8
  store i8 %5190, i8* %30, align 1
  %5191 = lshr i32 %5176, 31
  %5192 = trunc i32 %5191 to i8
  store i8 %5192, i8* %33, align 1
  %5193 = xor i32 %5191, %5175
  %5194 = add nuw nsw i32 %5193, %5191
  %5195 = icmp eq i32 %5194, 2
  %5196 = zext i1 %5195 to i8
  store i8 %5196, i8* %39, align 1
  %5197 = sext i32 %5176 to i64
  %5198 = lshr i64 %5197, 32
  store i64 %5198, i64* %4775, align 8
  %5199 = load i32, i32* %R8D.i1066, align 4
  %5200 = add i64 %5133, 20
  store i64 %5200, i64* %3, align 8
  %5201 = sext i32 %5199 to i64
  %5202 = shl nuw i64 %5198, 32
  %5203 = or i64 %5202, %5177
  %5204 = sdiv i64 %5203, %5201
  %5205 = shl i64 %5204, 32
  %5206 = ashr exact i64 %5205, 32
  %5207 = icmp eq i64 %5204, %5206
  br i1 %5207, label %5210, label %5208

; <label>:5208:                                   ; preds = %routine_idivl__ecx.exit961
  %5209 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5200, %struct.Memory* %5120)
  %.pre161 = load i16, i16* %AX.i1861, align 2
  %.pre162 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:5210:                                   ; preds = %routine_idivl__ecx.exit961
  %5211 = srem i64 %5203, %5201
  %5212 = and i64 %5204, 4294967295
  store i64 %5212, i64* %RAX.i732, align 8
  %5213 = and i64 %5211, 4294967295
  store i64 %5213, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5214 = trunc i64 %5204 to i16
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %5210, %5208
  %5215 = phi i64 [ %.pre162, %5208 ], [ %5200, %5210 ]
  %5216 = phi i16 [ %.pre161, %5208 ], [ %5214, %5210 ]
  %5217 = phi %struct.Memory* [ %5209, %5208 ], [ %5120, %5210 ]
  store i16 %5216, i16* %SI.i1078, align 2
  %5218 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5219 = add i64 %5218, 4346
  %5220 = add i64 %5215, 18
  store i64 %5220, i64* %3, align 8
  %5221 = inttoptr i64 %5219 to i16*
  store i16 %5216, i16* %5221, align 2
  %5222 = load i64, i64* %3, align 8
  %5223 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5223, i64* %RDI.i, align 8
  %5224 = add i64 %5223, 4318
  %5225 = load i16, i16* %SI.i1078, align 2
  %5226 = add i64 %5222, 15
  store i64 %5226, i64* %3, align 8
  %5227 = inttoptr i64 %5224 to i16*
  store i16 %5225, i16* %5227, align 2
  %5228 = load i64, i64* %RBP.i, align 8
  %5229 = add i64 %5228, -48
  %5230 = load i64, i64* %3, align 8
  %5231 = add i64 %5230, 3
  store i64 %5231, i64* %3, align 8
  %5232 = inttoptr i64 %5229 to i32*
  %5233 = load i32, i32* %5232, align 4
  %5234 = zext i32 %5233 to i64
  store i64 %5234, i64* %RAX.i732, align 8
  %5235 = trunc i32 %5233 to i16
  store i16 %5235, i16* %SI.i1078, align 2
  %5236 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5237 = add i64 %5236, 4382
  %5238 = add i64 %5230, 21
  store i64 %5238, i64* %3, align 8
  %5239 = inttoptr i64 %5237 to i16*
  store i16 %5235, i16* %5239, align 2
  %5240 = load i64, i64* %3, align 8
  %5241 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5242 = add i64 %5241, 4380
  %5243 = load i16, i16* %SI.i1078, align 2
  %5244 = add i64 %5240, 15
  store i64 %5244, i64* %3, align 8
  %5245 = inttoptr i64 %5242 to i16*
  store i16 %5243, i16* %5245, align 2
  %5246 = load i64, i64* %3, align 8
  %5247 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5248 = add i64 %5247, 4378
  %5249 = load i16, i16* %SI.i1078, align 2
  %5250 = add i64 %5246, 15
  store i64 %5250, i64* %3, align 8
  %5251 = inttoptr i64 %5248 to i16*
  store i16 %5249, i16* %5251, align 2
  %5252 = load i64, i64* %3, align 8
  %5253 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5254 = add i64 %5253, 4350
  %5255 = load i16, i16* %SI.i1078, align 2
  %5256 = add i64 %5252, 15
  store i64 %5256, i64* %3, align 8
  %5257 = inttoptr i64 %5254 to i16*
  store i16 %5255, i16* %5257, align 2
  %5258 = load i64, i64* %3, align 8
  %5259 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5260 = add i64 %5259, 4348
  %5261 = load i16, i16* %SI.i1078, align 2
  %5262 = add i64 %5258, 15
  store i64 %5262, i64* %3, align 8
  %5263 = inttoptr i64 %5260 to i16*
  store i16 %5261, i16* %5263, align 2
  %5264 = load i64, i64* %3, align 8
  %5265 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5265, i64* %RDI.i, align 8
  %5266 = add i64 %5265, 4376
  %5267 = load i16, i16* %SI.i1078, align 2
  %5268 = add i64 %5264, 15
  store i64 %5268, i64* %3, align 8
  %5269 = inttoptr i64 %5266 to i16*
  store i16 %5267, i16* %5269, align 2
  %.pre163 = load i64, i64* %RBP.i, align 8
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_4033d8

block_.L_4033d8:                                  ; preds = %routine_idivl__r8d.exit, %block_.L_403241
  %5270 = phi i64 [ %4735, %block_.L_403241 ], [ %.pre164, %routine_idivl__r8d.exit ]
  %5271 = phi i64 [ %4721, %block_.L_403241 ], [ %.pre163, %routine_idivl__r8d.exit ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.28, %block_.L_403241 ], [ %5217, %routine_idivl__r8d.exit ]
  %5272 = add i64 %5271, -300
  %5273 = add i64 %5270, 7
  store i64 %5273, i64* %3, align 8
  %5274 = inttoptr i64 %5272 to i32*
  %5275 = load i32, i32* %5274, align 4
  store i8 0, i8* %14, align 1
  %5276 = and i32 %5275, 255
  %5277 = tail call i32 @llvm.ctpop.i32(i32 %5276)
  %5278 = trunc i32 %5277 to i8
  %5279 = and i8 %5278, 1
  %5280 = xor i8 %5279, 1
  store i8 %5280, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5281 = icmp eq i32 %5275, 0
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %30, align 1
  %5283 = lshr i32 %5275, 31
  %5284 = trunc i32 %5283 to i8
  store i8 %5284, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v241 = select i1 %5281, i64 1439, i64 13
  %5285 = add i64 %5270, %.v241
  store i64 %5285, i64* %3, align 8
  br i1 %5281, label %block_.L_403977, label %block_4033e5

block_4033e5:                                     ; preds = %block_.L_4033d8
  %5286 = add i64 %5271, -304
  %5287 = add i64 %5285, 7
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  %5289 = load i32, i32* %5288, align 4
  store i8 0, i8* %14, align 1
  %5290 = and i32 %5289, 255
  %5291 = tail call i32 @llvm.ctpop.i32(i32 %5290)
  %5292 = trunc i32 %5291 to i8
  %5293 = and i8 %5292, 1
  %5294 = xor i8 %5293, 1
  store i8 %5294, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5295 = icmp eq i32 %5289, 0
  %5296 = zext i1 %5295 to i8
  store i8 %5296, i8* %30, align 1
  %5297 = lshr i32 %5289, 31
  %5298 = trunc i32 %5297 to i8
  store i8 %5298, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v242 = select i1 %5295, i64 1426, i64 13
  %5299 = add i64 %5285, %.v242
  store i64 %5299, i64* %3, align 8
  br i1 %5295, label %block_.L_403977, label %block_4033f2

block_4033f2:                                     ; preds = %block_4033e5
  %5300 = add i64 %5271, -308
  %5301 = add i64 %5299, 7
  store i64 %5301, i64* %3, align 8
  %5302 = inttoptr i64 %5300 to i32*
  %5303 = load i32, i32* %5302, align 4
  store i8 0, i8* %14, align 1
  %5304 = and i32 %5303, 255
  %5305 = tail call i32 @llvm.ctpop.i32(i32 %5304)
  %5306 = trunc i32 %5305 to i8
  %5307 = and i8 %5306, 1
  %5308 = xor i8 %5307, 1
  store i8 %5308, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5309 = icmp eq i32 %5303, 0
  %5310 = zext i1 %5309 to i8
  store i8 %5310, i8* %30, align 1
  %5311 = lshr i32 %5303, 31
  %5312 = trunc i32 %5311 to i8
  store i8 %5312, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v243 = select i1 %5309, i64 1413, i64 13
  %5313 = add i64 %5299, %.v243
  store i64 %5313, i64* %3, align 8
  br i1 %5309, label %block_.L_403977, label %block_4033ff

block_4033ff:                                     ; preds = %block_4033f2
  store i64 4, i64* %RAX.i732, align 8
  store i64 2, i64* %RCX.i163, align 8
  %5314 = add i64 %5271, -48
  %5315 = add i64 %5313, 13
  store i64 %5315, i64* %3, align 8
  %5316 = inttoptr i64 %5314 to i32*
  %5317 = load i32, i32* %5316, align 4
  %5318 = zext i32 %5317 to i64
  store i64 %5318, i64* %RDX.i, align 8
  %5319 = add i64 %5271, -52
  %5320 = add i64 %5313, 16
  store i64 %5320, i64* %3, align 8
  %5321 = inttoptr i64 %5319 to i32*
  %5322 = load i32, i32* %5321, align 4
  %5323 = shl i32 %5322, 1
  %5324 = zext i32 %5323 to i64
  store i64 %5324, i64* %RSI.i, align 8
  %5325 = add i32 %5323, %5317
  %5326 = zext i32 %5325 to i64
  store i64 %5326, i64* %RDX.i, align 8
  %5327 = icmp ult i32 %5325, %5317
  %5328 = icmp ult i32 %5325, %5323
  %5329 = or i1 %5327, %5328
  %5330 = zext i1 %5329 to i8
  store i8 %5330, i8* %14, align 1
  %5331 = and i32 %5325, 255
  %5332 = tail call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  store i8 %5335, i8* %21, align 1
  %5336 = xor i32 %5323, %5317
  %5337 = xor i32 %5336, %5325
  %5338 = lshr i32 %5337, 4
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  store i8 %5340, i8* %27, align 1
  %5341 = icmp eq i32 %5325, 0
  %5342 = zext i1 %5341 to i8
  store i8 %5342, i8* %30, align 1
  %5343 = lshr i32 %5325, 31
  %5344 = trunc i32 %5343 to i8
  store i8 %5344, i8* %33, align 1
  %5345 = lshr i32 %5317, 31
  %5346 = lshr i32 %5322, 30
  %5347 = and i32 %5346, 1
  %5348 = xor i32 %5343, %5345
  %5349 = xor i32 %5343, %5347
  %5350 = add nuw nsw i32 %5348, %5349
  %5351 = icmp eq i32 %5350, 2
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %39, align 1
  %5353 = add i64 %5271, -56
  %5354 = add i64 %5313, 23
  store i64 %5354, i64* %3, align 8
  %5355 = inttoptr i64 %5353 to i32*
  %5356 = load i32, i32* %5355, align 4
  %5357 = add i32 %5356, %5325
  %5358 = lshr i32 %5357, 31
  %5359 = add i32 %5357, 2
  %5360 = zext i32 %5359 to i64
  store i64 %5360, i64* %RDX.i, align 8
  %5361 = icmp ugt i32 %5357, -3
  %5362 = zext i1 %5361 to i8
  store i8 %5362, i8* %14, align 1
  %5363 = and i32 %5359, 255
  %5364 = tail call i32 @llvm.ctpop.i32(i32 %5363)
  %5365 = trunc i32 %5364 to i8
  %5366 = and i8 %5365, 1
  %5367 = xor i8 %5366, 1
  store i8 %5367, i8* %21, align 1
  %5368 = xor i32 %5359, %5357
  %5369 = lshr i32 %5368, 4
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  store i8 %5371, i8* %27, align 1
  %5372 = icmp eq i32 %5359, 0
  %5373 = zext i1 %5372 to i8
  store i8 %5373, i8* %30, align 1
  %5374 = lshr i32 %5359, 31
  %5375 = trunc i32 %5374 to i8
  store i8 %5375, i8* %33, align 1
  %5376 = xor i32 %5374, %5358
  %5377 = add nuw nsw i32 %5376, %5374
  %5378 = icmp eq i32 %5377, 2
  %5379 = zext i1 %5378 to i8
  store i8 %5379, i8* %39, align 1
  %5380 = load i64, i64* %RBP.i, align 8
  %5381 = add i64 %5380, -364
  %5382 = load i32, i32* %EAX.i1314, align 4
  %5383 = add i64 %5313, 32
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5381 to i32*
  store i32 %5382, i32* %5384, align 4
  %5385 = load i32, i32* %EDX.i1119, align 4
  %5386 = zext i32 %5385 to i64
  %5387 = load i64, i64* %3, align 8
  store i64 %5386, i64* %RAX.i732, align 8
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5389 = sext i32 %5385 to i64
  %5390 = lshr i64 %5389, 32
  store i64 %5390, i64* %5388, align 8
  %5391 = load i64, i64* %RBP.i, align 8
  %5392 = add i64 %5391, -364
  %5393 = add i64 %5387, 9
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RSI.i, align 8
  %5397 = add i64 %5387, 11
  store i64 %5397, i64* %3, align 8
  %5398 = sext i32 %5395 to i64
  %5399 = shl nuw i64 %5390, 32
  %5400 = or i64 %5399, %5386
  %5401 = sdiv i64 %5400, %5398
  %5402 = shl i64 %5401, 32
  %5403 = ashr exact i64 %5402, 32
  %5404 = icmp eq i64 %5401, %5403
  br i1 %5404, label %5407, label %5405

; <label>:5405:                                   ; preds = %block_4033ff
  %5406 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5397, %struct.Memory* %MEMORY.29)
  %.pre165 = load i16, i16* %AX.i1861, align 2
  %.pre166 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit837

; <label>:5407:                                   ; preds = %block_4033ff
  %5408 = srem i64 %5400, %5398
  %5409 = and i64 %5401, 4294967295
  store i64 %5409, i64* %RAX.i732, align 8
  %5410 = and i64 %5408, 4294967295
  store i64 %5410, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5411 = trunc i64 %5401 to i16
  br label %routine_idivl__esi.exit837

routine_idivl__esi.exit837:                       ; preds = %5407, %5405
  %5412 = phi i64 [ %.pre166, %5405 ], [ %5397, %5407 ]
  %5413 = phi i16 [ %.pre165, %5405 ], [ %5411, %5407 ]
  %5414 = phi %struct.Memory* [ %5406, %5405 ], [ %MEMORY.29, %5407 ]
  %DI.i834 = bitcast %union.anon* %40 to i16*
  store i16 %5413, i16* %DI.i834, align 2
  %5415 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5415, i64* %R8.i187, align 8
  %5416 = add i64 %5415, 2328
  %5417 = add i64 %5412, 19
  store i64 %5417, i64* %3, align 8
  %5418 = inttoptr i64 %5416 to i16*
  store i16 %5413, i16* %5418, align 2
  %5419 = load i64, i64* %RBP.i, align 8
  %5420 = add i64 %5419, -52
  %5421 = load i64, i64* %3, align 8
  %5422 = add i64 %5421, 3
  store i64 %5422, i64* %3, align 8
  %5423 = inttoptr i64 %5420 to i32*
  %5424 = load i32, i32* %5423, align 4
  %5425 = zext i32 %5424 to i64
  store i64 %5425, i64* %RAX.i732, align 8
  %5426 = getelementptr inbounds %union.anon, %union.anon* %488, i64 0, i32 0
  %5427 = add i64 %5419, -56
  %5428 = add i64 %5421, 7
  store i64 %5428, i64* %3, align 8
  %5429 = inttoptr i64 %5427 to i32*
  %5430 = load i32, i32* %5429, align 4
  %5431 = shl i32 %5430, 1
  %5432 = zext i32 %5431 to i64
  store i64 %5432, i64* %5426, align 8
  %5433 = add i32 %5431, %5424
  %5434 = zext i32 %5433 to i64
  store i64 %5434, i64* %RAX.i732, align 8
  %5435 = icmp ult i32 %5433, %5424
  %5436 = icmp ult i32 %5433, %5431
  %5437 = or i1 %5435, %5436
  %5438 = zext i1 %5437 to i8
  store i8 %5438, i8* %14, align 1
  %5439 = and i32 %5433, 255
  %5440 = tail call i32 @llvm.ctpop.i32(i32 %5439)
  %5441 = trunc i32 %5440 to i8
  %5442 = and i8 %5441, 1
  %5443 = xor i8 %5442, 1
  store i8 %5443, i8* %21, align 1
  %5444 = xor i32 %5431, %5424
  %5445 = xor i32 %5444, %5433
  %5446 = lshr i32 %5445, 4
  %5447 = trunc i32 %5446 to i8
  %5448 = and i8 %5447, 1
  store i8 %5448, i8* %27, align 1
  %5449 = icmp eq i32 %5433, 0
  %5450 = zext i1 %5449 to i8
  store i8 %5450, i8* %30, align 1
  %5451 = lshr i32 %5433, 31
  %5452 = trunc i32 %5451 to i8
  store i8 %5452, i8* %33, align 1
  %5453 = lshr i32 %5424, 31
  %5454 = lshr i32 %5430, 30
  %5455 = and i32 %5454, 1
  %5456 = xor i32 %5451, %5453
  %5457 = xor i32 %5451, %5455
  %5458 = add nuw nsw i32 %5456, %5457
  %5459 = icmp eq i32 %5458, 2
  %5460 = zext i1 %5459 to i8
  store i8 %5460, i8* %39, align 1
  %5461 = add i64 %5419, -60
  %5462 = add i64 %5421, 16
  store i64 %5462, i64* %3, align 8
  %5463 = inttoptr i64 %5461 to i32*
  %5464 = load i32, i32* %5463, align 4
  %5465 = add i32 %5464, %5433
  %5466 = lshr i32 %5465, 31
  %5467 = add i32 %5465, 2
  %5468 = zext i32 %5467 to i64
  store i64 %5468, i64* %RAX.i732, align 8
  %5469 = icmp ugt i32 %5465, -3
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %14, align 1
  %5471 = and i32 %5467, 255
  %5472 = tail call i32 @llvm.ctpop.i32(i32 %5471)
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  %5475 = xor i8 %5474, 1
  store i8 %5475, i8* %21, align 1
  %5476 = xor i32 %5467, %5465
  %5477 = lshr i32 %5476, 4
  %5478 = trunc i32 %5477 to i8
  %5479 = and i8 %5478, 1
  store i8 %5479, i8* %27, align 1
  %5480 = icmp eq i32 %5467, 0
  %5481 = zext i1 %5480 to i8
  store i8 %5481, i8* %30, align 1
  %5482 = lshr i32 %5467, 31
  %5483 = trunc i32 %5482 to i8
  store i8 %5483, i8* %33, align 1
  %5484 = xor i32 %5482, %5466
  %5485 = add nuw nsw i32 %5484, %5482
  %5486 = icmp eq i32 %5485, 2
  %5487 = zext i1 %5486 to i8
  store i8 %5487, i8* %39, align 1
  %5488 = sext i32 %5467 to i64
  %5489 = lshr i64 %5488, 32
  store i64 %5489, i64* %5388, align 8
  %5490 = load i32, i32* %ESI.i100, align 4
  %5491 = add i64 %5421, 22
  store i64 %5491, i64* %3, align 8
  %5492 = sext i32 %5490 to i64
  %5493 = shl nuw i64 %5489, 32
  %5494 = or i64 %5493, %5468
  %5495 = sdiv i64 %5494, %5492
  %5496 = shl i64 %5495, 32
  %5497 = ashr exact i64 %5496, 32
  %5498 = icmp eq i64 %5495, %5497
  br i1 %5498, label %5501, label %5499

; <label>:5499:                                   ; preds = %routine_idivl__esi.exit837
  %5500 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5491, %struct.Memory* %5414)
  %.pre167 = load i16, i16* %AX.i1861, align 2
  %.pre168 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit806

; <label>:5501:                                   ; preds = %routine_idivl__esi.exit837
  %5502 = srem i64 %5494, %5492
  %5503 = and i64 %5495, 4294967295
  store i64 %5503, i64* %RAX.i732, align 8
  %5504 = and i64 %5502, 4294967295
  store i64 %5504, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5505 = trunc i64 %5495 to i16
  br label %routine_idivl__esi.exit806

routine_idivl__esi.exit806:                       ; preds = %5501, %5499
  %5506 = phi i64 [ %.pre168, %5499 ], [ %5491, %5501 ]
  %5507 = phi i16 [ %.pre167, %5499 ], [ %5505, %5501 ]
  %5508 = phi %struct.Memory* [ %5500, %5499 ], [ %5414, %5501 ]
  store i16 %5507, i16* %DI.i834, align 2
  %5509 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5510 = add i64 %5509, 2330
  %5511 = add i64 %5506, 19
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i16*
  store i16 %5507, i16* %5512, align 2
  %5513 = load i64, i64* %3, align 8
  %5514 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5514, i64* %R8.i187, align 8
  %5515 = add i64 %5514, 2296
  %5516 = load i16, i16* %DI.i834, align 2
  %5517 = add i64 %5513, 16
  store i64 %5517, i64* %3, align 8
  %5518 = inttoptr i64 %5515 to i16*
  store i16 %5516, i16* %5518, align 2
  %5519 = load i64, i64* %RBP.i, align 8
  %5520 = add i64 %5519, -56
  %5521 = load i64, i64* %3, align 8
  %5522 = add i64 %5521, 3
  store i64 %5522, i64* %3, align 8
  %5523 = inttoptr i64 %5520 to i32*
  %5524 = load i32, i32* %5523, align 4
  %5525 = zext i32 %5524 to i64
  store i64 %5525, i64* %RAX.i732, align 8
  %5526 = add i64 %5519, -60
  %5527 = add i64 %5521, 7
  store i64 %5527, i64* %3, align 8
  %5528 = inttoptr i64 %5526 to i32*
  %5529 = load i32, i32* %5528, align 4
  %5530 = shl i32 %5529, 1
  %5531 = zext i32 %5530 to i64
  store i64 %5531, i64* %5426, align 8
  %5532 = add i32 %5530, %5524
  %5533 = zext i32 %5532 to i64
  store i64 %5533, i64* %RAX.i732, align 8
  %5534 = icmp ult i32 %5532, %5524
  %5535 = icmp ult i32 %5532, %5530
  %5536 = or i1 %5534, %5535
  %5537 = zext i1 %5536 to i8
  store i8 %5537, i8* %14, align 1
  %5538 = and i32 %5532, 255
  %5539 = tail call i32 @llvm.ctpop.i32(i32 %5538)
  %5540 = trunc i32 %5539 to i8
  %5541 = and i8 %5540, 1
  %5542 = xor i8 %5541, 1
  store i8 %5542, i8* %21, align 1
  %5543 = xor i32 %5530, %5524
  %5544 = xor i32 %5543, %5532
  %5545 = lshr i32 %5544, 4
  %5546 = trunc i32 %5545 to i8
  %5547 = and i8 %5546, 1
  store i8 %5547, i8* %27, align 1
  %5548 = icmp eq i32 %5532, 0
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %30, align 1
  %5550 = lshr i32 %5532, 31
  %5551 = trunc i32 %5550 to i8
  store i8 %5551, i8* %33, align 1
  %5552 = lshr i32 %5524, 31
  %5553 = lshr i32 %5529, 30
  %5554 = and i32 %5553, 1
  %5555 = xor i32 %5550, %5552
  %5556 = xor i32 %5550, %5554
  %5557 = add nuw nsw i32 %5555, %5556
  %5558 = icmp eq i32 %5557, 2
  %5559 = zext i1 %5558 to i8
  store i8 %5559, i8* %39, align 1
  %5560 = add i64 %5519, -96
  %5561 = add i64 %5521, 16
  store i64 %5561, i64* %3, align 8
  %5562 = inttoptr i64 %5560 to i32*
  %5563 = load i32, i32* %5562, align 4
  %5564 = add i32 %5563, %5532
  %5565 = lshr i32 %5564, 31
  %5566 = add i32 %5564, 2
  %5567 = zext i32 %5566 to i64
  store i64 %5567, i64* %RAX.i732, align 8
  %5568 = icmp ugt i32 %5564, -3
  %5569 = zext i1 %5568 to i8
  store i8 %5569, i8* %14, align 1
  %5570 = and i32 %5566, 255
  %5571 = tail call i32 @llvm.ctpop.i32(i32 %5570)
  %5572 = trunc i32 %5571 to i8
  %5573 = and i8 %5572, 1
  %5574 = xor i8 %5573, 1
  store i8 %5574, i8* %21, align 1
  %5575 = xor i32 %5566, %5564
  %5576 = lshr i32 %5575, 4
  %5577 = trunc i32 %5576 to i8
  %5578 = and i8 %5577, 1
  store i8 %5578, i8* %27, align 1
  %5579 = icmp eq i32 %5566, 0
  %5580 = zext i1 %5579 to i8
  store i8 %5580, i8* %30, align 1
  %5581 = lshr i32 %5566, 31
  %5582 = trunc i32 %5581 to i8
  store i8 %5582, i8* %33, align 1
  %5583 = xor i32 %5581, %5565
  %5584 = add nuw nsw i32 %5583, %5581
  %5585 = icmp eq i32 %5584, 2
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %39, align 1
  %5587 = sext i32 %5566 to i64
  %5588 = lshr i64 %5587, 32
  store i64 %5588, i64* %5388, align 8
  %5589 = load i32, i32* %ESI.i100, align 4
  %5590 = add i64 %5521, 22
  store i64 %5590, i64* %3, align 8
  %5591 = sext i32 %5589 to i64
  %5592 = shl nuw i64 %5588, 32
  %5593 = or i64 %5592, %5567
  %5594 = sdiv i64 %5593, %5591
  %5595 = shl i64 %5594, 32
  %5596 = ashr exact i64 %5595, 32
  %5597 = icmp eq i64 %5594, %5596
  br i1 %5597, label %5600, label %5598

; <label>:5598:                                   ; preds = %routine_idivl__esi.exit806
  %5599 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5590, %struct.Memory* %5508)
  %.pre169 = load i16, i16* %AX.i1861, align 2
  %.pre170 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit771

; <label>:5600:                                   ; preds = %routine_idivl__esi.exit806
  %5601 = srem i64 %5593, %5591
  %5602 = and i64 %5594, 4294967295
  store i64 %5602, i64* %RAX.i732, align 8
  %5603 = and i64 %5601, 4294967295
  store i64 %5603, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5604 = trunc i64 %5594 to i16
  br label %routine_idivl__esi.exit771

routine_idivl__esi.exit771:                       ; preds = %5600, %5598
  %5605 = phi i64 [ %.pre170, %5598 ], [ %5590, %5600 ]
  %5606 = phi i16 [ %.pre169, %5598 ], [ %5604, %5600 ]
  %5607 = phi %struct.Memory* [ %5599, %5598 ], [ %5508, %5600 ]
  store i16 %5606, i16* %DI.i834, align 2
  %5608 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5609 = add i64 %5608, 2332
  %5610 = add i64 %5605, 19
  store i64 %5610, i64* %3, align 8
  %5611 = inttoptr i64 %5609 to i16*
  store i16 %5606, i16* %5611, align 2
  %5612 = load i64, i64* %3, align 8
  %5613 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5614 = add i64 %5613, 2298
  %5615 = load i16, i16* %DI.i834, align 2
  %5616 = add i64 %5612, 16
  store i64 %5616, i64* %3, align 8
  %5617 = inttoptr i64 %5614 to i16*
  store i16 %5615, i16* %5617, align 2
  %5618 = load i64, i64* %3, align 8
  %5619 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5619, i64* %R8.i187, align 8
  %5620 = add i64 %5619, 2264
  %5621 = load i16, i16* %DI.i834, align 2
  %5622 = add i64 %5618, 16
  store i64 %5622, i64* %3, align 8
  %5623 = inttoptr i64 %5620 to i16*
  store i16 %5621, i16* %5623, align 2
  %5624 = load i64, i64* %RBP.i, align 8
  %5625 = add i64 %5624, -60
  %5626 = load i64, i64* %3, align 8
  %5627 = add i64 %5626, 3
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5625 to i32*
  %5629 = load i32, i32* %5628, align 4
  %5630 = zext i32 %5629 to i64
  store i64 %5630, i64* %RAX.i732, align 8
  %5631 = add i64 %5624, -96
  %5632 = add i64 %5626, 7
  store i64 %5632, i64* %3, align 8
  %5633 = inttoptr i64 %5631 to i32*
  %5634 = load i32, i32* %5633, align 4
  %5635 = shl i32 %5634, 1
  %5636 = zext i32 %5635 to i64
  store i64 %5636, i64* %5426, align 8
  %5637 = add i32 %5635, %5629
  %5638 = zext i32 %5637 to i64
  store i64 %5638, i64* %RAX.i732, align 8
  %5639 = icmp ult i32 %5637, %5629
  %5640 = icmp ult i32 %5637, %5635
  %5641 = or i1 %5639, %5640
  %5642 = zext i1 %5641 to i8
  store i8 %5642, i8* %14, align 1
  %5643 = and i32 %5637, 255
  %5644 = tail call i32 @llvm.ctpop.i32(i32 %5643)
  %5645 = trunc i32 %5644 to i8
  %5646 = and i8 %5645, 1
  %5647 = xor i8 %5646, 1
  store i8 %5647, i8* %21, align 1
  %5648 = xor i32 %5635, %5629
  %5649 = xor i32 %5648, %5637
  %5650 = lshr i32 %5649, 4
  %5651 = trunc i32 %5650 to i8
  %5652 = and i8 %5651, 1
  store i8 %5652, i8* %27, align 1
  %5653 = icmp eq i32 %5637, 0
  %5654 = zext i1 %5653 to i8
  store i8 %5654, i8* %30, align 1
  %5655 = lshr i32 %5637, 31
  %5656 = trunc i32 %5655 to i8
  store i8 %5656, i8* %33, align 1
  %5657 = lshr i32 %5629, 31
  %5658 = lshr i32 %5634, 30
  %5659 = and i32 %5658, 1
  %5660 = xor i32 %5655, %5657
  %5661 = xor i32 %5655, %5659
  %5662 = add nuw nsw i32 %5660, %5661
  %5663 = icmp eq i32 %5662, 2
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %39, align 1
  %5665 = add i64 %5624, -92
  %5666 = add i64 %5626, 16
  store i64 %5666, i64* %3, align 8
  %5667 = inttoptr i64 %5665 to i32*
  %5668 = load i32, i32* %5667, align 4
  %5669 = add i32 %5668, %5637
  %5670 = lshr i32 %5669, 31
  %5671 = add i32 %5669, 2
  %5672 = zext i32 %5671 to i64
  store i64 %5672, i64* %RAX.i732, align 8
  %5673 = icmp ugt i32 %5669, -3
  %5674 = zext i1 %5673 to i8
  store i8 %5674, i8* %14, align 1
  %5675 = and i32 %5671, 255
  %5676 = tail call i32 @llvm.ctpop.i32(i32 %5675)
  %5677 = trunc i32 %5676 to i8
  %5678 = and i8 %5677, 1
  %5679 = xor i8 %5678, 1
  store i8 %5679, i8* %21, align 1
  %5680 = xor i32 %5671, %5669
  %5681 = lshr i32 %5680, 4
  %5682 = trunc i32 %5681 to i8
  %5683 = and i8 %5682, 1
  store i8 %5683, i8* %27, align 1
  %5684 = icmp eq i32 %5671, 0
  %5685 = zext i1 %5684 to i8
  store i8 %5685, i8* %30, align 1
  %5686 = lshr i32 %5671, 31
  %5687 = trunc i32 %5686 to i8
  store i8 %5687, i8* %33, align 1
  %5688 = xor i32 %5686, %5670
  %5689 = add nuw nsw i32 %5688, %5686
  %5690 = icmp eq i32 %5689, 2
  %5691 = zext i1 %5690 to i8
  store i8 %5691, i8* %39, align 1
  %5692 = sext i32 %5671 to i64
  %5693 = lshr i64 %5692, 32
  store i64 %5693, i64* %5388, align 8
  %5694 = load i32, i32* %ESI.i100, align 4
  %5695 = add i64 %5626, 22
  store i64 %5695, i64* %3, align 8
  %5696 = sext i32 %5694 to i64
  %5697 = shl nuw i64 %5693, 32
  %5698 = or i64 %5697, %5672
  %5699 = sdiv i64 %5698, %5696
  %5700 = shl i64 %5699, 32
  %5701 = ashr exact i64 %5700, 32
  %5702 = icmp eq i64 %5699, %5701
  br i1 %5702, label %5705, label %5703

; <label>:5703:                                   ; preds = %routine_idivl__esi.exit771
  %5704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5695, %struct.Memory* %5607)
  %.pre171 = load i16, i16* %AX.i1861, align 2
  %.pre172 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit730

; <label>:5705:                                   ; preds = %routine_idivl__esi.exit771
  %5706 = srem i64 %5698, %5696
  %5707 = and i64 %5699, 4294967295
  store i64 %5707, i64* %RAX.i732, align 8
  %5708 = and i64 %5706, 4294967295
  store i64 %5708, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5709 = trunc i64 %5699 to i16
  br label %routine_idivl__esi.exit730

routine_idivl__esi.exit730:                       ; preds = %5705, %5703
  %5710 = phi i64 [ %.pre172, %5703 ], [ %5695, %5705 ]
  %5711 = phi i16 [ %.pre171, %5703 ], [ %5709, %5705 ]
  %5712 = phi %struct.Memory* [ %5704, %5703 ], [ %5607, %5705 ]
  store i16 %5711, i16* %DI.i834, align 2
  %5713 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5714 = add i64 %5713, 2334
  %5715 = add i64 %5710, 19
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5714 to i16*
  store i16 %5711, i16* %5716, align 2
  %5717 = load i64, i64* %3, align 8
  %5718 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5719 = add i64 %5718, 2300
  %5720 = load i16, i16* %DI.i834, align 2
  %5721 = add i64 %5717, 16
  store i64 %5721, i64* %3, align 8
  %5722 = inttoptr i64 %5719 to i16*
  store i16 %5720, i16* %5722, align 2
  %5723 = load i64, i64* %3, align 8
  %5724 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5725 = add i64 %5724, 2266
  %5726 = load i16, i16* %DI.i834, align 2
  %5727 = add i64 %5723, 16
  store i64 %5727, i64* %3, align 8
  %5728 = inttoptr i64 %5725 to i16*
  store i16 %5726, i16* %5728, align 2
  %5729 = load i64, i64* %3, align 8
  %5730 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5730, i64* %R8.i187, align 8
  %5731 = add i64 %5730, 2232
  %5732 = load i16, i16* %DI.i834, align 2
  %5733 = add i64 %5729, 16
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5731 to i16*
  store i16 %5732, i16* %5734, align 2
  %5735 = load i64, i64* %RBP.i, align 8
  %5736 = add i64 %5735, -96
  %5737 = load i64, i64* %3, align 8
  %5738 = add i64 %5737, 3
  store i64 %5738, i64* %3, align 8
  %5739 = inttoptr i64 %5736 to i32*
  %5740 = load i32, i32* %5739, align 4
  %5741 = zext i32 %5740 to i64
  store i64 %5741, i64* %RAX.i732, align 8
  %5742 = add i64 %5735, -92
  %5743 = add i64 %5737, 7
  store i64 %5743, i64* %3, align 8
  %5744 = inttoptr i64 %5742 to i32*
  %5745 = load i32, i32* %5744, align 4
  %5746 = shl i32 %5745, 1
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %5426, align 8
  %5748 = add i32 %5746, %5740
  %5749 = zext i32 %5748 to i64
  store i64 %5749, i64* %RAX.i732, align 8
  %5750 = icmp ult i32 %5748, %5740
  %5751 = icmp ult i32 %5748, %5746
  %5752 = or i1 %5750, %5751
  %5753 = zext i1 %5752 to i8
  store i8 %5753, i8* %14, align 1
  %5754 = and i32 %5748, 255
  %5755 = tail call i32 @llvm.ctpop.i32(i32 %5754)
  %5756 = trunc i32 %5755 to i8
  %5757 = and i8 %5756, 1
  %5758 = xor i8 %5757, 1
  store i8 %5758, i8* %21, align 1
  %5759 = xor i32 %5746, %5740
  %5760 = xor i32 %5759, %5748
  %5761 = lshr i32 %5760, 4
  %5762 = trunc i32 %5761 to i8
  %5763 = and i8 %5762, 1
  store i8 %5763, i8* %27, align 1
  %5764 = icmp eq i32 %5748, 0
  %5765 = zext i1 %5764 to i8
  store i8 %5765, i8* %30, align 1
  %5766 = lshr i32 %5748, 31
  %5767 = trunc i32 %5766 to i8
  store i8 %5767, i8* %33, align 1
  %5768 = lshr i32 %5740, 31
  %5769 = lshr i32 %5745, 30
  %5770 = and i32 %5769, 1
  %5771 = xor i32 %5766, %5768
  %5772 = xor i32 %5766, %5770
  %5773 = add nuw nsw i32 %5771, %5772
  %5774 = icmp eq i32 %5773, 2
  %5775 = zext i1 %5774 to i8
  store i8 %5775, i8* %39, align 1
  %5776 = add i64 %5735, -88
  %5777 = add i64 %5737, 16
  store i64 %5777, i64* %3, align 8
  %5778 = inttoptr i64 %5776 to i32*
  %5779 = load i32, i32* %5778, align 4
  %5780 = add i32 %5779, %5748
  %5781 = lshr i32 %5780, 31
  %5782 = add i32 %5780, 2
  %5783 = zext i32 %5782 to i64
  store i64 %5783, i64* %RAX.i732, align 8
  %5784 = icmp ugt i32 %5780, -3
  %5785 = zext i1 %5784 to i8
  store i8 %5785, i8* %14, align 1
  %5786 = and i32 %5782, 255
  %5787 = tail call i32 @llvm.ctpop.i32(i32 %5786)
  %5788 = trunc i32 %5787 to i8
  %5789 = and i8 %5788, 1
  %5790 = xor i8 %5789, 1
  store i8 %5790, i8* %21, align 1
  %5791 = xor i32 %5782, %5780
  %5792 = lshr i32 %5791, 4
  %5793 = trunc i32 %5792 to i8
  %5794 = and i8 %5793, 1
  store i8 %5794, i8* %27, align 1
  %5795 = icmp eq i32 %5782, 0
  %5796 = zext i1 %5795 to i8
  store i8 %5796, i8* %30, align 1
  %5797 = lshr i32 %5782, 31
  %5798 = trunc i32 %5797 to i8
  store i8 %5798, i8* %33, align 1
  %5799 = xor i32 %5797, %5781
  %5800 = add nuw nsw i32 %5799, %5797
  %5801 = icmp eq i32 %5800, 2
  %5802 = zext i1 %5801 to i8
  store i8 %5802, i8* %39, align 1
  %5803 = sext i32 %5782 to i64
  %5804 = lshr i64 %5803, 32
  store i64 %5804, i64* %5388, align 8
  %5805 = load i32, i32* %ESI.i100, align 4
  %5806 = add i64 %5737, 22
  store i64 %5806, i64* %3, align 8
  %5807 = sext i32 %5805 to i64
  %5808 = shl nuw i64 %5804, 32
  %5809 = or i64 %5808, %5783
  %5810 = sdiv i64 %5809, %5807
  %5811 = shl i64 %5810, 32
  %5812 = ashr exact i64 %5811, 32
  %5813 = icmp eq i64 %5810, %5812
  br i1 %5813, label %5816, label %5814

; <label>:5814:                                   ; preds = %routine_idivl__esi.exit730
  %5815 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5806, %struct.Memory* %5712)
  %.pre173 = load i16, i16* %AX.i1861, align 2
  %.pre174 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit685

; <label>:5816:                                   ; preds = %routine_idivl__esi.exit730
  %5817 = srem i64 %5809, %5807
  %5818 = and i64 %5810, 4294967295
  store i64 %5818, i64* %RAX.i732, align 8
  %5819 = and i64 %5817, 4294967295
  store i64 %5819, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5820 = trunc i64 %5810 to i16
  br label %routine_idivl__esi.exit685

routine_idivl__esi.exit685:                       ; preds = %5816, %5814
  %5821 = phi i64 [ %.pre174, %5814 ], [ %5806, %5816 ]
  %5822 = phi i16 [ %.pre173, %5814 ], [ %5820, %5816 ]
  %5823 = phi %struct.Memory* [ %5815, %5814 ], [ %5712, %5816 ]
  store i16 %5822, i16* %DI.i834, align 2
  %5824 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5825 = add i64 %5824, 2302
  %5826 = add i64 %5821, 19
  store i64 %5826, i64* %3, align 8
  %5827 = inttoptr i64 %5825 to i16*
  store i16 %5822, i16* %5827, align 2
  %5828 = load i64, i64* %3, align 8
  %5829 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5830 = add i64 %5829, 2268
  %5831 = load i16, i16* %DI.i834, align 2
  %5832 = add i64 %5828, 16
  store i64 %5832, i64* %3, align 8
  %5833 = inttoptr i64 %5830 to i16*
  store i16 %5831, i16* %5833, align 2
  %5834 = load i64, i64* %3, align 8
  %5835 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5835, i64* %R8.i187, align 8
  %5836 = add i64 %5835, 2234
  %5837 = load i16, i16* %DI.i834, align 2
  %5838 = add i64 %5834, 16
  store i64 %5838, i64* %3, align 8
  %5839 = inttoptr i64 %5836 to i16*
  store i16 %5837, i16* %5839, align 2
  %5840 = load i64, i64* %RBP.i, align 8
  %5841 = add i64 %5840, -92
  %5842 = load i64, i64* %3, align 8
  %5843 = add i64 %5842, 3
  store i64 %5843, i64* %3, align 8
  %5844 = inttoptr i64 %5841 to i32*
  %5845 = load i32, i32* %5844, align 4
  %5846 = zext i32 %5845 to i64
  store i64 %5846, i64* %RAX.i732, align 8
  %5847 = add i64 %5840, -88
  %5848 = add i64 %5842, 7
  store i64 %5848, i64* %3, align 8
  %5849 = inttoptr i64 %5847 to i32*
  %5850 = load i32, i32* %5849, align 4
  %5851 = shl i32 %5850, 1
  %5852 = zext i32 %5851 to i64
  store i64 %5852, i64* %5426, align 8
  %5853 = add i32 %5851, %5845
  %5854 = zext i32 %5853 to i64
  store i64 %5854, i64* %RAX.i732, align 8
  %5855 = icmp ult i32 %5853, %5845
  %5856 = icmp ult i32 %5853, %5851
  %5857 = or i1 %5855, %5856
  %5858 = zext i1 %5857 to i8
  store i8 %5858, i8* %14, align 1
  %5859 = and i32 %5853, 255
  %5860 = tail call i32 @llvm.ctpop.i32(i32 %5859)
  %5861 = trunc i32 %5860 to i8
  %5862 = and i8 %5861, 1
  %5863 = xor i8 %5862, 1
  store i8 %5863, i8* %21, align 1
  %5864 = xor i32 %5851, %5845
  %5865 = xor i32 %5864, %5853
  %5866 = lshr i32 %5865, 4
  %5867 = trunc i32 %5866 to i8
  %5868 = and i8 %5867, 1
  store i8 %5868, i8* %27, align 1
  %5869 = icmp eq i32 %5853, 0
  %5870 = zext i1 %5869 to i8
  store i8 %5870, i8* %30, align 1
  %5871 = lshr i32 %5853, 31
  %5872 = trunc i32 %5871 to i8
  store i8 %5872, i8* %33, align 1
  %5873 = lshr i32 %5845, 31
  %5874 = lshr i32 %5850, 30
  %5875 = and i32 %5874, 1
  %5876 = xor i32 %5871, %5873
  %5877 = xor i32 %5871, %5875
  %5878 = add nuw nsw i32 %5876, %5877
  %5879 = icmp eq i32 %5878, 2
  %5880 = zext i1 %5879 to i8
  store i8 %5880, i8* %39, align 1
  %5881 = add i64 %5840, -84
  %5882 = add i64 %5842, 16
  store i64 %5882, i64* %3, align 8
  %5883 = inttoptr i64 %5881 to i32*
  %5884 = load i32, i32* %5883, align 4
  %5885 = add i32 %5884, %5853
  %5886 = lshr i32 %5885, 31
  %5887 = add i32 %5885, 2
  %5888 = zext i32 %5887 to i64
  store i64 %5888, i64* %RAX.i732, align 8
  %5889 = icmp ugt i32 %5885, -3
  %5890 = zext i1 %5889 to i8
  store i8 %5890, i8* %14, align 1
  %5891 = and i32 %5887, 255
  %5892 = tail call i32 @llvm.ctpop.i32(i32 %5891)
  %5893 = trunc i32 %5892 to i8
  %5894 = and i8 %5893, 1
  %5895 = xor i8 %5894, 1
  store i8 %5895, i8* %21, align 1
  %5896 = xor i32 %5887, %5885
  %5897 = lshr i32 %5896, 4
  %5898 = trunc i32 %5897 to i8
  %5899 = and i8 %5898, 1
  store i8 %5899, i8* %27, align 1
  %5900 = icmp eq i32 %5887, 0
  %5901 = zext i1 %5900 to i8
  store i8 %5901, i8* %30, align 1
  %5902 = lshr i32 %5887, 31
  %5903 = trunc i32 %5902 to i8
  store i8 %5903, i8* %33, align 1
  %5904 = xor i32 %5902, %5886
  %5905 = add nuw nsw i32 %5904, %5902
  %5906 = icmp eq i32 %5905, 2
  %5907 = zext i1 %5906 to i8
  store i8 %5907, i8* %39, align 1
  %5908 = sext i32 %5887 to i64
  %5909 = lshr i64 %5908, 32
  store i64 %5909, i64* %5388, align 8
  %5910 = load i32, i32* %ESI.i100, align 4
  %5911 = add i64 %5842, 22
  store i64 %5911, i64* %3, align 8
  %5912 = sext i32 %5910 to i64
  %5913 = shl nuw i64 %5909, 32
  %5914 = or i64 %5913, %5888
  %5915 = sdiv i64 %5914, %5912
  %5916 = shl i64 %5915, 32
  %5917 = ashr exact i64 %5916, 32
  %5918 = icmp eq i64 %5915, %5917
  br i1 %5918, label %5921, label %5919

; <label>:5919:                                   ; preds = %routine_idivl__esi.exit685
  %5920 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5911, %struct.Memory* %5823)
  %.pre175 = load i16, i16* %AX.i1861, align 2
  %.pre176 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit646

; <label>:5921:                                   ; preds = %routine_idivl__esi.exit685
  %5922 = srem i64 %5914, %5912
  %5923 = and i64 %5915, 4294967295
  store i64 %5923, i64* %RAX.i732, align 8
  %5924 = and i64 %5922, 4294967295
  store i64 %5924, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5925 = trunc i64 %5915 to i16
  br label %routine_idivl__esi.exit646

routine_idivl__esi.exit646:                       ; preds = %5921, %5919
  %5926 = phi i64 [ %.pre176, %5919 ], [ %5911, %5921 ]
  %5927 = phi i16 [ %.pre175, %5919 ], [ %5925, %5921 ]
  %5928 = phi %struct.Memory* [ %5920, %5919 ], [ %5823, %5921 ]
  store i16 %5927, i16* %DI.i834, align 2
  %5929 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5930 = add i64 %5929, 2270
  %5931 = add i64 %5926, 19
  store i64 %5931, i64* %3, align 8
  %5932 = inttoptr i64 %5930 to i16*
  store i16 %5927, i16* %5932, align 2
  %5933 = load i64, i64* %3, align 8
  %5934 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5934, i64* %R8.i187, align 8
  %5935 = add i64 %5934, 2236
  %5936 = load i16, i16* %DI.i834, align 2
  %5937 = add i64 %5933, 16
  store i64 %5937, i64* %3, align 8
  %5938 = inttoptr i64 %5935 to i16*
  store i16 %5936, i16* %5938, align 2
  %5939 = load i64, i64* %RBP.i, align 8
  %5940 = add i64 %5939, -88
  %5941 = load i64, i64* %3, align 8
  %5942 = add i64 %5941, 3
  store i64 %5942, i64* %3, align 8
  %5943 = inttoptr i64 %5940 to i32*
  %5944 = load i32, i32* %5943, align 4
  %5945 = zext i32 %5944 to i64
  store i64 %5945, i64* %RAX.i732, align 8
  %5946 = add i64 %5939, -84
  %5947 = add i64 %5941, 7
  store i64 %5947, i64* %3, align 8
  %5948 = inttoptr i64 %5946 to i32*
  %5949 = load i32, i32* %5948, align 4
  %5950 = shl i32 %5949, 1
  %5951 = zext i32 %5950 to i64
  store i64 %5951, i64* %5426, align 8
  %5952 = add i32 %5950, %5944
  %5953 = zext i32 %5952 to i64
  store i64 %5953, i64* %RAX.i732, align 8
  %5954 = icmp ult i32 %5952, %5944
  %5955 = icmp ult i32 %5952, %5950
  %5956 = or i1 %5954, %5955
  %5957 = zext i1 %5956 to i8
  store i8 %5957, i8* %14, align 1
  %5958 = and i32 %5952, 255
  %5959 = tail call i32 @llvm.ctpop.i32(i32 %5958)
  %5960 = trunc i32 %5959 to i8
  %5961 = and i8 %5960, 1
  %5962 = xor i8 %5961, 1
  store i8 %5962, i8* %21, align 1
  %5963 = xor i32 %5950, %5944
  %5964 = xor i32 %5963, %5952
  %5965 = lshr i32 %5964, 4
  %5966 = trunc i32 %5965 to i8
  %5967 = and i8 %5966, 1
  store i8 %5967, i8* %27, align 1
  %5968 = icmp eq i32 %5952, 0
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %30, align 1
  %5970 = lshr i32 %5952, 31
  %5971 = trunc i32 %5970 to i8
  store i8 %5971, i8* %33, align 1
  %5972 = lshr i32 %5944, 31
  %5973 = lshr i32 %5949, 30
  %5974 = and i32 %5973, 1
  %5975 = xor i32 %5970, %5972
  %5976 = xor i32 %5970, %5974
  %5977 = add nuw nsw i32 %5975, %5976
  %5978 = icmp eq i32 %5977, 2
  %5979 = zext i1 %5978 to i8
  store i8 %5979, i8* %39, align 1
  %5980 = add i64 %5939, -80
  %5981 = add i64 %5941, 16
  store i64 %5981, i64* %3, align 8
  %5982 = inttoptr i64 %5980 to i32*
  %5983 = load i32, i32* %5982, align 4
  %5984 = add i32 %5983, %5952
  %5985 = lshr i32 %5984, 31
  %5986 = add i32 %5984, 2
  %5987 = zext i32 %5986 to i64
  store i64 %5987, i64* %RAX.i732, align 8
  %5988 = icmp ugt i32 %5984, -3
  %5989 = zext i1 %5988 to i8
  store i8 %5989, i8* %14, align 1
  %5990 = and i32 %5986, 255
  %5991 = tail call i32 @llvm.ctpop.i32(i32 %5990)
  %5992 = trunc i32 %5991 to i8
  %5993 = and i8 %5992, 1
  %5994 = xor i8 %5993, 1
  store i8 %5994, i8* %21, align 1
  %5995 = xor i32 %5986, %5984
  %5996 = lshr i32 %5995, 4
  %5997 = trunc i32 %5996 to i8
  %5998 = and i8 %5997, 1
  store i8 %5998, i8* %27, align 1
  %5999 = icmp eq i32 %5986, 0
  %6000 = zext i1 %5999 to i8
  store i8 %6000, i8* %30, align 1
  %6001 = lshr i32 %5986, 31
  %6002 = trunc i32 %6001 to i8
  store i8 %6002, i8* %33, align 1
  %6003 = xor i32 %6001, %5985
  %6004 = add nuw nsw i32 %6003, %6001
  %6005 = icmp eq i32 %6004, 2
  %6006 = zext i1 %6005 to i8
  store i8 %6006, i8* %39, align 1
  %6007 = sext i32 %5986 to i64
  %6008 = lshr i64 %6007, 32
  store i64 %6008, i64* %5388, align 8
  %6009 = load i32, i32* %ESI.i100, align 4
  %6010 = add i64 %5941, 22
  store i64 %6010, i64* %3, align 8
  %6011 = sext i32 %6009 to i64
  %6012 = shl nuw i64 %6008, 32
  %6013 = or i64 %6012, %5987
  %6014 = sdiv i64 %6013, %6011
  %6015 = shl i64 %6014, 32
  %6016 = ashr exact i64 %6015, 32
  %6017 = icmp eq i64 %6014, %6016
  br i1 %6017, label %6020, label %6018

; <label>:6018:                                   ; preds = %routine_idivl__esi.exit646
  %6019 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6010, %struct.Memory* %5928)
  %.pre177 = load i16, i16* %AX.i1861, align 2
  %.pre178 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit611

; <label>:6020:                                   ; preds = %routine_idivl__esi.exit646
  %6021 = srem i64 %6013, %6011
  %6022 = and i64 %6014, 4294967295
  store i64 %6022, i64* %RAX.i732, align 8
  %6023 = and i64 %6021, 4294967295
  store i64 %6023, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6024 = trunc i64 %6014 to i16
  br label %routine_idivl__esi.exit611

routine_idivl__esi.exit611:                       ; preds = %6020, %6018
  %6025 = phi i64 [ %.pre178, %6018 ], [ %6010, %6020 ]
  %6026 = phi i16 [ %.pre177, %6018 ], [ %6024, %6020 ]
  %6027 = phi %struct.Memory* [ %6019, %6018 ], [ %5928, %6020 ]
  store i16 %6026, i16* %DI.i834, align 2
  %6028 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6028, i64* %R8.i187, align 8
  %6029 = add i64 %6028, 2238
  %6030 = add i64 %6025, 19
  store i64 %6030, i64* %3, align 8
  %6031 = inttoptr i64 %6029 to i16*
  store i16 %6026, i16* %6031, align 2
  %6032 = load i64, i64* %RBP.i, align 8
  %6033 = add i64 %6032, -96
  %6034 = load i64, i64* %3, align 8
  %6035 = add i64 %6034, 3
  store i64 %6035, i64* %3, align 8
  %6036 = inttoptr i64 %6033 to i32*
  %6037 = load i32, i32* %6036, align 4
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RAX.i732, align 8
  %6039 = add i64 %6032, -92
  %6040 = add i64 %6034, 6
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6039 to i32*
  %6042 = load i32, i32* %6041, align 4
  %6043 = add i32 %6042, %6037
  %6044 = lshr i32 %6043, 31
  %6045 = add i32 %6043, 1
  %6046 = zext i32 %6045 to i64
  store i64 %6046, i64* %RAX.i732, align 8
  %6047 = icmp eq i32 %6043, -1
  %6048 = icmp eq i32 %6045, 0
  %6049 = or i1 %6047, %6048
  %6050 = zext i1 %6049 to i8
  store i8 %6050, i8* %14, align 1
  %6051 = and i32 %6045, 255
  %6052 = tail call i32 @llvm.ctpop.i32(i32 %6051)
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = xor i8 %6054, 1
  store i8 %6055, i8* %21, align 1
  %6056 = xor i32 %6045, %6043
  %6057 = lshr i32 %6056, 4
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  store i8 %6059, i8* %27, align 1
  %6060 = zext i1 %6048 to i8
  store i8 %6060, i8* %30, align 1
  %6061 = lshr i32 %6045, 31
  %6062 = trunc i32 %6061 to i8
  store i8 %6062, i8* %33, align 1
  %6063 = xor i32 %6061, %6044
  %6064 = add nuw nsw i32 %6063, %6061
  %6065 = icmp eq i32 %6064, 2
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %39, align 1
  %6067 = sext i32 %6045 to i64
  %6068 = lshr i64 %6067, 32
  store i64 %6068, i64* %5388, align 8
  %6069 = load i32, i32* %ECX.i2686, align 4
  %6070 = add i64 %6034, 12
  store i64 %6070, i64* %3, align 8
  %6071 = sext i32 %6069 to i64
  %6072 = shl nuw i64 %6068, 32
  %6073 = or i64 %6072, %6046
  %6074 = sdiv i64 %6073, %6071
  %6075 = shl i64 %6074, 32
  %6076 = ashr exact i64 %6075, 32
  %6077 = icmp eq i64 %6074, %6076
  br i1 %6077, label %6080, label %6078

; <label>:6078:                                   ; preds = %routine_idivl__esi.exit611
  %6079 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6070, %struct.Memory* %6027)
  %.pre179 = load i16, i16* %AX.i1861, align 2
  %.pre180 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit589

; <label>:6080:                                   ; preds = %routine_idivl__esi.exit611
  %6081 = srem i64 %6073, %6071
  %6082 = and i64 %6074, 4294967295
  store i64 %6082, i64* %RAX.i732, align 8
  %6083 = and i64 %6081, 4294967295
  store i64 %6083, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6084 = trunc i64 %6074 to i16
  br label %routine_idivl__ecx.exit589

routine_idivl__ecx.exit589:                       ; preds = %6080, %6078
  %6085 = phi i64 [ %.pre180, %6078 ], [ %6070, %6080 ]
  %6086 = phi i16 [ %.pre179, %6078 ], [ %6084, %6080 ]
  %6087 = phi %struct.Memory* [ %6079, %6078 ], [ %6027, %6080 ]
  store i16 %6086, i16* %DI.i834, align 2
  %6088 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6089 = add i64 %6088, 2810
  %6090 = add i64 %6085, 19
  store i64 %6090, i64* %3, align 8
  %6091 = inttoptr i64 %6089 to i16*
  store i16 %6086, i16* %6091, align 2
  %6092 = load i64, i64* %3, align 8
  %6093 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6093, i64* %R8.i187, align 8
  %6094 = add i64 %6093, 2744
  %6095 = load i16, i16* %DI.i834, align 2
  %6096 = add i64 %6092, 16
  store i64 %6096, i64* %3, align 8
  %6097 = inttoptr i64 %6094 to i16*
  store i16 %6095, i16* %6097, align 2
  %6098 = load i64, i64* %RBP.i, align 8
  %6099 = add i64 %6098, -92
  %6100 = load i64, i64* %3, align 8
  %6101 = add i64 %6100, 3
  store i64 %6101, i64* %3, align 8
  %6102 = inttoptr i64 %6099 to i32*
  %6103 = load i32, i32* %6102, align 4
  %6104 = zext i32 %6103 to i64
  store i64 %6104, i64* %RAX.i732, align 8
  %6105 = add i64 %6098, -88
  %6106 = add i64 %6100, 6
  store i64 %6106, i64* %3, align 8
  %6107 = inttoptr i64 %6105 to i32*
  %6108 = load i32, i32* %6107, align 4
  %6109 = add i32 %6108, %6103
  %6110 = lshr i32 %6109, 31
  %6111 = add i32 %6109, 1
  %6112 = zext i32 %6111 to i64
  store i64 %6112, i64* %RAX.i732, align 8
  %6113 = icmp eq i32 %6109, -1
  %6114 = icmp eq i32 %6111, 0
  %6115 = or i1 %6113, %6114
  %6116 = zext i1 %6115 to i8
  store i8 %6116, i8* %14, align 1
  %6117 = and i32 %6111, 255
  %6118 = tail call i32 @llvm.ctpop.i32(i32 %6117)
  %6119 = trunc i32 %6118 to i8
  %6120 = and i8 %6119, 1
  %6121 = xor i8 %6120, 1
  store i8 %6121, i8* %21, align 1
  %6122 = xor i32 %6111, %6109
  %6123 = lshr i32 %6122, 4
  %6124 = trunc i32 %6123 to i8
  %6125 = and i8 %6124, 1
  store i8 %6125, i8* %27, align 1
  %6126 = zext i1 %6114 to i8
  store i8 %6126, i8* %30, align 1
  %6127 = lshr i32 %6111, 31
  %6128 = trunc i32 %6127 to i8
  store i8 %6128, i8* %33, align 1
  %6129 = xor i32 %6127, %6110
  %6130 = add nuw nsw i32 %6129, %6127
  %6131 = icmp eq i32 %6130, 2
  %6132 = zext i1 %6131 to i8
  store i8 %6132, i8* %39, align 1
  %6133 = sext i32 %6111 to i64
  %6134 = lshr i64 %6133, 32
  store i64 %6134, i64* %5388, align 8
  %6135 = load i32, i32* %ECX.i2686, align 4
  %6136 = add i64 %6100, 12
  store i64 %6136, i64* %3, align 8
  %6137 = sext i32 %6135 to i64
  %6138 = shl nuw i64 %6134, 32
  %6139 = or i64 %6138, %6112
  %6140 = sdiv i64 %6139, %6137
  %6141 = shl i64 %6140, 32
  %6142 = ashr exact i64 %6141, 32
  %6143 = icmp eq i64 %6140, %6142
  br i1 %6143, label %6146, label %6144

; <label>:6144:                                   ; preds = %routine_idivl__ecx.exit589
  %6145 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6136, %struct.Memory* %6087)
  %.pre181 = load i16, i16* %AX.i1861, align 2
  %.pre182 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit561

; <label>:6146:                                   ; preds = %routine_idivl__ecx.exit589
  %6147 = srem i64 %6139, %6137
  %6148 = and i64 %6140, 4294967295
  store i64 %6148, i64* %RAX.i732, align 8
  %6149 = and i64 %6147, 4294967295
  store i64 %6149, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6150 = trunc i64 %6140 to i16
  br label %routine_idivl__ecx.exit561

routine_idivl__ecx.exit561:                       ; preds = %6146, %6144
  %6151 = phi i64 [ %.pre182, %6144 ], [ %6136, %6146 ]
  %6152 = phi i16 [ %.pre181, %6144 ], [ %6150, %6146 ]
  %6153 = phi %struct.Memory* [ %6145, %6144 ], [ %6087, %6146 ]
  store i16 %6152, i16* %DI.i834, align 2
  %6154 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6155 = add i64 %6154, 2812
  %6156 = add i64 %6151, 19
  store i64 %6156, i64* %3, align 8
  %6157 = inttoptr i64 %6155 to i16*
  store i16 %6152, i16* %6157, align 2
  %6158 = load i64, i64* %3, align 8
  %6159 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6159, i64* %R8.i187, align 8
  %6160 = add i64 %6159, 2746
  %6161 = load i16, i16* %DI.i834, align 2
  %6162 = add i64 %6158, 16
  store i64 %6162, i64* %3, align 8
  %6163 = inttoptr i64 %6160 to i16*
  store i16 %6161, i16* %6163, align 2
  %6164 = load i64, i64* %RBP.i, align 8
  %6165 = add i64 %6164, -88
  %6166 = load i64, i64* %3, align 8
  %6167 = add i64 %6166, 3
  store i64 %6167, i64* %3, align 8
  %6168 = inttoptr i64 %6165 to i32*
  %6169 = load i32, i32* %6168, align 4
  %6170 = zext i32 %6169 to i64
  store i64 %6170, i64* %RAX.i732, align 8
  %6171 = add i64 %6164, -84
  %6172 = add i64 %6166, 6
  store i64 %6172, i64* %3, align 8
  %6173 = inttoptr i64 %6171 to i32*
  %6174 = load i32, i32* %6173, align 4
  %6175 = add i32 %6174, %6169
  %6176 = lshr i32 %6175, 31
  %6177 = add i32 %6175, 1
  %6178 = zext i32 %6177 to i64
  store i64 %6178, i64* %RAX.i732, align 8
  %6179 = icmp eq i32 %6175, -1
  %6180 = icmp eq i32 %6177, 0
  %6181 = or i1 %6179, %6180
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %14, align 1
  %6183 = and i32 %6177, 255
  %6184 = tail call i32 @llvm.ctpop.i32(i32 %6183)
  %6185 = trunc i32 %6184 to i8
  %6186 = and i8 %6185, 1
  %6187 = xor i8 %6186, 1
  store i8 %6187, i8* %21, align 1
  %6188 = xor i32 %6177, %6175
  %6189 = lshr i32 %6188, 4
  %6190 = trunc i32 %6189 to i8
  %6191 = and i8 %6190, 1
  store i8 %6191, i8* %27, align 1
  %6192 = zext i1 %6180 to i8
  store i8 %6192, i8* %30, align 1
  %6193 = lshr i32 %6177, 31
  %6194 = trunc i32 %6193 to i8
  store i8 %6194, i8* %33, align 1
  %6195 = xor i32 %6193, %6176
  %6196 = add nuw nsw i32 %6195, %6193
  %6197 = icmp eq i32 %6196, 2
  %6198 = zext i1 %6197 to i8
  store i8 %6198, i8* %39, align 1
  %6199 = sext i32 %6177 to i64
  %6200 = lshr i64 %6199, 32
  store i64 %6200, i64* %5388, align 8
  %6201 = load i32, i32* %ECX.i2686, align 4
  %6202 = add i64 %6166, 12
  store i64 %6202, i64* %3, align 8
  %6203 = sext i32 %6201 to i64
  %6204 = shl nuw i64 %6200, 32
  %6205 = or i64 %6204, %6178
  %6206 = sdiv i64 %6205, %6203
  %6207 = shl i64 %6206, 32
  %6208 = ashr exact i64 %6207, 32
  %6209 = icmp eq i64 %6206, %6208
  br i1 %6209, label %6212, label %6210

; <label>:6210:                                   ; preds = %routine_idivl__ecx.exit561
  %6211 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6202, %struct.Memory* %6153)
  %.pre183 = load i16, i16* %AX.i1861, align 2
  %.pre184 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit533

; <label>:6212:                                   ; preds = %routine_idivl__ecx.exit561
  %6213 = srem i64 %6205, %6203
  %6214 = and i64 %6206, 4294967295
  store i64 %6214, i64* %RAX.i732, align 8
  %6215 = and i64 %6213, 4294967295
  store i64 %6215, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6216 = trunc i64 %6206 to i16
  br label %routine_idivl__ecx.exit533

routine_idivl__ecx.exit533:                       ; preds = %6212, %6210
  %6217 = phi i64 [ %.pre184, %6210 ], [ %6202, %6212 ]
  %6218 = phi i16 [ %.pre183, %6210 ], [ %6216, %6212 ]
  %6219 = phi %struct.Memory* [ %6211, %6210 ], [ %6153, %6212 ]
  store i16 %6218, i16* %DI.i834, align 2
  %6220 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6221 = add i64 %6220, 2814
  %6222 = add i64 %6217, 19
  store i64 %6222, i64* %3, align 8
  %6223 = inttoptr i64 %6221 to i16*
  store i16 %6218, i16* %6223, align 2
  %6224 = load i64, i64* %3, align 8
  %6225 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6225, i64* %R8.i187, align 8
  %6226 = add i64 %6225, 2748
  %6227 = load i16, i16* %DI.i834, align 2
  %6228 = add i64 %6224, 16
  store i64 %6228, i64* %3, align 8
  %6229 = inttoptr i64 %6226 to i16*
  store i16 %6227, i16* %6229, align 2
  %6230 = load i64, i64* %RBP.i, align 8
  %6231 = add i64 %6230, -84
  %6232 = load i64, i64* %3, align 8
  %6233 = add i64 %6232, 3
  store i64 %6233, i64* %3, align 8
  %6234 = inttoptr i64 %6231 to i32*
  %6235 = load i32, i32* %6234, align 4
  %6236 = zext i32 %6235 to i64
  store i64 %6236, i64* %RAX.i732, align 8
  %6237 = add i64 %6230, -80
  %6238 = add i64 %6232, 6
  store i64 %6238, i64* %3, align 8
  %6239 = inttoptr i64 %6237 to i32*
  %6240 = load i32, i32* %6239, align 4
  %6241 = add i32 %6240, %6235
  %6242 = lshr i32 %6241, 31
  %6243 = add i32 %6241, 1
  %6244 = zext i32 %6243 to i64
  store i64 %6244, i64* %RAX.i732, align 8
  %6245 = icmp eq i32 %6241, -1
  %6246 = icmp eq i32 %6243, 0
  %6247 = or i1 %6245, %6246
  %6248 = zext i1 %6247 to i8
  store i8 %6248, i8* %14, align 1
  %6249 = and i32 %6243, 255
  %6250 = tail call i32 @llvm.ctpop.i32(i32 %6249)
  %6251 = trunc i32 %6250 to i8
  %6252 = and i8 %6251, 1
  %6253 = xor i8 %6252, 1
  store i8 %6253, i8* %21, align 1
  %6254 = xor i32 %6243, %6241
  %6255 = lshr i32 %6254, 4
  %6256 = trunc i32 %6255 to i8
  %6257 = and i8 %6256, 1
  store i8 %6257, i8* %27, align 1
  %6258 = zext i1 %6246 to i8
  store i8 %6258, i8* %30, align 1
  %6259 = lshr i32 %6243, 31
  %6260 = trunc i32 %6259 to i8
  store i8 %6260, i8* %33, align 1
  %6261 = xor i32 %6259, %6242
  %6262 = add nuw nsw i32 %6261, %6259
  %6263 = icmp eq i32 %6262, 2
  %6264 = zext i1 %6263 to i8
  store i8 %6264, i8* %39, align 1
  %6265 = sext i32 %6243 to i64
  %6266 = lshr i64 %6265, 32
  store i64 %6266, i64* %5388, align 8
  %6267 = load i32, i32* %ECX.i2686, align 4
  %6268 = add i64 %6232, 12
  store i64 %6268, i64* %3, align 8
  %6269 = sext i32 %6267 to i64
  %6270 = shl nuw i64 %6266, 32
  %6271 = or i64 %6270, %6244
  %6272 = sdiv i64 %6271, %6269
  %6273 = shl i64 %6272, 32
  %6274 = ashr exact i64 %6273, 32
  %6275 = icmp eq i64 %6272, %6274
  br i1 %6275, label %6278, label %6276

; <label>:6276:                                   ; preds = %routine_idivl__ecx.exit533
  %6277 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6268, %struct.Memory* %6219)
  %.pre185 = load i16, i16* %AX.i1861, align 2
  %.pre186 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit506

; <label>:6278:                                   ; preds = %routine_idivl__ecx.exit533
  %6279 = srem i64 %6271, %6269
  %6280 = and i64 %6272, 4294967295
  store i64 %6280, i64* %RAX.i732, align 8
  %6281 = and i64 %6279, 4294967295
  store i64 %6281, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6282 = trunc i64 %6272 to i16
  br label %routine_idivl__ecx.exit506

routine_idivl__ecx.exit506:                       ; preds = %6278, %6276
  %6283 = phi i64 [ %.pre186, %6276 ], [ %6268, %6278 ]
  %6284 = phi i16 [ %.pre185, %6276 ], [ %6282, %6278 ]
  %6285 = phi %struct.Memory* [ %6277, %6276 ], [ %6219, %6278 ]
  store i16 %6284, i16* %DI.i834, align 2
  %6286 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6286, i64* %R8.i187, align 8
  %6287 = add i64 %6286, 2750
  %6288 = add i64 %6283, 19
  store i64 %6288, i64* %3, align 8
  %6289 = inttoptr i64 %6287 to i16*
  store i16 %6284, i16* %6289, align 2
  %6290 = load i64, i64* %RBP.i, align 8
  %6291 = add i64 %6290, -60
  %6292 = load i64, i64* %3, align 8
  %6293 = add i64 %6292, 3
  store i64 %6293, i64* %3, align 8
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294, align 4
  %6296 = zext i32 %6295 to i64
  store i64 %6296, i64* %RAX.i732, align 8
  %6297 = add i64 %6290, -96
  %6298 = add i64 %6292, 7
  store i64 %6298, i64* %3, align 8
  %6299 = inttoptr i64 %6297 to i32*
  %6300 = load i32, i32* %6299, align 4
  %6301 = shl i32 %6300, 1
  %6302 = zext i32 %6301 to i64
  store i64 %6302, i64* %5426, align 8
  %6303 = add i32 %6301, %6295
  %6304 = zext i32 %6303 to i64
  store i64 %6304, i64* %RAX.i732, align 8
  %6305 = icmp ult i32 %6303, %6295
  %6306 = icmp ult i32 %6303, %6301
  %6307 = or i1 %6305, %6306
  %6308 = zext i1 %6307 to i8
  store i8 %6308, i8* %14, align 1
  %6309 = and i32 %6303, 255
  %6310 = tail call i32 @llvm.ctpop.i32(i32 %6309)
  %6311 = trunc i32 %6310 to i8
  %6312 = and i8 %6311, 1
  %6313 = xor i8 %6312, 1
  store i8 %6313, i8* %21, align 1
  %6314 = xor i32 %6301, %6295
  %6315 = xor i32 %6314, %6303
  %6316 = lshr i32 %6315, 4
  %6317 = trunc i32 %6316 to i8
  %6318 = and i8 %6317, 1
  store i8 %6318, i8* %27, align 1
  %6319 = icmp eq i32 %6303, 0
  %6320 = zext i1 %6319 to i8
  store i8 %6320, i8* %30, align 1
  %6321 = lshr i32 %6303, 31
  %6322 = trunc i32 %6321 to i8
  store i8 %6322, i8* %33, align 1
  %6323 = lshr i32 %6295, 31
  %6324 = lshr i32 %6300, 30
  %6325 = and i32 %6324, 1
  %6326 = xor i32 %6321, %6323
  %6327 = xor i32 %6321, %6325
  %6328 = add nuw nsw i32 %6326, %6327
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  store i8 %6330, i8* %39, align 1
  %6331 = add i64 %6290, -92
  %6332 = add i64 %6292, 16
  store i64 %6332, i64* %3, align 8
  %6333 = inttoptr i64 %6331 to i32*
  %6334 = load i32, i32* %6333, align 4
  %6335 = add i32 %6334, %6303
  %6336 = lshr i32 %6335, 31
  %6337 = add i32 %6335, 2
  %6338 = zext i32 %6337 to i64
  store i64 %6338, i64* %RAX.i732, align 8
  %6339 = icmp ugt i32 %6335, -3
  %6340 = zext i1 %6339 to i8
  store i8 %6340, i8* %14, align 1
  %6341 = and i32 %6337, 255
  %6342 = tail call i32 @llvm.ctpop.i32(i32 %6341)
  %6343 = trunc i32 %6342 to i8
  %6344 = and i8 %6343, 1
  %6345 = xor i8 %6344, 1
  store i8 %6345, i8* %21, align 1
  %6346 = xor i32 %6337, %6335
  %6347 = lshr i32 %6346, 4
  %6348 = trunc i32 %6347 to i8
  %6349 = and i8 %6348, 1
  store i8 %6349, i8* %27, align 1
  %6350 = icmp eq i32 %6337, 0
  %6351 = zext i1 %6350 to i8
  store i8 %6351, i8* %30, align 1
  %6352 = lshr i32 %6337, 31
  %6353 = trunc i32 %6352 to i8
  store i8 %6353, i8* %33, align 1
  %6354 = xor i32 %6352, %6336
  %6355 = add nuw nsw i32 %6354, %6352
  %6356 = icmp eq i32 %6355, 2
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %39, align 1
  %6358 = sext i32 %6337 to i64
  %6359 = lshr i64 %6358, 32
  store i64 %6359, i64* %5388, align 8
  %6360 = load i32, i32* %ESI.i100, align 4
  %6361 = add i64 %6292, 22
  store i64 %6361, i64* %3, align 8
  %6362 = sext i32 %6360 to i64
  %6363 = shl nuw i64 %6359, 32
  %6364 = or i64 %6363, %6338
  %6365 = sdiv i64 %6364, %6362
  %6366 = shl i64 %6365, 32
  %6367 = ashr exact i64 %6366, 32
  %6368 = icmp eq i64 %6365, %6367
  br i1 %6368, label %6371, label %6369

; <label>:6369:                                   ; preds = %routine_idivl__ecx.exit506
  %6370 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6361, %struct.Memory* %6285)
  %.pre187 = load i16, i16* %AX.i1861, align 2
  %.pre188 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit475

; <label>:6371:                                   ; preds = %routine_idivl__ecx.exit506
  %6372 = srem i64 %6364, %6362
  %6373 = and i64 %6365, 4294967295
  store i64 %6373, i64* %RAX.i732, align 8
  %6374 = and i64 %6372, 4294967295
  store i64 %6374, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6375 = trunc i64 %6365 to i16
  br label %routine_idivl__esi.exit475

routine_idivl__esi.exit475:                       ; preds = %6371, %6369
  %6376 = phi i64 [ %.pre188, %6369 ], [ %6361, %6371 ]
  %6377 = phi i16 [ %.pre187, %6369 ], [ %6375, %6371 ]
  %6378 = phi %struct.Memory* [ %6370, %6369 ], [ %6285, %6371 ]
  store i16 %6377, i16* %DI.i834, align 2
  %6379 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6380 = add i64 %6379, 2842
  %6381 = add i64 %6376, 19
  store i64 %6381, i64* %3, align 8
  %6382 = inttoptr i64 %6380 to i16*
  store i16 %6377, i16* %6382, align 2
  %6383 = load i64, i64* %3, align 8
  %6384 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6384, i64* %R8.i187, align 8
  %6385 = add i64 %6384, 2776
  %6386 = load i16, i16* %DI.i834, align 2
  %6387 = add i64 %6383, 16
  store i64 %6387, i64* %3, align 8
  %6388 = inttoptr i64 %6385 to i16*
  store i16 %6386, i16* %6388, align 2
  %6389 = load i64, i64* %RBP.i, align 8
  %6390 = add i64 %6389, -96
  %6391 = load i64, i64* %3, align 8
  %6392 = add i64 %6391, 3
  store i64 %6392, i64* %3, align 8
  %6393 = inttoptr i64 %6390 to i32*
  %6394 = load i32, i32* %6393, align 4
  %6395 = zext i32 %6394 to i64
  store i64 %6395, i64* %RAX.i732, align 8
  %6396 = add i64 %6389, -92
  %6397 = add i64 %6391, 7
  store i64 %6397, i64* %3, align 8
  %6398 = inttoptr i64 %6396 to i32*
  %6399 = load i32, i32* %6398, align 4
  %6400 = shl i32 %6399, 1
  %6401 = zext i32 %6400 to i64
  store i64 %6401, i64* %5426, align 8
  %6402 = add i32 %6400, %6394
  %6403 = zext i32 %6402 to i64
  store i64 %6403, i64* %RAX.i732, align 8
  %6404 = icmp ult i32 %6402, %6394
  %6405 = icmp ult i32 %6402, %6400
  %6406 = or i1 %6404, %6405
  %6407 = zext i1 %6406 to i8
  store i8 %6407, i8* %14, align 1
  %6408 = and i32 %6402, 255
  %6409 = tail call i32 @llvm.ctpop.i32(i32 %6408)
  %6410 = trunc i32 %6409 to i8
  %6411 = and i8 %6410, 1
  %6412 = xor i8 %6411, 1
  store i8 %6412, i8* %21, align 1
  %6413 = xor i32 %6400, %6394
  %6414 = xor i32 %6413, %6402
  %6415 = lshr i32 %6414, 4
  %6416 = trunc i32 %6415 to i8
  %6417 = and i8 %6416, 1
  store i8 %6417, i8* %27, align 1
  %6418 = icmp eq i32 %6402, 0
  %6419 = zext i1 %6418 to i8
  store i8 %6419, i8* %30, align 1
  %6420 = lshr i32 %6402, 31
  %6421 = trunc i32 %6420 to i8
  store i8 %6421, i8* %33, align 1
  %6422 = lshr i32 %6394, 31
  %6423 = lshr i32 %6399, 30
  %6424 = and i32 %6423, 1
  %6425 = xor i32 %6420, %6422
  %6426 = xor i32 %6420, %6424
  %6427 = add nuw nsw i32 %6425, %6426
  %6428 = icmp eq i32 %6427, 2
  %6429 = zext i1 %6428 to i8
  store i8 %6429, i8* %39, align 1
  %6430 = add i64 %6389, -88
  %6431 = add i64 %6391, 16
  store i64 %6431, i64* %3, align 8
  %6432 = inttoptr i64 %6430 to i32*
  %6433 = load i32, i32* %6432, align 4
  %6434 = add i32 %6433, %6402
  %6435 = lshr i32 %6434, 31
  %6436 = add i32 %6434, 2
  %6437 = zext i32 %6436 to i64
  store i64 %6437, i64* %RAX.i732, align 8
  %6438 = icmp ugt i32 %6434, -3
  %6439 = zext i1 %6438 to i8
  store i8 %6439, i8* %14, align 1
  %6440 = and i32 %6436, 255
  %6441 = tail call i32 @llvm.ctpop.i32(i32 %6440)
  %6442 = trunc i32 %6441 to i8
  %6443 = and i8 %6442, 1
  %6444 = xor i8 %6443, 1
  store i8 %6444, i8* %21, align 1
  %6445 = xor i32 %6436, %6434
  %6446 = lshr i32 %6445, 4
  %6447 = trunc i32 %6446 to i8
  %6448 = and i8 %6447, 1
  store i8 %6448, i8* %27, align 1
  %6449 = icmp eq i32 %6436, 0
  %6450 = zext i1 %6449 to i8
  store i8 %6450, i8* %30, align 1
  %6451 = lshr i32 %6436, 31
  %6452 = trunc i32 %6451 to i8
  store i8 %6452, i8* %33, align 1
  %6453 = xor i32 %6451, %6435
  %6454 = add nuw nsw i32 %6453, %6451
  %6455 = icmp eq i32 %6454, 2
  %6456 = zext i1 %6455 to i8
  store i8 %6456, i8* %39, align 1
  %6457 = sext i32 %6436 to i64
  %6458 = lshr i64 %6457, 32
  store i64 %6458, i64* %5388, align 8
  %6459 = load i32, i32* %ESI.i100, align 4
  %6460 = add i64 %6391, 22
  store i64 %6460, i64* %3, align 8
  %6461 = sext i32 %6459 to i64
  %6462 = shl nuw i64 %6458, 32
  %6463 = or i64 %6462, %6437
  %6464 = sdiv i64 %6463, %6461
  %6465 = shl i64 %6464, 32
  %6466 = ashr exact i64 %6465, 32
  %6467 = icmp eq i64 %6464, %6466
  br i1 %6467, label %6470, label %6468

; <label>:6468:                                   ; preds = %routine_idivl__esi.exit475
  %6469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6460, %struct.Memory* %6378)
  %.pre189 = load i16, i16* %AX.i1861, align 2
  %.pre190 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit440

; <label>:6470:                                   ; preds = %routine_idivl__esi.exit475
  %6471 = srem i64 %6463, %6461
  %6472 = and i64 %6464, 4294967295
  store i64 %6472, i64* %RAX.i732, align 8
  %6473 = and i64 %6471, 4294967295
  store i64 %6473, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6474 = trunc i64 %6464 to i16
  br label %routine_idivl__esi.exit440

routine_idivl__esi.exit440:                       ; preds = %6470, %6468
  %6475 = phi i64 [ %.pre190, %6468 ], [ %6460, %6470 ]
  %6476 = phi i16 [ %.pre189, %6468 ], [ %6474, %6470 ]
  %6477 = phi %struct.Memory* [ %6469, %6468 ], [ %6378, %6470 ]
  store i16 %6476, i16* %DI.i834, align 2
  %6478 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6479 = add i64 %6478, 2844
  %6480 = add i64 %6475, 19
  store i64 %6480, i64* %3, align 8
  %6481 = inttoptr i64 %6479 to i16*
  store i16 %6476, i16* %6481, align 2
  %6482 = load i64, i64* %3, align 8
  %6483 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6483, i64* %R8.i187, align 8
  %6484 = add i64 %6483, 2778
  %6485 = load i16, i16* %DI.i834, align 2
  %6486 = add i64 %6482, 16
  store i64 %6486, i64* %3, align 8
  %6487 = inttoptr i64 %6484 to i16*
  store i16 %6485, i16* %6487, align 2
  %6488 = load i64, i64* %RBP.i, align 8
  %6489 = add i64 %6488, -92
  %6490 = load i64, i64* %3, align 8
  %6491 = add i64 %6490, 3
  store i64 %6491, i64* %3, align 8
  %6492 = inttoptr i64 %6489 to i32*
  %6493 = load i32, i32* %6492, align 4
  %6494 = zext i32 %6493 to i64
  store i64 %6494, i64* %RAX.i732, align 8
  %6495 = add i64 %6488, -88
  %6496 = add i64 %6490, 7
  store i64 %6496, i64* %3, align 8
  %6497 = inttoptr i64 %6495 to i32*
  %6498 = load i32, i32* %6497, align 4
  %6499 = shl i32 %6498, 1
  %6500 = zext i32 %6499 to i64
  store i64 %6500, i64* %5426, align 8
  %6501 = add i32 %6499, %6493
  %6502 = zext i32 %6501 to i64
  store i64 %6502, i64* %RAX.i732, align 8
  %6503 = icmp ult i32 %6501, %6493
  %6504 = icmp ult i32 %6501, %6499
  %6505 = or i1 %6503, %6504
  %6506 = zext i1 %6505 to i8
  store i8 %6506, i8* %14, align 1
  %6507 = and i32 %6501, 255
  %6508 = tail call i32 @llvm.ctpop.i32(i32 %6507)
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  store i8 %6511, i8* %21, align 1
  %6512 = xor i32 %6499, %6493
  %6513 = xor i32 %6512, %6501
  %6514 = lshr i32 %6513, 4
  %6515 = trunc i32 %6514 to i8
  %6516 = and i8 %6515, 1
  store i8 %6516, i8* %27, align 1
  %6517 = icmp eq i32 %6501, 0
  %6518 = zext i1 %6517 to i8
  store i8 %6518, i8* %30, align 1
  %6519 = lshr i32 %6501, 31
  %6520 = trunc i32 %6519 to i8
  store i8 %6520, i8* %33, align 1
  %6521 = lshr i32 %6493, 31
  %6522 = lshr i32 %6498, 30
  %6523 = and i32 %6522, 1
  %6524 = xor i32 %6519, %6521
  %6525 = xor i32 %6519, %6523
  %6526 = add nuw nsw i32 %6524, %6525
  %6527 = icmp eq i32 %6526, 2
  %6528 = zext i1 %6527 to i8
  store i8 %6528, i8* %39, align 1
  %6529 = add i64 %6488, -84
  %6530 = add i64 %6490, 16
  store i64 %6530, i64* %3, align 8
  %6531 = inttoptr i64 %6529 to i32*
  %6532 = load i32, i32* %6531, align 4
  %6533 = add i32 %6532, %6501
  %6534 = lshr i32 %6533, 31
  %6535 = add i32 %6533, 2
  %6536 = zext i32 %6535 to i64
  store i64 %6536, i64* %RAX.i732, align 8
  %6537 = icmp ugt i32 %6533, -3
  %6538 = zext i1 %6537 to i8
  store i8 %6538, i8* %14, align 1
  %6539 = and i32 %6535, 255
  %6540 = tail call i32 @llvm.ctpop.i32(i32 %6539)
  %6541 = trunc i32 %6540 to i8
  %6542 = and i8 %6541, 1
  %6543 = xor i8 %6542, 1
  store i8 %6543, i8* %21, align 1
  %6544 = xor i32 %6535, %6533
  %6545 = lshr i32 %6544, 4
  %6546 = trunc i32 %6545 to i8
  %6547 = and i8 %6546, 1
  store i8 %6547, i8* %27, align 1
  %6548 = icmp eq i32 %6535, 0
  %6549 = zext i1 %6548 to i8
  store i8 %6549, i8* %30, align 1
  %6550 = lshr i32 %6535, 31
  %6551 = trunc i32 %6550 to i8
  store i8 %6551, i8* %33, align 1
  %6552 = xor i32 %6550, %6534
  %6553 = add nuw nsw i32 %6552, %6550
  %6554 = icmp eq i32 %6553, 2
  %6555 = zext i1 %6554 to i8
  store i8 %6555, i8* %39, align 1
  %6556 = sext i32 %6535 to i64
  %6557 = lshr i64 %6556, 32
  store i64 %6557, i64* %5388, align 8
  %6558 = load i32, i32* %ESI.i100, align 4
  %6559 = add i64 %6490, 22
  store i64 %6559, i64* %3, align 8
  %6560 = sext i32 %6558 to i64
  %6561 = shl nuw i64 %6557, 32
  %6562 = or i64 %6561, %6536
  %6563 = sdiv i64 %6562, %6560
  %6564 = shl i64 %6563, 32
  %6565 = ashr exact i64 %6564, 32
  %6566 = icmp eq i64 %6563, %6565
  br i1 %6566, label %6569, label %6567

; <label>:6567:                                   ; preds = %routine_idivl__esi.exit440
  %6568 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6559, %struct.Memory* %6477)
  %.pre191 = load i16, i16* %AX.i1861, align 2
  %.pre192 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit404

; <label>:6569:                                   ; preds = %routine_idivl__esi.exit440
  %6570 = srem i64 %6562, %6560
  %6571 = and i64 %6563, 4294967295
  store i64 %6571, i64* %RAX.i732, align 8
  %6572 = and i64 %6570, 4294967295
  store i64 %6572, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6573 = trunc i64 %6563 to i16
  br label %routine_idivl__esi.exit404

routine_idivl__esi.exit404:                       ; preds = %6569, %6567
  %6574 = phi i64 [ %.pre192, %6567 ], [ %6559, %6569 ]
  %6575 = phi i16 [ %.pre191, %6567 ], [ %6573, %6569 ]
  %6576 = phi %struct.Memory* [ %6568, %6567 ], [ %6477, %6569 ]
  store i16 %6575, i16* %DI.i834, align 2
  %6577 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6578 = add i64 %6577, 2846
  %6579 = add i64 %6574, 19
  store i64 %6579, i64* %3, align 8
  %6580 = inttoptr i64 %6578 to i16*
  store i16 %6575, i16* %6580, align 2
  %6581 = load i64, i64* %3, align 8
  %6582 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6582, i64* %R8.i187, align 8
  %6583 = add i64 %6582, 2780
  %6584 = load i16, i16* %DI.i834, align 2
  %6585 = add i64 %6581, 16
  store i64 %6585, i64* %3, align 8
  %6586 = inttoptr i64 %6583 to i16*
  store i16 %6584, i16* %6586, align 2
  %6587 = load i64, i64* %RBP.i, align 8
  %6588 = add i64 %6587, -88
  %6589 = load i64, i64* %3, align 8
  %6590 = add i64 %6589, 3
  store i64 %6590, i64* %3, align 8
  %6591 = inttoptr i64 %6588 to i32*
  %6592 = load i32, i32* %6591, align 4
  %6593 = zext i32 %6592 to i64
  store i64 %6593, i64* %RAX.i732, align 8
  %6594 = add i64 %6587, -84
  %6595 = add i64 %6589, 7
  store i64 %6595, i64* %3, align 8
  %6596 = inttoptr i64 %6594 to i32*
  %6597 = load i32, i32* %6596, align 4
  %6598 = shl i32 %6597, 1
  %6599 = zext i32 %6598 to i64
  store i64 %6599, i64* %5426, align 8
  %6600 = add i32 %6598, %6592
  %6601 = zext i32 %6600 to i64
  store i64 %6601, i64* %RAX.i732, align 8
  %6602 = icmp ult i32 %6600, %6592
  %6603 = icmp ult i32 %6600, %6598
  %6604 = or i1 %6602, %6603
  %6605 = zext i1 %6604 to i8
  store i8 %6605, i8* %14, align 1
  %6606 = and i32 %6600, 255
  %6607 = tail call i32 @llvm.ctpop.i32(i32 %6606)
  %6608 = trunc i32 %6607 to i8
  %6609 = and i8 %6608, 1
  %6610 = xor i8 %6609, 1
  store i8 %6610, i8* %21, align 1
  %6611 = xor i32 %6598, %6592
  %6612 = xor i32 %6611, %6600
  %6613 = lshr i32 %6612, 4
  %6614 = trunc i32 %6613 to i8
  %6615 = and i8 %6614, 1
  store i8 %6615, i8* %27, align 1
  %6616 = icmp eq i32 %6600, 0
  %6617 = zext i1 %6616 to i8
  store i8 %6617, i8* %30, align 1
  %6618 = lshr i32 %6600, 31
  %6619 = trunc i32 %6618 to i8
  store i8 %6619, i8* %33, align 1
  %6620 = lshr i32 %6592, 31
  %6621 = lshr i32 %6597, 30
  %6622 = and i32 %6621, 1
  %6623 = xor i32 %6618, %6620
  %6624 = xor i32 %6618, %6622
  %6625 = add nuw nsw i32 %6623, %6624
  %6626 = icmp eq i32 %6625, 2
  %6627 = zext i1 %6626 to i8
  store i8 %6627, i8* %39, align 1
  %6628 = add i64 %6587, -80
  %6629 = add i64 %6589, 16
  store i64 %6629, i64* %3, align 8
  %6630 = inttoptr i64 %6628 to i32*
  %6631 = load i32, i32* %6630, align 4
  %6632 = add i32 %6631, %6600
  %6633 = lshr i32 %6632, 31
  %6634 = add i32 %6632, 2
  %6635 = zext i32 %6634 to i64
  store i64 %6635, i64* %RAX.i732, align 8
  %6636 = icmp ugt i32 %6632, -3
  %6637 = zext i1 %6636 to i8
  store i8 %6637, i8* %14, align 1
  %6638 = and i32 %6634, 255
  %6639 = tail call i32 @llvm.ctpop.i32(i32 %6638)
  %6640 = trunc i32 %6639 to i8
  %6641 = and i8 %6640, 1
  %6642 = xor i8 %6641, 1
  store i8 %6642, i8* %21, align 1
  %6643 = xor i32 %6634, %6632
  %6644 = lshr i32 %6643, 4
  %6645 = trunc i32 %6644 to i8
  %6646 = and i8 %6645, 1
  store i8 %6646, i8* %27, align 1
  %6647 = icmp eq i32 %6634, 0
  %6648 = zext i1 %6647 to i8
  store i8 %6648, i8* %30, align 1
  %6649 = lshr i32 %6634, 31
  %6650 = trunc i32 %6649 to i8
  store i8 %6650, i8* %33, align 1
  %6651 = xor i32 %6649, %6633
  %6652 = add nuw nsw i32 %6651, %6649
  %6653 = icmp eq i32 %6652, 2
  %6654 = zext i1 %6653 to i8
  store i8 %6654, i8* %39, align 1
  %6655 = sext i32 %6634 to i64
  %6656 = lshr i64 %6655, 32
  store i64 %6656, i64* %5388, align 8
  %6657 = load i32, i32* %ESI.i100, align 4
  %6658 = add i64 %6589, 22
  store i64 %6658, i64* %3, align 8
  %6659 = sext i32 %6657 to i64
  %6660 = shl nuw i64 %6656, 32
  %6661 = or i64 %6660, %6635
  %6662 = sdiv i64 %6661, %6659
  %6663 = shl i64 %6662, 32
  %6664 = ashr exact i64 %6663, 32
  %6665 = icmp eq i64 %6662, %6664
  br i1 %6665, label %6668, label %6666

; <label>:6666:                                   ; preds = %routine_idivl__esi.exit404
  %6667 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6658, %struct.Memory* %6576)
  %.pre193 = load i16, i16* %AX.i1861, align 2
  %.pre194 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit368

; <label>:6668:                                   ; preds = %routine_idivl__esi.exit404
  %6669 = srem i64 %6661, %6659
  %6670 = and i64 %6662, 4294967295
  store i64 %6670, i64* %RAX.i732, align 8
  %6671 = and i64 %6669, 4294967295
  store i64 %6671, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6672 = trunc i64 %6662 to i16
  br label %routine_idivl__esi.exit368

routine_idivl__esi.exit368:                       ; preds = %6668, %6666
  %6673 = phi i64 [ %.pre194, %6666 ], [ %6658, %6668 ]
  %6674 = phi i16 [ %.pre193, %6666 ], [ %6672, %6668 ]
  %6675 = phi %struct.Memory* [ %6667, %6666 ], [ %6576, %6668 ]
  store i16 %6674, i16* %DI.i834, align 2
  %6676 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6676, i64* %R8.i187, align 8
  %6677 = add i64 %6676, 2782
  %6678 = add i64 %6673, 19
  store i64 %6678, i64* %3, align 8
  %6679 = inttoptr i64 %6677 to i16*
  store i16 %6674, i16* %6679, align 2
  %6680 = load i64, i64* %RBP.i, align 8
  %6681 = add i64 %6680, -96
  %6682 = load i64, i64* %3, align 8
  %6683 = add i64 %6682, 3
  store i64 %6683, i64* %3, align 8
  %6684 = inttoptr i64 %6681 to i32*
  %6685 = load i32, i32* %6684, align 4
  %6686 = zext i32 %6685 to i64
  store i64 %6686, i64* %RAX.i732, align 8
  %6687 = add i64 %6680, -60
  %6688 = add i64 %6682, 7
  store i64 %6688, i64* %3, align 8
  %6689 = inttoptr i64 %6687 to i32*
  %6690 = load i32, i32* %6689, align 4
  %6691 = shl i32 %6690, 1
  %6692 = zext i32 %6691 to i64
  store i64 %6692, i64* %5426, align 8
  %6693 = add i32 %6691, %6685
  %6694 = zext i32 %6693 to i64
  store i64 %6694, i64* %RAX.i732, align 8
  %6695 = icmp ult i32 %6693, %6685
  %6696 = icmp ult i32 %6693, %6691
  %6697 = or i1 %6695, %6696
  %6698 = zext i1 %6697 to i8
  store i8 %6698, i8* %14, align 1
  %6699 = and i32 %6693, 255
  %6700 = tail call i32 @llvm.ctpop.i32(i32 %6699)
  %6701 = trunc i32 %6700 to i8
  %6702 = and i8 %6701, 1
  %6703 = xor i8 %6702, 1
  store i8 %6703, i8* %21, align 1
  %6704 = xor i32 %6691, %6685
  %6705 = xor i32 %6704, %6693
  %6706 = lshr i32 %6705, 4
  %6707 = trunc i32 %6706 to i8
  %6708 = and i8 %6707, 1
  store i8 %6708, i8* %27, align 1
  %6709 = icmp eq i32 %6693, 0
  %6710 = zext i1 %6709 to i8
  store i8 %6710, i8* %30, align 1
  %6711 = lshr i32 %6693, 31
  %6712 = trunc i32 %6711 to i8
  store i8 %6712, i8* %33, align 1
  %6713 = lshr i32 %6685, 31
  %6714 = lshr i32 %6690, 30
  %6715 = and i32 %6714, 1
  %6716 = xor i32 %6711, %6713
  %6717 = xor i32 %6711, %6715
  %6718 = add nuw nsw i32 %6716, %6717
  %6719 = icmp eq i32 %6718, 2
  %6720 = zext i1 %6719 to i8
  store i8 %6720, i8* %39, align 1
  %6721 = add i64 %6680, -56
  %6722 = add i64 %6682, 16
  store i64 %6722, i64* %3, align 8
  %6723 = inttoptr i64 %6721 to i32*
  %6724 = load i32, i32* %6723, align 4
  %6725 = add i32 %6724, %6693
  %6726 = lshr i32 %6725, 31
  %6727 = add i32 %6725, 2
  %6728 = zext i32 %6727 to i64
  store i64 %6728, i64* %RAX.i732, align 8
  %6729 = icmp ugt i32 %6725, -3
  %6730 = zext i1 %6729 to i8
  store i8 %6730, i8* %14, align 1
  %6731 = and i32 %6727, 255
  %6732 = tail call i32 @llvm.ctpop.i32(i32 %6731)
  %6733 = trunc i32 %6732 to i8
  %6734 = and i8 %6733, 1
  %6735 = xor i8 %6734, 1
  store i8 %6735, i8* %21, align 1
  %6736 = xor i32 %6727, %6725
  %6737 = lshr i32 %6736, 4
  %6738 = trunc i32 %6737 to i8
  %6739 = and i8 %6738, 1
  store i8 %6739, i8* %27, align 1
  %6740 = icmp eq i32 %6727, 0
  %6741 = zext i1 %6740 to i8
  store i8 %6741, i8* %30, align 1
  %6742 = lshr i32 %6727, 31
  %6743 = trunc i32 %6742 to i8
  store i8 %6743, i8* %33, align 1
  %6744 = xor i32 %6742, %6726
  %6745 = add nuw nsw i32 %6744, %6742
  %6746 = icmp eq i32 %6745, 2
  %6747 = zext i1 %6746 to i8
  store i8 %6747, i8* %39, align 1
  %6748 = sext i32 %6727 to i64
  %6749 = lshr i64 %6748, 32
  store i64 %6749, i64* %5388, align 8
  %6750 = load i32, i32* %ESI.i100, align 4
  %6751 = add i64 %6682, 22
  store i64 %6751, i64* %3, align 8
  %6752 = sext i32 %6750 to i64
  %6753 = shl nuw i64 %6749, 32
  %6754 = or i64 %6753, %6728
  %6755 = sdiv i64 %6754, %6752
  %6756 = shl i64 %6755, 32
  %6757 = ashr exact i64 %6756, 32
  %6758 = icmp eq i64 %6755, %6757
  br i1 %6758, label %6761, label %6759

; <label>:6759:                                   ; preds = %routine_idivl__esi.exit368
  %6760 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6751, %struct.Memory* %6675)
  %.pre195 = load i16, i16* %AX.i1861, align 2
  %.pre196 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit338

; <label>:6761:                                   ; preds = %routine_idivl__esi.exit368
  %6762 = srem i64 %6754, %6752
  %6763 = and i64 %6755, 4294967295
  store i64 %6763, i64* %RAX.i732, align 8
  %6764 = and i64 %6762, 4294967295
  store i64 %6764, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6765 = trunc i64 %6755 to i16
  br label %routine_idivl__esi.exit338

routine_idivl__esi.exit338:                       ; preds = %6761, %6759
  %6766 = phi i64 [ %.pre196, %6759 ], [ %6751, %6761 ]
  %6767 = phi i16 [ %.pre195, %6759 ], [ %6765, %6761 ]
  %6768 = phi %struct.Memory* [ %6760, %6759 ], [ %6675, %6761 ]
  store i16 %6767, i16* %DI.i834, align 2
  %6769 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6769, i64* %R8.i187, align 8
  %6770 = add i64 %6769, 2808
  %6771 = add i64 %6766, 19
  store i64 %6771, i64* %3, align 8
  %6772 = inttoptr i64 %6770 to i16*
  store i16 %6767, i16* %6772, align 2
  %6773 = load i64, i64* %RBP.i, align 8
  %6774 = add i64 %6773, -60
  %6775 = load i64, i64* %3, align 8
  %6776 = add i64 %6775, 3
  store i64 %6776, i64* %3, align 8
  %6777 = inttoptr i64 %6774 to i32*
  %6778 = load i32, i32* %6777, align 4
  %6779 = zext i32 %6778 to i64
  store i64 %6779, i64* %RAX.i732, align 8
  %6780 = add i64 %6773, -56
  %6781 = add i64 %6775, 7
  store i64 %6781, i64* %3, align 8
  %6782 = inttoptr i64 %6780 to i32*
  %6783 = load i32, i32* %6782, align 4
  %6784 = shl i32 %6783, 1
  %6785 = zext i32 %6784 to i64
  store i64 %6785, i64* %5426, align 8
  %6786 = add i32 %6784, %6778
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RAX.i732, align 8
  %6788 = icmp ult i32 %6786, %6778
  %6789 = icmp ult i32 %6786, %6784
  %6790 = or i1 %6788, %6789
  %6791 = zext i1 %6790 to i8
  store i8 %6791, i8* %14, align 1
  %6792 = and i32 %6786, 255
  %6793 = tail call i32 @llvm.ctpop.i32(i32 %6792)
  %6794 = trunc i32 %6793 to i8
  %6795 = and i8 %6794, 1
  %6796 = xor i8 %6795, 1
  store i8 %6796, i8* %21, align 1
  %6797 = xor i32 %6784, %6778
  %6798 = xor i32 %6797, %6786
  %6799 = lshr i32 %6798, 4
  %6800 = trunc i32 %6799 to i8
  %6801 = and i8 %6800, 1
  store i8 %6801, i8* %27, align 1
  %6802 = icmp eq i32 %6786, 0
  %6803 = zext i1 %6802 to i8
  store i8 %6803, i8* %30, align 1
  %6804 = lshr i32 %6786, 31
  %6805 = trunc i32 %6804 to i8
  store i8 %6805, i8* %33, align 1
  %6806 = lshr i32 %6778, 31
  %6807 = lshr i32 %6783, 30
  %6808 = and i32 %6807, 1
  %6809 = xor i32 %6804, %6806
  %6810 = xor i32 %6804, %6808
  %6811 = add nuw nsw i32 %6809, %6810
  %6812 = icmp eq i32 %6811, 2
  %6813 = zext i1 %6812 to i8
  store i8 %6813, i8* %39, align 1
  %6814 = add i64 %6773, -52
  %6815 = add i64 %6775, 16
  store i64 %6815, i64* %3, align 8
  %6816 = inttoptr i64 %6814 to i32*
  %6817 = load i32, i32* %6816, align 4
  %6818 = add i32 %6817, %6786
  %6819 = lshr i32 %6818, 31
  %6820 = add i32 %6818, 2
  %6821 = zext i32 %6820 to i64
  store i64 %6821, i64* %RAX.i732, align 8
  %6822 = icmp ugt i32 %6818, -3
  %6823 = zext i1 %6822 to i8
  store i8 %6823, i8* %14, align 1
  %6824 = and i32 %6820, 255
  %6825 = tail call i32 @llvm.ctpop.i32(i32 %6824)
  %6826 = trunc i32 %6825 to i8
  %6827 = and i8 %6826, 1
  %6828 = xor i8 %6827, 1
  store i8 %6828, i8* %21, align 1
  %6829 = xor i32 %6820, %6818
  %6830 = lshr i32 %6829, 4
  %6831 = trunc i32 %6830 to i8
  %6832 = and i8 %6831, 1
  store i8 %6832, i8* %27, align 1
  %6833 = icmp eq i32 %6820, 0
  %6834 = zext i1 %6833 to i8
  store i8 %6834, i8* %30, align 1
  %6835 = lshr i32 %6820, 31
  %6836 = trunc i32 %6835 to i8
  store i8 %6836, i8* %33, align 1
  %6837 = xor i32 %6835, %6819
  %6838 = add nuw nsw i32 %6837, %6835
  %6839 = icmp eq i32 %6838, 2
  %6840 = zext i1 %6839 to i8
  store i8 %6840, i8* %39, align 1
  %6841 = sext i32 %6820 to i64
  %6842 = lshr i64 %6841, 32
  store i64 %6842, i64* %5388, align 8
  %6843 = load i32, i32* %ESI.i100, align 4
  %6844 = add i64 %6775, 22
  store i64 %6844, i64* %3, align 8
  %6845 = sext i32 %6843 to i64
  %6846 = shl nuw i64 %6842, 32
  %6847 = or i64 %6846, %6821
  %6848 = sdiv i64 %6847, %6845
  %6849 = shl i64 %6848, 32
  %6850 = ashr exact i64 %6849, 32
  %6851 = icmp eq i64 %6848, %6850
  br i1 %6851, label %6854, label %6852

; <label>:6852:                                   ; preds = %routine_idivl__esi.exit338
  %6853 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6844, %struct.Memory* %6768)
  %.pre197 = load i16, i16* %AX.i1861, align 2
  %.pre198 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit308

; <label>:6854:                                   ; preds = %routine_idivl__esi.exit338
  %6855 = srem i64 %6847, %6845
  %6856 = and i64 %6848, 4294967295
  store i64 %6856, i64* %RAX.i732, align 8
  %6857 = and i64 %6855, 4294967295
  store i64 %6857, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6858 = trunc i64 %6848 to i16
  br label %routine_idivl__esi.exit308

routine_idivl__esi.exit308:                       ; preds = %6854, %6852
  %6859 = phi i64 [ %.pre198, %6852 ], [ %6844, %6854 ]
  %6860 = phi i16 [ %.pre197, %6852 ], [ %6858, %6854 ]
  %6861 = phi %struct.Memory* [ %6853, %6852 ], [ %6768, %6854 ]
  store i16 %6860, i16* %DI.i834, align 2
  %6862 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6862, i64* %R8.i187, align 8
  %6863 = add i64 %6862, 2840
  %6864 = add i64 %6859, 19
  store i64 %6864, i64* %3, align 8
  %6865 = inttoptr i64 %6863 to i16*
  store i16 %6860, i16* %6865, align 2
  %6866 = load i64, i64* %RBP.i, align 8
  %6867 = add i64 %6866, -96
  %6868 = load i64, i64* %3, align 8
  %6869 = add i64 %6868, 3
  store i64 %6869, i64* %3, align 8
  %6870 = inttoptr i64 %6867 to i32*
  %6871 = load i32, i32* %6870, align 4
  %6872 = zext i32 %6871 to i64
  store i64 %6872, i64* %RAX.i732, align 8
  %6873 = add i64 %6866, -60
  %6874 = add i64 %6868, 6
  store i64 %6874, i64* %3, align 8
  %6875 = inttoptr i64 %6873 to i32*
  %6876 = load i32, i32* %6875, align 4
  %6877 = add i32 %6876, %6871
  %6878 = lshr i32 %6877, 31
  %6879 = add i32 %6877, 1
  %6880 = zext i32 %6879 to i64
  store i64 %6880, i64* %RAX.i732, align 8
  %6881 = icmp eq i32 %6877, -1
  %6882 = icmp eq i32 %6879, 0
  %6883 = or i1 %6881, %6882
  %6884 = zext i1 %6883 to i8
  store i8 %6884, i8* %14, align 1
  %6885 = and i32 %6879, 255
  %6886 = tail call i32 @llvm.ctpop.i32(i32 %6885)
  %6887 = trunc i32 %6886 to i8
  %6888 = and i8 %6887, 1
  %6889 = xor i8 %6888, 1
  store i8 %6889, i8* %21, align 1
  %6890 = xor i32 %6879, %6877
  %6891 = lshr i32 %6890, 4
  %6892 = trunc i32 %6891 to i8
  %6893 = and i8 %6892, 1
  store i8 %6893, i8* %27, align 1
  %6894 = zext i1 %6882 to i8
  store i8 %6894, i8* %30, align 1
  %6895 = lshr i32 %6879, 31
  %6896 = trunc i32 %6895 to i8
  store i8 %6896, i8* %33, align 1
  %6897 = xor i32 %6895, %6878
  %6898 = add nuw nsw i32 %6897, %6895
  %6899 = icmp eq i32 %6898, 2
  %6900 = zext i1 %6899 to i8
  store i8 %6900, i8* %39, align 1
  %6901 = sext i32 %6879 to i64
  %6902 = lshr i64 %6901, 32
  store i64 %6902, i64* %5388, align 8
  %6903 = load i32, i32* %ECX.i2686, align 4
  %6904 = add i64 %6868, 12
  store i64 %6904, i64* %3, align 8
  %6905 = sext i32 %6903 to i64
  %6906 = shl nuw i64 %6902, 32
  %6907 = or i64 %6906, %6880
  %6908 = sdiv i64 %6907, %6905
  %6909 = shl i64 %6908, 32
  %6910 = ashr exact i64 %6909, 32
  %6911 = icmp eq i64 %6908, %6910
  br i1 %6911, label %6914, label %6912

; <label>:6912:                                   ; preds = %routine_idivl__esi.exit308
  %6913 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6904, %struct.Memory* %6861)
  %.pre199 = load i16, i16* %AX.i1861, align 2
  %.pre200 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit285

; <label>:6914:                                   ; preds = %routine_idivl__esi.exit308
  %6915 = srem i64 %6907, %6905
  %6916 = and i64 %6908, 4294967295
  store i64 %6916, i64* %RAX.i732, align 8
  %6917 = and i64 %6915, 4294967295
  store i64 %6917, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6918 = trunc i64 %6908 to i16
  br label %routine_idivl__ecx.exit285

routine_idivl__ecx.exit285:                       ; preds = %6914, %6912
  %6919 = phi i64 [ %.pre200, %6912 ], [ %6904, %6914 ]
  %6920 = phi i16 [ %.pre199, %6912 ], [ %6918, %6914 ]
  %6921 = phi %struct.Memory* [ %6913, %6912 ], [ %6861, %6914 ]
  store i16 %6920, i16* %DI.i834, align 2
  %6922 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6923 = add i64 %6922, 3292
  %6924 = add i64 %6919, 19
  store i64 %6924, i64* %3, align 8
  %6925 = inttoptr i64 %6923 to i16*
  store i16 %6920, i16* %6925, align 2
  %6926 = load i64, i64* %3, align 8
  %6927 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %6927, i64* %R8.i187, align 8
  %6928 = add i64 %6927, 3256
  %6929 = load i16, i16* %DI.i834, align 2
  %6930 = add i64 %6926, 16
  store i64 %6930, i64* %3, align 8
  %6931 = inttoptr i64 %6928 to i16*
  store i16 %6929, i16* %6931, align 2
  %6932 = load i64, i64* %RBP.i, align 8
  %6933 = add i64 %6932, -60
  %6934 = load i64, i64* %3, align 8
  %6935 = add i64 %6934, 3
  store i64 %6935, i64* %3, align 8
  %6936 = inttoptr i64 %6933 to i32*
  %6937 = load i32, i32* %6936, align 4
  %6938 = zext i32 %6937 to i64
  store i64 %6938, i64* %RAX.i732, align 8
  %6939 = add i64 %6932, -96
  %6940 = add i64 %6934, 7
  store i64 %6940, i64* %3, align 8
  %6941 = inttoptr i64 %6939 to i32*
  %6942 = load i32, i32* %6941, align 4
  %6943 = shl i32 %6942, 1
  %6944 = zext i32 %6943 to i64
  store i64 %6944, i64* %5426, align 8
  %6945 = add i32 %6943, %6937
  %6946 = zext i32 %6945 to i64
  store i64 %6946, i64* %RAX.i732, align 8
  %6947 = icmp ult i32 %6945, %6937
  %6948 = icmp ult i32 %6945, %6943
  %6949 = or i1 %6947, %6948
  %6950 = zext i1 %6949 to i8
  store i8 %6950, i8* %14, align 1
  %6951 = and i32 %6945, 255
  %6952 = tail call i32 @llvm.ctpop.i32(i32 %6951)
  %6953 = trunc i32 %6952 to i8
  %6954 = and i8 %6953, 1
  %6955 = xor i8 %6954, 1
  store i8 %6955, i8* %21, align 1
  %6956 = xor i32 %6943, %6937
  %6957 = xor i32 %6956, %6945
  %6958 = lshr i32 %6957, 4
  %6959 = trunc i32 %6958 to i8
  %6960 = and i8 %6959, 1
  store i8 %6960, i8* %27, align 1
  %6961 = icmp eq i32 %6945, 0
  %6962 = zext i1 %6961 to i8
  store i8 %6962, i8* %30, align 1
  %6963 = lshr i32 %6945, 31
  %6964 = trunc i32 %6963 to i8
  store i8 %6964, i8* %33, align 1
  %6965 = lshr i32 %6937, 31
  %6966 = lshr i32 %6942, 30
  %6967 = and i32 %6966, 1
  %6968 = xor i32 %6963, %6965
  %6969 = xor i32 %6963, %6967
  %6970 = add nuw nsw i32 %6968, %6969
  %6971 = icmp eq i32 %6970, 2
  %6972 = zext i1 %6971 to i8
  store i8 %6972, i8* %39, align 1
  %6973 = add i64 %6932, -92
  %6974 = add i64 %6934, 16
  store i64 %6974, i64* %3, align 8
  %6975 = inttoptr i64 %6973 to i32*
  %6976 = load i32, i32* %6975, align 4
  %6977 = add i32 %6976, %6945
  %6978 = lshr i32 %6977, 31
  %6979 = add i32 %6977, 2
  %6980 = zext i32 %6979 to i64
  store i64 %6980, i64* %RAX.i732, align 8
  %6981 = icmp ugt i32 %6977, -3
  %6982 = zext i1 %6981 to i8
  store i8 %6982, i8* %14, align 1
  %6983 = and i32 %6979, 255
  %6984 = tail call i32 @llvm.ctpop.i32(i32 %6983)
  %6985 = trunc i32 %6984 to i8
  %6986 = and i8 %6985, 1
  %6987 = xor i8 %6986, 1
  store i8 %6987, i8* %21, align 1
  %6988 = xor i32 %6979, %6977
  %6989 = lshr i32 %6988, 4
  %6990 = trunc i32 %6989 to i8
  %6991 = and i8 %6990, 1
  store i8 %6991, i8* %27, align 1
  %6992 = icmp eq i32 %6979, 0
  %6993 = zext i1 %6992 to i8
  store i8 %6993, i8* %30, align 1
  %6994 = lshr i32 %6979, 31
  %6995 = trunc i32 %6994 to i8
  store i8 %6995, i8* %33, align 1
  %6996 = xor i32 %6994, %6978
  %6997 = add nuw nsw i32 %6996, %6994
  %6998 = icmp eq i32 %6997, 2
  %6999 = zext i1 %6998 to i8
  store i8 %6999, i8* %39, align 1
  %7000 = sext i32 %6979 to i64
  %7001 = lshr i64 %7000, 32
  store i64 %7001, i64* %5388, align 8
  %7002 = load i32, i32* %ESI.i100, align 4
  %7003 = add i64 %6934, 22
  store i64 %7003, i64* %3, align 8
  %7004 = sext i32 %7002 to i64
  %7005 = shl nuw i64 %7001, 32
  %7006 = or i64 %7005, %6980
  %7007 = sdiv i64 %7006, %7004
  %7008 = shl i64 %7007, 32
  %7009 = ashr exact i64 %7008, 32
  %7010 = icmp eq i64 %7007, %7009
  br i1 %7010, label %7013, label %7011

; <label>:7011:                                   ; preds = %routine_idivl__ecx.exit285
  %7012 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7003, %struct.Memory* %6921)
  %.pre201 = load i16, i16* %AX.i1861, align 2
  %.pre202 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit250

; <label>:7013:                                   ; preds = %routine_idivl__ecx.exit285
  %7014 = srem i64 %7006, %7004
  %7015 = and i64 %7007, 4294967295
  store i64 %7015, i64* %RAX.i732, align 8
  %7016 = and i64 %7014, 4294967295
  store i64 %7016, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7017 = trunc i64 %7007 to i16
  br label %routine_idivl__esi.exit250

routine_idivl__esi.exit250:                       ; preds = %7013, %7011
  %7018 = phi i64 [ %.pre202, %7011 ], [ %7003, %7013 ]
  %7019 = phi i16 [ %.pre201, %7011 ], [ %7017, %7013 ]
  %7020 = phi %struct.Memory* [ %7012, %7011 ], [ %6921, %7013 ]
  store i16 %7019, i16* %DI.i834, align 2
  %7021 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7022 = add i64 %7021, 3294
  %7023 = add i64 %7018, 19
  store i64 %7023, i64* %3, align 8
  %7024 = inttoptr i64 %7022 to i16*
  store i16 %7019, i16* %7024, align 2
  %7025 = load i64, i64* %3, align 8
  %7026 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7026, i64* %R8.i187, align 8
  %7027 = add i64 %7026, 3258
  %7028 = load i16, i16* %DI.i834, align 2
  %7029 = add i64 %7025, 16
  store i64 %7029, i64* %3, align 8
  %7030 = inttoptr i64 %7027 to i16*
  store i16 %7028, i16* %7030, align 2
  %7031 = load i64, i64* %RBP.i, align 8
  %7032 = add i64 %7031, -96
  %7033 = load i64, i64* %3, align 8
  %7034 = add i64 %7033, 3
  store i64 %7034, i64* %3, align 8
  %7035 = inttoptr i64 %7032 to i32*
  %7036 = load i32, i32* %7035, align 4
  %7037 = zext i32 %7036 to i64
  store i64 %7037, i64* %RAX.i732, align 8
  %7038 = add i64 %7031, -92
  %7039 = add i64 %7033, 7
  store i64 %7039, i64* %3, align 8
  %7040 = inttoptr i64 %7038 to i32*
  %7041 = load i32, i32* %7040, align 4
  %7042 = shl i32 %7041, 1
  %7043 = zext i32 %7042 to i64
  store i64 %7043, i64* %5426, align 8
  %7044 = add i32 %7042, %7036
  %7045 = zext i32 %7044 to i64
  store i64 %7045, i64* %RAX.i732, align 8
  %7046 = icmp ult i32 %7044, %7036
  %7047 = icmp ult i32 %7044, %7042
  %7048 = or i1 %7046, %7047
  %7049 = zext i1 %7048 to i8
  store i8 %7049, i8* %14, align 1
  %7050 = and i32 %7044, 255
  %7051 = tail call i32 @llvm.ctpop.i32(i32 %7050)
  %7052 = trunc i32 %7051 to i8
  %7053 = and i8 %7052, 1
  %7054 = xor i8 %7053, 1
  store i8 %7054, i8* %21, align 1
  %7055 = xor i32 %7042, %7036
  %7056 = xor i32 %7055, %7044
  %7057 = lshr i32 %7056, 4
  %7058 = trunc i32 %7057 to i8
  %7059 = and i8 %7058, 1
  store i8 %7059, i8* %27, align 1
  %7060 = icmp eq i32 %7044, 0
  %7061 = zext i1 %7060 to i8
  store i8 %7061, i8* %30, align 1
  %7062 = lshr i32 %7044, 31
  %7063 = trunc i32 %7062 to i8
  store i8 %7063, i8* %33, align 1
  %7064 = lshr i32 %7036, 31
  %7065 = lshr i32 %7041, 30
  %7066 = and i32 %7065, 1
  %7067 = xor i32 %7062, %7064
  %7068 = xor i32 %7062, %7066
  %7069 = add nuw nsw i32 %7067, %7068
  %7070 = icmp eq i32 %7069, 2
  %7071 = zext i1 %7070 to i8
  store i8 %7071, i8* %39, align 1
  %7072 = add i64 %7031, -88
  %7073 = add i64 %7033, 16
  store i64 %7073, i64* %3, align 8
  %7074 = inttoptr i64 %7072 to i32*
  %7075 = load i32, i32* %7074, align 4
  %7076 = add i32 %7075, %7044
  %7077 = lshr i32 %7076, 31
  %7078 = add i32 %7076, 2
  %7079 = zext i32 %7078 to i64
  store i64 %7079, i64* %RAX.i732, align 8
  %7080 = icmp ugt i32 %7076, -3
  %7081 = zext i1 %7080 to i8
  store i8 %7081, i8* %14, align 1
  %7082 = and i32 %7078, 255
  %7083 = tail call i32 @llvm.ctpop.i32(i32 %7082)
  %7084 = trunc i32 %7083 to i8
  %7085 = and i8 %7084, 1
  %7086 = xor i8 %7085, 1
  store i8 %7086, i8* %21, align 1
  %7087 = xor i32 %7078, %7076
  %7088 = lshr i32 %7087, 4
  %7089 = trunc i32 %7088 to i8
  %7090 = and i8 %7089, 1
  store i8 %7090, i8* %27, align 1
  %7091 = icmp eq i32 %7078, 0
  %7092 = zext i1 %7091 to i8
  store i8 %7092, i8* %30, align 1
  %7093 = lshr i32 %7078, 31
  %7094 = trunc i32 %7093 to i8
  store i8 %7094, i8* %33, align 1
  %7095 = xor i32 %7093, %7077
  %7096 = add nuw nsw i32 %7095, %7093
  %7097 = icmp eq i32 %7096, 2
  %7098 = zext i1 %7097 to i8
  store i8 %7098, i8* %39, align 1
  %7099 = sext i32 %7078 to i64
  %7100 = lshr i64 %7099, 32
  store i64 %7100, i64* %5388, align 8
  %7101 = load i32, i32* %ESI.i100, align 4
  %7102 = add i64 %7033, 22
  store i64 %7102, i64* %3, align 8
  %7103 = sext i32 %7101 to i64
  %7104 = shl nuw i64 %7100, 32
  %7105 = or i64 %7104, %7079
  %7106 = sdiv i64 %7105, %7103
  %7107 = shl i64 %7106, 32
  %7108 = ashr exact i64 %7107, 32
  %7109 = icmp eq i64 %7106, %7108
  br i1 %7109, label %7112, label %7110

; <label>:7110:                                   ; preds = %routine_idivl__esi.exit250
  %7111 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7102, %struct.Memory* %7020)
  %.pre203 = load i16, i16* %AX.i1861, align 2
  %.pre204 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit215

; <label>:7112:                                   ; preds = %routine_idivl__esi.exit250
  %7113 = srem i64 %7105, %7103
  %7114 = and i64 %7106, 4294967295
  store i64 %7114, i64* %RAX.i732, align 8
  %7115 = and i64 %7113, 4294967295
  store i64 %7115, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7116 = trunc i64 %7106 to i16
  br label %routine_idivl__esi.exit215

routine_idivl__esi.exit215:                       ; preds = %7112, %7110
  %7117 = phi i64 [ %.pre204, %7110 ], [ %7102, %7112 ]
  %7118 = phi i16 [ %.pre203, %7110 ], [ %7116, %7112 ]
  %7119 = phi %struct.Memory* [ %7111, %7110 ], [ %7020, %7112 ]
  store i16 %7118, i16* %DI.i834, align 2
  %7120 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7120, i64* %R8.i187, align 8
  %7121 = add i64 %7120, 3260
  %7122 = add i64 %7117, 19
  store i64 %7122, i64* %3, align 8
  %7123 = inttoptr i64 %7121 to i16*
  store i16 %7118, i16* %7123, align 2
  %7124 = load i64, i64* %RBP.i, align 8
  %7125 = add i64 %7124, -92
  %7126 = load i64, i64* %3, align 8
  %7127 = add i64 %7126, 3
  store i64 %7127, i64* %3, align 8
  %7128 = inttoptr i64 %7125 to i32*
  %7129 = load i32, i32* %7128, align 4
  %7130 = zext i32 %7129 to i64
  store i64 %7130, i64* %RAX.i732, align 8
  %7131 = add i64 %7124, -88
  %7132 = add i64 %7126, 7
  store i64 %7132, i64* %3, align 8
  %7133 = inttoptr i64 %7131 to i32*
  %7134 = load i32, i32* %7133, align 4
  %7135 = shl i32 %7134, 1
  %7136 = zext i32 %7135 to i64
  store i64 %7136, i64* %5426, align 8
  %7137 = add i32 %7135, %7129
  %7138 = zext i32 %7137 to i64
  store i64 %7138, i64* %RAX.i732, align 8
  %7139 = icmp ult i32 %7137, %7129
  %7140 = icmp ult i32 %7137, %7135
  %7141 = or i1 %7139, %7140
  %7142 = zext i1 %7141 to i8
  store i8 %7142, i8* %14, align 1
  %7143 = and i32 %7137, 255
  %7144 = tail call i32 @llvm.ctpop.i32(i32 %7143)
  %7145 = trunc i32 %7144 to i8
  %7146 = and i8 %7145, 1
  %7147 = xor i8 %7146, 1
  store i8 %7147, i8* %21, align 1
  %7148 = xor i32 %7135, %7129
  %7149 = xor i32 %7148, %7137
  %7150 = lshr i32 %7149, 4
  %7151 = trunc i32 %7150 to i8
  %7152 = and i8 %7151, 1
  store i8 %7152, i8* %27, align 1
  %7153 = icmp eq i32 %7137, 0
  %7154 = zext i1 %7153 to i8
  store i8 %7154, i8* %30, align 1
  %7155 = lshr i32 %7137, 31
  %7156 = trunc i32 %7155 to i8
  store i8 %7156, i8* %33, align 1
  %7157 = lshr i32 %7129, 31
  %7158 = lshr i32 %7134, 30
  %7159 = and i32 %7158, 1
  %7160 = xor i32 %7155, %7157
  %7161 = xor i32 %7155, %7159
  %7162 = add nuw nsw i32 %7160, %7161
  %7163 = icmp eq i32 %7162, 2
  %7164 = zext i1 %7163 to i8
  store i8 %7164, i8* %39, align 1
  %7165 = add i64 %7124, -84
  %7166 = add i64 %7126, 16
  store i64 %7166, i64* %3, align 8
  %7167 = inttoptr i64 %7165 to i32*
  %7168 = load i32, i32* %7167, align 4
  %7169 = add i32 %7168, %7137
  %7170 = lshr i32 %7169, 31
  %7171 = add i32 %7169, 2
  %7172 = zext i32 %7171 to i64
  store i64 %7172, i64* %RAX.i732, align 8
  %7173 = icmp ugt i32 %7169, -3
  %7174 = zext i1 %7173 to i8
  store i8 %7174, i8* %14, align 1
  %7175 = and i32 %7171, 255
  %7176 = tail call i32 @llvm.ctpop.i32(i32 %7175)
  %7177 = trunc i32 %7176 to i8
  %7178 = and i8 %7177, 1
  %7179 = xor i8 %7178, 1
  store i8 %7179, i8* %21, align 1
  %7180 = xor i32 %7171, %7169
  %7181 = lshr i32 %7180, 4
  %7182 = trunc i32 %7181 to i8
  %7183 = and i8 %7182, 1
  store i8 %7183, i8* %27, align 1
  %7184 = icmp eq i32 %7171, 0
  %7185 = zext i1 %7184 to i8
  store i8 %7185, i8* %30, align 1
  %7186 = lshr i32 %7171, 31
  %7187 = trunc i32 %7186 to i8
  store i8 %7187, i8* %33, align 1
  %7188 = xor i32 %7186, %7170
  %7189 = add nuw nsw i32 %7188, %7186
  %7190 = icmp eq i32 %7189, 2
  %7191 = zext i1 %7190 to i8
  store i8 %7191, i8* %39, align 1
  %7192 = sext i32 %7171 to i64
  %7193 = lshr i64 %7192, 32
  store i64 %7193, i64* %5388, align 8
  %7194 = load i32, i32* %ESI.i100, align 4
  %7195 = add i64 %7126, 22
  store i64 %7195, i64* %3, align 8
  %7196 = sext i32 %7194 to i64
  %7197 = shl nuw i64 %7193, 32
  %7198 = or i64 %7197, %7172
  %7199 = sdiv i64 %7198, %7196
  %7200 = shl i64 %7199, 32
  %7201 = ashr exact i64 %7200, 32
  %7202 = icmp eq i64 %7199, %7201
  br i1 %7202, label %7205, label %7203

; <label>:7203:                                   ; preds = %routine_idivl__esi.exit215
  %7204 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7195, %struct.Memory* %7119)
  %.pre205 = load i16, i16* %AX.i1861, align 2
  %.pre206 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit184

; <label>:7205:                                   ; preds = %routine_idivl__esi.exit215
  %7206 = srem i64 %7198, %7196
  %7207 = and i64 %7199, 4294967295
  store i64 %7207, i64* %RAX.i732, align 8
  %7208 = and i64 %7206, 4294967295
  store i64 %7208, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7209 = trunc i64 %7199 to i16
  br label %routine_idivl__esi.exit184

routine_idivl__esi.exit184:                       ; preds = %7205, %7203
  %7210 = phi i64 [ %.pre206, %7203 ], [ %7195, %7205 ]
  %7211 = phi i16 [ %.pre205, %7203 ], [ %7209, %7205 ]
  %7212 = phi %struct.Memory* [ %7204, %7203 ], [ %7119, %7205 ]
  store i16 %7211, i16* %DI.i834, align 2
  %7213 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7213, i64* %R8.i187, align 8
  %7214 = add i64 %7213, 3262
  %7215 = add i64 %7210, 19
  store i64 %7215, i64* %3, align 8
  %7216 = inttoptr i64 %7214 to i16*
  store i16 %7211, i16* %7216, align 2
  %7217 = load i64, i64* %RBP.i, align 8
  %7218 = add i64 %7217, -60
  %7219 = load i64, i64* %3, align 8
  %7220 = add i64 %7219, 3
  store i64 %7220, i64* %3, align 8
  %7221 = inttoptr i64 %7218 to i32*
  %7222 = load i32, i32* %7221, align 4
  %7223 = zext i32 %7222 to i64
  store i64 %7223, i64* %RAX.i732, align 8
  %7224 = add i64 %7217, -56
  %7225 = add i64 %7219, 6
  store i64 %7225, i64* %3, align 8
  %7226 = inttoptr i64 %7224 to i32*
  %7227 = load i32, i32* %7226, align 4
  %7228 = add i32 %7227, %7222
  %7229 = lshr i32 %7228, 31
  %7230 = add i32 %7228, 1
  %7231 = zext i32 %7230 to i64
  store i64 %7231, i64* %RAX.i732, align 8
  %7232 = icmp eq i32 %7228, -1
  %7233 = icmp eq i32 %7230, 0
  %7234 = or i1 %7232, %7233
  %7235 = zext i1 %7234 to i8
  store i8 %7235, i8* %14, align 1
  %7236 = and i32 %7230, 255
  %7237 = tail call i32 @llvm.ctpop.i32(i32 %7236)
  %7238 = trunc i32 %7237 to i8
  %7239 = and i8 %7238, 1
  %7240 = xor i8 %7239, 1
  store i8 %7240, i8* %21, align 1
  %7241 = xor i32 %7230, %7228
  %7242 = lshr i32 %7241, 4
  %7243 = trunc i32 %7242 to i8
  %7244 = and i8 %7243, 1
  store i8 %7244, i8* %27, align 1
  %7245 = zext i1 %7233 to i8
  store i8 %7245, i8* %30, align 1
  %7246 = lshr i32 %7230, 31
  %7247 = trunc i32 %7246 to i8
  store i8 %7247, i8* %33, align 1
  %7248 = xor i32 %7246, %7229
  %7249 = add nuw nsw i32 %7248, %7246
  %7250 = icmp eq i32 %7249, 2
  %7251 = zext i1 %7250 to i8
  store i8 %7251, i8* %39, align 1
  %7252 = sext i32 %7230 to i64
  %7253 = lshr i64 %7252, 32
  store i64 %7253, i64* %5388, align 8
  %7254 = load i32, i32* %ECX.i2686, align 4
  %7255 = add i64 %7219, 12
  store i64 %7255, i64* %3, align 8
  %7256 = sext i32 %7254 to i64
  %7257 = shl nuw i64 %7253, 32
  %7258 = or i64 %7257, %7231
  %7259 = sdiv i64 %7258, %7256
  %7260 = shl i64 %7259, 32
  %7261 = ashr exact i64 %7260, 32
  %7262 = icmp eq i64 %7259, %7261
  br i1 %7262, label %7265, label %7263

; <label>:7263:                                   ; preds = %routine_idivl__esi.exit184
  %7264 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7255, %struct.Memory* %7212)
  %.pre207 = load i16, i16* %AX.i1861, align 2
  %.pre208 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit161

; <label>:7265:                                   ; preds = %routine_idivl__esi.exit184
  %7266 = srem i64 %7258, %7256
  %7267 = and i64 %7259, 4294967295
  store i64 %7267, i64* %RAX.i732, align 8
  %7268 = and i64 %7266, 4294967295
  store i64 %7268, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7269 = trunc i64 %7259 to i16
  br label %routine_idivl__ecx.exit161

routine_idivl__ecx.exit161:                       ; preds = %7265, %7263
  %7270 = phi i64 [ %.pre208, %7263 ], [ %7255, %7265 ]
  %7271 = phi i16 [ %.pre207, %7263 ], [ %7269, %7265 ]
  %7272 = phi %struct.Memory* [ %7264, %7263 ], [ %7212, %7265 ]
  store i16 %7271, i16* %DI.i834, align 2
  %7273 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7274 = add i64 %7273, 3324
  %7275 = add i64 %7270, 19
  store i64 %7275, i64* %3, align 8
  %7276 = inttoptr i64 %7274 to i16*
  store i16 %7271, i16* %7276, align 2
  %7277 = load i64, i64* %3, align 8
  %7278 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7278, i64* %R8.i187, align 8
  %7279 = add i64 %7278, 3288
  %7280 = load i16, i16* %DI.i834, align 2
  %7281 = add i64 %7277, 16
  store i64 %7281, i64* %3, align 8
  %7282 = inttoptr i64 %7279 to i16*
  store i16 %7280, i16* %7282, align 2
  %7283 = load i64, i64* %RBP.i, align 8
  %7284 = add i64 %7283, -96
  %7285 = load i64, i64* %3, align 8
  %7286 = add i64 %7285, 3
  store i64 %7286, i64* %3, align 8
  %7287 = inttoptr i64 %7284 to i32*
  %7288 = load i32, i32* %7287, align 4
  %7289 = zext i32 %7288 to i64
  store i64 %7289, i64* %RAX.i732, align 8
  %7290 = add i64 %7283, -60
  %7291 = add i64 %7285, 7
  store i64 %7291, i64* %3, align 8
  %7292 = inttoptr i64 %7290 to i32*
  %7293 = load i32, i32* %7292, align 4
  %7294 = shl i32 %7293, 1
  %7295 = zext i32 %7294 to i64
  store i64 %7295, i64* %5426, align 8
  %7296 = add i32 %7294, %7288
  %7297 = zext i32 %7296 to i64
  store i64 %7297, i64* %RAX.i732, align 8
  %7298 = icmp ult i32 %7296, %7288
  %7299 = icmp ult i32 %7296, %7294
  %7300 = or i1 %7298, %7299
  %7301 = zext i1 %7300 to i8
  store i8 %7301, i8* %14, align 1
  %7302 = and i32 %7296, 255
  %7303 = tail call i32 @llvm.ctpop.i32(i32 %7302)
  %7304 = trunc i32 %7303 to i8
  %7305 = and i8 %7304, 1
  %7306 = xor i8 %7305, 1
  store i8 %7306, i8* %21, align 1
  %7307 = xor i32 %7294, %7288
  %7308 = xor i32 %7307, %7296
  %7309 = lshr i32 %7308, 4
  %7310 = trunc i32 %7309 to i8
  %7311 = and i8 %7310, 1
  store i8 %7311, i8* %27, align 1
  %7312 = icmp eq i32 %7296, 0
  %7313 = zext i1 %7312 to i8
  store i8 %7313, i8* %30, align 1
  %7314 = lshr i32 %7296, 31
  %7315 = trunc i32 %7314 to i8
  store i8 %7315, i8* %33, align 1
  %7316 = lshr i32 %7288, 31
  %7317 = lshr i32 %7293, 30
  %7318 = and i32 %7317, 1
  %7319 = xor i32 %7314, %7316
  %7320 = xor i32 %7314, %7318
  %7321 = add nuw nsw i32 %7319, %7320
  %7322 = icmp eq i32 %7321, 2
  %7323 = zext i1 %7322 to i8
  store i8 %7323, i8* %39, align 1
  %7324 = add i64 %7283, -56
  %7325 = add i64 %7285, 16
  store i64 %7325, i64* %3, align 8
  %7326 = inttoptr i64 %7324 to i32*
  %7327 = load i32, i32* %7326, align 4
  %7328 = add i32 %7327, %7296
  %7329 = lshr i32 %7328, 31
  %7330 = add i32 %7328, 2
  %7331 = zext i32 %7330 to i64
  store i64 %7331, i64* %RAX.i732, align 8
  %7332 = icmp ugt i32 %7328, -3
  %7333 = zext i1 %7332 to i8
  store i8 %7333, i8* %14, align 1
  %7334 = and i32 %7330, 255
  %7335 = tail call i32 @llvm.ctpop.i32(i32 %7334)
  %7336 = trunc i32 %7335 to i8
  %7337 = and i8 %7336, 1
  %7338 = xor i8 %7337, 1
  store i8 %7338, i8* %21, align 1
  %7339 = xor i32 %7330, %7328
  %7340 = lshr i32 %7339, 4
  %7341 = trunc i32 %7340 to i8
  %7342 = and i8 %7341, 1
  store i8 %7342, i8* %27, align 1
  %7343 = icmp eq i32 %7330, 0
  %7344 = zext i1 %7343 to i8
  store i8 %7344, i8* %30, align 1
  %7345 = lshr i32 %7330, 31
  %7346 = trunc i32 %7345 to i8
  store i8 %7346, i8* %33, align 1
  %7347 = xor i32 %7345, %7329
  %7348 = add nuw nsw i32 %7347, %7345
  %7349 = icmp eq i32 %7348, 2
  %7350 = zext i1 %7349 to i8
  store i8 %7350, i8* %39, align 1
  %7351 = sext i32 %7330 to i64
  %7352 = lshr i64 %7351, 32
  store i64 %7352, i64* %5388, align 8
  %7353 = load i32, i32* %ESI.i100, align 4
  %7354 = add i64 %7285, 22
  store i64 %7354, i64* %3, align 8
  %7355 = sext i32 %7353 to i64
  %7356 = shl nuw i64 %7352, 32
  %7357 = or i64 %7356, %7331
  %7358 = sdiv i64 %7357, %7355
  %7359 = shl i64 %7358, 32
  %7360 = ashr exact i64 %7359, 32
  %7361 = icmp eq i64 %7358, %7360
  br i1 %7361, label %7364, label %7362

; <label>:7362:                                   ; preds = %routine_idivl__ecx.exit161
  %7363 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7354, %struct.Memory* %7272)
  %.pre209 = load i16, i16* %AX.i1861, align 2
  %.pre210 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit126

; <label>:7364:                                   ; preds = %routine_idivl__ecx.exit161
  %7365 = srem i64 %7357, %7355
  %7366 = and i64 %7358, 4294967295
  store i64 %7366, i64* %RAX.i732, align 8
  %7367 = and i64 %7365, 4294967295
  store i64 %7367, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7368 = trunc i64 %7358 to i16
  br label %routine_idivl__esi.exit126

routine_idivl__esi.exit126:                       ; preds = %7364, %7362
  %7369 = phi i64 [ %.pre210, %7362 ], [ %7354, %7364 ]
  %7370 = phi i16 [ %.pre209, %7362 ], [ %7368, %7364 ]
  %7371 = phi %struct.Memory* [ %7363, %7362 ], [ %7272, %7364 ]
  store i16 %7370, i16* %DI.i834, align 2
  %7372 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7373 = add i64 %7372, 3326
  %7374 = add i64 %7369, 19
  store i64 %7374, i64* %3, align 8
  %7375 = inttoptr i64 %7373 to i16*
  store i16 %7370, i16* %7375, align 2
  %7376 = load i64, i64* %3, align 8
  %7377 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7377, i64* %R8.i187, align 8
  %7378 = add i64 %7377, 3290
  %7379 = load i16, i16* %DI.i834, align 2
  %7380 = add i64 %7376, 16
  store i64 %7380, i64* %3, align 8
  %7381 = inttoptr i64 %7378 to i16*
  store i16 %7379, i16* %7381, align 2
  %7382 = load i64, i64* %RBP.i, align 8
  %7383 = add i64 %7382, -56
  %7384 = load i64, i64* %3, align 8
  %7385 = add i64 %7384, 3
  store i64 %7385, i64* %3, align 8
  %7386 = inttoptr i64 %7383 to i32*
  %7387 = load i32, i32* %7386, align 4
  %7388 = zext i32 %7387 to i64
  store i64 %7388, i64* %RAX.i732, align 8
  %7389 = add i64 %7382, -52
  %7390 = add i64 %7384, 6
  store i64 %7390, i64* %3, align 8
  %7391 = inttoptr i64 %7389 to i32*
  %7392 = load i32, i32* %7391, align 4
  %7393 = add i32 %7392, %7387
  %7394 = lshr i32 %7393, 31
  %7395 = add i32 %7393, 1
  %7396 = zext i32 %7395 to i64
  store i64 %7396, i64* %RAX.i732, align 8
  %7397 = icmp eq i32 %7393, -1
  %7398 = icmp eq i32 %7395, 0
  %7399 = or i1 %7397, %7398
  %7400 = zext i1 %7399 to i8
  store i8 %7400, i8* %14, align 1
  %7401 = and i32 %7395, 255
  %7402 = tail call i32 @llvm.ctpop.i32(i32 %7401)
  %7403 = trunc i32 %7402 to i8
  %7404 = and i8 %7403, 1
  %7405 = xor i8 %7404, 1
  store i8 %7405, i8* %21, align 1
  %7406 = xor i32 %7395, %7393
  %7407 = lshr i32 %7406, 4
  %7408 = trunc i32 %7407 to i8
  %7409 = and i8 %7408, 1
  store i8 %7409, i8* %27, align 1
  %7410 = zext i1 %7398 to i8
  store i8 %7410, i8* %30, align 1
  %7411 = lshr i32 %7395, 31
  %7412 = trunc i32 %7411 to i8
  store i8 %7412, i8* %33, align 1
  %7413 = xor i32 %7411, %7394
  %7414 = add nuw nsw i32 %7413, %7411
  %7415 = icmp eq i32 %7414, 2
  %7416 = zext i1 %7415 to i8
  store i8 %7416, i8* %39, align 1
  %7417 = sext i32 %7395 to i64
  %7418 = lshr i64 %7417, 32
  store i64 %7418, i64* %5388, align 8
  %7419 = load i32, i32* %ECX.i2686, align 4
  %7420 = add i64 %7384, 12
  store i64 %7420, i64* %3, align 8
  %7421 = sext i32 %7419 to i64
  %7422 = shl nuw i64 %7418, 32
  %7423 = or i64 %7422, %7396
  %7424 = sdiv i64 %7423, %7421
  %7425 = shl i64 %7424, 32
  %7426 = ashr exact i64 %7425, 32
  %7427 = icmp eq i64 %7424, %7426
  br i1 %7427, label %7430, label %7428

; <label>:7428:                                   ; preds = %routine_idivl__esi.exit126
  %7429 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7420, %struct.Memory* %7371)
  %.pre211 = load i16, i16* %AX.i1861, align 2
  %.pre212 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit98

; <label>:7430:                                   ; preds = %routine_idivl__esi.exit126
  %7431 = srem i64 %7423, %7421
  %7432 = and i64 %7424, 4294967295
  store i64 %7432, i64* %RAX.i732, align 8
  %7433 = and i64 %7431, 4294967295
  store i64 %7433, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7434 = trunc i64 %7424 to i16
  br label %routine_idivl__ecx.exit98

routine_idivl__ecx.exit98:                        ; preds = %7430, %7428
  %7435 = phi i64 [ %.pre212, %7428 ], [ %7420, %7430 ]
  %7436 = phi i16 [ %.pre211, %7428 ], [ %7434, %7430 ]
  %7437 = phi %struct.Memory* [ %7429, %7428 ], [ %7371, %7430 ]
  store i16 %7436, i16* %DI.i834, align 2
  %7438 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7439 = add i64 %7438, 3356
  %7440 = add i64 %7435, 19
  store i64 %7440, i64* %3, align 8
  %7441 = inttoptr i64 %7439 to i16*
  store i16 %7436, i16* %7441, align 2
  %7442 = load i64, i64* %3, align 8
  %7443 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7443, i64* %R8.i187, align 8
  %7444 = add i64 %7443, 3320
  %7445 = load i16, i16* %DI.i834, align 2
  %7446 = add i64 %7442, 16
  store i64 %7446, i64* %3, align 8
  %7447 = inttoptr i64 %7444 to i16*
  store i16 %7445, i16* %7447, align 2
  %7448 = load i64, i64* %RBP.i, align 8
  %7449 = add i64 %7448, -60
  %7450 = load i64, i64* %3, align 8
  %7451 = add i64 %7450, 3
  store i64 %7451, i64* %3, align 8
  %7452 = inttoptr i64 %7449 to i32*
  %7453 = load i32, i32* %7452, align 4
  %7454 = zext i32 %7453 to i64
  store i64 %7454, i64* %RAX.i732, align 8
  %7455 = add i64 %7448, -56
  %7456 = add i64 %7450, 7
  store i64 %7456, i64* %3, align 8
  %7457 = inttoptr i64 %7455 to i32*
  %7458 = load i32, i32* %7457, align 4
  %7459 = shl i32 %7458, 1
  %7460 = zext i32 %7459 to i64
  store i64 %7460, i64* %5426, align 8
  %7461 = add i32 %7459, %7453
  %7462 = zext i32 %7461 to i64
  store i64 %7462, i64* %RAX.i732, align 8
  %7463 = icmp ult i32 %7461, %7453
  %7464 = icmp ult i32 %7461, %7459
  %7465 = or i1 %7463, %7464
  %7466 = zext i1 %7465 to i8
  store i8 %7466, i8* %14, align 1
  %7467 = and i32 %7461, 255
  %7468 = tail call i32 @llvm.ctpop.i32(i32 %7467)
  %7469 = trunc i32 %7468 to i8
  %7470 = and i8 %7469, 1
  %7471 = xor i8 %7470, 1
  store i8 %7471, i8* %21, align 1
  %7472 = xor i32 %7459, %7453
  %7473 = xor i32 %7472, %7461
  %7474 = lshr i32 %7473, 4
  %7475 = trunc i32 %7474 to i8
  %7476 = and i8 %7475, 1
  store i8 %7476, i8* %27, align 1
  %7477 = icmp eq i32 %7461, 0
  %7478 = zext i1 %7477 to i8
  store i8 %7478, i8* %30, align 1
  %7479 = lshr i32 %7461, 31
  %7480 = trunc i32 %7479 to i8
  store i8 %7480, i8* %33, align 1
  %7481 = lshr i32 %7453, 31
  %7482 = lshr i32 %7458, 30
  %7483 = and i32 %7482, 1
  %7484 = xor i32 %7479, %7481
  %7485 = xor i32 %7479, %7483
  %7486 = add nuw nsw i32 %7484, %7485
  %7487 = icmp eq i32 %7486, 2
  %7488 = zext i1 %7487 to i8
  store i8 %7488, i8* %39, align 1
  %7489 = add i64 %7448, -52
  %7490 = add i64 %7450, 16
  store i64 %7490, i64* %3, align 8
  %7491 = inttoptr i64 %7489 to i32*
  %7492 = load i32, i32* %7491, align 4
  %7493 = add i32 %7492, %7461
  %7494 = lshr i32 %7493, 31
  %7495 = add i32 %7493, 2
  %7496 = zext i32 %7495 to i64
  store i64 %7496, i64* %RAX.i732, align 8
  %7497 = icmp ugt i32 %7493, -3
  %7498 = zext i1 %7497 to i8
  store i8 %7498, i8* %14, align 1
  %7499 = and i32 %7495, 255
  %7500 = tail call i32 @llvm.ctpop.i32(i32 %7499)
  %7501 = trunc i32 %7500 to i8
  %7502 = and i8 %7501, 1
  %7503 = xor i8 %7502, 1
  store i8 %7503, i8* %21, align 1
  %7504 = xor i32 %7495, %7493
  %7505 = lshr i32 %7504, 4
  %7506 = trunc i32 %7505 to i8
  %7507 = and i8 %7506, 1
  store i8 %7507, i8* %27, align 1
  %7508 = icmp eq i32 %7495, 0
  %7509 = zext i1 %7508 to i8
  store i8 %7509, i8* %30, align 1
  %7510 = lshr i32 %7495, 31
  %7511 = trunc i32 %7510 to i8
  store i8 %7511, i8* %33, align 1
  %7512 = xor i32 %7510, %7494
  %7513 = add nuw nsw i32 %7512, %7510
  %7514 = icmp eq i32 %7513, 2
  %7515 = zext i1 %7514 to i8
  store i8 %7515, i8* %39, align 1
  %7516 = sext i32 %7495 to i64
  %7517 = lshr i64 %7516, 32
  store i64 %7517, i64* %5388, align 8
  %7518 = load i32, i32* %ESI.i100, align 4
  %7519 = add i64 %7450, 22
  store i64 %7519, i64* %3, align 8
  %7520 = sext i32 %7518 to i64
  %7521 = shl nuw i64 %7517, 32
  %7522 = or i64 %7521, %7496
  %7523 = sdiv i64 %7522, %7520
  %7524 = shl i64 %7523, 32
  %7525 = ashr exact i64 %7524, 32
  %7526 = icmp eq i64 %7523, %7525
  br i1 %7526, label %7529, label %7527

; <label>:7527:                                   ; preds = %routine_idivl__ecx.exit98
  %7528 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7519, %struct.Memory* %7437)
  %.pre213 = load i16, i16* %AX.i1861, align 2
  %.pre214 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit64

; <label>:7529:                                   ; preds = %routine_idivl__ecx.exit98
  %7530 = srem i64 %7522, %7520
  %7531 = and i64 %7523, 4294967295
  store i64 %7531, i64* %RAX.i732, align 8
  %7532 = and i64 %7530, 4294967295
  store i64 %7532, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7533 = trunc i64 %7523 to i16
  br label %routine_idivl__esi.exit64

routine_idivl__esi.exit64:                        ; preds = %7529, %7527
  %7534 = phi i64 [ %.pre214, %7527 ], [ %7519, %7529 ]
  %7535 = phi i16 [ %.pre213, %7527 ], [ %7533, %7529 ]
  %7536 = phi %struct.Memory* [ %7528, %7527 ], [ %7437, %7529 ]
  store i16 %7535, i16* %DI.i834, align 2
  %7537 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7538 = add i64 %7537, 3358
  %7539 = add i64 %7534, 19
  store i64 %7539, i64* %3, align 8
  %7540 = inttoptr i64 %7538 to i16*
  store i16 %7535, i16* %7540, align 2
  %7541 = load i64, i64* %3, align 8
  %7542 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7542, i64* %R8.i187, align 8
  %7543 = add i64 %7542, 3322
  %7544 = load i16, i16* %DI.i834, align 2
  %7545 = add i64 %7541, 16
  store i64 %7545, i64* %3, align 8
  %7546 = inttoptr i64 %7543 to i16*
  store i16 %7544, i16* %7546, align 2
  %7547 = load i64, i64* %RBP.i, align 8
  %7548 = add i64 %7547, -52
  %7549 = load i64, i64* %3, align 8
  %7550 = add i64 %7549, 3
  store i64 %7550, i64* %3, align 8
  %7551 = inttoptr i64 %7548 to i32*
  %7552 = load i32, i32* %7551, align 4
  %7553 = zext i32 %7552 to i64
  store i64 %7553, i64* %RAX.i732, align 8
  %7554 = add i64 %7547, -48
  %7555 = add i64 %7549, 6
  store i64 %7555, i64* %3, align 8
  %7556 = inttoptr i64 %7554 to i32*
  %7557 = load i32, i32* %7556, align 4
  %7558 = add i32 %7557, %7552
  %7559 = lshr i32 %7558, 31
  %7560 = add i32 %7558, 1
  %7561 = zext i32 %7560 to i64
  store i64 %7561, i64* %RAX.i732, align 8
  %7562 = icmp eq i32 %7558, -1
  %7563 = icmp eq i32 %7560, 0
  %7564 = or i1 %7562, %7563
  %7565 = zext i1 %7564 to i8
  store i8 %7565, i8* %14, align 1
  %7566 = and i32 %7560, 255
  %7567 = tail call i32 @llvm.ctpop.i32(i32 %7566)
  %7568 = trunc i32 %7567 to i8
  %7569 = and i8 %7568, 1
  %7570 = xor i8 %7569, 1
  store i8 %7570, i8* %21, align 1
  %7571 = xor i32 %7560, %7558
  %7572 = lshr i32 %7571, 4
  %7573 = trunc i32 %7572 to i8
  %7574 = and i8 %7573, 1
  store i8 %7574, i8* %27, align 1
  %7575 = zext i1 %7563 to i8
  store i8 %7575, i8* %30, align 1
  %7576 = lshr i32 %7560, 31
  %7577 = trunc i32 %7576 to i8
  store i8 %7577, i8* %33, align 1
  %7578 = xor i32 %7576, %7559
  %7579 = add nuw nsw i32 %7578, %7576
  %7580 = icmp eq i32 %7579, 2
  %7581 = zext i1 %7580 to i8
  store i8 %7581, i8* %39, align 1
  %7582 = sext i32 %7560 to i64
  %7583 = lshr i64 %7582, 32
  store i64 %7583, i64* %5388, align 8
  %7584 = load i32, i32* %ECX.i2686, align 4
  %7585 = add i64 %7549, 12
  store i64 %7585, i64* %3, align 8
  %7586 = sext i32 %7584 to i64
  %7587 = shl nuw i64 %7583, 32
  %7588 = or i64 %7587, %7561
  %7589 = sdiv i64 %7588, %7586
  %7590 = shl i64 %7589, 32
  %7591 = ashr exact i64 %7590, 32
  %7592 = icmp eq i64 %7589, %7591
  br i1 %7592, label %7595, label %7593

; <label>:7593:                                   ; preds = %routine_idivl__esi.exit64
  %7594 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7585, %struct.Memory* %7536)
  %.pre215 = load i16, i16* %AX.i1861, align 2
  %.pre216 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:7595:                                   ; preds = %routine_idivl__esi.exit64
  %7596 = srem i64 %7588, %7586
  %7597 = and i64 %7589, 4294967295
  store i64 %7597, i64* %RAX.i732, align 8
  %7598 = and i64 %7596, 4294967295
  store i64 %7598, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7599 = trunc i64 %7589 to i16
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %7595, %7593
  %7600 = phi i64 [ %.pre216, %7593 ], [ %7585, %7595 ]
  %7601 = phi i16 [ %.pre215, %7593 ], [ %7599, %7595 ]
  %7602 = phi %struct.Memory* [ %7594, %7593 ], [ %7536, %7595 ]
  store i16 %7601, i16* %DI.i834, align 2
  %7603 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7603, i64* %R8.i187, align 8
  %7604 = add i64 %7603, 3352
  %7605 = add i64 %7600, 19
  store i64 %7605, i64* %3, align 8
  %7606 = inttoptr i64 %7604 to i16*
  store i16 %7601, i16* %7606, align 2
  %7607 = load i64, i64* %RBP.i, align 8
  %7608 = add i64 %7607, -56
  %7609 = load i64, i64* %3, align 8
  %7610 = add i64 %7609, 3
  store i64 %7610, i64* %3, align 8
  %7611 = inttoptr i64 %7608 to i32*
  %7612 = load i32, i32* %7611, align 4
  %7613 = zext i32 %7612 to i64
  store i64 %7613, i64* %RAX.i732, align 8
  %7614 = add i64 %7607, -52
  %7615 = add i64 %7609, 6
  store i64 %7615, i64* %3, align 8
  %7616 = inttoptr i64 %7614 to i32*
  %7617 = load i32, i32* %7616, align 4
  %7618 = shl i32 %7617, 1
  %7619 = zext i32 %7618 to i64
  store i64 %7619, i64* %RCX.i163, align 8
  %7620 = add i32 %7618, %7612
  %7621 = zext i32 %7620 to i64
  store i64 %7621, i64* %RAX.i732, align 8
  %7622 = icmp ult i32 %7620, %7612
  %7623 = icmp ult i32 %7620, %7618
  %7624 = or i1 %7622, %7623
  %7625 = zext i1 %7624 to i8
  store i8 %7625, i8* %14, align 1
  %7626 = and i32 %7620, 255
  %7627 = tail call i32 @llvm.ctpop.i32(i32 %7626)
  %7628 = trunc i32 %7627 to i8
  %7629 = and i8 %7628, 1
  %7630 = xor i8 %7629, 1
  store i8 %7630, i8* %21, align 1
  %7631 = xor i32 %7618, %7612
  %7632 = xor i32 %7631, %7620
  %7633 = lshr i32 %7632, 4
  %7634 = trunc i32 %7633 to i8
  %7635 = and i8 %7634, 1
  store i8 %7635, i8* %27, align 1
  %7636 = icmp eq i32 %7620, 0
  %7637 = zext i1 %7636 to i8
  store i8 %7637, i8* %30, align 1
  %7638 = lshr i32 %7620, 31
  %7639 = trunc i32 %7638 to i8
  store i8 %7639, i8* %33, align 1
  %7640 = lshr i32 %7612, 31
  %7641 = lshr i32 %7617, 30
  %7642 = and i32 %7641, 1
  %7643 = xor i32 %7638, %7640
  %7644 = xor i32 %7638, %7642
  %7645 = add nuw nsw i32 %7643, %7644
  %7646 = icmp eq i32 %7645, 2
  %7647 = zext i1 %7646 to i8
  store i8 %7647, i8* %39, align 1
  %7648 = add i64 %7607, -48
  %7649 = add i64 %7609, 13
  store i64 %7649, i64* %3, align 8
  %7650 = inttoptr i64 %7648 to i32*
  %7651 = load i32, i32* %7650, align 4
  %7652 = add i32 %7651, %7620
  %7653 = lshr i32 %7652, 31
  %7654 = add i32 %7652, 2
  %7655 = zext i32 %7654 to i64
  store i64 %7655, i64* %RAX.i732, align 8
  %7656 = icmp ugt i32 %7652, -3
  %7657 = zext i1 %7656 to i8
  store i8 %7657, i8* %14, align 1
  %7658 = and i32 %7654, 255
  %7659 = tail call i32 @llvm.ctpop.i32(i32 %7658)
  %7660 = trunc i32 %7659 to i8
  %7661 = and i8 %7660, 1
  %7662 = xor i8 %7661, 1
  store i8 %7662, i8* %21, align 1
  %7663 = xor i32 %7654, %7652
  %7664 = lshr i32 %7663, 4
  %7665 = trunc i32 %7664 to i8
  %7666 = and i8 %7665, 1
  store i8 %7666, i8* %27, align 1
  %7667 = icmp eq i32 %7654, 0
  %7668 = zext i1 %7667 to i8
  store i8 %7668, i8* %30, align 1
  %7669 = lshr i32 %7654, 31
  %7670 = trunc i32 %7669 to i8
  store i8 %7670, i8* %33, align 1
  %7671 = xor i32 %7669, %7653
  %7672 = add nuw nsw i32 %7671, %7669
  %7673 = icmp eq i32 %7672, 2
  %7674 = zext i1 %7673 to i8
  store i8 %7674, i8* %39, align 1
  %7675 = sext i32 %7654 to i64
  %7676 = lshr i64 %7675, 32
  store i64 %7676, i64* %5388, align 8
  %7677 = load i32, i32* %ESI.i100, align 4
  %7678 = add i64 %7609, 19
  store i64 %7678, i64* %3, align 8
  %7679 = sext i32 %7677 to i64
  %7680 = shl nuw i64 %7676, 32
  %7681 = or i64 %7680, %7655
  %7682 = sdiv i64 %7681, %7679
  %7683 = shl i64 %7682, 32
  %7684 = ashr exact i64 %7683, 32
  %7685 = icmp eq i64 %7682, %7684
  br i1 %7685, label %7688, label %7686

; <label>:7686:                                   ; preds = %routine_idivl__ecx.exit
  %7687 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7678, %struct.Memory* %7602)
  %.pre217 = load i16, i16* %AX.i1861, align 2
  %.pre218 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:7688:                                   ; preds = %routine_idivl__ecx.exit
  %7689 = srem i64 %7681, %7679
  %7690 = and i64 %7682, 4294967295
  store i64 %7690, i64* %RAX.i732, align 8
  %7691 = and i64 %7689, 4294967295
  store i64 %7691, i64* %RDX.i, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7692 = trunc i64 %7682 to i16
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %7688, %7686
  %7693 = phi i64 [ %.pre218, %7686 ], [ %7678, %7688 ]
  %7694 = phi i16 [ %.pre217, %7686 ], [ %7692, %7688 ]
  %7695 = phi %struct.Memory* [ %7687, %7686 ], [ %7602, %7688 ]
  store i16 %7694, i16* %DI.i834, align 2
  %7696 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %7696, i64* %R8.i187, align 8
  %7697 = add i64 %7696, 3354
  %7698 = add i64 %7693, 19
  store i64 %7698, i64* %3, align 8
  %7699 = inttoptr i64 %7697 to i16*
  store i16 %7694, i16* %7699, align 2
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_403977

block_.L_403977:                                  ; preds = %routine_idivl__esi.exit, %block_4033f2, %block_4033e5, %block_.L_4033d8
  %7700 = phi i64 [ %5285, %block_.L_4033d8 ], [ %5299, %block_4033e5 ], [ %5313, %block_4033f2 ], [ %.pre219, %routine_idivl__esi.exit ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4033d8 ], [ %MEMORY.29, %block_4033e5 ], [ %MEMORY.29, %block_4033f2 ], [ %7695, %routine_idivl__esi.exit ]
  %7701 = load i64, i64* %6, align 8
  %7702 = add i64 %7701, 368
  store i64 %7702, i64* %6, align 8
  %7703 = icmp ugt i64 %7701, -369
  %7704 = zext i1 %7703 to i8
  store i8 %7704, i8* %14, align 1
  %7705 = trunc i64 %7702 to i32
  %7706 = and i32 %7705, 255
  %7707 = tail call i32 @llvm.ctpop.i32(i32 %7706)
  %7708 = trunc i32 %7707 to i8
  %7709 = and i8 %7708, 1
  %7710 = xor i8 %7709, 1
  store i8 %7710, i8* %21, align 1
  %7711 = xor i64 %7701, 16
  %7712 = xor i64 %7711, %7702
  %7713 = lshr i64 %7712, 4
  %7714 = trunc i64 %7713 to i8
  %7715 = and i8 %7714, 1
  store i8 %7715, i8* %27, align 1
  %7716 = icmp eq i64 %7702, 0
  %7717 = zext i1 %7716 to i8
  store i8 %7717, i8* %30, align 1
  %7718 = lshr i64 %7702, 63
  %7719 = trunc i64 %7718 to i8
  store i8 %7719, i8* %33, align 1
  %7720 = lshr i64 %7701, 63
  %7721 = xor i64 %7718, %7720
  %7722 = add nuw nsw i64 %7721, %7718
  %7723 = icmp eq i64 %7722, 2
  %7724 = zext i1 %7723 to i8
  store i8 %7724, i8* %39, align 1
  %7725 = add i64 %7700, 8
  store i64 %7725, i64* %3, align 8
  %7726 = add i64 %7701, 376
  %7727 = inttoptr i64 %7702 to i64*
  %7728 = load i64, i64* %7727, align 8
  store i64 %7728, i64* %RBP.i, align 8
  store i64 %7726, i64* %6, align 8
  %7729 = add i64 %7700, 9
  store i64 %7729, i64* %3, align 8
  %7730 = inttoptr i64 %7726 to i64*
  %7731 = load i64, i64* %7730, align 8
  store i64 %7731, i64* %3, align 8
  %7732 = add i64 %7701, 384
  store i64 %7732, i64* %6, align 8
  ret %struct.Memory* %MEMORY.30
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 368
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xf___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 15
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_40265b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xe0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.getNeighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xf8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x110__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x128__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x13d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -317
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40272e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_je_.L_4026f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_movb__cl__MINUS0x13e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -318
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402720(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movb__al__MINUS0x13f__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -319
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_sete__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x13f__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -319
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x13e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -318
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x13e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -318
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x13d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -317
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x13d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -317
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 216
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4028cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4027ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

; Function Attrs: nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4027bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x11868__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4027ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x144__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x130__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402765(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40281b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xf4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402828(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x148__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402865(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402872(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4028af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x124__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4028bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x150__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4028fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x110__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x128__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x151__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -337
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402953(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x151__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -337
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x151__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -337
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xf___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 15
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402a10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xe4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11be8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402ac4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xfc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x100__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402ad3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402b59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xd0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x9c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xa0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402b73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402ba2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x114__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x118__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402bb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_jge_.L_402bf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xb8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 184
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -185
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
define %struct.Memory* @routine_shlq__0x9___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 9
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 55
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 54
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0xffff____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  store i16 -1, i16* %4, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402bba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402c4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -5
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x158__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_jmpq_.L_402cf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402c91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402c91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x15c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -348
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402cd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_402cd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x160__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402ce9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jge_.L_402d65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_402d52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xb8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 184
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -185
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x400___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -1025
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %CX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402d0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402d57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402e75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -92
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx___dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x118__rax__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %4, 280
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DX, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0xf8__rax__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %4, 248
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DX, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0xd8__rax__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %4, 216
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DX, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0xb8__rax__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %4, 184
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DX, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -60
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x200___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 512
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -513
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
  %17 = xor i64 %6, %3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movw__dx__0x6__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 6
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402e93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0xffff__0xb8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 -1, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402eb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0xffff__0x2b8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 -1, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x164__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -356
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6b8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1720
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_shll__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6d8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1752
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6ba__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1722
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movw__di__0x6f8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1784
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6da__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1754
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6bc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1724
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movw__di__0x718__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1816
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6fa__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1786
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6dc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1756
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6be__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1726
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movw__di__0x71a__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1818
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6fc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1788
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6de__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1758
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movw__di__0x71c__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1820
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x6fe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1790
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0x40__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 3
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %3, align 8
  %14 = mul i64 %10, 12884901888
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
define %struct.Memory* @routine_movw__di__0x71e__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 1822
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xeb8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3768
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xef8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3832
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xeba__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3770
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xefa__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3834
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xebc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3772
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xefc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3836
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xebe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3774
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xefe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3838
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xed8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3800
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movw__di__0xf18__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3864
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xeda__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3802
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movw__di__0xf1a__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3866
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xedc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3804
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movw__di__0xf1c__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3868
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xede__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3806
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xf1e__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3870
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4033d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10b8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4280
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_shll__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x168__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
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
define %struct.Memory* @routine_movw__si__0x10ba__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4282
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10d8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4312
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10bc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4284
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10da__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4314
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10be__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4286
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10f8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4344
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10dc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4316
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10fa__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4346
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10de__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4318
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x111e__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4382
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x111c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4380
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x111a__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4378
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10fe__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4350
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x10fc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4348
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x1118__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4376
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x16c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x918__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2328
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x91a__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2330
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8f8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2296
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_addl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x91c__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2332
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8fa__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2298
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8d8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2264
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_addl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x91e__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2334
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8fc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2300
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8da__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2266
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8b8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2232
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movw__di__0x8fe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2302
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8dc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2268
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8ba__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2234
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movw__di__0x8de__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2270
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8bc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2236
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x8be__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2238
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xafa__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2810
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xab8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2744
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xafc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2812
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xaba__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2746
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xafe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2814
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xabc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2748
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xabe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2750
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xb1a__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2842
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xad8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2776
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xb1c__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2844
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xada__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2778
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xb1e__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2846
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xadc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2780
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xade__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2782
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xaf8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2808
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xb18__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 2840
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcdc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3292
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcb8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3256
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcde__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3294
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcba__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3258
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcbc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3260
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcbe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3262
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcfc__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3324
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcd8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3288
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcfe__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3326
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcda__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3290
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xd1c__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3356
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcf8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3320
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xd1e__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3358
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xcfa__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3322
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0xd18__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3352
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movw__di__0xd1a__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 3354
  %6 = load i16, i16* %DI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -369
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
