; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x496__rip__type = type <{ [8 x i8] }>
%G_0x849__rip__type = type <{ [8 x i8] }>
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
@G_0x496__rip_ = local_unnamed_addr global %G_0x496__rip__type zeroinitializer
@G_0x849__rip_ = local_unnamed_addr global %G_0x849__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @cftmdl(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP.i2249, align 8
  %12 = icmp ult i64 %8, 48
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
  %43 = add i64 %10, 10
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2242 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i2242, align 4
  %49 = load i64, i64* %PC.i, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RDX.i2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i2239, align 8
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %RCX.i2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX.i2236, align 8
  %61 = load i64, i64* %PC.i, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC.i, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %RSI.i2233 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -8
  %66 = load i64, i64* %PC.i, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC.i, align 8
  %68 = inttoptr i64 %65 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RSI.i2233, align 8
  %72 = lshr i32 %69, 30
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %14, align 1
  %75 = and i32 %70, 252
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %80 = icmp eq i32 %70, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %30, align 1
  %82 = lshr i32 %69, 29
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %85 = add i64 %64, -56
  %86 = add i64 %66, 9
  store i64 %86, i64* %PC.i, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 %70, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -28
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %RAX.i2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %94 = bitcast [32 x %union.VectorReg]* %93 to double*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %96 = bitcast i64* %95 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_403326

block_.L_403326:                                  ; preds = %block_403332, %entry
  %97 = phi i64 [ %1022, %block_403332 ], [ %.pre, %entry ]
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -28
  %100 = add i64 %97, 3
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RAX.i2224, align 8
  %104 = add i64 %98, -8
  %105 = add i64 %97, 6
  store i64 %105, i64* %PC.i, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %102, %107
  %109 = icmp ult i32 %102, %107
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %14, align 1
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %21, align 1
  %116 = xor i32 %107, %102
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
  %125 = lshr i32 %102, 31
  %126 = lshr i32 %107, 31
  %127 = xor i32 %126, %125
  %128 = xor i32 %123, %125
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %39, align 1
  %132 = icmp ne i8 %124, 0
  %133 = xor i1 %132, %130
  %.v = select i1 %133, i64 12, i64 599
  %134 = add i64 %97, %.v
  store i64 %134, i64* %3, align 8
  br i1 %133, label %block_403332, label %block_.L_40357d

block_403332:                                     ; preds = %block_.L_403326
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC.i, align 8
  %136 = load i32, i32* %101, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i2224, align 8
  %138 = add i64 %134, 6
  store i64 %138, i64* %PC.i, align 8
  %139 = load i32, i32* %106, align 4
  %140 = add i32 %139, %136
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX.i2224, align 8
  %142 = icmp ult i32 %140, %136
  %143 = icmp ult i32 %140, %139
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i32 %139, %136
  %152 = xor i32 %151, %140
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %27, align 1
  %156 = icmp eq i32 %140, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %30, align 1
  %158 = lshr i32 %140, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %33, align 1
  %160 = lshr i32 %136, 31
  %161 = lshr i32 %139, 31
  %162 = xor i32 %158, %160
  %163 = xor i32 %158, %161
  %164 = add nuw nsw i32 %162, %163
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %39, align 1
  %167 = add i64 %98, -32
  %168 = add i64 %134, 9
  store i64 %168, i64* %PC.i, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %140, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -32
  %172 = load i64, i64* %PC.i, align 8
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC.i, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX.i2224, align 8
  %177 = add i64 %170, -8
  %178 = add i64 %172, 6
  store i64 %178, i64* %PC.i, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, %175
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i2224, align 8
  %183 = icmp ult i32 %181, %175
  %184 = icmp ult i32 %181, %180
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %181, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %180, %175
  %193 = xor i32 %192, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i32 %181, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i32 %181, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i32 %175, 31
  %202 = lshr i32 %180, 31
  %203 = xor i32 %199, %201
  %204 = xor i32 %199, %202
  %205 = add nuw nsw i32 %203, %204
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = add i64 %170, -36
  %209 = add i64 %172, 9
  store i64 %209, i64* %PC.i, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %181, i32* %210, align 4
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -36
  %213 = load i64, i64* %PC.i, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i2224, align 8
  %218 = add i64 %211, -8
  %219 = add i64 %213, 6
  store i64 %219, i64* %PC.i, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %221, %216
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RAX.i2224, align 8
  %224 = icmp ult i32 %222, %216
  %225 = icmp ult i32 %222, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %14, align 1
  %228 = and i32 %222, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i32 %221, %216
  %234 = xor i32 %233, %222
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %27, align 1
  %238 = icmp eq i32 %222, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %30, align 1
  %240 = lshr i32 %222, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %33, align 1
  %242 = lshr i32 %216, 31
  %243 = lshr i32 %221, 31
  %244 = xor i32 %240, %242
  %245 = xor i32 %240, %243
  %246 = add nuw nsw i32 %244, %245
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %39, align 1
  %249 = add i64 %211, -40
  %250 = add i64 %213, 9
  store i64 %250, i64* %PC.i, align 8
  %251 = inttoptr i64 %249 to i32*
  store i32 %222, i32* %251, align 4
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -16
  %254 = load i64, i64* %PC.i, align 8
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC.i, align 8
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RCX.i2236, align 8
  %258 = add i64 %252, -28
  %259 = add i64 %254, 8
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RDX.i2239, align 8
  %263 = shl nsw i64 %262, 3
  %264 = add i64 %263, %257
  %265 = add i64 %254, 13
  store i64 %265, i64* %PC.i, align 8
  %266 = inttoptr i64 %264 to double*
  %267 = load double, double* %266, align 8
  store double %267, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %268 = add i64 %254, 17
  store i64 %268, i64* %PC.i, align 8
  %269 = load i64, i64* %256, align 8
  store i64 %269, i64* %RCX.i2236, align 8
  %270 = add i64 %252, -32
  %271 = add i64 %254, 21
  store i64 %271, i64* %PC.i, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RDX.i2239, align 8
  %275 = shl nsw i64 %274, 3
  %276 = add i64 %275, %269
  %277 = add i64 %254, 26
  store i64 %277, i64* %PC.i, align 8
  %278 = inttoptr i64 %276 to double*
  %279 = load double, double* %278, align 8
  %280 = fadd double %267, %279
  store double %280, double* %94, align 1
  store i64 0, i64* %95, align 1
  %281 = add i64 %252, -120
  %282 = add i64 %254, 31
  store i64 %282, i64* %PC.i, align 8
  %283 = inttoptr i64 %281 to double*
  store double %280, double* %283, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -16
  %286 = load i64, i64* %PC.i, align 8
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RCX.i2236, align 8
  %290 = add i64 %284, -28
  %291 = add i64 %286, 7
  store i64 %291, i64* %PC.i, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, 1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX.i2224, align 8
  %296 = icmp eq i32 %293, -1
  %297 = icmp eq i32 %294, 0
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %21, align 1
  %305 = xor i32 %293, %294
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %27, align 1
  %309 = icmp eq i32 %294, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %30, align 1
  %311 = lshr i32 %294, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %33, align 1
  %313 = lshr i32 %293, 31
  %314 = xor i32 %311, %313
  %315 = add nuw nsw i32 %314, %311
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %39, align 1
  %318 = sext i32 %294 to i64
  store i64 %318, i64* %RDX.i2239, align 8
  %319 = shl nsw i64 %318, 3
  %320 = add i64 %319, %289
  %321 = add i64 %286, 18
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %320 to double*
  %323 = load double, double* %322, align 8
  store double %323, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %324 = add i64 %286, 22
  store i64 %324, i64* %PC.i, align 8
  %325 = load i64, i64* %288, align 8
  store i64 %325, i64* %RCX.i2236, align 8
  %326 = add i64 %284, -32
  %327 = add i64 %286, 25
  store i64 %327, i64* %PC.i, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, 1
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i2224, align 8
  %332 = icmp eq i32 %329, -1
  %333 = icmp eq i32 %330, 0
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %329, %330
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %27, align 1
  %345 = icmp eq i32 %330, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %30, align 1
  %347 = lshr i32 %330, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %33, align 1
  %349 = lshr i32 %329, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %347
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %39, align 1
  %354 = sext i32 %330 to i64
  store i64 %354, i64* %RDX.i2239, align 8
  %355 = shl nsw i64 %354, 3
  %356 = add i64 %355, %325
  %357 = add i64 %286, 36
  store i64 %357, i64* %PC.i, align 8
  %358 = inttoptr i64 %356 to double*
  %359 = load double, double* %358, align 8
  %360 = fadd double %323, %359
  store double %360, double* %94, align 1
  store i64 0, i64* %95, align 1
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -128
  %363 = add i64 %286, 41
  store i64 %363, i64* %PC.i, align 8
  %364 = inttoptr i64 %362 to double*
  store double %360, double* %364, align 8
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -16
  %367 = load i64, i64* %PC.i, align 8
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC.i, align 8
  %369 = inttoptr i64 %366 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RCX.i2236, align 8
  %371 = add i64 %365, -28
  %372 = add i64 %367, 8
  store i64 %372, i64* %PC.i, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RDX.i2239, align 8
  %376 = shl nsw i64 %375, 3
  %377 = add i64 %376, %370
  %378 = add i64 %367, 13
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %377 to double*
  %380 = load double, double* %379, align 8
  store double %380, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %381 = add i64 %367, 17
  store i64 %381, i64* %PC.i, align 8
  %382 = load i64, i64* %369, align 8
  store i64 %382, i64* %RCX.i2236, align 8
  %383 = add i64 %365, -32
  %384 = add i64 %367, 21
  store i64 %384, i64* %PC.i, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RDX.i2239, align 8
  %388 = shl nsw i64 %387, 3
  %389 = add i64 %388, %382
  %390 = add i64 %367, 26
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %389 to double*
  %392 = load double, double* %391, align 8
  %393 = fsub double %380, %392
  store double %393, double* %94, align 1
  store i64 0, i64* %95, align 1
  %394 = add i64 %365, -136
  %395 = add i64 %367, 34
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %394 to double*
  store double %393, double* %396, align 8
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -16
  %399 = load i64, i64* %PC.i, align 8
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i, align 8
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RCX.i2236, align 8
  %403 = add i64 %397, -28
  %404 = add i64 %399, 7
  store i64 %404, i64* %PC.i, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, 1
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i2224, align 8
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
  %418 = xor i32 %406, %407
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %27, align 1
  %422 = icmp eq i32 %407, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %30, align 1
  %424 = lshr i32 %407, 31
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %33, align 1
  %426 = lshr i32 %406, 31
  %427 = xor i32 %424, %426
  %428 = add nuw nsw i32 %427, %424
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %39, align 1
  %431 = sext i32 %407 to i64
  store i64 %431, i64* %RDX.i2239, align 8
  %432 = shl nsw i64 %431, 3
  %433 = add i64 %432, %402
  %434 = add i64 %399, 18
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to double*
  %436 = load double, double* %435, align 8
  store double %436, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %437 = add i64 %399, 22
  store i64 %437, i64* %PC.i, align 8
  %438 = load i64, i64* %401, align 8
  store i64 %438, i64* %RCX.i2236, align 8
  %439 = add i64 %397, -32
  %440 = add i64 %399, 25
  store i64 %440, i64* %PC.i, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, 1
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX.i2224, align 8
  %445 = icmp eq i32 %442, -1
  %446 = icmp eq i32 %443, 0
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %14, align 1
  %449 = and i32 %443, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %21, align 1
  %454 = xor i32 %442, %443
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %27, align 1
  %458 = icmp eq i32 %443, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %30, align 1
  %460 = lshr i32 %443, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %33, align 1
  %462 = lshr i32 %442, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %460
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %39, align 1
  %467 = sext i32 %443 to i64
  store i64 %467, i64* %RDX.i2239, align 8
  %468 = shl nsw i64 %467, 3
  %469 = add i64 %468, %438
  %470 = add i64 %399, 36
  store i64 %470, i64* %PC.i, align 8
  %471 = inttoptr i64 %469 to double*
  %472 = load double, double* %471, align 8
  %473 = fsub double %436, %472
  store double %473, double* %94, align 1
  store i64 0, i64* %95, align 1
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -144
  %476 = add i64 %399, 44
  store i64 %476, i64* %PC.i, align 8
  %477 = inttoptr i64 %475 to double*
  store double %473, double* %477, align 8
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -16
  %480 = load i64, i64* %PC.i, align 8
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC.i, align 8
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RCX.i2236, align 8
  %484 = add i64 %478, -36
  %485 = add i64 %480, 8
  store i64 %485, i64* %PC.i, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  store i64 %488, i64* %RDX.i2239, align 8
  %489 = shl nsw i64 %488, 3
  %490 = add i64 %489, %483
  %491 = add i64 %480, 13
  store i64 %491, i64* %PC.i, align 8
  %492 = inttoptr i64 %490 to double*
  %493 = load double, double* %492, align 8
  store double %493, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %494 = add i64 %480, 17
  store i64 %494, i64* %PC.i, align 8
  %495 = load i64, i64* %482, align 8
  store i64 %495, i64* %RCX.i2236, align 8
  %496 = add i64 %478, -40
  %497 = add i64 %480, 21
  store i64 %497, i64* %PC.i, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  store i64 %500, i64* %RDX.i2239, align 8
  %501 = shl nsw i64 %500, 3
  %502 = add i64 %501, %495
  %503 = add i64 %480, 26
  store i64 %503, i64* %PC.i, align 8
  %504 = inttoptr i64 %502 to double*
  %505 = load double, double* %504, align 8
  %506 = fadd double %493, %505
  store double %506, double* %94, align 1
  store i64 0, i64* %95, align 1
  %507 = add i64 %478, -152
  %508 = add i64 %480, 34
  store i64 %508, i64* %PC.i, align 8
  %509 = inttoptr i64 %507 to double*
  store double %506, double* %509, align 8
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -16
  %512 = load i64, i64* %PC.i, align 8
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %RCX.i2236, align 8
  %516 = add i64 %510, -36
  %517 = add i64 %512, 7
  store i64 %517, i64* %PC.i, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = add i32 %519, 1
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX.i2224, align 8
  %522 = icmp eq i32 %519, -1
  %523 = icmp eq i32 %520, 0
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %14, align 1
  %526 = and i32 %520, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %21, align 1
  %531 = xor i32 %519, %520
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %27, align 1
  %535 = icmp eq i32 %520, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %30, align 1
  %537 = lshr i32 %520, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %33, align 1
  %539 = lshr i32 %519, 31
  %540 = xor i32 %537, %539
  %541 = add nuw nsw i32 %540, %537
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %39, align 1
  %544 = sext i32 %520 to i64
  store i64 %544, i64* %RDX.i2239, align 8
  %545 = shl nsw i64 %544, 3
  %546 = add i64 %545, %515
  %547 = add i64 %512, 18
  store i64 %547, i64* %PC.i, align 8
  %548 = inttoptr i64 %546 to double*
  %549 = load double, double* %548, align 8
  store double %549, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %550 = add i64 %512, 22
  store i64 %550, i64* %PC.i, align 8
  %551 = load i64, i64* %514, align 8
  store i64 %551, i64* %RCX.i2236, align 8
  %552 = add i64 %510, -40
  %553 = add i64 %512, 25
  store i64 %553, i64* %PC.i, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = add i32 %555, 1
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i2224, align 8
  %558 = icmp eq i32 %555, -1
  %559 = icmp eq i32 %556, 0
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = and i32 %556, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  %567 = xor i32 %555, %556
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %27, align 1
  %571 = icmp eq i32 %556, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %30, align 1
  %573 = lshr i32 %556, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %33, align 1
  %575 = lshr i32 %555, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %39, align 1
  %580 = sext i32 %556 to i64
  store i64 %580, i64* %RDX.i2239, align 8
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %581, %551
  %583 = add i64 %512, 36
  store i64 %583, i64* %PC.i, align 8
  %584 = inttoptr i64 %582 to double*
  %585 = load double, double* %584, align 8
  %586 = fadd double %549, %585
  store double %586, double* %94, align 1
  store i64 0, i64* %95, align 1
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -160
  %589 = add i64 %512, 44
  store i64 %589, i64* %PC.i, align 8
  %590 = inttoptr i64 %588 to double*
  store double %586, double* %590, align 8
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -16
  %593 = load i64, i64* %PC.i, align 8
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC.i, align 8
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RCX.i2236, align 8
  %597 = add i64 %591, -36
  %598 = add i64 %593, 8
  store i64 %598, i64* %PC.i, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RDX.i2239, align 8
  %602 = shl nsw i64 %601, 3
  %603 = add i64 %602, %596
  %604 = add i64 %593, 13
  store i64 %604, i64* %PC.i, align 8
  %605 = inttoptr i64 %603 to double*
  %606 = load double, double* %605, align 8
  store double %606, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %607 = add i64 %593, 17
  store i64 %607, i64* %PC.i, align 8
  %608 = load i64, i64* %595, align 8
  store i64 %608, i64* %RCX.i2236, align 8
  %609 = add i64 %591, -40
  %610 = add i64 %593, 21
  store i64 %610, i64* %PC.i, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = sext i32 %612 to i64
  store i64 %613, i64* %RDX.i2239, align 8
  %614 = shl nsw i64 %613, 3
  %615 = add i64 %614, %608
  %616 = add i64 %593, 26
  store i64 %616, i64* %PC.i, align 8
  %617 = inttoptr i64 %615 to double*
  %618 = load double, double* %617, align 8
  %619 = fsub double %606, %618
  store double %619, double* %94, align 1
  store i64 0, i64* %95, align 1
  %620 = add i64 %591, -168
  %621 = add i64 %593, 34
  store i64 %621, i64* %PC.i, align 8
  %622 = inttoptr i64 %620 to double*
  store double %619, double* %622, align 8
  %623 = load i64, i64* %RBP.i, align 8
  %624 = add i64 %623, -16
  %625 = load i64, i64* %PC.i, align 8
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC.i, align 8
  %627 = inttoptr i64 %624 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RCX.i2236, align 8
  %629 = add i64 %623, -36
  %630 = add i64 %625, 7
  store i64 %630, i64* %PC.i, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, 1
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX.i2224, align 8
  %635 = icmp eq i32 %632, -1
  %636 = icmp eq i32 %633, 0
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %633, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %632, %633
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %27, align 1
  %648 = icmp eq i32 %633, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %30, align 1
  %650 = lshr i32 %633, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %33, align 1
  %652 = lshr i32 %632, 31
  %653 = xor i32 %650, %652
  %654 = add nuw nsw i32 %653, %650
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %39, align 1
  %657 = sext i32 %633 to i64
  store i64 %657, i64* %RDX.i2239, align 8
  %658 = shl nsw i64 %657, 3
  %659 = add i64 %658, %628
  %660 = add i64 %625, 18
  store i64 %660, i64* %PC.i, align 8
  %661 = inttoptr i64 %659 to double*
  %662 = load double, double* %661, align 8
  store double %662, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %663 = add i64 %625, 22
  store i64 %663, i64* %PC.i, align 8
  %664 = load i64, i64* %627, align 8
  store i64 %664, i64* %RCX.i2236, align 8
  %665 = add i64 %623, -40
  %666 = add i64 %625, 25
  store i64 %666, i64* %PC.i, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, 1
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX.i2224, align 8
  %671 = icmp eq i32 %668, -1
  %672 = icmp eq i32 %669, 0
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %669, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %668, %669
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %27, align 1
  %684 = icmp eq i32 %669, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %30, align 1
  %686 = lshr i32 %669, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %33, align 1
  %688 = lshr i32 %668, 31
  %689 = xor i32 %686, %688
  %690 = add nuw nsw i32 %689, %686
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %39, align 1
  %693 = sext i32 %669 to i64
  store i64 %693, i64* %RDX.i2239, align 8
  %694 = shl nsw i64 %693, 3
  %695 = add i64 %694, %664
  %696 = add i64 %625, 36
  store i64 %696, i64* %PC.i, align 8
  %697 = inttoptr i64 %695 to double*
  %698 = load double, double* %697, align 8
  %699 = fsub double %662, %698
  store double %699, double* %94, align 1
  store i64 0, i64* %95, align 1
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -176
  %702 = add i64 %625, 44
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %701 to double*
  store double %699, double* %703, align 8
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -120
  %706 = load i64, i64* %PC.i, align 8
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i, align 8
  %708 = inttoptr i64 %705 to double*
  %709 = load double, double* %708, align 8
  store double %709, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %710 = add i64 %704, -152
  %711 = add i64 %706, 13
  store i64 %711, i64* %PC.i, align 8
  %712 = inttoptr i64 %710 to double*
  %713 = load double, double* %712, align 8
  %714 = fadd double %709, %713
  store double %714, double* %94, align 1
  store i64 0, i64* %95, align 1
  %715 = add i64 %704, -16
  %716 = add i64 %706, 17
  store i64 %716, i64* %PC.i, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RCX.i2236, align 8
  %719 = add i64 %704, -28
  %720 = add i64 %706, 21
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = sext i32 %722 to i64
  store i64 %723, i64* %RDX.i2239, align 8
  %724 = shl nsw i64 %723, 3
  %725 = add i64 %724, %718
  %726 = add i64 %706, 26
  store i64 %726, i64* %PC.i, align 8
  %727 = inttoptr i64 %725 to double*
  store double %714, double* %727, align 8
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -128
  %730 = load i64, i64* %PC.i, align 8
  %731 = add i64 %730, 5
  store i64 %731, i64* %PC.i, align 8
  %732 = inttoptr i64 %729 to double*
  %733 = load double, double* %732, align 8
  store double %733, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %734 = add i64 %728, -160
  %735 = add i64 %730, 13
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %734 to double*
  %737 = load double, double* %736, align 8
  %738 = fadd double %733, %737
  store double %738, double* %94, align 1
  store i64 0, i64* %95, align 1
  %739 = add i64 %728, -16
  %740 = add i64 %730, 17
  store i64 %740, i64* %PC.i, align 8
  %741 = inttoptr i64 %739 to i64*
  %742 = load i64, i64* %741, align 8
  store i64 %742, i64* %RCX.i2236, align 8
  %743 = add i64 %728, -28
  %744 = add i64 %730, 20
  store i64 %744, i64* %PC.i, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = add i32 %746, 1
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RAX.i2224, align 8
  %749 = icmp eq i32 %746, -1
  %750 = icmp eq i32 %747, 0
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %14, align 1
  %753 = and i32 %747, 255
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %21, align 1
  %758 = xor i32 %746, %747
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  store i8 %761, i8* %27, align 1
  %762 = icmp eq i32 %747, 0
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %30, align 1
  %764 = lshr i32 %747, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %33, align 1
  %766 = lshr i32 %746, 31
  %767 = xor i32 %764, %766
  %768 = add nuw nsw i32 %767, %764
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %39, align 1
  %771 = sext i32 %747 to i64
  store i64 %771, i64* %RDX.i2239, align 8
  %772 = shl nsw i64 %771, 3
  %773 = add i64 %772, %742
  %774 = add i64 %730, 31
  store i64 %774, i64* %PC.i, align 8
  %775 = inttoptr i64 %773 to double*
  store double %738, double* %775, align 8
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -120
  %778 = load i64, i64* %PC.i, align 8
  %779 = add i64 %778, 5
  store i64 %779, i64* %PC.i, align 8
  %780 = inttoptr i64 %777 to double*
  %781 = load double, double* %780, align 8
  store double %781, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %782 = add i64 %776, -152
  %783 = add i64 %778, 13
  store i64 %783, i64* %PC.i, align 8
  %784 = inttoptr i64 %782 to double*
  %785 = load double, double* %784, align 8
  %786 = fsub double %781, %785
  store double %786, double* %94, align 1
  store i64 0, i64* %95, align 1
  %787 = add i64 %776, -16
  %788 = add i64 %778, 17
  store i64 %788, i64* %PC.i, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RCX.i2236, align 8
  %791 = add i64 %776, -36
  %792 = add i64 %778, 21
  store i64 %792, i64* %PC.i, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RDX.i2239, align 8
  %796 = shl nsw i64 %795, 3
  %797 = add i64 %796, %790
  %798 = add i64 %778, 26
  store i64 %798, i64* %PC.i, align 8
  %799 = inttoptr i64 %797 to double*
  store double %786, double* %799, align 8
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -128
  %802 = load i64, i64* %PC.i, align 8
  %803 = add i64 %802, 5
  store i64 %803, i64* %PC.i, align 8
  %804 = inttoptr i64 %801 to double*
  %805 = load double, double* %804, align 8
  store double %805, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %806 = add i64 %800, -160
  %807 = add i64 %802, 13
  store i64 %807, i64* %PC.i, align 8
  %808 = inttoptr i64 %806 to double*
  %809 = load double, double* %808, align 8
  %810 = fsub double %805, %809
  store double %810, double* %94, align 1
  store i64 0, i64* %95, align 1
  %811 = add i64 %800, -16
  %812 = add i64 %802, 17
  store i64 %812, i64* %PC.i, align 8
  %813 = inttoptr i64 %811 to i64*
  %814 = load i64, i64* %813, align 8
  store i64 %814, i64* %RCX.i2236, align 8
  %815 = add i64 %800, -36
  %816 = add i64 %802, 20
  store i64 %816, i64* %PC.i, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = add i32 %818, 1
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX.i2224, align 8
  %821 = icmp eq i32 %818, -1
  %822 = icmp eq i32 %819, 0
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %14, align 1
  %825 = and i32 %819, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %21, align 1
  %830 = xor i32 %818, %819
  %831 = lshr i32 %830, 4
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  store i8 %833, i8* %27, align 1
  %834 = icmp eq i32 %819, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %30, align 1
  %836 = lshr i32 %819, 31
  %837 = trunc i32 %836 to i8
  store i8 %837, i8* %33, align 1
  %838 = lshr i32 %818, 31
  %839 = xor i32 %836, %838
  %840 = add nuw nsw i32 %839, %836
  %841 = icmp eq i32 %840, 2
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %39, align 1
  %843 = sext i32 %819 to i64
  store i64 %843, i64* %RDX.i2239, align 8
  %844 = shl nsw i64 %843, 3
  %845 = add i64 %844, %814
  %846 = add i64 %802, 31
  store i64 %846, i64* %PC.i, align 8
  %847 = inttoptr i64 %845 to double*
  store double %810, double* %847, align 8
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -136
  %850 = load i64, i64* %PC.i, align 8
  %851 = add i64 %850, 8
  store i64 %851, i64* %PC.i, align 8
  %852 = inttoptr i64 %849 to double*
  %853 = load double, double* %852, align 8
  store double %853, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %854 = add i64 %848, -176
  %855 = add i64 %850, 16
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to double*
  %857 = load double, double* %856, align 8
  %858 = fsub double %853, %857
  store double %858, double* %94, align 1
  store i64 0, i64* %95, align 1
  %859 = add i64 %848, -16
  %860 = add i64 %850, 20
  store i64 %860, i64* %PC.i, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RCX.i2236, align 8
  %863 = add i64 %848, -32
  %864 = add i64 %850, 24
  store i64 %864, i64* %PC.i, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RDX.i2239, align 8
  %868 = shl nsw i64 %867, 3
  %869 = add i64 %868, %862
  %870 = add i64 %850, 29
  store i64 %870, i64* %PC.i, align 8
  %871 = inttoptr i64 %869 to double*
  store double %858, double* %871, align 8
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -144
  %874 = load i64, i64* %PC.i, align 8
  %875 = add i64 %874, 8
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %873 to double*
  %877 = load double, double* %876, align 8
  store double %877, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %878 = add i64 %872, -168
  %879 = add i64 %874, 16
  store i64 %879, i64* %PC.i, align 8
  %880 = inttoptr i64 %878 to double*
  %881 = load double, double* %880, align 8
  %882 = fadd double %877, %881
  store double %882, double* %94, align 1
  store i64 0, i64* %95, align 1
  %883 = add i64 %872, -16
  %884 = add i64 %874, 20
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RCX.i2236, align 8
  %887 = add i64 %872, -32
  %888 = add i64 %874, 23
  store i64 %888, i64* %PC.i, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, 1
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i2224, align 8
  %893 = icmp eq i32 %890, -1
  %894 = icmp eq i32 %891, 0
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %14, align 1
  %897 = and i32 %891, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  %902 = xor i32 %890, %891
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %27, align 1
  %906 = icmp eq i32 %891, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %30, align 1
  %908 = lshr i32 %891, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %33, align 1
  %910 = lshr i32 %890, 31
  %911 = xor i32 %908, %910
  %912 = add nuw nsw i32 %911, %908
  %913 = icmp eq i32 %912, 2
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %39, align 1
  %915 = sext i32 %891 to i64
  store i64 %915, i64* %RDX.i2239, align 8
  %916 = shl nsw i64 %915, 3
  %917 = add i64 %916, %886
  %918 = add i64 %874, 34
  store i64 %918, i64* %PC.i, align 8
  %919 = inttoptr i64 %917 to double*
  store double %882, double* %919, align 8
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -136
  %922 = load i64, i64* %PC.i, align 8
  %923 = add i64 %922, 8
  store i64 %923, i64* %PC.i, align 8
  %924 = inttoptr i64 %921 to double*
  %925 = load double, double* %924, align 8
  store double %925, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %926 = add i64 %920, -176
  %927 = add i64 %922, 16
  store i64 %927, i64* %PC.i, align 8
  %928 = inttoptr i64 %926 to double*
  %929 = load double, double* %928, align 8
  %930 = fadd double %925, %929
  store double %930, double* %94, align 1
  store i64 0, i64* %95, align 1
  %931 = add i64 %920, -16
  %932 = add i64 %922, 20
  store i64 %932, i64* %PC.i, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RCX.i2236, align 8
  %935 = add i64 %920, -40
  %936 = add i64 %922, 24
  store i64 %936, i64* %PC.i, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  store i64 %939, i64* %RDX.i2239, align 8
  %940 = shl nsw i64 %939, 3
  %941 = add i64 %940, %934
  %942 = add i64 %922, 29
  store i64 %942, i64* %PC.i, align 8
  %943 = inttoptr i64 %941 to double*
  store double %930, double* %943, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -144
  %946 = load i64, i64* %PC.i, align 8
  %947 = add i64 %946, 8
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %945 to double*
  %949 = load double, double* %948, align 8
  store double %949, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %950 = add i64 %944, -168
  %951 = add i64 %946, 16
  store i64 %951, i64* %PC.i, align 8
  %952 = inttoptr i64 %950 to double*
  %953 = load double, double* %952, align 8
  %954 = fsub double %949, %953
  store double %954, double* %94, align 1
  store i64 0, i64* %95, align 1
  %955 = add i64 %944, -16
  %956 = add i64 %946, 20
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RCX.i2236, align 8
  %959 = add i64 %944, -40
  %960 = add i64 %946, 23
  store i64 %960, i64* %PC.i, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = add i32 %962, 1
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i2224, align 8
  %965 = icmp eq i32 %962, -1
  %966 = icmp eq i32 %963, 0
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %14, align 1
  %969 = and i32 %963, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %21, align 1
  %974 = xor i32 %962, %963
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %27, align 1
  %978 = icmp eq i32 %963, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %30, align 1
  %980 = lshr i32 %963, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %33, align 1
  %982 = lshr i32 %962, 31
  %983 = xor i32 %980, %982
  %984 = add nuw nsw i32 %983, %980
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %39, align 1
  %987 = sext i32 %963 to i64
  store i64 %987, i64* %RDX.i2239, align 8
  %988 = shl nsw i64 %987, 3
  %989 = add i64 %988, %958
  %990 = add i64 %946, 34
  store i64 %990, i64* %PC.i, align 8
  %991 = inttoptr i64 %989 to double*
  store double %954, double* %991, align 8
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -28
  %994 = load i64, i64* %PC.i, align 8
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i, align 8
  %996 = inttoptr i64 %993 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 2
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX.i2224, align 8
  %1000 = icmp ugt i32 %997, -3
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = and i32 %998, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i32 %997, %998
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %27, align 1
  %1011 = icmp eq i32 %998, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %30, align 1
  %1013 = lshr i32 %998, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %33, align 1
  %1015 = lshr i32 %997, 31
  %1016 = xor i32 %1013, %1015
  %1017 = add nuw nsw i32 %1016, %1013
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %39, align 1
  %1020 = add i64 %994, 9
  store i64 %1020, i64* %PC.i, align 8
  store i32 %998, i32* %996, align 4
  %1021 = load i64, i64* %PC.i, align 8
  %1022 = add i64 %1021, -594
  store i64 %1022, i64* %3, align 8
  br label %block_.L_403326

block_.L_40357d:                                  ; preds = %block_.L_403326
  %1023 = add i64 %98, -24
  %1024 = add i64 %134, 4
  store i64 %1024, i64* %PC.i, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %RAX.i2224, align 8
  %1027 = add i64 %1026, 16
  %1028 = add i64 %134, 9
  store i64 %1028, i64* %PC.i, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  %1031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %93, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1030, i64* %1031, align 1
  store double 0.000000e+00, double* %96, align 1
  %1032 = add i64 %98, -72
  %1033 = add i64 %134, 14
  store i64 %1033, i64* %PC.i, align 8
  %1034 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1034, align 8
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -56
  %1037 = load i64, i64* %PC.i, align 8
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC.i, align 8
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RCX.i2236, align 8
  %1042 = add i64 %1035, -28
  %1043 = add i64 %1037, 6
  store i64 %1043, i64* %PC.i, align 8
  %1044 = inttoptr i64 %1042 to i32*
  store i32 %1040, i32* %1044, align 4
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1046 = bitcast %union.VectorReg* %1045 to double*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1048 = bitcast i64* %1047 to double*
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_403591

block_.L_403591:                                  ; preds = %block_4035a2, %block_.L_40357d
  %1049 = phi i64 [ %2057, %block_4035a2 ], [ %.pre1, %block_.L_40357d ]
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -28
  %1052 = add i64 %1049, 3
  store i64 %1052, i64* %PC.i, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i2224, align 8
  %1056 = add i64 %1050, -8
  %1057 = add i64 %1049, 6
  store i64 %1057, i64* %PC.i, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RCX.i2236, align 8
  %1061 = add i64 %1050, -56
  %1062 = add i64 %1049, 9
  store i64 %1062, i64* %PC.i, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, %1059
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i2236, align 8
  %1067 = lshr i32 %1065, 31
  %1068 = sub i32 %1054, %1065
  %1069 = icmp ult i32 %1054, %1065
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i32 %1065, %1054
  %1077 = xor i32 %1076, %1068
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %27, align 1
  %1081 = icmp eq i32 %1068, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %30, align 1
  %1083 = lshr i32 %1068, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %33, align 1
  %1085 = lshr i32 %1054, 31
  %1086 = xor i32 %1067, %1085
  %1087 = xor i32 %1083, %1085
  %1088 = add nuw nsw i32 %1087, %1086
  %1089 = icmp eq i32 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %39, align 1
  %1091 = icmp ne i8 %1084, 0
  %1092 = xor i1 %1091, %1089
  %.v5 = select i1 %1092, i64 17, i64 700
  %1093 = add i64 %1049, %.v5
  store i64 %1093, i64* %3, align 8
  br i1 %1092, label %block_4035a2, label %block_.L_40384d

block_4035a2:                                     ; preds = %block_.L_403591
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i, align 8
  %1095 = load i32, i32* %1053, align 4
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i2224, align 8
  %1097 = add i64 %1093, 6
  store i64 %1097, i64* %PC.i, align 8
  %1098 = load i32, i32* %1058, align 4
  %1099 = add i32 %1098, %1095
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i2224, align 8
  %1101 = icmp ult i32 %1099, %1095
  %1102 = icmp ult i32 %1099, %1098
  %1103 = or i1 %1101, %1102
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %14, align 1
  %1105 = and i32 %1099, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %21, align 1
  %1110 = xor i32 %1098, %1095
  %1111 = xor i32 %1110, %1099
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %27, align 1
  %1115 = icmp eq i32 %1099, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %30, align 1
  %1117 = lshr i32 %1099, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %33, align 1
  %1119 = lshr i32 %1095, 31
  %1120 = lshr i32 %1098, 31
  %1121 = xor i32 %1117, %1119
  %1122 = xor i32 %1117, %1120
  %1123 = add nuw nsw i32 %1121, %1122
  %1124 = icmp eq i32 %1123, 2
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %39, align 1
  %1126 = add i64 %1050, -32
  %1127 = add i64 %1093, 9
  store i64 %1127, i64* %PC.i, align 8
  %1128 = inttoptr i64 %1126 to i32*
  store i32 %1099, i32* %1128, align 4
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -32
  %1131 = load i64, i64* %PC.i, align 8
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i, align 8
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RAX.i2224, align 8
  %1136 = add i64 %1129, -8
  %1137 = add i64 %1131, 6
  store i64 %1137, i64* %PC.i, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = add i32 %1139, %1134
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i2224, align 8
  %1142 = icmp ult i32 %1140, %1134
  %1143 = icmp ult i32 %1140, %1139
  %1144 = or i1 %1142, %1143
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1140, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1139, %1134
  %1152 = xor i32 %1151, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %27, align 1
  %1156 = icmp eq i32 %1140, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %30, align 1
  %1158 = lshr i32 %1140, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %33, align 1
  %1160 = lshr i32 %1134, 31
  %1161 = lshr i32 %1139, 31
  %1162 = xor i32 %1158, %1160
  %1163 = xor i32 %1158, %1161
  %1164 = add nuw nsw i32 %1162, %1163
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %1167 = add i64 %1129, -36
  %1168 = add i64 %1131, 9
  store i64 %1168, i64* %PC.i, align 8
  %1169 = inttoptr i64 %1167 to i32*
  store i32 %1140, i32* %1169, align 4
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -36
  %1172 = load i64, i64* %PC.i, align 8
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC.i, align 8
  %1174 = inttoptr i64 %1171 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX.i2224, align 8
  %1177 = add i64 %1170, -8
  %1178 = add i64 %1172, 6
  store i64 %1178, i64* %PC.i, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = add i32 %1180, %1175
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RAX.i2224, align 8
  %1183 = icmp ult i32 %1181, %1175
  %1184 = icmp ult i32 %1181, %1180
  %1185 = or i1 %1183, %1184
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %14, align 1
  %1187 = and i32 %1181, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %21, align 1
  %1192 = xor i32 %1180, %1175
  %1193 = xor i32 %1192, %1181
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  store i8 %1196, i8* %27, align 1
  %1197 = icmp eq i32 %1181, 0
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %30, align 1
  %1199 = lshr i32 %1181, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %33, align 1
  %1201 = lshr i32 %1175, 31
  %1202 = lshr i32 %1180, 31
  %1203 = xor i32 %1199, %1201
  %1204 = xor i32 %1199, %1202
  %1205 = add nuw nsw i32 %1203, %1204
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %39, align 1
  %1208 = add i64 %1170, -40
  %1209 = add i64 %1172, 9
  store i64 %1209, i64* %PC.i, align 8
  %1210 = inttoptr i64 %1208 to i32*
  store i32 %1181, i32* %1210, align 4
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -16
  %1213 = load i64, i64* %PC.i, align 8
  %1214 = add i64 %1213, 4
  store i64 %1214, i64* %PC.i, align 8
  %1215 = inttoptr i64 %1212 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RCX.i2236, align 8
  %1217 = add i64 %1211, -28
  %1218 = add i64 %1213, 8
  store i64 %1218, i64* %PC.i, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  store i64 %1221, i64* %RDX.i2239, align 8
  %1222 = shl nsw i64 %1221, 3
  %1223 = add i64 %1222, %1216
  %1224 = add i64 %1213, 13
  store i64 %1224, i64* %PC.i, align 8
  %1225 = inttoptr i64 %1223 to double*
  %1226 = load double, double* %1225, align 8
  store double %1226, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1227 = add i64 %1213, 17
  store i64 %1227, i64* %PC.i, align 8
  %1228 = load i64, i64* %1215, align 8
  store i64 %1228, i64* %RCX.i2236, align 8
  %1229 = add i64 %1211, -32
  %1230 = add i64 %1213, 21
  store i64 %1230, i64* %PC.i, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1232 to i64
  store i64 %1233, i64* %RDX.i2239, align 8
  %1234 = shl nsw i64 %1233, 3
  %1235 = add i64 %1234, %1228
  %1236 = add i64 %1213, 26
  store i64 %1236, i64* %PC.i, align 8
  %1237 = inttoptr i64 %1235 to double*
  %1238 = load double, double* %1237, align 8
  %1239 = fadd double %1226, %1238
  store double %1239, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1240 = add i64 %1211, -120
  %1241 = add i64 %1213, 31
  store i64 %1241, i64* %PC.i, align 8
  %1242 = inttoptr i64 %1240 to double*
  store double %1239, double* %1242, align 8
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -16
  %1245 = load i64, i64* %PC.i, align 8
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i, align 8
  %1247 = inttoptr i64 %1244 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RCX.i2236, align 8
  %1249 = add i64 %1243, -28
  %1250 = add i64 %1245, 7
  store i64 %1250, i64* %PC.i, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, 1
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RAX.i2224, align 8
  %1255 = icmp eq i32 %1252, -1
  %1256 = icmp eq i32 %1253, 0
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = and i32 %1253, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i32 %1252, %1253
  %1265 = lshr i32 %1264, 4
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %27, align 1
  %1268 = icmp eq i32 %1253, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i32 %1253, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i32 %1252, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = sext i32 %1253 to i64
  store i64 %1277, i64* %RDX.i2239, align 8
  %1278 = shl nsw i64 %1277, 3
  %1279 = add i64 %1278, %1248
  %1280 = add i64 %1245, 18
  store i64 %1280, i64* %PC.i, align 8
  %1281 = inttoptr i64 %1279 to double*
  %1282 = load double, double* %1281, align 8
  store double %1282, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1283 = add i64 %1245, 22
  store i64 %1283, i64* %PC.i, align 8
  %1284 = load i64, i64* %1247, align 8
  store i64 %1284, i64* %RCX.i2236, align 8
  %1285 = add i64 %1243, -32
  %1286 = add i64 %1245, 25
  store i64 %1286, i64* %PC.i, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = add i32 %1288, 1
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RAX.i2224, align 8
  %1291 = icmp eq i32 %1288, -1
  %1292 = icmp eq i32 %1289, 0
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %14, align 1
  %1295 = and i32 %1289, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %21, align 1
  %1300 = xor i32 %1288, %1289
  %1301 = lshr i32 %1300, 4
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %27, align 1
  %1304 = icmp eq i32 %1289, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %30, align 1
  %1306 = lshr i32 %1289, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %33, align 1
  %1308 = lshr i32 %1288, 31
  %1309 = xor i32 %1306, %1308
  %1310 = add nuw nsw i32 %1309, %1306
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %39, align 1
  %1313 = sext i32 %1289 to i64
  store i64 %1313, i64* %RDX.i2239, align 8
  %1314 = shl nsw i64 %1313, 3
  %1315 = add i64 %1314, %1284
  %1316 = add i64 %1245, 36
  store i64 %1316, i64* %PC.i, align 8
  %1317 = inttoptr i64 %1315 to double*
  %1318 = load double, double* %1317, align 8
  %1319 = fadd double %1282, %1318
  store double %1319, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1320 = load i64, i64* %RBP.i, align 8
  %1321 = add i64 %1320, -128
  %1322 = add i64 %1245, 41
  store i64 %1322, i64* %PC.i, align 8
  %1323 = inttoptr i64 %1321 to double*
  store double %1319, double* %1323, align 8
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -16
  %1326 = load i64, i64* %PC.i, align 8
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i, align 8
  %1328 = inttoptr i64 %1325 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RCX.i2236, align 8
  %1330 = add i64 %1324, -28
  %1331 = add i64 %1326, 8
  store i64 %1331, i64* %PC.i, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = sext i32 %1333 to i64
  store i64 %1334, i64* %RDX.i2239, align 8
  %1335 = shl nsw i64 %1334, 3
  %1336 = add i64 %1335, %1329
  %1337 = add i64 %1326, 13
  store i64 %1337, i64* %PC.i, align 8
  %1338 = inttoptr i64 %1336 to double*
  %1339 = load double, double* %1338, align 8
  store double %1339, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1340 = add i64 %1326, 17
  store i64 %1340, i64* %PC.i, align 8
  %1341 = load i64, i64* %1328, align 8
  store i64 %1341, i64* %RCX.i2236, align 8
  %1342 = add i64 %1324, -32
  %1343 = add i64 %1326, 21
  store i64 %1343, i64* %PC.i, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = sext i32 %1345 to i64
  store i64 %1346, i64* %RDX.i2239, align 8
  %1347 = shl nsw i64 %1346, 3
  %1348 = add i64 %1347, %1341
  %1349 = add i64 %1326, 26
  store i64 %1349, i64* %PC.i, align 8
  %1350 = inttoptr i64 %1348 to double*
  %1351 = load double, double* %1350, align 8
  %1352 = fsub double %1339, %1351
  store double %1352, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1353 = add i64 %1324, -136
  %1354 = add i64 %1326, 34
  store i64 %1354, i64* %PC.i, align 8
  %1355 = inttoptr i64 %1353 to double*
  store double %1352, double* %1355, align 8
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -16
  %1358 = load i64, i64* %PC.i, align 8
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC.i, align 8
  %1360 = inttoptr i64 %1357 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RCX.i2236, align 8
  %1362 = add i64 %1356, -28
  %1363 = add i64 %1358, 7
  store i64 %1363, i64* %PC.i, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = add i32 %1365, 1
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX.i2224, align 8
  %1368 = icmp eq i32 %1365, -1
  %1369 = icmp eq i32 %1366, 0
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %14, align 1
  %1372 = and i32 %1366, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  %1377 = xor i32 %1365, %1366
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %27, align 1
  %1381 = icmp eq i32 %1366, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %30, align 1
  %1383 = lshr i32 %1366, 31
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, i8* %33, align 1
  %1385 = lshr i32 %1365, 31
  %1386 = xor i32 %1383, %1385
  %1387 = add nuw nsw i32 %1386, %1383
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %39, align 1
  %1390 = sext i32 %1366 to i64
  store i64 %1390, i64* %RDX.i2239, align 8
  %1391 = shl nsw i64 %1390, 3
  %1392 = add i64 %1391, %1361
  %1393 = add i64 %1358, 18
  store i64 %1393, i64* %PC.i, align 8
  %1394 = inttoptr i64 %1392 to double*
  %1395 = load double, double* %1394, align 8
  store double %1395, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1396 = add i64 %1358, 22
  store i64 %1396, i64* %PC.i, align 8
  %1397 = load i64, i64* %1360, align 8
  store i64 %1397, i64* %RCX.i2236, align 8
  %1398 = add i64 %1356, -32
  %1399 = add i64 %1358, 25
  store i64 %1399, i64* %PC.i, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, 1
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i2224, align 8
  %1404 = icmp eq i32 %1401, -1
  %1405 = icmp eq i32 %1402, 0
  %1406 = or i1 %1404, %1405
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %14, align 1
  %1408 = and i32 %1402, 255
  %1409 = tail call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  store i8 %1412, i8* %21, align 1
  %1413 = xor i32 %1401, %1402
  %1414 = lshr i32 %1413, 4
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  store i8 %1416, i8* %27, align 1
  %1417 = icmp eq i32 %1402, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %30, align 1
  %1419 = lshr i32 %1402, 31
  %1420 = trunc i32 %1419 to i8
  store i8 %1420, i8* %33, align 1
  %1421 = lshr i32 %1401, 31
  %1422 = xor i32 %1419, %1421
  %1423 = add nuw nsw i32 %1422, %1419
  %1424 = icmp eq i32 %1423, 2
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %39, align 1
  %1426 = sext i32 %1402 to i64
  store i64 %1426, i64* %RDX.i2239, align 8
  %1427 = shl nsw i64 %1426, 3
  %1428 = add i64 %1427, %1397
  %1429 = add i64 %1358, 36
  store i64 %1429, i64* %PC.i, align 8
  %1430 = inttoptr i64 %1428 to double*
  %1431 = load double, double* %1430, align 8
  %1432 = fsub double %1395, %1431
  store double %1432, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -144
  %1435 = add i64 %1358, 44
  store i64 %1435, i64* %PC.i, align 8
  %1436 = inttoptr i64 %1434 to double*
  store double %1432, double* %1436, align 8
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -16
  %1439 = load i64, i64* %PC.i, align 8
  %1440 = add i64 %1439, 4
  store i64 %1440, i64* %PC.i, align 8
  %1441 = inttoptr i64 %1438 to i64*
  %1442 = load i64, i64* %1441, align 8
  store i64 %1442, i64* %RCX.i2236, align 8
  %1443 = add i64 %1437, -36
  %1444 = add i64 %1439, 8
  store i64 %1444, i64* %PC.i, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = sext i32 %1446 to i64
  store i64 %1447, i64* %RDX.i2239, align 8
  %1448 = shl nsw i64 %1447, 3
  %1449 = add i64 %1448, %1442
  %1450 = add i64 %1439, 13
  store i64 %1450, i64* %PC.i, align 8
  %1451 = inttoptr i64 %1449 to double*
  %1452 = load double, double* %1451, align 8
  store double %1452, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1453 = add i64 %1439, 17
  store i64 %1453, i64* %PC.i, align 8
  %1454 = load i64, i64* %1441, align 8
  store i64 %1454, i64* %RCX.i2236, align 8
  %1455 = add i64 %1437, -40
  %1456 = add i64 %1439, 21
  store i64 %1456, i64* %PC.i, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RDX.i2239, align 8
  %1460 = shl nsw i64 %1459, 3
  %1461 = add i64 %1460, %1454
  %1462 = add i64 %1439, 26
  store i64 %1462, i64* %PC.i, align 8
  %1463 = inttoptr i64 %1461 to double*
  %1464 = load double, double* %1463, align 8
  %1465 = fadd double %1452, %1464
  store double %1465, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1466 = add i64 %1437, -152
  %1467 = add i64 %1439, 34
  store i64 %1467, i64* %PC.i, align 8
  %1468 = inttoptr i64 %1466 to double*
  store double %1465, double* %1468, align 8
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -16
  %1471 = load i64, i64* %PC.i, align 8
  %1472 = add i64 %1471, 4
  store i64 %1472, i64* %PC.i, align 8
  %1473 = inttoptr i64 %1470 to i64*
  %1474 = load i64, i64* %1473, align 8
  store i64 %1474, i64* %RCX.i2236, align 8
  %1475 = add i64 %1469, -36
  %1476 = add i64 %1471, 7
  store i64 %1476, i64* %PC.i, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = add i32 %1478, 1
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RAX.i2224, align 8
  %1481 = icmp eq i32 %1478, -1
  %1482 = icmp eq i32 %1479, 0
  %1483 = or i1 %1481, %1482
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %14, align 1
  %1485 = and i32 %1479, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i32 %1478, %1479
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %27, align 1
  %1494 = icmp eq i32 %1479, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %30, align 1
  %1496 = lshr i32 %1479, 31
  %1497 = trunc i32 %1496 to i8
  store i8 %1497, i8* %33, align 1
  %1498 = lshr i32 %1478, 31
  %1499 = xor i32 %1496, %1498
  %1500 = add nuw nsw i32 %1499, %1496
  %1501 = icmp eq i32 %1500, 2
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %39, align 1
  %1503 = sext i32 %1479 to i64
  store i64 %1503, i64* %RDX.i2239, align 8
  %1504 = shl nsw i64 %1503, 3
  %1505 = add i64 %1504, %1474
  %1506 = add i64 %1471, 18
  store i64 %1506, i64* %PC.i, align 8
  %1507 = inttoptr i64 %1505 to double*
  %1508 = load double, double* %1507, align 8
  store double %1508, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1509 = add i64 %1471, 22
  store i64 %1509, i64* %PC.i, align 8
  %1510 = load i64, i64* %1473, align 8
  store i64 %1510, i64* %RCX.i2236, align 8
  %1511 = add i64 %1469, -40
  %1512 = add i64 %1471, 25
  store i64 %1512, i64* %PC.i, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = add i32 %1514, 1
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RAX.i2224, align 8
  %1517 = icmp eq i32 %1514, -1
  %1518 = icmp eq i32 %1515, 0
  %1519 = or i1 %1517, %1518
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %14, align 1
  %1521 = and i32 %1515, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i32 %1514, %1515
  %1527 = lshr i32 %1526, 4
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  store i8 %1529, i8* %27, align 1
  %1530 = icmp eq i32 %1515, 0
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %30, align 1
  %1532 = lshr i32 %1515, 31
  %1533 = trunc i32 %1532 to i8
  store i8 %1533, i8* %33, align 1
  %1534 = lshr i32 %1514, 31
  %1535 = xor i32 %1532, %1534
  %1536 = add nuw nsw i32 %1535, %1532
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %39, align 1
  %1539 = sext i32 %1515 to i64
  store i64 %1539, i64* %RDX.i2239, align 8
  %1540 = shl nsw i64 %1539, 3
  %1541 = add i64 %1540, %1510
  %1542 = add i64 %1471, 36
  store i64 %1542, i64* %PC.i, align 8
  %1543 = inttoptr i64 %1541 to double*
  %1544 = load double, double* %1543, align 8
  %1545 = fadd double %1508, %1544
  store double %1545, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -160
  %1548 = add i64 %1471, 44
  store i64 %1548, i64* %PC.i, align 8
  %1549 = inttoptr i64 %1547 to double*
  store double %1545, double* %1549, align 8
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -16
  %1552 = load i64, i64* %PC.i, align 8
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC.i, align 8
  %1554 = inttoptr i64 %1551 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i64 %1555, i64* %RCX.i2236, align 8
  %1556 = add i64 %1550, -36
  %1557 = add i64 %1552, 8
  store i64 %1557, i64* %PC.i, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RDX.i2239, align 8
  %1561 = shl nsw i64 %1560, 3
  %1562 = add i64 %1561, %1555
  %1563 = add i64 %1552, 13
  store i64 %1563, i64* %PC.i, align 8
  %1564 = inttoptr i64 %1562 to double*
  %1565 = load double, double* %1564, align 8
  store double %1565, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1566 = add i64 %1552, 17
  store i64 %1566, i64* %PC.i, align 8
  %1567 = load i64, i64* %1554, align 8
  store i64 %1567, i64* %RCX.i2236, align 8
  %1568 = add i64 %1550, -40
  %1569 = add i64 %1552, 21
  store i64 %1569, i64* %PC.i, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sext i32 %1571 to i64
  store i64 %1572, i64* %RDX.i2239, align 8
  %1573 = shl nsw i64 %1572, 3
  %1574 = add i64 %1573, %1567
  %1575 = add i64 %1552, 26
  store i64 %1575, i64* %PC.i, align 8
  %1576 = inttoptr i64 %1574 to double*
  %1577 = load double, double* %1576, align 8
  %1578 = fsub double %1565, %1577
  store double %1578, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1579 = add i64 %1550, -168
  %1580 = add i64 %1552, 34
  store i64 %1580, i64* %PC.i, align 8
  %1581 = inttoptr i64 %1579 to double*
  store double %1578, double* %1581, align 8
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -16
  %1584 = load i64, i64* %PC.i, align 8
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %PC.i, align 8
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RCX.i2236, align 8
  %1588 = add i64 %1582, -36
  %1589 = add i64 %1584, 7
  store i64 %1589, i64* %PC.i, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = add i32 %1591, 1
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RAX.i2224, align 8
  %1594 = icmp eq i32 %1591, -1
  %1595 = icmp eq i32 %1592, 0
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %14, align 1
  %1598 = and i32 %1592, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %21, align 1
  %1603 = xor i32 %1591, %1592
  %1604 = lshr i32 %1603, 4
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  store i8 %1606, i8* %27, align 1
  %1607 = icmp eq i32 %1592, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %30, align 1
  %1609 = lshr i32 %1592, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %33, align 1
  %1611 = lshr i32 %1591, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1609
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %39, align 1
  %1616 = sext i32 %1592 to i64
  store i64 %1616, i64* %RDX.i2239, align 8
  %1617 = shl nsw i64 %1616, 3
  %1618 = add i64 %1617, %1587
  %1619 = add i64 %1584, 18
  store i64 %1619, i64* %PC.i, align 8
  %1620 = inttoptr i64 %1618 to double*
  %1621 = load double, double* %1620, align 8
  store double %1621, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1622 = add i64 %1584, 22
  store i64 %1622, i64* %PC.i, align 8
  %1623 = load i64, i64* %1586, align 8
  store i64 %1623, i64* %RCX.i2236, align 8
  %1624 = add i64 %1582, -40
  %1625 = add i64 %1584, 25
  store i64 %1625, i64* %PC.i, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = add i32 %1627, 1
  %1629 = zext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i2224, align 8
  %1630 = icmp eq i32 %1627, -1
  %1631 = icmp eq i32 %1628, 0
  %1632 = or i1 %1630, %1631
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %14, align 1
  %1634 = and i32 %1628, 255
  %1635 = tail call i32 @llvm.ctpop.i32(i32 %1634)
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  %1638 = xor i8 %1637, 1
  store i8 %1638, i8* %21, align 1
  %1639 = xor i32 %1627, %1628
  %1640 = lshr i32 %1639, 4
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %27, align 1
  %1643 = icmp eq i32 %1628, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %30, align 1
  %1645 = lshr i32 %1628, 31
  %1646 = trunc i32 %1645 to i8
  store i8 %1646, i8* %33, align 1
  %1647 = lshr i32 %1627, 31
  %1648 = xor i32 %1645, %1647
  %1649 = add nuw nsw i32 %1648, %1645
  %1650 = icmp eq i32 %1649, 2
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %39, align 1
  %1652 = sext i32 %1628 to i64
  store i64 %1652, i64* %RDX.i2239, align 8
  %1653 = shl nsw i64 %1652, 3
  %1654 = add i64 %1653, %1623
  %1655 = add i64 %1584, 36
  store i64 %1655, i64* %PC.i, align 8
  %1656 = inttoptr i64 %1654 to double*
  %1657 = load double, double* %1656, align 8
  %1658 = fsub double %1621, %1657
  store double %1658, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -176
  %1661 = add i64 %1584, 44
  store i64 %1661, i64* %PC.i, align 8
  %1662 = inttoptr i64 %1660 to double*
  store double %1658, double* %1662, align 8
  %1663 = load i64, i64* %RBP.i, align 8
  %1664 = add i64 %1663, -120
  %1665 = load i64, i64* %PC.i, align 8
  %1666 = add i64 %1665, 5
  store i64 %1666, i64* %PC.i, align 8
  %1667 = inttoptr i64 %1664 to double*
  %1668 = load double, double* %1667, align 8
  store double %1668, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1669 = add i64 %1663, -152
  %1670 = add i64 %1665, 13
  store i64 %1670, i64* %PC.i, align 8
  %1671 = inttoptr i64 %1669 to double*
  %1672 = load double, double* %1671, align 8
  %1673 = fadd double %1668, %1672
  store double %1673, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1674 = add i64 %1663, -16
  %1675 = add i64 %1665, 17
  store i64 %1675, i64* %PC.i, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RCX.i2236, align 8
  %1678 = add i64 %1663, -28
  %1679 = add i64 %1665, 21
  store i64 %1679, i64* %PC.i, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = sext i32 %1681 to i64
  store i64 %1682, i64* %RDX.i2239, align 8
  %1683 = shl nsw i64 %1682, 3
  %1684 = add i64 %1683, %1677
  %1685 = add i64 %1665, 26
  store i64 %1685, i64* %PC.i, align 8
  %1686 = inttoptr i64 %1684 to double*
  store double %1673, double* %1686, align 8
  %1687 = load i64, i64* %RBP.i, align 8
  %1688 = add i64 %1687, -128
  %1689 = load i64, i64* %PC.i, align 8
  %1690 = add i64 %1689, 5
  store i64 %1690, i64* %PC.i, align 8
  %1691 = inttoptr i64 %1688 to double*
  %1692 = load double, double* %1691, align 8
  store double %1692, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1693 = add i64 %1687, -160
  %1694 = add i64 %1689, 13
  store i64 %1694, i64* %PC.i, align 8
  %1695 = inttoptr i64 %1693 to double*
  %1696 = load double, double* %1695, align 8
  %1697 = fadd double %1692, %1696
  store double %1697, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1698 = add i64 %1687, -16
  %1699 = add i64 %1689, 17
  store i64 %1699, i64* %PC.i, align 8
  %1700 = inttoptr i64 %1698 to i64*
  %1701 = load i64, i64* %1700, align 8
  store i64 %1701, i64* %RCX.i2236, align 8
  %1702 = add i64 %1687, -28
  %1703 = add i64 %1689, 20
  store i64 %1703, i64* %PC.i, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = add i32 %1705, 1
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i2224, align 8
  %1708 = icmp eq i32 %1705, -1
  %1709 = icmp eq i32 %1706, 0
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1706, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1705, %1706
  %1718 = lshr i32 %1717, 4
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %27, align 1
  %1721 = icmp eq i32 %1706, 0
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %30, align 1
  %1723 = lshr i32 %1706, 31
  %1724 = trunc i32 %1723 to i8
  store i8 %1724, i8* %33, align 1
  %1725 = lshr i32 %1705, 31
  %1726 = xor i32 %1723, %1725
  %1727 = add nuw nsw i32 %1726, %1723
  %1728 = icmp eq i32 %1727, 2
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %39, align 1
  %1730 = sext i32 %1706 to i64
  store i64 %1730, i64* %RDX.i2239, align 8
  %1731 = shl nsw i64 %1730, 3
  %1732 = add i64 %1731, %1701
  %1733 = add i64 %1689, 31
  store i64 %1733, i64* %PC.i, align 8
  %1734 = inttoptr i64 %1732 to double*
  store double %1697, double* %1734, align 8
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -160
  %1737 = load i64, i64* %PC.i, align 8
  %1738 = add i64 %1737, 8
  store i64 %1738, i64* %PC.i, align 8
  %1739 = inttoptr i64 %1736 to double*
  %1740 = load double, double* %1739, align 8
  store double %1740, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1741 = add i64 %1735, -128
  %1742 = add i64 %1737, 13
  store i64 %1742, i64* %PC.i, align 8
  %1743 = inttoptr i64 %1741 to double*
  %1744 = load double, double* %1743, align 8
  %1745 = fsub double %1740, %1744
  store double %1745, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1746 = add i64 %1735, -16
  %1747 = add i64 %1737, 17
  store i64 %1747, i64* %PC.i, align 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RCX.i2236, align 8
  %1750 = add i64 %1735, -36
  %1751 = add i64 %1737, 21
  store i64 %1751, i64* %PC.i, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = sext i32 %1753 to i64
  store i64 %1754, i64* %RDX.i2239, align 8
  %1755 = shl nsw i64 %1754, 3
  %1756 = add i64 %1755, %1749
  %1757 = add i64 %1737, 26
  store i64 %1757, i64* %PC.i, align 8
  %1758 = inttoptr i64 %1756 to double*
  store double %1745, double* %1758, align 8
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -120
  %1761 = load i64, i64* %PC.i, align 8
  %1762 = add i64 %1761, 5
  store i64 %1762, i64* %PC.i, align 8
  %1763 = inttoptr i64 %1760 to double*
  %1764 = load double, double* %1763, align 8
  store double %1764, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1765 = add i64 %1759, -152
  %1766 = add i64 %1761, 13
  store i64 %1766, i64* %PC.i, align 8
  %1767 = inttoptr i64 %1765 to double*
  %1768 = load double, double* %1767, align 8
  %1769 = fsub double %1764, %1768
  store double %1769, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1770 = add i64 %1759, -16
  %1771 = add i64 %1761, 17
  store i64 %1771, i64* %PC.i, align 8
  %1772 = inttoptr i64 %1770 to i64*
  %1773 = load i64, i64* %1772, align 8
  store i64 %1773, i64* %RCX.i2236, align 8
  %1774 = add i64 %1759, -36
  %1775 = add i64 %1761, 20
  store i64 %1775, i64* %PC.i, align 8
  %1776 = inttoptr i64 %1774 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = add i32 %1777, 1
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RAX.i2224, align 8
  %1780 = icmp eq i32 %1777, -1
  %1781 = icmp eq i32 %1778, 0
  %1782 = or i1 %1780, %1781
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %14, align 1
  %1784 = and i32 %1778, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %21, align 1
  %1789 = xor i32 %1777, %1778
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %27, align 1
  %1793 = icmp eq i32 %1778, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %30, align 1
  %1795 = lshr i32 %1778, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %33, align 1
  %1797 = lshr i32 %1777, 31
  %1798 = xor i32 %1795, %1797
  %1799 = add nuw nsw i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %39, align 1
  %1802 = sext i32 %1778 to i64
  store i64 %1802, i64* %RDX.i2239, align 8
  %1803 = shl nsw i64 %1802, 3
  %1804 = add i64 %1803, %1773
  %1805 = add i64 %1761, 31
  store i64 %1805, i64* %PC.i, align 8
  %1806 = inttoptr i64 %1804 to double*
  store double %1769, double* %1806, align 8
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -136
  %1809 = load i64, i64* %PC.i, align 8
  %1810 = add i64 %1809, 8
  store i64 %1810, i64* %PC.i, align 8
  %1811 = inttoptr i64 %1808 to double*
  %1812 = load double, double* %1811, align 8
  store double %1812, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1813 = add i64 %1807, -176
  %1814 = add i64 %1809, 16
  store i64 %1814, i64* %PC.i, align 8
  %1815 = inttoptr i64 %1813 to double*
  %1816 = load double, double* %1815, align 8
  %1817 = fsub double %1812, %1816
  store double %1817, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1818 = add i64 %1807, -120
  %1819 = add i64 %1809, 21
  store i64 %1819, i64* %PC.i, align 8
  %1820 = inttoptr i64 %1818 to double*
  store double %1817, double* %1820, align 8
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -144
  %1823 = load i64, i64* %PC.i, align 8
  %1824 = add i64 %1823, 8
  store i64 %1824, i64* %PC.i, align 8
  %1825 = inttoptr i64 %1822 to double*
  %1826 = load double, double* %1825, align 8
  store double %1826, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1827 = add i64 %1821, -168
  %1828 = add i64 %1823, 16
  store i64 %1828, i64* %PC.i, align 8
  %1829 = inttoptr i64 %1827 to double*
  %1830 = load double, double* %1829, align 8
  %1831 = fadd double %1826, %1830
  store double %1831, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1832 = add i64 %1821, -128
  %1833 = add i64 %1823, 21
  store i64 %1833, i64* %PC.i, align 8
  %1834 = inttoptr i64 %1832 to double*
  store double %1831, double* %1834, align 8
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -72
  %1837 = load i64, i64* %PC.i, align 8
  %1838 = add i64 %1837, 5
  store i64 %1838, i64* %PC.i, align 8
  %1839 = inttoptr i64 %1836 to double*
  %1840 = load double, double* %1839, align 8
  store double %1840, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1841 = add i64 %1835, -120
  %1842 = add i64 %1837, 10
  store i64 %1842, i64* %PC.i, align 8
  %1843 = inttoptr i64 %1841 to double*
  %1844 = load double, double* %1843, align 8
  store double %1844, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %1845 = add i64 %1835, -128
  %1846 = add i64 %1837, 15
  store i64 %1846, i64* %PC.i, align 8
  %1847 = inttoptr i64 %1845 to double*
  %1848 = load double, double* %1847, align 8
  %1849 = fsub double %1844, %1848
  store double %1849, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %1850 = fmul double %1840, %1849
  store double %1850, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1851 = add i64 %1835, -16
  %1852 = add i64 %1837, 23
  store i64 %1852, i64* %PC.i, align 8
  %1853 = inttoptr i64 %1851 to i64*
  %1854 = load i64, i64* %1853, align 8
  store i64 %1854, i64* %RCX.i2236, align 8
  %1855 = add i64 %1835, -32
  %1856 = add i64 %1837, 27
  store i64 %1856, i64* %PC.i, align 8
  %1857 = inttoptr i64 %1855 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = sext i32 %1858 to i64
  store i64 %1859, i64* %RDX.i2239, align 8
  %1860 = shl nsw i64 %1859, 3
  %1861 = add i64 %1860, %1854
  %1862 = add i64 %1837, 32
  store i64 %1862, i64* %PC.i, align 8
  %1863 = inttoptr i64 %1861 to double*
  store double %1850, double* %1863, align 8
  %1864 = load i64, i64* %RBP.i, align 8
  %1865 = add i64 %1864, -72
  %1866 = load i64, i64* %PC.i, align 8
  %1867 = add i64 %1866, 5
  store i64 %1867, i64* %PC.i, align 8
  %1868 = inttoptr i64 %1865 to double*
  %1869 = load double, double* %1868, align 8
  store double %1869, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1870 = add i64 %1864, -120
  %1871 = add i64 %1866, 10
  store i64 %1871, i64* %PC.i, align 8
  %1872 = inttoptr i64 %1870 to double*
  %1873 = load double, double* %1872, align 8
  store double %1873, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %1874 = add i64 %1864, -128
  %1875 = add i64 %1866, 15
  store i64 %1875, i64* %PC.i, align 8
  %1876 = inttoptr i64 %1874 to double*
  %1877 = load double, double* %1876, align 8
  %1878 = fadd double %1873, %1877
  store double %1878, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %1879 = fmul double %1869, %1878
  store double %1879, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1880 = add i64 %1864, -16
  %1881 = add i64 %1866, 23
  store i64 %1881, i64* %PC.i, align 8
  %1882 = inttoptr i64 %1880 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %RCX.i2236, align 8
  %1884 = add i64 %1864, -32
  %1885 = add i64 %1866, 26
  store i64 %1885, i64* %PC.i, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = add i32 %1887, 1
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RAX.i2224, align 8
  %1890 = icmp eq i32 %1887, -1
  %1891 = icmp eq i32 %1888, 0
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %14, align 1
  %1894 = and i32 %1888, 255
  %1895 = tail call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  store i8 %1898, i8* %21, align 1
  %1899 = xor i32 %1887, %1888
  %1900 = lshr i32 %1899, 4
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  store i8 %1902, i8* %27, align 1
  %1903 = icmp eq i32 %1888, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %30, align 1
  %1905 = lshr i32 %1888, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %33, align 1
  %1907 = lshr i32 %1887, 31
  %1908 = xor i32 %1905, %1907
  %1909 = add nuw nsw i32 %1908, %1905
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %39, align 1
  %1912 = sext i32 %1888 to i64
  store i64 %1912, i64* %RDX.i2239, align 8
  %1913 = shl nsw i64 %1912, 3
  %1914 = add i64 %1913, %1883
  %1915 = add i64 %1866, 37
  store i64 %1915, i64* %PC.i, align 8
  %1916 = inttoptr i64 %1914 to double*
  store double %1879, double* %1916, align 8
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -176
  %1919 = load i64, i64* %PC.i, align 8
  %1920 = add i64 %1919, 8
  store i64 %1920, i64* %PC.i, align 8
  %1921 = inttoptr i64 %1918 to double*
  %1922 = load double, double* %1921, align 8
  store double %1922, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1923 = add i64 %1917, -136
  %1924 = add i64 %1919, 16
  store i64 %1924, i64* %PC.i, align 8
  %1925 = inttoptr i64 %1923 to double*
  %1926 = load double, double* %1925, align 8
  %1927 = fadd double %1922, %1926
  store double %1927, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1928 = add i64 %1917, -120
  %1929 = add i64 %1919, 21
  store i64 %1929, i64* %PC.i, align 8
  %1930 = inttoptr i64 %1928 to double*
  store double %1927, double* %1930, align 8
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -168
  %1933 = load i64, i64* %PC.i, align 8
  %1934 = add i64 %1933, 8
  store i64 %1934, i64* %PC.i, align 8
  %1935 = inttoptr i64 %1932 to double*
  %1936 = load double, double* %1935, align 8
  store double %1936, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1937 = add i64 %1931, -144
  %1938 = add i64 %1933, 16
  store i64 %1938, i64* %PC.i, align 8
  %1939 = inttoptr i64 %1937 to double*
  %1940 = load double, double* %1939, align 8
  %1941 = fsub double %1936, %1940
  store double %1941, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1942 = add i64 %1931, -128
  %1943 = add i64 %1933, 21
  store i64 %1943, i64* %PC.i, align 8
  %1944 = inttoptr i64 %1942 to double*
  store double %1941, double* %1944, align 8
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -72
  %1947 = load i64, i64* %PC.i, align 8
  %1948 = add i64 %1947, 5
  store i64 %1948, i64* %PC.i, align 8
  %1949 = inttoptr i64 %1946 to double*
  %1950 = load double, double* %1949, align 8
  store double %1950, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1951 = add i64 %1945, -128
  %1952 = add i64 %1947, 10
  store i64 %1952, i64* %PC.i, align 8
  %1953 = inttoptr i64 %1951 to double*
  %1954 = load double, double* %1953, align 8
  store double %1954, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %1955 = add i64 %1945, -120
  %1956 = add i64 %1947, 15
  store i64 %1956, i64* %PC.i, align 8
  %1957 = inttoptr i64 %1955 to double*
  %1958 = load double, double* %1957, align 8
  %1959 = fsub double %1954, %1958
  store double %1959, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %1960 = fmul double %1950, %1959
  store double %1960, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1961 = add i64 %1945, -16
  %1962 = add i64 %1947, 23
  store i64 %1962, i64* %PC.i, align 8
  %1963 = inttoptr i64 %1961 to i64*
  %1964 = load i64, i64* %1963, align 8
  store i64 %1964, i64* %RCX.i2236, align 8
  %1965 = add i64 %1945, -40
  %1966 = add i64 %1947, 27
  store i64 %1966, i64* %PC.i, align 8
  %1967 = inttoptr i64 %1965 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RDX.i2239, align 8
  %1970 = shl nsw i64 %1969, 3
  %1971 = add i64 %1970, %1964
  %1972 = add i64 %1947, 32
  store i64 %1972, i64* %PC.i, align 8
  %1973 = inttoptr i64 %1971 to double*
  store double %1960, double* %1973, align 8
  %1974 = load i64, i64* %RBP.i, align 8
  %1975 = add i64 %1974, -72
  %1976 = load i64, i64* %PC.i, align 8
  %1977 = add i64 %1976, 5
  store i64 %1977, i64* %PC.i, align 8
  %1978 = inttoptr i64 %1975 to double*
  %1979 = load double, double* %1978, align 8
  store double %1979, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1980 = add i64 %1974, -128
  %1981 = add i64 %1976, 10
  store i64 %1981, i64* %PC.i, align 8
  %1982 = inttoptr i64 %1980 to double*
  %1983 = load double, double* %1982, align 8
  store double %1983, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %1984 = add i64 %1974, -120
  %1985 = add i64 %1976, 15
  store i64 %1985, i64* %PC.i, align 8
  %1986 = inttoptr i64 %1984 to double*
  %1987 = load double, double* %1986, align 8
  %1988 = fadd double %1983, %1987
  store double %1988, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %1989 = fmul double %1979, %1988
  store double %1989, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1990 = add i64 %1974, -16
  %1991 = add i64 %1976, 23
  store i64 %1991, i64* %PC.i, align 8
  %1992 = inttoptr i64 %1990 to i64*
  %1993 = load i64, i64* %1992, align 8
  store i64 %1993, i64* %RCX.i2236, align 8
  %1994 = add i64 %1974, -40
  %1995 = add i64 %1976, 26
  store i64 %1995, i64* %PC.i, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = add i32 %1997, 1
  %1999 = zext i32 %1998 to i64
  store i64 %1999, i64* %RAX.i2224, align 8
  %2000 = icmp eq i32 %1997, -1
  %2001 = icmp eq i32 %1998, 0
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %14, align 1
  %2004 = and i32 %1998, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004)
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %21, align 1
  %2009 = xor i32 %1997, %1998
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %27, align 1
  %2013 = icmp eq i32 %1998, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %30, align 1
  %2015 = lshr i32 %1998, 31
  %2016 = trunc i32 %2015 to i8
  store i8 %2016, i8* %33, align 1
  %2017 = lshr i32 %1997, 31
  %2018 = xor i32 %2015, %2017
  %2019 = add nuw nsw i32 %2018, %2015
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %39, align 1
  %2022 = sext i32 %1998 to i64
  store i64 %2022, i64* %RDX.i2239, align 8
  %2023 = shl nsw i64 %2022, 3
  %2024 = add i64 %2023, %1993
  %2025 = add i64 %1976, 37
  store i64 %2025, i64* %PC.i, align 8
  %2026 = inttoptr i64 %2024 to double*
  store double %1989, double* %2026, align 8
  %2027 = load i64, i64* %RBP.i, align 8
  %2028 = add i64 %2027, -28
  %2029 = load i64, i64* %PC.i, align 8
  %2030 = add i64 %2029, 3
  store i64 %2030, i64* %PC.i, align 8
  %2031 = inttoptr i64 %2028 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = add i32 %2032, 2
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RAX.i2224, align 8
  %2035 = icmp ugt i32 %2032, -3
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1
  %2037 = and i32 %2033, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %21, align 1
  %2042 = xor i32 %2032, %2033
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %27, align 1
  %2046 = icmp eq i32 %2033, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %30, align 1
  %2048 = lshr i32 %2033, 31
  %2049 = trunc i32 %2048 to i8
  store i8 %2049, i8* %33, align 1
  %2050 = lshr i32 %2032, 31
  %2051 = xor i32 %2048, %2050
  %2052 = add nuw nsw i32 %2051, %2048
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %39, align 1
  %2055 = add i64 %2029, 9
  store i64 %2055, i64* %PC.i, align 8
  store i32 %2033, i32* %2031, align 4
  %2056 = load i64, i64* %PC.i, align 8
  %2057 = add i64 %2056, -695
  store i64 %2057, i64* %3, align 8
  br label %block_.L_403591

block_.L_40384d:                                  ; preds = %block_.L_403591
  %2058 = add i64 %1050, -48
  %2059 = add i64 %1093, 7
  store i64 %2059, i64* %PC.i, align 8
  %2060 = inttoptr i64 %2058 to i32*
  store i32 0, i32* %2060, align 4
  %2061 = load i64, i64* %RBP.i, align 8
  %2062 = add i64 %2061, -56
  %2063 = load i64, i64* %PC.i, align 8
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC.i, align 8
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = shl i32 %2066, 1
  %2068 = icmp slt i32 %2066, 0
  %2069 = icmp slt i32 %2067, 0
  %2070 = xor i1 %2068, %2069
  %2071 = zext i32 %2067 to i64
  store i64 %2071, i64* %RAX.i2224, align 8
  %.lobit = lshr i32 %2066, 31
  %2072 = trunc i32 %.lobit to i8
  store i8 %2072, i8* %14, align 1
  %2073 = and i32 %2067, 254
  %2074 = tail call i32 @llvm.ctpop.i32(i32 %2073)
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = xor i8 %2076, 1
  store i8 %2077, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2078 = icmp eq i32 %2067, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %30, align 1
  %2080 = lshr i32 %2066, 30
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  store i8 %2082, i8* %33, align 1
  %2083 = zext i1 %2070 to i8
  store i8 %2083, i8* %39, align 1
  %2084 = add i64 %2061, -60
  %2085 = add i64 %2063, 8
  store i64 %2085, i64* %PC.i, align 8
  %2086 = inttoptr i64 %2084 to i32*
  store i32 %2067, i32* %2086, align 4
  %2087 = load i64, i64* %RBP.i, align 8
  %2088 = add i64 %2087, -60
  %2089 = load i64, i64* %PC.i, align 8
  %2090 = add i64 %2089, 3
  store i64 %2090, i64* %PC.i, align 8
  %2091 = inttoptr i64 %2088 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RAX.i2224, align 8
  %2094 = add i64 %2087, -44
  %2095 = add i64 %2089, 6
  store i64 %2095, i64* %PC.i, align 8
  %2096 = inttoptr i64 %2094 to i32*
  store i32 %2092, i32* %2096, align 4
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %2098 = bitcast %union.VectorReg* %2097 to i8*
  %2099 = bitcast [32 x %union.VectorReg]* %93 to <2 x i32>*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2101 = bitcast i64* %2100 to <2 x i32>*
  %2102 = bitcast %union.VectorReg* %2097 to i32*
  %2103 = getelementptr inbounds i8, i8* %2098, i64 4
  %2104 = bitcast i8* %2103 to i32*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %2106 = bitcast i64* %2105 to i32*
  %2107 = getelementptr inbounds i8, i8* %2098, i64 12
  %2108 = bitcast i8* %2107 to i32*
  %2109 = bitcast %union.VectorReg* %2097 to double*
  %2110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %93, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_403863

block_.L_403863:                                  ; preds = %block_.L_403fcb, %block_.L_40384d
  %2111 = phi i64 [ %4786, %block_.L_403fcb ], [ %.pre2, %block_.L_40384d ]
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -44
  %2114 = add i64 %2111, 3
  store i64 %2114, i64* %PC.i, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i2224, align 8
  %2118 = add i64 %2112, -4
  %2119 = add i64 %2111, 6
  store i64 %2119, i64* %PC.i, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sub i32 %2116, %2121
  %2123 = icmp ult i32 %2116, %2121
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %14, align 1
  %2125 = and i32 %2122, 255
  %2126 = tail call i32 @llvm.ctpop.i32(i32 %2125)
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  %2129 = xor i8 %2128, 1
  store i8 %2129, i8* %21, align 1
  %2130 = xor i32 %2121, %2116
  %2131 = xor i32 %2130, %2122
  %2132 = lshr i32 %2131, 4
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  store i8 %2134, i8* %27, align 1
  %2135 = icmp eq i32 %2122, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %30, align 1
  %2137 = lshr i32 %2122, 31
  %2138 = trunc i32 %2137 to i8
  store i8 %2138, i8* %33, align 1
  %2139 = lshr i32 %2116, 31
  %2140 = lshr i32 %2121, 31
  %2141 = xor i32 %2140, %2139
  %2142 = xor i32 %2137, %2139
  %2143 = add nuw nsw i32 %2142, %2141
  %2144 = icmp eq i32 %2143, 2
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %39, align 1
  %2146 = icmp ne i8 %2138, 0
  %2147 = xor i1 %2146, %2144
  %.v6 = select i1 %2147, i64 12, i64 1915
  %2148 = add i64 %2111, %.v6
  store i64 %2148, i64* %3, align 8
  br i1 %2147, label %block_40386f, label %block_.L_403fde

block_40386f:                                     ; preds = %block_.L_403863
  %2149 = load i64, i64* bitcast (%G_0x849__rip__type* @G_0x849__rip_ to i64*), align 8
  %2150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %93, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2149, i64* %2150, align 1
  store double 0.000000e+00, double* %96, align 1
  %2151 = add i64 %2112, -48
  %2152 = add i64 %2148, 11
  store i64 %2152, i64* %PC.i, align 8
  %2153 = inttoptr i64 %2151 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = add i32 %2154, 2
  %2156 = zext i32 %2155 to i64
  store i64 %2156, i64* %RAX.i2224, align 8
  %2157 = icmp ugt i32 %2154, -3
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %14, align 1
  %2159 = and i32 %2155, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %21, align 1
  %2164 = xor i32 %2154, %2155
  %2165 = lshr i32 %2164, 4
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  store i8 %2167, i8* %27, align 1
  %2168 = icmp eq i32 %2155, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %30, align 1
  %2170 = lshr i32 %2155, 31
  %2171 = trunc i32 %2170 to i8
  store i8 %2171, i8* %33, align 1
  %2172 = lshr i32 %2154, 31
  %2173 = xor i32 %2170, %2172
  %2174 = add nuw nsw i32 %2173, %2170
  %2175 = icmp eq i32 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %39, align 1
  %2177 = add i64 %2148, 17
  store i64 %2177, i64* %PC.i, align 8
  store i32 %2155, i32* %2153, align 4
  %2178 = load i64, i64* %RBP.i, align 8
  %2179 = add i64 %2178, -48
  %2180 = load i64, i64* %PC.i, align 8
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i, align 8
  %2182 = inttoptr i64 %2179 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = shl i32 %2183, 1
  %2185 = icmp slt i32 %2183, 0
  %2186 = icmp slt i32 %2184, 0
  %2187 = xor i1 %2185, %2186
  %2188 = zext i32 %2184 to i64
  store i64 %2188, i64* %RAX.i2224, align 8
  %.lobit7 = lshr i32 %2183, 31
  %2189 = trunc i32 %.lobit7 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = and i32 %2184, 254
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2195 = icmp eq i32 %2184, 0
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %30, align 1
  %2197 = lshr i32 %2183, 30
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %33, align 1
  %2200 = zext i1 %2187 to i8
  store i8 %2200, i8* %39, align 1
  %2201 = add i64 %2178, -52
  %2202 = add i64 %2180, 8
  store i64 %2202, i64* %PC.i, align 8
  %2203 = inttoptr i64 %2201 to i32*
  store i32 %2184, i32* %2203, align 4
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -24
  %2206 = load i64, i64* %PC.i, align 8
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %PC.i, align 8
  %2208 = inttoptr i64 %2205 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RCX.i2236, align 8
  %2210 = add i64 %2204, -48
  %2211 = add i64 %2206, 8
  store i64 %2211, i64* %PC.i, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = sext i32 %2213 to i64
  store i64 %2214, i64* %RDX.i2239, align 8
  %2215 = shl nsw i64 %2214, 3
  %2216 = add i64 %2215, %2209
  %2217 = add i64 %2206, 13
  store i64 %2217, i64* %PC.i, align 8
  %2218 = inttoptr i64 %2216 to i64*
  %2219 = load i64, i64* %2218, align 8
  %2220 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2219, i64* %2220, align 1
  store double 0.000000e+00, double* %1048, align 1
  %2221 = add i64 %2204, -88
  %2222 = add i64 %2206, 18
  store i64 %2222, i64* %PC.i, align 8
  %2223 = inttoptr i64 %2221 to i64*
  store i64 %2219, i64* %2223, align 8
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -24
  %2226 = load i64, i64* %PC.i, align 8
  %2227 = add i64 %2226, 4
  store i64 %2227, i64* %PC.i, align 8
  %2228 = inttoptr i64 %2225 to i64*
  %2229 = load i64, i64* %2228, align 8
  store i64 %2229, i64* %RCX.i2236, align 8
  %2230 = add i64 %2224, -48
  %2231 = add i64 %2226, 7
  store i64 %2231, i64* %PC.i, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = add i32 %2233, 1
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i2224, align 8
  %2236 = icmp eq i32 %2233, -1
  %2237 = icmp eq i32 %2234, 0
  %2238 = or i1 %2236, %2237
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %14, align 1
  %2240 = and i32 %2234, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %21, align 1
  %2245 = xor i32 %2233, %2234
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %27, align 1
  %2249 = icmp eq i32 %2234, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %30, align 1
  %2251 = lshr i32 %2234, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %33, align 1
  %2253 = lshr i32 %2233, 31
  %2254 = xor i32 %2251, %2253
  %2255 = add nuw nsw i32 %2254, %2251
  %2256 = icmp eq i32 %2255, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %39, align 1
  %2258 = sext i32 %2234 to i64
  store i64 %2258, i64* %RDX.i2239, align 8
  %2259 = shl nsw i64 %2258, 3
  %2260 = add i64 %2259, %2229
  %2261 = add i64 %2226, 18
  store i64 %2261, i64* %PC.i, align 8
  %2262 = inttoptr i64 %2260 to i64*
  %2263 = load i64, i64* %2262, align 8
  %2264 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2263, i64* %2264, align 1
  store double 0.000000e+00, double* %1048, align 1
  %2265 = add i64 %2224, -96
  %2266 = add i64 %2226, 23
  store i64 %2266, i64* %PC.i, align 8
  %2267 = inttoptr i64 %2265 to i64*
  store i64 %2263, i64* %2267, align 8
  %2268 = load i64, i64* %RBP.i, align 8
  %2269 = add i64 %2268, -24
  %2270 = load i64, i64* %PC.i, align 8
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %PC.i, align 8
  %2272 = inttoptr i64 %2269 to i64*
  %2273 = load i64, i64* %2272, align 8
  store i64 %2273, i64* %RCX.i2236, align 8
  %2274 = add i64 %2268, -52
  %2275 = add i64 %2270, 8
  store i64 %2275, i64* %PC.i, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = sext i32 %2277 to i64
  store i64 %2278, i64* %RDX.i2239, align 8
  %2279 = shl nsw i64 %2278, 3
  %2280 = add i64 %2279, %2273
  %2281 = add i64 %2270, 13
  store i64 %2281, i64* %PC.i, align 8
  %2282 = inttoptr i64 %2280 to i64*
  %2283 = load i64, i64* %2282, align 8
  %2284 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2283, i64* %2284, align 1
  store double 0.000000e+00, double* %1048, align 1
  %2285 = add i64 %2268, -72
  %2286 = add i64 %2270, 18
  store i64 %2286, i64* %PC.i, align 8
  %2287 = inttoptr i64 %2285 to i64*
  store i64 %2283, i64* %2287, align 8
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -24
  %2290 = load i64, i64* %PC.i, align 8
  %2291 = add i64 %2290, 4
  store i64 %2291, i64* %PC.i, align 8
  %2292 = inttoptr i64 %2289 to i64*
  %2293 = load i64, i64* %2292, align 8
  store i64 %2293, i64* %RCX.i2236, align 8
  %2294 = add i64 %2288, -52
  %2295 = add i64 %2290, 7
  store i64 %2295, i64* %PC.i, align 8
  %2296 = inttoptr i64 %2294 to i32*
  %2297 = load i32, i32* %2296, align 4
  %2298 = add i32 %2297, 1
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RAX.i2224, align 8
  %2300 = icmp eq i32 %2297, -1
  %2301 = icmp eq i32 %2298, 0
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %14, align 1
  %2304 = and i32 %2298, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i32 %2297, %2298
  %2310 = lshr i32 %2309, 4
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  store i8 %2312, i8* %27, align 1
  %2313 = icmp eq i32 %2298, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %30, align 1
  %2315 = lshr i32 %2298, 31
  %2316 = trunc i32 %2315 to i8
  store i8 %2316, i8* %33, align 1
  %2317 = lshr i32 %2297, 31
  %2318 = xor i32 %2315, %2317
  %2319 = add nuw nsw i32 %2318, %2315
  %2320 = icmp eq i32 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %39, align 1
  %2322 = sext i32 %2298 to i64
  store i64 %2322, i64* %RDX.i2239, align 8
  %2323 = shl nsw i64 %2322, 3
  %2324 = add i64 %2323, %2293
  %2325 = add i64 %2290, 18
  store i64 %2325, i64* %PC.i, align 8
  %2326 = inttoptr i64 %2324 to i64*
  %2327 = load i64, i64* %2326, align 8
  %2328 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2327, i64* %2328, align 1
  store double 0.000000e+00, double* %1048, align 1
  %2329 = add i64 %2288, -80
  %2330 = add i64 %2290, 23
  store i64 %2330, i64* %PC.i, align 8
  %2331 = inttoptr i64 %2329 to i64*
  store i64 %2327, i64* %2331, align 8
  %2332 = load i64, i64* %RBP.i, align 8
  %2333 = add i64 %2332, -72
  %2334 = load i64, i64* %PC.i, align 8
  %2335 = add i64 %2334, 5
  store i64 %2335, i64* %PC.i, align 8
  %2336 = inttoptr i64 %2333 to double*
  %2337 = load double, double* %2336, align 8
  store double %2337, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %2338 = load <2 x i32>, <2 x i32>* %2099, align 1
  %2339 = load <2 x i32>, <2 x i32>* %2101, align 1
  %2340 = extractelement <2 x i32> %2338, i32 0
  store i32 %2340, i32* %2102, align 1
  %2341 = extractelement <2 x i32> %2338, i32 1
  store i32 %2341, i32* %2104, align 1
  %2342 = extractelement <2 x i32> %2339, i32 0
  store i32 %2342, i32* %2106, align 1
  %2343 = extractelement <2 x i32> %2339, i32 1
  store i32 %2343, i32* %2108, align 1
  %2344 = add i64 %2332, -96
  %2345 = add i64 %2334, 13
  store i64 %2345, i64* %PC.i, align 8
  %2346 = load double, double* %2109, align 1
  %2347 = inttoptr i64 %2344 to double*
  %2348 = load double, double* %2347, align 8
  %2349 = fmul double %2346, %2348
  store double %2349, double* %2109, align 1
  %2350 = add i64 %2332, -80
  %2351 = add i64 %2334, 18
  store i64 %2351, i64* %PC.i, align 8
  %2352 = inttoptr i64 %2350 to double*
  %2353 = load double, double* %2352, align 8
  %2354 = fmul double %2349, %2353
  store double %2354, double* %2109, align 1
  %2355 = fsub double %2337, %2354
  store double %2355, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %2356 = add i64 %2332, -104
  %2357 = add i64 %2334, 27
  store i64 %2357, i64* %PC.i, align 8
  %2358 = inttoptr i64 %2356 to double*
  store double %2355, double* %2358, align 8
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -96
  %2361 = load i64, i64* %PC.i, align 8
  %2362 = add i64 %2361, 5
  store i64 %2362, i64* %PC.i, align 8
  %2363 = load double, double* %94, align 1
  %2364 = inttoptr i64 %2360 to double*
  %2365 = load double, double* %2364, align 8
  %2366 = fmul double %2363, %2365
  store double %2366, double* %94, align 1
  %2367 = add i64 %2359, -72
  %2368 = add i64 %2361, 10
  store i64 %2368, i64* %PC.i, align 8
  %2369 = inttoptr i64 %2367 to double*
  %2370 = load double, double* %2369, align 8
  %2371 = fmul double %2366, %2370
  store double %2371, double* %94, align 1
  %2372 = add i64 %2359, -80
  %2373 = add i64 %2361, 15
  store i64 %2373, i64* %PC.i, align 8
  %2374 = inttoptr i64 %2372 to double*
  %2375 = load double, double* %2374, align 8
  %2376 = fsub double %2371, %2375
  store double %2376, double* %94, align 1
  %2377 = add i64 %2359, -112
  %2378 = add i64 %2361, 20
  store i64 %2378, i64* %PC.i, align 8
  %2379 = inttoptr i64 %2377 to double*
  store double %2376, double* %2379, align 8
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -44
  %2382 = load i64, i64* %PC.i, align 8
  %2383 = add i64 %2382, 3
  store i64 %2383, i64* %PC.i, align 8
  %2384 = inttoptr i64 %2381 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = zext i32 %2385 to i64
  store i64 %2386, i64* %RAX.i2224, align 8
  %2387 = add i64 %2380, -28
  %2388 = add i64 %2382, 6
  store i64 %2388, i64* %PC.i, align 8
  %2389 = inttoptr i64 %2387 to i32*
  store i32 %2385, i32* %2389, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_403910

block_.L_403910:                                  ; preds = %block_403921, %block_40386f
  %2390 = phi i64 [ %3462, %block_403921 ], [ %.pre3, %block_40386f ]
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -28
  %2393 = add i64 %2390, 3
  store i64 %2393, i64* %PC.i, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = zext i32 %2395 to i64
  store i64 %2396, i64* %RAX.i2224, align 8
  %2397 = add i64 %2391, -8
  %2398 = add i64 %2390, 6
  store i64 %2398, i64* %PC.i, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RCX.i2236, align 8
  %2402 = add i64 %2391, -44
  %2403 = add i64 %2390, 9
  store i64 %2403, i64* %PC.i, align 8
  %2404 = inttoptr i64 %2402 to i32*
  %2405 = load i32, i32* %2404, align 4
  %2406 = add i32 %2405, %2400
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RCX.i2236, align 8
  %2408 = lshr i32 %2406, 31
  %2409 = sub i32 %2395, %2406
  %2410 = icmp ult i32 %2395, %2406
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %14, align 1
  %2412 = and i32 %2409, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %21, align 1
  %2417 = xor i32 %2406, %2395
  %2418 = xor i32 %2417, %2409
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %27, align 1
  %2422 = icmp eq i32 %2409, 0
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %30, align 1
  %2424 = lshr i32 %2409, 31
  %2425 = trunc i32 %2424 to i8
  store i8 %2425, i8* %33, align 1
  %2426 = lshr i32 %2395, 31
  %2427 = xor i32 %2408, %2426
  %2428 = xor i32 %2424, %2426
  %2429 = add nuw nsw i32 %2428, %2427
  %2430 = icmp eq i32 %2429, 2
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %39, align 1
  %2432 = icmp ne i8 %2425, 0
  %2433 = xor i1 %2432, %2430
  %.v8 = select i1 %2433, i64 17, i64 786
  %2434 = add i64 %2390, %.v8
  store i64 %2434, i64* %3, align 8
  br i1 %2433, label %block_403921, label %block_.L_403c22

block_403921:                                     ; preds = %block_.L_403910
  %2435 = add i64 %2434, 3
  store i64 %2435, i64* %PC.i, align 8
  %2436 = load i32, i32* %2394, align 4
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RAX.i2224, align 8
  %2438 = add i64 %2434, 6
  store i64 %2438, i64* %PC.i, align 8
  %2439 = load i32, i32* %2399, align 4
  %2440 = add i32 %2439, %2436
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RAX.i2224, align 8
  %2442 = icmp ult i32 %2440, %2436
  %2443 = icmp ult i32 %2440, %2439
  %2444 = or i1 %2442, %2443
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %14, align 1
  %2446 = and i32 %2440, 255
  %2447 = tail call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  store i8 %2450, i8* %21, align 1
  %2451 = xor i32 %2439, %2436
  %2452 = xor i32 %2451, %2440
  %2453 = lshr i32 %2452, 4
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  store i8 %2455, i8* %27, align 1
  %2456 = icmp eq i32 %2440, 0
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %30, align 1
  %2458 = lshr i32 %2440, 31
  %2459 = trunc i32 %2458 to i8
  store i8 %2459, i8* %33, align 1
  %2460 = lshr i32 %2436, 31
  %2461 = lshr i32 %2439, 31
  %2462 = xor i32 %2458, %2460
  %2463 = xor i32 %2458, %2461
  %2464 = add nuw nsw i32 %2462, %2463
  %2465 = icmp eq i32 %2464, 2
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %39, align 1
  %2467 = add i64 %2391, -32
  %2468 = add i64 %2434, 9
  store i64 %2468, i64* %PC.i, align 8
  %2469 = inttoptr i64 %2467 to i32*
  store i32 %2440, i32* %2469, align 4
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -32
  %2472 = load i64, i64* %PC.i, align 8
  %2473 = add i64 %2472, 3
  store i64 %2473, i64* %PC.i, align 8
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RAX.i2224, align 8
  %2477 = add i64 %2470, -8
  %2478 = add i64 %2472, 6
  store i64 %2478, i64* %PC.i, align 8
  %2479 = inttoptr i64 %2477 to i32*
  %2480 = load i32, i32* %2479, align 4
  %2481 = add i32 %2480, %2475
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RAX.i2224, align 8
  %2483 = icmp ult i32 %2481, %2475
  %2484 = icmp ult i32 %2481, %2480
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %14, align 1
  %2487 = and i32 %2481, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %21, align 1
  %2492 = xor i32 %2480, %2475
  %2493 = xor i32 %2492, %2481
  %2494 = lshr i32 %2493, 4
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  store i8 %2496, i8* %27, align 1
  %2497 = icmp eq i32 %2481, 0
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %30, align 1
  %2499 = lshr i32 %2481, 31
  %2500 = trunc i32 %2499 to i8
  store i8 %2500, i8* %33, align 1
  %2501 = lshr i32 %2475, 31
  %2502 = lshr i32 %2480, 31
  %2503 = xor i32 %2499, %2501
  %2504 = xor i32 %2499, %2502
  %2505 = add nuw nsw i32 %2503, %2504
  %2506 = icmp eq i32 %2505, 2
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %39, align 1
  %2508 = add i64 %2470, -36
  %2509 = add i64 %2472, 9
  store i64 %2509, i64* %PC.i, align 8
  %2510 = inttoptr i64 %2508 to i32*
  store i32 %2481, i32* %2510, align 4
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -36
  %2513 = load i64, i64* %PC.i, align 8
  %2514 = add i64 %2513, 3
  store i64 %2514, i64* %PC.i, align 8
  %2515 = inttoptr i64 %2512 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %RAX.i2224, align 8
  %2518 = add i64 %2511, -8
  %2519 = add i64 %2513, 6
  store i64 %2519, i64* %PC.i, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = add i32 %2521, %2516
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i2224, align 8
  %2524 = icmp ult i32 %2522, %2516
  %2525 = icmp ult i32 %2522, %2521
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %14, align 1
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %21, align 1
  %2533 = xor i32 %2521, %2516
  %2534 = xor i32 %2533, %2522
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %27, align 1
  %2538 = icmp eq i32 %2522, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %30, align 1
  %2540 = lshr i32 %2522, 31
  %2541 = trunc i32 %2540 to i8
  store i8 %2541, i8* %33, align 1
  %2542 = lshr i32 %2516, 31
  %2543 = lshr i32 %2521, 31
  %2544 = xor i32 %2540, %2542
  %2545 = xor i32 %2540, %2543
  %2546 = add nuw nsw i32 %2544, %2545
  %2547 = icmp eq i32 %2546, 2
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %39, align 1
  %2549 = add i64 %2511, -40
  %2550 = add i64 %2513, 9
  store i64 %2550, i64* %PC.i, align 8
  %2551 = inttoptr i64 %2549 to i32*
  store i32 %2522, i32* %2551, align 4
  %2552 = load i64, i64* %RBP.i, align 8
  %2553 = add i64 %2552, -16
  %2554 = load i64, i64* %PC.i, align 8
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %PC.i, align 8
  %2556 = inttoptr i64 %2553 to i64*
  %2557 = load i64, i64* %2556, align 8
  store i64 %2557, i64* %RCX.i2236, align 8
  %2558 = add i64 %2552, -28
  %2559 = add i64 %2554, 8
  store i64 %2559, i64* %PC.i, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = sext i32 %2561 to i64
  store i64 %2562, i64* %RDX.i2239, align 8
  %2563 = shl nsw i64 %2562, 3
  %2564 = add i64 %2563, %2557
  %2565 = add i64 %2554, 13
  store i64 %2565, i64* %PC.i, align 8
  %2566 = inttoptr i64 %2564 to double*
  %2567 = load double, double* %2566, align 8
  store double %2567, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2568 = add i64 %2554, 17
  store i64 %2568, i64* %PC.i, align 8
  %2569 = load i64, i64* %2556, align 8
  store i64 %2569, i64* %RCX.i2236, align 8
  %2570 = add i64 %2552, -32
  %2571 = add i64 %2554, 21
  store i64 %2571, i64* %PC.i, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  store i64 %2574, i64* %RDX.i2239, align 8
  %2575 = shl nsw i64 %2574, 3
  %2576 = add i64 %2575, %2569
  %2577 = add i64 %2554, 26
  store i64 %2577, i64* %PC.i, align 8
  %2578 = inttoptr i64 %2576 to double*
  %2579 = load double, double* %2578, align 8
  %2580 = fadd double %2567, %2579
  store double %2580, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2581 = add i64 %2552, -120
  %2582 = add i64 %2554, 31
  store i64 %2582, i64* %PC.i, align 8
  %2583 = inttoptr i64 %2581 to double*
  store double %2580, double* %2583, align 8
  %2584 = load i64, i64* %RBP.i, align 8
  %2585 = add i64 %2584, -16
  %2586 = load i64, i64* %PC.i, align 8
  %2587 = add i64 %2586, 4
  store i64 %2587, i64* %PC.i, align 8
  %2588 = inttoptr i64 %2585 to i64*
  %2589 = load i64, i64* %2588, align 8
  store i64 %2589, i64* %RCX.i2236, align 8
  %2590 = add i64 %2584, -28
  %2591 = add i64 %2586, 7
  store i64 %2591, i64* %PC.i, align 8
  %2592 = inttoptr i64 %2590 to i32*
  %2593 = load i32, i32* %2592, align 4
  %2594 = add i32 %2593, 1
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RAX.i2224, align 8
  %2596 = icmp eq i32 %2593, -1
  %2597 = icmp eq i32 %2594, 0
  %2598 = or i1 %2596, %2597
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %14, align 1
  %2600 = and i32 %2594, 255
  %2601 = tail call i32 @llvm.ctpop.i32(i32 %2600)
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = xor i8 %2603, 1
  store i8 %2604, i8* %21, align 1
  %2605 = xor i32 %2593, %2594
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  store i8 %2608, i8* %27, align 1
  %2609 = icmp eq i32 %2594, 0
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %30, align 1
  %2611 = lshr i32 %2594, 31
  %2612 = trunc i32 %2611 to i8
  store i8 %2612, i8* %33, align 1
  %2613 = lshr i32 %2593, 31
  %2614 = xor i32 %2611, %2613
  %2615 = add nuw nsw i32 %2614, %2611
  %2616 = icmp eq i32 %2615, 2
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %39, align 1
  %2618 = sext i32 %2594 to i64
  store i64 %2618, i64* %RDX.i2239, align 8
  %2619 = shl nsw i64 %2618, 3
  %2620 = add i64 %2619, %2589
  %2621 = add i64 %2586, 18
  store i64 %2621, i64* %PC.i, align 8
  %2622 = inttoptr i64 %2620 to double*
  %2623 = load double, double* %2622, align 8
  store double %2623, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2624 = add i64 %2586, 22
  store i64 %2624, i64* %PC.i, align 8
  %2625 = load i64, i64* %2588, align 8
  store i64 %2625, i64* %RCX.i2236, align 8
  %2626 = add i64 %2584, -32
  %2627 = add i64 %2586, 25
  store i64 %2627, i64* %PC.i, align 8
  %2628 = inttoptr i64 %2626 to i32*
  %2629 = load i32, i32* %2628, align 4
  %2630 = add i32 %2629, 1
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RAX.i2224, align 8
  %2632 = icmp eq i32 %2629, -1
  %2633 = icmp eq i32 %2630, 0
  %2634 = or i1 %2632, %2633
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %14, align 1
  %2636 = and i32 %2630, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %21, align 1
  %2641 = xor i32 %2629, %2630
  %2642 = lshr i32 %2641, 4
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %27, align 1
  %2645 = icmp eq i32 %2630, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %30, align 1
  %2647 = lshr i32 %2630, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %33, align 1
  %2649 = lshr i32 %2629, 31
  %2650 = xor i32 %2647, %2649
  %2651 = add nuw nsw i32 %2650, %2647
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %39, align 1
  %2654 = sext i32 %2630 to i64
  store i64 %2654, i64* %RDX.i2239, align 8
  %2655 = shl nsw i64 %2654, 3
  %2656 = add i64 %2655, %2625
  %2657 = add i64 %2586, 36
  store i64 %2657, i64* %PC.i, align 8
  %2658 = inttoptr i64 %2656 to double*
  %2659 = load double, double* %2658, align 8
  %2660 = fadd double %2623, %2659
  store double %2660, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2661 = load i64, i64* %RBP.i, align 8
  %2662 = add i64 %2661, -128
  %2663 = add i64 %2586, 41
  store i64 %2663, i64* %PC.i, align 8
  %2664 = inttoptr i64 %2662 to double*
  store double %2660, double* %2664, align 8
  %2665 = load i64, i64* %RBP.i, align 8
  %2666 = add i64 %2665, -16
  %2667 = load i64, i64* %PC.i, align 8
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC.i, align 8
  %2669 = inttoptr i64 %2666 to i64*
  %2670 = load i64, i64* %2669, align 8
  store i64 %2670, i64* %RCX.i2236, align 8
  %2671 = add i64 %2665, -28
  %2672 = add i64 %2667, 8
  store i64 %2672, i64* %PC.i, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = sext i32 %2674 to i64
  store i64 %2675, i64* %RDX.i2239, align 8
  %2676 = shl nsw i64 %2675, 3
  %2677 = add i64 %2676, %2670
  %2678 = add i64 %2667, 13
  store i64 %2678, i64* %PC.i, align 8
  %2679 = inttoptr i64 %2677 to double*
  %2680 = load double, double* %2679, align 8
  store double %2680, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2681 = add i64 %2667, 17
  store i64 %2681, i64* %PC.i, align 8
  %2682 = load i64, i64* %2669, align 8
  store i64 %2682, i64* %RCX.i2236, align 8
  %2683 = add i64 %2665, -32
  %2684 = add i64 %2667, 21
  store i64 %2684, i64* %PC.i, align 8
  %2685 = inttoptr i64 %2683 to i32*
  %2686 = load i32, i32* %2685, align 4
  %2687 = sext i32 %2686 to i64
  store i64 %2687, i64* %RDX.i2239, align 8
  %2688 = shl nsw i64 %2687, 3
  %2689 = add i64 %2688, %2682
  %2690 = add i64 %2667, 26
  store i64 %2690, i64* %PC.i, align 8
  %2691 = inttoptr i64 %2689 to double*
  %2692 = load double, double* %2691, align 8
  %2693 = fsub double %2680, %2692
  store double %2693, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2694 = add i64 %2665, -136
  %2695 = add i64 %2667, 34
  store i64 %2695, i64* %PC.i, align 8
  %2696 = inttoptr i64 %2694 to double*
  store double %2693, double* %2696, align 8
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -16
  %2699 = load i64, i64* %PC.i, align 8
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %PC.i, align 8
  %2701 = inttoptr i64 %2698 to i64*
  %2702 = load i64, i64* %2701, align 8
  store i64 %2702, i64* %RCX.i2236, align 8
  %2703 = add i64 %2697, -28
  %2704 = add i64 %2699, 7
  store i64 %2704, i64* %PC.i, align 8
  %2705 = inttoptr i64 %2703 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = add i32 %2706, 1
  %2708 = zext i32 %2707 to i64
  store i64 %2708, i64* %RAX.i2224, align 8
  %2709 = icmp eq i32 %2706, -1
  %2710 = icmp eq i32 %2707, 0
  %2711 = or i1 %2709, %2710
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %14, align 1
  %2713 = and i32 %2707, 255
  %2714 = tail call i32 @llvm.ctpop.i32(i32 %2713)
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  %2717 = xor i8 %2716, 1
  store i8 %2717, i8* %21, align 1
  %2718 = xor i32 %2706, %2707
  %2719 = lshr i32 %2718, 4
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  store i8 %2721, i8* %27, align 1
  %2722 = icmp eq i32 %2707, 0
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %30, align 1
  %2724 = lshr i32 %2707, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %33, align 1
  %2726 = lshr i32 %2706, 31
  %2727 = xor i32 %2724, %2726
  %2728 = add nuw nsw i32 %2727, %2724
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %39, align 1
  %2731 = sext i32 %2707 to i64
  store i64 %2731, i64* %RDX.i2239, align 8
  %2732 = shl nsw i64 %2731, 3
  %2733 = add i64 %2732, %2702
  %2734 = add i64 %2699, 18
  store i64 %2734, i64* %PC.i, align 8
  %2735 = inttoptr i64 %2733 to double*
  %2736 = load double, double* %2735, align 8
  store double %2736, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2737 = add i64 %2699, 22
  store i64 %2737, i64* %PC.i, align 8
  %2738 = load i64, i64* %2701, align 8
  store i64 %2738, i64* %RCX.i2236, align 8
  %2739 = add i64 %2697, -32
  %2740 = add i64 %2699, 25
  store i64 %2740, i64* %PC.i, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = add i32 %2742, 1
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i2224, align 8
  %2745 = icmp eq i32 %2742, -1
  %2746 = icmp eq i32 %2743, 0
  %2747 = or i1 %2745, %2746
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %14, align 1
  %2749 = and i32 %2743, 255
  %2750 = tail call i32 @llvm.ctpop.i32(i32 %2749)
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = xor i8 %2752, 1
  store i8 %2753, i8* %21, align 1
  %2754 = xor i32 %2742, %2743
  %2755 = lshr i32 %2754, 4
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  store i8 %2757, i8* %27, align 1
  %2758 = icmp eq i32 %2743, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %30, align 1
  %2760 = lshr i32 %2743, 31
  %2761 = trunc i32 %2760 to i8
  store i8 %2761, i8* %33, align 1
  %2762 = lshr i32 %2742, 31
  %2763 = xor i32 %2760, %2762
  %2764 = add nuw nsw i32 %2763, %2760
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %39, align 1
  %2767 = sext i32 %2743 to i64
  store i64 %2767, i64* %RDX.i2239, align 8
  %2768 = shl nsw i64 %2767, 3
  %2769 = add i64 %2768, %2738
  %2770 = add i64 %2699, 36
  store i64 %2770, i64* %PC.i, align 8
  %2771 = inttoptr i64 %2769 to double*
  %2772 = load double, double* %2771, align 8
  %2773 = fsub double %2736, %2772
  store double %2773, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -144
  %2776 = add i64 %2699, 44
  store i64 %2776, i64* %PC.i, align 8
  %2777 = inttoptr i64 %2775 to double*
  store double %2773, double* %2777, align 8
  %2778 = load i64, i64* %RBP.i, align 8
  %2779 = add i64 %2778, -16
  %2780 = load i64, i64* %PC.i, align 8
  %2781 = add i64 %2780, 4
  store i64 %2781, i64* %PC.i, align 8
  %2782 = inttoptr i64 %2779 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %RCX.i2236, align 8
  %2784 = add i64 %2778, -36
  %2785 = add i64 %2780, 8
  store i64 %2785, i64* %PC.i, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = sext i32 %2787 to i64
  store i64 %2788, i64* %RDX.i2239, align 8
  %2789 = shl nsw i64 %2788, 3
  %2790 = add i64 %2789, %2783
  %2791 = add i64 %2780, 13
  store i64 %2791, i64* %PC.i, align 8
  %2792 = inttoptr i64 %2790 to double*
  %2793 = load double, double* %2792, align 8
  store double %2793, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2794 = add i64 %2780, 17
  store i64 %2794, i64* %PC.i, align 8
  %2795 = load i64, i64* %2782, align 8
  store i64 %2795, i64* %RCX.i2236, align 8
  %2796 = add i64 %2778, -40
  %2797 = add i64 %2780, 21
  store i64 %2797, i64* %PC.i, align 8
  %2798 = inttoptr i64 %2796 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = sext i32 %2799 to i64
  store i64 %2800, i64* %RDX.i2239, align 8
  %2801 = shl nsw i64 %2800, 3
  %2802 = add i64 %2801, %2795
  %2803 = add i64 %2780, 26
  store i64 %2803, i64* %PC.i, align 8
  %2804 = inttoptr i64 %2802 to double*
  %2805 = load double, double* %2804, align 8
  %2806 = fadd double %2793, %2805
  store double %2806, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2807 = add i64 %2778, -152
  %2808 = add i64 %2780, 34
  store i64 %2808, i64* %PC.i, align 8
  %2809 = inttoptr i64 %2807 to double*
  store double %2806, double* %2809, align 8
  %2810 = load i64, i64* %RBP.i, align 8
  %2811 = add i64 %2810, -16
  %2812 = load i64, i64* %PC.i, align 8
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i, align 8
  %2814 = inttoptr i64 %2811 to i64*
  %2815 = load i64, i64* %2814, align 8
  store i64 %2815, i64* %RCX.i2236, align 8
  %2816 = add i64 %2810, -36
  %2817 = add i64 %2812, 7
  store i64 %2817, i64* %PC.i, align 8
  %2818 = inttoptr i64 %2816 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = add i32 %2819, 1
  %2821 = zext i32 %2820 to i64
  store i64 %2821, i64* %RAX.i2224, align 8
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
  %2831 = xor i32 %2819, %2820
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %27, align 1
  %2835 = icmp eq i32 %2820, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %30, align 1
  %2837 = lshr i32 %2820, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %33, align 1
  %2839 = lshr i32 %2819, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2837
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %39, align 1
  %2844 = sext i32 %2820 to i64
  store i64 %2844, i64* %RDX.i2239, align 8
  %2845 = shl nsw i64 %2844, 3
  %2846 = add i64 %2845, %2815
  %2847 = add i64 %2812, 18
  store i64 %2847, i64* %PC.i, align 8
  %2848 = inttoptr i64 %2846 to double*
  %2849 = load double, double* %2848, align 8
  store double %2849, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2850 = add i64 %2812, 22
  store i64 %2850, i64* %PC.i, align 8
  %2851 = load i64, i64* %2814, align 8
  store i64 %2851, i64* %RCX.i2236, align 8
  %2852 = add i64 %2810, -40
  %2853 = add i64 %2812, 25
  store i64 %2853, i64* %PC.i, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = add i32 %2855, 1
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RAX.i2224, align 8
  %2858 = icmp eq i32 %2855, -1
  %2859 = icmp eq i32 %2856, 0
  %2860 = or i1 %2858, %2859
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %14, align 1
  %2862 = and i32 %2856, 255
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2862)
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  store i8 %2866, i8* %21, align 1
  %2867 = xor i32 %2855, %2856
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  store i8 %2870, i8* %27, align 1
  %2871 = icmp eq i32 %2856, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %30, align 1
  %2873 = lshr i32 %2856, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %33, align 1
  %2875 = lshr i32 %2855, 31
  %2876 = xor i32 %2873, %2875
  %2877 = add nuw nsw i32 %2876, %2873
  %2878 = icmp eq i32 %2877, 2
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %39, align 1
  %2880 = sext i32 %2856 to i64
  store i64 %2880, i64* %RDX.i2239, align 8
  %2881 = shl nsw i64 %2880, 3
  %2882 = add i64 %2881, %2851
  %2883 = add i64 %2812, 36
  store i64 %2883, i64* %PC.i, align 8
  %2884 = inttoptr i64 %2882 to double*
  %2885 = load double, double* %2884, align 8
  %2886 = fadd double %2849, %2885
  store double %2886, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -160
  %2889 = add i64 %2812, 44
  store i64 %2889, i64* %PC.i, align 8
  %2890 = inttoptr i64 %2888 to double*
  store double %2886, double* %2890, align 8
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -16
  %2893 = load i64, i64* %PC.i, align 8
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %PC.i, align 8
  %2895 = inttoptr i64 %2892 to i64*
  %2896 = load i64, i64* %2895, align 8
  store i64 %2896, i64* %RCX.i2236, align 8
  %2897 = add i64 %2891, -36
  %2898 = add i64 %2893, 8
  store i64 %2898, i64* %PC.i, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = sext i32 %2900 to i64
  store i64 %2901, i64* %RDX.i2239, align 8
  %2902 = shl nsw i64 %2901, 3
  %2903 = add i64 %2902, %2896
  %2904 = add i64 %2893, 13
  store i64 %2904, i64* %PC.i, align 8
  %2905 = inttoptr i64 %2903 to double*
  %2906 = load double, double* %2905, align 8
  store double %2906, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2907 = add i64 %2893, 17
  store i64 %2907, i64* %PC.i, align 8
  %2908 = load i64, i64* %2895, align 8
  store i64 %2908, i64* %RCX.i2236, align 8
  %2909 = add i64 %2891, -40
  %2910 = add i64 %2893, 21
  store i64 %2910, i64* %PC.i, align 8
  %2911 = inttoptr i64 %2909 to i32*
  %2912 = load i32, i32* %2911, align 4
  %2913 = sext i32 %2912 to i64
  store i64 %2913, i64* %RDX.i2239, align 8
  %2914 = shl nsw i64 %2913, 3
  %2915 = add i64 %2914, %2908
  %2916 = add i64 %2893, 26
  store i64 %2916, i64* %PC.i, align 8
  %2917 = inttoptr i64 %2915 to double*
  %2918 = load double, double* %2917, align 8
  %2919 = fsub double %2906, %2918
  store double %2919, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2920 = add i64 %2891, -168
  %2921 = add i64 %2893, 34
  store i64 %2921, i64* %PC.i, align 8
  %2922 = inttoptr i64 %2920 to double*
  store double %2919, double* %2922, align 8
  %2923 = load i64, i64* %RBP.i, align 8
  %2924 = add i64 %2923, -16
  %2925 = load i64, i64* %PC.i, align 8
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i, align 8
  %2927 = inttoptr i64 %2924 to i64*
  %2928 = load i64, i64* %2927, align 8
  store i64 %2928, i64* %RCX.i2236, align 8
  %2929 = add i64 %2923, -36
  %2930 = add i64 %2925, 7
  store i64 %2930, i64* %PC.i, align 8
  %2931 = inttoptr i64 %2929 to i32*
  %2932 = load i32, i32* %2931, align 4
  %2933 = add i32 %2932, 1
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RAX.i2224, align 8
  %2935 = icmp eq i32 %2932, -1
  %2936 = icmp eq i32 %2933, 0
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %14, align 1
  %2939 = and i32 %2933, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939)
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %21, align 1
  %2944 = xor i32 %2932, %2933
  %2945 = lshr i32 %2944, 4
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %27, align 1
  %2948 = icmp eq i32 %2933, 0
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %30, align 1
  %2950 = lshr i32 %2933, 31
  %2951 = trunc i32 %2950 to i8
  store i8 %2951, i8* %33, align 1
  %2952 = lshr i32 %2932, 31
  %2953 = xor i32 %2950, %2952
  %2954 = add nuw nsw i32 %2953, %2950
  %2955 = icmp eq i32 %2954, 2
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %39, align 1
  %2957 = sext i32 %2933 to i64
  store i64 %2957, i64* %RDX.i2239, align 8
  %2958 = shl nsw i64 %2957, 3
  %2959 = add i64 %2958, %2928
  %2960 = add i64 %2925, 18
  store i64 %2960, i64* %PC.i, align 8
  %2961 = inttoptr i64 %2959 to double*
  %2962 = load double, double* %2961, align 8
  store double %2962, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2963 = add i64 %2925, 22
  store i64 %2963, i64* %PC.i, align 8
  %2964 = load i64, i64* %2927, align 8
  store i64 %2964, i64* %RCX.i2236, align 8
  %2965 = add i64 %2923, -40
  %2966 = add i64 %2925, 25
  store i64 %2966, i64* %PC.i, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = add i32 %2968, 1
  %2970 = zext i32 %2969 to i64
  store i64 %2970, i64* %RAX.i2224, align 8
  %2971 = icmp eq i32 %2968, -1
  %2972 = icmp eq i32 %2969, 0
  %2973 = or i1 %2971, %2972
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %14, align 1
  %2975 = and i32 %2969, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975)
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %21, align 1
  %2980 = xor i32 %2968, %2969
  %2981 = lshr i32 %2980, 4
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  store i8 %2983, i8* %27, align 1
  %2984 = icmp eq i32 %2969, 0
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %30, align 1
  %2986 = lshr i32 %2969, 31
  %2987 = trunc i32 %2986 to i8
  store i8 %2987, i8* %33, align 1
  %2988 = lshr i32 %2968, 31
  %2989 = xor i32 %2986, %2988
  %2990 = add nuw nsw i32 %2989, %2986
  %2991 = icmp eq i32 %2990, 2
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %39, align 1
  %2993 = sext i32 %2969 to i64
  store i64 %2993, i64* %RDX.i2239, align 8
  %2994 = shl nsw i64 %2993, 3
  %2995 = add i64 %2994, %2964
  %2996 = add i64 %2925, 36
  store i64 %2996, i64* %PC.i, align 8
  %2997 = inttoptr i64 %2995 to double*
  %2998 = load double, double* %2997, align 8
  %2999 = fsub double %2962, %2998
  store double %2999, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3000 = load i64, i64* %RBP.i, align 8
  %3001 = add i64 %3000, -176
  %3002 = add i64 %2925, 44
  store i64 %3002, i64* %PC.i, align 8
  %3003 = inttoptr i64 %3001 to double*
  store double %2999, double* %3003, align 8
  %3004 = load i64, i64* %RBP.i, align 8
  %3005 = add i64 %3004, -120
  %3006 = load i64, i64* %PC.i, align 8
  %3007 = add i64 %3006, 5
  store i64 %3007, i64* %PC.i, align 8
  %3008 = inttoptr i64 %3005 to double*
  %3009 = load double, double* %3008, align 8
  store double %3009, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3010 = add i64 %3004, -152
  %3011 = add i64 %3006, 13
  store i64 %3011, i64* %PC.i, align 8
  %3012 = inttoptr i64 %3010 to double*
  %3013 = load double, double* %3012, align 8
  %3014 = fadd double %3009, %3013
  store double %3014, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3015 = add i64 %3004, -16
  %3016 = add i64 %3006, 17
  store i64 %3016, i64* %PC.i, align 8
  %3017 = inttoptr i64 %3015 to i64*
  %3018 = load i64, i64* %3017, align 8
  store i64 %3018, i64* %RCX.i2236, align 8
  %3019 = add i64 %3004, -28
  %3020 = add i64 %3006, 21
  store i64 %3020, i64* %PC.i, align 8
  %3021 = inttoptr i64 %3019 to i32*
  %3022 = load i32, i32* %3021, align 4
  %3023 = sext i32 %3022 to i64
  store i64 %3023, i64* %RDX.i2239, align 8
  %3024 = shl nsw i64 %3023, 3
  %3025 = add i64 %3024, %3018
  %3026 = add i64 %3006, 26
  store i64 %3026, i64* %PC.i, align 8
  %3027 = inttoptr i64 %3025 to double*
  store double %3014, double* %3027, align 8
  %3028 = load i64, i64* %RBP.i, align 8
  %3029 = add i64 %3028, -128
  %3030 = load i64, i64* %PC.i, align 8
  %3031 = add i64 %3030, 5
  store i64 %3031, i64* %PC.i, align 8
  %3032 = inttoptr i64 %3029 to double*
  %3033 = load double, double* %3032, align 8
  store double %3033, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3034 = add i64 %3028, -160
  %3035 = add i64 %3030, 13
  store i64 %3035, i64* %PC.i, align 8
  %3036 = inttoptr i64 %3034 to double*
  %3037 = load double, double* %3036, align 8
  %3038 = fadd double %3033, %3037
  store double %3038, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3039 = add i64 %3028, -16
  %3040 = add i64 %3030, 17
  store i64 %3040, i64* %PC.i, align 8
  %3041 = inttoptr i64 %3039 to i64*
  %3042 = load i64, i64* %3041, align 8
  store i64 %3042, i64* %RCX.i2236, align 8
  %3043 = add i64 %3028, -28
  %3044 = add i64 %3030, 20
  store i64 %3044, i64* %PC.i, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = add i32 %3046, 1
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i2224, align 8
  %3049 = icmp eq i32 %3046, -1
  %3050 = icmp eq i32 %3047, 0
  %3051 = or i1 %3049, %3050
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %14, align 1
  %3053 = and i32 %3047, 255
  %3054 = tail call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %21, align 1
  %3058 = xor i32 %3046, %3047
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %27, align 1
  %3062 = icmp eq i32 %3047, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %30, align 1
  %3064 = lshr i32 %3047, 31
  %3065 = trunc i32 %3064 to i8
  store i8 %3065, i8* %33, align 1
  %3066 = lshr i32 %3046, 31
  %3067 = xor i32 %3064, %3066
  %3068 = add nuw nsw i32 %3067, %3064
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %39, align 1
  %3071 = sext i32 %3047 to i64
  store i64 %3071, i64* %RDX.i2239, align 8
  %3072 = shl nsw i64 %3071, 3
  %3073 = add i64 %3072, %3042
  %3074 = add i64 %3030, 31
  store i64 %3074, i64* %PC.i, align 8
  %3075 = inttoptr i64 %3073 to double*
  store double %3038, double* %3075, align 8
  %3076 = load i64, i64* %RBP.i, align 8
  %3077 = add i64 %3076, -152
  %3078 = load i64, i64* %PC.i, align 8
  %3079 = add i64 %3078, 8
  store i64 %3079, i64* %PC.i, align 8
  %3080 = inttoptr i64 %3077 to double*
  %3081 = load double, double* %3080, align 8
  store double %3081, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3082 = add i64 %3076, -120
  %3083 = add i64 %3078, 13
  store i64 %3083, i64* %PC.i, align 8
  %3084 = inttoptr i64 %3082 to double*
  %3085 = load double, double* %3084, align 8
  %3086 = fsub double %3085, %3081
  store double %3086, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3087 = add i64 %3078, 22
  store i64 %3087, i64* %PC.i, align 8
  store double %3086, double* %3084, align 8
  %3088 = load i64, i64* %RBP.i, align 8
  %3089 = add i64 %3088, -160
  %3090 = load i64, i64* %PC.i, align 8
  %3091 = add i64 %3090, 8
  store i64 %3091, i64* %PC.i, align 8
  %3092 = inttoptr i64 %3089 to double*
  %3093 = load double, double* %3092, align 8
  store double %3093, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3094 = add i64 %3088, -128
  %3095 = add i64 %3090, 13
  store i64 %3095, i64* %PC.i, align 8
  %3096 = inttoptr i64 %3094 to double*
  %3097 = load double, double* %3096, align 8
  %3098 = fsub double %3097, %3093
  store double %3098, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3099 = add i64 %3090, 22
  store i64 %3099, i64* %PC.i, align 8
  store double %3098, double* %3096, align 8
  %3100 = load i64, i64* %RBP.i, align 8
  %3101 = add i64 %3100, -88
  %3102 = load i64, i64* %PC.i, align 8
  %3103 = add i64 %3102, 5
  store i64 %3103, i64* %PC.i, align 8
  %3104 = inttoptr i64 %3101 to double*
  %3105 = load double, double* %3104, align 8
  store double %3105, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3106 = add i64 %3100, -120
  %3107 = add i64 %3102, 10
  store i64 %3107, i64* %PC.i, align 8
  %3108 = inttoptr i64 %3106 to double*
  %3109 = load double, double* %3108, align 8
  %3110 = fmul double %3105, %3109
  store double %3110, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3111 = add i64 %3100, -96
  %3112 = add i64 %3102, 15
  store i64 %3112, i64* %PC.i, align 8
  %3113 = inttoptr i64 %3111 to double*
  %3114 = load double, double* %3113, align 8
  store double %3114, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3115 = add i64 %3100, -128
  %3116 = add i64 %3102, 20
  store i64 %3116, i64* %PC.i, align 8
  %3117 = inttoptr i64 %3115 to double*
  %3118 = load double, double* %3117, align 8
  %3119 = fmul double %3114, %3118
  store double %3119, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3120 = fsub double %3110, %3119
  store double %3120, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3121 = add i64 %3100, -16
  %3122 = add i64 %3102, 28
  store i64 %3122, i64* %PC.i, align 8
  %3123 = inttoptr i64 %3121 to i64*
  %3124 = load i64, i64* %3123, align 8
  store i64 %3124, i64* %RCX.i2236, align 8
  %3125 = add i64 %3100, -36
  %3126 = add i64 %3102, 32
  store i64 %3126, i64* %PC.i, align 8
  %3127 = inttoptr i64 %3125 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %RDX.i2239, align 8
  %3130 = shl nsw i64 %3129, 3
  %3131 = add i64 %3130, %3124
  %3132 = add i64 %3102, 37
  store i64 %3132, i64* %PC.i, align 8
  %3133 = inttoptr i64 %3131 to double*
  store double %3120, double* %3133, align 8
  %3134 = load i64, i64* %RBP.i, align 8
  %3135 = add i64 %3134, -88
  %3136 = load i64, i64* %PC.i, align 8
  %3137 = add i64 %3136, 5
  store i64 %3137, i64* %PC.i, align 8
  %3138 = inttoptr i64 %3135 to double*
  %3139 = load double, double* %3138, align 8
  store double %3139, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3140 = add i64 %3134, -128
  %3141 = add i64 %3136, 10
  store i64 %3141, i64* %PC.i, align 8
  %3142 = inttoptr i64 %3140 to double*
  %3143 = load double, double* %3142, align 8
  %3144 = fmul double %3139, %3143
  store double %3144, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3145 = add i64 %3134, -96
  %3146 = add i64 %3136, 15
  store i64 %3146, i64* %PC.i, align 8
  %3147 = inttoptr i64 %3145 to double*
  %3148 = load double, double* %3147, align 8
  store double %3148, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3149 = add i64 %3134, -120
  %3150 = add i64 %3136, 20
  store i64 %3150, i64* %PC.i, align 8
  %3151 = inttoptr i64 %3149 to double*
  %3152 = load double, double* %3151, align 8
  %3153 = fmul double %3148, %3152
  store double %3153, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3154 = fadd double %3144, %3153
  store double %3154, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3155 = add i64 %3134, -16
  %3156 = add i64 %3136, 28
  store i64 %3156, i64* %PC.i, align 8
  %3157 = inttoptr i64 %3155 to i64*
  %3158 = load i64, i64* %3157, align 8
  store i64 %3158, i64* %RCX.i2236, align 8
  %3159 = add i64 %3134, -36
  %3160 = add i64 %3136, 31
  store i64 %3160, i64* %PC.i, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = add i32 %3162, 1
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RAX.i2224, align 8
  %3165 = icmp eq i32 %3162, -1
  %3166 = icmp eq i32 %3163, 0
  %3167 = or i1 %3165, %3166
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %14, align 1
  %3169 = and i32 %3163, 255
  %3170 = tail call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %21, align 1
  %3174 = xor i32 %3162, %3163
  %3175 = lshr i32 %3174, 4
  %3176 = trunc i32 %3175 to i8
  %3177 = and i8 %3176, 1
  store i8 %3177, i8* %27, align 1
  %3178 = icmp eq i32 %3163, 0
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %30, align 1
  %3180 = lshr i32 %3163, 31
  %3181 = trunc i32 %3180 to i8
  store i8 %3181, i8* %33, align 1
  %3182 = lshr i32 %3162, 31
  %3183 = xor i32 %3180, %3182
  %3184 = add nuw nsw i32 %3183, %3180
  %3185 = icmp eq i32 %3184, 2
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %39, align 1
  %3187 = sext i32 %3163 to i64
  store i64 %3187, i64* %RDX.i2239, align 8
  %3188 = shl nsw i64 %3187, 3
  %3189 = add i64 %3188, %3158
  %3190 = add i64 %3136, 42
  store i64 %3190, i64* %PC.i, align 8
  %3191 = inttoptr i64 %3189 to double*
  store double %3154, double* %3191, align 8
  %3192 = load i64, i64* %RBP.i, align 8
  %3193 = add i64 %3192, -136
  %3194 = load i64, i64* %PC.i, align 8
  %3195 = add i64 %3194, 8
  store i64 %3195, i64* %PC.i, align 8
  %3196 = inttoptr i64 %3193 to double*
  %3197 = load double, double* %3196, align 8
  store double %3197, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3198 = add i64 %3192, -176
  %3199 = add i64 %3194, 16
  store i64 %3199, i64* %PC.i, align 8
  %3200 = inttoptr i64 %3198 to double*
  %3201 = load double, double* %3200, align 8
  %3202 = fsub double %3197, %3201
  store double %3202, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3203 = add i64 %3192, -120
  %3204 = add i64 %3194, 21
  store i64 %3204, i64* %PC.i, align 8
  %3205 = inttoptr i64 %3203 to double*
  store double %3202, double* %3205, align 8
  %3206 = load i64, i64* %RBP.i, align 8
  %3207 = add i64 %3206, -144
  %3208 = load i64, i64* %PC.i, align 8
  %3209 = add i64 %3208, 8
  store i64 %3209, i64* %PC.i, align 8
  %3210 = inttoptr i64 %3207 to double*
  %3211 = load double, double* %3210, align 8
  store double %3211, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3212 = add i64 %3206, -168
  %3213 = add i64 %3208, 16
  store i64 %3213, i64* %PC.i, align 8
  %3214 = inttoptr i64 %3212 to double*
  %3215 = load double, double* %3214, align 8
  %3216 = fadd double %3211, %3215
  store double %3216, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3217 = add i64 %3206, -128
  %3218 = add i64 %3208, 21
  store i64 %3218, i64* %PC.i, align 8
  %3219 = inttoptr i64 %3217 to double*
  store double %3216, double* %3219, align 8
  %3220 = load i64, i64* %RBP.i, align 8
  %3221 = add i64 %3220, -72
  %3222 = load i64, i64* %PC.i, align 8
  %3223 = add i64 %3222, 5
  store i64 %3223, i64* %PC.i, align 8
  %3224 = inttoptr i64 %3221 to double*
  %3225 = load double, double* %3224, align 8
  store double %3225, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3226 = add i64 %3220, -120
  %3227 = add i64 %3222, 10
  store i64 %3227, i64* %PC.i, align 8
  %3228 = inttoptr i64 %3226 to double*
  %3229 = load double, double* %3228, align 8
  %3230 = fmul double %3225, %3229
  store double %3230, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3231 = add i64 %3220, -80
  %3232 = add i64 %3222, 15
  store i64 %3232, i64* %PC.i, align 8
  %3233 = inttoptr i64 %3231 to double*
  %3234 = load double, double* %3233, align 8
  store double %3234, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3235 = add i64 %3220, -128
  %3236 = add i64 %3222, 20
  store i64 %3236, i64* %PC.i, align 8
  %3237 = inttoptr i64 %3235 to double*
  %3238 = load double, double* %3237, align 8
  %3239 = fmul double %3234, %3238
  store double %3239, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3240 = fsub double %3230, %3239
  store double %3240, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3241 = add i64 %3220, -16
  %3242 = add i64 %3222, 28
  store i64 %3242, i64* %PC.i, align 8
  %3243 = inttoptr i64 %3241 to i64*
  %3244 = load i64, i64* %3243, align 8
  store i64 %3244, i64* %RCX.i2236, align 8
  %3245 = add i64 %3220, -32
  %3246 = add i64 %3222, 32
  store i64 %3246, i64* %PC.i, align 8
  %3247 = inttoptr i64 %3245 to i32*
  %3248 = load i32, i32* %3247, align 4
  %3249 = sext i32 %3248 to i64
  store i64 %3249, i64* %RDX.i2239, align 8
  %3250 = shl nsw i64 %3249, 3
  %3251 = add i64 %3250, %3244
  %3252 = add i64 %3222, 37
  store i64 %3252, i64* %PC.i, align 8
  %3253 = inttoptr i64 %3251 to double*
  store double %3240, double* %3253, align 8
  %3254 = load i64, i64* %RBP.i, align 8
  %3255 = add i64 %3254, -72
  %3256 = load i64, i64* %PC.i, align 8
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %PC.i, align 8
  %3258 = inttoptr i64 %3255 to double*
  %3259 = load double, double* %3258, align 8
  store double %3259, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3260 = add i64 %3254, -128
  %3261 = add i64 %3256, 10
  store i64 %3261, i64* %PC.i, align 8
  %3262 = inttoptr i64 %3260 to double*
  %3263 = load double, double* %3262, align 8
  %3264 = fmul double %3259, %3263
  store double %3264, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3265 = add i64 %3254, -80
  %3266 = add i64 %3256, 15
  store i64 %3266, i64* %PC.i, align 8
  %3267 = inttoptr i64 %3265 to double*
  %3268 = load double, double* %3267, align 8
  store double %3268, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3269 = add i64 %3254, -120
  %3270 = add i64 %3256, 20
  store i64 %3270, i64* %PC.i, align 8
  %3271 = inttoptr i64 %3269 to double*
  %3272 = load double, double* %3271, align 8
  %3273 = fmul double %3268, %3272
  store double %3273, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3274 = fadd double %3264, %3273
  store double %3274, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3275 = add i64 %3254, -16
  %3276 = add i64 %3256, 28
  store i64 %3276, i64* %PC.i, align 8
  %3277 = inttoptr i64 %3275 to i64*
  %3278 = load i64, i64* %3277, align 8
  store i64 %3278, i64* %RCX.i2236, align 8
  %3279 = add i64 %3254, -32
  %3280 = add i64 %3256, 31
  store i64 %3280, i64* %PC.i, align 8
  %3281 = inttoptr i64 %3279 to i32*
  %3282 = load i32, i32* %3281, align 4
  %3283 = add i32 %3282, 1
  %3284 = zext i32 %3283 to i64
  store i64 %3284, i64* %RAX.i2224, align 8
  %3285 = icmp eq i32 %3282, -1
  %3286 = icmp eq i32 %3283, 0
  %3287 = or i1 %3285, %3286
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %14, align 1
  %3289 = and i32 %3283, 255
  %3290 = tail call i32 @llvm.ctpop.i32(i32 %3289)
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  %3293 = xor i8 %3292, 1
  store i8 %3293, i8* %21, align 1
  %3294 = xor i32 %3282, %3283
  %3295 = lshr i32 %3294, 4
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  store i8 %3297, i8* %27, align 1
  %3298 = icmp eq i32 %3283, 0
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %30, align 1
  %3300 = lshr i32 %3283, 31
  %3301 = trunc i32 %3300 to i8
  store i8 %3301, i8* %33, align 1
  %3302 = lshr i32 %3282, 31
  %3303 = xor i32 %3300, %3302
  %3304 = add nuw nsw i32 %3303, %3300
  %3305 = icmp eq i32 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %39, align 1
  %3307 = sext i32 %3283 to i64
  store i64 %3307, i64* %RDX.i2239, align 8
  %3308 = shl nsw i64 %3307, 3
  %3309 = add i64 %3308, %3278
  %3310 = add i64 %3256, 42
  store i64 %3310, i64* %PC.i, align 8
  %3311 = inttoptr i64 %3309 to double*
  store double %3274, double* %3311, align 8
  %3312 = load i64, i64* %RBP.i, align 8
  %3313 = add i64 %3312, -136
  %3314 = load i64, i64* %PC.i, align 8
  %3315 = add i64 %3314, 8
  store i64 %3315, i64* %PC.i, align 8
  %3316 = inttoptr i64 %3313 to double*
  %3317 = load double, double* %3316, align 8
  store double %3317, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3318 = add i64 %3312, -176
  %3319 = add i64 %3314, 16
  store i64 %3319, i64* %PC.i, align 8
  %3320 = inttoptr i64 %3318 to double*
  %3321 = load double, double* %3320, align 8
  %3322 = fadd double %3317, %3321
  store double %3322, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3323 = add i64 %3312, -120
  %3324 = add i64 %3314, 21
  store i64 %3324, i64* %PC.i, align 8
  %3325 = inttoptr i64 %3323 to double*
  store double %3322, double* %3325, align 8
  %3326 = load i64, i64* %RBP.i, align 8
  %3327 = add i64 %3326, -144
  %3328 = load i64, i64* %PC.i, align 8
  %3329 = add i64 %3328, 8
  store i64 %3329, i64* %PC.i, align 8
  %3330 = inttoptr i64 %3327 to double*
  %3331 = load double, double* %3330, align 8
  store double %3331, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3332 = add i64 %3326, -168
  %3333 = add i64 %3328, 16
  store i64 %3333, i64* %PC.i, align 8
  %3334 = inttoptr i64 %3332 to double*
  %3335 = load double, double* %3334, align 8
  %3336 = fsub double %3331, %3335
  store double %3336, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3337 = add i64 %3326, -128
  %3338 = add i64 %3328, 21
  store i64 %3338, i64* %PC.i, align 8
  %3339 = inttoptr i64 %3337 to double*
  store double %3336, double* %3339, align 8
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -104
  %3342 = load i64, i64* %PC.i, align 8
  %3343 = add i64 %3342, 5
  store i64 %3343, i64* %PC.i, align 8
  %3344 = inttoptr i64 %3341 to double*
  %3345 = load double, double* %3344, align 8
  store double %3345, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3346 = add i64 %3340, -120
  %3347 = add i64 %3342, 10
  store i64 %3347, i64* %PC.i, align 8
  %3348 = inttoptr i64 %3346 to double*
  %3349 = load double, double* %3348, align 8
  %3350 = fmul double %3345, %3349
  store double %3350, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3351 = add i64 %3340, -112
  %3352 = add i64 %3342, 15
  store i64 %3352, i64* %PC.i, align 8
  %3353 = inttoptr i64 %3351 to double*
  %3354 = load double, double* %3353, align 8
  store double %3354, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3355 = add i64 %3340, -128
  %3356 = add i64 %3342, 20
  store i64 %3356, i64* %PC.i, align 8
  %3357 = inttoptr i64 %3355 to double*
  %3358 = load double, double* %3357, align 8
  %3359 = fmul double %3354, %3358
  store double %3359, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3360 = fsub double %3350, %3359
  store double %3360, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3361 = add i64 %3340, -16
  %3362 = add i64 %3342, 28
  store i64 %3362, i64* %PC.i, align 8
  %3363 = inttoptr i64 %3361 to i64*
  %3364 = load i64, i64* %3363, align 8
  store i64 %3364, i64* %RCX.i2236, align 8
  %3365 = add i64 %3340, -40
  %3366 = add i64 %3342, 32
  store i64 %3366, i64* %PC.i, align 8
  %3367 = inttoptr i64 %3365 to i32*
  %3368 = load i32, i32* %3367, align 4
  %3369 = sext i32 %3368 to i64
  store i64 %3369, i64* %RDX.i2239, align 8
  %3370 = shl nsw i64 %3369, 3
  %3371 = add i64 %3370, %3364
  %3372 = add i64 %3342, 37
  store i64 %3372, i64* %PC.i, align 8
  %3373 = inttoptr i64 %3371 to double*
  store double %3360, double* %3373, align 8
  %3374 = load i64, i64* %RBP.i, align 8
  %3375 = add i64 %3374, -104
  %3376 = load i64, i64* %PC.i, align 8
  %3377 = add i64 %3376, 5
  store i64 %3377, i64* %PC.i, align 8
  %3378 = inttoptr i64 %3375 to double*
  %3379 = load double, double* %3378, align 8
  store double %3379, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3380 = add i64 %3374, -128
  %3381 = add i64 %3376, 10
  store i64 %3381, i64* %PC.i, align 8
  %3382 = inttoptr i64 %3380 to double*
  %3383 = load double, double* %3382, align 8
  %3384 = fmul double %3379, %3383
  store double %3384, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3385 = add i64 %3374, -112
  %3386 = add i64 %3376, 15
  store i64 %3386, i64* %PC.i, align 8
  %3387 = inttoptr i64 %3385 to double*
  %3388 = load double, double* %3387, align 8
  store double %3388, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3389 = add i64 %3374, -120
  %3390 = add i64 %3376, 20
  store i64 %3390, i64* %PC.i, align 8
  %3391 = inttoptr i64 %3389 to double*
  %3392 = load double, double* %3391, align 8
  %3393 = fmul double %3388, %3392
  store double %3393, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3394 = fadd double %3384, %3393
  store double %3394, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3395 = add i64 %3374, -16
  %3396 = add i64 %3376, 28
  store i64 %3396, i64* %PC.i, align 8
  %3397 = inttoptr i64 %3395 to i64*
  %3398 = load i64, i64* %3397, align 8
  store i64 %3398, i64* %RCX.i2236, align 8
  %3399 = add i64 %3374, -40
  %3400 = add i64 %3376, 31
  store i64 %3400, i64* %PC.i, align 8
  %3401 = inttoptr i64 %3399 to i32*
  %3402 = load i32, i32* %3401, align 4
  %3403 = add i32 %3402, 1
  %3404 = zext i32 %3403 to i64
  store i64 %3404, i64* %RAX.i2224, align 8
  %3405 = icmp eq i32 %3402, -1
  %3406 = icmp eq i32 %3403, 0
  %3407 = or i1 %3405, %3406
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %14, align 1
  %3409 = and i32 %3403, 255
  %3410 = tail call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  store i8 %3413, i8* %21, align 1
  %3414 = xor i32 %3402, %3403
  %3415 = lshr i32 %3414, 4
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  store i8 %3417, i8* %27, align 1
  %3418 = icmp eq i32 %3403, 0
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %30, align 1
  %3420 = lshr i32 %3403, 31
  %3421 = trunc i32 %3420 to i8
  store i8 %3421, i8* %33, align 1
  %3422 = lshr i32 %3402, 31
  %3423 = xor i32 %3420, %3422
  %3424 = add nuw nsw i32 %3423, %3420
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %39, align 1
  %3427 = sext i32 %3403 to i64
  store i64 %3427, i64* %RDX.i2239, align 8
  %3428 = shl nsw i64 %3427, 3
  %3429 = add i64 %3428, %3398
  %3430 = add i64 %3376, 42
  store i64 %3430, i64* %PC.i, align 8
  %3431 = inttoptr i64 %3429 to double*
  store double %3394, double* %3431, align 8
  %3432 = load i64, i64* %RBP.i, align 8
  %3433 = add i64 %3432, -28
  %3434 = load i64, i64* %PC.i, align 8
  %3435 = add i64 %3434, 3
  store i64 %3435, i64* %PC.i, align 8
  %3436 = inttoptr i64 %3433 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = add i32 %3437, 2
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RAX.i2224, align 8
  %3440 = icmp ugt i32 %3437, -3
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %14, align 1
  %3442 = and i32 %3438, 255
  %3443 = tail call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  store i8 %3446, i8* %21, align 1
  %3447 = xor i32 %3437, %3438
  %3448 = lshr i32 %3447, 4
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  store i8 %3450, i8* %27, align 1
  %3451 = icmp eq i32 %3438, 0
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %30, align 1
  %3453 = lshr i32 %3438, 31
  %3454 = trunc i32 %3453 to i8
  store i8 %3454, i8* %33, align 1
  %3455 = lshr i32 %3437, 31
  %3456 = xor i32 %3453, %3455
  %3457 = add nuw nsw i32 %3456, %3453
  %3458 = icmp eq i32 %3457, 2
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %39, align 1
  %3460 = add i64 %3434, 9
  store i64 %3460, i64* %PC.i, align 8
  store i32 %3438, i32* %3436, align 4
  %3461 = load i64, i64* %PC.i, align 8
  %3462 = add i64 %3461, -781
  store i64 %3462, i64* %3, align 8
  br label %block_.L_403910

block_.L_403c22:                                  ; preds = %block_.L_403910
  %3463 = load i64, i64* bitcast (%G_0x496__rip__type* @G_0x496__rip_ to i64*), align 8
  %3464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %93, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3463, i64* %3464, align 1
  store double 0.000000e+00, double* %96, align 1
  %3465 = add i64 %2391, -24
  %3466 = add i64 %2434, 12
  store i64 %3466, i64* %PC.i, align 8
  %3467 = inttoptr i64 %3465 to i64*
  %3468 = load i64, i64* %3467, align 8
  store i64 %3468, i64* %RAX.i2224, align 8
  %3469 = add i64 %2391, -52
  %3470 = add i64 %2434, 15
  store i64 %3470, i64* %PC.i, align 8
  %3471 = inttoptr i64 %3469 to i32*
  %3472 = load i32, i32* %3471, align 4
  %3473 = add i32 %3472, 2
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RCX.i2236, align 8
  %3475 = icmp ugt i32 %3472, -3
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %14, align 1
  %3477 = and i32 %3473, 255
  %3478 = tail call i32 @llvm.ctpop.i32(i32 %3477)
  %3479 = trunc i32 %3478 to i8
  %3480 = and i8 %3479, 1
  %3481 = xor i8 %3480, 1
  store i8 %3481, i8* %21, align 1
  %3482 = xor i32 %3472, %3473
  %3483 = lshr i32 %3482, 4
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  store i8 %3485, i8* %27, align 1
  %3486 = icmp eq i32 %3473, 0
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %30, align 1
  %3488 = lshr i32 %3473, 31
  %3489 = trunc i32 %3488 to i8
  store i8 %3489, i8* %33, align 1
  %3490 = lshr i32 %3472, 31
  %3491 = xor i32 %3488, %3490
  %3492 = add nuw nsw i32 %3491, %3488
  %3493 = icmp eq i32 %3492, 2
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %39, align 1
  %3495 = sext i32 %3473 to i64
  store i64 %3495, i64* %RDX.i2239, align 8
  %3496 = shl nsw i64 %3495, 3
  %3497 = add i64 %3496, %3468
  %3498 = add i64 %2434, 26
  store i64 %3498, i64* %PC.i, align 8
  %3499 = inttoptr i64 %3497 to i64*
  %3500 = load i64, i64* %3499, align 8
  %3501 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3500, i64* %3501, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3502 = add i64 %2391, -72
  %3503 = add i64 %2434, 31
  store i64 %3503, i64* %PC.i, align 8
  %3504 = inttoptr i64 %3502 to i64*
  store i64 %3500, i64* %3504, align 8
  %3505 = load i64, i64* %RBP.i, align 8
  %3506 = add i64 %3505, -24
  %3507 = load i64, i64* %PC.i, align 8
  %3508 = add i64 %3507, 4
  store i64 %3508, i64* %PC.i, align 8
  %3509 = inttoptr i64 %3506 to i64*
  %3510 = load i64, i64* %3509, align 8
  store i64 %3510, i64* %RAX.i2224, align 8
  %3511 = add i64 %3505, -52
  %3512 = add i64 %3507, 7
  store i64 %3512, i64* %PC.i, align 8
  %3513 = inttoptr i64 %3511 to i32*
  %3514 = load i32, i32* %3513, align 4
  %3515 = add i32 %3514, 3
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RCX.i2236, align 8
  %3517 = icmp ugt i32 %3514, -4
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %14, align 1
  %3519 = and i32 %3515, 255
  %3520 = tail call i32 @llvm.ctpop.i32(i32 %3519)
  %3521 = trunc i32 %3520 to i8
  %3522 = and i8 %3521, 1
  %3523 = xor i8 %3522, 1
  store i8 %3523, i8* %21, align 1
  %3524 = xor i32 %3514, %3515
  %3525 = lshr i32 %3524, 4
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  store i8 %3527, i8* %27, align 1
  %3528 = icmp eq i32 %3515, 0
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %30, align 1
  %3530 = lshr i32 %3515, 31
  %3531 = trunc i32 %3530 to i8
  store i8 %3531, i8* %33, align 1
  %3532 = lshr i32 %3514, 31
  %3533 = xor i32 %3530, %3532
  %3534 = add nuw nsw i32 %3533, %3530
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %39, align 1
  %3537 = sext i32 %3515 to i64
  store i64 %3537, i64* %RDX.i2239, align 8
  %3538 = shl nsw i64 %3537, 3
  %3539 = add i64 %3538, %3510
  %3540 = add i64 %3507, 18
  store i64 %3540, i64* %PC.i, align 8
  %3541 = inttoptr i64 %3539 to i64*
  %3542 = load i64, i64* %3541, align 8
  %3543 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1045, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3542, i64* %3543, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3544 = add i64 %3505, -80
  %3545 = add i64 %3507, 23
  store i64 %3545, i64* %PC.i, align 8
  %3546 = inttoptr i64 %3544 to i64*
  store i64 %3542, i64* %3546, align 8
  %3547 = load i64, i64* %RBP.i, align 8
  %3548 = add i64 %3547, -72
  %3549 = load i64, i64* %PC.i, align 8
  %3550 = add i64 %3549, 5
  store i64 %3550, i64* %PC.i, align 8
  %3551 = inttoptr i64 %3548 to double*
  %3552 = load double, double* %3551, align 8
  store double %3552, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %3553 = load <2 x i32>, <2 x i32>* %2099, align 1
  %3554 = load <2 x i32>, <2 x i32>* %2101, align 1
  %3555 = extractelement <2 x i32> %3553, i32 0
  store i32 %3555, i32* %2102, align 1
  %3556 = extractelement <2 x i32> %3553, i32 1
  store i32 %3556, i32* %2104, align 1
  %3557 = extractelement <2 x i32> %3554, i32 0
  store i32 %3557, i32* %2106, align 1
  %3558 = extractelement <2 x i32> %3554, i32 1
  store i32 %3558, i32* %2108, align 1
  %3559 = add i64 %3547, -88
  %3560 = add i64 %3549, 13
  store i64 %3560, i64* %PC.i, align 8
  %3561 = load double, double* %2109, align 1
  %3562 = inttoptr i64 %3559 to double*
  %3563 = load double, double* %3562, align 8
  %3564 = fmul double %3561, %3563
  store double %3564, double* %2109, align 1
  %3565 = add i64 %3547, -80
  %3566 = add i64 %3549, 18
  store i64 %3566, i64* %PC.i, align 8
  %3567 = inttoptr i64 %3565 to double*
  %3568 = load double, double* %3567, align 8
  %3569 = fmul double %3564, %3568
  store double %3569, double* %2109, align 1
  %3570 = fsub double %3552, %3569
  store double %3570, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %3571 = add i64 %3547, -104
  %3572 = add i64 %3549, 27
  store i64 %3572, i64* %PC.i, align 8
  %3573 = inttoptr i64 %3571 to double*
  store double %3570, double* %3573, align 8
  %3574 = load i64, i64* %RBP.i, align 8
  %3575 = add i64 %3574, -88
  %3576 = load i64, i64* %PC.i, align 8
  %3577 = add i64 %3576, 5
  store i64 %3577, i64* %PC.i, align 8
  %3578 = load double, double* %94, align 1
  %3579 = inttoptr i64 %3575 to double*
  %3580 = load double, double* %3579, align 8
  %3581 = fmul double %3578, %3580
  store double %3581, double* %94, align 1
  %3582 = add i64 %3574, -72
  %3583 = add i64 %3576, 10
  store i64 %3583, i64* %PC.i, align 8
  %3584 = inttoptr i64 %3582 to double*
  %3585 = load double, double* %3584, align 8
  %3586 = fmul double %3581, %3585
  store double %3586, double* %94, align 1
  %3587 = add i64 %3574, -80
  %3588 = add i64 %3576, 15
  store i64 %3588, i64* %PC.i, align 8
  %3589 = inttoptr i64 %3587 to double*
  %3590 = load double, double* %3589, align 8
  %3591 = fsub double %3586, %3590
  store double %3591, double* %94, align 1
  %3592 = add i64 %3574, -112
  %3593 = add i64 %3576, 20
  store i64 %3593, i64* %PC.i, align 8
  %3594 = inttoptr i64 %3592 to double*
  store double %3591, double* %3594, align 8
  %3595 = load i64, i64* %RBP.i, align 8
  %3596 = add i64 %3595, -44
  %3597 = load i64, i64* %PC.i, align 8
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %PC.i, align 8
  %3599 = inttoptr i64 %3596 to i32*
  %3600 = load i32, i32* %3599, align 4
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RCX.i2236, align 8
  %3602 = add i64 %3595, -56
  %3603 = add i64 %3597, 6
  store i64 %3603, i64* %PC.i, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = add i32 %3605, %3600
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RCX.i2236, align 8
  %3608 = icmp ult i32 %3606, %3600
  %3609 = icmp ult i32 %3606, %3605
  %3610 = or i1 %3608, %3609
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %14, align 1
  %3612 = and i32 %3606, 255
  %3613 = tail call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  store i8 %3616, i8* %21, align 1
  %3617 = xor i32 %3605, %3600
  %3618 = xor i32 %3617, %3606
  %3619 = lshr i32 %3618, 4
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  store i8 %3621, i8* %27, align 1
  %3622 = icmp eq i32 %3606, 0
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %30, align 1
  %3624 = lshr i32 %3606, 31
  %3625 = trunc i32 %3624 to i8
  store i8 %3625, i8* %33, align 1
  %3626 = lshr i32 %3600, 31
  %3627 = lshr i32 %3605, 31
  %3628 = xor i32 %3624, %3626
  %3629 = xor i32 %3624, %3627
  %3630 = add nuw nsw i32 %3628, %3629
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %39, align 1
  %3633 = add i64 %3595, -28
  %3634 = add i64 %3597, 9
  store i64 %3634, i64* %PC.i, align 8
  %3635 = inttoptr i64 %3633 to i32*
  store i32 %3606, i32* %3635, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_403c90

block_.L_403c90:                                  ; preds = %block_403ca6, %block_.L_403c22
  %3636 = phi i64 [ %4746, %block_403ca6 ], [ %.pre4, %block_.L_403c22 ]
  %3637 = load i64, i64* %RBP.i, align 8
  %3638 = add i64 %3637, -28
  %3639 = add i64 %3636, 3
  store i64 %3639, i64* %PC.i, align 8
  %3640 = inttoptr i64 %3638 to i32*
  %3641 = load i32, i32* %3640, align 4
  %3642 = zext i32 %3641 to i64
  store i64 %3642, i64* %RAX.i2224, align 8
  %3643 = add i64 %3637, -8
  %3644 = add i64 %3636, 6
  store i64 %3644, i64* %PC.i, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RCX.i2236, align 8
  %3648 = add i64 %3637, -44
  %3649 = add i64 %3636, 9
  store i64 %3649, i64* %PC.i, align 8
  %3650 = inttoptr i64 %3648 to i32*
  %3651 = load i32, i32* %3650, align 4
  %3652 = zext i32 %3651 to i64
  store i64 %3652, i64* %RDX.i2239, align 8
  %3653 = add i64 %3637, -56
  %3654 = add i64 %3636, 12
  store i64 %3654, i64* %PC.i, align 8
  %3655 = inttoptr i64 %3653 to i32*
  %3656 = load i32, i32* %3655, align 4
  %3657 = add i32 %3656, %3651
  %3658 = zext i32 %3657 to i64
  store i64 %3658, i64* %RDX.i2239, align 8
  %3659 = add i32 %3657, %3646
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RCX.i2236, align 8
  %3661 = lshr i32 %3659, 31
  %3662 = sub i32 %3641, %3659
  %3663 = icmp ult i32 %3641, %3659
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %14, align 1
  %3665 = and i32 %3662, 255
  %3666 = tail call i32 @llvm.ctpop.i32(i32 %3665)
  %3667 = trunc i32 %3666 to i8
  %3668 = and i8 %3667, 1
  %3669 = xor i8 %3668, 1
  store i8 %3669, i8* %21, align 1
  %3670 = xor i32 %3659, %3641
  %3671 = xor i32 %3670, %3662
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %27, align 1
  %3675 = icmp eq i32 %3662, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %30, align 1
  %3677 = lshr i32 %3662, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %33, align 1
  %3679 = lshr i32 %3641, 31
  %3680 = xor i32 %3661, %3679
  %3681 = xor i32 %3677, %3679
  %3682 = add nuw nsw i32 %3681, %3680
  %3683 = icmp eq i32 %3682, 2
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %39, align 1
  %3685 = icmp ne i8 %3678, 0
  %3686 = xor i1 %3685, %3683
  %.v9 = select i1 %3686, i64 22, i64 827
  %3687 = add i64 %3636, %.v9
  store i64 %3687, i64* %3, align 8
  br i1 %3686, label %block_403ca6, label %block_.L_403fcb

block_403ca6:                                     ; preds = %block_.L_403c90
  store i64 -9223372036854775808, i64* %RAX.i2224, align 8
  %3688 = load i64, i64* %RBP.i, align 8
  %3689 = add i64 %3688, -28
  %3690 = add i64 %3687, 13
  store i64 %3690, i64* %PC.i, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RCX.i2236, align 8
  %3694 = add i64 %3688, -8
  %3695 = add i64 %3687, 16
  store i64 %3695, i64* %PC.i, align 8
  %3696 = inttoptr i64 %3694 to i32*
  %3697 = load i32, i32* %3696, align 4
  %3698 = add i32 %3697, %3692
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RCX.i2236, align 8
  %3700 = icmp ult i32 %3698, %3692
  %3701 = icmp ult i32 %3698, %3697
  %3702 = or i1 %3700, %3701
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %14, align 1
  %3704 = and i32 %3698, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i32 %3697, %3692
  %3710 = xor i32 %3709, %3698
  %3711 = lshr i32 %3710, 4
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  store i8 %3713, i8* %27, align 1
  %3714 = icmp eq i32 %3698, 0
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %30, align 1
  %3716 = lshr i32 %3698, 31
  %3717 = trunc i32 %3716 to i8
  store i8 %3717, i8* %33, align 1
  %3718 = lshr i32 %3692, 31
  %3719 = lshr i32 %3697, 31
  %3720 = xor i32 %3716, %3718
  %3721 = xor i32 %3716, %3719
  %3722 = add nuw nsw i32 %3720, %3721
  %3723 = icmp eq i32 %3722, 2
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %39, align 1
  %3725 = add i64 %3688, -32
  %3726 = add i64 %3687, 19
  store i64 %3726, i64* %PC.i, align 8
  %3727 = inttoptr i64 %3725 to i32*
  store i32 %3698, i32* %3727, align 4
  %3728 = load i64, i64* %RBP.i, align 8
  %3729 = add i64 %3728, -32
  %3730 = load i64, i64* %PC.i, align 8
  %3731 = add i64 %3730, 3
  store i64 %3731, i64* %PC.i, align 8
  %3732 = inttoptr i64 %3729 to i32*
  %3733 = load i32, i32* %3732, align 4
  %3734 = zext i32 %3733 to i64
  store i64 %3734, i64* %RCX.i2236, align 8
  %3735 = add i64 %3728, -8
  %3736 = add i64 %3730, 6
  store i64 %3736, i64* %PC.i, align 8
  %3737 = inttoptr i64 %3735 to i32*
  %3738 = load i32, i32* %3737, align 4
  %3739 = add i32 %3738, %3733
  %3740 = zext i32 %3739 to i64
  store i64 %3740, i64* %RCX.i2236, align 8
  %3741 = icmp ult i32 %3739, %3733
  %3742 = icmp ult i32 %3739, %3738
  %3743 = or i1 %3741, %3742
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %14, align 1
  %3745 = and i32 %3739, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %21, align 1
  %3750 = xor i32 %3738, %3733
  %3751 = xor i32 %3750, %3739
  %3752 = lshr i32 %3751, 4
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  store i8 %3754, i8* %27, align 1
  %3755 = icmp eq i32 %3739, 0
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %30, align 1
  %3757 = lshr i32 %3739, 31
  %3758 = trunc i32 %3757 to i8
  store i8 %3758, i8* %33, align 1
  %3759 = lshr i32 %3733, 31
  %3760 = lshr i32 %3738, 31
  %3761 = xor i32 %3757, %3759
  %3762 = xor i32 %3757, %3760
  %3763 = add nuw nsw i32 %3761, %3762
  %3764 = icmp eq i32 %3763, 2
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %39, align 1
  %3766 = add i64 %3728, -36
  %3767 = add i64 %3730, 9
  store i64 %3767, i64* %PC.i, align 8
  %3768 = inttoptr i64 %3766 to i32*
  store i32 %3739, i32* %3768, align 4
  %3769 = load i64, i64* %RBP.i, align 8
  %3770 = add i64 %3769, -36
  %3771 = load i64, i64* %PC.i, align 8
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %PC.i, align 8
  %3773 = inttoptr i64 %3770 to i32*
  %3774 = load i32, i32* %3773, align 4
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RCX.i2236, align 8
  %3776 = add i64 %3769, -8
  %3777 = add i64 %3771, 6
  store i64 %3777, i64* %PC.i, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = add i32 %3779, %3774
  %3781 = zext i32 %3780 to i64
  store i64 %3781, i64* %RCX.i2236, align 8
  %3782 = icmp ult i32 %3780, %3774
  %3783 = icmp ult i32 %3780, %3779
  %3784 = or i1 %3782, %3783
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %14, align 1
  %3786 = and i32 %3780, 255
  %3787 = tail call i32 @llvm.ctpop.i32(i32 %3786)
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  %3790 = xor i8 %3789, 1
  store i8 %3790, i8* %21, align 1
  %3791 = xor i32 %3779, %3774
  %3792 = xor i32 %3791, %3780
  %3793 = lshr i32 %3792, 4
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  store i8 %3795, i8* %27, align 1
  %3796 = icmp eq i32 %3780, 0
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %30, align 1
  %3798 = lshr i32 %3780, 31
  %3799 = trunc i32 %3798 to i8
  store i8 %3799, i8* %33, align 1
  %3800 = lshr i32 %3774, 31
  %3801 = lshr i32 %3779, 31
  %3802 = xor i32 %3798, %3800
  %3803 = xor i32 %3798, %3801
  %3804 = add nuw nsw i32 %3802, %3803
  %3805 = icmp eq i32 %3804, 2
  %3806 = zext i1 %3805 to i8
  store i8 %3806, i8* %39, align 1
  %3807 = add i64 %3769, -40
  %3808 = add i64 %3771, 9
  store i64 %3808, i64* %PC.i, align 8
  %3809 = inttoptr i64 %3807 to i32*
  store i32 %3780, i32* %3809, align 4
  %3810 = load i64, i64* %RBP.i, align 8
  %3811 = add i64 %3810, -16
  %3812 = load i64, i64* %PC.i, align 8
  %3813 = add i64 %3812, 4
  store i64 %3813, i64* %PC.i, align 8
  %3814 = inttoptr i64 %3811 to i64*
  %3815 = load i64, i64* %3814, align 8
  store i64 %3815, i64* %RDX.i2239, align 8
  %3816 = add i64 %3810, -28
  %3817 = add i64 %3812, 8
  store i64 %3817, i64* %PC.i, align 8
  %3818 = inttoptr i64 %3816 to i32*
  %3819 = load i32, i32* %3818, align 4
  %3820 = sext i32 %3819 to i64
  store i64 %3820, i64* %RSI.i2233, align 8
  %3821 = shl nsw i64 %3820, 3
  %3822 = add i64 %3821, %3815
  %3823 = add i64 %3812, 13
  store i64 %3823, i64* %PC.i, align 8
  %3824 = inttoptr i64 %3822 to double*
  %3825 = load double, double* %3824, align 8
  store double %3825, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3826 = add i64 %3812, 17
  store i64 %3826, i64* %PC.i, align 8
  %3827 = load i64, i64* %3814, align 8
  store i64 %3827, i64* %RDX.i2239, align 8
  %3828 = add i64 %3810, -32
  %3829 = add i64 %3812, 21
  store i64 %3829, i64* %PC.i, align 8
  %3830 = inttoptr i64 %3828 to i32*
  %3831 = load i32, i32* %3830, align 4
  %3832 = sext i32 %3831 to i64
  store i64 %3832, i64* %RSI.i2233, align 8
  %3833 = shl nsw i64 %3832, 3
  %3834 = add i64 %3833, %3827
  %3835 = add i64 %3812, 26
  store i64 %3835, i64* %PC.i, align 8
  %3836 = inttoptr i64 %3834 to double*
  %3837 = load double, double* %3836, align 8
  %3838 = fadd double %3825, %3837
  store double %3838, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3839 = add i64 %3810, -120
  %3840 = add i64 %3812, 31
  store i64 %3840, i64* %PC.i, align 8
  %3841 = inttoptr i64 %3839 to double*
  store double %3838, double* %3841, align 8
  %3842 = load i64, i64* %RBP.i, align 8
  %3843 = add i64 %3842, -16
  %3844 = load i64, i64* %PC.i, align 8
  %3845 = add i64 %3844, 4
  store i64 %3845, i64* %PC.i, align 8
  %3846 = inttoptr i64 %3843 to i64*
  %3847 = load i64, i64* %3846, align 8
  store i64 %3847, i64* %RDX.i2239, align 8
  %3848 = add i64 %3842, -28
  %3849 = add i64 %3844, 7
  store i64 %3849, i64* %PC.i, align 8
  %3850 = inttoptr i64 %3848 to i32*
  %3851 = load i32, i32* %3850, align 4
  %3852 = add i32 %3851, 1
  %3853 = zext i32 %3852 to i64
  store i64 %3853, i64* %RCX.i2236, align 8
  %3854 = icmp eq i32 %3851, -1
  %3855 = icmp eq i32 %3852, 0
  %3856 = or i1 %3854, %3855
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %14, align 1
  %3858 = and i32 %3852, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %21, align 1
  %3863 = xor i32 %3851, %3852
  %3864 = lshr i32 %3863, 4
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  store i8 %3866, i8* %27, align 1
  %3867 = icmp eq i32 %3852, 0
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %30, align 1
  %3869 = lshr i32 %3852, 31
  %3870 = trunc i32 %3869 to i8
  store i8 %3870, i8* %33, align 1
  %3871 = lshr i32 %3851, 31
  %3872 = xor i32 %3869, %3871
  %3873 = add nuw nsw i32 %3872, %3869
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %39, align 1
  %3876 = sext i32 %3852 to i64
  store i64 %3876, i64* %RSI.i2233, align 8
  %3877 = shl nsw i64 %3876, 3
  %3878 = add i64 %3877, %3847
  %3879 = add i64 %3844, 18
  store i64 %3879, i64* %PC.i, align 8
  %3880 = inttoptr i64 %3878 to double*
  %3881 = load double, double* %3880, align 8
  store double %3881, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3882 = add i64 %3844, 22
  store i64 %3882, i64* %PC.i, align 8
  %3883 = load i64, i64* %3846, align 8
  store i64 %3883, i64* %RDX.i2239, align 8
  %3884 = add i64 %3842, -32
  %3885 = add i64 %3844, 25
  store i64 %3885, i64* %PC.i, align 8
  %3886 = inttoptr i64 %3884 to i32*
  %3887 = load i32, i32* %3886, align 4
  %3888 = add i32 %3887, 1
  %3889 = zext i32 %3888 to i64
  store i64 %3889, i64* %RCX.i2236, align 8
  %3890 = icmp eq i32 %3887, -1
  %3891 = icmp eq i32 %3888, 0
  %3892 = or i1 %3890, %3891
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %14, align 1
  %3894 = and i32 %3888, 255
  %3895 = tail call i32 @llvm.ctpop.i32(i32 %3894)
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  store i8 %3898, i8* %21, align 1
  %3899 = xor i32 %3887, %3888
  %3900 = lshr i32 %3899, 4
  %3901 = trunc i32 %3900 to i8
  %3902 = and i8 %3901, 1
  store i8 %3902, i8* %27, align 1
  %3903 = icmp eq i32 %3888, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %30, align 1
  %3905 = lshr i32 %3888, 31
  %3906 = trunc i32 %3905 to i8
  store i8 %3906, i8* %33, align 1
  %3907 = lshr i32 %3887, 31
  %3908 = xor i32 %3905, %3907
  %3909 = add nuw nsw i32 %3908, %3905
  %3910 = icmp eq i32 %3909, 2
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %39, align 1
  %3912 = sext i32 %3888 to i64
  store i64 %3912, i64* %RSI.i2233, align 8
  %3913 = shl nsw i64 %3912, 3
  %3914 = add i64 %3913, %3883
  %3915 = add i64 %3844, 36
  store i64 %3915, i64* %PC.i, align 8
  %3916 = inttoptr i64 %3914 to double*
  %3917 = load double, double* %3916, align 8
  %3918 = fadd double %3881, %3917
  store double %3918, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3919 = load i64, i64* %RBP.i, align 8
  %3920 = add i64 %3919, -128
  %3921 = add i64 %3844, 41
  store i64 %3921, i64* %PC.i, align 8
  %3922 = inttoptr i64 %3920 to double*
  store double %3918, double* %3922, align 8
  %3923 = load i64, i64* %RBP.i, align 8
  %3924 = add i64 %3923, -16
  %3925 = load i64, i64* %PC.i, align 8
  %3926 = add i64 %3925, 4
  store i64 %3926, i64* %PC.i, align 8
  %3927 = inttoptr i64 %3924 to i64*
  %3928 = load i64, i64* %3927, align 8
  store i64 %3928, i64* %RDX.i2239, align 8
  %3929 = add i64 %3923, -28
  %3930 = add i64 %3925, 8
  store i64 %3930, i64* %PC.i, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = sext i32 %3932 to i64
  store i64 %3933, i64* %RSI.i2233, align 8
  %3934 = shl nsw i64 %3933, 3
  %3935 = add i64 %3934, %3928
  %3936 = add i64 %3925, 13
  store i64 %3936, i64* %PC.i, align 8
  %3937 = inttoptr i64 %3935 to double*
  %3938 = load double, double* %3937, align 8
  store double %3938, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3939 = add i64 %3925, 17
  store i64 %3939, i64* %PC.i, align 8
  %3940 = load i64, i64* %3927, align 8
  store i64 %3940, i64* %RDX.i2239, align 8
  %3941 = add i64 %3923, -32
  %3942 = add i64 %3925, 21
  store i64 %3942, i64* %PC.i, align 8
  %3943 = inttoptr i64 %3941 to i32*
  %3944 = load i32, i32* %3943, align 4
  %3945 = sext i32 %3944 to i64
  store i64 %3945, i64* %RSI.i2233, align 8
  %3946 = shl nsw i64 %3945, 3
  %3947 = add i64 %3946, %3940
  %3948 = add i64 %3925, 26
  store i64 %3948, i64* %PC.i, align 8
  %3949 = inttoptr i64 %3947 to double*
  %3950 = load double, double* %3949, align 8
  %3951 = fsub double %3938, %3950
  store double %3951, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3952 = add i64 %3923, -136
  %3953 = add i64 %3925, 34
  store i64 %3953, i64* %PC.i, align 8
  %3954 = inttoptr i64 %3952 to double*
  store double %3951, double* %3954, align 8
  %3955 = load i64, i64* %RBP.i, align 8
  %3956 = add i64 %3955, -16
  %3957 = load i64, i64* %PC.i, align 8
  %3958 = add i64 %3957, 4
  store i64 %3958, i64* %PC.i, align 8
  %3959 = inttoptr i64 %3956 to i64*
  %3960 = load i64, i64* %3959, align 8
  store i64 %3960, i64* %RDX.i2239, align 8
  %3961 = add i64 %3955, -28
  %3962 = add i64 %3957, 7
  store i64 %3962, i64* %PC.i, align 8
  %3963 = inttoptr i64 %3961 to i32*
  %3964 = load i32, i32* %3963, align 4
  %3965 = add i32 %3964, 1
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RCX.i2236, align 8
  %3967 = icmp eq i32 %3964, -1
  %3968 = icmp eq i32 %3965, 0
  %3969 = or i1 %3967, %3968
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %14, align 1
  %3971 = and i32 %3965, 255
  %3972 = tail call i32 @llvm.ctpop.i32(i32 %3971)
  %3973 = trunc i32 %3972 to i8
  %3974 = and i8 %3973, 1
  %3975 = xor i8 %3974, 1
  store i8 %3975, i8* %21, align 1
  %3976 = xor i32 %3964, %3965
  %3977 = lshr i32 %3976, 4
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  store i8 %3979, i8* %27, align 1
  %3980 = icmp eq i32 %3965, 0
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %30, align 1
  %3982 = lshr i32 %3965, 31
  %3983 = trunc i32 %3982 to i8
  store i8 %3983, i8* %33, align 1
  %3984 = lshr i32 %3964, 31
  %3985 = xor i32 %3982, %3984
  %3986 = add nuw nsw i32 %3985, %3982
  %3987 = icmp eq i32 %3986, 2
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %39, align 1
  %3989 = sext i32 %3965 to i64
  store i64 %3989, i64* %RSI.i2233, align 8
  %3990 = shl nsw i64 %3989, 3
  %3991 = add i64 %3990, %3960
  %3992 = add i64 %3957, 18
  store i64 %3992, i64* %PC.i, align 8
  %3993 = inttoptr i64 %3991 to double*
  %3994 = load double, double* %3993, align 8
  store double %3994, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3995 = add i64 %3957, 22
  store i64 %3995, i64* %PC.i, align 8
  %3996 = load i64, i64* %3959, align 8
  store i64 %3996, i64* %RDX.i2239, align 8
  %3997 = add i64 %3955, -32
  %3998 = add i64 %3957, 25
  store i64 %3998, i64* %PC.i, align 8
  %3999 = inttoptr i64 %3997 to i32*
  %4000 = load i32, i32* %3999, align 4
  %4001 = add i32 %4000, 1
  %4002 = zext i32 %4001 to i64
  store i64 %4002, i64* %RCX.i2236, align 8
  %4003 = icmp eq i32 %4000, -1
  %4004 = icmp eq i32 %4001, 0
  %4005 = or i1 %4003, %4004
  %4006 = zext i1 %4005 to i8
  store i8 %4006, i8* %14, align 1
  %4007 = and i32 %4001, 255
  %4008 = tail call i32 @llvm.ctpop.i32(i32 %4007)
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  store i8 %4011, i8* %21, align 1
  %4012 = xor i32 %4000, %4001
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  store i8 %4015, i8* %27, align 1
  %4016 = icmp eq i32 %4001, 0
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %30, align 1
  %4018 = lshr i32 %4001, 31
  %4019 = trunc i32 %4018 to i8
  store i8 %4019, i8* %33, align 1
  %4020 = lshr i32 %4000, 31
  %4021 = xor i32 %4018, %4020
  %4022 = add nuw nsw i32 %4021, %4018
  %4023 = icmp eq i32 %4022, 2
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %39, align 1
  %4025 = sext i32 %4001 to i64
  store i64 %4025, i64* %RSI.i2233, align 8
  %4026 = shl nsw i64 %4025, 3
  %4027 = add i64 %4026, %3996
  %4028 = add i64 %3957, 36
  store i64 %4028, i64* %PC.i, align 8
  %4029 = inttoptr i64 %4027 to double*
  %4030 = load double, double* %4029, align 8
  %4031 = fsub double %3994, %4030
  store double %4031, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4032 = load i64, i64* %RBP.i, align 8
  %4033 = add i64 %4032, -144
  %4034 = add i64 %3957, 44
  store i64 %4034, i64* %PC.i, align 8
  %4035 = inttoptr i64 %4033 to double*
  store double %4031, double* %4035, align 8
  %4036 = load i64, i64* %RBP.i, align 8
  %4037 = add i64 %4036, -16
  %4038 = load i64, i64* %PC.i, align 8
  %4039 = add i64 %4038, 4
  store i64 %4039, i64* %PC.i, align 8
  %4040 = inttoptr i64 %4037 to i64*
  %4041 = load i64, i64* %4040, align 8
  store i64 %4041, i64* %RDX.i2239, align 8
  %4042 = add i64 %4036, -36
  %4043 = add i64 %4038, 8
  store i64 %4043, i64* %PC.i, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = sext i32 %4045 to i64
  store i64 %4046, i64* %RSI.i2233, align 8
  %4047 = shl nsw i64 %4046, 3
  %4048 = add i64 %4047, %4041
  %4049 = add i64 %4038, 13
  store i64 %4049, i64* %PC.i, align 8
  %4050 = inttoptr i64 %4048 to double*
  %4051 = load double, double* %4050, align 8
  store double %4051, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4052 = add i64 %4038, 17
  store i64 %4052, i64* %PC.i, align 8
  %4053 = load i64, i64* %4040, align 8
  store i64 %4053, i64* %RDX.i2239, align 8
  %4054 = add i64 %4036, -40
  %4055 = add i64 %4038, 21
  store i64 %4055, i64* %PC.i, align 8
  %4056 = inttoptr i64 %4054 to i32*
  %4057 = load i32, i32* %4056, align 4
  %4058 = sext i32 %4057 to i64
  store i64 %4058, i64* %RSI.i2233, align 8
  %4059 = shl nsw i64 %4058, 3
  %4060 = add i64 %4059, %4053
  %4061 = add i64 %4038, 26
  store i64 %4061, i64* %PC.i, align 8
  %4062 = inttoptr i64 %4060 to double*
  %4063 = load double, double* %4062, align 8
  %4064 = fadd double %4051, %4063
  store double %4064, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4065 = add i64 %4036, -152
  %4066 = add i64 %4038, 34
  store i64 %4066, i64* %PC.i, align 8
  %4067 = inttoptr i64 %4065 to double*
  store double %4064, double* %4067, align 8
  %4068 = load i64, i64* %RBP.i, align 8
  %4069 = add i64 %4068, -16
  %4070 = load i64, i64* %PC.i, align 8
  %4071 = add i64 %4070, 4
  store i64 %4071, i64* %PC.i, align 8
  %4072 = inttoptr i64 %4069 to i64*
  %4073 = load i64, i64* %4072, align 8
  store i64 %4073, i64* %RDX.i2239, align 8
  %4074 = add i64 %4068, -36
  %4075 = add i64 %4070, 7
  store i64 %4075, i64* %PC.i, align 8
  %4076 = inttoptr i64 %4074 to i32*
  %4077 = load i32, i32* %4076, align 4
  %4078 = add i32 %4077, 1
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RCX.i2236, align 8
  %4080 = icmp eq i32 %4077, -1
  %4081 = icmp eq i32 %4078, 0
  %4082 = or i1 %4080, %4081
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %14, align 1
  %4084 = and i32 %4078, 255
  %4085 = tail call i32 @llvm.ctpop.i32(i32 %4084)
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = xor i8 %4087, 1
  store i8 %4088, i8* %21, align 1
  %4089 = xor i32 %4077, %4078
  %4090 = lshr i32 %4089, 4
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  store i8 %4092, i8* %27, align 1
  %4093 = icmp eq i32 %4078, 0
  %4094 = zext i1 %4093 to i8
  store i8 %4094, i8* %30, align 1
  %4095 = lshr i32 %4078, 31
  %4096 = trunc i32 %4095 to i8
  store i8 %4096, i8* %33, align 1
  %4097 = lshr i32 %4077, 31
  %4098 = xor i32 %4095, %4097
  %4099 = add nuw nsw i32 %4098, %4095
  %4100 = icmp eq i32 %4099, 2
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %39, align 1
  %4102 = sext i32 %4078 to i64
  store i64 %4102, i64* %RSI.i2233, align 8
  %4103 = shl nsw i64 %4102, 3
  %4104 = add i64 %4103, %4073
  %4105 = add i64 %4070, 18
  store i64 %4105, i64* %PC.i, align 8
  %4106 = inttoptr i64 %4104 to double*
  %4107 = load double, double* %4106, align 8
  store double %4107, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4108 = add i64 %4070, 22
  store i64 %4108, i64* %PC.i, align 8
  %4109 = load i64, i64* %4072, align 8
  store i64 %4109, i64* %RDX.i2239, align 8
  %4110 = add i64 %4068, -40
  %4111 = add i64 %4070, 25
  store i64 %4111, i64* %PC.i, align 8
  %4112 = inttoptr i64 %4110 to i32*
  %4113 = load i32, i32* %4112, align 4
  %4114 = add i32 %4113, 1
  %4115 = zext i32 %4114 to i64
  store i64 %4115, i64* %RCX.i2236, align 8
  %4116 = icmp eq i32 %4113, -1
  %4117 = icmp eq i32 %4114, 0
  %4118 = or i1 %4116, %4117
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %14, align 1
  %4120 = and i32 %4114, 255
  %4121 = tail call i32 @llvm.ctpop.i32(i32 %4120)
  %4122 = trunc i32 %4121 to i8
  %4123 = and i8 %4122, 1
  %4124 = xor i8 %4123, 1
  store i8 %4124, i8* %21, align 1
  %4125 = xor i32 %4113, %4114
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  store i8 %4128, i8* %27, align 1
  %4129 = icmp eq i32 %4114, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %30, align 1
  %4131 = lshr i32 %4114, 31
  %4132 = trunc i32 %4131 to i8
  store i8 %4132, i8* %33, align 1
  %4133 = lshr i32 %4113, 31
  %4134 = xor i32 %4131, %4133
  %4135 = add nuw nsw i32 %4134, %4131
  %4136 = icmp eq i32 %4135, 2
  %4137 = zext i1 %4136 to i8
  store i8 %4137, i8* %39, align 1
  %4138 = sext i32 %4114 to i64
  store i64 %4138, i64* %RSI.i2233, align 8
  %4139 = shl nsw i64 %4138, 3
  %4140 = add i64 %4139, %4109
  %4141 = add i64 %4070, 36
  store i64 %4141, i64* %PC.i, align 8
  %4142 = inttoptr i64 %4140 to double*
  %4143 = load double, double* %4142, align 8
  %4144 = fadd double %4107, %4143
  store double %4144, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4145 = load i64, i64* %RBP.i, align 8
  %4146 = add i64 %4145, -160
  %4147 = add i64 %4070, 44
  store i64 %4147, i64* %PC.i, align 8
  %4148 = inttoptr i64 %4146 to double*
  store double %4144, double* %4148, align 8
  %4149 = load i64, i64* %RBP.i, align 8
  %4150 = add i64 %4149, -16
  %4151 = load i64, i64* %PC.i, align 8
  %4152 = add i64 %4151, 4
  store i64 %4152, i64* %PC.i, align 8
  %4153 = inttoptr i64 %4150 to i64*
  %4154 = load i64, i64* %4153, align 8
  store i64 %4154, i64* %RDX.i2239, align 8
  %4155 = add i64 %4149, -36
  %4156 = add i64 %4151, 8
  store i64 %4156, i64* %PC.i, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sext i32 %4158 to i64
  store i64 %4159, i64* %RSI.i2233, align 8
  %4160 = shl nsw i64 %4159, 3
  %4161 = add i64 %4160, %4154
  %4162 = add i64 %4151, 13
  store i64 %4162, i64* %PC.i, align 8
  %4163 = inttoptr i64 %4161 to double*
  %4164 = load double, double* %4163, align 8
  store double %4164, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4165 = add i64 %4151, 17
  store i64 %4165, i64* %PC.i, align 8
  %4166 = load i64, i64* %4153, align 8
  store i64 %4166, i64* %RDX.i2239, align 8
  %4167 = add i64 %4149, -40
  %4168 = add i64 %4151, 21
  store i64 %4168, i64* %PC.i, align 8
  %4169 = inttoptr i64 %4167 to i32*
  %4170 = load i32, i32* %4169, align 4
  %4171 = sext i32 %4170 to i64
  store i64 %4171, i64* %RSI.i2233, align 8
  %4172 = shl nsw i64 %4171, 3
  %4173 = add i64 %4172, %4166
  %4174 = add i64 %4151, 26
  store i64 %4174, i64* %PC.i, align 8
  %4175 = inttoptr i64 %4173 to double*
  %4176 = load double, double* %4175, align 8
  %4177 = fsub double %4164, %4176
  store double %4177, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4178 = add i64 %4149, -168
  %4179 = add i64 %4151, 34
  store i64 %4179, i64* %PC.i, align 8
  %4180 = inttoptr i64 %4178 to double*
  store double %4177, double* %4180, align 8
  %4181 = load i64, i64* %RBP.i, align 8
  %4182 = add i64 %4181, -16
  %4183 = load i64, i64* %PC.i, align 8
  %4184 = add i64 %4183, 4
  store i64 %4184, i64* %PC.i, align 8
  %4185 = inttoptr i64 %4182 to i64*
  %4186 = load i64, i64* %4185, align 8
  store i64 %4186, i64* %RDX.i2239, align 8
  %4187 = add i64 %4181, -36
  %4188 = add i64 %4183, 7
  store i64 %4188, i64* %PC.i, align 8
  %4189 = inttoptr i64 %4187 to i32*
  %4190 = load i32, i32* %4189, align 4
  %4191 = add i32 %4190, 1
  %4192 = zext i32 %4191 to i64
  store i64 %4192, i64* %RCX.i2236, align 8
  %4193 = icmp eq i32 %4190, -1
  %4194 = icmp eq i32 %4191, 0
  %4195 = or i1 %4193, %4194
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %14, align 1
  %4197 = and i32 %4191, 255
  %4198 = tail call i32 @llvm.ctpop.i32(i32 %4197)
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = xor i8 %4200, 1
  store i8 %4201, i8* %21, align 1
  %4202 = xor i32 %4190, %4191
  %4203 = lshr i32 %4202, 4
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  store i8 %4205, i8* %27, align 1
  %4206 = icmp eq i32 %4191, 0
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %30, align 1
  %4208 = lshr i32 %4191, 31
  %4209 = trunc i32 %4208 to i8
  store i8 %4209, i8* %33, align 1
  %4210 = lshr i32 %4190, 31
  %4211 = xor i32 %4208, %4210
  %4212 = add nuw nsw i32 %4211, %4208
  %4213 = icmp eq i32 %4212, 2
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %39, align 1
  %4215 = sext i32 %4191 to i64
  store i64 %4215, i64* %RSI.i2233, align 8
  %4216 = shl nsw i64 %4215, 3
  %4217 = add i64 %4216, %4186
  %4218 = add i64 %4183, 18
  store i64 %4218, i64* %PC.i, align 8
  %4219 = inttoptr i64 %4217 to double*
  %4220 = load double, double* %4219, align 8
  store double %4220, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4221 = add i64 %4183, 22
  store i64 %4221, i64* %PC.i, align 8
  %4222 = load i64, i64* %4185, align 8
  store i64 %4222, i64* %RDX.i2239, align 8
  %4223 = add i64 %4181, -40
  %4224 = add i64 %4183, 25
  store i64 %4224, i64* %PC.i, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = add i32 %4226, 1
  %4228 = zext i32 %4227 to i64
  store i64 %4228, i64* %RCX.i2236, align 8
  %4229 = icmp eq i32 %4226, -1
  %4230 = icmp eq i32 %4227, 0
  %4231 = or i1 %4229, %4230
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %14, align 1
  %4233 = and i32 %4227, 255
  %4234 = tail call i32 @llvm.ctpop.i32(i32 %4233)
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = xor i8 %4236, 1
  store i8 %4237, i8* %21, align 1
  %4238 = xor i32 %4226, %4227
  %4239 = lshr i32 %4238, 4
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  store i8 %4241, i8* %27, align 1
  %4242 = icmp eq i32 %4227, 0
  %4243 = zext i1 %4242 to i8
  store i8 %4243, i8* %30, align 1
  %4244 = lshr i32 %4227, 31
  %4245 = trunc i32 %4244 to i8
  store i8 %4245, i8* %33, align 1
  %4246 = lshr i32 %4226, 31
  %4247 = xor i32 %4244, %4246
  %4248 = add nuw nsw i32 %4247, %4244
  %4249 = icmp eq i32 %4248, 2
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %39, align 1
  %4251 = sext i32 %4227 to i64
  store i64 %4251, i64* %RSI.i2233, align 8
  %4252 = shl nsw i64 %4251, 3
  %4253 = add i64 %4252, %4222
  %4254 = add i64 %4183, 36
  store i64 %4254, i64* %PC.i, align 8
  %4255 = inttoptr i64 %4253 to double*
  %4256 = load double, double* %4255, align 8
  %4257 = fsub double %4220, %4256
  store double %4257, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4258 = load i64, i64* %RBP.i, align 8
  %4259 = add i64 %4258, -176
  %4260 = add i64 %4183, 44
  store i64 %4260, i64* %PC.i, align 8
  %4261 = inttoptr i64 %4259 to double*
  store double %4257, double* %4261, align 8
  %4262 = load i64, i64* %RBP.i, align 8
  %4263 = add i64 %4262, -120
  %4264 = load i64, i64* %PC.i, align 8
  %4265 = add i64 %4264, 5
  store i64 %4265, i64* %PC.i, align 8
  %4266 = inttoptr i64 %4263 to double*
  %4267 = load double, double* %4266, align 8
  store double %4267, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4268 = add i64 %4262, -152
  %4269 = add i64 %4264, 13
  store i64 %4269, i64* %PC.i, align 8
  %4270 = inttoptr i64 %4268 to double*
  %4271 = load double, double* %4270, align 8
  %4272 = fadd double %4267, %4271
  store double %4272, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4273 = add i64 %4262, -16
  %4274 = add i64 %4264, 17
  store i64 %4274, i64* %PC.i, align 8
  %4275 = inttoptr i64 %4273 to i64*
  %4276 = load i64, i64* %4275, align 8
  store i64 %4276, i64* %RDX.i2239, align 8
  %4277 = add i64 %4262, -28
  %4278 = add i64 %4264, 21
  store i64 %4278, i64* %PC.i, align 8
  %4279 = inttoptr i64 %4277 to i32*
  %4280 = load i32, i32* %4279, align 4
  %4281 = sext i32 %4280 to i64
  store i64 %4281, i64* %RSI.i2233, align 8
  %4282 = shl nsw i64 %4281, 3
  %4283 = add i64 %4282, %4276
  %4284 = add i64 %4264, 26
  store i64 %4284, i64* %PC.i, align 8
  %4285 = inttoptr i64 %4283 to double*
  store double %4272, double* %4285, align 8
  %4286 = load i64, i64* %RBP.i, align 8
  %4287 = add i64 %4286, -128
  %4288 = load i64, i64* %PC.i, align 8
  %4289 = add i64 %4288, 5
  store i64 %4289, i64* %PC.i, align 8
  %4290 = inttoptr i64 %4287 to double*
  %4291 = load double, double* %4290, align 8
  store double %4291, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4292 = add i64 %4286, -160
  %4293 = add i64 %4288, 13
  store i64 %4293, i64* %PC.i, align 8
  %4294 = inttoptr i64 %4292 to double*
  %4295 = load double, double* %4294, align 8
  %4296 = fadd double %4291, %4295
  store double %4296, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4297 = add i64 %4286, -16
  %4298 = add i64 %4288, 17
  store i64 %4298, i64* %PC.i, align 8
  %4299 = inttoptr i64 %4297 to i64*
  %4300 = load i64, i64* %4299, align 8
  store i64 %4300, i64* %RDX.i2239, align 8
  %4301 = add i64 %4286, -28
  %4302 = add i64 %4288, 20
  store i64 %4302, i64* %PC.i, align 8
  %4303 = inttoptr i64 %4301 to i32*
  %4304 = load i32, i32* %4303, align 4
  %4305 = add i32 %4304, 1
  %4306 = zext i32 %4305 to i64
  store i64 %4306, i64* %RCX.i2236, align 8
  %4307 = icmp eq i32 %4304, -1
  %4308 = icmp eq i32 %4305, 0
  %4309 = or i1 %4307, %4308
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %14, align 1
  %4311 = and i32 %4305, 255
  %4312 = tail call i32 @llvm.ctpop.i32(i32 %4311)
  %4313 = trunc i32 %4312 to i8
  %4314 = and i8 %4313, 1
  %4315 = xor i8 %4314, 1
  store i8 %4315, i8* %21, align 1
  %4316 = xor i32 %4304, %4305
  %4317 = lshr i32 %4316, 4
  %4318 = trunc i32 %4317 to i8
  %4319 = and i8 %4318, 1
  store i8 %4319, i8* %27, align 1
  %4320 = icmp eq i32 %4305, 0
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %30, align 1
  %4322 = lshr i32 %4305, 31
  %4323 = trunc i32 %4322 to i8
  store i8 %4323, i8* %33, align 1
  %4324 = lshr i32 %4304, 31
  %4325 = xor i32 %4322, %4324
  %4326 = add nuw nsw i32 %4325, %4322
  %4327 = icmp eq i32 %4326, 2
  %4328 = zext i1 %4327 to i8
  store i8 %4328, i8* %39, align 1
  %4329 = sext i32 %4305 to i64
  store i64 %4329, i64* %RSI.i2233, align 8
  %4330 = shl nsw i64 %4329, 3
  %4331 = add i64 %4330, %4300
  %4332 = add i64 %4288, 31
  store i64 %4332, i64* %PC.i, align 8
  %4333 = inttoptr i64 %4331 to double*
  store double %4296, double* %4333, align 8
  %4334 = load i64, i64* %RBP.i, align 8
  %4335 = add i64 %4334, -152
  %4336 = load i64, i64* %PC.i, align 8
  %4337 = add i64 %4336, 8
  store i64 %4337, i64* %PC.i, align 8
  %4338 = inttoptr i64 %4335 to double*
  %4339 = load double, double* %4338, align 8
  store double %4339, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4340 = add i64 %4334, -120
  %4341 = add i64 %4336, 13
  store i64 %4341, i64* %PC.i, align 8
  %4342 = inttoptr i64 %4340 to double*
  %4343 = load double, double* %4342, align 8
  %4344 = fsub double %4343, %4339
  store double %4344, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4345 = add i64 %4336, 22
  store i64 %4345, i64* %PC.i, align 8
  store double %4344, double* %4342, align 8
  %4346 = load i64, i64* %RBP.i, align 8
  %4347 = add i64 %4346, -160
  %4348 = load i64, i64* %PC.i, align 8
  %4349 = add i64 %4348, 8
  store i64 %4349, i64* %PC.i, align 8
  %4350 = inttoptr i64 %4347 to double*
  %4351 = load double, double* %4350, align 8
  store double %4351, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4352 = add i64 %4346, -128
  %4353 = add i64 %4348, 13
  store i64 %4353, i64* %PC.i, align 8
  %4354 = inttoptr i64 %4352 to double*
  %4355 = load double, double* %4354, align 8
  %4356 = fsub double %4355, %4351
  store double %4356, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4357 = add i64 %4348, 22
  store i64 %4357, i64* %PC.i, align 8
  store double %4356, double* %4354, align 8
  %4358 = load i64, i64* %RBP.i, align 8
  %4359 = add i64 %4358, -96
  %4360 = load i64, i64* %PC.i, align 8
  %4361 = add i64 %4360, 5
  store i64 %4361, i64* %PC.i, align 8
  %4362 = inttoptr i64 %4359 to i64*
  %4363 = load i64, i64* %4362, align 8
  %4364 = load i64, i64* %RAX.i2224, align 8
  %4365 = xor i64 %4364, %4363
  store i64 %4365, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4366 = trunc i64 %4365 to i32
  %4367 = and i32 %4366, 255
  %4368 = tail call i32 @llvm.ctpop.i32(i32 %4367)
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  store i8 %4371, i8* %21, align 1
  %4372 = icmp eq i64 %4365, 0
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %30, align 1
  %4374 = lshr i64 %4365, 63
  %4375 = trunc i64 %4374 to i8
  store i8 %4375, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4365, i64* %2110, align 1
  store i64 0, i64* %95, align 1
  %4376 = add i64 %4358, -120
  %4377 = add i64 %4360, 23
  store i64 %4377, i64* %PC.i, align 8
  %4378 = bitcast i64 %4365 to double
  %4379 = inttoptr i64 %4376 to double*
  %4380 = load double, double* %4379, align 8
  %4381 = fmul double %4378, %4380
  store double %4381, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4382 = add i64 %4358, -88
  %4383 = add i64 %4360, 28
  store i64 %4383, i64* %PC.i, align 8
  %4384 = inttoptr i64 %4382 to double*
  %4385 = load double, double* %4384, align 8
  store double %4385, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4386 = add i64 %4358, -128
  %4387 = add i64 %4360, 33
  store i64 %4387, i64* %PC.i, align 8
  %4388 = inttoptr i64 %4386 to double*
  %4389 = load double, double* %4388, align 8
  %4390 = fmul double %4385, %4389
  store double %4390, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4391 = fsub double %4381, %4390
  store double %4391, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4392 = add i64 %4358, -16
  %4393 = add i64 %4360, 41
  store i64 %4393, i64* %PC.i, align 8
  %4394 = inttoptr i64 %4392 to i64*
  %4395 = load i64, i64* %4394, align 8
  store i64 %4395, i64* %RDX.i2239, align 8
  %4396 = add i64 %4358, -36
  %4397 = add i64 %4360, 45
  store i64 %4397, i64* %PC.i, align 8
  %4398 = inttoptr i64 %4396 to i32*
  %4399 = load i32, i32* %4398, align 4
  %4400 = sext i32 %4399 to i64
  store i64 %4400, i64* %RSI.i2233, align 8
  %4401 = shl nsw i64 %4400, 3
  %4402 = add i64 %4401, %4395
  %4403 = add i64 %4360, 50
  store i64 %4403, i64* %PC.i, align 8
  %4404 = inttoptr i64 %4402 to double*
  store double %4391, double* %4404, align 8
  %4405 = load i64, i64* %RBP.i, align 8
  %4406 = add i64 %4405, -96
  %4407 = load i64, i64* %PC.i, align 8
  %4408 = add i64 %4407, 5
  store i64 %4408, i64* %PC.i, align 8
  %4409 = inttoptr i64 %4406 to i64*
  %4410 = load i64, i64* %4409, align 8
  %4411 = load i64, i64* %RAX.i2224, align 8
  %4412 = xor i64 %4411, %4410
  store i64 %4412, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4413 = trunc i64 %4412 to i32
  %4414 = and i32 %4413, 255
  %4415 = tail call i32 @llvm.ctpop.i32(i32 %4414)
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = xor i8 %4417, 1
  store i8 %4418, i8* %21, align 1
  %4419 = icmp eq i64 %4412, 0
  %4420 = zext i1 %4419 to i8
  store i8 %4420, i8* %30, align 1
  %4421 = lshr i64 %4412, 63
  %4422 = trunc i64 %4421 to i8
  store i8 %4422, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4412, i64* %2110, align 1
  store i64 0, i64* %95, align 1
  %4423 = add i64 %4405, -128
  %4424 = add i64 %4407, 23
  store i64 %4424, i64* %PC.i, align 8
  %4425 = bitcast i64 %4412 to double
  %4426 = inttoptr i64 %4423 to double*
  %4427 = load double, double* %4426, align 8
  %4428 = fmul double %4425, %4427
  store double %4428, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4429 = add i64 %4405, -88
  %4430 = add i64 %4407, 28
  store i64 %4430, i64* %PC.i, align 8
  %4431 = inttoptr i64 %4429 to double*
  %4432 = load double, double* %4431, align 8
  store double %4432, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4433 = add i64 %4405, -120
  %4434 = add i64 %4407, 33
  store i64 %4434, i64* %PC.i, align 8
  %4435 = inttoptr i64 %4433 to double*
  %4436 = load double, double* %4435, align 8
  %4437 = fmul double %4432, %4436
  store double %4437, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4438 = fadd double %4428, %4437
  store double %4438, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4439 = add i64 %4405, -16
  %4440 = add i64 %4407, 41
  store i64 %4440, i64* %PC.i, align 8
  %4441 = inttoptr i64 %4439 to i64*
  %4442 = load i64, i64* %4441, align 8
  store i64 %4442, i64* %RAX.i2224, align 8
  %4443 = add i64 %4405, -36
  %4444 = add i64 %4407, 44
  store i64 %4444, i64* %PC.i, align 8
  %4445 = inttoptr i64 %4443 to i32*
  %4446 = load i32, i32* %4445, align 4
  %4447 = add i32 %4446, 1
  %4448 = zext i32 %4447 to i64
  store i64 %4448, i64* %RCX.i2236, align 8
  %4449 = icmp eq i32 %4446, -1
  %4450 = icmp eq i32 %4447, 0
  %4451 = or i1 %4449, %4450
  %4452 = zext i1 %4451 to i8
  store i8 %4452, i8* %14, align 1
  %4453 = and i32 %4447, 255
  %4454 = tail call i32 @llvm.ctpop.i32(i32 %4453)
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = xor i8 %4456, 1
  store i8 %4457, i8* %21, align 1
  %4458 = xor i32 %4446, %4447
  %4459 = lshr i32 %4458, 4
  %4460 = trunc i32 %4459 to i8
  %4461 = and i8 %4460, 1
  store i8 %4461, i8* %27, align 1
  %4462 = icmp eq i32 %4447, 0
  %4463 = zext i1 %4462 to i8
  store i8 %4463, i8* %30, align 1
  %4464 = lshr i32 %4447, 31
  %4465 = trunc i32 %4464 to i8
  store i8 %4465, i8* %33, align 1
  %4466 = lshr i32 %4446, 31
  %4467 = xor i32 %4464, %4466
  %4468 = add nuw nsw i32 %4467, %4464
  %4469 = icmp eq i32 %4468, 2
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %39, align 1
  %4471 = sext i32 %4447 to i64
  store i64 %4471, i64* %RDX.i2239, align 8
  %4472 = shl nsw i64 %4471, 3
  %4473 = add i64 %4472, %4442
  %4474 = add i64 %4407, 55
  store i64 %4474, i64* %PC.i, align 8
  %4475 = inttoptr i64 %4473 to double*
  store double %4438, double* %4475, align 8
  %4476 = load i64, i64* %RBP.i, align 8
  %4477 = add i64 %4476, -136
  %4478 = load i64, i64* %PC.i, align 8
  %4479 = add i64 %4478, 8
  store i64 %4479, i64* %PC.i, align 8
  %4480 = inttoptr i64 %4477 to double*
  %4481 = load double, double* %4480, align 8
  store double %4481, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4482 = add i64 %4476, -176
  %4483 = add i64 %4478, 16
  store i64 %4483, i64* %PC.i, align 8
  %4484 = inttoptr i64 %4482 to double*
  %4485 = load double, double* %4484, align 8
  %4486 = fsub double %4481, %4485
  store double %4486, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4487 = add i64 %4476, -120
  %4488 = add i64 %4478, 21
  store i64 %4488, i64* %PC.i, align 8
  %4489 = inttoptr i64 %4487 to double*
  store double %4486, double* %4489, align 8
  %4490 = load i64, i64* %RBP.i, align 8
  %4491 = add i64 %4490, -144
  %4492 = load i64, i64* %PC.i, align 8
  %4493 = add i64 %4492, 8
  store i64 %4493, i64* %PC.i, align 8
  %4494 = inttoptr i64 %4491 to double*
  %4495 = load double, double* %4494, align 8
  store double %4495, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4496 = add i64 %4490, -168
  %4497 = add i64 %4492, 16
  store i64 %4497, i64* %PC.i, align 8
  %4498 = inttoptr i64 %4496 to double*
  %4499 = load double, double* %4498, align 8
  %4500 = fadd double %4495, %4499
  store double %4500, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4501 = add i64 %4490, -128
  %4502 = add i64 %4492, 21
  store i64 %4502, i64* %PC.i, align 8
  %4503 = inttoptr i64 %4501 to double*
  store double %4500, double* %4503, align 8
  %4504 = load i64, i64* %RBP.i, align 8
  %4505 = add i64 %4504, -72
  %4506 = load i64, i64* %PC.i, align 8
  %4507 = add i64 %4506, 5
  store i64 %4507, i64* %PC.i, align 8
  %4508 = inttoptr i64 %4505 to double*
  %4509 = load double, double* %4508, align 8
  store double %4509, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4510 = add i64 %4504, -120
  %4511 = add i64 %4506, 10
  store i64 %4511, i64* %PC.i, align 8
  %4512 = inttoptr i64 %4510 to double*
  %4513 = load double, double* %4512, align 8
  %4514 = fmul double %4509, %4513
  store double %4514, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4515 = add i64 %4504, -80
  %4516 = add i64 %4506, 15
  store i64 %4516, i64* %PC.i, align 8
  %4517 = inttoptr i64 %4515 to double*
  %4518 = load double, double* %4517, align 8
  store double %4518, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4519 = add i64 %4504, -128
  %4520 = add i64 %4506, 20
  store i64 %4520, i64* %PC.i, align 8
  %4521 = inttoptr i64 %4519 to double*
  %4522 = load double, double* %4521, align 8
  %4523 = fmul double %4518, %4522
  store double %4523, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4524 = fsub double %4514, %4523
  store double %4524, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4525 = add i64 %4504, -16
  %4526 = add i64 %4506, 28
  store i64 %4526, i64* %PC.i, align 8
  %4527 = inttoptr i64 %4525 to i64*
  %4528 = load i64, i64* %4527, align 8
  store i64 %4528, i64* %RAX.i2224, align 8
  %4529 = add i64 %4504, -32
  %4530 = add i64 %4506, 32
  store i64 %4530, i64* %PC.i, align 8
  %4531 = inttoptr i64 %4529 to i32*
  %4532 = load i32, i32* %4531, align 4
  %4533 = sext i32 %4532 to i64
  store i64 %4533, i64* %RDX.i2239, align 8
  %4534 = shl nsw i64 %4533, 3
  %4535 = add i64 %4534, %4528
  %4536 = add i64 %4506, 37
  store i64 %4536, i64* %PC.i, align 8
  %4537 = inttoptr i64 %4535 to double*
  store double %4524, double* %4537, align 8
  %4538 = load i64, i64* %RBP.i, align 8
  %4539 = add i64 %4538, -72
  %4540 = load i64, i64* %PC.i, align 8
  %4541 = add i64 %4540, 5
  store i64 %4541, i64* %PC.i, align 8
  %4542 = inttoptr i64 %4539 to double*
  %4543 = load double, double* %4542, align 8
  store double %4543, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4544 = add i64 %4538, -128
  %4545 = add i64 %4540, 10
  store i64 %4545, i64* %PC.i, align 8
  %4546 = inttoptr i64 %4544 to double*
  %4547 = load double, double* %4546, align 8
  %4548 = fmul double %4543, %4547
  store double %4548, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4549 = add i64 %4538, -80
  %4550 = add i64 %4540, 15
  store i64 %4550, i64* %PC.i, align 8
  %4551 = inttoptr i64 %4549 to double*
  %4552 = load double, double* %4551, align 8
  store double %4552, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4553 = add i64 %4538, -120
  %4554 = add i64 %4540, 20
  store i64 %4554, i64* %PC.i, align 8
  %4555 = inttoptr i64 %4553 to double*
  %4556 = load double, double* %4555, align 8
  %4557 = fmul double %4552, %4556
  store double %4557, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4558 = fadd double %4548, %4557
  store double %4558, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4559 = add i64 %4538, -16
  %4560 = add i64 %4540, 28
  store i64 %4560, i64* %PC.i, align 8
  %4561 = inttoptr i64 %4559 to i64*
  %4562 = load i64, i64* %4561, align 8
  store i64 %4562, i64* %RAX.i2224, align 8
  %4563 = add i64 %4538, -32
  %4564 = add i64 %4540, 31
  store i64 %4564, i64* %PC.i, align 8
  %4565 = inttoptr i64 %4563 to i32*
  %4566 = load i32, i32* %4565, align 4
  %4567 = add i32 %4566, 1
  %4568 = zext i32 %4567 to i64
  store i64 %4568, i64* %RCX.i2236, align 8
  %4569 = icmp eq i32 %4566, -1
  %4570 = icmp eq i32 %4567, 0
  %4571 = or i1 %4569, %4570
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %14, align 1
  %4573 = and i32 %4567, 255
  %4574 = tail call i32 @llvm.ctpop.i32(i32 %4573)
  %4575 = trunc i32 %4574 to i8
  %4576 = and i8 %4575, 1
  %4577 = xor i8 %4576, 1
  store i8 %4577, i8* %21, align 1
  %4578 = xor i32 %4566, %4567
  %4579 = lshr i32 %4578, 4
  %4580 = trunc i32 %4579 to i8
  %4581 = and i8 %4580, 1
  store i8 %4581, i8* %27, align 1
  %4582 = icmp eq i32 %4567, 0
  %4583 = zext i1 %4582 to i8
  store i8 %4583, i8* %30, align 1
  %4584 = lshr i32 %4567, 31
  %4585 = trunc i32 %4584 to i8
  store i8 %4585, i8* %33, align 1
  %4586 = lshr i32 %4566, 31
  %4587 = xor i32 %4584, %4586
  %4588 = add nuw nsw i32 %4587, %4584
  %4589 = icmp eq i32 %4588, 2
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %39, align 1
  %4591 = sext i32 %4567 to i64
  store i64 %4591, i64* %RDX.i2239, align 8
  %4592 = shl nsw i64 %4591, 3
  %4593 = add i64 %4592, %4562
  %4594 = add i64 %4540, 42
  store i64 %4594, i64* %PC.i, align 8
  %4595 = inttoptr i64 %4593 to double*
  store double %4558, double* %4595, align 8
  %4596 = load i64, i64* %RBP.i, align 8
  %4597 = add i64 %4596, -136
  %4598 = load i64, i64* %PC.i, align 8
  %4599 = add i64 %4598, 8
  store i64 %4599, i64* %PC.i, align 8
  %4600 = inttoptr i64 %4597 to double*
  %4601 = load double, double* %4600, align 8
  store double %4601, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4602 = add i64 %4596, -176
  %4603 = add i64 %4598, 16
  store i64 %4603, i64* %PC.i, align 8
  %4604 = inttoptr i64 %4602 to double*
  %4605 = load double, double* %4604, align 8
  %4606 = fadd double %4601, %4605
  store double %4606, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4607 = add i64 %4596, -120
  %4608 = add i64 %4598, 21
  store i64 %4608, i64* %PC.i, align 8
  %4609 = inttoptr i64 %4607 to double*
  store double %4606, double* %4609, align 8
  %4610 = load i64, i64* %RBP.i, align 8
  %4611 = add i64 %4610, -144
  %4612 = load i64, i64* %PC.i, align 8
  %4613 = add i64 %4612, 8
  store i64 %4613, i64* %PC.i, align 8
  %4614 = inttoptr i64 %4611 to double*
  %4615 = load double, double* %4614, align 8
  store double %4615, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4616 = add i64 %4610, -168
  %4617 = add i64 %4612, 16
  store i64 %4617, i64* %PC.i, align 8
  %4618 = inttoptr i64 %4616 to double*
  %4619 = load double, double* %4618, align 8
  %4620 = fsub double %4615, %4619
  store double %4620, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4621 = add i64 %4610, -128
  %4622 = add i64 %4612, 21
  store i64 %4622, i64* %PC.i, align 8
  %4623 = inttoptr i64 %4621 to double*
  store double %4620, double* %4623, align 8
  %4624 = load i64, i64* %RBP.i, align 8
  %4625 = add i64 %4624, -104
  %4626 = load i64, i64* %PC.i, align 8
  %4627 = add i64 %4626, 5
  store i64 %4627, i64* %PC.i, align 8
  %4628 = inttoptr i64 %4625 to double*
  %4629 = load double, double* %4628, align 8
  store double %4629, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4630 = add i64 %4624, -120
  %4631 = add i64 %4626, 10
  store i64 %4631, i64* %PC.i, align 8
  %4632 = inttoptr i64 %4630 to double*
  %4633 = load double, double* %4632, align 8
  %4634 = fmul double %4629, %4633
  store double %4634, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4635 = add i64 %4624, -112
  %4636 = add i64 %4626, 15
  store i64 %4636, i64* %PC.i, align 8
  %4637 = inttoptr i64 %4635 to double*
  %4638 = load double, double* %4637, align 8
  store double %4638, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4639 = add i64 %4624, -128
  %4640 = add i64 %4626, 20
  store i64 %4640, i64* %PC.i, align 8
  %4641 = inttoptr i64 %4639 to double*
  %4642 = load double, double* %4641, align 8
  %4643 = fmul double %4638, %4642
  store double %4643, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4644 = fsub double %4634, %4643
  store double %4644, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4645 = add i64 %4624, -16
  %4646 = add i64 %4626, 28
  store i64 %4646, i64* %PC.i, align 8
  %4647 = inttoptr i64 %4645 to i64*
  %4648 = load i64, i64* %4647, align 8
  store i64 %4648, i64* %RAX.i2224, align 8
  %4649 = add i64 %4624, -40
  %4650 = add i64 %4626, 32
  store i64 %4650, i64* %PC.i, align 8
  %4651 = inttoptr i64 %4649 to i32*
  %4652 = load i32, i32* %4651, align 4
  %4653 = sext i32 %4652 to i64
  store i64 %4653, i64* %RDX.i2239, align 8
  %4654 = shl nsw i64 %4653, 3
  %4655 = add i64 %4654, %4648
  %4656 = add i64 %4626, 37
  store i64 %4656, i64* %PC.i, align 8
  %4657 = inttoptr i64 %4655 to double*
  store double %4644, double* %4657, align 8
  %4658 = load i64, i64* %RBP.i, align 8
  %4659 = add i64 %4658, -104
  %4660 = load i64, i64* %PC.i, align 8
  %4661 = add i64 %4660, 5
  store i64 %4661, i64* %PC.i, align 8
  %4662 = inttoptr i64 %4659 to double*
  %4663 = load double, double* %4662, align 8
  store double %4663, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4664 = add i64 %4658, -128
  %4665 = add i64 %4660, 10
  store i64 %4665, i64* %PC.i, align 8
  %4666 = inttoptr i64 %4664 to double*
  %4667 = load double, double* %4666, align 8
  %4668 = fmul double %4663, %4667
  store double %4668, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4669 = add i64 %4658, -112
  %4670 = add i64 %4660, 15
  store i64 %4670, i64* %PC.i, align 8
  %4671 = inttoptr i64 %4669 to double*
  %4672 = load double, double* %4671, align 8
  store double %4672, double* %1046, align 1
  store double 0.000000e+00, double* %1048, align 1
  %4673 = add i64 %4658, -120
  %4674 = add i64 %4660, 20
  store i64 %4674, i64* %PC.i, align 8
  %4675 = inttoptr i64 %4673 to double*
  %4676 = load double, double* %4675, align 8
  %4677 = fmul double %4672, %4676
  store double %4677, double* %1046, align 1
  store i64 0, i64* %1047, align 1
  %4678 = fadd double %4668, %4677
  store double %4678, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4679 = add i64 %4658, -16
  %4680 = add i64 %4660, 28
  store i64 %4680, i64* %PC.i, align 8
  %4681 = inttoptr i64 %4679 to i64*
  %4682 = load i64, i64* %4681, align 8
  store i64 %4682, i64* %RAX.i2224, align 8
  %4683 = add i64 %4658, -40
  %4684 = add i64 %4660, 31
  store i64 %4684, i64* %PC.i, align 8
  %4685 = inttoptr i64 %4683 to i32*
  %4686 = load i32, i32* %4685, align 4
  %4687 = add i32 %4686, 1
  %4688 = zext i32 %4687 to i64
  store i64 %4688, i64* %RCX.i2236, align 8
  %4689 = icmp eq i32 %4686, -1
  %4690 = icmp eq i32 %4687, 0
  %4691 = or i1 %4689, %4690
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %14, align 1
  %4693 = and i32 %4687, 255
  %4694 = tail call i32 @llvm.ctpop.i32(i32 %4693)
  %4695 = trunc i32 %4694 to i8
  %4696 = and i8 %4695, 1
  %4697 = xor i8 %4696, 1
  store i8 %4697, i8* %21, align 1
  %4698 = xor i32 %4686, %4687
  %4699 = lshr i32 %4698, 4
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  store i8 %4701, i8* %27, align 1
  %4702 = icmp eq i32 %4687, 0
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %30, align 1
  %4704 = lshr i32 %4687, 31
  %4705 = trunc i32 %4704 to i8
  store i8 %4705, i8* %33, align 1
  %4706 = lshr i32 %4686, 31
  %4707 = xor i32 %4704, %4706
  %4708 = add nuw nsw i32 %4707, %4704
  %4709 = icmp eq i32 %4708, 2
  %4710 = zext i1 %4709 to i8
  store i8 %4710, i8* %39, align 1
  %4711 = sext i32 %4687 to i64
  store i64 %4711, i64* %RDX.i2239, align 8
  %4712 = shl nsw i64 %4711, 3
  %4713 = add i64 %4712, %4682
  %4714 = add i64 %4660, 42
  store i64 %4714, i64* %PC.i, align 8
  %4715 = inttoptr i64 %4713 to double*
  store double %4678, double* %4715, align 8
  %4716 = load i64, i64* %RBP.i, align 8
  %4717 = add i64 %4716, -28
  %4718 = load i64, i64* %PC.i, align 8
  %4719 = add i64 %4718, 3
  store i64 %4719, i64* %PC.i, align 8
  %4720 = inttoptr i64 %4717 to i32*
  %4721 = load i32, i32* %4720, align 4
  %4722 = add i32 %4721, 2
  %4723 = zext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i2224, align 8
  %4724 = icmp ugt i32 %4721, -3
  %4725 = zext i1 %4724 to i8
  store i8 %4725, i8* %14, align 1
  %4726 = and i32 %4722, 255
  %4727 = tail call i32 @llvm.ctpop.i32(i32 %4726)
  %4728 = trunc i32 %4727 to i8
  %4729 = and i8 %4728, 1
  %4730 = xor i8 %4729, 1
  store i8 %4730, i8* %21, align 1
  %4731 = xor i32 %4721, %4722
  %4732 = lshr i32 %4731, 4
  %4733 = trunc i32 %4732 to i8
  %4734 = and i8 %4733, 1
  store i8 %4734, i8* %27, align 1
  %4735 = icmp eq i32 %4722, 0
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %30, align 1
  %4737 = lshr i32 %4722, 31
  %4738 = trunc i32 %4737 to i8
  store i8 %4738, i8* %33, align 1
  %4739 = lshr i32 %4721, 31
  %4740 = xor i32 %4737, %4739
  %4741 = add nuw nsw i32 %4740, %4737
  %4742 = icmp eq i32 %4741, 2
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %39, align 1
  %4744 = add i64 %4718, 9
  store i64 %4744, i64* %PC.i, align 8
  store i32 %4722, i32* %4720, align 4
  %4745 = load i64, i64* %PC.i, align 8
  %4746 = add i64 %4745, -822
  store i64 %4746, i64* %3, align 8
  br label %block_.L_403c90

block_.L_403fcb:                                  ; preds = %block_.L_403c90
  %4747 = load i64, i64* %RBP.i, align 8
  %4748 = add i64 %4747, -60
  %4749 = add i64 %3687, 8
  store i64 %4749, i64* %PC.i, align 8
  %4750 = inttoptr i64 %4748 to i32*
  %4751 = load i32, i32* %4750, align 4
  %4752 = zext i32 %4751 to i64
  store i64 %4752, i64* %RAX.i2224, align 8
  %4753 = add i64 %4747, -44
  %4754 = add i64 %3687, 11
  store i64 %4754, i64* %PC.i, align 8
  %4755 = inttoptr i64 %4753 to i32*
  %4756 = load i32, i32* %4755, align 4
  %4757 = add i32 %4756, %4751
  %4758 = zext i32 %4757 to i64
  store i64 %4758, i64* %RAX.i2224, align 8
  %4759 = icmp ult i32 %4757, %4751
  %4760 = icmp ult i32 %4757, %4756
  %4761 = or i1 %4759, %4760
  %4762 = zext i1 %4761 to i8
  store i8 %4762, i8* %14, align 1
  %4763 = and i32 %4757, 255
  %4764 = tail call i32 @llvm.ctpop.i32(i32 %4763)
  %4765 = trunc i32 %4764 to i8
  %4766 = and i8 %4765, 1
  %4767 = xor i8 %4766, 1
  store i8 %4767, i8* %21, align 1
  %4768 = xor i32 %4756, %4751
  %4769 = xor i32 %4768, %4757
  %4770 = lshr i32 %4769, 4
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  store i8 %4772, i8* %27, align 1
  %4773 = icmp eq i32 %4757, 0
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %30, align 1
  %4775 = lshr i32 %4757, 31
  %4776 = trunc i32 %4775 to i8
  store i8 %4776, i8* %33, align 1
  %4777 = lshr i32 %4751, 31
  %4778 = lshr i32 %4756, 31
  %4779 = xor i32 %4775, %4777
  %4780 = xor i32 %4775, %4778
  %4781 = add nuw nsw i32 %4779, %4780
  %4782 = icmp eq i32 %4781, 2
  %4783 = zext i1 %4782 to i8
  store i8 %4783, i8* %39, align 1
  %4784 = add i64 %3687, 14
  store i64 %4784, i64* %PC.i, align 8
  store i32 %4757, i32* %4755, align 4
  %4785 = load i64, i64* %PC.i, align 8
  %4786 = add i64 %4785, -1910
  store i64 %4786, i64* %3, align 8
  br label %block_.L_403863

block_.L_403fde:                                  ; preds = %block_.L_403863
  %4787 = load i64, i64* %RSP.i2249, align 8
  %4788 = add i64 %4787, 48
  store i64 %4788, i64* %RSP.i2249, align 8
  %4789 = icmp ugt i64 %4787, -49
  %4790 = zext i1 %4789 to i8
  store i8 %4790, i8* %14, align 1
  %4791 = trunc i64 %4788 to i32
  %4792 = and i32 %4791, 255
  %4793 = tail call i32 @llvm.ctpop.i32(i32 %4792)
  %4794 = trunc i32 %4793 to i8
  %4795 = and i8 %4794, 1
  %4796 = xor i8 %4795, 1
  store i8 %4796, i8* %21, align 1
  %4797 = xor i64 %4787, 16
  %4798 = xor i64 %4797, %4788
  %4799 = lshr i64 %4798, 4
  %4800 = trunc i64 %4799 to i8
  %4801 = and i8 %4800, 1
  store i8 %4801, i8* %27, align 1
  %4802 = icmp eq i64 %4788, 0
  %4803 = zext i1 %4802 to i8
  store i8 %4803, i8* %30, align 1
  %4804 = lshr i64 %4788, 63
  %4805 = trunc i64 %4804 to i8
  store i8 %4805, i8* %33, align 1
  %4806 = lshr i64 %4787, 63
  %4807 = xor i64 %4804, %4806
  %4808 = add nuw nsw i64 %4807, %4804
  %4809 = icmp eq i64 %4808, 2
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %39, align 1
  %4811 = add i64 %2148, 5
  store i64 %4811, i64* %PC.i, align 8
  %4812 = add i64 %4787, 56
  %4813 = inttoptr i64 %4788 to i64*
  %4814 = load i64, i64* %4813, align 8
  store i64 %4814, i64* %RBP.i, align 8
  store i64 %4812, i64* %6, align 8
  %4815 = add i64 %2148, 6
  store i64 %4815, i64* %PC.i, align 8
  %4816 = inttoptr i64 %4812 to i64*
  %4817 = load i64, i64* %4816, align 8
  store i64 %4817, i64* %3, align 8
  %4818 = add i64 %4787, 64
  store i64 %4818, i64* %6, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40357d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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

define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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

define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
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

define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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

define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_jmpq_.L_403326(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40384d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
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

define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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

define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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

define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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

define %struct.Memory* @routine_jmpq_.L_403591(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_403fde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x849__rip__type* @G_0x849__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

define %struct.Memory* @routine_jge_.L_403c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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

define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403910(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x496__rip__type* @G_0x496__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_403fcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RDX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403c90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403fd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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

define %struct.Memory* @routine_jmpq_.L_403863(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
