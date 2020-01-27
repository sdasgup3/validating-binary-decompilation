; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x496__rip__4209706__type = type <{ [16 x i8] }>
%G_0x849__rip__4208759__type = type <{ [16 x i8] }>
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
@G_0x496__rip__4209706_ = local_unnamed_addr global %G_0x496__rip__4209706__type zeroinitializer
@G_0x849__rip__4208759_ = local_unnamed_addr global %G_0x849__rip__4208759__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @cftmdl(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
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
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2242 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i2242, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RDX.i2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i2239, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %RCX.i2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX.i2236, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %RSI.i2233 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %3, align 8
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
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 %70, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -28
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %RAX.i2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %94 = bitcast [32 x %union.VectorReg]* %93 to double*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %96 = bitcast i64* %95 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_403326

block_.L_403326:                                  ; preds = %block_403332, %entry
  %97 = phi i64 [ %1010, %block_403332 ], [ %.pre, %entry ]
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -28
  %100 = add i64 %97, 3
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RAX.i2224, align 8
  %104 = add i64 %98, -8
  %105 = add i64 %97, 6
  store i64 %105, i64* %3, align 8
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
  store i64 %135, i64* %3, align 8
  %136 = load i32, i32* %101, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i2224, align 8
  %138 = add i64 %134, 6
  store i64 %138, i64* %3, align 8
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
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %140, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -32
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 3
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX.i2224, align 8
  %177 = add i64 %170, -8
  %178 = add i64 %172, 6
  store i64 %178, i64* %3, align 8
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
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %181, i32* %210, align 4
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -36
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i2224, align 8
  %218 = add i64 %211, -8
  %219 = add i64 %213, 6
  store i64 %219, i64* %3, align 8
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
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  store i32 %222, i32* %251, align 4
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -16
  %254 = load i64, i64* %3, align 8
  %255 = add i64 %254, 4
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RCX.i2236, align 8
  %258 = add i64 %252, -28
  %259 = add i64 %254, 8
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RDX.i2239, align 8
  %263 = shl nsw i64 %262, 3
  %264 = add i64 %263, %257
  %265 = add i64 %254, 13
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to double*
  %267 = load double, double* %266, align 8
  store double %267, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %268 = add i64 %254, 17
  store i64 %268, i64* %3, align 8
  %269 = load i64, i64* %256, align 8
  store i64 %269, i64* %RCX.i2236, align 8
  %270 = add i64 %252, -32
  %271 = add i64 %254, 21
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RDX.i2239, align 8
  %275 = shl nsw i64 %274, 3
  %276 = add i64 %275, %269
  %277 = add i64 %254, 26
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to double*
  %279 = load double, double* %278, align 8
  %280 = fadd double %267, %279
  store double %280, double* %94, align 1
  store i64 0, i64* %95, align 1
  %281 = add i64 %252, -120
  %282 = add i64 %254, 31
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to double*
  store double %280, double* %283, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -16
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RCX.i2236, align 8
  %290 = add i64 %284, -28
  %291 = add i64 %286, 7
  store i64 %291, i64* %3, align 8
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
  %309 = zext i1 %297 to i8
  store i8 %309, i8* %30, align 1
  %310 = lshr i32 %294, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %33, align 1
  %312 = lshr i32 %293, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %39, align 1
  %317 = sext i32 %294 to i64
  store i64 %317, i64* %RDX.i2239, align 8
  %318 = shl nsw i64 %317, 3
  %319 = add i64 %318, %289
  %320 = add i64 %286, 18
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to double*
  %322 = load double, double* %321, align 8
  store double %322, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %323 = add i64 %286, 22
  store i64 %323, i64* %3, align 8
  %324 = load i64, i64* %288, align 8
  store i64 %324, i64* %RCX.i2236, align 8
  %325 = add i64 %284, -32
  %326 = add i64 %286, 25
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX.i2224, align 8
  %331 = icmp eq i32 %328, -1
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1
  %340 = xor i32 %328, %329
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %27, align 1
  %344 = zext i1 %332 to i8
  store i8 %344, i8* %30, align 1
  %345 = lshr i32 %329, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %33, align 1
  %347 = lshr i32 %328, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %345
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %39, align 1
  %352 = sext i32 %329 to i64
  store i64 %352, i64* %RDX.i2239, align 8
  %353 = shl nsw i64 %352, 3
  %354 = add i64 %353, %324
  %355 = add i64 %286, 36
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to double*
  %357 = load double, double* %356, align 8
  %358 = fadd double %322, %357
  store double %358, double* %94, align 1
  store i64 0, i64* %95, align 1
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -128
  %361 = add i64 %286, 41
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to double*
  store double %358, double* %362, align 8
  %363 = load i64, i64* %RBP.i, align 8
  %364 = add i64 %363, -16
  %365 = load i64, i64* %3, align 8
  %366 = add i64 %365, 4
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %364 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RCX.i2236, align 8
  %369 = add i64 %363, -28
  %370 = add i64 %365, 8
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RDX.i2239, align 8
  %374 = shl nsw i64 %373, 3
  %375 = add i64 %374, %368
  %376 = add i64 %365, 13
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to double*
  %378 = load double, double* %377, align 8
  store double %378, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %379 = add i64 %365, 17
  store i64 %379, i64* %3, align 8
  %380 = load i64, i64* %367, align 8
  store i64 %380, i64* %RCX.i2236, align 8
  %381 = add i64 %363, -32
  %382 = add i64 %365, 21
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  store i64 %385, i64* %RDX.i2239, align 8
  %386 = shl nsw i64 %385, 3
  %387 = add i64 %386, %380
  %388 = add i64 %365, 26
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to double*
  %390 = load double, double* %389, align 8
  %391 = fsub double %378, %390
  store double %391, double* %94, align 1
  store i64 0, i64* %95, align 1
  %392 = add i64 %363, -136
  %393 = add i64 %365, 34
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to double*
  store double %391, double* %394, align 8
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -16
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, 4
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %396 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RCX.i2236, align 8
  %401 = add i64 %395, -28
  %402 = add i64 %397, 7
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = add i32 %404, 1
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RAX.i2224, align 8
  %407 = icmp eq i32 %404, -1
  %408 = icmp eq i32 %405, 0
  %409 = or i1 %407, %408
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %14, align 1
  %411 = and i32 %405, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %21, align 1
  %416 = xor i32 %404, %405
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %27, align 1
  %420 = zext i1 %408 to i8
  store i8 %420, i8* %30, align 1
  %421 = lshr i32 %405, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %33, align 1
  %423 = lshr i32 %404, 31
  %424 = xor i32 %421, %423
  %425 = add nuw nsw i32 %424, %421
  %426 = icmp eq i32 %425, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %39, align 1
  %428 = sext i32 %405 to i64
  store i64 %428, i64* %RDX.i2239, align 8
  %429 = shl nsw i64 %428, 3
  %430 = add i64 %429, %400
  %431 = add i64 %397, 18
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to double*
  %433 = load double, double* %432, align 8
  store double %433, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %434 = add i64 %397, 22
  store i64 %434, i64* %3, align 8
  %435 = load i64, i64* %399, align 8
  store i64 %435, i64* %RCX.i2236, align 8
  %436 = add i64 %395, -32
  %437 = add i64 %397, 25
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = add i32 %439, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i2224, align 8
  %442 = icmp eq i32 %439, -1
  %443 = icmp eq i32 %440, 0
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = and i32 %440, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i32 %439, %440
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %27, align 1
  %455 = zext i1 %443 to i8
  store i8 %455, i8* %30, align 1
  %456 = lshr i32 %440, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %33, align 1
  %458 = lshr i32 %439, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %456
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %39, align 1
  %463 = sext i32 %440 to i64
  store i64 %463, i64* %RDX.i2239, align 8
  %464 = shl nsw i64 %463, 3
  %465 = add i64 %464, %435
  %466 = add i64 %397, 36
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to double*
  %468 = load double, double* %467, align 8
  %469 = fsub double %433, %468
  store double %469, double* %94, align 1
  store i64 0, i64* %95, align 1
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -144
  %472 = add i64 %397, 44
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to double*
  store double %469, double* %473, align 8
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -16
  %476 = load i64, i64* %3, align 8
  %477 = add i64 %476, 4
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %475 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RCX.i2236, align 8
  %480 = add i64 %474, -36
  %481 = add i64 %476, 8
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RDX.i2239, align 8
  %485 = shl nsw i64 %484, 3
  %486 = add i64 %485, %479
  %487 = add i64 %476, 13
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to double*
  %489 = load double, double* %488, align 8
  store double %489, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %490 = add i64 %476, 17
  store i64 %490, i64* %3, align 8
  %491 = load i64, i64* %478, align 8
  store i64 %491, i64* %RCX.i2236, align 8
  %492 = add i64 %474, -40
  %493 = add i64 %476, 21
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %RDX.i2239, align 8
  %497 = shl nsw i64 %496, 3
  %498 = add i64 %497, %491
  %499 = add i64 %476, 26
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to double*
  %501 = load double, double* %500, align 8
  %502 = fadd double %489, %501
  store double %502, double* %94, align 1
  store i64 0, i64* %95, align 1
  %503 = add i64 %474, -152
  %504 = add i64 %476, 34
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to double*
  store double %502, double* %505, align 8
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -16
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 4
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %507 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RCX.i2236, align 8
  %512 = add i64 %506, -36
  %513 = add i64 %508, 7
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = add i32 %515, 1
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RAX.i2224, align 8
  %518 = icmp eq i32 %515, -1
  %519 = icmp eq i32 %516, 0
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %14, align 1
  %522 = and i32 %516, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %21, align 1
  %527 = xor i32 %515, %516
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %27, align 1
  %531 = zext i1 %519 to i8
  store i8 %531, i8* %30, align 1
  %532 = lshr i32 %516, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %33, align 1
  %534 = lshr i32 %515, 31
  %535 = xor i32 %532, %534
  %536 = add nuw nsw i32 %535, %532
  %537 = icmp eq i32 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %39, align 1
  %539 = sext i32 %516 to i64
  store i64 %539, i64* %RDX.i2239, align 8
  %540 = shl nsw i64 %539, 3
  %541 = add i64 %540, %511
  %542 = add i64 %508, 18
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to double*
  %544 = load double, double* %543, align 8
  store double %544, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %545 = add i64 %508, 22
  store i64 %545, i64* %3, align 8
  %546 = load i64, i64* %510, align 8
  store i64 %546, i64* %RCX.i2236, align 8
  %547 = add i64 %506, -40
  %548 = add i64 %508, 25
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, 1
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX.i2224, align 8
  %553 = icmp eq i32 %550, -1
  %554 = icmp eq i32 %551, 0
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %551, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i32 %550, %551
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %27, align 1
  %566 = zext i1 %554 to i8
  store i8 %566, i8* %30, align 1
  %567 = lshr i32 %551, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %33, align 1
  %569 = lshr i32 %550, 31
  %570 = xor i32 %567, %569
  %571 = add nuw nsw i32 %570, %567
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %39, align 1
  %574 = sext i32 %551 to i64
  store i64 %574, i64* %RDX.i2239, align 8
  %575 = shl nsw i64 %574, 3
  %576 = add i64 %575, %546
  %577 = add i64 %508, 36
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to double*
  %579 = load double, double* %578, align 8
  %580 = fadd double %544, %579
  store double %580, double* %94, align 1
  store i64 0, i64* %95, align 1
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -160
  %583 = add i64 %508, 44
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to double*
  store double %580, double* %584, align 8
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -16
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 4
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i64*
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %RCX.i2236, align 8
  %591 = add i64 %585, -36
  %592 = add i64 %587, 8
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %RDX.i2239, align 8
  %596 = shl nsw i64 %595, 3
  %597 = add i64 %596, %590
  %598 = add i64 %587, 13
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to double*
  %600 = load double, double* %599, align 8
  store double %600, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %601 = add i64 %587, 17
  store i64 %601, i64* %3, align 8
  %602 = load i64, i64* %589, align 8
  store i64 %602, i64* %RCX.i2236, align 8
  %603 = add i64 %585, -40
  %604 = add i64 %587, 21
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sext i32 %606 to i64
  store i64 %607, i64* %RDX.i2239, align 8
  %608 = shl nsw i64 %607, 3
  %609 = add i64 %608, %602
  %610 = add i64 %587, 26
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to double*
  %612 = load double, double* %611, align 8
  %613 = fsub double %600, %612
  store double %613, double* %94, align 1
  store i64 0, i64* %95, align 1
  %614 = add i64 %585, -168
  %615 = add i64 %587, 34
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to double*
  store double %613, double* %616, align 8
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -16
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RCX.i2236, align 8
  %623 = add i64 %617, -36
  %624 = add i64 %619, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX.i2224, align 8
  %629 = icmp eq i32 %626, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %14, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %21, align 1
  %638 = xor i32 %626, %627
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %27, align 1
  %642 = zext i1 %630 to i8
  store i8 %642, i8* %30, align 1
  %643 = lshr i32 %627, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %33, align 1
  %645 = lshr i32 %626, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %643
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %39, align 1
  %650 = sext i32 %627 to i64
  store i64 %650, i64* %RDX.i2239, align 8
  %651 = shl nsw i64 %650, 3
  %652 = add i64 %651, %622
  %653 = add i64 %619, 18
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to double*
  %655 = load double, double* %654, align 8
  store double %655, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %656 = add i64 %619, 22
  store i64 %656, i64* %3, align 8
  %657 = load i64, i64* %621, align 8
  store i64 %657, i64* %RCX.i2236, align 8
  %658 = add i64 %617, -40
  %659 = add i64 %619, 25
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = add i32 %661, 1
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i2224, align 8
  %664 = icmp eq i32 %661, -1
  %665 = icmp eq i32 %662, 0
  %666 = or i1 %664, %665
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %14, align 1
  %668 = and i32 %662, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %21, align 1
  %673 = xor i32 %661, %662
  %674 = lshr i32 %673, 4
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  store i8 %676, i8* %27, align 1
  %677 = zext i1 %665 to i8
  store i8 %677, i8* %30, align 1
  %678 = lshr i32 %662, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %33, align 1
  %680 = lshr i32 %661, 31
  %681 = xor i32 %678, %680
  %682 = add nuw nsw i32 %681, %678
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %685 = sext i32 %662 to i64
  store i64 %685, i64* %RDX.i2239, align 8
  %686 = shl nsw i64 %685, 3
  %687 = add i64 %686, %657
  %688 = add i64 %619, 36
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to double*
  %690 = load double, double* %689, align 8
  %691 = fsub double %655, %690
  store double %691, double* %94, align 1
  store i64 0, i64* %95, align 1
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -176
  %694 = add i64 %619, 44
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to double*
  store double %691, double* %695, align 8
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -120
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 5
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %697 to double*
  %701 = load double, double* %700, align 8
  store double %701, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %702 = add i64 %696, -152
  %703 = add i64 %698, 13
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to double*
  %705 = load double, double* %704, align 8
  %706 = fadd double %701, %705
  store double %706, double* %94, align 1
  store i64 0, i64* %95, align 1
  %707 = add i64 %696, -16
  %708 = add i64 %698, 17
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RCX.i2236, align 8
  %711 = add i64 %696, -28
  %712 = add i64 %698, 21
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RDX.i2239, align 8
  %716 = shl nsw i64 %715, 3
  %717 = add i64 %716, %710
  %718 = add i64 %698, 26
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to double*
  store double %706, double* %719, align 8
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -128
  %722 = load i64, i64* %3, align 8
  %723 = add i64 %722, 5
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to double*
  %725 = load double, double* %724, align 8
  store double %725, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %726 = add i64 %720, -160
  %727 = add i64 %722, 13
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to double*
  %729 = load double, double* %728, align 8
  %730 = fadd double %725, %729
  store double %730, double* %94, align 1
  store i64 0, i64* %95, align 1
  %731 = add i64 %720, -16
  %732 = add i64 %722, 17
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RCX.i2236, align 8
  %735 = add i64 %720, -28
  %736 = add i64 %722, 20
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = add i32 %738, 1
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i2224, align 8
  %741 = icmp eq i32 %738, -1
  %742 = icmp eq i32 %739, 0
  %743 = or i1 %741, %742
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %14, align 1
  %745 = and i32 %739, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  %750 = xor i32 %738, %739
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %27, align 1
  %754 = zext i1 %742 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i32 %739, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = lshr i32 %738, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %755
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %39, align 1
  %762 = sext i32 %739 to i64
  store i64 %762, i64* %RDX.i2239, align 8
  %763 = shl nsw i64 %762, 3
  %764 = add i64 %763, %734
  %765 = add i64 %722, 31
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to double*
  store double %730, double* %766, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -120
  %769 = load i64, i64* %3, align 8
  %770 = add i64 %769, 5
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %768 to double*
  %772 = load double, double* %771, align 8
  store double %772, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %773 = add i64 %767, -152
  %774 = add i64 %769, 13
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to double*
  %776 = load double, double* %775, align 8
  %777 = fsub double %772, %776
  store double %777, double* %94, align 1
  store i64 0, i64* %95, align 1
  %778 = add i64 %767, -16
  %779 = add i64 %769, 17
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RCX.i2236, align 8
  %782 = add i64 %767, -36
  %783 = add i64 %769, 21
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RDX.i2239, align 8
  %787 = shl nsw i64 %786, 3
  %788 = add i64 %787, %781
  %789 = add i64 %769, 26
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to double*
  store double %777, double* %790, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -128
  %793 = load i64, i64* %3, align 8
  %794 = add i64 %793, 5
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %792 to double*
  %796 = load double, double* %795, align 8
  store double %796, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %797 = add i64 %791, -160
  %798 = add i64 %793, 13
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to double*
  %800 = load double, double* %799, align 8
  %801 = fsub double %796, %800
  store double %801, double* %94, align 1
  store i64 0, i64* %95, align 1
  %802 = add i64 %791, -16
  %803 = add i64 %793, 17
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RCX.i2236, align 8
  %806 = add i64 %791, -36
  %807 = add i64 %793, 20
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = add i32 %809, 1
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX.i2224, align 8
  %812 = icmp eq i32 %809, -1
  %813 = icmp eq i32 %810, 0
  %814 = or i1 %812, %813
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %14, align 1
  %816 = and i32 %810, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %21, align 1
  %821 = xor i32 %809, %810
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %27, align 1
  %825 = zext i1 %813 to i8
  store i8 %825, i8* %30, align 1
  %826 = lshr i32 %810, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %33, align 1
  %828 = lshr i32 %809, 31
  %829 = xor i32 %826, %828
  %830 = add nuw nsw i32 %829, %826
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %39, align 1
  %833 = sext i32 %810 to i64
  store i64 %833, i64* %RDX.i2239, align 8
  %834 = shl nsw i64 %833, 3
  %835 = add i64 %834, %805
  %836 = add i64 %793, 31
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to double*
  store double %801, double* %837, align 8
  %838 = load i64, i64* %RBP.i, align 8
  %839 = add i64 %838, -136
  %840 = load i64, i64* %3, align 8
  %841 = add i64 %840, 8
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %839 to double*
  %843 = load double, double* %842, align 8
  store double %843, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %844 = add i64 %838, -176
  %845 = add i64 %840, 16
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to double*
  %847 = load double, double* %846, align 8
  %848 = fsub double %843, %847
  store double %848, double* %94, align 1
  store i64 0, i64* %95, align 1
  %849 = add i64 %838, -16
  %850 = add i64 %840, 20
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %RCX.i2236, align 8
  %853 = add i64 %838, -32
  %854 = add i64 %840, 24
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RDX.i2239, align 8
  %858 = shl nsw i64 %857, 3
  %859 = add i64 %858, %852
  %860 = add i64 %840, 29
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to double*
  store double %848, double* %861, align 8
  %862 = load i64, i64* %RBP.i, align 8
  %863 = add i64 %862, -144
  %864 = load i64, i64* %3, align 8
  %865 = add i64 %864, 8
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %863 to double*
  %867 = load double, double* %866, align 8
  store double %867, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %868 = add i64 %862, -168
  %869 = add i64 %864, 16
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to double*
  %871 = load double, double* %870, align 8
  %872 = fadd double %867, %871
  store double %872, double* %94, align 1
  store i64 0, i64* %95, align 1
  %873 = add i64 %862, -16
  %874 = add i64 %864, 20
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RCX.i2236, align 8
  %877 = add i64 %862, -32
  %878 = add i64 %864, 23
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = add i32 %880, 1
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RAX.i2224, align 8
  %883 = icmp eq i32 %880, -1
  %884 = icmp eq i32 %881, 0
  %885 = or i1 %883, %884
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %14, align 1
  %887 = and i32 %881, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %21, align 1
  %892 = xor i32 %880, %881
  %893 = lshr i32 %892, 4
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %27, align 1
  %896 = zext i1 %884 to i8
  store i8 %896, i8* %30, align 1
  %897 = lshr i32 %881, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %33, align 1
  %899 = lshr i32 %880, 31
  %900 = xor i32 %897, %899
  %901 = add nuw nsw i32 %900, %897
  %902 = icmp eq i32 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1
  %904 = sext i32 %881 to i64
  store i64 %904, i64* %RDX.i2239, align 8
  %905 = shl nsw i64 %904, 3
  %906 = add i64 %905, %876
  %907 = add i64 %864, 34
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to double*
  store double %872, double* %908, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -136
  %911 = load i64, i64* %3, align 8
  %912 = add i64 %911, 8
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %910 to double*
  %914 = load double, double* %913, align 8
  store double %914, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %915 = add i64 %909, -176
  %916 = add i64 %911, 16
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to double*
  %918 = load double, double* %917, align 8
  %919 = fadd double %914, %918
  store double %919, double* %94, align 1
  store i64 0, i64* %95, align 1
  %920 = add i64 %909, -16
  %921 = add i64 %911, 20
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i64*
  %923 = load i64, i64* %922, align 8
  store i64 %923, i64* %RCX.i2236, align 8
  %924 = add i64 %909, -40
  %925 = add i64 %911, 24
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = sext i32 %927 to i64
  store i64 %928, i64* %RDX.i2239, align 8
  %929 = shl nsw i64 %928, 3
  %930 = add i64 %929, %923
  %931 = add i64 %911, 29
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to double*
  store double %919, double* %932, align 8
  %933 = load i64, i64* %RBP.i, align 8
  %934 = add i64 %933, -144
  %935 = load i64, i64* %3, align 8
  %936 = add i64 %935, 8
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %934 to double*
  %938 = load double, double* %937, align 8
  store double %938, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %939 = add i64 %933, -168
  %940 = add i64 %935, 16
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to double*
  %942 = load double, double* %941, align 8
  %943 = fsub double %938, %942
  store double %943, double* %94, align 1
  store i64 0, i64* %95, align 1
  %944 = add i64 %933, -16
  %945 = add i64 %935, 20
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %RCX.i2236, align 8
  %948 = add i64 %933, -40
  %949 = add i64 %935, 23
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = add i32 %951, 1
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RAX.i2224, align 8
  %954 = icmp eq i32 %951, -1
  %955 = icmp eq i32 %952, 0
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %14, align 1
  %958 = and i32 %952, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %21, align 1
  %963 = xor i32 %951, %952
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %27, align 1
  %967 = zext i1 %955 to i8
  store i8 %967, i8* %30, align 1
  %968 = lshr i32 %952, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %33, align 1
  %970 = lshr i32 %951, 31
  %971 = xor i32 %968, %970
  %972 = add nuw nsw i32 %971, %968
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %39, align 1
  %975 = sext i32 %952 to i64
  store i64 %975, i64* %RDX.i2239, align 8
  %976 = shl nsw i64 %975, 3
  %977 = add i64 %976, %947
  %978 = add i64 %935, 34
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to double*
  store double %943, double* %979, align 8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -28
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 3
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = add i32 %985, 2
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RAX.i2224, align 8
  %988 = icmp ugt i32 %985, -3
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %14, align 1
  %990 = and i32 %986, 255
  %991 = tail call i32 @llvm.ctpop.i32(i32 %990)
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = xor i8 %993, 1
  store i8 %994, i8* %21, align 1
  %995 = xor i32 %985, %986
  %996 = lshr i32 %995, 4
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %27, align 1
  %999 = icmp eq i32 %986, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %30, align 1
  %1001 = lshr i32 %986, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %33, align 1
  %1003 = lshr i32 %985, 31
  %1004 = xor i32 %1001, %1003
  %1005 = add nuw nsw i32 %1004, %1001
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %39, align 1
  %1008 = add i64 %982, 9
  store i64 %1008, i64* %3, align 8
  store i32 %986, i32* %984, align 4
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, -594
  store i64 %1010, i64* %3, align 8
  br label %block_.L_403326

block_.L_40357d:                                  ; preds = %block_.L_403326
  %1011 = add i64 %98, -24
  %1012 = add i64 %134, 4
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RAX.i2224, align 8
  %1015 = add i64 %1014, 16
  %1016 = add i64 %134, 9
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  %1019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %93, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1018, i64* %1019, align 1
  store double 0.000000e+00, double* %96, align 1
  %1020 = add i64 %98, -72
  %1021 = add i64 %134, 14
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  store i64 %1018, i64* %1022, align 8
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -56
  %1025 = load i64, i64* %3, align 8
  %1026 = add i64 %1025, 3
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1024 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RCX.i2236, align 8
  %1030 = add i64 %1023, -28
  %1031 = add i64 %1025, 6
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  store i32 %1028, i32* %1032, align 4
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1034 = bitcast %union.VectorReg* %1033 to double*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1036 = bitcast i64* %1035 to double*
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_403591

block_.L_403591:                                  ; preds = %block_4035a2, %block_.L_40357d
  %1037 = phi i64 [ %2033, %block_4035a2 ], [ %.pre1, %block_.L_40357d ]
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -28
  %1040 = add i64 %1037, 3
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX.i2224, align 8
  %1044 = add i64 %1038, -8
  %1045 = add i64 %1037, 6
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i2236, align 8
  %1049 = add i64 %1038, -56
  %1050 = add i64 %1037, 9
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, %1047
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RCX.i2236, align 8
  %1055 = lshr i32 %1053, 31
  %1056 = sub i32 %1042, %1053
  %1057 = icmp ult i32 %1042, %1053
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %14, align 1
  %1059 = and i32 %1056, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %21, align 1
  %1064 = xor i32 %1053, %1042
  %1065 = xor i32 %1064, %1056
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %27, align 1
  %1069 = icmp eq i32 %1056, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %30, align 1
  %1071 = lshr i32 %1056, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %33, align 1
  %1073 = lshr i32 %1042, 31
  %1074 = xor i32 %1055, %1073
  %1075 = xor i32 %1071, %1073
  %1076 = add nuw nsw i32 %1075, %1074
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %39, align 1
  %1079 = icmp ne i8 %1072, 0
  %1080 = xor i1 %1079, %1077
  %.v5 = select i1 %1080, i64 17, i64 700
  %1081 = add i64 %1037, %.v5
  store i64 %1081, i64* %3, align 8
  br i1 %1080, label %block_4035a2, label %block_.L_40384d

block_4035a2:                                     ; preds = %block_.L_403591
  %1082 = add i64 %1081, 3
  store i64 %1082, i64* %3, align 8
  %1083 = load i32, i32* %1041, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i2224, align 8
  %1085 = add i64 %1081, 6
  store i64 %1085, i64* %3, align 8
  %1086 = load i32, i32* %1046, align 4
  %1087 = add i32 %1086, %1083
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RAX.i2224, align 8
  %1089 = icmp ult i32 %1087, %1083
  %1090 = icmp ult i32 %1087, %1086
  %1091 = or i1 %1089, %1090
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %14, align 1
  %1093 = and i32 %1087, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i32 %1086, %1083
  %1099 = xor i32 %1098, %1087
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %27, align 1
  %1103 = icmp eq i32 %1087, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %30, align 1
  %1105 = lshr i32 %1087, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %33, align 1
  %1107 = lshr i32 %1083, 31
  %1108 = lshr i32 %1086, 31
  %1109 = xor i32 %1105, %1107
  %1110 = xor i32 %1105, %1108
  %1111 = add nuw nsw i32 %1109, %1110
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %39, align 1
  %1114 = add i64 %1038, -32
  %1115 = add i64 %1081, 9
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  store i32 %1087, i32* %1116, align 4
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -32
  %1119 = load i64, i64* %3, align 8
  %1120 = add i64 %1119, 3
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1118 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i2224, align 8
  %1124 = add i64 %1117, -8
  %1125 = add i64 %1119, 6
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = add i32 %1127, %1122
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RAX.i2224, align 8
  %1130 = icmp ult i32 %1128, %1122
  %1131 = icmp ult i32 %1128, %1127
  %1132 = or i1 %1130, %1131
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %14, align 1
  %1134 = and i32 %1128, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %21, align 1
  %1139 = xor i32 %1127, %1122
  %1140 = xor i32 %1139, %1128
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %27, align 1
  %1144 = icmp eq i32 %1128, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %30, align 1
  %1146 = lshr i32 %1128, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %33, align 1
  %1148 = lshr i32 %1122, 31
  %1149 = lshr i32 %1127, 31
  %1150 = xor i32 %1146, %1148
  %1151 = xor i32 %1146, %1149
  %1152 = add nuw nsw i32 %1150, %1151
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %39, align 1
  %1155 = add i64 %1117, -36
  %1156 = add i64 %1119, 9
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  store i32 %1128, i32* %1157, align 4
  %1158 = load i64, i64* %RBP.i, align 8
  %1159 = add i64 %1158, -36
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1159 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i2224, align 8
  %1165 = add i64 %1158, -8
  %1166 = add i64 %1160, 6
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = add i32 %1168, %1163
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX.i2224, align 8
  %1171 = icmp ult i32 %1169, %1163
  %1172 = icmp ult i32 %1169, %1168
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %14, align 1
  %1175 = and i32 %1169, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %21, align 1
  %1180 = xor i32 %1168, %1163
  %1181 = xor i32 %1180, %1169
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %27, align 1
  %1185 = icmp eq i32 %1169, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %30, align 1
  %1187 = lshr i32 %1169, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %33, align 1
  %1189 = lshr i32 %1163, 31
  %1190 = lshr i32 %1168, 31
  %1191 = xor i32 %1187, %1189
  %1192 = xor i32 %1187, %1190
  %1193 = add nuw nsw i32 %1191, %1192
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %39, align 1
  %1196 = add i64 %1158, -40
  %1197 = add i64 %1160, 9
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  store i32 %1169, i32* %1198, align 4
  %1199 = load i64, i64* %RBP.i, align 8
  %1200 = add i64 %1199, -16
  %1201 = load i64, i64* %3, align 8
  %1202 = add i64 %1201, 4
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1200 to i64*
  %1204 = load i64, i64* %1203, align 8
  store i64 %1204, i64* %RCX.i2236, align 8
  %1205 = add i64 %1199, -28
  %1206 = add i64 %1201, 8
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = sext i32 %1208 to i64
  store i64 %1209, i64* %RDX.i2239, align 8
  %1210 = shl nsw i64 %1209, 3
  %1211 = add i64 %1210, %1204
  %1212 = add i64 %1201, 13
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to double*
  %1214 = load double, double* %1213, align 8
  store double %1214, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1215 = add i64 %1201, 17
  store i64 %1215, i64* %3, align 8
  %1216 = load i64, i64* %1203, align 8
  store i64 %1216, i64* %RCX.i2236, align 8
  %1217 = add i64 %1199, -32
  %1218 = add i64 %1201, 21
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  store i64 %1221, i64* %RDX.i2239, align 8
  %1222 = shl nsw i64 %1221, 3
  %1223 = add i64 %1222, %1216
  %1224 = add i64 %1201, 26
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to double*
  %1226 = load double, double* %1225, align 8
  %1227 = fadd double %1214, %1226
  store double %1227, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1228 = add i64 %1199, -120
  %1229 = add i64 %1201, 31
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to double*
  store double %1227, double* %1230, align 8
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -16
  %1233 = load i64, i64* %3, align 8
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1232 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %RCX.i2236, align 8
  %1237 = add i64 %1231, -28
  %1238 = add i64 %1233, 7
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = add i32 %1240, 1
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RAX.i2224, align 8
  %1243 = icmp eq i32 %1240, -1
  %1244 = icmp eq i32 %1241, 0
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %14, align 1
  %1247 = and i32 %1241, 255
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %21, align 1
  %1252 = xor i32 %1240, %1241
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %27, align 1
  %1256 = zext i1 %1244 to i8
  store i8 %1256, i8* %30, align 1
  %1257 = lshr i32 %1241, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %33, align 1
  %1259 = lshr i32 %1240, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1257
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = sext i32 %1241 to i64
  store i64 %1264, i64* %RDX.i2239, align 8
  %1265 = shl nsw i64 %1264, 3
  %1266 = add i64 %1265, %1236
  %1267 = add i64 %1233, 18
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to double*
  %1269 = load double, double* %1268, align 8
  store double %1269, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1270 = add i64 %1233, 22
  store i64 %1270, i64* %3, align 8
  %1271 = load i64, i64* %1235, align 8
  store i64 %1271, i64* %RCX.i2236, align 8
  %1272 = add i64 %1231, -32
  %1273 = add i64 %1233, 25
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = add i32 %1275, 1
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i2224, align 8
  %1278 = icmp eq i32 %1275, -1
  %1279 = icmp eq i32 %1276, 0
  %1280 = or i1 %1278, %1279
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %14, align 1
  %1282 = and i32 %1276, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  %1287 = xor i32 %1275, %1276
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %27, align 1
  %1291 = zext i1 %1279 to i8
  store i8 %1291, i8* %30, align 1
  %1292 = lshr i32 %1276, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %33, align 1
  %1294 = lshr i32 %1275, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1292
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %39, align 1
  %1299 = sext i32 %1276 to i64
  store i64 %1299, i64* %RDX.i2239, align 8
  %1300 = shl nsw i64 %1299, 3
  %1301 = add i64 %1300, %1271
  %1302 = add i64 %1233, 36
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to double*
  %1304 = load double, double* %1303, align 8
  %1305 = fadd double %1269, %1304
  store double %1305, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1306 = load i64, i64* %RBP.i, align 8
  %1307 = add i64 %1306, -128
  %1308 = add i64 %1233, 41
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to double*
  store double %1305, double* %1309, align 8
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -16
  %1312 = load i64, i64* %3, align 8
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1311 to i64*
  %1315 = load i64, i64* %1314, align 8
  store i64 %1315, i64* %RCX.i2236, align 8
  %1316 = add i64 %1310, -28
  %1317 = add i64 %1312, 8
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = sext i32 %1319 to i64
  store i64 %1320, i64* %RDX.i2239, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1321, %1315
  %1323 = add i64 %1312, 13
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to double*
  %1325 = load double, double* %1324, align 8
  store double %1325, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1326 = add i64 %1312, 17
  store i64 %1326, i64* %3, align 8
  %1327 = load i64, i64* %1314, align 8
  store i64 %1327, i64* %RCX.i2236, align 8
  %1328 = add i64 %1310, -32
  %1329 = add i64 %1312, 21
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = sext i32 %1331 to i64
  store i64 %1332, i64* %RDX.i2239, align 8
  %1333 = shl nsw i64 %1332, 3
  %1334 = add i64 %1333, %1327
  %1335 = add i64 %1312, 26
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to double*
  %1337 = load double, double* %1336, align 8
  %1338 = fsub double %1325, %1337
  store double %1338, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1339 = add i64 %1310, -136
  %1340 = add i64 %1312, 34
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to double*
  store double %1338, double* %1341, align 8
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -16
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1343 to i64*
  %1347 = load i64, i64* %1346, align 8
  store i64 %1347, i64* %RCX.i2236, align 8
  %1348 = add i64 %1342, -28
  %1349 = add i64 %1344, 7
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX.i2224, align 8
  %1354 = icmp eq i32 %1351, -1
  %1355 = icmp eq i32 %1352, 0
  %1356 = or i1 %1354, %1355
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %14, align 1
  %1358 = and i32 %1352, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %21, align 1
  %1363 = xor i32 %1351, %1352
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %27, align 1
  %1367 = zext i1 %1355 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i32 %1352, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %33, align 1
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %39, align 1
  %1375 = sext i32 %1352 to i64
  store i64 %1375, i64* %RDX.i2239, align 8
  %1376 = shl nsw i64 %1375, 3
  %1377 = add i64 %1376, %1347
  %1378 = add i64 %1344, 18
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to double*
  %1380 = load double, double* %1379, align 8
  store double %1380, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1381 = add i64 %1344, 22
  store i64 %1381, i64* %3, align 8
  %1382 = load i64, i64* %1346, align 8
  store i64 %1382, i64* %RCX.i2236, align 8
  %1383 = add i64 %1342, -32
  %1384 = add i64 %1344, 25
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = add i32 %1386, 1
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX.i2224, align 8
  %1389 = icmp eq i32 %1386, -1
  %1390 = icmp eq i32 %1387, 0
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %14, align 1
  %1393 = and i32 %1387, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %21, align 1
  %1398 = xor i32 %1386, %1387
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %27, align 1
  %1402 = zext i1 %1390 to i8
  store i8 %1402, i8* %30, align 1
  %1403 = lshr i32 %1387, 31
  %1404 = trunc i32 %1403 to i8
  store i8 %1404, i8* %33, align 1
  %1405 = lshr i32 %1386, 31
  %1406 = xor i32 %1403, %1405
  %1407 = add nuw nsw i32 %1406, %1403
  %1408 = icmp eq i32 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %39, align 1
  %1410 = sext i32 %1387 to i64
  store i64 %1410, i64* %RDX.i2239, align 8
  %1411 = shl nsw i64 %1410, 3
  %1412 = add i64 %1411, %1382
  %1413 = add i64 %1344, 36
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to double*
  %1415 = load double, double* %1414, align 8
  %1416 = fsub double %1380, %1415
  store double %1416, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1417 = load i64, i64* %RBP.i, align 8
  %1418 = add i64 %1417, -144
  %1419 = add i64 %1344, 44
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to double*
  store double %1416, double* %1420, align 8
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -16
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RCX.i2236, align 8
  %1427 = add i64 %1421, -36
  %1428 = add i64 %1423, 8
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = sext i32 %1430 to i64
  store i64 %1431, i64* %RDX.i2239, align 8
  %1432 = shl nsw i64 %1431, 3
  %1433 = add i64 %1432, %1426
  %1434 = add i64 %1423, 13
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to double*
  %1436 = load double, double* %1435, align 8
  store double %1436, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1437 = add i64 %1423, 17
  store i64 %1437, i64* %3, align 8
  %1438 = load i64, i64* %1425, align 8
  store i64 %1438, i64* %RCX.i2236, align 8
  %1439 = add i64 %1421, -40
  %1440 = add i64 %1423, 21
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = sext i32 %1442 to i64
  store i64 %1443, i64* %RDX.i2239, align 8
  %1444 = shl nsw i64 %1443, 3
  %1445 = add i64 %1444, %1438
  %1446 = add i64 %1423, 26
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to double*
  %1448 = load double, double* %1447, align 8
  %1449 = fadd double %1436, %1448
  store double %1449, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1450 = add i64 %1421, -152
  %1451 = add i64 %1423, 34
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to double*
  store double %1449, double* %1452, align 8
  %1453 = load i64, i64* %RBP.i, align 8
  %1454 = add i64 %1453, -16
  %1455 = load i64, i64* %3, align 8
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1454 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %RCX.i2236, align 8
  %1459 = add i64 %1453, -36
  %1460 = add i64 %1455, 7
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, 1
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RAX.i2224, align 8
  %1465 = icmp eq i32 %1462, -1
  %1466 = icmp eq i32 %1463, 0
  %1467 = or i1 %1465, %1466
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1463, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i32 %1462, %1463
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  store i8 %1477, i8* %27, align 1
  %1478 = zext i1 %1466 to i8
  store i8 %1478, i8* %30, align 1
  %1479 = lshr i32 %1463, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %33, align 1
  %1481 = lshr i32 %1462, 31
  %1482 = xor i32 %1479, %1481
  %1483 = add nuw nsw i32 %1482, %1479
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %39, align 1
  %1486 = sext i32 %1463 to i64
  store i64 %1486, i64* %RDX.i2239, align 8
  %1487 = shl nsw i64 %1486, 3
  %1488 = add i64 %1487, %1458
  %1489 = add i64 %1455, 18
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to double*
  %1491 = load double, double* %1490, align 8
  store double %1491, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1492 = add i64 %1455, 22
  store i64 %1492, i64* %3, align 8
  %1493 = load i64, i64* %1457, align 8
  store i64 %1493, i64* %RCX.i2236, align 8
  %1494 = add i64 %1453, -40
  %1495 = add i64 %1455, 25
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, 1
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i2224, align 8
  %1500 = icmp eq i32 %1497, -1
  %1501 = icmp eq i32 %1498, 0
  %1502 = or i1 %1500, %1501
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %14, align 1
  %1504 = and i32 %1498, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %21, align 1
  %1509 = xor i32 %1497, %1498
  %1510 = lshr i32 %1509, 4
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %27, align 1
  %1513 = zext i1 %1501 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i32 %1498, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i32 %1497, 31
  %1517 = xor i32 %1514, %1516
  %1518 = add nuw nsw i32 %1517, %1514
  %1519 = icmp eq i32 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %39, align 1
  %1521 = sext i32 %1498 to i64
  store i64 %1521, i64* %RDX.i2239, align 8
  %1522 = shl nsw i64 %1521, 3
  %1523 = add i64 %1522, %1493
  %1524 = add i64 %1455, 36
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to double*
  %1526 = load double, double* %1525, align 8
  %1527 = fadd double %1491, %1526
  store double %1527, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -160
  %1530 = add i64 %1455, 44
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to double*
  store double %1527, double* %1531, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -16
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, 4
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536, align 8
  store i64 %1537, i64* %RCX.i2236, align 8
  %1538 = add i64 %1532, -36
  %1539 = add i64 %1534, 8
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = sext i32 %1541 to i64
  store i64 %1542, i64* %RDX.i2239, align 8
  %1543 = shl nsw i64 %1542, 3
  %1544 = add i64 %1543, %1537
  %1545 = add i64 %1534, 13
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to double*
  %1547 = load double, double* %1546, align 8
  store double %1547, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1548 = add i64 %1534, 17
  store i64 %1548, i64* %3, align 8
  %1549 = load i64, i64* %1536, align 8
  store i64 %1549, i64* %RCX.i2236, align 8
  %1550 = add i64 %1532, -40
  %1551 = add i64 %1534, 21
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = sext i32 %1553 to i64
  store i64 %1554, i64* %RDX.i2239, align 8
  %1555 = shl nsw i64 %1554, 3
  %1556 = add i64 %1555, %1549
  %1557 = add i64 %1534, 26
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to double*
  %1559 = load double, double* %1558, align 8
  %1560 = fsub double %1547, %1559
  store double %1560, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1561 = add i64 %1532, -168
  %1562 = add i64 %1534, 34
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to double*
  store double %1560, double* %1563, align 8
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -16
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1565 to i64*
  %1569 = load i64, i64* %1568, align 8
  store i64 %1569, i64* %RCX.i2236, align 8
  %1570 = add i64 %1564, -36
  %1571 = add i64 %1566, 7
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = add i32 %1573, 1
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RAX.i2224, align 8
  %1576 = icmp eq i32 %1573, -1
  %1577 = icmp eq i32 %1574, 0
  %1578 = or i1 %1576, %1577
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %14, align 1
  %1580 = and i32 %1574, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %21, align 1
  %1585 = xor i32 %1573, %1574
  %1586 = lshr i32 %1585, 4
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  store i8 %1588, i8* %27, align 1
  %1589 = zext i1 %1577 to i8
  store i8 %1589, i8* %30, align 1
  %1590 = lshr i32 %1574, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %33, align 1
  %1592 = lshr i32 %1573, 31
  %1593 = xor i32 %1590, %1592
  %1594 = add nuw nsw i32 %1593, %1590
  %1595 = icmp eq i32 %1594, 2
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %39, align 1
  %1597 = sext i32 %1574 to i64
  store i64 %1597, i64* %RDX.i2239, align 8
  %1598 = shl nsw i64 %1597, 3
  %1599 = add i64 %1598, %1569
  %1600 = add i64 %1566, 18
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to double*
  %1602 = load double, double* %1601, align 8
  store double %1602, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1603 = add i64 %1566, 22
  store i64 %1603, i64* %3, align 8
  %1604 = load i64, i64* %1568, align 8
  store i64 %1604, i64* %RCX.i2236, align 8
  %1605 = add i64 %1564, -40
  %1606 = add i64 %1566, 25
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = add i32 %1608, 1
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX.i2224, align 8
  %1611 = icmp eq i32 %1608, -1
  %1612 = icmp eq i32 %1609, 0
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %14, align 1
  %1615 = and i32 %1609, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615)
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %21, align 1
  %1620 = xor i32 %1608, %1609
  %1621 = lshr i32 %1620, 4
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  store i8 %1623, i8* %27, align 1
  %1624 = zext i1 %1612 to i8
  store i8 %1624, i8* %30, align 1
  %1625 = lshr i32 %1609, 31
  %1626 = trunc i32 %1625 to i8
  store i8 %1626, i8* %33, align 1
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1625, %1627
  %1629 = add nuw nsw i32 %1628, %1625
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %39, align 1
  %1632 = sext i32 %1609 to i64
  store i64 %1632, i64* %RDX.i2239, align 8
  %1633 = shl nsw i64 %1632, 3
  %1634 = add i64 %1633, %1604
  %1635 = add i64 %1566, 36
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to double*
  %1637 = load double, double* %1636, align 8
  %1638 = fsub double %1602, %1637
  store double %1638, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -176
  %1641 = add i64 %1566, 44
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1640 to double*
  store double %1638, double* %1642, align 8
  %1643 = load i64, i64* %RBP.i, align 8
  %1644 = add i64 %1643, -120
  %1645 = load i64, i64* %3, align 8
  %1646 = add i64 %1645, 5
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1644 to double*
  %1648 = load double, double* %1647, align 8
  store double %1648, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1649 = add i64 %1643, -152
  %1650 = add i64 %1645, 13
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to double*
  %1652 = load double, double* %1651, align 8
  %1653 = fadd double %1648, %1652
  store double %1653, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1654 = add i64 %1643, -16
  %1655 = add i64 %1645, 17
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i64*
  %1657 = load i64, i64* %1656, align 8
  store i64 %1657, i64* %RCX.i2236, align 8
  %1658 = add i64 %1643, -28
  %1659 = add i64 %1645, 21
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = sext i32 %1661 to i64
  store i64 %1662, i64* %RDX.i2239, align 8
  %1663 = shl nsw i64 %1662, 3
  %1664 = add i64 %1663, %1657
  %1665 = add i64 %1645, 26
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to double*
  store double %1653, double* %1666, align 8
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -128
  %1669 = load i64, i64* %3, align 8
  %1670 = add i64 %1669, 5
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1668 to double*
  %1672 = load double, double* %1671, align 8
  store double %1672, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1673 = add i64 %1667, -160
  %1674 = add i64 %1669, 13
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to double*
  %1676 = load double, double* %1675, align 8
  %1677 = fadd double %1672, %1676
  store double %1677, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1678 = add i64 %1667, -16
  %1679 = add i64 %1669, 17
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RCX.i2236, align 8
  %1682 = add i64 %1667, -28
  %1683 = add i64 %1669, 20
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = add i32 %1685, 1
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i2224, align 8
  %1688 = icmp eq i32 %1685, -1
  %1689 = icmp eq i32 %1686, 0
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %14, align 1
  %1692 = and i32 %1686, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %21, align 1
  %1697 = xor i32 %1685, %1686
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %27, align 1
  %1701 = zext i1 %1689 to i8
  store i8 %1701, i8* %30, align 1
  %1702 = lshr i32 %1686, 31
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %33, align 1
  %1704 = lshr i32 %1685, 31
  %1705 = xor i32 %1702, %1704
  %1706 = add nuw nsw i32 %1705, %1702
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %39, align 1
  %1709 = sext i32 %1686 to i64
  store i64 %1709, i64* %RDX.i2239, align 8
  %1710 = shl nsw i64 %1709, 3
  %1711 = add i64 %1710, %1681
  %1712 = add i64 %1669, 31
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to double*
  store double %1677, double* %1713, align 8
  %1714 = load i64, i64* %RBP.i, align 8
  %1715 = add i64 %1714, -160
  %1716 = load i64, i64* %3, align 8
  %1717 = add i64 %1716, 8
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1715 to double*
  %1719 = load double, double* %1718, align 8
  store double %1719, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1720 = add i64 %1714, -128
  %1721 = add i64 %1716, 13
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to double*
  %1723 = load double, double* %1722, align 8
  %1724 = fsub double %1719, %1723
  store double %1724, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1725 = add i64 %1714, -16
  %1726 = add i64 %1716, 17
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %RCX.i2236, align 8
  %1729 = add i64 %1714, -36
  %1730 = add i64 %1716, 21
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = sext i32 %1732 to i64
  store i64 %1733, i64* %RDX.i2239, align 8
  %1734 = shl nsw i64 %1733, 3
  %1735 = add i64 %1734, %1728
  %1736 = add i64 %1716, 26
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to double*
  store double %1724, double* %1737, align 8
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -120
  %1740 = load i64, i64* %3, align 8
  %1741 = add i64 %1740, 5
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1739 to double*
  %1743 = load double, double* %1742, align 8
  store double %1743, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1744 = add i64 %1738, -152
  %1745 = add i64 %1740, 13
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to double*
  %1747 = load double, double* %1746, align 8
  %1748 = fsub double %1743, %1747
  store double %1748, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1749 = add i64 %1738, -16
  %1750 = add i64 %1740, 17
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %RCX.i2236, align 8
  %1753 = add i64 %1738, -36
  %1754 = add i64 %1740, 20
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = add i32 %1756, 1
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RAX.i2224, align 8
  %1759 = icmp eq i32 %1756, -1
  %1760 = icmp eq i32 %1757, 0
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %14, align 1
  %1763 = and i32 %1757, 255
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %21, align 1
  %1768 = xor i32 %1756, %1757
  %1769 = lshr i32 %1768, 4
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %27, align 1
  %1772 = zext i1 %1760 to i8
  store i8 %1772, i8* %30, align 1
  %1773 = lshr i32 %1757, 31
  %1774 = trunc i32 %1773 to i8
  store i8 %1774, i8* %33, align 1
  %1775 = lshr i32 %1756, 31
  %1776 = xor i32 %1773, %1775
  %1777 = add nuw nsw i32 %1776, %1773
  %1778 = icmp eq i32 %1777, 2
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %39, align 1
  %1780 = sext i32 %1757 to i64
  store i64 %1780, i64* %RDX.i2239, align 8
  %1781 = shl nsw i64 %1780, 3
  %1782 = add i64 %1781, %1752
  %1783 = add i64 %1740, 31
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to double*
  store double %1748, double* %1784, align 8
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -136
  %1787 = load i64, i64* %3, align 8
  %1788 = add i64 %1787, 8
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1786 to double*
  %1790 = load double, double* %1789, align 8
  store double %1790, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1791 = add i64 %1785, -176
  %1792 = add i64 %1787, 16
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to double*
  %1794 = load double, double* %1793, align 8
  %1795 = fsub double %1790, %1794
  store double %1795, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1796 = add i64 %1785, -120
  %1797 = add i64 %1787, 21
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to double*
  store double %1795, double* %1798, align 8
  %1799 = load i64, i64* %RBP.i, align 8
  %1800 = add i64 %1799, -144
  %1801 = load i64, i64* %3, align 8
  %1802 = add i64 %1801, 8
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1800 to double*
  %1804 = load double, double* %1803, align 8
  store double %1804, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1805 = add i64 %1799, -168
  %1806 = add i64 %1801, 16
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to double*
  %1808 = load double, double* %1807, align 8
  %1809 = fadd double %1804, %1808
  store double %1809, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1810 = add i64 %1799, -128
  %1811 = add i64 %1801, 21
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to double*
  store double %1809, double* %1812, align 8
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -72
  %1815 = load i64, i64* %3, align 8
  %1816 = add i64 %1815, 5
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1814 to double*
  %1818 = load double, double* %1817, align 8
  store double %1818, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1819 = add i64 %1813, -120
  %1820 = add i64 %1815, 10
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1819 to double*
  %1822 = load double, double* %1821, align 8
  store double %1822, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %1823 = add i64 %1813, -128
  %1824 = add i64 %1815, 15
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to double*
  %1826 = load double, double* %1825, align 8
  %1827 = fsub double %1822, %1826
  store double %1827, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %1828 = fmul double %1818, %1827
  store double %1828, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1829 = add i64 %1813, -16
  %1830 = add i64 %1815, 23
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i64*
  %1832 = load i64, i64* %1831, align 8
  store i64 %1832, i64* %RCX.i2236, align 8
  %1833 = add i64 %1813, -32
  %1834 = add i64 %1815, 27
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RDX.i2239, align 8
  %1838 = shl nsw i64 %1837, 3
  %1839 = add i64 %1838, %1832
  %1840 = add i64 %1815, 32
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to double*
  store double %1828, double* %1841, align 8
  %1842 = load i64, i64* %RBP.i, align 8
  %1843 = add i64 %1842, -72
  %1844 = load i64, i64* %3, align 8
  %1845 = add i64 %1844, 5
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1843 to double*
  %1847 = load double, double* %1846, align 8
  store double %1847, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1848 = add i64 %1842, -120
  %1849 = add i64 %1844, 10
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to double*
  %1851 = load double, double* %1850, align 8
  store double %1851, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %1852 = add i64 %1842, -128
  %1853 = add i64 %1844, 15
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to double*
  %1855 = load double, double* %1854, align 8
  %1856 = fadd double %1851, %1855
  store double %1856, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %1857 = fmul double %1847, %1856
  store double %1857, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1858 = add i64 %1842, -16
  %1859 = add i64 %1844, 23
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RCX.i2236, align 8
  %1862 = add i64 %1842, -32
  %1863 = add i64 %1844, 26
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = add i32 %1865, 1
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RAX.i2224, align 8
  %1868 = icmp eq i32 %1865, -1
  %1869 = icmp eq i32 %1866, 0
  %1870 = or i1 %1868, %1869
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %14, align 1
  %1872 = and i32 %1866, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872)
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %21, align 1
  %1877 = xor i32 %1865, %1866
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  store i8 %1880, i8* %27, align 1
  %1881 = zext i1 %1869 to i8
  store i8 %1881, i8* %30, align 1
  %1882 = lshr i32 %1866, 31
  %1883 = trunc i32 %1882 to i8
  store i8 %1883, i8* %33, align 1
  %1884 = lshr i32 %1865, 31
  %1885 = xor i32 %1882, %1884
  %1886 = add nuw nsw i32 %1885, %1882
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %39, align 1
  %1889 = sext i32 %1866 to i64
  store i64 %1889, i64* %RDX.i2239, align 8
  %1890 = shl nsw i64 %1889, 3
  %1891 = add i64 %1890, %1861
  %1892 = add i64 %1844, 37
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to double*
  store double %1857, double* %1893, align 8
  %1894 = load i64, i64* %RBP.i, align 8
  %1895 = add i64 %1894, -176
  %1896 = load i64, i64* %3, align 8
  %1897 = add i64 %1896, 8
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1895 to double*
  %1899 = load double, double* %1898, align 8
  store double %1899, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1900 = add i64 %1894, -136
  %1901 = add i64 %1896, 16
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to double*
  %1903 = load double, double* %1902, align 8
  %1904 = fadd double %1899, %1903
  store double %1904, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1905 = add i64 %1894, -120
  %1906 = add i64 %1896, 21
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to double*
  store double %1904, double* %1907, align 8
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -168
  %1910 = load i64, i64* %3, align 8
  %1911 = add i64 %1910, 8
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1909 to double*
  %1913 = load double, double* %1912, align 8
  store double %1913, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1914 = add i64 %1908, -144
  %1915 = add i64 %1910, 16
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to double*
  %1917 = load double, double* %1916, align 8
  %1918 = fsub double %1913, %1917
  store double %1918, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1919 = add i64 %1908, -128
  %1920 = add i64 %1910, 21
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to double*
  store double %1918, double* %1921, align 8
  %1922 = load i64, i64* %RBP.i, align 8
  %1923 = add i64 %1922, -72
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, 5
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1923 to double*
  %1927 = load double, double* %1926, align 8
  store double %1927, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1928 = add i64 %1922, -128
  %1929 = add i64 %1924, 10
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to double*
  %1931 = load double, double* %1930, align 8
  store double %1931, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %1932 = add i64 %1922, -120
  %1933 = add i64 %1924, 15
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to double*
  %1935 = load double, double* %1934, align 8
  %1936 = fsub double %1931, %1935
  store double %1936, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %1937 = fmul double %1927, %1936
  store double %1937, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1938 = add i64 %1922, -16
  %1939 = add i64 %1924, 23
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i64*
  %1941 = load i64, i64* %1940, align 8
  store i64 %1941, i64* %RCX.i2236, align 8
  %1942 = add i64 %1922, -40
  %1943 = add i64 %1924, 27
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = sext i32 %1945 to i64
  store i64 %1946, i64* %RDX.i2239, align 8
  %1947 = shl nsw i64 %1946, 3
  %1948 = add i64 %1947, %1941
  %1949 = add i64 %1924, 32
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to double*
  store double %1937, double* %1950, align 8
  %1951 = load i64, i64* %RBP.i, align 8
  %1952 = add i64 %1951, -72
  %1953 = load i64, i64* %3, align 8
  %1954 = add i64 %1953, 5
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1952 to double*
  %1956 = load double, double* %1955, align 8
  store double %1956, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %1957 = add i64 %1951, -128
  %1958 = add i64 %1953, 10
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to double*
  %1960 = load double, double* %1959, align 8
  store double %1960, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %1961 = add i64 %1951, -120
  %1962 = add i64 %1953, 15
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to double*
  %1964 = load double, double* %1963, align 8
  %1965 = fadd double %1960, %1964
  store double %1965, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %1966 = fmul double %1956, %1965
  store double %1966, double* %94, align 1
  store i64 0, i64* %95, align 1
  %1967 = add i64 %1951, -16
  %1968 = add i64 %1953, 23
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i64*
  %1970 = load i64, i64* %1969, align 8
  store i64 %1970, i64* %RCX.i2236, align 8
  %1971 = add i64 %1951, -40
  %1972 = add i64 %1953, 26
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = add i32 %1974, 1
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RAX.i2224, align 8
  %1977 = icmp eq i32 %1974, -1
  %1978 = icmp eq i32 %1975, 0
  %1979 = or i1 %1977, %1978
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %14, align 1
  %1981 = and i32 %1975, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %21, align 1
  %1986 = xor i32 %1974, %1975
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  store i8 %1989, i8* %27, align 1
  %1990 = zext i1 %1978 to i8
  store i8 %1990, i8* %30, align 1
  %1991 = lshr i32 %1975, 31
  %1992 = trunc i32 %1991 to i8
  store i8 %1992, i8* %33, align 1
  %1993 = lshr i32 %1974, 31
  %1994 = xor i32 %1991, %1993
  %1995 = add nuw nsw i32 %1994, %1991
  %1996 = icmp eq i32 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %39, align 1
  %1998 = sext i32 %1975 to i64
  store i64 %1998, i64* %RDX.i2239, align 8
  %1999 = shl nsw i64 %1998, 3
  %2000 = add i64 %1999, %1970
  %2001 = add i64 %1953, 37
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to double*
  store double %1966, double* %2002, align 8
  %2003 = load i64, i64* %RBP.i, align 8
  %2004 = add i64 %2003, -28
  %2005 = load i64, i64* %3, align 8
  %2006 = add i64 %2005, 3
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2004 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = add i32 %2008, 2
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RAX.i2224, align 8
  %2011 = icmp ugt i32 %2008, -3
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %14, align 1
  %2013 = and i32 %2009, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %21, align 1
  %2018 = xor i32 %2008, %2009
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %27, align 1
  %2022 = icmp eq i32 %2009, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %30, align 1
  %2024 = lshr i32 %2009, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %33, align 1
  %2026 = lshr i32 %2008, 31
  %2027 = xor i32 %2024, %2026
  %2028 = add nuw nsw i32 %2027, %2024
  %2029 = icmp eq i32 %2028, 2
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %39, align 1
  %2031 = add i64 %2005, 9
  store i64 %2031, i64* %3, align 8
  store i32 %2009, i32* %2007, align 4
  %2032 = load i64, i64* %3, align 8
  %2033 = add i64 %2032, -695
  store i64 %2033, i64* %3, align 8
  br label %block_.L_403591

block_.L_40384d:                                  ; preds = %block_.L_403591
  %2034 = add i64 %1038, -48
  %2035 = add i64 %1081, 7
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i32*
  store i32 0, i32* %2036, align 4
  %2037 = load i64, i64* %RBP.i, align 8
  %2038 = add i64 %2037, -56
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2038 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = shl i32 %2042, 1
  %2044 = icmp slt i32 %2042, 0
  %2045 = icmp slt i32 %2043, 0
  %2046 = xor i1 %2044, %2045
  %2047 = zext i32 %2043 to i64
  store i64 %2047, i64* %RAX.i2224, align 8
  %.lobit = lshr i32 %2042, 31
  %2048 = trunc i32 %.lobit to i8
  store i8 %2048, i8* %14, align 1
  %2049 = and i32 %2043, 254
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2054 = icmp eq i32 %2043, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %30, align 1
  %2056 = lshr i32 %2042, 30
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  store i8 %2058, i8* %33, align 1
  %2059 = zext i1 %2046 to i8
  store i8 %2059, i8* %39, align 1
  %2060 = add i64 %2037, -60
  %2061 = add i64 %2039, 9
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i32*
  store i32 %2043, i32* %2062, align 4
  %2063 = load i64, i64* %RBP.i, align 8
  %2064 = add i64 %2063, -60
  %2065 = load i64, i64* %3, align 8
  %2066 = add i64 %2065, 3
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2064 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX.i2224, align 8
  %2070 = add i64 %2063, -44
  %2071 = add i64 %2065, 6
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  store i32 %2068, i32* %2072, align 4
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %2074 = bitcast %union.VectorReg* %2073 to i8*
  %2075 = bitcast [32 x %union.VectorReg]* %93 to <2 x i32>*
  %2076 = bitcast i64* %95 to <2 x i32>*
  %2077 = bitcast %union.VectorReg* %2073 to i32*
  %2078 = getelementptr inbounds i8, i8* %2074, i64 4
  %2079 = bitcast i8* %2078 to i32*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %2081 = bitcast i64* %2080 to i32*
  %2082 = getelementptr inbounds i8, i8* %2074, i64 12
  %2083 = bitcast i8* %2082 to i32*
  %2084 = bitcast %union.VectorReg* %2073 to double*
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_403863

block_.L_403863:                                  ; preds = %block_.L_403fcb, %block_.L_40384d
  %2085 = phi i64 [ %4719, %block_.L_403fcb ], [ %.pre2, %block_.L_40384d ]
  %2086 = load i64, i64* %RBP.i, align 8
  %2087 = add i64 %2086, -44
  %2088 = add i64 %2085, 3
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RAX.i2224, align 8
  %2092 = add i64 %2086, -4
  %2093 = add i64 %2085, 6
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = sub i32 %2090, %2095
  %2097 = icmp ult i32 %2090, %2095
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %14, align 1
  %2099 = and i32 %2096, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = xor i32 %2095, %2090
  %2105 = xor i32 %2104, %2096
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %27, align 1
  %2109 = icmp eq i32 %2096, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %30, align 1
  %2111 = lshr i32 %2096, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %33, align 1
  %2113 = lshr i32 %2090, 31
  %2114 = lshr i32 %2095, 31
  %2115 = xor i32 %2114, %2113
  %2116 = xor i32 %2111, %2113
  %2117 = add nuw nsw i32 %2116, %2115
  %2118 = icmp eq i32 %2117, 2
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %39, align 1
  %2120 = icmp ne i8 %2112, 0
  %2121 = xor i1 %2120, %2118
  %.v6 = select i1 %2121, i64 12, i64 1915
  %2122 = add i64 %2085, %.v6
  store i64 %2122, i64* %3, align 8
  br i1 %2121, label %block_40386f, label %block_.L_403fde

block_40386f:                                     ; preds = %block_.L_403863
  %2123 = load i64, i64* bitcast (%G_0x849__rip__4208759__type* @G_0x849__rip__4208759_ to i64*), align 8
  store i64 %2123, i64* %1019, align 1
  store double 0.000000e+00, double* %96, align 1
  %2124 = add i64 %2086, -48
  %2125 = add i64 %2122, 11
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = add i32 %2127, 2
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RAX.i2224, align 8
  %2130 = icmp ugt i32 %2127, -3
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %14, align 1
  %2132 = and i32 %2128, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %21, align 1
  %2137 = xor i32 %2127, %2128
  %2138 = lshr i32 %2137, 4
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  store i8 %2140, i8* %27, align 1
  %2141 = icmp eq i32 %2128, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %30, align 1
  %2143 = lshr i32 %2128, 31
  %2144 = trunc i32 %2143 to i8
  store i8 %2144, i8* %33, align 1
  %2145 = lshr i32 %2127, 31
  %2146 = xor i32 %2143, %2145
  %2147 = add nuw nsw i32 %2146, %2143
  %2148 = icmp eq i32 %2147, 2
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %39, align 1
  %2150 = add i64 %2122, 17
  store i64 %2150, i64* %3, align 8
  store i32 %2128, i32* %2126, align 4
  %2151 = load i64, i64* %RBP.i, align 8
  %2152 = add i64 %2151, -48
  %2153 = load i64, i64* %3, align 8
  %2154 = add i64 %2153, 3
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2152 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = shl i32 %2156, 1
  %2158 = icmp slt i32 %2156, 0
  %2159 = icmp slt i32 %2157, 0
  %2160 = xor i1 %2158, %2159
  %2161 = zext i32 %2157 to i64
  store i64 %2161, i64* %RAX.i2224, align 8
  %.lobit7 = lshr i32 %2156, 31
  %2162 = trunc i32 %.lobit7 to i8
  store i8 %2162, i8* %14, align 1
  %2163 = and i32 %2157, 254
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2168 = icmp eq i32 %2157, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %30, align 1
  %2170 = lshr i32 %2156, 30
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  store i8 %2172, i8* %33, align 1
  %2173 = zext i1 %2160 to i8
  store i8 %2173, i8* %39, align 1
  %2174 = add i64 %2151, -52
  %2175 = add i64 %2153, 9
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to i32*
  store i32 %2157, i32* %2176, align 4
  %2177 = load i64, i64* %RBP.i, align 8
  %2178 = add i64 %2177, -24
  %2179 = load i64, i64* %3, align 8
  %2180 = add i64 %2179, 4
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2178 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RCX.i2236, align 8
  %2183 = add i64 %2177, -48
  %2184 = add i64 %2179, 8
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = sext i32 %2186 to i64
  store i64 %2187, i64* %RDX.i2239, align 8
  %2188 = shl nsw i64 %2187, 3
  %2189 = add i64 %2188, %2182
  %2190 = add i64 %2179, 13
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i64*
  %2192 = load i64, i64* %2191, align 8
  %2193 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1033, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2192, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %2194 = add i64 %2177, -88
  %2195 = add i64 %2179, 18
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i64*
  store i64 %2192, i64* %2196, align 8
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -24
  %2199 = load i64, i64* %3, align 8
  %2200 = add i64 %2199, 4
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2198 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RCX.i2236, align 8
  %2203 = add i64 %2197, -48
  %2204 = add i64 %2199, 7
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = add i32 %2206, 1
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RAX.i2224, align 8
  %2209 = icmp eq i32 %2206, -1
  %2210 = icmp eq i32 %2207, 0
  %2211 = or i1 %2209, %2210
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %14, align 1
  %2213 = and i32 %2207, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %21, align 1
  %2218 = xor i32 %2206, %2207
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %27, align 1
  %2222 = zext i1 %2210 to i8
  store i8 %2222, i8* %30, align 1
  %2223 = lshr i32 %2207, 31
  %2224 = trunc i32 %2223 to i8
  store i8 %2224, i8* %33, align 1
  %2225 = lshr i32 %2206, 31
  %2226 = xor i32 %2223, %2225
  %2227 = add nuw nsw i32 %2226, %2223
  %2228 = icmp eq i32 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %39, align 1
  %2230 = sext i32 %2207 to i64
  store i64 %2230, i64* %RDX.i2239, align 8
  %2231 = shl nsw i64 %2230, 3
  %2232 = add i64 %2231, %2202
  %2233 = add i64 %2199, 18
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i64*
  %2235 = load i64, i64* %2234, align 8
  store i64 %2235, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %2236 = add i64 %2197, -96
  %2237 = add i64 %2199, 23
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i64*
  store i64 %2235, i64* %2238, align 8
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -24
  %2241 = load i64, i64* %3, align 8
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2240 to i64*
  %2244 = load i64, i64* %2243, align 8
  store i64 %2244, i64* %RCX.i2236, align 8
  %2245 = add i64 %2239, -52
  %2246 = add i64 %2241, 8
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i32*
  %2248 = load i32, i32* %2247, align 4
  %2249 = sext i32 %2248 to i64
  store i64 %2249, i64* %RDX.i2239, align 8
  %2250 = shl nsw i64 %2249, 3
  %2251 = add i64 %2250, %2244
  %2252 = add i64 %2241, 13
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i64*
  %2254 = load i64, i64* %2253, align 8
  store i64 %2254, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %2255 = add i64 %2239, -72
  %2256 = add i64 %2241, 18
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i64*
  store i64 %2254, i64* %2257, align 8
  %2258 = load i64, i64* %RBP.i, align 8
  %2259 = add i64 %2258, -24
  %2260 = load i64, i64* %3, align 8
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2259 to i64*
  %2263 = load i64, i64* %2262, align 8
  store i64 %2263, i64* %RCX.i2236, align 8
  %2264 = add i64 %2258, -52
  %2265 = add i64 %2260, 7
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = add i32 %2267, 1
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RAX.i2224, align 8
  %2270 = icmp eq i32 %2267, -1
  %2271 = icmp eq i32 %2268, 0
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %14, align 1
  %2274 = and i32 %2268, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %21, align 1
  %2279 = xor i32 %2267, %2268
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %27, align 1
  %2283 = zext i1 %2271 to i8
  store i8 %2283, i8* %30, align 1
  %2284 = lshr i32 %2268, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %33, align 1
  %2286 = lshr i32 %2267, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2284
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %39, align 1
  %2291 = sext i32 %2268 to i64
  store i64 %2291, i64* %RDX.i2239, align 8
  %2292 = shl nsw i64 %2291, 3
  %2293 = add i64 %2292, %2263
  %2294 = add i64 %2260, 18
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i64*
  %2296 = load i64, i64* %2295, align 8
  store i64 %2296, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %2297 = add i64 %2258, -80
  %2298 = add i64 %2260, 23
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i64*
  store i64 %2296, i64* %2299, align 8
  %2300 = load i64, i64* %RBP.i, align 8
  %2301 = add i64 %2300, -72
  %2302 = load i64, i64* %3, align 8
  %2303 = add i64 %2302, 5
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2301 to double*
  %2305 = load double, double* %2304, align 8
  store double %2305, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %2306 = load <2 x i32>, <2 x i32>* %2075, align 1
  %2307 = load <2 x i32>, <2 x i32>* %2076, align 1
  %2308 = extractelement <2 x i32> %2306, i32 0
  store i32 %2308, i32* %2077, align 1
  %2309 = extractelement <2 x i32> %2306, i32 1
  store i32 %2309, i32* %2079, align 1
  %2310 = extractelement <2 x i32> %2307, i32 0
  store i32 %2310, i32* %2081, align 1
  %2311 = extractelement <2 x i32> %2307, i32 1
  store i32 %2311, i32* %2083, align 1
  %2312 = add i64 %2300, -96
  %2313 = add i64 %2302, 13
  store i64 %2313, i64* %3, align 8
  %2314 = load double, double* %2084, align 1
  %2315 = inttoptr i64 %2312 to double*
  %2316 = load double, double* %2315, align 8
  %2317 = fmul double %2314, %2316
  store double %2317, double* %2084, align 1
  %2318 = add i64 %2300, -80
  %2319 = add i64 %2302, 18
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to double*
  %2321 = load double, double* %2320, align 8
  %2322 = fmul double %2317, %2321
  store double %2322, double* %2084, align 1
  %2323 = fsub double %2305, %2322
  store double %2323, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %2324 = add i64 %2300, -104
  %2325 = add i64 %2302, 27
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to double*
  store double %2323, double* %2326, align 8
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -96
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %3, align 8
  %2331 = load double, double* %94, align 1
  %2332 = inttoptr i64 %2328 to double*
  %2333 = load double, double* %2332, align 8
  %2334 = fmul double %2331, %2333
  store double %2334, double* %94, align 1
  %2335 = add i64 %2327, -72
  %2336 = add i64 %2329, 10
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to double*
  %2338 = load double, double* %2337, align 8
  %2339 = fmul double %2334, %2338
  store double %2339, double* %94, align 1
  %2340 = add i64 %2327, -80
  %2341 = add i64 %2329, 15
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to double*
  %2343 = load double, double* %2342, align 8
  %2344 = fsub double %2339, %2343
  store double %2344, double* %94, align 1
  %2345 = add i64 %2327, -112
  %2346 = add i64 %2329, 20
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to double*
  store double %2344, double* %2347, align 8
  %2348 = load i64, i64* %RBP.i, align 8
  %2349 = add i64 %2348, -44
  %2350 = load i64, i64* %3, align 8
  %2351 = add i64 %2350, 3
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2349 to i32*
  %2353 = load i32, i32* %2352, align 4
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i2224, align 8
  %2355 = add i64 %2348, -28
  %2356 = add i64 %2350, 6
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  store i32 %2353, i32* %2357, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_403910

block_.L_403910:                                  ; preds = %block_403921, %block_40386f
  %2358 = phi i64 [ %3418, %block_403921 ], [ %.pre3, %block_40386f ]
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -28
  %2361 = add i64 %2358, 3
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RAX.i2224, align 8
  %2365 = add i64 %2359, -8
  %2366 = add i64 %2358, 6
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RCX.i2236, align 8
  %2370 = add i64 %2359, -44
  %2371 = add i64 %2358, 9
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = add i32 %2373, %2368
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RCX.i2236, align 8
  %2376 = lshr i32 %2374, 31
  %2377 = sub i32 %2363, %2374
  %2378 = icmp ult i32 %2363, %2374
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %14, align 1
  %2380 = and i32 %2377, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %21, align 1
  %2385 = xor i32 %2374, %2363
  %2386 = xor i32 %2385, %2377
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  store i8 %2389, i8* %27, align 1
  %2390 = icmp eq i32 %2377, 0
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %30, align 1
  %2392 = lshr i32 %2377, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %33, align 1
  %2394 = lshr i32 %2363, 31
  %2395 = xor i32 %2376, %2394
  %2396 = xor i32 %2392, %2394
  %2397 = add nuw nsw i32 %2396, %2395
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %39, align 1
  %2400 = icmp ne i8 %2393, 0
  %2401 = xor i1 %2400, %2398
  %.v8 = select i1 %2401, i64 17, i64 786
  %2402 = add i64 %2358, %.v8
  store i64 %2402, i64* %3, align 8
  br i1 %2401, label %block_403921, label %block_.L_403c22

block_403921:                                     ; preds = %block_.L_403910
  %2403 = add i64 %2402, 3
  store i64 %2403, i64* %3, align 8
  %2404 = load i32, i32* %2362, align 4
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RAX.i2224, align 8
  %2406 = add i64 %2402, 6
  store i64 %2406, i64* %3, align 8
  %2407 = load i32, i32* %2367, align 4
  %2408 = add i32 %2407, %2404
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RAX.i2224, align 8
  %2410 = icmp ult i32 %2408, %2404
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
  %2419 = xor i32 %2407, %2404
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
  %2428 = lshr i32 %2404, 31
  %2429 = lshr i32 %2407, 31
  %2430 = xor i32 %2426, %2428
  %2431 = xor i32 %2426, %2429
  %2432 = add nuw nsw i32 %2430, %2431
  %2433 = icmp eq i32 %2432, 2
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %39, align 1
  %2435 = add i64 %2359, -32
  %2436 = add i64 %2402, 9
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  store i32 %2408, i32* %2437, align 4
  %2438 = load i64, i64* %RBP.i, align 8
  %2439 = add i64 %2438, -32
  %2440 = load i64, i64* %3, align 8
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i2224, align 8
  %2445 = add i64 %2438, -8
  %2446 = add i64 %2440, 6
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = add i32 %2448, %2443
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i2224, align 8
  %2451 = icmp ult i32 %2449, %2443
  %2452 = icmp ult i32 %2449, %2448
  %2453 = or i1 %2451, %2452
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %14, align 1
  %2455 = and i32 %2449, 255
  %2456 = tail call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  store i8 %2459, i8* %21, align 1
  %2460 = xor i32 %2448, %2443
  %2461 = xor i32 %2460, %2449
  %2462 = lshr i32 %2461, 4
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  store i8 %2464, i8* %27, align 1
  %2465 = icmp eq i32 %2449, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %30, align 1
  %2467 = lshr i32 %2449, 31
  %2468 = trunc i32 %2467 to i8
  store i8 %2468, i8* %33, align 1
  %2469 = lshr i32 %2443, 31
  %2470 = lshr i32 %2448, 31
  %2471 = xor i32 %2467, %2469
  %2472 = xor i32 %2467, %2470
  %2473 = add nuw nsw i32 %2471, %2472
  %2474 = icmp eq i32 %2473, 2
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %39, align 1
  %2476 = add i64 %2438, -36
  %2477 = add i64 %2440, 9
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i32*
  store i32 %2449, i32* %2478, align 4
  %2479 = load i64, i64* %RBP.i, align 8
  %2480 = add i64 %2479, -36
  %2481 = load i64, i64* %3, align 8
  %2482 = add i64 %2481, 3
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2480 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RAX.i2224, align 8
  %2486 = add i64 %2479, -8
  %2487 = add i64 %2481, 6
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = add i32 %2489, %2484
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %RAX.i2224, align 8
  %2492 = icmp ult i32 %2490, %2484
  %2493 = icmp ult i32 %2490, %2489
  %2494 = or i1 %2492, %2493
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %14, align 1
  %2496 = and i32 %2490, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %21, align 1
  %2501 = xor i32 %2489, %2484
  %2502 = xor i32 %2501, %2490
  %2503 = lshr i32 %2502, 4
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %27, align 1
  %2506 = icmp eq i32 %2490, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %30, align 1
  %2508 = lshr i32 %2490, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %33, align 1
  %2510 = lshr i32 %2484, 31
  %2511 = lshr i32 %2489, 31
  %2512 = xor i32 %2508, %2510
  %2513 = xor i32 %2508, %2511
  %2514 = add nuw nsw i32 %2512, %2513
  %2515 = icmp eq i32 %2514, 2
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %39, align 1
  %2517 = add i64 %2479, -40
  %2518 = add i64 %2481, 9
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i32*
  store i32 %2490, i32* %2519, align 4
  %2520 = load i64, i64* %RBP.i, align 8
  %2521 = add i64 %2520, -16
  %2522 = load i64, i64* %3, align 8
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2521 to i64*
  %2525 = load i64, i64* %2524, align 8
  store i64 %2525, i64* %RCX.i2236, align 8
  %2526 = add i64 %2520, -28
  %2527 = add i64 %2522, 8
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i32*
  %2529 = load i32, i32* %2528, align 4
  %2530 = sext i32 %2529 to i64
  store i64 %2530, i64* %RDX.i2239, align 8
  %2531 = shl nsw i64 %2530, 3
  %2532 = add i64 %2531, %2525
  %2533 = add i64 %2522, 13
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to double*
  %2535 = load double, double* %2534, align 8
  store double %2535, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2536 = add i64 %2522, 17
  store i64 %2536, i64* %3, align 8
  %2537 = load i64, i64* %2524, align 8
  store i64 %2537, i64* %RCX.i2236, align 8
  %2538 = add i64 %2520, -32
  %2539 = add i64 %2522, 21
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = sext i32 %2541 to i64
  store i64 %2542, i64* %RDX.i2239, align 8
  %2543 = shl nsw i64 %2542, 3
  %2544 = add i64 %2543, %2537
  %2545 = add i64 %2522, 26
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to double*
  %2547 = load double, double* %2546, align 8
  %2548 = fadd double %2535, %2547
  store double %2548, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2549 = add i64 %2520, -120
  %2550 = add i64 %2522, 31
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to double*
  store double %2548, double* %2551, align 8
  %2552 = load i64, i64* %RBP.i, align 8
  %2553 = add i64 %2552, -16
  %2554 = load i64, i64* %3, align 8
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2553 to i64*
  %2557 = load i64, i64* %2556, align 8
  store i64 %2557, i64* %RCX.i2236, align 8
  %2558 = add i64 %2552, -28
  %2559 = add i64 %2554, 7
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = add i32 %2561, 1
  %2563 = zext i32 %2562 to i64
  store i64 %2563, i64* %RAX.i2224, align 8
  %2564 = icmp eq i32 %2561, -1
  %2565 = icmp eq i32 %2562, 0
  %2566 = or i1 %2564, %2565
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %14, align 1
  %2568 = and i32 %2562, 255
  %2569 = tail call i32 @llvm.ctpop.i32(i32 %2568)
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  store i8 %2572, i8* %21, align 1
  %2573 = xor i32 %2561, %2562
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %27, align 1
  %2577 = zext i1 %2565 to i8
  store i8 %2577, i8* %30, align 1
  %2578 = lshr i32 %2562, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %33, align 1
  %2580 = lshr i32 %2561, 31
  %2581 = xor i32 %2578, %2580
  %2582 = add nuw nsw i32 %2581, %2578
  %2583 = icmp eq i32 %2582, 2
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %39, align 1
  %2585 = sext i32 %2562 to i64
  store i64 %2585, i64* %RDX.i2239, align 8
  %2586 = shl nsw i64 %2585, 3
  %2587 = add i64 %2586, %2557
  %2588 = add i64 %2554, 18
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to double*
  %2590 = load double, double* %2589, align 8
  store double %2590, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2591 = add i64 %2554, 22
  store i64 %2591, i64* %3, align 8
  %2592 = load i64, i64* %2556, align 8
  store i64 %2592, i64* %RCX.i2236, align 8
  %2593 = add i64 %2552, -32
  %2594 = add i64 %2554, 25
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i32*
  %2596 = load i32, i32* %2595, align 4
  %2597 = add i32 %2596, 1
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX.i2224, align 8
  %2599 = icmp eq i32 %2596, -1
  %2600 = icmp eq i32 %2597, 0
  %2601 = or i1 %2599, %2600
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = and i32 %2597, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %21, align 1
  %2608 = xor i32 %2596, %2597
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %27, align 1
  %2612 = zext i1 %2600 to i8
  store i8 %2612, i8* %30, align 1
  %2613 = lshr i32 %2597, 31
  %2614 = trunc i32 %2613 to i8
  store i8 %2614, i8* %33, align 1
  %2615 = lshr i32 %2596, 31
  %2616 = xor i32 %2613, %2615
  %2617 = add nuw nsw i32 %2616, %2613
  %2618 = icmp eq i32 %2617, 2
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %39, align 1
  %2620 = sext i32 %2597 to i64
  store i64 %2620, i64* %RDX.i2239, align 8
  %2621 = shl nsw i64 %2620, 3
  %2622 = add i64 %2621, %2592
  %2623 = add i64 %2554, 36
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to double*
  %2625 = load double, double* %2624, align 8
  %2626 = fadd double %2590, %2625
  store double %2626, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -128
  %2629 = add i64 %2554, 41
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to double*
  store double %2626, double* %2630, align 8
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -16
  %2633 = load i64, i64* %3, align 8
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2632 to i64*
  %2636 = load i64, i64* %2635, align 8
  store i64 %2636, i64* %RCX.i2236, align 8
  %2637 = add i64 %2631, -28
  %2638 = add i64 %2633, 8
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sext i32 %2640 to i64
  store i64 %2641, i64* %RDX.i2239, align 8
  %2642 = shl nsw i64 %2641, 3
  %2643 = add i64 %2642, %2636
  %2644 = add i64 %2633, 13
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to double*
  %2646 = load double, double* %2645, align 8
  store double %2646, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2647 = add i64 %2633, 17
  store i64 %2647, i64* %3, align 8
  %2648 = load i64, i64* %2635, align 8
  store i64 %2648, i64* %RCX.i2236, align 8
  %2649 = add i64 %2631, -32
  %2650 = add i64 %2633, 21
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2649 to i32*
  %2652 = load i32, i32* %2651, align 4
  %2653 = sext i32 %2652 to i64
  store i64 %2653, i64* %RDX.i2239, align 8
  %2654 = shl nsw i64 %2653, 3
  %2655 = add i64 %2654, %2648
  %2656 = add i64 %2633, 26
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to double*
  %2658 = load double, double* %2657, align 8
  %2659 = fsub double %2646, %2658
  store double %2659, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2660 = add i64 %2631, -136
  %2661 = add i64 %2633, 34
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to double*
  store double %2659, double* %2662, align 8
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -16
  %2665 = load i64, i64* %3, align 8
  %2666 = add i64 %2665, 4
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2664 to i64*
  %2668 = load i64, i64* %2667, align 8
  store i64 %2668, i64* %RCX.i2236, align 8
  %2669 = add i64 %2663, -28
  %2670 = add i64 %2665, 7
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = add i32 %2672, 1
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RAX.i2224, align 8
  %2675 = icmp eq i32 %2672, -1
  %2676 = icmp eq i32 %2673, 0
  %2677 = or i1 %2675, %2676
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %14, align 1
  %2679 = and i32 %2673, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %21, align 1
  %2684 = xor i32 %2672, %2673
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %27, align 1
  %2688 = zext i1 %2676 to i8
  store i8 %2688, i8* %30, align 1
  %2689 = lshr i32 %2673, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %33, align 1
  %2691 = lshr i32 %2672, 31
  %2692 = xor i32 %2689, %2691
  %2693 = add nuw nsw i32 %2692, %2689
  %2694 = icmp eq i32 %2693, 2
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %39, align 1
  %2696 = sext i32 %2673 to i64
  store i64 %2696, i64* %RDX.i2239, align 8
  %2697 = shl nsw i64 %2696, 3
  %2698 = add i64 %2697, %2668
  %2699 = add i64 %2665, 18
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to double*
  %2701 = load double, double* %2700, align 8
  store double %2701, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2702 = add i64 %2665, 22
  store i64 %2702, i64* %3, align 8
  %2703 = load i64, i64* %2667, align 8
  store i64 %2703, i64* %RCX.i2236, align 8
  %2704 = add i64 %2663, -32
  %2705 = add i64 %2665, 25
  store i64 %2705, i64* %3, align 8
  %2706 = inttoptr i64 %2704 to i32*
  %2707 = load i32, i32* %2706, align 4
  %2708 = add i32 %2707, 1
  %2709 = zext i32 %2708 to i64
  store i64 %2709, i64* %RAX.i2224, align 8
  %2710 = icmp eq i32 %2707, -1
  %2711 = icmp eq i32 %2708, 0
  %2712 = or i1 %2710, %2711
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %14, align 1
  %2714 = and i32 %2708, 255
  %2715 = tail call i32 @llvm.ctpop.i32(i32 %2714)
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  %2718 = xor i8 %2717, 1
  store i8 %2718, i8* %21, align 1
  %2719 = xor i32 %2707, %2708
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  store i8 %2722, i8* %27, align 1
  %2723 = zext i1 %2711 to i8
  store i8 %2723, i8* %30, align 1
  %2724 = lshr i32 %2708, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %33, align 1
  %2726 = lshr i32 %2707, 31
  %2727 = xor i32 %2724, %2726
  %2728 = add nuw nsw i32 %2727, %2724
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %39, align 1
  %2731 = sext i32 %2708 to i64
  store i64 %2731, i64* %RDX.i2239, align 8
  %2732 = shl nsw i64 %2731, 3
  %2733 = add i64 %2732, %2703
  %2734 = add i64 %2665, 36
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to double*
  %2736 = load double, double* %2735, align 8
  %2737 = fsub double %2701, %2736
  store double %2737, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2738 = load i64, i64* %RBP.i, align 8
  %2739 = add i64 %2738, -144
  %2740 = add i64 %2665, 44
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to double*
  store double %2737, double* %2741, align 8
  %2742 = load i64, i64* %RBP.i, align 8
  %2743 = add i64 %2742, -16
  %2744 = load i64, i64* %3, align 8
  %2745 = add i64 %2744, 4
  store i64 %2745, i64* %3, align 8
  %2746 = inttoptr i64 %2743 to i64*
  %2747 = load i64, i64* %2746, align 8
  store i64 %2747, i64* %RCX.i2236, align 8
  %2748 = add i64 %2742, -36
  %2749 = add i64 %2744, 8
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = sext i32 %2751 to i64
  store i64 %2752, i64* %RDX.i2239, align 8
  %2753 = shl nsw i64 %2752, 3
  %2754 = add i64 %2753, %2747
  %2755 = add i64 %2744, 13
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to double*
  %2757 = load double, double* %2756, align 8
  store double %2757, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2758 = add i64 %2744, 17
  store i64 %2758, i64* %3, align 8
  %2759 = load i64, i64* %2746, align 8
  store i64 %2759, i64* %RCX.i2236, align 8
  %2760 = add i64 %2742, -40
  %2761 = add i64 %2744, 21
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i32*
  %2763 = load i32, i32* %2762, align 4
  %2764 = sext i32 %2763 to i64
  store i64 %2764, i64* %RDX.i2239, align 8
  %2765 = shl nsw i64 %2764, 3
  %2766 = add i64 %2765, %2759
  %2767 = add i64 %2744, 26
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to double*
  %2769 = load double, double* %2768, align 8
  %2770 = fadd double %2757, %2769
  store double %2770, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2771 = add i64 %2742, -152
  %2772 = add i64 %2744, 34
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to double*
  store double %2770, double* %2773, align 8
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -16
  %2776 = load i64, i64* %3, align 8
  %2777 = add i64 %2776, 4
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2775 to i64*
  %2779 = load i64, i64* %2778, align 8
  store i64 %2779, i64* %RCX.i2236, align 8
  %2780 = add i64 %2774, -36
  %2781 = add i64 %2776, 7
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = add i32 %2783, 1
  %2785 = zext i32 %2784 to i64
  store i64 %2785, i64* %RAX.i2224, align 8
  %2786 = icmp eq i32 %2783, -1
  %2787 = icmp eq i32 %2784, 0
  %2788 = or i1 %2786, %2787
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %14, align 1
  %2790 = and i32 %2784, 255
  %2791 = tail call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  store i8 %2794, i8* %21, align 1
  %2795 = xor i32 %2783, %2784
  %2796 = lshr i32 %2795, 4
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  store i8 %2798, i8* %27, align 1
  %2799 = zext i1 %2787 to i8
  store i8 %2799, i8* %30, align 1
  %2800 = lshr i32 %2784, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %33, align 1
  %2802 = lshr i32 %2783, 31
  %2803 = xor i32 %2800, %2802
  %2804 = add nuw nsw i32 %2803, %2800
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %39, align 1
  %2807 = sext i32 %2784 to i64
  store i64 %2807, i64* %RDX.i2239, align 8
  %2808 = shl nsw i64 %2807, 3
  %2809 = add i64 %2808, %2779
  %2810 = add i64 %2776, 18
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to double*
  %2812 = load double, double* %2811, align 8
  store double %2812, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2813 = add i64 %2776, 22
  store i64 %2813, i64* %3, align 8
  %2814 = load i64, i64* %2778, align 8
  store i64 %2814, i64* %RCX.i2236, align 8
  %2815 = add i64 %2774, -40
  %2816 = add i64 %2776, 25
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = add i32 %2818, 1
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX.i2224, align 8
  %2821 = icmp eq i32 %2818, -1
  %2822 = icmp eq i32 %2819, 0
  %2823 = or i1 %2821, %2822
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %14, align 1
  %2825 = and i32 %2819, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %21, align 1
  %2830 = xor i32 %2818, %2819
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %27, align 1
  %2834 = zext i1 %2822 to i8
  store i8 %2834, i8* %30, align 1
  %2835 = lshr i32 %2819, 31
  %2836 = trunc i32 %2835 to i8
  store i8 %2836, i8* %33, align 1
  %2837 = lshr i32 %2818, 31
  %2838 = xor i32 %2835, %2837
  %2839 = add nuw nsw i32 %2838, %2835
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %39, align 1
  %2842 = sext i32 %2819 to i64
  store i64 %2842, i64* %RDX.i2239, align 8
  %2843 = shl nsw i64 %2842, 3
  %2844 = add i64 %2843, %2814
  %2845 = add i64 %2776, 36
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to double*
  %2847 = load double, double* %2846, align 8
  %2848 = fadd double %2812, %2847
  store double %2848, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2849 = load i64, i64* %RBP.i, align 8
  %2850 = add i64 %2849, -160
  %2851 = add i64 %2776, 44
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2850 to double*
  store double %2848, double* %2852, align 8
  %2853 = load i64, i64* %RBP.i, align 8
  %2854 = add i64 %2853, -16
  %2855 = load i64, i64* %3, align 8
  %2856 = add i64 %2855, 4
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2854 to i64*
  %2858 = load i64, i64* %2857, align 8
  store i64 %2858, i64* %RCX.i2236, align 8
  %2859 = add i64 %2853, -36
  %2860 = add i64 %2855, 8
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RDX.i2239, align 8
  %2864 = shl nsw i64 %2863, 3
  %2865 = add i64 %2864, %2858
  %2866 = add i64 %2855, 13
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to double*
  %2868 = load double, double* %2867, align 8
  store double %2868, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2869 = add i64 %2855, 17
  store i64 %2869, i64* %3, align 8
  %2870 = load i64, i64* %2857, align 8
  store i64 %2870, i64* %RCX.i2236, align 8
  %2871 = add i64 %2853, -40
  %2872 = add i64 %2855, 21
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = sext i32 %2874 to i64
  store i64 %2875, i64* %RDX.i2239, align 8
  %2876 = shl nsw i64 %2875, 3
  %2877 = add i64 %2876, %2870
  %2878 = add i64 %2855, 26
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to double*
  %2880 = load double, double* %2879, align 8
  %2881 = fsub double %2868, %2880
  store double %2881, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2882 = add i64 %2853, -168
  %2883 = add i64 %2855, 34
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to double*
  store double %2881, double* %2884, align 8
  %2885 = load i64, i64* %RBP.i, align 8
  %2886 = add i64 %2885, -16
  %2887 = load i64, i64* %3, align 8
  %2888 = add i64 %2887, 4
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2886 to i64*
  %2890 = load i64, i64* %2889, align 8
  store i64 %2890, i64* %RCX.i2236, align 8
  %2891 = add i64 %2885, -36
  %2892 = add i64 %2887, 7
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = add i32 %2894, 1
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RAX.i2224, align 8
  %2897 = icmp eq i32 %2894, -1
  %2898 = icmp eq i32 %2895, 0
  %2899 = or i1 %2897, %2898
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %14, align 1
  %2901 = and i32 %2895, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %21, align 1
  %2906 = xor i32 %2894, %2895
  %2907 = lshr i32 %2906, 4
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  store i8 %2909, i8* %27, align 1
  %2910 = zext i1 %2898 to i8
  store i8 %2910, i8* %30, align 1
  %2911 = lshr i32 %2895, 31
  %2912 = trunc i32 %2911 to i8
  store i8 %2912, i8* %33, align 1
  %2913 = lshr i32 %2894, 31
  %2914 = xor i32 %2911, %2913
  %2915 = add nuw nsw i32 %2914, %2911
  %2916 = icmp eq i32 %2915, 2
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %39, align 1
  %2918 = sext i32 %2895 to i64
  store i64 %2918, i64* %RDX.i2239, align 8
  %2919 = shl nsw i64 %2918, 3
  %2920 = add i64 %2919, %2890
  %2921 = add i64 %2887, 18
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to double*
  %2923 = load double, double* %2922, align 8
  store double %2923, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2924 = add i64 %2887, 22
  store i64 %2924, i64* %3, align 8
  %2925 = load i64, i64* %2889, align 8
  store i64 %2925, i64* %RCX.i2236, align 8
  %2926 = add i64 %2885, -40
  %2927 = add i64 %2887, 25
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = add i32 %2929, 1
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RAX.i2224, align 8
  %2932 = icmp eq i32 %2929, -1
  %2933 = icmp eq i32 %2930, 0
  %2934 = or i1 %2932, %2933
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %14, align 1
  %2936 = and i32 %2930, 255
  %2937 = tail call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  store i8 %2940, i8* %21, align 1
  %2941 = xor i32 %2929, %2930
  %2942 = lshr i32 %2941, 4
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  store i8 %2944, i8* %27, align 1
  %2945 = zext i1 %2933 to i8
  store i8 %2945, i8* %30, align 1
  %2946 = lshr i32 %2930, 31
  %2947 = trunc i32 %2946 to i8
  store i8 %2947, i8* %33, align 1
  %2948 = lshr i32 %2929, 31
  %2949 = xor i32 %2946, %2948
  %2950 = add nuw nsw i32 %2949, %2946
  %2951 = icmp eq i32 %2950, 2
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %39, align 1
  %2953 = sext i32 %2930 to i64
  store i64 %2953, i64* %RDX.i2239, align 8
  %2954 = shl nsw i64 %2953, 3
  %2955 = add i64 %2954, %2925
  %2956 = add i64 %2887, 36
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to double*
  %2958 = load double, double* %2957, align 8
  %2959 = fsub double %2923, %2958
  store double %2959, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2960 = load i64, i64* %RBP.i, align 8
  %2961 = add i64 %2960, -176
  %2962 = add i64 %2887, 44
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to double*
  store double %2959, double* %2963, align 8
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -120
  %2966 = load i64, i64* %3, align 8
  %2967 = add i64 %2966, 5
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2965 to double*
  %2969 = load double, double* %2968, align 8
  store double %2969, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2970 = add i64 %2964, -152
  %2971 = add i64 %2966, 13
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to double*
  %2973 = load double, double* %2972, align 8
  %2974 = fadd double %2969, %2973
  store double %2974, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2975 = add i64 %2964, -16
  %2976 = add i64 %2966, 17
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i64*
  %2978 = load i64, i64* %2977, align 8
  store i64 %2978, i64* %RCX.i2236, align 8
  %2979 = add i64 %2964, -28
  %2980 = add i64 %2966, 21
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = sext i32 %2982 to i64
  store i64 %2983, i64* %RDX.i2239, align 8
  %2984 = shl nsw i64 %2983, 3
  %2985 = add i64 %2984, %2978
  %2986 = add i64 %2966, 26
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to double*
  store double %2974, double* %2987, align 8
  %2988 = load i64, i64* %RBP.i, align 8
  %2989 = add i64 %2988, -128
  %2990 = load i64, i64* %3, align 8
  %2991 = add i64 %2990, 5
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2989 to double*
  %2993 = load double, double* %2992, align 8
  store double %2993, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %2994 = add i64 %2988, -160
  %2995 = add i64 %2990, 13
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to double*
  %2997 = load double, double* %2996, align 8
  %2998 = fadd double %2993, %2997
  store double %2998, double* %94, align 1
  store i64 0, i64* %95, align 1
  %2999 = add i64 %2988, -16
  %3000 = add i64 %2990, 17
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i64*
  %3002 = load i64, i64* %3001, align 8
  store i64 %3002, i64* %RCX.i2236, align 8
  %3003 = add i64 %2988, -28
  %3004 = add i64 %2990, 20
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3003 to i32*
  %3006 = load i32, i32* %3005, align 4
  %3007 = add i32 %3006, 1
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RAX.i2224, align 8
  %3009 = icmp eq i32 %3006, -1
  %3010 = icmp eq i32 %3007, 0
  %3011 = or i1 %3009, %3010
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %14, align 1
  %3013 = and i32 %3007, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %21, align 1
  %3018 = xor i32 %3006, %3007
  %3019 = lshr i32 %3018, 4
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  store i8 %3021, i8* %27, align 1
  %3022 = zext i1 %3010 to i8
  store i8 %3022, i8* %30, align 1
  %3023 = lshr i32 %3007, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %33, align 1
  %3025 = lshr i32 %3006, 31
  %3026 = xor i32 %3023, %3025
  %3027 = add nuw nsw i32 %3026, %3023
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %39, align 1
  %3030 = sext i32 %3007 to i64
  store i64 %3030, i64* %RDX.i2239, align 8
  %3031 = shl nsw i64 %3030, 3
  %3032 = add i64 %3031, %3002
  %3033 = add i64 %2990, 31
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to double*
  store double %2998, double* %3034, align 8
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -152
  %3037 = load i64, i64* %3, align 8
  %3038 = add i64 %3037, 8
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3036 to double*
  %3040 = load double, double* %3039, align 8
  store double %3040, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3041 = add i64 %3035, -120
  %3042 = add i64 %3037, 13
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to double*
  %3044 = load double, double* %3043, align 8
  %3045 = fsub double %3044, %3040
  store double %3045, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3046 = add i64 %3037, 22
  store i64 %3046, i64* %3, align 8
  store double %3045, double* %3043, align 8
  %3047 = load i64, i64* %RBP.i, align 8
  %3048 = add i64 %3047, -160
  %3049 = load i64, i64* %3, align 8
  %3050 = add i64 %3049, 8
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3048 to double*
  %3052 = load double, double* %3051, align 8
  store double %3052, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3053 = add i64 %3047, -128
  %3054 = add i64 %3049, 13
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3053 to double*
  %3056 = load double, double* %3055, align 8
  %3057 = fsub double %3056, %3052
  store double %3057, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3058 = add i64 %3049, 22
  store i64 %3058, i64* %3, align 8
  store double %3057, double* %3055, align 8
  %3059 = load i64, i64* %RBP.i, align 8
  %3060 = add i64 %3059, -88
  %3061 = load i64, i64* %3, align 8
  %3062 = add i64 %3061, 5
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3060 to double*
  %3064 = load double, double* %3063, align 8
  store double %3064, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3065 = add i64 %3059, -120
  %3066 = add i64 %3061, 10
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to double*
  %3068 = load double, double* %3067, align 8
  %3069 = fmul double %3064, %3068
  store double %3069, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3070 = add i64 %3059, -96
  %3071 = add i64 %3061, 15
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to double*
  %3073 = load double, double* %3072, align 8
  store double %3073, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3074 = add i64 %3059, -128
  %3075 = add i64 %3061, 20
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to double*
  %3077 = load double, double* %3076, align 8
  %3078 = fmul double %3073, %3077
  store double %3078, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3079 = fsub double %3069, %3078
  store double %3079, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3080 = add i64 %3059, -16
  %3081 = add i64 %3061, 28
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i64*
  %3083 = load i64, i64* %3082, align 8
  store i64 %3083, i64* %RCX.i2236, align 8
  %3084 = add i64 %3059, -36
  %3085 = add i64 %3061, 32
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = sext i32 %3087 to i64
  store i64 %3088, i64* %RDX.i2239, align 8
  %3089 = shl nsw i64 %3088, 3
  %3090 = add i64 %3089, %3083
  %3091 = add i64 %3061, 37
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to double*
  store double %3079, double* %3092, align 8
  %3093 = load i64, i64* %RBP.i, align 8
  %3094 = add i64 %3093, -88
  %3095 = load i64, i64* %3, align 8
  %3096 = add i64 %3095, 5
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3094 to double*
  %3098 = load double, double* %3097, align 8
  store double %3098, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3099 = add i64 %3093, -128
  %3100 = add i64 %3095, 10
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to double*
  %3102 = load double, double* %3101, align 8
  %3103 = fmul double %3098, %3102
  store double %3103, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3104 = add i64 %3093, -96
  %3105 = add i64 %3095, 15
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to double*
  %3107 = load double, double* %3106, align 8
  store double %3107, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3108 = add i64 %3093, -120
  %3109 = add i64 %3095, 20
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to double*
  %3111 = load double, double* %3110, align 8
  %3112 = fmul double %3107, %3111
  store double %3112, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3113 = fadd double %3103, %3112
  store double %3113, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3114 = add i64 %3093, -16
  %3115 = add i64 %3095, 28
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i64*
  %3117 = load i64, i64* %3116, align 8
  store i64 %3117, i64* %RCX.i2236, align 8
  %3118 = add i64 %3093, -36
  %3119 = add i64 %3095, 31
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i32*
  %3121 = load i32, i32* %3120, align 4
  %3122 = add i32 %3121, 1
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RAX.i2224, align 8
  %3124 = icmp eq i32 %3121, -1
  %3125 = icmp eq i32 %3122, 0
  %3126 = or i1 %3124, %3125
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %14, align 1
  %3128 = and i32 %3122, 255
  %3129 = tail call i32 @llvm.ctpop.i32(i32 %3128)
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = xor i8 %3131, 1
  store i8 %3132, i8* %21, align 1
  %3133 = xor i32 %3121, %3122
  %3134 = lshr i32 %3133, 4
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  store i8 %3136, i8* %27, align 1
  %3137 = zext i1 %3125 to i8
  store i8 %3137, i8* %30, align 1
  %3138 = lshr i32 %3122, 31
  %3139 = trunc i32 %3138 to i8
  store i8 %3139, i8* %33, align 1
  %3140 = lshr i32 %3121, 31
  %3141 = xor i32 %3138, %3140
  %3142 = add nuw nsw i32 %3141, %3138
  %3143 = icmp eq i32 %3142, 2
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %39, align 1
  %3145 = sext i32 %3122 to i64
  store i64 %3145, i64* %RDX.i2239, align 8
  %3146 = shl nsw i64 %3145, 3
  %3147 = add i64 %3146, %3117
  %3148 = add i64 %3095, 42
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to double*
  store double %3113, double* %3149, align 8
  %3150 = load i64, i64* %RBP.i, align 8
  %3151 = add i64 %3150, -136
  %3152 = load i64, i64* %3, align 8
  %3153 = add i64 %3152, 8
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3151 to double*
  %3155 = load double, double* %3154, align 8
  store double %3155, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3156 = add i64 %3150, -176
  %3157 = add i64 %3152, 16
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to double*
  %3159 = load double, double* %3158, align 8
  %3160 = fsub double %3155, %3159
  store double %3160, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3161 = add i64 %3150, -120
  %3162 = add i64 %3152, 21
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to double*
  store double %3160, double* %3163, align 8
  %3164 = load i64, i64* %RBP.i, align 8
  %3165 = add i64 %3164, -144
  %3166 = load i64, i64* %3, align 8
  %3167 = add i64 %3166, 8
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3165 to double*
  %3169 = load double, double* %3168, align 8
  store double %3169, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3170 = add i64 %3164, -168
  %3171 = add i64 %3166, 16
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to double*
  %3173 = load double, double* %3172, align 8
  %3174 = fadd double %3169, %3173
  store double %3174, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3175 = add i64 %3164, -128
  %3176 = add i64 %3166, 21
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to double*
  store double %3174, double* %3177, align 8
  %3178 = load i64, i64* %RBP.i, align 8
  %3179 = add i64 %3178, -72
  %3180 = load i64, i64* %3, align 8
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3179 to double*
  %3183 = load double, double* %3182, align 8
  store double %3183, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3184 = add i64 %3178, -120
  %3185 = add i64 %3180, 10
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to double*
  %3187 = load double, double* %3186, align 8
  %3188 = fmul double %3183, %3187
  store double %3188, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3189 = add i64 %3178, -80
  %3190 = add i64 %3180, 15
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to double*
  %3192 = load double, double* %3191, align 8
  store double %3192, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3193 = add i64 %3178, -128
  %3194 = add i64 %3180, 20
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to double*
  %3196 = load double, double* %3195, align 8
  %3197 = fmul double %3192, %3196
  store double %3197, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3198 = fsub double %3188, %3197
  store double %3198, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3199 = add i64 %3178, -16
  %3200 = add i64 %3180, 28
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3199 to i64*
  %3202 = load i64, i64* %3201, align 8
  store i64 %3202, i64* %RCX.i2236, align 8
  %3203 = add i64 %3178, -32
  %3204 = add i64 %3180, 32
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i32*
  %3206 = load i32, i32* %3205, align 4
  %3207 = sext i32 %3206 to i64
  store i64 %3207, i64* %RDX.i2239, align 8
  %3208 = shl nsw i64 %3207, 3
  %3209 = add i64 %3208, %3202
  %3210 = add i64 %3180, 37
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3209 to double*
  store double %3198, double* %3211, align 8
  %3212 = load i64, i64* %RBP.i, align 8
  %3213 = add i64 %3212, -72
  %3214 = load i64, i64* %3, align 8
  %3215 = add i64 %3214, 5
  store i64 %3215, i64* %3, align 8
  %3216 = inttoptr i64 %3213 to double*
  %3217 = load double, double* %3216, align 8
  store double %3217, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3218 = add i64 %3212, -128
  %3219 = add i64 %3214, 10
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to double*
  %3221 = load double, double* %3220, align 8
  %3222 = fmul double %3217, %3221
  store double %3222, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3223 = add i64 %3212, -80
  %3224 = add i64 %3214, 15
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to double*
  %3226 = load double, double* %3225, align 8
  store double %3226, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3227 = add i64 %3212, -120
  %3228 = add i64 %3214, 20
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to double*
  %3230 = load double, double* %3229, align 8
  %3231 = fmul double %3226, %3230
  store double %3231, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3232 = fadd double %3222, %3231
  store double %3232, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3233 = add i64 %3212, -16
  %3234 = add i64 %3214, 28
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i64*
  %3236 = load i64, i64* %3235, align 8
  store i64 %3236, i64* %RCX.i2236, align 8
  %3237 = add i64 %3212, -32
  %3238 = add i64 %3214, 31
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i32*
  %3240 = load i32, i32* %3239, align 4
  %3241 = add i32 %3240, 1
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RAX.i2224, align 8
  %3243 = icmp eq i32 %3240, -1
  %3244 = icmp eq i32 %3241, 0
  %3245 = or i1 %3243, %3244
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %14, align 1
  %3247 = and i32 %3241, 255
  %3248 = tail call i32 @llvm.ctpop.i32(i32 %3247)
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  %3251 = xor i8 %3250, 1
  store i8 %3251, i8* %21, align 1
  %3252 = xor i32 %3240, %3241
  %3253 = lshr i32 %3252, 4
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  store i8 %3255, i8* %27, align 1
  %3256 = zext i1 %3244 to i8
  store i8 %3256, i8* %30, align 1
  %3257 = lshr i32 %3241, 31
  %3258 = trunc i32 %3257 to i8
  store i8 %3258, i8* %33, align 1
  %3259 = lshr i32 %3240, 31
  %3260 = xor i32 %3257, %3259
  %3261 = add nuw nsw i32 %3260, %3257
  %3262 = icmp eq i32 %3261, 2
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %39, align 1
  %3264 = sext i32 %3241 to i64
  store i64 %3264, i64* %RDX.i2239, align 8
  %3265 = shl nsw i64 %3264, 3
  %3266 = add i64 %3265, %3236
  %3267 = add i64 %3214, 42
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to double*
  store double %3232, double* %3268, align 8
  %3269 = load i64, i64* %RBP.i, align 8
  %3270 = add i64 %3269, -136
  %3271 = load i64, i64* %3, align 8
  %3272 = add i64 %3271, 8
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3270 to double*
  %3274 = load double, double* %3273, align 8
  store double %3274, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3275 = add i64 %3269, -176
  %3276 = add i64 %3271, 16
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to double*
  %3278 = load double, double* %3277, align 8
  %3279 = fadd double %3274, %3278
  store double %3279, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3280 = add i64 %3269, -120
  %3281 = add i64 %3271, 21
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to double*
  store double %3279, double* %3282, align 8
  %3283 = load i64, i64* %RBP.i, align 8
  %3284 = add i64 %3283, -144
  %3285 = load i64, i64* %3, align 8
  %3286 = add i64 %3285, 8
  store i64 %3286, i64* %3, align 8
  %3287 = inttoptr i64 %3284 to double*
  %3288 = load double, double* %3287, align 8
  store double %3288, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3289 = add i64 %3283, -168
  %3290 = add i64 %3285, 16
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to double*
  %3292 = load double, double* %3291, align 8
  %3293 = fsub double %3288, %3292
  store double %3293, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3294 = add i64 %3283, -128
  %3295 = add i64 %3285, 21
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to double*
  store double %3293, double* %3296, align 8
  %3297 = load i64, i64* %RBP.i, align 8
  %3298 = add i64 %3297, -104
  %3299 = load i64, i64* %3, align 8
  %3300 = add i64 %3299, 5
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3298 to double*
  %3302 = load double, double* %3301, align 8
  store double %3302, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3303 = add i64 %3297, -120
  %3304 = add i64 %3299, 10
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to double*
  %3306 = load double, double* %3305, align 8
  %3307 = fmul double %3302, %3306
  store double %3307, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3308 = add i64 %3297, -112
  %3309 = add i64 %3299, 15
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to double*
  %3311 = load double, double* %3310, align 8
  store double %3311, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3312 = add i64 %3297, -128
  %3313 = add i64 %3299, 20
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to double*
  %3315 = load double, double* %3314, align 8
  %3316 = fmul double %3311, %3315
  store double %3316, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3317 = fsub double %3307, %3316
  store double %3317, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3318 = add i64 %3297, -16
  %3319 = add i64 %3299, 28
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i64*
  %3321 = load i64, i64* %3320, align 8
  store i64 %3321, i64* %RCX.i2236, align 8
  %3322 = add i64 %3297, -40
  %3323 = add i64 %3299, 32
  store i64 %3323, i64* %3, align 8
  %3324 = inttoptr i64 %3322 to i32*
  %3325 = load i32, i32* %3324, align 4
  %3326 = sext i32 %3325 to i64
  store i64 %3326, i64* %RDX.i2239, align 8
  %3327 = shl nsw i64 %3326, 3
  %3328 = add i64 %3327, %3321
  %3329 = add i64 %3299, 37
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to double*
  store double %3317, double* %3330, align 8
  %3331 = load i64, i64* %RBP.i, align 8
  %3332 = add i64 %3331, -104
  %3333 = load i64, i64* %3, align 8
  %3334 = add i64 %3333, 5
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3332 to double*
  %3336 = load double, double* %3335, align 8
  store double %3336, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3337 = add i64 %3331, -128
  %3338 = add i64 %3333, 10
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to double*
  %3340 = load double, double* %3339, align 8
  %3341 = fmul double %3336, %3340
  store double %3341, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3342 = add i64 %3331, -112
  %3343 = add i64 %3333, 15
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to double*
  %3345 = load double, double* %3344, align 8
  store double %3345, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3346 = add i64 %3331, -120
  %3347 = add i64 %3333, 20
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to double*
  %3349 = load double, double* %3348, align 8
  %3350 = fmul double %3345, %3349
  store double %3350, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3351 = fadd double %3341, %3350
  store double %3351, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3352 = add i64 %3331, -16
  %3353 = add i64 %3333, 28
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to i64*
  %3355 = load i64, i64* %3354, align 8
  store i64 %3355, i64* %RCX.i2236, align 8
  %3356 = add i64 %3331, -40
  %3357 = add i64 %3333, 31
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to i32*
  %3359 = load i32, i32* %3358, align 4
  %3360 = add i32 %3359, 1
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RAX.i2224, align 8
  %3362 = icmp eq i32 %3359, -1
  %3363 = icmp eq i32 %3360, 0
  %3364 = or i1 %3362, %3363
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %14, align 1
  %3366 = and i32 %3360, 255
  %3367 = tail call i32 @llvm.ctpop.i32(i32 %3366)
  %3368 = trunc i32 %3367 to i8
  %3369 = and i8 %3368, 1
  %3370 = xor i8 %3369, 1
  store i8 %3370, i8* %21, align 1
  %3371 = xor i32 %3359, %3360
  %3372 = lshr i32 %3371, 4
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  store i8 %3374, i8* %27, align 1
  %3375 = zext i1 %3363 to i8
  store i8 %3375, i8* %30, align 1
  %3376 = lshr i32 %3360, 31
  %3377 = trunc i32 %3376 to i8
  store i8 %3377, i8* %33, align 1
  %3378 = lshr i32 %3359, 31
  %3379 = xor i32 %3376, %3378
  %3380 = add nuw nsw i32 %3379, %3376
  %3381 = icmp eq i32 %3380, 2
  %3382 = zext i1 %3381 to i8
  store i8 %3382, i8* %39, align 1
  %3383 = sext i32 %3360 to i64
  store i64 %3383, i64* %RDX.i2239, align 8
  %3384 = shl nsw i64 %3383, 3
  %3385 = add i64 %3384, %3355
  %3386 = add i64 %3333, 42
  store i64 %3386, i64* %3, align 8
  %3387 = inttoptr i64 %3385 to double*
  store double %3351, double* %3387, align 8
  %3388 = load i64, i64* %RBP.i, align 8
  %3389 = add i64 %3388, -28
  %3390 = load i64, i64* %3, align 8
  %3391 = add i64 %3390, 3
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3389 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = add i32 %3393, 2
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RAX.i2224, align 8
  %3396 = icmp ugt i32 %3393, -3
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %14, align 1
  %3398 = and i32 %3394, 255
  %3399 = tail call i32 @llvm.ctpop.i32(i32 %3398)
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  %3402 = xor i8 %3401, 1
  store i8 %3402, i8* %21, align 1
  %3403 = xor i32 %3393, %3394
  %3404 = lshr i32 %3403, 4
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  store i8 %3406, i8* %27, align 1
  %3407 = icmp eq i32 %3394, 0
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %30, align 1
  %3409 = lshr i32 %3394, 31
  %3410 = trunc i32 %3409 to i8
  store i8 %3410, i8* %33, align 1
  %3411 = lshr i32 %3393, 31
  %3412 = xor i32 %3409, %3411
  %3413 = add nuw nsw i32 %3412, %3409
  %3414 = icmp eq i32 %3413, 2
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %39, align 1
  %3416 = add i64 %3390, 9
  store i64 %3416, i64* %3, align 8
  store i32 %3394, i32* %3392, align 4
  %3417 = load i64, i64* %3, align 8
  %3418 = add i64 %3417, -781
  store i64 %3418, i64* %3, align 8
  br label %block_.L_403910

block_.L_403c22:                                  ; preds = %block_.L_403910
  %3419 = load i64, i64* bitcast (%G_0x496__rip__4209706__type* @G_0x496__rip__4209706_ to i64*), align 8
  store i64 %3419, i64* %1019, align 1
  store double 0.000000e+00, double* %96, align 1
  %3420 = add i64 %2359, -24
  %3421 = add i64 %2402, 12
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i64*
  %3423 = load i64, i64* %3422, align 8
  store i64 %3423, i64* %RAX.i2224, align 8
  %3424 = add i64 %2359, -52
  %3425 = add i64 %2402, 15
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3424 to i32*
  %3427 = load i32, i32* %3426, align 4
  %3428 = add i32 %3427, 2
  %3429 = zext i32 %3428 to i64
  store i64 %3429, i64* %RCX.i2236, align 8
  %3430 = icmp ugt i32 %3427, -3
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %14, align 1
  %3432 = and i32 %3428, 255
  %3433 = tail call i32 @llvm.ctpop.i32(i32 %3432)
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = xor i8 %3435, 1
  store i8 %3436, i8* %21, align 1
  %3437 = xor i32 %3427, %3428
  %3438 = lshr i32 %3437, 4
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  store i8 %3440, i8* %27, align 1
  %3441 = icmp eq i32 %3428, 0
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %30, align 1
  %3443 = lshr i32 %3428, 31
  %3444 = trunc i32 %3443 to i8
  store i8 %3444, i8* %33, align 1
  %3445 = lshr i32 %3427, 31
  %3446 = xor i32 %3443, %3445
  %3447 = add nuw nsw i32 %3446, %3443
  %3448 = icmp eq i32 %3447, 2
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %39, align 1
  %3450 = sext i32 %3428 to i64
  store i64 %3450, i64* %RDX.i2239, align 8
  %3451 = shl nsw i64 %3450, 3
  %3452 = add i64 %3451, %3423
  %3453 = add i64 %2402, 26
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i64*
  %3455 = load i64, i64* %3454, align 8
  store i64 %3455, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3456 = add i64 %2359, -72
  %3457 = add i64 %2402, 31
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i64*
  store i64 %3455, i64* %3458, align 8
  %3459 = load i64, i64* %RBP.i, align 8
  %3460 = add i64 %3459, -24
  %3461 = load i64, i64* %3, align 8
  %3462 = add i64 %3461, 4
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3460 to i64*
  %3464 = load i64, i64* %3463, align 8
  store i64 %3464, i64* %RAX.i2224, align 8
  %3465 = add i64 %3459, -52
  %3466 = add i64 %3461, 7
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = add i32 %3468, 3
  %3470 = zext i32 %3469 to i64
  store i64 %3470, i64* %RCX.i2236, align 8
  %3471 = icmp ugt i32 %3468, -4
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %14, align 1
  %3473 = and i32 %3469, 255
  %3474 = tail call i32 @llvm.ctpop.i32(i32 %3473)
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = xor i8 %3476, 1
  store i8 %3477, i8* %21, align 1
  %3478 = xor i32 %3468, %3469
  %3479 = lshr i32 %3478, 4
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  store i8 %3481, i8* %27, align 1
  %3482 = icmp eq i32 %3469, 0
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %30, align 1
  %3484 = lshr i32 %3469, 31
  %3485 = trunc i32 %3484 to i8
  store i8 %3485, i8* %33, align 1
  %3486 = lshr i32 %3468, 31
  %3487 = xor i32 %3484, %3486
  %3488 = add nuw nsw i32 %3487, %3484
  %3489 = icmp eq i32 %3488, 2
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %39, align 1
  %3491 = sext i32 %3469 to i64
  store i64 %3491, i64* %RDX.i2239, align 8
  %3492 = shl nsw i64 %3491, 3
  %3493 = add i64 %3492, %3464
  %3494 = add i64 %3461, 18
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3493 to i64*
  %3496 = load i64, i64* %3495, align 8
  store i64 %3496, i64* %2193, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3497 = add i64 %3459, -80
  %3498 = add i64 %3461, 23
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i64*
  store i64 %3496, i64* %3499, align 8
  %3500 = load i64, i64* %RBP.i, align 8
  %3501 = add i64 %3500, -72
  %3502 = load i64, i64* %3, align 8
  %3503 = add i64 %3502, 5
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3501 to double*
  %3505 = load double, double* %3504, align 8
  store double %3505, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %3506 = load <2 x i32>, <2 x i32>* %2075, align 1
  %3507 = load <2 x i32>, <2 x i32>* %2076, align 1
  %3508 = extractelement <2 x i32> %3506, i32 0
  store i32 %3508, i32* %2077, align 1
  %3509 = extractelement <2 x i32> %3506, i32 1
  store i32 %3509, i32* %2079, align 1
  %3510 = extractelement <2 x i32> %3507, i32 0
  store i32 %3510, i32* %2081, align 1
  %3511 = extractelement <2 x i32> %3507, i32 1
  store i32 %3511, i32* %2083, align 1
  %3512 = add i64 %3500, -88
  %3513 = add i64 %3502, 13
  store i64 %3513, i64* %3, align 8
  %3514 = load double, double* %2084, align 1
  %3515 = inttoptr i64 %3512 to double*
  %3516 = load double, double* %3515, align 8
  %3517 = fmul double %3514, %3516
  store double %3517, double* %2084, align 1
  %3518 = add i64 %3500, -80
  %3519 = add i64 %3502, 18
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to double*
  %3521 = load double, double* %3520, align 8
  %3522 = fmul double %3517, %3521
  store double %3522, double* %2084, align 1
  %3523 = fsub double %3505, %3522
  store double %3523, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %3524 = add i64 %3500, -104
  %3525 = add i64 %3502, 27
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to double*
  store double %3523, double* %3526, align 8
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -88
  %3529 = load i64, i64* %3, align 8
  %3530 = add i64 %3529, 5
  store i64 %3530, i64* %3, align 8
  %3531 = load double, double* %94, align 1
  %3532 = inttoptr i64 %3528 to double*
  %3533 = load double, double* %3532, align 8
  %3534 = fmul double %3531, %3533
  store double %3534, double* %94, align 1
  %3535 = add i64 %3527, -72
  %3536 = add i64 %3529, 10
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to double*
  %3538 = load double, double* %3537, align 8
  %3539 = fmul double %3534, %3538
  store double %3539, double* %94, align 1
  %3540 = add i64 %3527, -80
  %3541 = add i64 %3529, 15
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to double*
  %3543 = load double, double* %3542, align 8
  %3544 = fsub double %3539, %3543
  store double %3544, double* %94, align 1
  %3545 = add i64 %3527, -112
  %3546 = add i64 %3529, 20
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to double*
  store double %3544, double* %3547, align 8
  %3548 = load i64, i64* %RBP.i, align 8
  %3549 = add i64 %3548, -44
  %3550 = load i64, i64* %3, align 8
  %3551 = add i64 %3550, 3
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3549 to i32*
  %3553 = load i32, i32* %3552, align 4
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RCX.i2236, align 8
  %3555 = add i64 %3548, -56
  %3556 = add i64 %3550, 6
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = add i32 %3558, %3553
  %3560 = zext i32 %3559 to i64
  store i64 %3560, i64* %RCX.i2236, align 8
  %3561 = icmp ult i32 %3559, %3553
  %3562 = icmp ult i32 %3559, %3558
  %3563 = or i1 %3561, %3562
  %3564 = zext i1 %3563 to i8
  store i8 %3564, i8* %14, align 1
  %3565 = and i32 %3559, 255
  %3566 = tail call i32 @llvm.ctpop.i32(i32 %3565)
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = xor i8 %3568, 1
  store i8 %3569, i8* %21, align 1
  %3570 = xor i32 %3558, %3553
  %3571 = xor i32 %3570, %3559
  %3572 = lshr i32 %3571, 4
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  store i8 %3574, i8* %27, align 1
  %3575 = icmp eq i32 %3559, 0
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %30, align 1
  %3577 = lshr i32 %3559, 31
  %3578 = trunc i32 %3577 to i8
  store i8 %3578, i8* %33, align 1
  %3579 = lshr i32 %3553, 31
  %3580 = lshr i32 %3558, 31
  %3581 = xor i32 %3577, %3579
  %3582 = xor i32 %3577, %3580
  %3583 = add nuw nsw i32 %3581, %3582
  %3584 = icmp eq i32 %3583, 2
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %39, align 1
  %3586 = add i64 %3548, -28
  %3587 = add i64 %3550, 9
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i32*
  store i32 %3559, i32* %3588, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_403c90

block_.L_403c90:                                  ; preds = %block_403ca6, %block_.L_403c22
  %3589 = phi i64 [ %4682, %block_403ca6 ], [ %.pre4, %block_.L_403c22 ]
  %3590 = load i64, i64* %RBP.i, align 8
  %3591 = add i64 %3590, -28
  %3592 = add i64 %3589, 3
  store i64 %3592, i64* %3, align 8
  %3593 = inttoptr i64 %3591 to i32*
  %3594 = load i32, i32* %3593, align 4
  %3595 = zext i32 %3594 to i64
  store i64 %3595, i64* %RAX.i2224, align 8
  %3596 = add i64 %3590, -8
  %3597 = add i64 %3589, 6
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RCX.i2236, align 8
  %3601 = add i64 %3590, -44
  %3602 = add i64 %3589, 9
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = zext i32 %3604 to i64
  store i64 %3605, i64* %RDX.i2239, align 8
  %3606 = add i64 %3590, -56
  %3607 = add i64 %3589, 12
  store i64 %3607, i64* %3, align 8
  %3608 = inttoptr i64 %3606 to i32*
  %3609 = load i32, i32* %3608, align 4
  %3610 = add i32 %3609, %3604
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RDX.i2239, align 8
  %3612 = add i32 %3610, %3599
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RCX.i2236, align 8
  %3614 = lshr i32 %3612, 31
  %3615 = sub i32 %3594, %3612
  %3616 = icmp ult i32 %3594, %3612
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %14, align 1
  %3618 = and i32 %3615, 255
  %3619 = tail call i32 @llvm.ctpop.i32(i32 %3618)
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  store i8 %3622, i8* %21, align 1
  %3623 = xor i32 %3612, %3594
  %3624 = xor i32 %3623, %3615
  %3625 = lshr i32 %3624, 4
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  store i8 %3627, i8* %27, align 1
  %3628 = icmp eq i32 %3615, 0
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %30, align 1
  %3630 = lshr i32 %3615, 31
  %3631 = trunc i32 %3630 to i8
  store i8 %3631, i8* %33, align 1
  %3632 = lshr i32 %3594, 31
  %3633 = xor i32 %3614, %3632
  %3634 = xor i32 %3630, %3632
  %3635 = add nuw nsw i32 %3634, %3633
  %3636 = icmp eq i32 %3635, 2
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %39, align 1
  %3638 = icmp ne i8 %3631, 0
  %3639 = xor i1 %3638, %3636
  %.v9 = select i1 %3639, i64 22, i64 827
  %3640 = add i64 %3589, %.v9
  store i64 %3640, i64* %3, align 8
  br i1 %3639, label %block_403ca6, label %block_.L_403fcb

block_403ca6:                                     ; preds = %block_.L_403c90
  store i64 -9223372036854775808, i64* %RAX.i2224, align 8
  %3641 = add i64 %3640, 13
  store i64 %3641, i64* %3, align 8
  %3642 = load i32, i32* %3593, align 4
  %3643 = zext i32 %3642 to i64
  store i64 %3643, i64* %RCX.i2236, align 8
  %3644 = add i64 %3640, 16
  store i64 %3644, i64* %3, align 8
  %3645 = load i32, i32* %3598, align 4
  %3646 = add i32 %3645, %3642
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RCX.i2236, align 8
  %3648 = icmp ult i32 %3646, %3642
  %3649 = icmp ult i32 %3646, %3645
  %3650 = or i1 %3648, %3649
  %3651 = zext i1 %3650 to i8
  store i8 %3651, i8* %14, align 1
  %3652 = and i32 %3646, 255
  %3653 = tail call i32 @llvm.ctpop.i32(i32 %3652)
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  %3656 = xor i8 %3655, 1
  store i8 %3656, i8* %21, align 1
  %3657 = xor i32 %3645, %3642
  %3658 = xor i32 %3657, %3646
  %3659 = lshr i32 %3658, 4
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  store i8 %3661, i8* %27, align 1
  %3662 = icmp eq i32 %3646, 0
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %30, align 1
  %3664 = lshr i32 %3646, 31
  %3665 = trunc i32 %3664 to i8
  store i8 %3665, i8* %33, align 1
  %3666 = lshr i32 %3642, 31
  %3667 = lshr i32 %3645, 31
  %3668 = xor i32 %3664, %3666
  %3669 = xor i32 %3664, %3667
  %3670 = add nuw nsw i32 %3668, %3669
  %3671 = icmp eq i32 %3670, 2
  %3672 = zext i1 %3671 to i8
  store i8 %3672, i8* %39, align 1
  %3673 = add i64 %3590, -32
  %3674 = add i64 %3640, 19
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  store i32 %3646, i32* %3675, align 4
  %3676 = load i64, i64* %RBP.i, align 8
  %3677 = add i64 %3676, -32
  %3678 = load i64, i64* %3, align 8
  %3679 = add i64 %3678, 3
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3677 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RCX.i2236, align 8
  %3683 = add i64 %3676, -8
  %3684 = add i64 %3678, 6
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i32*
  %3686 = load i32, i32* %3685, align 4
  %3687 = add i32 %3686, %3681
  %3688 = zext i32 %3687 to i64
  store i64 %3688, i64* %RCX.i2236, align 8
  %3689 = icmp ult i32 %3687, %3681
  %3690 = icmp ult i32 %3687, %3686
  %3691 = or i1 %3689, %3690
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %14, align 1
  %3693 = and i32 %3687, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %21, align 1
  %3698 = xor i32 %3686, %3681
  %3699 = xor i32 %3698, %3687
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  store i8 %3702, i8* %27, align 1
  %3703 = icmp eq i32 %3687, 0
  %3704 = zext i1 %3703 to i8
  store i8 %3704, i8* %30, align 1
  %3705 = lshr i32 %3687, 31
  %3706 = trunc i32 %3705 to i8
  store i8 %3706, i8* %33, align 1
  %3707 = lshr i32 %3681, 31
  %3708 = lshr i32 %3686, 31
  %3709 = xor i32 %3705, %3707
  %3710 = xor i32 %3705, %3708
  %3711 = add nuw nsw i32 %3709, %3710
  %3712 = icmp eq i32 %3711, 2
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %39, align 1
  %3714 = add i64 %3676, -36
  %3715 = add i64 %3678, 9
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i32*
  store i32 %3687, i32* %3716, align 4
  %3717 = load i64, i64* %RBP.i, align 8
  %3718 = add i64 %3717, -36
  %3719 = load i64, i64* %3, align 8
  %3720 = add i64 %3719, 3
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3718 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = zext i32 %3722 to i64
  store i64 %3723, i64* %RCX.i2236, align 8
  %3724 = add i64 %3717, -8
  %3725 = add i64 %3719, 6
  store i64 %3725, i64* %3, align 8
  %3726 = inttoptr i64 %3724 to i32*
  %3727 = load i32, i32* %3726, align 4
  %3728 = add i32 %3727, %3722
  %3729 = zext i32 %3728 to i64
  store i64 %3729, i64* %RCX.i2236, align 8
  %3730 = icmp ult i32 %3728, %3722
  %3731 = icmp ult i32 %3728, %3727
  %3732 = or i1 %3730, %3731
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %14, align 1
  %3734 = and i32 %3728, 255
  %3735 = tail call i32 @llvm.ctpop.i32(i32 %3734)
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = xor i8 %3737, 1
  store i8 %3738, i8* %21, align 1
  %3739 = xor i32 %3727, %3722
  %3740 = xor i32 %3739, %3728
  %3741 = lshr i32 %3740, 4
  %3742 = trunc i32 %3741 to i8
  %3743 = and i8 %3742, 1
  store i8 %3743, i8* %27, align 1
  %3744 = icmp eq i32 %3728, 0
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %30, align 1
  %3746 = lshr i32 %3728, 31
  %3747 = trunc i32 %3746 to i8
  store i8 %3747, i8* %33, align 1
  %3748 = lshr i32 %3722, 31
  %3749 = lshr i32 %3727, 31
  %3750 = xor i32 %3746, %3748
  %3751 = xor i32 %3746, %3749
  %3752 = add nuw nsw i32 %3750, %3751
  %3753 = icmp eq i32 %3752, 2
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %39, align 1
  %3755 = add i64 %3717, -40
  %3756 = add i64 %3719, 9
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  store i32 %3728, i32* %3757, align 4
  %3758 = load i64, i64* %RBP.i, align 8
  %3759 = add i64 %3758, -16
  %3760 = load i64, i64* %3, align 8
  %3761 = add i64 %3760, 4
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3759 to i64*
  %3763 = load i64, i64* %3762, align 8
  store i64 %3763, i64* %RDX.i2239, align 8
  %3764 = add i64 %3758, -28
  %3765 = add i64 %3760, 8
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3764 to i32*
  %3767 = load i32, i32* %3766, align 4
  %3768 = sext i32 %3767 to i64
  store i64 %3768, i64* %RSI.i2233, align 8
  %3769 = shl nsw i64 %3768, 3
  %3770 = add i64 %3769, %3763
  %3771 = add i64 %3760, 13
  store i64 %3771, i64* %3, align 8
  %3772 = inttoptr i64 %3770 to double*
  %3773 = load double, double* %3772, align 8
  store double %3773, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3774 = add i64 %3760, 17
  store i64 %3774, i64* %3, align 8
  %3775 = load i64, i64* %3762, align 8
  store i64 %3775, i64* %RDX.i2239, align 8
  %3776 = add i64 %3758, -32
  %3777 = add i64 %3760, 21
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = sext i32 %3779 to i64
  store i64 %3780, i64* %RSI.i2233, align 8
  %3781 = shl nsw i64 %3780, 3
  %3782 = add i64 %3781, %3775
  %3783 = add i64 %3760, 26
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3782 to double*
  %3785 = load double, double* %3784, align 8
  %3786 = fadd double %3773, %3785
  store double %3786, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3787 = add i64 %3758, -120
  %3788 = add i64 %3760, 31
  store i64 %3788, i64* %3, align 8
  %3789 = inttoptr i64 %3787 to double*
  store double %3786, double* %3789, align 8
  %3790 = load i64, i64* %RBP.i, align 8
  %3791 = add i64 %3790, -16
  %3792 = load i64, i64* %3, align 8
  %3793 = add i64 %3792, 4
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3791 to i64*
  %3795 = load i64, i64* %3794, align 8
  store i64 %3795, i64* %RDX.i2239, align 8
  %3796 = add i64 %3790, -28
  %3797 = add i64 %3792, 7
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i32*
  %3799 = load i32, i32* %3798, align 4
  %3800 = add i32 %3799, 1
  %3801 = zext i32 %3800 to i64
  store i64 %3801, i64* %RCX.i2236, align 8
  %3802 = icmp eq i32 %3799, -1
  %3803 = icmp eq i32 %3800, 0
  %3804 = or i1 %3802, %3803
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %14, align 1
  %3806 = and i32 %3800, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %21, align 1
  %3811 = xor i32 %3799, %3800
  %3812 = lshr i32 %3811, 4
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  store i8 %3814, i8* %27, align 1
  %3815 = zext i1 %3803 to i8
  store i8 %3815, i8* %30, align 1
  %3816 = lshr i32 %3800, 31
  %3817 = trunc i32 %3816 to i8
  store i8 %3817, i8* %33, align 1
  %3818 = lshr i32 %3799, 31
  %3819 = xor i32 %3816, %3818
  %3820 = add nuw nsw i32 %3819, %3816
  %3821 = icmp eq i32 %3820, 2
  %3822 = zext i1 %3821 to i8
  store i8 %3822, i8* %39, align 1
  %3823 = sext i32 %3800 to i64
  store i64 %3823, i64* %RSI.i2233, align 8
  %3824 = shl nsw i64 %3823, 3
  %3825 = add i64 %3824, %3795
  %3826 = add i64 %3792, 18
  store i64 %3826, i64* %3, align 8
  %3827 = inttoptr i64 %3825 to double*
  %3828 = load double, double* %3827, align 8
  store double %3828, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3829 = add i64 %3792, 22
  store i64 %3829, i64* %3, align 8
  %3830 = load i64, i64* %3794, align 8
  store i64 %3830, i64* %RDX.i2239, align 8
  %3831 = add i64 %3790, -32
  %3832 = add i64 %3792, 25
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  %3834 = load i32, i32* %3833, align 4
  %3835 = add i32 %3834, 1
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RCX.i2236, align 8
  %3837 = icmp eq i32 %3834, -1
  %3838 = icmp eq i32 %3835, 0
  %3839 = or i1 %3837, %3838
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %14, align 1
  %3841 = and i32 %3835, 255
  %3842 = tail call i32 @llvm.ctpop.i32(i32 %3841)
  %3843 = trunc i32 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = xor i8 %3844, 1
  store i8 %3845, i8* %21, align 1
  %3846 = xor i32 %3834, %3835
  %3847 = lshr i32 %3846, 4
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  store i8 %3849, i8* %27, align 1
  %3850 = zext i1 %3838 to i8
  store i8 %3850, i8* %30, align 1
  %3851 = lshr i32 %3835, 31
  %3852 = trunc i32 %3851 to i8
  store i8 %3852, i8* %33, align 1
  %3853 = lshr i32 %3834, 31
  %3854 = xor i32 %3851, %3853
  %3855 = add nuw nsw i32 %3854, %3851
  %3856 = icmp eq i32 %3855, 2
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %39, align 1
  %3858 = sext i32 %3835 to i64
  store i64 %3858, i64* %RSI.i2233, align 8
  %3859 = shl nsw i64 %3858, 3
  %3860 = add i64 %3859, %3830
  %3861 = add i64 %3792, 36
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to double*
  %3863 = load double, double* %3862, align 8
  %3864 = fadd double %3828, %3863
  store double %3864, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3865 = load i64, i64* %RBP.i, align 8
  %3866 = add i64 %3865, -128
  %3867 = add i64 %3792, 41
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3866 to double*
  store double %3864, double* %3868, align 8
  %3869 = load i64, i64* %RBP.i, align 8
  %3870 = add i64 %3869, -16
  %3871 = load i64, i64* %3, align 8
  %3872 = add i64 %3871, 4
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3870 to i64*
  %3874 = load i64, i64* %3873, align 8
  store i64 %3874, i64* %RDX.i2239, align 8
  %3875 = add i64 %3869, -28
  %3876 = add i64 %3871, 8
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = sext i32 %3878 to i64
  store i64 %3879, i64* %RSI.i2233, align 8
  %3880 = shl nsw i64 %3879, 3
  %3881 = add i64 %3880, %3874
  %3882 = add i64 %3871, 13
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to double*
  %3884 = load double, double* %3883, align 8
  store double %3884, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3885 = add i64 %3871, 17
  store i64 %3885, i64* %3, align 8
  %3886 = load i64, i64* %3873, align 8
  store i64 %3886, i64* %RDX.i2239, align 8
  %3887 = add i64 %3869, -32
  %3888 = add i64 %3871, 21
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  %3890 = load i32, i32* %3889, align 4
  %3891 = sext i32 %3890 to i64
  store i64 %3891, i64* %RSI.i2233, align 8
  %3892 = shl nsw i64 %3891, 3
  %3893 = add i64 %3892, %3886
  %3894 = add i64 %3871, 26
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to double*
  %3896 = load double, double* %3895, align 8
  %3897 = fsub double %3884, %3896
  store double %3897, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3898 = add i64 %3869, -136
  %3899 = add i64 %3871, 34
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to double*
  store double %3897, double* %3900, align 8
  %3901 = load i64, i64* %RBP.i, align 8
  %3902 = add i64 %3901, -16
  %3903 = load i64, i64* %3, align 8
  %3904 = add i64 %3903, 4
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3902 to i64*
  %3906 = load i64, i64* %3905, align 8
  store i64 %3906, i64* %RDX.i2239, align 8
  %3907 = add i64 %3901, -28
  %3908 = add i64 %3903, 7
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = add i32 %3910, 1
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RCX.i2236, align 8
  %3913 = icmp eq i32 %3910, -1
  %3914 = icmp eq i32 %3911, 0
  %3915 = or i1 %3913, %3914
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %14, align 1
  %3917 = and i32 %3911, 255
  %3918 = tail call i32 @llvm.ctpop.i32(i32 %3917)
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = xor i8 %3920, 1
  store i8 %3921, i8* %21, align 1
  %3922 = xor i32 %3910, %3911
  %3923 = lshr i32 %3922, 4
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  store i8 %3925, i8* %27, align 1
  %3926 = zext i1 %3914 to i8
  store i8 %3926, i8* %30, align 1
  %3927 = lshr i32 %3911, 31
  %3928 = trunc i32 %3927 to i8
  store i8 %3928, i8* %33, align 1
  %3929 = lshr i32 %3910, 31
  %3930 = xor i32 %3927, %3929
  %3931 = add nuw nsw i32 %3930, %3927
  %3932 = icmp eq i32 %3931, 2
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %39, align 1
  %3934 = sext i32 %3911 to i64
  store i64 %3934, i64* %RSI.i2233, align 8
  %3935 = shl nsw i64 %3934, 3
  %3936 = add i64 %3935, %3906
  %3937 = add i64 %3903, 18
  store i64 %3937, i64* %3, align 8
  %3938 = inttoptr i64 %3936 to double*
  %3939 = load double, double* %3938, align 8
  store double %3939, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3940 = add i64 %3903, 22
  store i64 %3940, i64* %3, align 8
  %3941 = load i64, i64* %3905, align 8
  store i64 %3941, i64* %RDX.i2239, align 8
  %3942 = add i64 %3901, -32
  %3943 = add i64 %3903, 25
  store i64 %3943, i64* %3, align 8
  %3944 = inttoptr i64 %3942 to i32*
  %3945 = load i32, i32* %3944, align 4
  %3946 = add i32 %3945, 1
  %3947 = zext i32 %3946 to i64
  store i64 %3947, i64* %RCX.i2236, align 8
  %3948 = icmp eq i32 %3945, -1
  %3949 = icmp eq i32 %3946, 0
  %3950 = or i1 %3948, %3949
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %14, align 1
  %3952 = and i32 %3946, 255
  %3953 = tail call i32 @llvm.ctpop.i32(i32 %3952)
  %3954 = trunc i32 %3953 to i8
  %3955 = and i8 %3954, 1
  %3956 = xor i8 %3955, 1
  store i8 %3956, i8* %21, align 1
  %3957 = xor i32 %3945, %3946
  %3958 = lshr i32 %3957, 4
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  store i8 %3960, i8* %27, align 1
  %3961 = zext i1 %3949 to i8
  store i8 %3961, i8* %30, align 1
  %3962 = lshr i32 %3946, 31
  %3963 = trunc i32 %3962 to i8
  store i8 %3963, i8* %33, align 1
  %3964 = lshr i32 %3945, 31
  %3965 = xor i32 %3962, %3964
  %3966 = add nuw nsw i32 %3965, %3962
  %3967 = icmp eq i32 %3966, 2
  %3968 = zext i1 %3967 to i8
  store i8 %3968, i8* %39, align 1
  %3969 = sext i32 %3946 to i64
  store i64 %3969, i64* %RSI.i2233, align 8
  %3970 = shl nsw i64 %3969, 3
  %3971 = add i64 %3970, %3941
  %3972 = add i64 %3903, 36
  store i64 %3972, i64* %3, align 8
  %3973 = inttoptr i64 %3971 to double*
  %3974 = load double, double* %3973, align 8
  %3975 = fsub double %3939, %3974
  store double %3975, double* %94, align 1
  store i64 0, i64* %95, align 1
  %3976 = load i64, i64* %RBP.i, align 8
  %3977 = add i64 %3976, -144
  %3978 = add i64 %3903, 44
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to double*
  store double %3975, double* %3979, align 8
  %3980 = load i64, i64* %RBP.i, align 8
  %3981 = add i64 %3980, -16
  %3982 = load i64, i64* %3, align 8
  %3983 = add i64 %3982, 4
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3981 to i64*
  %3985 = load i64, i64* %3984, align 8
  store i64 %3985, i64* %RDX.i2239, align 8
  %3986 = add i64 %3980, -36
  %3987 = add i64 %3982, 8
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3986 to i32*
  %3989 = load i32, i32* %3988, align 4
  %3990 = sext i32 %3989 to i64
  store i64 %3990, i64* %RSI.i2233, align 8
  %3991 = shl nsw i64 %3990, 3
  %3992 = add i64 %3991, %3985
  %3993 = add i64 %3982, 13
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to double*
  %3995 = load double, double* %3994, align 8
  store double %3995, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %3996 = add i64 %3982, 17
  store i64 %3996, i64* %3, align 8
  %3997 = load i64, i64* %3984, align 8
  store i64 %3997, i64* %RDX.i2239, align 8
  %3998 = add i64 %3980, -40
  %3999 = add i64 %3982, 21
  store i64 %3999, i64* %3, align 8
  %4000 = inttoptr i64 %3998 to i32*
  %4001 = load i32, i32* %4000, align 4
  %4002 = sext i32 %4001 to i64
  store i64 %4002, i64* %RSI.i2233, align 8
  %4003 = shl nsw i64 %4002, 3
  %4004 = add i64 %4003, %3997
  %4005 = add i64 %3982, 26
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to double*
  %4007 = load double, double* %4006, align 8
  %4008 = fadd double %3995, %4007
  store double %4008, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4009 = add i64 %3980, -152
  %4010 = add i64 %3982, 34
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4009 to double*
  store double %4008, double* %4011, align 8
  %4012 = load i64, i64* %RBP.i, align 8
  %4013 = add i64 %4012, -16
  %4014 = load i64, i64* %3, align 8
  %4015 = add i64 %4014, 4
  store i64 %4015, i64* %3, align 8
  %4016 = inttoptr i64 %4013 to i64*
  %4017 = load i64, i64* %4016, align 8
  store i64 %4017, i64* %RDX.i2239, align 8
  %4018 = add i64 %4012, -36
  %4019 = add i64 %4014, 7
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4018 to i32*
  %4021 = load i32, i32* %4020, align 4
  %4022 = add i32 %4021, 1
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RCX.i2236, align 8
  %4024 = icmp eq i32 %4021, -1
  %4025 = icmp eq i32 %4022, 0
  %4026 = or i1 %4024, %4025
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %14, align 1
  %4028 = and i32 %4022, 255
  %4029 = tail call i32 @llvm.ctpop.i32(i32 %4028)
  %4030 = trunc i32 %4029 to i8
  %4031 = and i8 %4030, 1
  %4032 = xor i8 %4031, 1
  store i8 %4032, i8* %21, align 1
  %4033 = xor i32 %4021, %4022
  %4034 = lshr i32 %4033, 4
  %4035 = trunc i32 %4034 to i8
  %4036 = and i8 %4035, 1
  store i8 %4036, i8* %27, align 1
  %4037 = zext i1 %4025 to i8
  store i8 %4037, i8* %30, align 1
  %4038 = lshr i32 %4022, 31
  %4039 = trunc i32 %4038 to i8
  store i8 %4039, i8* %33, align 1
  %4040 = lshr i32 %4021, 31
  %4041 = xor i32 %4038, %4040
  %4042 = add nuw nsw i32 %4041, %4038
  %4043 = icmp eq i32 %4042, 2
  %4044 = zext i1 %4043 to i8
  store i8 %4044, i8* %39, align 1
  %4045 = sext i32 %4022 to i64
  store i64 %4045, i64* %RSI.i2233, align 8
  %4046 = shl nsw i64 %4045, 3
  %4047 = add i64 %4046, %4017
  %4048 = add i64 %4014, 18
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to double*
  %4050 = load double, double* %4049, align 8
  store double %4050, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4051 = add i64 %4014, 22
  store i64 %4051, i64* %3, align 8
  %4052 = load i64, i64* %4016, align 8
  store i64 %4052, i64* %RDX.i2239, align 8
  %4053 = add i64 %4012, -40
  %4054 = add i64 %4014, 25
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  %4057 = add i32 %4056, 1
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %RCX.i2236, align 8
  %4059 = icmp eq i32 %4056, -1
  %4060 = icmp eq i32 %4057, 0
  %4061 = or i1 %4059, %4060
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %14, align 1
  %4063 = and i32 %4057, 255
  %4064 = tail call i32 @llvm.ctpop.i32(i32 %4063)
  %4065 = trunc i32 %4064 to i8
  %4066 = and i8 %4065, 1
  %4067 = xor i8 %4066, 1
  store i8 %4067, i8* %21, align 1
  %4068 = xor i32 %4056, %4057
  %4069 = lshr i32 %4068, 4
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  store i8 %4071, i8* %27, align 1
  %4072 = zext i1 %4060 to i8
  store i8 %4072, i8* %30, align 1
  %4073 = lshr i32 %4057, 31
  %4074 = trunc i32 %4073 to i8
  store i8 %4074, i8* %33, align 1
  %4075 = lshr i32 %4056, 31
  %4076 = xor i32 %4073, %4075
  %4077 = add nuw nsw i32 %4076, %4073
  %4078 = icmp eq i32 %4077, 2
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %39, align 1
  %4080 = sext i32 %4057 to i64
  store i64 %4080, i64* %RSI.i2233, align 8
  %4081 = shl nsw i64 %4080, 3
  %4082 = add i64 %4081, %4052
  %4083 = add i64 %4014, 36
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to double*
  %4085 = load double, double* %4084, align 8
  %4086 = fadd double %4050, %4085
  store double %4086, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4087 = load i64, i64* %RBP.i, align 8
  %4088 = add i64 %4087, -160
  %4089 = add i64 %4014, 44
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to double*
  store double %4086, double* %4090, align 8
  %4091 = load i64, i64* %RBP.i, align 8
  %4092 = add i64 %4091, -16
  %4093 = load i64, i64* %3, align 8
  %4094 = add i64 %4093, 4
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4092 to i64*
  %4096 = load i64, i64* %4095, align 8
  store i64 %4096, i64* %RDX.i2239, align 8
  %4097 = add i64 %4091, -36
  %4098 = add i64 %4093, 8
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i32*
  %4100 = load i32, i32* %4099, align 4
  %4101 = sext i32 %4100 to i64
  store i64 %4101, i64* %RSI.i2233, align 8
  %4102 = shl nsw i64 %4101, 3
  %4103 = add i64 %4102, %4096
  %4104 = add i64 %4093, 13
  store i64 %4104, i64* %3, align 8
  %4105 = inttoptr i64 %4103 to double*
  %4106 = load double, double* %4105, align 8
  store double %4106, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4107 = add i64 %4093, 17
  store i64 %4107, i64* %3, align 8
  %4108 = load i64, i64* %4095, align 8
  store i64 %4108, i64* %RDX.i2239, align 8
  %4109 = add i64 %4091, -40
  %4110 = add i64 %4093, 21
  store i64 %4110, i64* %3, align 8
  %4111 = inttoptr i64 %4109 to i32*
  %4112 = load i32, i32* %4111, align 4
  %4113 = sext i32 %4112 to i64
  store i64 %4113, i64* %RSI.i2233, align 8
  %4114 = shl nsw i64 %4113, 3
  %4115 = add i64 %4114, %4108
  %4116 = add i64 %4093, 26
  store i64 %4116, i64* %3, align 8
  %4117 = inttoptr i64 %4115 to double*
  %4118 = load double, double* %4117, align 8
  %4119 = fsub double %4106, %4118
  store double %4119, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4120 = add i64 %4091, -168
  %4121 = add i64 %4093, 34
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to double*
  store double %4119, double* %4122, align 8
  %4123 = load i64, i64* %RBP.i, align 8
  %4124 = add i64 %4123, -16
  %4125 = load i64, i64* %3, align 8
  %4126 = add i64 %4125, 4
  store i64 %4126, i64* %3, align 8
  %4127 = inttoptr i64 %4124 to i64*
  %4128 = load i64, i64* %4127, align 8
  store i64 %4128, i64* %RDX.i2239, align 8
  %4129 = add i64 %4123, -36
  %4130 = add i64 %4125, 7
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = add i32 %4132, 1
  %4134 = zext i32 %4133 to i64
  store i64 %4134, i64* %RCX.i2236, align 8
  %4135 = icmp eq i32 %4132, -1
  %4136 = icmp eq i32 %4133, 0
  %4137 = or i1 %4135, %4136
  %4138 = zext i1 %4137 to i8
  store i8 %4138, i8* %14, align 1
  %4139 = and i32 %4133, 255
  %4140 = tail call i32 @llvm.ctpop.i32(i32 %4139)
  %4141 = trunc i32 %4140 to i8
  %4142 = and i8 %4141, 1
  %4143 = xor i8 %4142, 1
  store i8 %4143, i8* %21, align 1
  %4144 = xor i32 %4132, %4133
  %4145 = lshr i32 %4144, 4
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  store i8 %4147, i8* %27, align 1
  %4148 = zext i1 %4136 to i8
  store i8 %4148, i8* %30, align 1
  %4149 = lshr i32 %4133, 31
  %4150 = trunc i32 %4149 to i8
  store i8 %4150, i8* %33, align 1
  %4151 = lshr i32 %4132, 31
  %4152 = xor i32 %4149, %4151
  %4153 = add nuw nsw i32 %4152, %4149
  %4154 = icmp eq i32 %4153, 2
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %39, align 1
  %4156 = sext i32 %4133 to i64
  store i64 %4156, i64* %RSI.i2233, align 8
  %4157 = shl nsw i64 %4156, 3
  %4158 = add i64 %4157, %4128
  %4159 = add i64 %4125, 18
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to double*
  %4161 = load double, double* %4160, align 8
  store double %4161, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4162 = add i64 %4125, 22
  store i64 %4162, i64* %3, align 8
  %4163 = load i64, i64* %4127, align 8
  store i64 %4163, i64* %RDX.i2239, align 8
  %4164 = add i64 %4123, -40
  %4165 = add i64 %4125, 25
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i32*
  %4167 = load i32, i32* %4166, align 4
  %4168 = add i32 %4167, 1
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RCX.i2236, align 8
  %4170 = icmp eq i32 %4167, -1
  %4171 = icmp eq i32 %4168, 0
  %4172 = or i1 %4170, %4171
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %14, align 1
  %4174 = and i32 %4168, 255
  %4175 = tail call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  store i8 %4178, i8* %21, align 1
  %4179 = xor i32 %4167, %4168
  %4180 = lshr i32 %4179, 4
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  store i8 %4182, i8* %27, align 1
  %4183 = zext i1 %4171 to i8
  store i8 %4183, i8* %30, align 1
  %4184 = lshr i32 %4168, 31
  %4185 = trunc i32 %4184 to i8
  store i8 %4185, i8* %33, align 1
  %4186 = lshr i32 %4167, 31
  %4187 = xor i32 %4184, %4186
  %4188 = add nuw nsw i32 %4187, %4184
  %4189 = icmp eq i32 %4188, 2
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %39, align 1
  %4191 = sext i32 %4168 to i64
  store i64 %4191, i64* %RSI.i2233, align 8
  %4192 = shl nsw i64 %4191, 3
  %4193 = add i64 %4192, %4163
  %4194 = add i64 %4125, 36
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to double*
  %4196 = load double, double* %4195, align 8
  %4197 = fsub double %4161, %4196
  store double %4197, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4198 = load i64, i64* %RBP.i, align 8
  %4199 = add i64 %4198, -176
  %4200 = add i64 %4125, 44
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to double*
  store double %4197, double* %4201, align 8
  %4202 = load i64, i64* %RBP.i, align 8
  %4203 = add i64 %4202, -120
  %4204 = load i64, i64* %3, align 8
  %4205 = add i64 %4204, 5
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4203 to double*
  %4207 = load double, double* %4206, align 8
  store double %4207, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4208 = add i64 %4202, -152
  %4209 = add i64 %4204, 13
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to double*
  %4211 = load double, double* %4210, align 8
  %4212 = fadd double %4207, %4211
  store double %4212, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4213 = add i64 %4202, -16
  %4214 = add i64 %4204, 17
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i64*
  %4216 = load i64, i64* %4215, align 8
  store i64 %4216, i64* %RDX.i2239, align 8
  %4217 = add i64 %4202, -28
  %4218 = add i64 %4204, 21
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i32*
  %4220 = load i32, i32* %4219, align 4
  %4221 = sext i32 %4220 to i64
  store i64 %4221, i64* %RSI.i2233, align 8
  %4222 = shl nsw i64 %4221, 3
  %4223 = add i64 %4222, %4216
  %4224 = add i64 %4204, 26
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to double*
  store double %4212, double* %4225, align 8
  %4226 = load i64, i64* %RBP.i, align 8
  %4227 = add i64 %4226, -128
  %4228 = load i64, i64* %3, align 8
  %4229 = add i64 %4228, 5
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4227 to double*
  %4231 = load double, double* %4230, align 8
  store double %4231, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4232 = add i64 %4226, -160
  %4233 = add i64 %4228, 13
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to double*
  %4235 = load double, double* %4234, align 8
  %4236 = fadd double %4231, %4235
  store double %4236, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4237 = add i64 %4226, -16
  %4238 = add i64 %4228, 17
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4237 to i64*
  %4240 = load i64, i64* %4239, align 8
  store i64 %4240, i64* %RDX.i2239, align 8
  %4241 = add i64 %4226, -28
  %4242 = add i64 %4228, 20
  store i64 %4242, i64* %3, align 8
  %4243 = inttoptr i64 %4241 to i32*
  %4244 = load i32, i32* %4243, align 4
  %4245 = add i32 %4244, 1
  %4246 = zext i32 %4245 to i64
  store i64 %4246, i64* %RCX.i2236, align 8
  %4247 = icmp eq i32 %4244, -1
  %4248 = icmp eq i32 %4245, 0
  %4249 = or i1 %4247, %4248
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %14, align 1
  %4251 = and i32 %4245, 255
  %4252 = tail call i32 @llvm.ctpop.i32(i32 %4251)
  %4253 = trunc i32 %4252 to i8
  %4254 = and i8 %4253, 1
  %4255 = xor i8 %4254, 1
  store i8 %4255, i8* %21, align 1
  %4256 = xor i32 %4244, %4245
  %4257 = lshr i32 %4256, 4
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  store i8 %4259, i8* %27, align 1
  %4260 = zext i1 %4248 to i8
  store i8 %4260, i8* %30, align 1
  %4261 = lshr i32 %4245, 31
  %4262 = trunc i32 %4261 to i8
  store i8 %4262, i8* %33, align 1
  %4263 = lshr i32 %4244, 31
  %4264 = xor i32 %4261, %4263
  %4265 = add nuw nsw i32 %4264, %4261
  %4266 = icmp eq i32 %4265, 2
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %39, align 1
  %4268 = sext i32 %4245 to i64
  store i64 %4268, i64* %RSI.i2233, align 8
  %4269 = shl nsw i64 %4268, 3
  %4270 = add i64 %4269, %4240
  %4271 = add i64 %4228, 31
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to double*
  store double %4236, double* %4272, align 8
  %4273 = load i64, i64* %RBP.i, align 8
  %4274 = add i64 %4273, -152
  %4275 = load i64, i64* %3, align 8
  %4276 = add i64 %4275, 8
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4274 to double*
  %4278 = load double, double* %4277, align 8
  store double %4278, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4279 = add i64 %4273, -120
  %4280 = add i64 %4275, 13
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4279 to double*
  %4282 = load double, double* %4281, align 8
  %4283 = fsub double %4282, %4278
  store double %4283, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4284 = add i64 %4275, 22
  store i64 %4284, i64* %3, align 8
  store double %4283, double* %4281, align 8
  %4285 = load i64, i64* %RBP.i, align 8
  %4286 = add i64 %4285, -160
  %4287 = load i64, i64* %3, align 8
  %4288 = add i64 %4287, 8
  store i64 %4288, i64* %3, align 8
  %4289 = inttoptr i64 %4286 to double*
  %4290 = load double, double* %4289, align 8
  store double %4290, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4291 = add i64 %4285, -128
  %4292 = add i64 %4287, 13
  store i64 %4292, i64* %3, align 8
  %4293 = inttoptr i64 %4291 to double*
  %4294 = load double, double* %4293, align 8
  %4295 = fsub double %4294, %4290
  store double %4295, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4296 = add i64 %4287, 22
  store i64 %4296, i64* %3, align 8
  store double %4295, double* %4293, align 8
  %4297 = load i64, i64* %RBP.i, align 8
  %4298 = add i64 %4297, -96
  %4299 = load i64, i64* %3, align 8
  %4300 = add i64 %4299, 5
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4298 to i64*
  %4302 = load i64, i64* %4301, align 8
  %4303 = load i64, i64* %RAX.i2224, align 8
  %4304 = xor i64 %4303, %4302
  store i64 %4304, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4305 = trunc i64 %4304 to i32
  %4306 = and i32 %4305, 255
  %4307 = tail call i32 @llvm.ctpop.i32(i32 %4306)
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  %4310 = xor i8 %4309, 1
  store i8 %4310, i8* %21, align 1
  %4311 = icmp eq i64 %4304, 0
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %30, align 1
  %4313 = lshr i64 %4304, 63
  %4314 = trunc i64 %4313 to i8
  store i8 %4314, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4304, i64* %1019, align 1
  store i64 0, i64* %95, align 1
  %4315 = add i64 %4297, -120
  %4316 = add i64 %4299, 23
  store i64 %4316, i64* %3, align 8
  %4317 = bitcast i64 %4304 to double
  %4318 = inttoptr i64 %4315 to double*
  %4319 = load double, double* %4318, align 8
  %4320 = fmul double %4317, %4319
  store double %4320, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4321 = add i64 %4297, -88
  %4322 = add i64 %4299, 28
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to double*
  %4324 = load double, double* %4323, align 8
  store double %4324, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4325 = add i64 %4297, -128
  %4326 = add i64 %4299, 33
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4325 to double*
  %4328 = load double, double* %4327, align 8
  %4329 = fmul double %4324, %4328
  store double %4329, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4330 = fsub double %4320, %4329
  store double %4330, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4331 = add i64 %4297, -16
  %4332 = add i64 %4299, 41
  store i64 %4332, i64* %3, align 8
  %4333 = inttoptr i64 %4331 to i64*
  %4334 = load i64, i64* %4333, align 8
  store i64 %4334, i64* %RDX.i2239, align 8
  %4335 = add i64 %4297, -36
  %4336 = add i64 %4299, 45
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4335 to i32*
  %4338 = load i32, i32* %4337, align 4
  %4339 = sext i32 %4338 to i64
  store i64 %4339, i64* %RSI.i2233, align 8
  %4340 = shl nsw i64 %4339, 3
  %4341 = add i64 %4340, %4334
  %4342 = add i64 %4299, 50
  store i64 %4342, i64* %3, align 8
  %4343 = inttoptr i64 %4341 to double*
  store double %4330, double* %4343, align 8
  %4344 = load i64, i64* %RBP.i, align 8
  %4345 = add i64 %4344, -96
  %4346 = load i64, i64* %3, align 8
  %4347 = add i64 %4346, 5
  store i64 %4347, i64* %3, align 8
  %4348 = inttoptr i64 %4345 to i64*
  %4349 = load i64, i64* %4348, align 8
  %4350 = load i64, i64* %RAX.i2224, align 8
  %4351 = xor i64 %4350, %4349
  store i64 %4351, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4352 = trunc i64 %4351 to i32
  %4353 = and i32 %4352, 255
  %4354 = tail call i32 @llvm.ctpop.i32(i32 %4353)
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = xor i8 %4356, 1
  store i8 %4357, i8* %21, align 1
  %4358 = icmp eq i64 %4351, 0
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %30, align 1
  %4360 = lshr i64 %4351, 63
  %4361 = trunc i64 %4360 to i8
  store i8 %4361, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4351, i64* %1019, align 1
  store i64 0, i64* %95, align 1
  %4362 = add i64 %4344, -128
  %4363 = add i64 %4346, 23
  store i64 %4363, i64* %3, align 8
  %4364 = bitcast i64 %4351 to double
  %4365 = inttoptr i64 %4362 to double*
  %4366 = load double, double* %4365, align 8
  %4367 = fmul double %4364, %4366
  store double %4367, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4368 = add i64 %4344, -88
  %4369 = add i64 %4346, 28
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to double*
  %4371 = load double, double* %4370, align 8
  store double %4371, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4372 = add i64 %4344, -120
  %4373 = add i64 %4346, 33
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4372 to double*
  %4375 = load double, double* %4374, align 8
  %4376 = fmul double %4371, %4375
  store double %4376, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4377 = fadd double %4367, %4376
  store double %4377, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4378 = add i64 %4344, -16
  %4379 = add i64 %4346, 41
  store i64 %4379, i64* %3, align 8
  %4380 = inttoptr i64 %4378 to i64*
  %4381 = load i64, i64* %4380, align 8
  store i64 %4381, i64* %RAX.i2224, align 8
  %4382 = add i64 %4344, -36
  %4383 = add i64 %4346, 44
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  %4385 = load i32, i32* %4384, align 4
  %4386 = add i32 %4385, 1
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RCX.i2236, align 8
  %4388 = icmp eq i32 %4385, -1
  %4389 = icmp eq i32 %4386, 0
  %4390 = or i1 %4388, %4389
  %4391 = zext i1 %4390 to i8
  store i8 %4391, i8* %14, align 1
  %4392 = and i32 %4386, 255
  %4393 = tail call i32 @llvm.ctpop.i32(i32 %4392)
  %4394 = trunc i32 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = xor i8 %4395, 1
  store i8 %4396, i8* %21, align 1
  %4397 = xor i32 %4385, %4386
  %4398 = lshr i32 %4397, 4
  %4399 = trunc i32 %4398 to i8
  %4400 = and i8 %4399, 1
  store i8 %4400, i8* %27, align 1
  %4401 = zext i1 %4389 to i8
  store i8 %4401, i8* %30, align 1
  %4402 = lshr i32 %4386, 31
  %4403 = trunc i32 %4402 to i8
  store i8 %4403, i8* %33, align 1
  %4404 = lshr i32 %4385, 31
  %4405 = xor i32 %4402, %4404
  %4406 = add nuw nsw i32 %4405, %4402
  %4407 = icmp eq i32 %4406, 2
  %4408 = zext i1 %4407 to i8
  store i8 %4408, i8* %39, align 1
  %4409 = sext i32 %4386 to i64
  store i64 %4409, i64* %RDX.i2239, align 8
  %4410 = shl nsw i64 %4409, 3
  %4411 = add i64 %4410, %4381
  %4412 = add i64 %4346, 55
  store i64 %4412, i64* %3, align 8
  %4413 = inttoptr i64 %4411 to double*
  store double %4377, double* %4413, align 8
  %4414 = load i64, i64* %RBP.i, align 8
  %4415 = add i64 %4414, -136
  %4416 = load i64, i64* %3, align 8
  %4417 = add i64 %4416, 8
  store i64 %4417, i64* %3, align 8
  %4418 = inttoptr i64 %4415 to double*
  %4419 = load double, double* %4418, align 8
  store double %4419, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4420 = add i64 %4414, -176
  %4421 = add i64 %4416, 16
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to double*
  %4423 = load double, double* %4422, align 8
  %4424 = fsub double %4419, %4423
  store double %4424, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4425 = add i64 %4414, -120
  %4426 = add i64 %4416, 21
  store i64 %4426, i64* %3, align 8
  %4427 = inttoptr i64 %4425 to double*
  store double %4424, double* %4427, align 8
  %4428 = load i64, i64* %RBP.i, align 8
  %4429 = add i64 %4428, -144
  %4430 = load i64, i64* %3, align 8
  %4431 = add i64 %4430, 8
  store i64 %4431, i64* %3, align 8
  %4432 = inttoptr i64 %4429 to double*
  %4433 = load double, double* %4432, align 8
  store double %4433, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4434 = add i64 %4428, -168
  %4435 = add i64 %4430, 16
  store i64 %4435, i64* %3, align 8
  %4436 = inttoptr i64 %4434 to double*
  %4437 = load double, double* %4436, align 8
  %4438 = fadd double %4433, %4437
  store double %4438, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4439 = add i64 %4428, -128
  %4440 = add i64 %4430, 21
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to double*
  store double %4438, double* %4441, align 8
  %4442 = load i64, i64* %RBP.i, align 8
  %4443 = add i64 %4442, -72
  %4444 = load i64, i64* %3, align 8
  %4445 = add i64 %4444, 5
  store i64 %4445, i64* %3, align 8
  %4446 = inttoptr i64 %4443 to double*
  %4447 = load double, double* %4446, align 8
  store double %4447, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4448 = add i64 %4442, -120
  %4449 = add i64 %4444, 10
  store i64 %4449, i64* %3, align 8
  %4450 = inttoptr i64 %4448 to double*
  %4451 = load double, double* %4450, align 8
  %4452 = fmul double %4447, %4451
  store double %4452, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4453 = add i64 %4442, -80
  %4454 = add i64 %4444, 15
  store i64 %4454, i64* %3, align 8
  %4455 = inttoptr i64 %4453 to double*
  %4456 = load double, double* %4455, align 8
  store double %4456, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4457 = add i64 %4442, -128
  %4458 = add i64 %4444, 20
  store i64 %4458, i64* %3, align 8
  %4459 = inttoptr i64 %4457 to double*
  %4460 = load double, double* %4459, align 8
  %4461 = fmul double %4456, %4460
  store double %4461, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4462 = fsub double %4452, %4461
  store double %4462, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4463 = add i64 %4442, -16
  %4464 = add i64 %4444, 28
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i64*
  %4466 = load i64, i64* %4465, align 8
  store i64 %4466, i64* %RAX.i2224, align 8
  %4467 = add i64 %4442, -32
  %4468 = add i64 %4444, 32
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i32*
  %4470 = load i32, i32* %4469, align 4
  %4471 = sext i32 %4470 to i64
  store i64 %4471, i64* %RDX.i2239, align 8
  %4472 = shl nsw i64 %4471, 3
  %4473 = add i64 %4472, %4466
  %4474 = add i64 %4444, 37
  store i64 %4474, i64* %3, align 8
  %4475 = inttoptr i64 %4473 to double*
  store double %4462, double* %4475, align 8
  %4476 = load i64, i64* %RBP.i, align 8
  %4477 = add i64 %4476, -72
  %4478 = load i64, i64* %3, align 8
  %4479 = add i64 %4478, 5
  store i64 %4479, i64* %3, align 8
  %4480 = inttoptr i64 %4477 to double*
  %4481 = load double, double* %4480, align 8
  store double %4481, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4482 = add i64 %4476, -128
  %4483 = add i64 %4478, 10
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to double*
  %4485 = load double, double* %4484, align 8
  %4486 = fmul double %4481, %4485
  store double %4486, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4487 = add i64 %4476, -80
  %4488 = add i64 %4478, 15
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to double*
  %4490 = load double, double* %4489, align 8
  store double %4490, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4491 = add i64 %4476, -120
  %4492 = add i64 %4478, 20
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4491 to double*
  %4494 = load double, double* %4493, align 8
  %4495 = fmul double %4490, %4494
  store double %4495, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4496 = fadd double %4486, %4495
  store double %4496, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4497 = add i64 %4476, -16
  %4498 = add i64 %4478, 28
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4497 to i64*
  %4500 = load i64, i64* %4499, align 8
  store i64 %4500, i64* %RAX.i2224, align 8
  %4501 = add i64 %4476, -32
  %4502 = add i64 %4478, 31
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i32*
  %4504 = load i32, i32* %4503, align 4
  %4505 = add i32 %4504, 1
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RCX.i2236, align 8
  %4507 = icmp eq i32 %4504, -1
  %4508 = icmp eq i32 %4505, 0
  %4509 = or i1 %4507, %4508
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %14, align 1
  %4511 = and i32 %4505, 255
  %4512 = tail call i32 @llvm.ctpop.i32(i32 %4511)
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  %4515 = xor i8 %4514, 1
  store i8 %4515, i8* %21, align 1
  %4516 = xor i32 %4504, %4505
  %4517 = lshr i32 %4516, 4
  %4518 = trunc i32 %4517 to i8
  %4519 = and i8 %4518, 1
  store i8 %4519, i8* %27, align 1
  %4520 = zext i1 %4508 to i8
  store i8 %4520, i8* %30, align 1
  %4521 = lshr i32 %4505, 31
  %4522 = trunc i32 %4521 to i8
  store i8 %4522, i8* %33, align 1
  %4523 = lshr i32 %4504, 31
  %4524 = xor i32 %4521, %4523
  %4525 = add nuw nsw i32 %4524, %4521
  %4526 = icmp eq i32 %4525, 2
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %39, align 1
  %4528 = sext i32 %4505 to i64
  store i64 %4528, i64* %RDX.i2239, align 8
  %4529 = shl nsw i64 %4528, 3
  %4530 = add i64 %4529, %4500
  %4531 = add i64 %4478, 42
  store i64 %4531, i64* %3, align 8
  %4532 = inttoptr i64 %4530 to double*
  store double %4496, double* %4532, align 8
  %4533 = load i64, i64* %RBP.i, align 8
  %4534 = add i64 %4533, -136
  %4535 = load i64, i64* %3, align 8
  %4536 = add i64 %4535, 8
  store i64 %4536, i64* %3, align 8
  %4537 = inttoptr i64 %4534 to double*
  %4538 = load double, double* %4537, align 8
  store double %4538, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4539 = add i64 %4533, -176
  %4540 = add i64 %4535, 16
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to double*
  %4542 = load double, double* %4541, align 8
  %4543 = fadd double %4538, %4542
  store double %4543, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4544 = add i64 %4533, -120
  %4545 = add i64 %4535, 21
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4544 to double*
  store double %4543, double* %4546, align 8
  %4547 = load i64, i64* %RBP.i, align 8
  %4548 = add i64 %4547, -144
  %4549 = load i64, i64* %3, align 8
  %4550 = add i64 %4549, 8
  store i64 %4550, i64* %3, align 8
  %4551 = inttoptr i64 %4548 to double*
  %4552 = load double, double* %4551, align 8
  store double %4552, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4553 = add i64 %4547, -168
  %4554 = add i64 %4549, 16
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4553 to double*
  %4556 = load double, double* %4555, align 8
  %4557 = fsub double %4552, %4556
  store double %4557, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4558 = add i64 %4547, -128
  %4559 = add i64 %4549, 21
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to double*
  store double %4557, double* %4560, align 8
  %4561 = load i64, i64* %RBP.i, align 8
  %4562 = add i64 %4561, -104
  %4563 = load i64, i64* %3, align 8
  %4564 = add i64 %4563, 5
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4562 to double*
  %4566 = load double, double* %4565, align 8
  store double %4566, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4567 = add i64 %4561, -120
  %4568 = add i64 %4563, 10
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to double*
  %4570 = load double, double* %4569, align 8
  %4571 = fmul double %4566, %4570
  store double %4571, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4572 = add i64 %4561, -112
  %4573 = add i64 %4563, 15
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to double*
  %4575 = load double, double* %4574, align 8
  store double %4575, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4576 = add i64 %4561, -128
  %4577 = add i64 %4563, 20
  store i64 %4577, i64* %3, align 8
  %4578 = inttoptr i64 %4576 to double*
  %4579 = load double, double* %4578, align 8
  %4580 = fmul double %4575, %4579
  store double %4580, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4581 = fsub double %4571, %4580
  store double %4581, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4582 = add i64 %4561, -16
  %4583 = add i64 %4563, 28
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4582 to i64*
  %4585 = load i64, i64* %4584, align 8
  store i64 %4585, i64* %RAX.i2224, align 8
  %4586 = add i64 %4561, -40
  %4587 = add i64 %4563, 32
  store i64 %4587, i64* %3, align 8
  %4588 = inttoptr i64 %4586 to i32*
  %4589 = load i32, i32* %4588, align 4
  %4590 = sext i32 %4589 to i64
  store i64 %4590, i64* %RDX.i2239, align 8
  %4591 = shl nsw i64 %4590, 3
  %4592 = add i64 %4591, %4585
  %4593 = add i64 %4563, 37
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to double*
  store double %4581, double* %4594, align 8
  %4595 = load i64, i64* %RBP.i, align 8
  %4596 = add i64 %4595, -104
  %4597 = load i64, i64* %3, align 8
  %4598 = add i64 %4597, 5
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4596 to double*
  %4600 = load double, double* %4599, align 8
  store double %4600, double* %94, align 1
  store double 0.000000e+00, double* %96, align 1
  %4601 = add i64 %4595, -128
  %4602 = add i64 %4597, 10
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4601 to double*
  %4604 = load double, double* %4603, align 8
  %4605 = fmul double %4600, %4604
  store double %4605, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4606 = add i64 %4595, -112
  %4607 = add i64 %4597, 15
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to double*
  %4609 = load double, double* %4608, align 8
  store double %4609, double* %1034, align 1
  store double 0.000000e+00, double* %1036, align 1
  %4610 = add i64 %4595, -120
  %4611 = add i64 %4597, 20
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to double*
  %4613 = load double, double* %4612, align 8
  %4614 = fmul double %4609, %4613
  store double %4614, double* %1034, align 1
  store i64 0, i64* %1035, align 1
  %4615 = fadd double %4605, %4614
  store double %4615, double* %94, align 1
  store i64 0, i64* %95, align 1
  %4616 = add i64 %4595, -16
  %4617 = add i64 %4597, 28
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i64*
  %4619 = load i64, i64* %4618, align 8
  store i64 %4619, i64* %RAX.i2224, align 8
  %4620 = add i64 %4595, -40
  %4621 = add i64 %4597, 31
  store i64 %4621, i64* %3, align 8
  %4622 = inttoptr i64 %4620 to i32*
  %4623 = load i32, i32* %4622, align 4
  %4624 = add i32 %4623, 1
  %4625 = zext i32 %4624 to i64
  store i64 %4625, i64* %RCX.i2236, align 8
  %4626 = icmp eq i32 %4623, -1
  %4627 = icmp eq i32 %4624, 0
  %4628 = or i1 %4626, %4627
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %14, align 1
  %4630 = and i32 %4624, 255
  %4631 = tail call i32 @llvm.ctpop.i32(i32 %4630)
  %4632 = trunc i32 %4631 to i8
  %4633 = and i8 %4632, 1
  %4634 = xor i8 %4633, 1
  store i8 %4634, i8* %21, align 1
  %4635 = xor i32 %4623, %4624
  %4636 = lshr i32 %4635, 4
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  store i8 %4638, i8* %27, align 1
  %4639 = zext i1 %4627 to i8
  store i8 %4639, i8* %30, align 1
  %4640 = lshr i32 %4624, 31
  %4641 = trunc i32 %4640 to i8
  store i8 %4641, i8* %33, align 1
  %4642 = lshr i32 %4623, 31
  %4643 = xor i32 %4640, %4642
  %4644 = add nuw nsw i32 %4643, %4640
  %4645 = icmp eq i32 %4644, 2
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %39, align 1
  %4647 = sext i32 %4624 to i64
  store i64 %4647, i64* %RDX.i2239, align 8
  %4648 = shl nsw i64 %4647, 3
  %4649 = add i64 %4648, %4619
  %4650 = add i64 %4597, 42
  store i64 %4650, i64* %3, align 8
  %4651 = inttoptr i64 %4649 to double*
  store double %4615, double* %4651, align 8
  %4652 = load i64, i64* %RBP.i, align 8
  %4653 = add i64 %4652, -28
  %4654 = load i64, i64* %3, align 8
  %4655 = add i64 %4654, 3
  store i64 %4655, i64* %3, align 8
  %4656 = inttoptr i64 %4653 to i32*
  %4657 = load i32, i32* %4656, align 4
  %4658 = add i32 %4657, 2
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RAX.i2224, align 8
  %4660 = icmp ugt i32 %4657, -3
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %14, align 1
  %4662 = and i32 %4658, 255
  %4663 = tail call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  store i8 %4666, i8* %21, align 1
  %4667 = xor i32 %4657, %4658
  %4668 = lshr i32 %4667, 4
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  store i8 %4670, i8* %27, align 1
  %4671 = icmp eq i32 %4658, 0
  %4672 = zext i1 %4671 to i8
  store i8 %4672, i8* %30, align 1
  %4673 = lshr i32 %4658, 31
  %4674 = trunc i32 %4673 to i8
  store i8 %4674, i8* %33, align 1
  %4675 = lshr i32 %4657, 31
  %4676 = xor i32 %4673, %4675
  %4677 = add nuw nsw i32 %4676, %4673
  %4678 = icmp eq i32 %4677, 2
  %4679 = zext i1 %4678 to i8
  store i8 %4679, i8* %39, align 1
  %4680 = add i64 %4654, 9
  store i64 %4680, i64* %3, align 8
  store i32 %4658, i32* %4656, align 4
  %4681 = load i64, i64* %3, align 8
  %4682 = add i64 %4681, -822
  store i64 %4682, i64* %3, align 8
  br label %block_.L_403c90

block_.L_403fcb:                                  ; preds = %block_.L_403c90
  %4683 = add i64 %3590, -60
  %4684 = add i64 %3640, 8
  store i64 %4684, i64* %3, align 8
  %4685 = inttoptr i64 %4683 to i32*
  %4686 = load i32, i32* %4685, align 4
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RAX.i2224, align 8
  %4688 = add i64 %3640, 11
  store i64 %4688, i64* %3, align 8
  %4689 = load i32, i32* %3603, align 4
  %4690 = add i32 %4689, %4686
  %4691 = zext i32 %4690 to i64
  store i64 %4691, i64* %RAX.i2224, align 8
  %4692 = icmp ult i32 %4690, %4686
  %4693 = icmp ult i32 %4690, %4689
  %4694 = or i1 %4692, %4693
  %4695 = zext i1 %4694 to i8
  store i8 %4695, i8* %14, align 1
  %4696 = and i32 %4690, 255
  %4697 = tail call i32 @llvm.ctpop.i32(i32 %4696)
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  %4700 = xor i8 %4699, 1
  store i8 %4700, i8* %21, align 1
  %4701 = xor i32 %4689, %4686
  %4702 = xor i32 %4701, %4690
  %4703 = lshr i32 %4702, 4
  %4704 = trunc i32 %4703 to i8
  %4705 = and i8 %4704, 1
  store i8 %4705, i8* %27, align 1
  %4706 = icmp eq i32 %4690, 0
  %4707 = zext i1 %4706 to i8
  store i8 %4707, i8* %30, align 1
  %4708 = lshr i32 %4690, 31
  %4709 = trunc i32 %4708 to i8
  store i8 %4709, i8* %33, align 1
  %4710 = lshr i32 %4686, 31
  %4711 = lshr i32 %4689, 31
  %4712 = xor i32 %4708, %4710
  %4713 = xor i32 %4708, %4711
  %4714 = add nuw nsw i32 %4712, %4713
  %4715 = icmp eq i32 %4714, 2
  %4716 = zext i1 %4715 to i8
  store i8 %4716, i8* %39, align 1
  %4717 = add i64 %3640, 14
  store i64 %4717, i64* %3, align 8
  store i32 %4690, i32* %3603, align 4
  %4718 = load i64, i64* %3, align 8
  %4719 = add i64 %4718, -1910
  store i64 %4719, i64* %3, align 8
  br label %block_.L_403863

block_.L_403fde:                                  ; preds = %block_.L_403863
  %4720 = load i64, i64* %6, align 8
  %4721 = add i64 %4720, 48
  store i64 %4721, i64* %6, align 8
  %4722 = icmp ugt i64 %4720, -49
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %14, align 1
  %4724 = trunc i64 %4721 to i32
  %4725 = and i32 %4724, 255
  %4726 = tail call i32 @llvm.ctpop.i32(i32 %4725)
  %4727 = trunc i32 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = xor i8 %4728, 1
  store i8 %4729, i8* %21, align 1
  %4730 = xor i64 %4720, 16
  %4731 = xor i64 %4730, %4721
  %4732 = lshr i64 %4731, 4
  %4733 = trunc i64 %4732 to i8
  %4734 = and i8 %4733, 1
  store i8 %4734, i8* %27, align 1
  %4735 = icmp eq i64 %4721, 0
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %30, align 1
  %4737 = lshr i64 %4721, 63
  %4738 = trunc i64 %4737 to i8
  store i8 %4738, i8* %33, align 1
  %4739 = lshr i64 %4720, 63
  %4740 = xor i64 %4737, %4739
  %4741 = add nuw nsw i64 %4740, %4737
  %4742 = icmp eq i64 %4741, 2
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %39, align 1
  %4744 = add i64 %2122, 5
  store i64 %4744, i64* %3, align 8
  %4745 = add i64 %4720, 56
  %4746 = inttoptr i64 %4721 to i64*
  %4747 = load i64, i64* %4746, align 8
  store i64 %4747, i64* %RBP.i, align 8
  store i64 %4745, i64* %6, align 8
  %4748 = add i64 %2122, 6
  store i64 %4748, i64* %3, align 8
  %4749 = inttoptr i64 %4745 to i64*
  %4750 = load i64, i64* %4749, align 8
  store i64 %4750, i64* %3, align 8
  %4751 = add i64 %4720, 64
  store i64 %4751, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %5 = add i64 %4, 3
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x849__rip__4208759__type* @G_0x849__rip__4208759_ to i64*), align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x496__rip__4209706__type* @G_0x496__rip__4209706_ to i64*), align 8
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403fd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
