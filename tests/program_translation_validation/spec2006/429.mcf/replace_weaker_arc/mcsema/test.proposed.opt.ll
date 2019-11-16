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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @replace_weaker_arc(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i446 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 3, i64* %RAX.i446, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i444 = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 2, i64* %13, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %14 = add i64 %7, -16
  %15 = load i64, i64* %RDI.i, align 8
  %16 = add i64 %10, 18
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %14 to i64*
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i439 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %19 = load i64, i64* %RBP.i, align 8
  %20 = add i64 %19, -16
  %21 = load i64, i64* %RSI.i439, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %20 to i64*
  store i64 %21, i64* %24, align 8
  %RDX.i436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -24
  %27 = load i64, i64* %RDX.i436, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i433 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -32
  %34 = load i64, i64* %RCX.i433, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -40
  %40 = load i64, i64* %R8.i, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -48
  %46 = load i64, i64* %R9.i, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RCX.i433, align 8
  %56 = add i64 %50, -16
  %57 = add i64 %52, 8
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RDX.i436, align 8
  %60 = add i64 %59, 8
  %61 = add i64 %52, 12
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i64*
  store i64 %55, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RCX.i433, align 8
  %69 = add i64 %63, -16
  %70 = add i64 %65, 8
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RDX.i436, align 8
  %73 = add i64 %72, 16
  %74 = add i64 %65, 12
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %68, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -40
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RCX.i433, align 8
  %82 = add i64 %76, -16
  %83 = add i64 %78, 8
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %RDX.i436, align 8
  %86 = add i64 %85, 56
  %87 = add i64 %78, 12
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i64*
  store i64 %81, i64* %88, align 8
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -40
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 4
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i64*
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %RCX.i433, align 8
  %95 = add i64 %89, -16
  %96 = add i64 %91, 8
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %RDX.i436, align 8
  %99 = add i64 %91, 11
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i64*
  store i64 %94, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -48
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RCX.i433, align 8
  %107 = add i64 %101, -16
  %108 = add i64 %103, 8
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RDX.i436, align 8
  %111 = add i64 %110, 48
  %112 = add i64 %103, 12
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i64*
  store i64 %106, i64* %113, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -56
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 8
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %115 to i64*
  store i64 1, i64* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -16
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RCX.i433, align 8
  %125 = add i64 %124, 112
  %126 = add i64 %121, 8
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RCX.i433, align 8
  %129 = add i64 %121, 12
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %123, align 8
  store i64 %130, i64* %RDX.i436, align 8
  %131 = add i64 %130, 176
  %132 = add i64 %121, 19
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %128, %134
  %136 = icmp ult i64 %128, %134
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %137, i8* %138, align 1
  %139 = trunc i64 %135 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %144, i8* %145, align 1
  %146 = xor i64 %134, %128
  %147 = xor i64 %146, %135
  %148 = lshr i64 %147, 4
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %150, i8* %151, align 1
  %152 = icmp eq i64 %135, 0
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %153, i8* %154, align 1
  %155 = lshr i64 %135, 63
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1
  %158 = lshr i64 %128, 63
  %159 = lshr i64 %134, 63
  %160 = xor i64 %159, %158
  %161 = xor i64 %155, %158
  %162 = add nuw nsw i64 %161, %160
  %163 = icmp eq i64 %162, 2
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %164, i8* %165, align 1
  %166 = load i32, i32* %R10D.i444, align 4
  %167 = zext i32 %166 to i64
  %168 = icmp ne i8 %156, 0
  %169 = xor i1 %168, %163
  %.demorgan = or i1 %152, %169
  %170 = load i64, i64* %RAX.i446, align 8
  %171 = select i1 %.demorgan, i64 %170, i64 %167
  %172 = and i64 %171, 4294967295
  store i64 %172, i64* %RAX.i446, align 8
  %sext = shl i64 %171, 32
  %173 = ashr exact i64 %sext, 32
  store i64 %173, i64* %RCX.i433, align 8
  %174 = add i64 %119, -64
  %175 = add i64 %121, 30
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  store i64 %173, i64* %176, align 8
  %AL.i358 = bitcast %union.anon* %11 to i8*
  %CL.i359 = bitcast %union.anon* %31 to i8*
  %SIL.i326 = bitcast %union.anon* %18 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ed8

block_.L_400ed8:                                  ; preds = %block_.L_4010fe, %entry
  %177 = phi i64 [ %1225, %block_.L_4010fe ], [ %.pre, %entry ]
  store i64 0, i64* %RAX.i446, align 8
  store i8 0, i8* %138, align 1
  store i8 1, i8* %145, align 1
  store i8 1, i8* %154, align 1
  store i8 0, i8* %157, align 1
  store i8 0, i8* %165, align 1
  store i8 0, i8* %151, align 1
  store i8 0, i8* %CL.i359, align 1
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -64
  %180 = add i64 %177, 8
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RDX.i436, align 8
  %183 = add i64 %178, -8
  %184 = add i64 %177, 12
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RSI.i439, align 8
  %187 = add i64 %186, 448
  %188 = add i64 %177, 19
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %182, %190
  %192 = icmp ult i64 %182, %190
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %138, align 1
  %194 = trunc i64 %191 to i32
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %145, align 1
  %200 = xor i64 %190, %182
  %201 = xor i64 %200, %191
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %151, align 1
  %205 = icmp eq i64 %191, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %154, align 1
  %207 = lshr i64 %191, 63
  %208 = trunc i64 %207 to i8
  store i8 %208, i8* %157, align 1
  %209 = lshr i64 %182, 63
  %210 = lshr i64 %190, 63
  %211 = xor i64 %210, %209
  %212 = xor i64 %207, %209
  %213 = add nuw nsw i64 %212, %211
  %214 = icmp eq i64 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %165, align 1
  %216 = add i64 %178, -65
  %217 = add i64 %177, 22
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i8*
  store i8 0, i8* %218, align 1
  %219 = load i64, i64* %3, align 8
  %220 = add i64 %219, 41
  %221 = add i64 %219, 6
  %222 = load i8, i8* %154, align 1
  %223 = icmp eq i8 %222, 0
  %224 = load i8, i8* %157, align 1
  %225 = icmp ne i8 %224, 0
  %226 = load i8, i8* %165, align 1
  %227 = icmp ne i8 %226, 0
  %228 = xor i1 %225, %227
  %229 = xor i1 %228, true
  %230 = and i1 %223, %229
  %231 = select i1 %230, i64 %220, i64 %221
  store i64 %231, i64* %3, align 8
  br i1 %230, label %block_.L_400f17, label %block_400ef4

block_400ef4:                                     ; preds = %block_.L_400ed8
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -48
  %234 = add i64 %231, 4
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RAX.i446, align 8
  %237 = add i64 %232, -16
  %238 = add i64 %231, 8
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RCX.i433, align 8
  %241 = add i64 %232, -64
  %242 = add i64 %231, 12
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, -1
  %246 = shl i64 %245, 6
  store i64 %246, i64* %RDX.i436, align 8
  %247 = add i64 %246, %240
  store i64 %247, i64* %RCX.i433, align 8
  %248 = icmp ult i64 %247, %240
  %249 = icmp ult i64 %247, %246
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %138, align 1
  %252 = trunc i64 %247 to i32
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %145, align 1
  %258 = xor i64 %240, %247
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %151, align 1
  %262 = icmp eq i64 %247, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %154, align 1
  %264 = lshr i64 %247, 63
  %265 = trunc i64 %264 to i8
  store i8 %265, i8* %157, align 1
  %266 = lshr i64 %240, 63
  %267 = lshr i64 %245, 57
  %268 = and i64 %267, 1
  %269 = xor i64 %264, %266
  %270 = xor i64 %264, %268
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %165, align 1
  %274 = load i64, i64* %RAX.i446, align 8
  %275 = add i64 %247, 48
  %276 = add i64 %231, 27
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  %279 = sub i64 %274, %278
  %280 = icmp ult i64 %274, %278
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %138, align 1
  %282 = trunc i64 %279 to i32
  %283 = and i32 %282, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %145, align 1
  %288 = xor i64 %278, %274
  %289 = xor i64 %288, %279
  %290 = lshr i64 %289, 4
  %291 = trunc i64 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %151, align 1
  %293 = icmp eq i64 %279, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %154, align 1
  %295 = lshr i64 %279, 63
  %296 = trunc i64 %295 to i8
  store i8 %296, i8* %157, align 1
  %297 = lshr i64 %274, 63
  %298 = lshr i64 %278, 63
  %299 = xor i64 %298, %297
  %300 = xor i64 %295, %297
  %301 = add nuw nsw i64 %300, %299
  %302 = icmp eq i64 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %165, align 1
  %304 = icmp ne i8 %296, 0
  %305 = xor i1 %304, %302
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %SIL.i326, align 1
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -65
  %309 = add i64 %231, 35
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i8*
  store i8 %306, i8* %310, align 1
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400f17

block_.L_400f17:                                  ; preds = %block_400ef4, %block_.L_400ed8
  %311 = phi i64 [ %.pre6, %block_400ef4 ], [ %220, %block_.L_400ed8 ]
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -65
  %314 = add i64 %311, 3
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i8*
  %316 = load i8, i8* %315, align 1
  store i8 %316, i8* %AL.i358, align 1
  %317 = and i8 %316, 1
  store i8 0, i8* %138, align 1
  %318 = zext i8 %317 to i32
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = xor i8 %320, 1
  store i8 %321, i8* %145, align 1
  %322 = xor i8 %317, 1
  store i8 %322, i8* %154, align 1
  store i8 0, i8* %157, align 1
  store i8 0, i8* %165, align 1
  store i8 0, i8* %151, align 1
  %323 = icmp eq i8 %322, 0
  %.v = select i1 %323, i64 16, i64 11
  %324 = add i64 %311, %.v
  store i64 %324, i64* %3, align 8
  br i1 %323, label %block_.L_400f27, label %block_400f22

block_400f22:                                     ; preds = %block_.L_400f17
  %325 = add i64 %324, 482
  store i64 %325, i64* %3, align 8
  %326 = load i64, i64* %6, align 8
  %327 = add i64 %326, 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RBP.i, align 8
  store i64 %327, i64* %6, align 8
  %330 = add i64 %324, 483
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %327 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %3, align 8
  %333 = add i64 %326, 16
  store i64 %333, i64* %6, align 8
  ret %struct.Memory* %2

block_.L_400f27:                                  ; preds = %block_.L_400f17
  %334 = add i64 %312, -16
  %335 = add i64 %324, 4
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RAX.i446, align 8
  %338 = add i64 %312, -64
  %339 = add i64 %324, 8
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, -1
  %343 = shl i64 %342, 6
  store i64 %343, i64* %RCX.i433, align 8
  %344 = add i64 %343, %337
  store i64 %344, i64* %RAX.i446, align 8
  %345 = icmp ult i64 %344, %337
  %346 = icmp ult i64 %344, %343
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %138, align 1
  %349 = trunc i64 %344 to i32
  %350 = and i32 %349, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %145, align 1
  %355 = xor i64 %337, %344
  %356 = lshr i64 %355, 4
  %357 = trunc i64 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %151, align 1
  %359 = icmp eq i64 %344, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %154, align 1
  %361 = lshr i64 %344, 63
  %362 = trunc i64 %361 to i8
  store i8 %362, i8* %157, align 1
  %363 = lshr i64 %337, 63
  %364 = lshr i64 %342, 57
  %365 = and i64 %364, 1
  %366 = xor i64 %361, %363
  %367 = xor i64 %361, %365
  %368 = add nuw nsw i64 %366, %367
  %369 = icmp eq i64 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %165, align 1
  %371 = add i64 %344, 8
  %372 = add i64 %324, 23
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %RAX.i446, align 8
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -16
  %377 = add i64 %324, 27
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX.i433, align 8
  %380 = add i64 %375, -56
  %381 = add i64 %324, 31
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = add i64 %383, -1
  %385 = shl i64 %384, 6
  store i64 %385, i64* %RDX.i436, align 8
  %386 = add i64 %385, %379
  store i64 %386, i64* %RCX.i433, align 8
  %387 = icmp ult i64 %386, %379
  %388 = icmp ult i64 %386, %385
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %138, align 1
  %391 = trunc i64 %386 to i32
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %145, align 1
  %397 = xor i64 %379, %386
  %398 = lshr i64 %397, 4
  %399 = trunc i64 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %151, align 1
  %401 = icmp eq i64 %386, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %154, align 1
  %403 = lshr i64 %386, 63
  %404 = trunc i64 %403 to i8
  store i8 %404, i8* %157, align 1
  %405 = lshr i64 %379, 63
  %406 = lshr i64 %384, 57
  %407 = and i64 %406, 1
  %408 = xor i64 %403, %405
  %409 = xor i64 %403, %407
  %410 = add nuw nsw i64 %408, %409
  %411 = icmp eq i64 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %165, align 1
  %413 = add i64 %386, 8
  %414 = load i64, i64* %RAX.i446, align 8
  %415 = add i64 %324, 46
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %413 to i64*
  store i64 %414, i64* %416, align 8
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -16
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %419, 4
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %418 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i446, align 8
  %423 = add i64 %417, -64
  %424 = add i64 %419, 8
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = add i64 %426, -1
  %428 = shl i64 %427, 6
  store i64 %428, i64* %RCX.i433, align 8
  %429 = add i64 %428, %422
  store i64 %429, i64* %RAX.i446, align 8
  %430 = icmp ult i64 %429, %422
  %431 = icmp ult i64 %429, %428
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %138, align 1
  %434 = trunc i64 %429 to i32
  %435 = and i32 %434, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %145, align 1
  %440 = xor i64 %422, %429
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %151, align 1
  %444 = icmp eq i64 %429, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %154, align 1
  %446 = lshr i64 %429, 63
  %447 = trunc i64 %446 to i8
  store i8 %447, i8* %157, align 1
  %448 = lshr i64 %422, 63
  %449 = lshr i64 %427, 57
  %450 = and i64 %449, 1
  %451 = xor i64 %446, %448
  %452 = xor i64 %446, %450
  %453 = add nuw nsw i64 %451, %452
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %165, align 1
  %456 = add i64 %429, 16
  %457 = add i64 %419, 23
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RAX.i446, align 8
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -16
  %462 = add i64 %419, 27
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RCX.i433, align 8
  %465 = add i64 %460, -56
  %466 = add i64 %419, 31
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  %469 = add i64 %468, -1
  %470 = shl i64 %469, 6
  store i64 %470, i64* %RDX.i436, align 8
  %471 = add i64 %470, %464
  store i64 %471, i64* %RCX.i433, align 8
  %472 = icmp ult i64 %471, %464
  %473 = icmp ult i64 %471, %470
  %474 = or i1 %472, %473
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %138, align 1
  %476 = trunc i64 %471 to i32
  %477 = and i32 %476, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %145, align 1
  %482 = xor i64 %464, %471
  %483 = lshr i64 %482, 4
  %484 = trunc i64 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %151, align 1
  %486 = icmp eq i64 %471, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %154, align 1
  %488 = lshr i64 %471, 63
  %489 = trunc i64 %488 to i8
  store i8 %489, i8* %157, align 1
  %490 = lshr i64 %464, 63
  %491 = lshr i64 %469, 57
  %492 = and i64 %491, 1
  %493 = xor i64 %488, %490
  %494 = xor i64 %488, %492
  %495 = add nuw nsw i64 %493, %494
  %496 = icmp eq i64 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %165, align 1
  %498 = add i64 %471, 16
  %499 = load i64, i64* %RAX.i446, align 8
  %500 = add i64 %419, 46
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %498 to i64*
  store i64 %499, i64* %501, align 8
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -16
  %504 = load i64, i64* %3, align 8
  %505 = add i64 %504, 4
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RAX.i446, align 8
  %508 = add i64 %502, -64
  %509 = add i64 %504, 8
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  %512 = add i64 %511, -1
  %513 = shl i64 %512, 6
  store i64 %513, i64* %RCX.i433, align 8
  %514 = add i64 %513, %507
  store i64 %514, i64* %RAX.i446, align 8
  %515 = icmp ult i64 %514, %507
  %516 = icmp ult i64 %514, %513
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %138, align 1
  %519 = trunc i64 %514 to i32
  %520 = and i32 %519, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %145, align 1
  %525 = xor i64 %507, %514
  %526 = lshr i64 %525, 4
  %527 = trunc i64 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %151, align 1
  %529 = icmp eq i64 %514, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %154, align 1
  %531 = lshr i64 %514, 63
  %532 = trunc i64 %531 to i8
  store i8 %532, i8* %157, align 1
  %533 = lshr i64 %507, 63
  %534 = lshr i64 %512, 57
  %535 = and i64 %534, 1
  %536 = xor i64 %531, %533
  %537 = xor i64 %531, %535
  %538 = add nuw nsw i64 %536, %537
  %539 = icmp eq i64 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %165, align 1
  %541 = inttoptr i64 %514 to i64*
  %542 = add i64 %504, 22
  store i64 %542, i64* %3, align 8
  %543 = load i64, i64* %541, align 8
  store i64 %543, i64* %RAX.i446, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -16
  %546 = add i64 %504, 26
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RCX.i433, align 8
  %549 = add i64 %544, -56
  %550 = add i64 %504, 30
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  %553 = add i64 %552, -1
  %554 = shl i64 %553, 6
  store i64 %554, i64* %RDX.i436, align 8
  %555 = add i64 %554, %548
  store i64 %555, i64* %RCX.i433, align 8
  %556 = icmp ult i64 %555, %548
  %557 = icmp ult i64 %555, %554
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %138, align 1
  %560 = trunc i64 %555 to i32
  %561 = and i32 %560, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %145, align 1
  %566 = xor i64 %548, %555
  %567 = lshr i64 %566, 4
  %568 = trunc i64 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %151, align 1
  %570 = icmp eq i64 %555, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %154, align 1
  %572 = lshr i64 %555, 63
  %573 = trunc i64 %572 to i8
  store i8 %573, i8* %157, align 1
  %574 = lshr i64 %548, 63
  %575 = lshr i64 %553, 57
  %576 = and i64 %575, 1
  %577 = xor i64 %572, %574
  %578 = xor i64 %572, %576
  %579 = add nuw nsw i64 %577, %578
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %165, align 1
  %582 = inttoptr i64 %555 to i64*
  %583 = load i64, i64* %RAX.i446, align 8
  %584 = add i64 %504, 44
  store i64 %584, i64* %3, align 8
  store i64 %583, i64* %582, align 8
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -16
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 4
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i64*
  %590 = load i64, i64* %589, align 8
  store i64 %590, i64* %RAX.i446, align 8
  %591 = add i64 %585, -64
  %592 = add i64 %587, 8
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  %595 = add i64 %594, -1
  %596 = shl i64 %595, 6
  store i64 %596, i64* %RCX.i433, align 8
  %597 = add i64 %596, %590
  store i64 %597, i64* %RAX.i446, align 8
  %598 = icmp ult i64 %597, %590
  %599 = icmp ult i64 %597, %596
  %600 = or i1 %598, %599
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %138, align 1
  %602 = trunc i64 %597 to i32
  %603 = and i32 %602, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %145, align 1
  %608 = xor i64 %590, %597
  %609 = lshr i64 %608, 4
  %610 = trunc i64 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %151, align 1
  %612 = icmp eq i64 %597, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %154, align 1
  %614 = lshr i64 %597, 63
  %615 = trunc i64 %614 to i8
  store i8 %615, i8* %157, align 1
  %616 = lshr i64 %590, 63
  %617 = lshr i64 %595, 57
  %618 = and i64 %617, 1
  %619 = xor i64 %614, %616
  %620 = xor i64 %614, %618
  %621 = add nuw nsw i64 %619, %620
  %622 = icmp eq i64 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %165, align 1
  %624 = inttoptr i64 %597 to i64*
  %625 = add i64 %587, 22
  store i64 %625, i64* %3, align 8
  %626 = load i64, i64* %624, align 8
  store i64 %626, i64* %RAX.i446, align 8
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -16
  %629 = add i64 %587, 26
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RCX.i433, align 8
  %632 = add i64 %627, -56
  %633 = add i64 %587, 30
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  %636 = add i64 %635, -1
  %637 = shl i64 %636, 6
  store i64 %637, i64* %RDX.i436, align 8
  %638 = add i64 %637, %631
  store i64 %638, i64* %RCX.i433, align 8
  %639 = icmp ult i64 %638, %631
  %640 = icmp ult i64 %638, %637
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %138, align 1
  %643 = trunc i64 %638 to i32
  %644 = and i32 %643, 255
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %145, align 1
  %649 = xor i64 %631, %638
  %650 = lshr i64 %649, 4
  %651 = trunc i64 %650 to i8
  %652 = and i8 %651, 1
  store i8 %652, i8* %151, align 1
  %653 = icmp eq i64 %638, 0
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %154, align 1
  %655 = lshr i64 %638, 63
  %656 = trunc i64 %655 to i8
  store i8 %656, i8* %157, align 1
  %657 = lshr i64 %631, 63
  %658 = lshr i64 %636, 57
  %659 = and i64 %658, 1
  %660 = xor i64 %655, %657
  %661 = xor i64 %655, %659
  %662 = add nuw nsw i64 %660, %661
  %663 = icmp eq i64 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %165, align 1
  %665 = add i64 %638, 56
  %666 = load i64, i64* %RAX.i446, align 8
  %667 = add i64 %587, 45
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i64*
  store i64 %666, i64* %668, align 8
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -16
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, 4
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i446, align 8
  %675 = add i64 %669, -64
  %676 = add i64 %671, 8
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  %679 = add i64 %678, -1
  %680 = shl i64 %679, 6
  store i64 %680, i64* %RCX.i433, align 8
  %681 = add i64 %680, %674
  store i64 %681, i64* %RAX.i446, align 8
  %682 = icmp ult i64 %681, %674
  %683 = icmp ult i64 %681, %680
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %138, align 1
  %686 = trunc i64 %681 to i32
  %687 = and i32 %686, 255
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %145, align 1
  %692 = xor i64 %674, %681
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %151, align 1
  %696 = icmp eq i64 %681, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %154, align 1
  %698 = lshr i64 %681, 63
  %699 = trunc i64 %698 to i8
  store i8 %699, i8* %157, align 1
  %700 = lshr i64 %674, 63
  %701 = lshr i64 %679, 57
  %702 = and i64 %701, 1
  %703 = xor i64 %698, %700
  %704 = xor i64 %698, %702
  %705 = add nuw nsw i64 %703, %704
  %706 = icmp eq i64 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %165, align 1
  %708 = add i64 %681, 48
  %709 = add i64 %671, 23
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %RAX.i446, align 8
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -16
  %714 = add i64 %671, 27
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RCX.i433, align 8
  %717 = add i64 %712, -56
  %718 = add i64 %671, 31
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  %721 = add i64 %720, -1
  %722 = shl i64 %721, 6
  store i64 %722, i64* %RDX.i436, align 8
  %723 = add i64 %722, %716
  store i64 %723, i64* %RCX.i433, align 8
  %724 = icmp ult i64 %723, %716
  %725 = icmp ult i64 %723, %722
  %726 = or i1 %724, %725
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %138, align 1
  %728 = trunc i64 %723 to i32
  %729 = and i32 %728, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %145, align 1
  %734 = xor i64 %716, %723
  %735 = lshr i64 %734, 4
  %736 = trunc i64 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %151, align 1
  %738 = icmp eq i64 %723, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %154, align 1
  %740 = lshr i64 %723, 63
  %741 = trunc i64 %740 to i8
  store i8 %741, i8* %157, align 1
  %742 = lshr i64 %716, 63
  %743 = lshr i64 %721, 57
  %744 = and i64 %743, 1
  %745 = xor i64 %740, %742
  %746 = xor i64 %740, %744
  %747 = add nuw nsw i64 %745, %746
  %748 = icmp eq i64 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %165, align 1
  %750 = add i64 %723, 48
  %751 = load i64, i64* %RAX.i446, align 8
  %752 = add i64 %671, 46
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %750 to i64*
  store i64 %751, i64* %753, align 8
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -24
  %756 = load i64, i64* %3, align 8
  %757 = add i64 %756, 4
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %755 to i64*
  %759 = load i64, i64* %758, align 8
  store i64 %759, i64* %RAX.i446, align 8
  %760 = add i64 %754, -16
  %761 = add i64 %756, 8
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RCX.i433, align 8
  %764 = add i64 %754, -64
  %765 = add i64 %756, 12
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  %768 = add i64 %767, -1
  %769 = shl i64 %768, 6
  store i64 %769, i64* %RDX.i436, align 8
  %770 = add i64 %769, %763
  store i64 %770, i64* %RCX.i433, align 8
  %771 = icmp ult i64 %770, %763
  %772 = icmp ult i64 %770, %769
  %773 = or i1 %771, %772
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %138, align 1
  %775 = trunc i64 %770 to i32
  %776 = and i32 %775, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %145, align 1
  %781 = xor i64 %763, %770
  %782 = lshr i64 %781, 4
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %151, align 1
  %785 = icmp eq i64 %770, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %154, align 1
  %787 = lshr i64 %770, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %157, align 1
  %789 = lshr i64 %763, 63
  %790 = lshr i64 %768, 57
  %791 = and i64 %790, 1
  %792 = xor i64 %787, %789
  %793 = xor i64 %787, %791
  %794 = add nuw nsw i64 %792, %793
  %795 = icmp eq i64 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %165, align 1
  %797 = add i64 %770, 8
  %798 = load i64, i64* %RAX.i446, align 8
  %799 = add i64 %756, 27
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i64*
  store i64 %798, i64* %800, align 8
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -32
  %803 = load i64, i64* %3, align 8
  %804 = add i64 %803, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %802 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i446, align 8
  %807 = add i64 %801, -16
  %808 = add i64 %803, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RCX.i433, align 8
  %811 = add i64 %801, -64
  %812 = add i64 %803, 12
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i64*
  %814 = load i64, i64* %813, align 8
  %815 = add i64 %814, -1
  %816 = shl i64 %815, 6
  store i64 %816, i64* %RDX.i436, align 8
  %817 = add i64 %816, %810
  store i64 %817, i64* %RCX.i433, align 8
  %818 = icmp ult i64 %817, %810
  %819 = icmp ult i64 %817, %816
  %820 = or i1 %818, %819
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %138, align 1
  %822 = trunc i64 %817 to i32
  %823 = and i32 %822, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %145, align 1
  %828 = xor i64 %810, %817
  %829 = lshr i64 %828, 4
  %830 = trunc i64 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %151, align 1
  %832 = icmp eq i64 %817, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %154, align 1
  %834 = lshr i64 %817, 63
  %835 = trunc i64 %834 to i8
  store i8 %835, i8* %157, align 1
  %836 = lshr i64 %810, 63
  %837 = lshr i64 %815, 57
  %838 = and i64 %837, 1
  %839 = xor i64 %834, %836
  %840 = xor i64 %834, %838
  %841 = add nuw nsw i64 %839, %840
  %842 = icmp eq i64 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %165, align 1
  %844 = add i64 %817, 16
  %845 = load i64, i64* %RAX.i446, align 8
  %846 = add i64 %803, 27
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %844 to i64*
  store i64 %845, i64* %847, align 8
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -40
  %850 = load i64, i64* %3, align 8
  %851 = add i64 %850, 4
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RAX.i446, align 8
  %854 = add i64 %848, -16
  %855 = add i64 %850, 8
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RCX.i433, align 8
  %858 = add i64 %848, -64
  %859 = add i64 %850, 12
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  %862 = add i64 %861, -1
  %863 = shl i64 %862, 6
  store i64 %863, i64* %RDX.i436, align 8
  %864 = add i64 %863, %857
  store i64 %864, i64* %RCX.i433, align 8
  %865 = icmp ult i64 %864, %857
  %866 = icmp ult i64 %864, %863
  %867 = or i1 %865, %866
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %138, align 1
  %869 = trunc i64 %864 to i32
  %870 = and i32 %869, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %145, align 1
  %875 = xor i64 %857, %864
  %876 = lshr i64 %875, 4
  %877 = trunc i64 %876 to i8
  %878 = and i8 %877, 1
  store i8 %878, i8* %151, align 1
  %879 = icmp eq i64 %864, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %154, align 1
  %881 = lshr i64 %864, 63
  %882 = trunc i64 %881 to i8
  store i8 %882, i8* %157, align 1
  %883 = lshr i64 %857, 63
  %884 = lshr i64 %862, 57
  %885 = and i64 %884, 1
  %886 = xor i64 %881, %883
  %887 = xor i64 %881, %885
  %888 = add nuw nsw i64 %886, %887
  %889 = icmp eq i64 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %165, align 1
  %891 = inttoptr i64 %864 to i64*
  %892 = load i64, i64* %RAX.i446, align 8
  %893 = add i64 %850, 26
  store i64 %893, i64* %3, align 8
  store i64 %892, i64* %891, align 8
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -40
  %896 = load i64, i64* %3, align 8
  %897 = add i64 %896, 4
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %895 to i64*
  %899 = load i64, i64* %898, align 8
  store i64 %899, i64* %RAX.i446, align 8
  %900 = add i64 %894, -16
  %901 = add i64 %896, 8
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i64*
  %903 = load i64, i64* %902, align 8
  store i64 %903, i64* %RCX.i433, align 8
  %904 = add i64 %894, -64
  %905 = add i64 %896, 12
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  %908 = add i64 %907, -1
  %909 = shl i64 %908, 6
  store i64 %909, i64* %RDX.i436, align 8
  %910 = add i64 %909, %903
  store i64 %910, i64* %RCX.i433, align 8
  %911 = icmp ult i64 %910, %903
  %912 = icmp ult i64 %910, %909
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %138, align 1
  %915 = trunc i64 %910 to i32
  %916 = and i32 %915, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %145, align 1
  %921 = xor i64 %903, %910
  %922 = lshr i64 %921, 4
  %923 = trunc i64 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %151, align 1
  %925 = icmp eq i64 %910, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %154, align 1
  %927 = lshr i64 %910, 63
  %928 = trunc i64 %927 to i8
  store i8 %928, i8* %157, align 1
  %929 = lshr i64 %903, 63
  %930 = lshr i64 %908, 57
  %931 = and i64 %930, 1
  %932 = xor i64 %927, %929
  %933 = xor i64 %927, %931
  %934 = add nuw nsw i64 %932, %933
  %935 = icmp eq i64 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %165, align 1
  %937 = add i64 %910, 56
  %938 = load i64, i64* %RAX.i446, align 8
  %939 = add i64 %896, 27
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i64*
  store i64 %938, i64* %940, align 8
  %941 = load i64, i64* %RBP.i, align 8
  %942 = add i64 %941, -48
  %943 = load i64, i64* %3, align 8
  %944 = add i64 %943, 4
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %942 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RAX.i446, align 8
  %947 = add i64 %941, -16
  %948 = add i64 %943, 8
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RCX.i433, align 8
  %951 = add i64 %941, -64
  %952 = add i64 %943, 12
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  %955 = add i64 %954, -1
  %956 = shl i64 %955, 6
  store i64 %956, i64* %RDX.i436, align 8
  %957 = add i64 %956, %950
  store i64 %957, i64* %RCX.i433, align 8
  %958 = icmp ult i64 %957, %950
  %959 = icmp ult i64 %957, %956
  %960 = or i1 %958, %959
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %138, align 1
  %962 = trunc i64 %957 to i32
  %963 = and i32 %962, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %145, align 1
  %968 = xor i64 %950, %957
  %969 = lshr i64 %968, 4
  %970 = trunc i64 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %151, align 1
  %972 = icmp eq i64 %957, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %154, align 1
  %974 = lshr i64 %957, 63
  %975 = trunc i64 %974 to i8
  store i8 %975, i8* %157, align 1
  %976 = lshr i64 %950, 63
  %977 = lshr i64 %955, 57
  %978 = and i64 %977, 1
  %979 = xor i64 %974, %976
  %980 = xor i64 %974, %978
  %981 = add nuw nsw i64 %979, %980
  %982 = icmp eq i64 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %165, align 1
  %984 = add i64 %957, 48
  %985 = load i64, i64* %RAX.i446, align 8
  %986 = add i64 %943, 27
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %984 to i64*
  store i64 %985, i64* %987, align 8
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -64
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 4
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RAX.i446, align 8
  %994 = add i64 %988, -56
  %995 = add i64 %990, 8
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i64*
  store i64 %993, i64* %996, align 8
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -64
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, 4
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %998 to i64*
  %1002 = load i64, i64* %1001, align 8
  %1003 = shl i64 %1002, 1
  %1004 = icmp slt i64 %1002, 0
  %1005 = icmp slt i64 %1003, 0
  %1006 = xor i1 %1004, %1005
  store i64 %1003, i64* %RAX.i446, align 8
  %.lobit = lshr i64 %1002, 63
  %1007 = trunc i64 %.lobit to i8
  store i8 %1007, i8* %138, align 1
  %1008 = trunc i64 %1003 to i32
  %1009 = and i32 %1008, 254
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %145, align 1
  store i8 0, i8* %151, align 1
  %1014 = icmp eq i64 %1003, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %154, align 1
  %1016 = lshr i64 %1002, 62
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %157, align 1
  %1019 = zext i1 %1006 to i8
  store i8 %1019, i8* %165, align 1
  %1020 = add i64 %999, 11
  store i64 %1020, i64* %3, align 8
  store i64 %1003, i64* %1001, align 8
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -64
  %1023 = load i64, i64* %3, align 8
  %1024 = add i64 %1023, 4
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1022 to i64*
  %1026 = load i64, i64* %1025, align 8
  %1027 = add i64 %1026, 1
  store i64 %1027, i64* %RAX.i446, align 8
  %1028 = icmp eq i64 %1026, -1
  %1029 = icmp eq i64 %1027, 0
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %138, align 1
  %1032 = trunc i64 %1027 to i32
  %1033 = and i32 %1032, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %145, align 1
  %1038 = xor i64 %1027, %1026
  %1039 = lshr i64 %1038, 4
  %1040 = trunc i64 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %151, align 1
  %1042 = zext i1 %1029 to i8
  store i8 %1042, i8* %154, align 1
  %1043 = lshr i64 %1027, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %157, align 1
  %1045 = lshr i64 %1026, 63
  %1046 = xor i64 %1043, %1045
  %1047 = add nuw nsw i64 %1046, %1043
  %1048 = icmp eq i64 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %165, align 1
  %1050 = add i64 %1021, -8
  %1051 = add i64 %1023, 12
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %RCX.i433, align 8
  %1054 = add i64 %1053, 448
  %1055 = add i64 %1023, 19
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  %1058 = sub i64 %1027, %1057
  %1059 = icmp ult i64 %1027, %1057
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %138, align 1
  %1061 = trunc i64 %1058 to i32
  %1062 = and i32 %1061, 255
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %145, align 1
  %1067 = xor i64 %1057, %1027
  %1068 = xor i64 %1067, %1058
  %1069 = lshr i64 %1068, 4
  %1070 = trunc i64 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %151, align 1
  %1072 = icmp eq i64 %1058, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %154, align 1
  %1074 = lshr i64 %1058, 63
  %1075 = trunc i64 %1074 to i8
  store i8 %1075, i8* %157, align 1
  %1076 = lshr i64 %1057, 63
  %1077 = xor i64 %1076, %1043
  %1078 = xor i64 %1074, %1043
  %1079 = add nuw nsw i64 %1078, %1077
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %165, align 1
  %1082 = icmp ne i8 %1075, 0
  %1083 = xor i1 %1082, %1080
  %.demorgan8 = or i1 %1072, %1083
  %.v9 = select i1 %.demorgan8, i64 25, i64 90
  %1084 = add i64 %1023, %.v9
  store i64 %1084, i64* %3, align 8
  br i1 %.demorgan8, label %block_4010bd, label %block_.L_4010fe

block_4010bd:                                     ; preds = %block_.L_400f27
  %1085 = add i64 %1021, -16
  %1086 = add i64 %1084, 4
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RAX.i446, align 8
  %1089 = add i64 %1084, 8
  store i64 %1089, i64* %3, align 8
  %1090 = load i64, i64* %1025, align 8
  %1091 = add i64 %1090, -1
  %1092 = shl i64 %1091, 6
  store i64 %1092, i64* %RCX.i433, align 8
  %1093 = add i64 %1092, %1088
  store i64 %1093, i64* %RAX.i446, align 8
  %1094 = icmp ult i64 %1093, %1088
  %1095 = icmp ult i64 %1093, %1092
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %138, align 1
  %1098 = trunc i64 %1093 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %145, align 1
  %1104 = xor i64 %1088, %1093
  %1105 = lshr i64 %1104, 4
  %1106 = trunc i64 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %151, align 1
  %1108 = icmp eq i64 %1093, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %154, align 1
  %1110 = lshr i64 %1093, 63
  %1111 = trunc i64 %1110 to i8
  store i8 %1111, i8* %157, align 1
  %1112 = lshr i64 %1088, 63
  %1113 = lshr i64 %1091, 57
  %1114 = and i64 %1113, 1
  %1115 = xor i64 %1110, %1112
  %1116 = xor i64 %1110, %1114
  %1117 = add nuw nsw i64 %1115, %1116
  %1118 = icmp eq i64 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %165, align 1
  %1120 = add i64 %1093, 48
  %1121 = add i64 %1084, 23
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %RAX.i446, align 8
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -16
  %1126 = add i64 %1084, 27
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RCX.i433, align 8
  %1129 = add i64 %1124, -64
  %1130 = add i64 %1084, 31
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  %1133 = shl i64 %1132, 6
  store i64 %1133, i64* %RDX.i436, align 8
  %1134 = add i64 %1133, %1128
  store i64 %1134, i64* %RCX.i433, align 8
  %1135 = icmp ult i64 %1134, %1128
  %1136 = icmp ult i64 %1134, %1133
  %1137 = or i1 %1135, %1136
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %138, align 1
  %1139 = trunc i64 %1134 to i32
  %1140 = and i32 %1139, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %145, align 1
  %1145 = xor i64 %1128, %1134
  %1146 = lshr i64 %1145, 4
  %1147 = trunc i64 %1146 to i8
  %1148 = and i8 %1147, 1
  store i8 %1148, i8* %151, align 1
  %1149 = icmp eq i64 %1134, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %154, align 1
  %1151 = lshr i64 %1134, 63
  %1152 = trunc i64 %1151 to i8
  store i8 %1152, i8* %157, align 1
  %1153 = lshr i64 %1128, 63
  %1154 = lshr i64 %1132, 57
  %1155 = and i64 %1154, 1
  %1156 = xor i64 %1151, %1153
  %1157 = xor i64 %1151, %1155
  %1158 = add nuw nsw i64 %1156, %1157
  %1159 = icmp eq i64 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %165, align 1
  %1161 = add i64 %1134, 48
  %1162 = add i64 %1084, 42
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163, align 8
  %1165 = sub i64 %1123, %1164
  %1166 = icmp ult i64 %1123, %1164
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %138, align 1
  %1168 = trunc i64 %1165 to i32
  %1169 = and i32 %1168, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %145, align 1
  %1174 = xor i64 %1164, %1123
  %1175 = xor i64 %1174, %1165
  %1176 = lshr i64 %1175, 4
  %1177 = trunc i64 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %151, align 1
  %1179 = icmp eq i64 %1165, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %154, align 1
  %1181 = lshr i64 %1165, 63
  %1182 = trunc i64 %1181 to i8
  store i8 %1182, i8* %157, align 1
  %1183 = lshr i64 %1123, 63
  %1184 = lshr i64 %1164, 63
  %1185 = xor i64 %1184, %1183
  %1186 = xor i64 %1181, %1183
  %1187 = add nuw nsw i64 %1186, %1185
  %1188 = icmp eq i64 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %165, align 1
  %1190 = icmp ne i8 %1182, 0
  %1191 = xor i1 %1190, %1188
  %.v10 = select i1 %1191, i64 48, i64 60
  %1192 = add i64 %1084, %.v10
  store i64 %1192, i64* %3, align 8
  br i1 %1191, label %block_4010ed, label %block_.L_4010f9

block_4010ed:                                     ; preds = %block_4010bd
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -64
  %1195 = add i64 %1192, 4
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  %1198 = add i64 %1197, 1
  store i64 %1198, i64* %RAX.i446, align 8
  %1199 = icmp eq i64 %1197, -1
  %1200 = icmp eq i64 %1198, 0
  %1201 = or i1 %1199, %1200
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %138, align 1
  %1203 = trunc i64 %1198 to i32
  %1204 = and i32 %1203, 255
  %1205 = tail call i32 @llvm.ctpop.i32(i32 %1204)
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = xor i8 %1207, 1
  store i8 %1208, i8* %145, align 1
  %1209 = xor i64 %1198, %1197
  %1210 = lshr i64 %1209, 4
  %1211 = trunc i64 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %151, align 1
  %1213 = zext i1 %1200 to i8
  store i8 %1213, i8* %154, align 1
  %1214 = lshr i64 %1198, 63
  %1215 = trunc i64 %1214 to i8
  store i8 %1215, i8* %157, align 1
  %1216 = lshr i64 %1197, 63
  %1217 = xor i64 %1214, %1216
  %1218 = add nuw nsw i64 %1217, %1214
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %165, align 1
  %1221 = add i64 %1192, 12
  store i64 %1221, i64* %3, align 8
  store i64 %1198, i64* %1196, align 8
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_4010f9

block_.L_4010f9:                                  ; preds = %block_4010bd, %block_4010ed
  %1222 = phi i64 [ %1192, %block_4010bd ], [ %.pre7, %block_4010ed ]
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %3, align 8
  br label %block_.L_4010fe

block_.L_4010fe:                                  ; preds = %block_.L_400f27, %block_.L_4010f9
  %1224 = phi i64 [ %1223, %block_.L_4010f9 ], [ %1084, %block_.L_400f27 ]
  %1225 = add i64 %1224, -550
  store i64 %1225, i64* %3, align 8
  br label %block_.L_400ed8
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 2, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x30__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 1, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0xb0__rdx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovgl__r10d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  %17 = xor i1 %13, %16
  %18 = xor i1 %17, true
  %19 = and i1 %10, %18
  %20 = load i64, i64* %RAX, align 8
  %21 = select i1 %19, i64 %5, i64 %20
  %22 = and i64 %21, 4294967295
  store i64 %22, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x1c0__rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x41__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400f17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, 0
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x30__rcx____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setl__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x41__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x41__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400f27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, 0
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x1c0__rcx____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4010fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4010f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4010fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ed8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
