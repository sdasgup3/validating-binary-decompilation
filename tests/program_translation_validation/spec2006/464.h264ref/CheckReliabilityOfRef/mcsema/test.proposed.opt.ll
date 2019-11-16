; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x723650_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x723650 = local_unnamed_addr global %G_0x723650_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @CheckReliabilityOfRef(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -224
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 216
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
  %41 = add i64 %7, -16
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2229 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %ESI.i2229, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2281 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i32, i32* %EDX.i2281, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2278 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -20
  %62 = load i32, i32* %ECX.i2278, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2276 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %68, i64* %RAX.i2276, align 8
  %RCX.i2274 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %69 = add i64 %68, 52
  %70 = add i64 %67, 11
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, -1
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RCX.i2274, align 8
  %75 = icmp eq i32 %72, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %14, align 1
  %77 = and i32 %73, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %21, align 1
  %82 = xor i32 %73, %72
  %83 = lshr i32 %82, 4
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %27, align 1
  %86 = icmp eq i32 %73, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %30, align 1
  %88 = lshr i32 %73, 31
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %33, align 1
  %90 = lshr i32 %72, 31
  %91 = xor i32 %88, %90
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %39, align 1
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -72
  %97 = add i64 %67, 17
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %73, i32* %98, align 4
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %100, i64* %RAX.i2276, align 8
  %101 = add i64 %100, 60
  %102 = add i64 %99, 11
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, -1
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RCX.i2274, align 8
  %107 = icmp eq i32 %104, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = and i32 %105, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i32 %105, %104
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %27, align 1
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %30, align 1
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %33, align 1
  %122 = lshr i32 %104, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %39, align 1
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -76
  %129 = add i64 %99, 17
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  store i32 %105, i32* %130, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -16
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, 1
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RCX.i2274, align 8
  %139 = icmp eq i32 %136, -1
  %140 = icmp eq i32 %137, 0
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = and i32 %137, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1
  %148 = xor i32 %137, %136
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %27, align 1
  %152 = zext i1 %140 to i8
  store i8 %152, i8* %30, align 1
  %153 = lshr i32 %137, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %33, align 1
  %155 = lshr i32 %136, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %153
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %39, align 1
  %160 = add i64 %131, -80
  %161 = add i64 %133, 9
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %137, i32* %162, align 4
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -20
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, -4
  %170 = icmp ult i32 %168, 4
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1
  %172 = and i32 %169, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %21, align 1
  %177 = xor i32 %169, %168
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %27, align 1
  %181 = icmp eq i32 %169, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %30, align 1
  %183 = lshr i32 %169, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %33, align 1
  %185 = lshr i32 %168, 31
  %186 = xor i32 %183, %185
  %187 = add nuw nsw i32 %186, %185
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %39, align 1
  %190 = icmp ne i8 %184, 0
  %191 = xor i1 %190, %188
  %.v404 = select i1 %191, i64 40, i64 10
  %192 = add i64 %165, %.v404
  store i64 %192, i64* %3, align 8
  br i1 %191, label %block_.L_4821da, label %block_4821bc

block_4821bc:                                     ; preds = %entry
  store i64 2, i64* %RAX.i2276, align 8
  %193 = add i64 %163, -8
  %194 = add i64 %192, 8
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RCX.i2274, align 8
  %198 = add i64 %163, -100
  %199 = add i64 %192, 11
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  store i32 2, i32* %200, align 4
  %201 = load i32, i32* %ECX.i2278, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %3, align 8
  store i64 %202, i64* %RAX.i2276, align 8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %205 = sext i32 %201 to i64
  %206 = lshr i64 %205, 32
  store i64 %206, i64* %204, align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -100
  %209 = add i64 %203, 6
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RCX.i2274, align 8
  %213 = add i64 %203, 8
  store i64 %213, i64* %3, align 8
  %214 = sext i32 %211 to i64
  %215 = shl nuw i64 %206, 32
  %216 = or i64 %215, %202
  %217 = sdiv i64 %216, %214
  %218 = shl i64 %217, 32
  %219 = ashr exact i64 %218, 32
  %220 = icmp eq i64 %217, %219
  br i1 %220, label %223, label %221

; <label>:221:                                    ; preds = %block_4821bc
  %222 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %213, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i2276, align 8
  %.pre295 = load i64, i64* %3, align 8
  %.pre296 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2227

; <label>:223:                                    ; preds = %block_4821bc
  %224 = srem i64 %216, %214
  %225 = and i64 %217, 4294967295
  store i64 %225, i64* %RAX.i2276, align 8
  %226 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %227 = and i64 %224, 4294967295
  store i64 %227, i64* %226, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit2227

routine_idivl__ecx.exit2227:                      ; preds = %223, %221
  %228 = phi i64 [ %.pre296, %221 ], [ %207, %223 ]
  %229 = phi i64 [ %.pre295, %221 ], [ %213, %223 ]
  %230 = phi i64 [ %.pre, %221 ], [ %225, %223 ]
  %231 = phi %struct.Memory* [ %222, %221 ], [ %2, %223 ]
  %232 = trunc i64 %230 to i32
  %233 = shl i32 %232, 1
  %234 = icmp slt i32 %232, 0
  %235 = icmp slt i32 %233, 0
  %236 = xor i1 %234, %235
  %237 = zext i32 %233 to i64
  store i64 %237, i64* %RAX.i2276, align 8
  %.lobit = lshr i32 %232, 31
  %238 = trunc i32 %.lobit to i8
  store i8 %238, i8* %14, align 1
  %239 = and i32 %233, 254
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %244 = icmp eq i32 %233, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %30, align 1
  %246 = lshr i32 %232, 30
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %33, align 1
  %249 = zext i1 %236 to i8
  store i8 %249, i8* %39, align 1
  %250 = add i64 %228, -104
  %251 = add i64 %229, 5
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  store i32 %233, i32* %252, align 4
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 45
  store i64 %254, i64* %3, align 8
  br label %block_.L_482202

block_.L_4821da:                                  ; preds = %entry
  %255 = add i64 %192, 4
  store i64 %255, i64* %3, align 8
  %256 = load i32, i32* %167, align 4
  %257 = add i32 %256, -2
  %258 = icmp ult i32 %256, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %14, align 1
  %260 = and i32 %257, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %21, align 1
  %265 = xor i32 %257, %256
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %27, align 1
  %269 = icmp eq i32 %257, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %30, align 1
  %271 = lshr i32 %257, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %33, align 1
  %273 = lshr i32 %256, 31
  %274 = xor i32 %271, %273
  %275 = add nuw nsw i32 %274, %273
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %39, align 1
  %.v457 = select i1 %269, i64 10, i64 24
  %278 = add i64 %192, %.v457
  store i64 %278, i64* %3, align 8
  br i1 %269, label %block_4821e4, label %block_.L_4821f2

block_4821e4:                                     ; preds = %block_.L_4821da
  %279 = add i64 %163, -8
  %280 = add i64 %278, 3
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 1
  %284 = icmp slt i32 %282, 0
  %285 = icmp slt i32 %283, 0
  %286 = xor i1 %284, %285
  %287 = zext i32 %283 to i64
  store i64 %287, i64* %RAX.i2276, align 8
  %.lobit103 = lshr i32 %282, 31
  %288 = trunc i32 %.lobit103 to i8
  store i8 %288, i8* %14, align 1
  %289 = and i32 %283, 254
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %294 = icmp eq i32 %283, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %30, align 1
  %296 = lshr i32 %282, 30
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %33, align 1
  %299 = zext i1 %286 to i8
  store i8 %299, i8* %39, align 1
  %300 = add i64 %163, -108
  %301 = add i64 %278, 8
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  store i32 %283, i32* %302, align 4
  %303 = load i64, i64* %3, align 8
  %304 = add i64 %303, 15
  br label %block_.L_4821fc

block_.L_4821f2:                                  ; preds = %block_.L_4821da
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %305 = add i64 %163, -108
  %306 = add i64 %278, 5
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 0, i32* %307, align 4
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, 5
  store i64 %309, i64* %3, align 8
  br label %block_.L_4821fc

block_.L_4821fc:                                  ; preds = %block_.L_4821f2, %block_4821e4
  %storemerge104 = phi i64 [ %304, %block_4821e4 ], [ %309, %block_.L_4821f2 ]
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -108
  %312 = add i64 %storemerge104, 3
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX.i2276, align 8
  %316 = add i64 %310, -104
  %317 = add i64 %storemerge104, 6
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  store i32 %314, i32* %318, align 4
  %.pre297 = load i64, i64* %3, align 8
  br label %block_.L_482202

block_.L_482202:                                  ; preds = %block_.L_4821fc, %routine_idivl__ecx.exit2227
  %319 = phi i64 [ %.pre297, %block_.L_4821fc ], [ %254, %routine_idivl__ecx.exit2227 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_4821fc ], [ %231, %routine_idivl__ecx.exit2227 ]
  %EAX.i2187.pre-phi = bitcast %union.anon* %66 to i32*
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -104
  %322 = add i64 %319, 3
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX.i2276, align 8
  %CL.i2190 = bitcast %union.anon* %59 to i8*
  store i8 1, i8* %CL.i2190, align 1
  %326 = add i64 %320, -84
  %327 = add i64 %319, 8
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %324, i32* %328, align 4
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -84
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i2276, align 8
  %336 = add i64 %329, -20
  %337 = add i64 %331, 7
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = add i32 %339, -4
  %341 = icmp ult i32 %339, 4
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %14, align 1
  %343 = and i32 %340, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %21, align 1
  %348 = xor i32 %340, %339
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %27, align 1
  %352 = icmp eq i32 %340, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %30, align 1
  %354 = lshr i32 %340, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %33, align 1
  %356 = lshr i32 %339, 31
  %357 = xor i32 %354, %356
  %358 = add nuw nsw i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %39, align 1
  %361 = add i64 %329, -112
  %362 = add i64 %331, 10
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %334, i32* %363, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -113
  %366 = load i8, i8* %CL.i2190, align 1
  %367 = load i64, i64* %3, align 8
  %368 = add i64 %367, 3
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %365 to i8*
  store i8 %366, i8* %369, align 1
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, 16
  %372 = add i64 %370, 6
  %373 = load i8, i8* %33, align 1
  %374 = icmp ne i8 %373, 0
  %375 = load i8, i8* %39, align 1
  %376 = icmp ne i8 %375, 0
  %377 = xor i1 %374, %376
  %378 = select i1 %377, i64 %372, i64 %371
  store i64 %378, i64* %3, align 8
  br i1 %377, label %block_48221d, label %block_.L_482202.block_.L_482227_crit_edge

block_.L_482202.block_.L_482227_crit_edge:        ; preds = %block_.L_482202
  %.pre377 = bitcast %union.anon* %66 to i8*
  br label %block_.L_482227

block_48221d:                                     ; preds = %block_.L_482202
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -20
  %381 = add i64 %378, 4
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = add i32 %383, -2
  %385 = icmp ult i32 %383, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %14, align 1
  %387 = and i32 %384, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %21, align 1
  %392 = xor i32 %384, %383
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %27, align 1
  %396 = icmp eq i32 %384, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %30, align 1
  %398 = lshr i32 %384, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %33, align 1
  %400 = lshr i32 %383, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %400
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %39, align 1
  %AL.i2171 = bitcast %union.anon* %66 to i8*
  store i8 %397, i8* %AL.i2171, align 1
  %405 = add i64 %379, -113
  %406 = add i64 %378, 10
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i8*
  store i8 %397, i8* %407, align 1
  %.pre298 = load i64, i64* %3, align 8
  br label %block_.L_482227

block_.L_482227:                                  ; preds = %block_.L_482202.block_.L_482227_crit_edge, %block_48221d
  %AL.i2165.pre-phi = phi i8* [ %.pre377, %block_.L_482202.block_.L_482227_crit_edge ], [ %AL.i2171, %block_48221d ]
  %408 = phi i64 [ %371, %block_.L_482202.block_.L_482227_crit_edge ], [ %.pre298, %block_48221d ]
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -113
  %411 = add i64 %408, 3
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i8*
  %413 = load i8, i8* %412, align 1
  store i8 %413, i8* %AL.i2165.pre-phi, align 1
  %RDX.i2161 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  store i64 2, i64* %RDX.i2161, align 8
  %414 = and i8 %413, 1
  store i8 0, i8* %14, align 1
  %415 = zext i8 %414 to i32
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  %419 = xor i8 %414, 1
  store i8 %419, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %420 = icmp eq i8 %419, 0
  %421 = select i1 %420, i64 2, i64 4
  store i64 %421, i64* %RCX.i2274, align 8
  %422 = add i64 %409, -112
  %423 = add i64 %408, 21
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = trunc i64 %421 to i32
  %427 = add i32 %426, %425
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RDX.i2161, align 8
  %429 = icmp ult i32 %427, %425
  %430 = icmp ult i32 %427, %426
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %425, %427
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %27, align 1
  %442 = icmp eq i32 %427, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %30, align 1
  %444 = lshr i32 %427, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %33, align 1
  %446 = lshr i32 %425, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %444
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %39, align 1
  %451 = add i64 %409, -88
  %452 = add i64 %408, 26
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  store i32 %427, i32* %453, align 4
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -20
  %456 = load i64, i64* %3, align 8
  %457 = add i64 %456, 4
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, -4
  %461 = icmp ult i32 %459, 4
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %14, align 1
  %463 = and i32 %460, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %21, align 1
  %468 = xor i32 %460, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %27, align 1
  %472 = icmp eq i32 %460, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %30, align 1
  %474 = lshr i32 %460, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %33, align 1
  %476 = lshr i32 %459, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %39, align 1
  %481 = icmp ne i8 %475, 0
  %482 = xor i1 %481, %479
  %.v405 = select i1 %482, i64 40, i64 10
  %483 = add i64 %456, %.v405
  store i64 %483, i64* %3, align 8
  br i1 %482, label %block_.L_482269, label %block_48224b

block_48224b:                                     ; preds = %block_.L_482227
  store i64 2, i64* %RAX.i2276, align 8
  %484 = add i64 %454, -8
  %485 = add i64 %483, 8
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RCX.i2274, align 8
  %489 = add i64 %454, -120
  %490 = add i64 %483, 11
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  store i32 2, i32* %491, align 4
  %492 = load i32, i32* %ECX.i2278, align 4
  %493 = zext i32 %492 to i64
  %494 = load i64, i64* %3, align 8
  store i64 %493, i64* %RAX.i2276, align 8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %496 = sext i32 %492 to i64
  %497 = lshr i64 %496, 32
  store i64 %497, i64* %495, align 8
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -120
  %500 = add i64 %494, 6
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RCX.i2274, align 8
  %504 = add i64 %494, 8
  store i64 %504, i64* %3, align 8
  %505 = sext i32 %502 to i64
  %506 = shl nuw i64 %497, 32
  %507 = or i64 %506, %493
  %508 = sdiv i64 %507, %505
  %509 = shl i64 %508, 32
  %510 = ashr exact i64 %509, 32
  %511 = icmp eq i64 %508, %510
  br i1 %511, label %514, label %512

; <label>:512:                                    ; preds = %block_48224b
  %513 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %504, %struct.Memory* %MEMORY.1)
  %.pre299 = load i64, i64* %RDX.i2161, align 8
  %.pre300 = load i64, i64* %3, align 8
  %.pre301 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:514:                                    ; preds = %block_48224b
  %515 = srem i64 %507, %505
  %516 = and i64 %508, 4294967295
  store i64 %516, i64* %RAX.i2276, align 8
  %517 = and i64 %515, 4294967295
  store i64 %517, i64* %RDX.i2161, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %514, %512
  %518 = phi i64 [ %.pre301, %512 ], [ %498, %514 ]
  %519 = phi i64 [ %.pre300, %512 ], [ %504, %514 ]
  %520 = phi i64 [ %.pre299, %512 ], [ %517, %514 ]
  %521 = phi %struct.Memory* [ %513, %512 ], [ %MEMORY.1, %514 ]
  %522 = trunc i64 %520 to i32
  %523 = shl i32 %522, 1
  %524 = icmp slt i32 %522, 0
  %525 = icmp slt i32 %523, 0
  %526 = xor i1 %524, %525
  %527 = zext i32 %523 to i64
  store i64 %527, i64* %RDX.i2161, align 8
  %.lobit85 = lshr i32 %522, 31
  %528 = trunc i32 %.lobit85 to i8
  store i8 %528, i8* %14, align 1
  %529 = and i32 %523, 254
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %534 = icmp eq i32 %523, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %30, align 1
  %536 = lshr i32 %522, 30
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %33, align 1
  %539 = zext i1 %526 to i8
  store i8 %539, i8* %39, align 1
  %540 = add i64 %518, -124
  %541 = add i64 %519, 5
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 %523, i32* %542, align 4
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, 45
  store i64 %544, i64* %3, align 8
  br label %block_.L_482291

block_.L_482269:                                  ; preds = %block_.L_482227
  %545 = add i64 %483, 4
  store i64 %545, i64* %3, align 8
  %546 = load i32, i32* %458, align 4
  %547 = add i32 %546, -3
  %548 = icmp ult i32 %546, 3
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = and i32 %547, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i32 %547, %546
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %27, align 1
  %559 = icmp eq i32 %547, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %30, align 1
  %561 = lshr i32 %547, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %33, align 1
  %563 = lshr i32 %546, 31
  %564 = xor i32 %561, %563
  %565 = add nuw nsw i32 %564, %563
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %39, align 1
  %.v456 = select i1 %559, i64 10, i64 24
  %568 = add i64 %483, %.v456
  store i64 %568, i64* %3, align 8
  br i1 %559, label %block_482273, label %block_.L_482281

block_482273:                                     ; preds = %block_.L_482269
  %569 = add i64 %454, -8
  %570 = add i64 %568, 3
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = shl i32 %572, 1
  %574 = icmp slt i32 %572, 0
  %575 = icmp slt i32 %573, 0
  %576 = xor i1 %574, %575
  %577 = zext i32 %573 to i64
  store i64 %577, i64* %RAX.i2276, align 8
  %.lobit101 = lshr i32 %572, 31
  %578 = trunc i32 %.lobit101 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %573, 254
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %584 = icmp eq i32 %573, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %30, align 1
  %586 = lshr i32 %572, 30
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %33, align 1
  %589 = zext i1 %576 to i8
  store i8 %589, i8* %39, align 1
  %590 = add i64 %454, -128
  %591 = add i64 %568, 8
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  store i32 %573, i32* %592, align 4
  %593 = load i64, i64* %3, align 8
  %594 = add i64 %593, 15
  br label %block_.L_48228b

block_.L_482281:                                  ; preds = %block_.L_482269
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %595 = add i64 %454, -128
  %596 = add i64 %568, 5
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  store i32 0, i32* %597, align 4
  %598 = load i64, i64* %3, align 8
  %599 = add i64 %598, 5
  store i64 %599, i64* %3, align 8
  br label %block_.L_48228b

block_.L_48228b:                                  ; preds = %block_.L_482281, %block_482273
  %storemerge102 = phi i64 [ %594, %block_482273 ], [ %599, %block_.L_482281 ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -128
  %602 = add i64 %storemerge102, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i2276, align 8
  %606 = add i64 %600, -124
  %607 = add i64 %storemerge102, 6
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  store i32 %604, i32* %608, align 4
  %.pre302 = load i64, i64* %3, align 8
  br label %block_.L_482291

block_.L_482291:                                  ; preds = %block_.L_48228b, %routine_idivl__ecx.exit
  %609 = phi i64 [ %.pre302, %block_.L_48228b ], [ %544, %routine_idivl__ecx.exit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_.L_48228b ], [ %521, %routine_idivl__ecx.exit ]
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -124
  %612 = add i64 %609, 3
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX.i2276, align 8
  store i8 1, i8* %CL.i2190, align 1
  %616 = add i64 %610, -92
  %617 = add i64 %609, 8
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  store i32 %614, i32* %618, align 4
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -92
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 3
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %620 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RAX.i2276, align 8
  %626 = add i64 %619, -20
  %627 = add i64 %621, 7
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = add i32 %629, -4
  %631 = icmp ult i32 %629, 4
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %14, align 1
  %633 = and i32 %630, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %21, align 1
  %638 = xor i32 %630, %629
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %27, align 1
  %642 = icmp eq i32 %630, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %30, align 1
  %644 = lshr i32 %630, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %33, align 1
  %646 = lshr i32 %629, 31
  %647 = xor i32 %644, %646
  %648 = add nuw nsw i32 %647, %646
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %39, align 1
  %651 = add i64 %619, -132
  %652 = add i64 %621, 13
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  store i32 %624, i32* %653, align 4
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -133
  %656 = load i8, i8* %CL.i2190, align 1
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, 6
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %655 to i8*
  store i8 %656, i8* %659, align 1
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, 19
  %662 = add i64 %660, 6
  %663 = load i8, i8* %33, align 1
  %664 = icmp ne i8 %663, 0
  %665 = load i8, i8* %39, align 1
  %666 = icmp ne i8 %665, 0
  %667 = xor i1 %664, %666
  %668 = select i1 %667, i64 %662, i64 %661
  store i64 %668, i64* %3, align 8
  br i1 %667, label %block_4822b2, label %block_.L_4822bf

block_4822b2:                                     ; preds = %block_.L_482291
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -20
  %671 = add i64 %668, 4
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, -3
  %675 = icmp ult i32 %673, 3
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %14, align 1
  %677 = and i32 %674, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %21, align 1
  %682 = xor i32 %674, %673
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %27, align 1
  %686 = icmp eq i32 %674, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %30, align 1
  %688 = lshr i32 %674, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %33, align 1
  %690 = lshr i32 %673, 31
  %691 = xor i32 %688, %690
  %692 = add nuw nsw i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %39, align 1
  store i8 %687, i8* %AL.i2165.pre-phi, align 1
  %695 = add i64 %669, -133
  %696 = add i64 %668, 13
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i8*
  store i8 %687, i8* %697, align 1
  %.pre303 = load i64, i64* %3, align 8
  br label %block_.L_4822bf

block_.L_4822bf:                                  ; preds = %block_.L_482291, %block_4822b2
  %698 = phi i64 [ %661, %block_.L_482291 ], [ %.pre303, %block_4822b2 ]
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -133
  %701 = add i64 %698, 6
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i8*
  %703 = load i8, i8* %702, align 1
  store i8 %703, i8* %AL.i2165.pre-phi, align 1
  store i64 2, i64* %RDX.i2161, align 8
  %704 = and i8 %703, 1
  store i8 0, i8* %14, align 1
  %705 = zext i8 %704 to i32
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = xor i8 %707, 1
  store i8 %708, i8* %21, align 1
  %709 = xor i8 %704, 1
  store i8 %709, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %710 = icmp eq i8 %709, 0
  %711 = select i1 %710, i64 2, i64 4
  store i64 %711, i64* %RCX.i2274, align 8
  %712 = add i64 %699, -132
  %713 = add i64 %698, 27
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = trunc i64 %711 to i32
  %717 = add i32 %716, %715
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RDX.i2161, align 8
  %719 = icmp ult i32 %717, %715
  %720 = icmp ult i32 %717, %716
  %721 = or i1 %719, %720
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %14, align 1
  %723 = and i32 %717, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %21, align 1
  %728 = xor i32 %715, %717
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %27, align 1
  %732 = icmp eq i32 %717, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i32 %717, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %33, align 1
  %736 = lshr i32 %715, 31
  %737 = xor i32 %734, %736
  %738 = add nuw nsw i32 %737, %734
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %39, align 1
  %741 = add i64 %699, -96
  %742 = add i64 %698, 32
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  store i32 %717, i32* %743, align 4
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -84
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 3
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RCX.i2274, align 8
  %751 = add i64 %744, -32
  %752 = add i64 %746, 6
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  store i32 %749, i32* %753, align 4
  %RSI.i1984 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre304 = load i64, i64* %3, align 8
  br label %block_.L_4822e5

block_.L_4822e5:                                  ; preds = %block_.L_4830ab, %block_.L_4822bf
  %755 = phi i64 [ %.pre304, %block_.L_4822bf ], [ %7449, %block_.L_4830ab ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_.L_4822bf ], [ %MEMORY.7, %block_.L_4830ab ]
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -32
  %758 = add i64 %755, 3
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RAX.i2276, align 8
  %762 = add i64 %756, -88
  %763 = add i64 %755, 6
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sub i32 %760, %765
  %767 = icmp ult i32 %760, %765
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %766, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i32 %765, %760
  %775 = xor i32 %774, %766
  %776 = lshr i32 %775, 4
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %27, align 1
  %779 = icmp eq i32 %766, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %30, align 1
  %781 = lshr i32 %766, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %33, align 1
  %783 = lshr i32 %760, 31
  %784 = lshr i32 %765, 31
  %785 = xor i32 %784, %783
  %786 = xor i32 %781, %783
  %787 = add nuw nsw i32 %786, %785
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %39, align 1
  %790 = icmp ne i8 %782, 0
  %791 = xor i1 %790, %788
  %.v406 = select i1 %791, i64 12, i64 3545
  %792 = add i64 %755, %.v406
  store i64 %792, i64* %3, align 8
  br i1 %791, label %block_4822f1, label %block_.L_4830be

block_4822f1:                                     ; preds = %block_.L_4822e5
  %793 = add i64 %756, -92
  %794 = add i64 %792, 3
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX.i2276, align 8
  %798 = add i64 %756, -36
  %799 = add i64 %792, 6
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  store i32 %796, i32* %800, align 4
  %.pre305 = load i64, i64* %3, align 8
  br label %block_.L_4822f7

block_.L_4822f7:                                  ; preds = %block_.L_483098, %block_4822f1
  %801 = phi i64 [ %.pre305, %block_4822f1 ], [ %7419, %block_.L_483098 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_4822f1 ], [ %1261, %block_.L_483098 ]
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -36
  %804 = add i64 %801, 3
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX.i2276, align 8
  %808 = add i64 %802, -96
  %809 = add i64 %801, 6
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = sub i32 %806, %811
  %813 = icmp ult i32 %806, %811
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %812, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %811, %806
  %821 = xor i32 %820, %812
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %27, align 1
  %825 = icmp eq i32 %812, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %30, align 1
  %827 = lshr i32 %812, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %33, align 1
  %829 = lshr i32 %806, 31
  %830 = lshr i32 %811, 31
  %831 = xor i32 %830, %829
  %832 = xor i32 %827, %829
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %39, align 1
  %836 = icmp ne i8 %828, 0
  %837 = xor i1 %836, %834
  %.v407 = select i1 %837, i64 12, i64 3508
  %838 = add i64 %801, %.v407
  %839 = add i64 %838, 5
  store i64 %839, i64* %3, align 8
  br i1 %837, label %block_482303, label %block_.L_4830ab

block_482303:                                     ; preds = %block_.L_4822f7
  store i64 4, i64* %RAX.i2276, align 8
  %840 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %840, i64* %RCX.i2274, align 8
  %841 = add i64 %840, 71928
  %842 = add i64 %838, 20
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RCX.i2274, align 8
  %845 = add i64 %838, 24
  store i64 %845, i64* %3, align 8
  %846 = load i32, i32* %805, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RDX.i2161, align 8
  %848 = shl nsw i64 %847, 3
  %849 = add i64 %848, %844
  %850 = add i64 %838, 28
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %RCX.i2274, align 8
  %853 = add i64 %802, -32
  %854 = add i64 %838, 32
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RDX.i2161, align 8
  %858 = shl nsw i64 %857, 3
  %859 = add i64 %858, %852
  %860 = add i64 %838, 36
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RCX.i2274, align 8
  %863 = add i64 %802, -12
  %864 = add i64 %838, 40
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RDX.i2161, align 8
  %868 = shl nsw i64 %867, 3
  %869 = add i64 %868, %862
  %870 = add i64 %838, 44
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %RCX.i2274, align 8
  %873 = add i64 %802, -16
  %874 = add i64 %838, 48
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  store i64 %877, i64* %RDX.i2161, align 8
  %878 = shl nsw i64 %877, 3
  %879 = add i64 %878, %872
  %880 = add i64 %838, 52
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i64*
  %882 = load i64, i64* %881, align 8
  store i64 %882, i64* %RCX.i2274, align 8
  %883 = add i64 %802, -20
  %884 = add i64 %838, 56
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RDX.i2161, align 8
  %888 = shl nsw i64 %887, 3
  %889 = add i64 %888, %882
  %890 = add i64 %838, 60
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RCX.i2274, align 8
  %893 = add i64 %892, 2
  %894 = add i64 %838, 64
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i16*
  %896 = load i16, i16* %895, align 2
  %897 = sext i16 %896 to i64
  %898 = and i64 %897, 4294967295
  store i64 %898, i64* %RSI.i1984, align 8
  %899 = add i64 %802, -48
  %900 = sext i16 %896 to i32
  %901 = add i64 %838, 67
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i32*
  store i32 %900, i32* %902, align 4
  %903 = load i64, i64* %3, align 8
  %904 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %904, i64* %RCX.i2274, align 8
  %905 = add i64 %904, 148
  %906 = add i64 %903, 14
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RSI.i1984, align 8
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -32
  %912 = add i64 %903, 17
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, %908
  %916 = shl i32 %915, 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RSI.i1984, align 8
  %918 = lshr i32 %915, 28
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %14, align 1
  %921 = and i32 %916, 240
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %926 = icmp eq i32 %916, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %30, align 1
  %928 = lshr i32 %915, 27
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %931 = add i64 %910, -48
  %932 = add i64 %903, 26
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = add i32 %934, %916
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RSI.i1984, align 8
  %937 = icmp ult i32 %935, %916
  %938 = icmp ult i32 %935, %934
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %14, align 1
  %941 = and i32 %935, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %21, align 1
  %946 = xor i32 %934, %916
  %947 = xor i32 %946, %935
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %27, align 1
  %951 = icmp eq i32 %935, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %30, align 1
  %953 = lshr i32 %935, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %33, align 1
  %955 = lshr i32 %915, 27
  %956 = and i32 %955, 1
  %957 = lshr i32 %934, 31
  %958 = xor i32 %953, %956
  %959 = xor i32 %953, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %39, align 1
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -48
  %965 = add i64 %903, 29
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  store i32 %935, i32* %966, align 4
  %967 = load i64, i64* %3, align 8
  %968 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %968, i64* %RCX.i2274, align 8
  %969 = add i64 %968, 71928
  %970 = add i64 %967, 15
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %RCX.i2274, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -36
  %975 = add i64 %967, 19
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sext i32 %977 to i64
  store i64 %978, i64* %RDX.i2161, align 8
  %979 = shl nsw i64 %978, 3
  %980 = add i64 %979, %972
  %981 = add i64 %967, 23
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RCX.i2274, align 8
  %984 = add i64 %973, -32
  %985 = add i64 %967, 27
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = sext i32 %987 to i64
  store i64 %988, i64* %RDX.i2161, align 8
  %989 = shl nsw i64 %988, 3
  %990 = add i64 %989, %983
  %991 = add i64 %967, 31
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RCX.i2274, align 8
  %994 = add i64 %973, -12
  %995 = add i64 %967, 35
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RDX.i2161, align 8
  %999 = shl nsw i64 %998, 3
  %1000 = add i64 %999, %993
  %1001 = add i64 %967, 39
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RCX.i2274, align 8
  %1004 = add i64 %973, -16
  %1005 = add i64 %967, 43
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RDX.i2161, align 8
  %1009 = shl nsw i64 %1008, 3
  %1010 = add i64 %1009, %1003
  %1011 = add i64 %967, 47
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RCX.i2274, align 8
  %1014 = add i64 %973, -20
  %1015 = add i64 %967, 51
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = sext i32 %1017 to i64
  store i64 %1018, i64* %RDX.i2161, align 8
  %1019 = shl nsw i64 %1018, 3
  %1020 = add i64 %1019, %1013
  %1021 = add i64 %967, 55
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %RCX.i2274, align 8
  %1024 = add i64 %967, 58
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i16*
  %1026 = load i16, i16* %1025, align 2
  %1027 = sext i16 %1026 to i64
  %1028 = and i64 %1027, 4294967295
  store i64 %1028, i64* %RSI.i1984, align 8
  %1029 = add i64 %973, -52
  %1030 = sext i16 %1026 to i32
  %1031 = add i64 %967, 61
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1029 to i32*
  store i32 %1030, i32* %1032, align 4
  %1033 = load i64, i64* %3, align 8
  %1034 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1034, i64* %RCX.i2274, align 8
  %1035 = add i64 %1034, 144
  %1036 = add i64 %1033, 14
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RSI.i1984, align 8
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -36
  %1042 = add i64 %1033, 17
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = add i32 %1044, %1038
  %1046 = shl i32 %1045, 4
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RSI.i1984, align 8
  %1048 = lshr i32 %1045, 28
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %14, align 1
  %1051 = and i32 %1046, 240
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1056 = icmp eq i32 %1046, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %30, align 1
  %1058 = lshr i32 %1045, 27
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1061 = add i64 %1040, -52
  %1062 = add i64 %1033, 26
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, %1046
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RSI.i1984, align 8
  %1067 = icmp ult i32 %1065, %1046
  %1068 = icmp ult i32 %1065, %1064
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i32 %1064, %1046
  %1077 = xor i32 %1076, %1065
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %27, align 1
  %1081 = icmp eq i32 %1065, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %30, align 1
  %1083 = lshr i32 %1065, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %33, align 1
  %1085 = lshr i32 %1045, 27
  %1086 = and i32 %1085, 1
  %1087 = lshr i32 %1064, 31
  %1088 = xor i32 %1083, %1086
  %1089 = xor i32 %1083, %1087
  %1090 = add nuw nsw i32 %1088, %1089
  %1091 = icmp eq i32 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %39, align 1
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -52
  %1095 = add i64 %1033, 29
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  store i32 %1065, i32* %1096, align 4
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -48
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 3
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1098 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = and i32 %1102, 3
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RSI.i1984, align 8
  store i8 0, i8* %14, align 1
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %21, align 1
  %1109 = icmp eq i32 %1103, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1111 = add i64 %1097, -40
  %1112 = add i64 %1099, 9
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  store i32 %1103, i32* %1113, align 4
  %1114 = load i64, i64* %RBP.i, align 8
  %1115 = add i64 %1114, -52
  %1116 = load i64, i64* %3, align 8
  %1117 = add i64 %1116, 3
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1115 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = and i32 %1119, 3
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RSI.i1984, align 8
  store i8 0, i8* %14, align 1
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %21, align 1
  %1126 = icmp eq i32 %1120, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1128 = add i64 %1114, -44
  %1129 = add i64 %1116, 9
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i32*
  store i32 %1120, i32* %1130, align 4
  %1131 = load i64, i64* %RBP.i, align 8
  %1132 = add i64 %1131, -48
  %1133 = load i64, i64* %3, align 8
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RSI.i1984, align 8
  %1138 = add i64 %1131, -40
  %1139 = add i64 %1133, 6
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = sub i32 %1136, %1141
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RSI.i1984, align 8
  %1144 = icmp ult i32 %1136, %1141
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1142, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1141, %1136
  %1152 = xor i32 %1151, %1142
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %27, align 1
  %1156 = icmp eq i32 %1142, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %30, align 1
  %1158 = lshr i32 %1142, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %33, align 1
  %1160 = lshr i32 %1136, 31
  %1161 = lshr i32 %1141, 31
  %1162 = xor i32 %1161, %1160
  %1163 = xor i32 %1158, %1160
  %1164 = add nuw nsw i32 %1163, %1162
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %1167 = add i64 %1131, -140
  %1168 = load i32, i32* %EAX.i2187.pre-phi, align 4
  %1169 = add i64 %1133, 12
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1167 to i32*
  store i32 %1168, i32* %1170, align 4
  %1171 = load i32, i32* %ESI.i2229, align 4
  %1172 = zext i32 %1171 to i64
  %1173 = load i64, i64* %3, align 8
  store i64 %1172, i64* %RAX.i2276, align 8
  %1174 = sext i32 %1171 to i64
  %1175 = lshr i64 %1174, 32
  store i64 %1175, i64* %754, align 8
  %1176 = load i64, i64* %RBP.i, align 8
  %1177 = add i64 %1176, -140
  %1178 = add i64 %1173, 9
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RSI.i1984, align 8
  %1182 = add i64 %1173, 11
  store i64 %1182, i64* %3, align 8
  %1183 = sext i32 %1180 to i64
  %1184 = shl nuw i64 %1175, 32
  %1185 = or i64 %1184, %1172
  %1186 = sdiv i64 %1185, %1183
  %1187 = shl i64 %1186, 32
  %1188 = ashr exact i64 %1187, 32
  %1189 = icmp eq i64 %1186, %1188
  br i1 %1189, label %1192, label %1190

; <label>:1190:                                   ; preds = %block_482303
  %1191 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1182, %struct.Memory* %MEMORY.7)
  %.pre306 = load i64, i64* %RBP.i, align 8
  %.pre307 = load i32, i32* %EAX.i2187.pre-phi, align 4
  %.pre308 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1868

; <label>:1192:                                   ; preds = %block_482303
  %1193 = srem i64 %1185, %1183
  %1194 = and i64 %1186, 4294967295
  store i64 %1194, i64* %RAX.i2276, align 8
  %1195 = and i64 %1193, 4294967295
  store i64 %1195, i64* %RDX.i2161, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1196 = trunc i64 %1186 to i32
  br label %routine_idivl__esi.exit1868

routine_idivl__esi.exit1868:                      ; preds = %1192, %1190
  %1197 = phi i64 [ %.pre308, %1190 ], [ %1182, %1192 ]
  %1198 = phi i32 [ %.pre307, %1190 ], [ %1196, %1192 ]
  %1199 = phi i64 [ %.pre306, %1190 ], [ %1176, %1192 ]
  %1200 = phi %struct.Memory* [ %1191, %1190 ], [ %MEMORY.7, %1192 ]
  %1201 = add i64 %1199, -48
  %1202 = add i64 %1197, 3
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  store i32 %1198, i32* %1203, align 4
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -52
  %1206 = load i64, i64* %3, align 8
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1205 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i2276, align 8
  %1211 = add i64 %1204, -44
  %1212 = add i64 %1206, 6
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RAX.i2276, align 8
  %1217 = icmp ult i32 %1209, %1214
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %14, align 1
  %1219 = and i32 %1215, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %21, align 1
  %1224 = xor i32 %1214, %1209
  %1225 = xor i32 %1224, %1215
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %27, align 1
  %1229 = icmp eq i32 %1215, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %30, align 1
  %1231 = lshr i32 %1215, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %33, align 1
  %1233 = lshr i32 %1209, 31
  %1234 = lshr i32 %1214, 31
  %1235 = xor i32 %1234, %1233
  %1236 = xor i32 %1231, %1233
  %1237 = add nuw nsw i32 %1236, %1235
  %1238 = icmp eq i32 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %39, align 1
  %1240 = sext i32 %1215 to i64
  %1241 = lshr i64 %1240, 32
  store i64 %1241, i64* %754, align 8
  %1242 = load i32, i32* %ESI.i2229, align 4
  %1243 = add i64 %1206, 9
  store i64 %1243, i64* %3, align 8
  %1244 = sext i32 %1242 to i64
  %1245 = shl nuw i64 %1241, 32
  %1246 = or i64 %1245, %1216
  %1247 = sdiv i64 %1246, %1244
  %1248 = shl i64 %1247, 32
  %1249 = ashr exact i64 %1248, 32
  %1250 = icmp eq i64 %1247, %1249
  br i1 %1250, label %1253, label %1251

; <label>:1251:                                   ; preds = %routine_idivl__esi.exit1868
  %1252 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1243, %struct.Memory* %1200)
  %.pre309 = load i64, i64* %RBP.i, align 8
  %.pre310 = load i32, i32* %EAX.i2187.pre-phi, align 4
  %.pre311 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1253:                                   ; preds = %routine_idivl__esi.exit1868
  %1254 = srem i64 %1246, %1244
  %1255 = and i64 %1247, 4294967295
  store i64 %1255, i64* %RAX.i2276, align 8
  %1256 = and i64 %1254, 4294967295
  store i64 %1256, i64* %RDX.i2161, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1257 = trunc i64 %1247 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1253, %1251
  %1258 = phi i64 [ %.pre311, %1251 ], [ %1243, %1253 ]
  %1259 = phi i32 [ %.pre310, %1251 ], [ %1257, %1253 ]
  %1260 = phi i64 [ %.pre309, %1251 ], [ %1204, %1253 ]
  %1261 = phi %struct.Memory* [ %1252, %1251 ], [ %1200, %1253 ]
  %1262 = add i64 %1260, -52
  %1263 = add i64 %1258, 3
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  store i32 %1259, i32* %1264, align 4
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -40
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269, align 4
  store i8 0, i8* %14, align 1
  %1271 = and i32 %1270, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1276 = icmp eq i32 %1270, 0
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %30, align 1
  %1278 = lshr i32 %1270, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v408 = select i1 %1276, i64 10, i64 434
  %1280 = add i64 %1267, %.v408
  store i64 %1280, i64* %3, align 8
  br i1 %1276, label %block_4823ff, label %block_.L_4825a7

block_4823ff:                                     ; preds = %routine_idivl__esi.exit
  %1281 = add i64 %1265, -44
  %1282 = add i64 %1280, 4
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  store i8 0, i8* %14, align 1
  %1285 = and i32 %1284, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1290 = icmp eq i32 %1284, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %30, align 1
  %1292 = lshr i32 %1284, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v450 = select i1 %1290, i64 10, i64 424
  %1294 = add i64 %1280, %.v450
  store i64 %1294, i64* %3, align 8
  br i1 %1290, label %block_482409, label %block_.L_4825a7

block_482409:                                     ; preds = %block_4823ff
  %1295 = add i64 %1265, -24
  %1296 = add i64 %1294, 7
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  store i32 0, i32* %1297, align 4
  %.pre312 = load i64, i64* %3, align 8
  br label %block_.L_482410

block_.L_482410:                                  ; preds = %block_.L_48258f, %block_482409
  %1298 = phi i64 [ %1952, %block_.L_48258f ], [ %.pre312, %block_482409 ]
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -24
  %1301 = add i64 %1298, 4
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = add i32 %1303, -4
  %1305 = icmp ult i32 %1303, 4
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1304, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  %1312 = xor i32 %1304, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %27, align 1
  %1316 = icmp eq i32 %1304, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1304, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  %1320 = lshr i32 %1303, 31
  %1321 = xor i32 %1318, %1320
  %1322 = add nuw nsw i32 %1321, %1320
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %39, align 1
  %1325 = icmp ne i8 %1319, 0
  %1326 = xor i1 %1325, %1323
  %.v451 = select i1 %1326, i64 10, i64 402
  %1327 = add i64 %1298, %.v451
  store i64 %1327, i64* %3, align 8
  br i1 %1326, label %block_48241a, label %block_.L_4825a2

block_48241a:                                     ; preds = %block_.L_482410
  %1328 = add i64 %1299, -28
  %1329 = add i64 %1327, 7
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  store i32 0, i32* %1330, align 4
  %.pre313 = load i64, i64* %3, align 8
  br label %block_.L_482421

block_.L_482421:                                  ; preds = %block_.L_48257c, %block_48241a
  %1331 = phi i64 [ %1922, %block_.L_48257c ], [ %.pre313, %block_48241a ]
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -28
  %1334 = add i64 %1331, 4
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = add i32 %1336, -4
  %1338 = icmp ult i32 %1336, 4
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %14, align 1
  %1340 = and i32 %1337, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %21, align 1
  %1345 = xor i32 %1337, %1336
  %1346 = lshr i32 %1345, 4
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  store i8 %1348, i8* %27, align 1
  %1349 = icmp eq i32 %1337, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %30, align 1
  %1351 = lshr i32 %1337, 31
  %1352 = trunc i32 %1351 to i8
  store i8 %1352, i8* %33, align 1
  %1353 = lshr i32 %1336, 31
  %1354 = xor i32 %1351, %1353
  %1355 = add nuw nsw i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %39, align 1
  %1358 = icmp ne i8 %1352, 0
  %1359 = xor i1 %1358, %1356
  %.v = select i1 %1359, i64 10, i64 366
  %1360 = add i64 %1331, %.v
  store i64 %1360, i64* %3, align 8
  br i1 %1359, label %block_48242b, label %block_.L_48258f

block_48242b:                                     ; preds = %block_.L_482421
  %1361 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %1361, i64* %RAX.i2276, align 8
  %1362 = add i64 %1332, -76
  %1363 = add i64 %1360, 11
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i2274, align 8
  %1367 = add i64 %1332, -48
  %1368 = add i64 %1360, 14
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RDX.i2161, align 8
  %1372 = add i64 %1332, -24
  %1373 = add i64 %1360, 17
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = add i32 %1375, %1370
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RDX.i2161, align 8
  %1378 = lshr i32 %1376, 31
  %1379 = sub i32 %1365, %1376
  %1380 = icmp ult i32 %1365, %1376
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %14, align 1
  %1382 = and i32 %1379, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  %1387 = xor i32 %1376, %1365
  %1388 = xor i32 %1387, %1379
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = icmp eq i32 %1379, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %30, align 1
  %1394 = lshr i32 %1379, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %33, align 1
  %1396 = lshr i32 %1365, 31
  %1397 = xor i32 %1378, %1396
  %1398 = xor i32 %1394, %1396
  %1399 = add nuw nsw i32 %1398, %1397
  %1400 = icmp eq i32 %1399, 2
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %39, align 1
  %1402 = add i64 %1332, -152
  %1403 = add i64 %1360, 26
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i64*
  store i64 %1361, i64* %1404, align 8
  %1405 = load i64, i64* %3, align 8
  %1406 = load i8, i8* %33, align 1
  %1407 = icmp ne i8 %1406, 0
  %1408 = load i8, i8* %39, align 1
  %1409 = icmp ne i8 %1408, 0
  %1410 = xor i1 %1407, %1409
  %.v608 = select i1 %1410, i64 6, i64 20
  %1411 = add i64 %1405, %.v608
  store i64 %1411, i64* %3, align 8
  %1412 = load i64, i64* %RBP.i, align 8
  br i1 %1410, label %block_48244b, label %block_.L_482459

block_48244b:                                     ; preds = %block_48242b
  %1413 = add i64 %1412, -76
  %1414 = add i64 %1411, 3
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i2276, align 8
  %1418 = add i64 %1412, -156
  %1419 = add i64 %1411, 9
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  store i32 %1416, i32* %1420, align 4
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 17
  store i64 %1422, i64* %3, align 8
  br label %block_.L_482465

block_.L_482459:                                  ; preds = %block_48242b
  %1423 = add i64 %1412, -48
  %1424 = add i64 %1411, 3
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RAX.i2276, align 8
  %1428 = add i64 %1412, -24
  %1429 = add i64 %1411, 6
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = add i32 %1431, %1426
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i2276, align 8
  %1434 = icmp ult i32 %1432, %1426
  %1435 = icmp ult i32 %1432, %1431
  %1436 = or i1 %1434, %1435
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %14, align 1
  %1438 = and i32 %1432, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  %1443 = xor i32 %1431, %1426
  %1444 = xor i32 %1443, %1432
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %27, align 1
  %1448 = icmp eq i32 %1432, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %30, align 1
  %1450 = lshr i32 %1432, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %33, align 1
  %1452 = lshr i32 %1426, 31
  %1453 = lshr i32 %1431, 31
  %1454 = xor i32 %1450, %1452
  %1455 = xor i32 %1450, %1453
  %1456 = add nuw nsw i32 %1454, %1455
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %39, align 1
  %1459 = add i64 %1412, -156
  %1460 = add i64 %1411, 12
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  store i32 %1432, i32* %1461, align 4
  %.pre314 = load i64, i64* %3, align 8
  br label %block_.L_482465

block_.L_482465:                                  ; preds = %block_.L_482459, %block_48244b
  %1462 = phi i64 [ %.pre314, %block_.L_482459 ], [ %1422, %block_48244b ]
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -156
  %1465 = add i64 %1462, 6
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %1469 = sub i32 0, %1467
  %1470 = icmp ne i32 %1467, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %14, align 1
  %1472 = and i32 %1469, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %21, align 1
  %1477 = xor i32 %1467, %1469
  %1478 = lshr i32 %1477, 4
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %27, align 1
  %1481 = icmp eq i32 %1467, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %30, align 1
  %1483 = lshr i32 %1469, 31
  %1484 = trunc i32 %1483 to i8
  store i8 %1484, i8* %33, align 1
  %1485 = lshr i32 %1467, 31
  %1486 = add nuw nsw i32 %1483, %1485
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %39, align 1
  %1489 = icmp ne i8 %1484, 0
  %1490 = xor i1 %1489, %1487
  %1491 = or i1 %1481, %1490
  %.v452 = select i1 %1491, i64 29, i64 16
  %1492 = add i64 %1462, %.v452
  store i64 %1492, i64* %3, align 8
  br i1 %1491, label %block_.L_482482, label %block_482475

block_482475:                                     ; preds = %block_.L_482465
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1493 = add i64 %1463, -160
  %1494 = add i64 %1492, 8
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  store i32 0, i32* %1495, align 4
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 60
  store i64 %1497, i64* %3, align 8
  br label %block_.L_4824b9

block_.L_482482:                                  ; preds = %block_.L_482465
  %1498 = add i64 %1463, -76
  %1499 = add i64 %1492, 3
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RAX.i2276, align 8
  %1503 = add i64 %1463, -48
  %1504 = add i64 %1492, 6
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i2274, align 8
  %1508 = add i64 %1463, -24
  %1509 = add i64 %1492, 9
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = add i32 %1511, %1506
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RCX.i2274, align 8
  %1514 = lshr i32 %1512, 31
  %1515 = sub i32 %1501, %1512
  %1516 = icmp ult i32 %1501, %1512
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %14, align 1
  %1518 = and i32 %1515, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  %1523 = xor i32 %1512, %1501
  %1524 = xor i32 %1523, %1515
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %27, align 1
  %1528 = icmp eq i32 %1515, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %30, align 1
  %1530 = lshr i32 %1515, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %33, align 1
  %1532 = lshr i32 %1501, 31
  %1533 = xor i32 %1514, %1532
  %1534 = xor i32 %1530, %1532
  %1535 = add nuw nsw i32 %1534, %1533
  %1536 = icmp eq i32 %1535, 2
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %39, align 1
  %1538 = icmp ne i8 %1531, 0
  %1539 = xor i1 %1538, %1536
  %.v455 = select i1 %1539, i64 17, i64 31
  %1540 = add i64 %1492, %.v455
  %1541 = add i64 %1540, 3
  store i64 %1541, i64* %3, align 8
  br i1 %1539, label %block_482493, label %block_.L_4824a1

block_482493:                                     ; preds = %block_.L_482482
  %1542 = load i32, i32* %1500, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i2276, align 8
  %1544 = add i64 %1463, -164
  %1545 = add i64 %1540, 9
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  store i32 %1542, i32* %1546, align 4
  %1547 = load i64, i64* %3, align 8
  %1548 = add i64 %1547, 17
  store i64 %1548, i64* %3, align 8
  br label %block_.L_4824ad

block_.L_4824a1:                                  ; preds = %block_.L_482482
  %1549 = load i32, i32* %1505, align 4
  %1550 = zext i32 %1549 to i64
  store i64 %1550, i64* %RAX.i2276, align 8
  %1551 = add i64 %1540, 6
  store i64 %1551, i64* %3, align 8
  %1552 = load i32, i32* %1510, align 4
  %1553 = add i32 %1552, %1549
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i2276, align 8
  %1555 = icmp ult i32 %1553, %1549
  %1556 = icmp ult i32 %1553, %1552
  %1557 = or i1 %1555, %1556
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %14, align 1
  %1559 = and i32 %1553, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  %1564 = xor i32 %1552, %1549
  %1565 = xor i32 %1564, %1553
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %27, align 1
  %1569 = icmp eq i32 %1553, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %30, align 1
  %1571 = lshr i32 %1553, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %33, align 1
  %1573 = lshr i32 %1549, 31
  %1574 = lshr i32 %1552, 31
  %1575 = xor i32 %1571, %1573
  %1576 = xor i32 %1571, %1574
  %1577 = add nuw nsw i32 %1575, %1576
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %39, align 1
  %1580 = add i64 %1463, -164
  %1581 = add i64 %1540, 12
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 %1553, i32* %1582, align 4
  %.pre315 = load i64, i64* %3, align 8
  br label %block_.L_4824ad

block_.L_4824ad:                                  ; preds = %block_.L_4824a1, %block_482493
  %1583 = phi i64 [ %.pre315, %block_.L_4824a1 ], [ %1548, %block_482493 ]
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -164
  %1586 = add i64 %1583, 6
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i2276, align 8
  %1590 = add i64 %1584, -160
  %1591 = add i64 %1583, 12
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  store i32 %1588, i32* %1592, align 4
  %.pre316 = load i64, i64* %3, align 8
  br label %block_.L_4824b9

block_.L_4824b9:                                  ; preds = %block_.L_4824ad, %block_482475
  %1593 = phi i64 [ %.pre316, %block_.L_4824ad ], [ %1497, %block_482475 ]
  %1594 = load i64, i64* %RBP.i, align 8
  %1595 = add i64 %1594, -160
  %1596 = add i64 %1593, 6
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX.i2276, align 8
  %1600 = sext i32 %1598 to i64
  store i64 %1600, i64* %RCX.i2274, align 8
  %1601 = add i64 %1594, -152
  %1602 = add i64 %1593, 16
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i64*
  %1604 = load i64, i64* %1603, align 8
  store i64 %1604, i64* %RDX.i2161, align 8
  %1605 = shl nsw i64 %1600, 3
  %1606 = add i64 %1605, %1604
  %1607 = add i64 %1593, 20
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i64*
  %1609 = load i64, i64* %1608, align 8
  store i64 %1609, i64* %RCX.i2274, align 8
  %1610 = add i64 %1594, -72
  %1611 = add i64 %1593, 23
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i32*
  %1613 = load i32, i32* %1612, align 4
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RAX.i2276, align 8
  %1615 = add i64 %1594, -52
  %1616 = add i64 %1593, 26
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RSI.i1984, align 8
  %1620 = add i64 %1594, -28
  %1621 = add i64 %1593, 29
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, %1618
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RSI.i1984, align 8
  %1626 = lshr i32 %1624, 31
  %1627 = sub i32 %1613, %1624
  %1628 = icmp ult i32 %1613, %1624
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %14, align 1
  %1630 = and i32 %1627, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %21, align 1
  %1635 = xor i32 %1624, %1613
  %1636 = xor i32 %1635, %1627
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %27, align 1
  %1640 = icmp eq i32 %1627, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %30, align 1
  %1642 = lshr i32 %1627, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %33, align 1
  %1644 = lshr i32 %1613, 31
  %1645 = xor i32 %1626, %1644
  %1646 = xor i32 %1642, %1644
  %1647 = add nuw nsw i32 %1646, %1645
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %39, align 1
  %1650 = load i64, i64* %RBP.i, align 8
  %1651 = add i64 %1650, -176
  %1652 = add i64 %1593, 38
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i64*
  store i64 %1609, i64* %1653, align 8
  %1654 = load i64, i64* %3, align 8
  %1655 = load i8, i8* %33, align 1
  %1656 = icmp ne i8 %1655, 0
  %1657 = load i8, i8* %39, align 1
  %1658 = icmp ne i8 %1657, 0
  %1659 = xor i1 %1656, %1658
  %.v609 = select i1 %1659, i64 6, i64 20
  %1660 = add i64 %1654, %.v609
  store i64 %1660, i64* %3, align 8
  %1661 = load i64, i64* %RBP.i, align 8
  br i1 %1659, label %block_4824e5, label %block_.L_4824f3

block_4824e5:                                     ; preds = %block_.L_4824b9
  %1662 = add i64 %1661, -72
  %1663 = add i64 %1660, 3
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i2276, align 8
  %1667 = add i64 %1661, -180
  %1668 = add i64 %1660, 9
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  store i32 %1665, i32* %1669, align 4
  %1670 = load i64, i64* %3, align 8
  %1671 = add i64 %1670, 17
  store i64 %1671, i64* %3, align 8
  br label %block_.L_4824ff

block_.L_4824f3:                                  ; preds = %block_.L_4824b9
  %1672 = add i64 %1661, -52
  %1673 = add i64 %1660, 3
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RAX.i2276, align 8
  %1677 = add i64 %1661, -28
  %1678 = add i64 %1660, 6
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = add i32 %1680, %1675
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX.i2276, align 8
  %1683 = icmp ult i32 %1681, %1675
  %1684 = icmp ult i32 %1681, %1680
  %1685 = or i1 %1683, %1684
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1681, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1680, %1675
  %1693 = xor i32 %1692, %1681
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  %1697 = icmp eq i32 %1681, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %30, align 1
  %1699 = lshr i32 %1681, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %33, align 1
  %1701 = lshr i32 %1675, 31
  %1702 = lshr i32 %1680, 31
  %1703 = xor i32 %1699, %1701
  %1704 = xor i32 %1699, %1702
  %1705 = add nuw nsw i32 %1703, %1704
  %1706 = icmp eq i32 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %39, align 1
  %1708 = add i64 %1661, -180
  %1709 = add i64 %1660, 12
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  store i32 %1681, i32* %1710, align 4
  %.pre317 = load i64, i64* %3, align 8
  br label %block_.L_4824ff

block_.L_4824ff:                                  ; preds = %block_.L_4824f3, %block_4824e5
  %1711 = phi i64 [ %.pre317, %block_.L_4824f3 ], [ %1671, %block_4824e5 ]
  %1712 = load i64, i64* %RBP.i, align 8
  %1713 = add i64 %1712, -180
  %1714 = add i64 %1711, 6
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %1718 = sub i32 0, %1716
  %1719 = icmp ne i32 %1716, 0
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %14, align 1
  %1721 = and i32 %1718, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %21, align 1
  %1726 = xor i32 %1716, %1718
  %1727 = lshr i32 %1726, 4
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  store i8 %1729, i8* %27, align 1
  %1730 = icmp eq i32 %1716, 0
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %30, align 1
  %1732 = lshr i32 %1718, 31
  %1733 = trunc i32 %1732 to i8
  store i8 %1733, i8* %33, align 1
  %1734 = lshr i32 %1716, 31
  %1735 = add nuw nsw i32 %1732, %1734
  %1736 = icmp eq i32 %1735, 2
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %39, align 1
  %1738 = icmp ne i8 %1733, 0
  %1739 = xor i1 %1738, %1736
  %1740 = or i1 %1730, %1739
  %.v453 = select i1 %1740, i64 29, i64 16
  %1741 = add i64 %1711, %.v453
  store i64 %1741, i64* %3, align 8
  br i1 %1740, label %block_.L_48251c, label %block_48250f

block_48250f:                                     ; preds = %block_.L_4824ff
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1742 = add i64 %1712, -184
  %1743 = add i64 %1741, 8
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i32*
  store i32 0, i32* %1744, align 4
  %1745 = load i64, i64* %3, align 8
  %1746 = add i64 %1745, 60
  store i64 %1746, i64* %3, align 8
  br label %block_.L_482553

block_.L_48251c:                                  ; preds = %block_.L_4824ff
  %1747 = add i64 %1712, -72
  %1748 = add i64 %1741, 3
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = zext i32 %1750 to i64
  store i64 %1751, i64* %RAX.i2276, align 8
  %1752 = add i64 %1712, -52
  %1753 = add i64 %1741, 6
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RCX.i2274, align 8
  %1757 = add i64 %1712, -28
  %1758 = add i64 %1741, 9
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = add i32 %1760, %1755
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RCX.i2274, align 8
  %1763 = lshr i32 %1761, 31
  %1764 = sub i32 %1750, %1761
  %1765 = icmp ult i32 %1750, %1761
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %14, align 1
  %1767 = and i32 %1764, 255
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %21, align 1
  %1772 = xor i32 %1761, %1750
  %1773 = xor i32 %1772, %1764
  %1774 = lshr i32 %1773, 4
  %1775 = trunc i32 %1774 to i8
  %1776 = and i8 %1775, 1
  store i8 %1776, i8* %27, align 1
  %1777 = icmp eq i32 %1764, 0
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %30, align 1
  %1779 = lshr i32 %1764, 31
  %1780 = trunc i32 %1779 to i8
  store i8 %1780, i8* %33, align 1
  %1781 = lshr i32 %1750, 31
  %1782 = xor i32 %1763, %1781
  %1783 = xor i32 %1779, %1781
  %1784 = add nuw nsw i32 %1783, %1782
  %1785 = icmp eq i32 %1784, 2
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %39, align 1
  %1787 = icmp ne i8 %1780, 0
  %1788 = xor i1 %1787, %1785
  %.v454 = select i1 %1788, i64 17, i64 31
  %1789 = add i64 %1741, %.v454
  %1790 = add i64 %1789, 3
  store i64 %1790, i64* %3, align 8
  br i1 %1788, label %block_48252d, label %block_.L_48253b

block_48252d:                                     ; preds = %block_.L_48251c
  %1791 = load i32, i32* %1749, align 4
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RAX.i2276, align 8
  %1793 = add i64 %1712, -188
  %1794 = add i64 %1789, 9
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  store i32 %1791, i32* %1795, align 4
  %1796 = load i64, i64* %3, align 8
  %1797 = add i64 %1796, 17
  store i64 %1797, i64* %3, align 8
  br label %block_.L_482547

block_.L_48253b:                                  ; preds = %block_.L_48251c
  %1798 = load i32, i32* %1754, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i2276, align 8
  %1800 = add i64 %1789, 6
  store i64 %1800, i64* %3, align 8
  %1801 = load i32, i32* %1759, align 4
  %1802 = add i32 %1801, %1798
  %1803 = zext i32 %1802 to i64
  store i64 %1803, i64* %RAX.i2276, align 8
  %1804 = icmp ult i32 %1802, %1798
  %1805 = icmp ult i32 %1802, %1801
  %1806 = or i1 %1804, %1805
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %14, align 1
  %1808 = and i32 %1802, 255
  %1809 = tail call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %21, align 1
  %1813 = xor i32 %1801, %1798
  %1814 = xor i32 %1813, %1802
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %27, align 1
  %1818 = icmp eq i32 %1802, 0
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %30, align 1
  %1820 = lshr i32 %1802, 31
  %1821 = trunc i32 %1820 to i8
  store i8 %1821, i8* %33, align 1
  %1822 = lshr i32 %1798, 31
  %1823 = lshr i32 %1801, 31
  %1824 = xor i32 %1820, %1822
  %1825 = xor i32 %1820, %1823
  %1826 = add nuw nsw i32 %1824, %1825
  %1827 = icmp eq i32 %1826, 2
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %39, align 1
  %1829 = add i64 %1712, -188
  %1830 = add i64 %1789, 12
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  store i32 %1802, i32* %1831, align 4
  %.pre318 = load i64, i64* %3, align 8
  br label %block_.L_482547

block_.L_482547:                                  ; preds = %block_.L_48253b, %block_48252d
  %1832 = phi i64 [ %.pre318, %block_.L_48253b ], [ %1797, %block_48252d ]
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -188
  %1835 = add i64 %1832, 6
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RAX.i2276, align 8
  %1839 = add i64 %1833, -184
  %1840 = add i64 %1832, 12
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  store i32 %1837, i32* %1841, align 4
  %.pre319 = load i64, i64* %3, align 8
  br label %block_.L_482553

block_.L_482553:                                  ; preds = %block_.L_482547, %block_48250f
  %1842 = phi i64 [ %.pre319, %block_.L_482547 ], [ %1746, %block_48250f ]
  %1843 = load i64, i64* %RBP.i, align 8
  %1844 = add i64 %1843, -184
  %1845 = add i64 %1842, 6
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RAX.i2276, align 8
  %1849 = sext i32 %1847 to i64
  store i64 %1849, i64* %RCX.i2274, align 8
  %1850 = add i64 %1843, -176
  %1851 = add i64 %1842, 16
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %RDX.i2161, align 8
  %1854 = add i64 %1849, %1853
  %1855 = add i64 %1842, 20
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i8*
  %1857 = load i8, i8* %1856, align 1
  %1858 = zext i8 %1857 to i64
  store i64 %1858, i64* %RAX.i2276, align 8
  %1859 = zext i8 %1857 to i32
  %1860 = add i64 %1843, -80
  %1861 = add i64 %1842, 23
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = sub i32 %1859, %1863
  %1865 = icmp ult i32 %1859, %1863
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %14, align 1
  %1867 = and i32 %1864, 255
  %1868 = tail call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  store i8 %1871, i8* %21, align 1
  %1872 = xor i32 %1863, %1859
  %1873 = xor i32 %1872, %1864
  %1874 = lshr i32 %1873, 4
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  store i8 %1876, i8* %27, align 1
  %1877 = icmp eq i32 %1864, 0
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %30, align 1
  %1879 = lshr i32 %1864, 31
  %1880 = trunc i32 %1879 to i8
  store i8 %1880, i8* %33, align 1
  %1881 = lshr i32 %1863, 31
  %1882 = add nuw nsw i32 %1879, %1881
  %1883 = icmp eq i32 %1882, 2
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %39, align 1
  %1885 = icmp ne i8 %1880, 0
  %1886 = xor i1 %1885, %1883
  %.v378 = select i1 %1886, i64 29, i64 41
  %1887 = add i64 %1842, %.v378
  store i64 %1887, i64* %3, align 8
  br i1 %1886, label %block_482570, label %block_.L_48257c

block_482570:                                     ; preds = %block_.L_482553
  %1888 = add i64 %1843, -4
  %1889 = add i64 %1887, 7
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i32*
  store i32 0, i32* %1890, align 4
  %1891 = load i64, i64* %3, align 8
  %1892 = add i64 %1891, 2894
  store i64 %1892, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_48257c:                                  ; preds = %block_.L_482553
  %1893 = add i64 %1843, -28
  %1894 = add i64 %1887, 8
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = add i32 %1896, 1
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RAX.i2276, align 8
  %1899 = icmp eq i32 %1896, -1
  %1900 = icmp eq i32 %1897, 0
  %1901 = or i1 %1899, %1900
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %14, align 1
  %1903 = and i32 %1897, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %21, align 1
  %1908 = xor i32 %1897, %1896
  %1909 = lshr i32 %1908, 4
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  store i8 %1911, i8* %27, align 1
  %1912 = zext i1 %1900 to i8
  store i8 %1912, i8* %30, align 1
  %1913 = lshr i32 %1897, 31
  %1914 = trunc i32 %1913 to i8
  store i8 %1914, i8* %33, align 1
  %1915 = lshr i32 %1896, 31
  %1916 = xor i32 %1913, %1915
  %1917 = add nuw nsw i32 %1916, %1913
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %39, align 1
  %1920 = add i64 %1887, 14
  store i64 %1920, i64* %3, align 8
  store i32 %1897, i32* %1895, align 4
  %1921 = load i64, i64* %3, align 8
  %1922 = add i64 %1921, -361
  store i64 %1922, i64* %3, align 8
  br label %block_.L_482421

block_.L_48258f:                                  ; preds = %block_.L_482421
  %1923 = add i64 %1332, -24
  %1924 = add i64 %1360, 8
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i32*
  %1926 = load i32, i32* %1925, align 4
  %1927 = add i32 %1926, 1
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i2276, align 8
  %1929 = icmp eq i32 %1926, -1
  %1930 = icmp eq i32 %1927, 0
  %1931 = or i1 %1929, %1930
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %14, align 1
  %1933 = and i32 %1927, 255
  %1934 = tail call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  store i8 %1937, i8* %21, align 1
  %1938 = xor i32 %1927, %1926
  %1939 = lshr i32 %1938, 4
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  store i8 %1941, i8* %27, align 1
  %1942 = zext i1 %1930 to i8
  store i8 %1942, i8* %30, align 1
  %1943 = lshr i32 %1927, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %33, align 1
  %1945 = lshr i32 %1926, 31
  %1946 = xor i32 %1943, %1945
  %1947 = add nuw nsw i32 %1946, %1943
  %1948 = icmp eq i32 %1947, 2
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %39, align 1
  %1950 = add i64 %1360, 14
  store i64 %1950, i64* %3, align 8
  store i32 %1927, i32* %1925, align 4
  %1951 = load i64, i64* %3, align 8
  %1952 = add i64 %1951, -397
  store i64 %1952, i64* %3, align 8
  br label %block_.L_482410

block_.L_4825a2:                                  ; preds = %block_.L_482410
  %1953 = add i64 %1327, 2806
  br label %block_.L_483098

block_.L_4825a7:                                  ; preds = %block_4823ff, %routine_idivl__esi.exit
  %1954 = phi i64 [ %1294, %block_4823ff ], [ %1280, %routine_idivl__esi.exit ]
  %1955 = add i64 %1954, 4
  store i64 %1955, i64* %3, align 8
  %1956 = load i32, i32* %1269, align 4
  store i8 0, i8* %14, align 1
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1962 = icmp eq i32 %1956, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i32 %1956, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v392 = select i1 %1962, i64 10, i64 452
  %1966 = add i64 %1954, %.v392
  store i64 %1966, i64* %3, align 8
  br i1 %1962, label %block_4825b1, label %block_.L_48276b

block_4825b1:                                     ; preds = %block_.L_4825a7
  %1967 = add i64 %1265, -24
  %1968 = add i64 %1966, 7
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  store i32 0, i32* %1969, align 4
  %.pre320 = load i64, i64* %3, align 8
  br label %block_.L_4825b8

block_.L_4825b8:                                  ; preds = %block_.L_482753, %block_4825b1
  %1970 = phi i64 [ %2802, %block_.L_482753 ], [ %.pre320, %block_4825b1 ]
  %1971 = load i64, i64* %RBP.i, align 8
  %1972 = add i64 %1971, -24
  %1973 = add i64 %1970, 4
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = add i32 %1975, -4
  %1977 = icmp ult i32 %1975, 4
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %14, align 1
  %1979 = and i32 %1976, 255
  %1980 = tail call i32 @llvm.ctpop.i32(i32 %1979)
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = xor i8 %1982, 1
  store i8 %1983, i8* %21, align 1
  %1984 = xor i32 %1976, %1975
  %1985 = lshr i32 %1984, 4
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %27, align 1
  %1988 = icmp eq i32 %1976, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %30, align 1
  %1990 = lshr i32 %1976, 31
  %1991 = trunc i32 %1990 to i8
  store i8 %1991, i8* %33, align 1
  %1992 = lshr i32 %1975, 31
  %1993 = xor i32 %1990, %1992
  %1994 = add nuw nsw i32 %1993, %1992
  %1995 = icmp eq i32 %1994, 2
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %39, align 1
  %1997 = icmp ne i8 %1991, 0
  %1998 = xor i1 %1997, %1995
  %.v443 = select i1 %1998, i64 10, i64 430
  %1999 = add i64 %1970, %.v443
  store i64 %1999, i64* %3, align 8
  br i1 %1998, label %block_4825c2, label %block_.L_482766

block_4825c2:                                     ; preds = %block_.L_4825b8
  %2000 = add i64 %1971, -28
  %2001 = add i64 %1999, 7
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  store i32 0, i32* %2002, align 4
  %.pre321 = load i64, i64* %3, align 8
  br label %block_.L_4825c9

block_.L_4825c9:                                  ; preds = %block_.L_482740, %block_4825c2
  %2003 = phi i64 [ %2772, %block_.L_482740 ], [ %.pre321, %block_4825c2 ]
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -28
  %2006 = add i64 %2003, 4
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = add i32 %2008, -4
  %2010 = icmp ult i32 %2008, 4
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %14, align 1
  %2012 = and i32 %2009, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i32 %2009, %2008
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  store i8 %2020, i8* %27, align 1
  %2021 = icmp eq i32 %2009, 0
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %30, align 1
  %2023 = lshr i32 %2009, 31
  %2024 = trunc i32 %2023 to i8
  store i8 %2024, i8* %33, align 1
  %2025 = lshr i32 %2008, 31
  %2026 = xor i32 %2023, %2025
  %2027 = add nuw nsw i32 %2026, %2025
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %39, align 1
  %2030 = icmp ne i8 %2024, 0
  %2031 = xor i1 %2030, %2028
  %.v379 = select i1 %2031, i64 10, i64 394
  %2032 = add i64 %2003, %.v379
  store i64 %2032, i64* %3, align 8
  br i1 %2031, label %block_4825d3, label %block_.L_482753

block_4825d3:                                     ; preds = %block_.L_4825c9
  %2033 = add i64 %2004, -76
  %2034 = add i64 %2032, 3
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RAX.i2276, align 8
  %2038 = add i64 %2004, -48
  %2039 = add i64 %2032, 6
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RCX.i2274, align 8
  %2043 = add i64 %2004, -24
  %2044 = add i64 %2032, 9
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = add i32 %2046, %2041
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RCX.i2274, align 8
  %2049 = lshr i32 %2047, 31
  %2050 = sub i32 %2036, %2047
  %2051 = icmp ult i32 %2036, %2047
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %14, align 1
  %2053 = and i32 %2050, 255
  %2054 = tail call i32 @llvm.ctpop.i32(i32 %2053)
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  store i8 %2057, i8* %21, align 1
  %2058 = xor i32 %2047, %2036
  %2059 = xor i32 %2058, %2050
  %2060 = lshr i32 %2059, 4
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  store i8 %2062, i8* %27, align 1
  %2063 = icmp eq i32 %2050, 0
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %30, align 1
  %2065 = lshr i32 %2050, 31
  %2066 = trunc i32 %2065 to i8
  store i8 %2066, i8* %33, align 1
  %2067 = lshr i32 %2036, 31
  %2068 = xor i32 %2049, %2067
  %2069 = xor i32 %2065, %2067
  %2070 = add nuw nsw i32 %2069, %2068
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %39, align 1
  %2073 = icmp ne i8 %2066, 0
  %2074 = xor i1 %2073, %2071
  %.v444 = select i1 %2074, i64 17, i64 31
  %2075 = add i64 %2032, %.v444
  %2076 = add i64 %2075, 3
  store i64 %2076, i64* %3, align 8
  br i1 %2074, label %block_4825e4, label %block_.L_4825f2

block_4825e4:                                     ; preds = %block_4825d3
  %2077 = load i32, i32* %2035, align 4
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RAX.i2276, align 8
  %2079 = add i64 %2004, -192
  %2080 = add i64 %2075, 9
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  store i32 %2077, i32* %2081, align 4
  %2082 = load i64, i64* %3, align 8
  %2083 = add i64 %2082, 17
  store i64 %2083, i64* %3, align 8
  br label %block_.L_4825fe

block_.L_4825f2:                                  ; preds = %block_4825d3
  %2084 = load i32, i32* %2040, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RAX.i2276, align 8
  %2086 = add i64 %2075, 6
  store i64 %2086, i64* %3, align 8
  %2087 = load i32, i32* %2045, align 4
  %2088 = add i32 %2087, %2084
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RAX.i2276, align 8
  %2090 = icmp ult i32 %2088, %2084
  %2091 = icmp ult i32 %2088, %2087
  %2092 = or i1 %2090, %2091
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %14, align 1
  %2094 = and i32 %2088, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %21, align 1
  %2099 = xor i32 %2087, %2084
  %2100 = xor i32 %2099, %2088
  %2101 = lshr i32 %2100, 4
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  store i8 %2103, i8* %27, align 1
  %2104 = icmp eq i32 %2088, 0
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %30, align 1
  %2106 = lshr i32 %2088, 31
  %2107 = trunc i32 %2106 to i8
  store i8 %2107, i8* %33, align 1
  %2108 = lshr i32 %2084, 31
  %2109 = lshr i32 %2087, 31
  %2110 = xor i32 %2106, %2108
  %2111 = xor i32 %2106, %2109
  %2112 = add nuw nsw i32 %2110, %2111
  %2113 = icmp eq i32 %2112, 2
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %39, align 1
  %2115 = add i64 %2004, -192
  %2116 = add i64 %2075, 12
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i32*
  store i32 %2088, i32* %2117, align 4
  %.pre322 = load i64, i64* %3, align 8
  br label %block_.L_4825fe

block_.L_4825fe:                                  ; preds = %block_.L_4825f2, %block_4825e4
  %2118 = phi i64 [ %.pre322, %block_.L_4825f2 ], [ %2083, %block_4825e4 ]
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -192
  %2121 = add i64 %2118, 6
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %2125 = sub i32 0, %2123
  %2126 = icmp ne i32 %2123, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %14, align 1
  %2128 = and i32 %2125, 255
  %2129 = tail call i32 @llvm.ctpop.i32(i32 %2128)
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  store i8 %2132, i8* %21, align 1
  %2133 = xor i32 %2123, %2125
  %2134 = lshr i32 %2133, 4
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %27, align 1
  %2137 = icmp eq i32 %2123, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %30, align 1
  %2139 = lshr i32 %2125, 31
  %2140 = trunc i32 %2139 to i8
  store i8 %2140, i8* %33, align 1
  %2141 = lshr i32 %2123, 31
  %2142 = add nuw nsw i32 %2139, %2141
  %2143 = icmp eq i32 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  %2145 = icmp ne i8 %2140, 0
  %2146 = xor i1 %2145, %2143
  %2147 = or i1 %2137, %2146
  %.v445 = select i1 %2147, i64 29, i64 16
  %2148 = add i64 %2118, %.v445
  store i64 %2148, i64* %3, align 8
  br i1 %2147, label %block_.L_48261b, label %block_48260e

block_48260e:                                     ; preds = %block_.L_4825fe
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2149 = add i64 %2119, -196
  %2150 = add i64 %2148, 8
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  store i32 0, i32* %2151, align 4
  %2152 = load i64, i64* %3, align 8
  %2153 = add i64 %2152, 60
  store i64 %2153, i64* %3, align 8
  br label %block_.L_482652

block_.L_48261b:                                  ; preds = %block_.L_4825fe
  %2154 = add i64 %2119, -76
  %2155 = add i64 %2148, 3
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RAX.i2276, align 8
  %2159 = add i64 %2119, -48
  %2160 = add i64 %2148, 6
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RCX.i2274, align 8
  %2164 = add i64 %2119, -24
  %2165 = add i64 %2148, 9
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i32*
  %2167 = load i32, i32* %2166, align 4
  %2168 = add i32 %2167, %2162
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RCX.i2274, align 8
  %2170 = lshr i32 %2168, 31
  %2171 = sub i32 %2157, %2168
  %2172 = icmp ult i32 %2157, %2168
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %14, align 1
  %2174 = and i32 %2171, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %21, align 1
  %2179 = xor i32 %2168, %2157
  %2180 = xor i32 %2179, %2171
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %27, align 1
  %2184 = icmp eq i32 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %30, align 1
  %2186 = lshr i32 %2171, 31
  %2187 = trunc i32 %2186 to i8
  store i8 %2187, i8* %33, align 1
  %2188 = lshr i32 %2157, 31
  %2189 = xor i32 %2170, %2188
  %2190 = xor i32 %2186, %2188
  %2191 = add nuw nsw i32 %2190, %2189
  %2192 = icmp eq i32 %2191, 2
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %39, align 1
  %2194 = icmp ne i8 %2187, 0
  %2195 = xor i1 %2194, %2192
  %.v449 = select i1 %2195, i64 17, i64 31
  %2196 = add i64 %2148, %.v449
  %2197 = add i64 %2196, 3
  store i64 %2197, i64* %3, align 8
  br i1 %2195, label %block_48262c, label %block_.L_48263a

block_48262c:                                     ; preds = %block_.L_48261b
  %2198 = load i32, i32* %2156, align 4
  %2199 = zext i32 %2198 to i64
  store i64 %2199, i64* %RAX.i2276, align 8
  %2200 = add i64 %2119, -200
  %2201 = add i64 %2196, 9
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  store i32 %2198, i32* %2202, align 4
  %2203 = load i64, i64* %3, align 8
  %2204 = add i64 %2203, 17
  store i64 %2204, i64* %3, align 8
  br label %block_.L_482646

block_.L_48263a:                                  ; preds = %block_.L_48261b
  %2205 = load i32, i32* %2161, align 4
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RAX.i2276, align 8
  %2207 = add i64 %2196, 6
  store i64 %2207, i64* %3, align 8
  %2208 = load i32, i32* %2166, align 4
  %2209 = add i32 %2208, %2205
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RAX.i2276, align 8
  %2211 = icmp ult i32 %2209, %2205
  %2212 = icmp ult i32 %2209, %2208
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %14, align 1
  %2215 = and i32 %2209, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  %2220 = xor i32 %2208, %2205
  %2221 = xor i32 %2220, %2209
  %2222 = lshr i32 %2221, 4
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  store i8 %2224, i8* %27, align 1
  %2225 = icmp eq i32 %2209, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %30, align 1
  %2227 = lshr i32 %2209, 31
  %2228 = trunc i32 %2227 to i8
  store i8 %2228, i8* %33, align 1
  %2229 = lshr i32 %2205, 31
  %2230 = lshr i32 %2208, 31
  %2231 = xor i32 %2227, %2229
  %2232 = xor i32 %2227, %2230
  %2233 = add nuw nsw i32 %2231, %2232
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %39, align 1
  %2236 = add i64 %2119, -200
  %2237 = add i64 %2196, 12
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i32*
  store i32 %2209, i32* %2238, align 4
  %.pre323 = load i64, i64* %3, align 8
  br label %block_.L_482646

block_.L_482646:                                  ; preds = %block_.L_48263a, %block_48262c
  %2239 = phi i64 [ %.pre323, %block_.L_48263a ], [ %2204, %block_48262c ]
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -200
  %2242 = add i64 %2239, 6
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RAX.i2276, align 8
  %2246 = add i64 %2240, -196
  %2247 = add i64 %2239, 12
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  store i32 %2244, i32* %2248, align 4
  %.pre324 = load i64, i64* %3, align 8
  br label %block_.L_482652

block_.L_482652:                                  ; preds = %block_.L_482646, %block_48260e
  %2249 = phi i64 [ %.pre324, %block_.L_482646 ], [ %2153, %block_48260e ]
  %2250 = load i64, i64* %RBP.i, align 8
  %2251 = add i64 %2250, -196
  %2252 = add i64 %2249, 6
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RAX.i2276, align 8
  %2256 = add i64 %2250, -68
  %2257 = add i64 %2249, 9
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  store i32 %2254, i32* %2258, align 4
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -60
  %2261 = load i64, i64* %3, align 8
  %2262 = add i64 %2261, 7
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2260 to i32*
  store i32 -2, i32* %2263, align 4
  %.pre325 = load i64, i64* %3, align 8
  br label %block_.L_482662

block_.L_482662:                                  ; preds = %block_.L_48272d, %block_.L_482652
  %2264 = phi i64 [ %2742, %block_.L_48272d ], [ %.pre325, %block_.L_482652 ]
  %2265 = load i64, i64* %RBP.i, align 8
  %2266 = add i64 %2265, -60
  %2267 = add i64 %2264, 4
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = add i32 %2269, -4
  %2271 = icmp ult i32 %2269, 4
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %14, align 1
  %2273 = and i32 %2270, 255
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %21, align 1
  %2278 = xor i32 %2270, %2269
  %2279 = lshr i32 %2278, 4
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  store i8 %2281, i8* %27, align 1
  %2282 = icmp eq i32 %2270, 0
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %30, align 1
  %2284 = lshr i32 %2270, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %33, align 1
  %2286 = lshr i32 %2269, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2286
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %39, align 1
  %2291 = icmp ne i8 %2285, 0
  %2292 = xor i1 %2291, %2289
  %.v380 = select i1 %2292, i64 10, i64 222
  %2293 = add i64 %2264, %.v380
  store i64 %2293, i64* %3, align 8
  br i1 %2292, label %block_48266c, label %block_.L_482740

block_48266c:                                     ; preds = %block_.L_482662
  %2294 = add i64 %2265, -72
  %2295 = add i64 %2293, 3
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i32*
  %2297 = load i32, i32* %2296, align 4
  %2298 = zext i32 %2297 to i64
  store i64 %2298, i64* %RAX.i2276, align 8
  %2299 = add i64 %2265, -52
  %2300 = add i64 %2293, 6
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = zext i32 %2302 to i64
  store i64 %2303, i64* %RCX.i2274, align 8
  %2304 = add i64 %2265, -28
  %2305 = add i64 %2293, 9
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = add i32 %2307, %2302
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RCX.i2274, align 8
  %2310 = icmp ult i32 %2308, %2302
  %2311 = icmp ult i32 %2308, %2307
  %2312 = or i1 %2310, %2311
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %14, align 1
  %2314 = and i32 %2308, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %21, align 1
  %2319 = xor i32 %2307, %2302
  %2320 = xor i32 %2319, %2308
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %27, align 1
  %2324 = icmp eq i32 %2308, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %30, align 1
  %2326 = lshr i32 %2308, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %33, align 1
  %2328 = lshr i32 %2302, 31
  %2329 = lshr i32 %2307, 31
  %2330 = xor i32 %2326, %2328
  %2331 = xor i32 %2326, %2329
  %2332 = add nuw nsw i32 %2330, %2331
  %2333 = icmp eq i32 %2332, 2
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %39, align 1
  %2335 = add i64 %2293, 12
  store i64 %2335, i64* %3, align 8
  %2336 = load i32, i32* %2268, align 4
  %2337 = add i32 %2336, %2308
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RCX.i2274, align 8
  %2339 = lshr i32 %2337, 31
  %2340 = sub i32 %2297, %2337
  %2341 = icmp ult i32 %2297, %2337
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %14, align 1
  %2343 = and i32 %2340, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %21, align 1
  %2348 = xor i32 %2337, %2297
  %2349 = xor i32 %2348, %2340
  %2350 = lshr i32 %2349, 4
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %27, align 1
  %2353 = icmp eq i32 %2340, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %30, align 1
  %2355 = lshr i32 %2340, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %33, align 1
  %2357 = lshr i32 %2297, 31
  %2358 = xor i32 %2339, %2357
  %2359 = xor i32 %2355, %2357
  %2360 = add nuw nsw i32 %2359, %2358
  %2361 = icmp eq i32 %2360, 2
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %39, align 1
  %2363 = icmp ne i8 %2356, 0
  %2364 = xor i1 %2363, %2361
  %.v446 = select i1 %2364, i64 20, i64 34
  %2365 = add i64 %2293, %.v446
  store i64 %2365, i64* %3, align 8
  %2366 = load i64, i64* %RBP.i, align 8
  br i1 %2364, label %block_482680, label %block_.L_48268e

block_482680:                                     ; preds = %block_48266c
  %2367 = add i64 %2366, -72
  %2368 = add i64 %2365, 3
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i2276, align 8
  %2372 = add i64 %2366, -204
  %2373 = add i64 %2365, 9
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  store i32 %2370, i32* %2374, align 4
  %2375 = load i64, i64* %3, align 8
  %2376 = add i64 %2375, 20
  store i64 %2376, i64* %3, align 8
  br label %block_.L_48269d

block_.L_48268e:                                  ; preds = %block_48266c
  %2377 = add i64 %2366, -52
  %2378 = add i64 %2365, 3
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i2276, align 8
  %2382 = add i64 %2366, -28
  %2383 = add i64 %2365, 6
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = add i32 %2385, %2380
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RAX.i2276, align 8
  %2388 = icmp ult i32 %2386, %2380
  %2389 = icmp ult i32 %2386, %2385
  %2390 = or i1 %2388, %2389
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %14, align 1
  %2392 = and i32 %2386, 255
  %2393 = tail call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  store i8 %2396, i8* %21, align 1
  %2397 = xor i32 %2385, %2380
  %2398 = xor i32 %2397, %2386
  %2399 = lshr i32 %2398, 4
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  store i8 %2401, i8* %27, align 1
  %2402 = icmp eq i32 %2386, 0
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %30, align 1
  %2404 = lshr i32 %2386, 31
  %2405 = trunc i32 %2404 to i8
  store i8 %2405, i8* %33, align 1
  %2406 = lshr i32 %2380, 31
  %2407 = lshr i32 %2385, 31
  %2408 = xor i32 %2404, %2406
  %2409 = xor i32 %2404, %2407
  %2410 = add nuw nsw i32 %2408, %2409
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %39, align 1
  %2413 = add i64 %2366, -60
  %2414 = add i64 %2365, 9
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = add i32 %2416, %2386
  %2418 = zext i32 %2417 to i64
  store i64 %2418, i64* %RAX.i2276, align 8
  %2419 = icmp ult i32 %2417, %2386
  %2420 = icmp ult i32 %2417, %2416
  %2421 = or i1 %2419, %2420
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %14, align 1
  %2423 = and i32 %2417, 255
  %2424 = tail call i32 @llvm.ctpop.i32(i32 %2423)
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  store i8 %2427, i8* %21, align 1
  %2428 = xor i32 %2416, %2386
  %2429 = xor i32 %2428, %2417
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  store i8 %2432, i8* %27, align 1
  %2433 = icmp eq i32 %2417, 0
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %30, align 1
  %2435 = lshr i32 %2417, 31
  %2436 = trunc i32 %2435 to i8
  store i8 %2436, i8* %33, align 1
  %2437 = lshr i32 %2416, 31
  %2438 = xor i32 %2435, %2404
  %2439 = xor i32 %2435, %2437
  %2440 = add nuw nsw i32 %2438, %2439
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %39, align 1
  %2443 = add i64 %2366, -204
  %2444 = add i64 %2365, 15
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2443 to i32*
  store i32 %2417, i32* %2445, align 4
  %.pre326 = load i64, i64* %3, align 8
  br label %block_.L_48269d

block_.L_48269d:                                  ; preds = %block_.L_48268e, %block_482680
  %2446 = phi i64 [ %.pre326, %block_.L_48268e ], [ %2376, %block_482680 ]
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -204
  %2449 = add i64 %2446, 6
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %2453 = sub i32 0, %2451
  %2454 = icmp ne i32 %2451, 0
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %14, align 1
  %2456 = and i32 %2453, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %21, align 1
  %2461 = xor i32 %2451, %2453
  %2462 = lshr i32 %2461, 4
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  store i8 %2464, i8* %27, align 1
  %2465 = icmp eq i32 %2451, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %30, align 1
  %2467 = lshr i32 %2453, 31
  %2468 = trunc i32 %2467 to i8
  store i8 %2468, i8* %33, align 1
  %2469 = lshr i32 %2451, 31
  %2470 = add nuw nsw i32 %2467, %2469
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %39, align 1
  %2473 = icmp ne i8 %2468, 0
  %2474 = xor i1 %2473, %2471
  %2475 = or i1 %2465, %2474
  %.v447 = select i1 %2475, i64 29, i64 16
  %2476 = add i64 %2446, %.v447
  store i64 %2476, i64* %3, align 8
  br i1 %2475, label %block_.L_4826ba, label %block_4826ad

block_4826ad:                                     ; preds = %block_.L_48269d
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2477 = add i64 %2447, -208
  %2478 = add i64 %2476, 8
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i32*
  store i32 0, i32* %2479, align 4
  %2480 = load i64, i64* %3, align 8
  %2481 = add i64 %2480, 66
  store i64 %2481, i64* %3, align 8
  br label %block_.L_4826f7

block_.L_4826ba:                                  ; preds = %block_.L_48269d
  %2482 = add i64 %2447, -72
  %2483 = add i64 %2476, 3
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RAX.i2276, align 8
  %2487 = add i64 %2447, -52
  %2488 = add i64 %2476, 6
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %RCX.i2274, align 8
  %2492 = add i64 %2447, -28
  %2493 = add i64 %2476, 9
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = add i32 %2495, %2490
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RCX.i2274, align 8
  %2498 = icmp ult i32 %2496, %2490
  %2499 = icmp ult i32 %2496, %2495
  %2500 = or i1 %2498, %2499
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %14, align 1
  %2502 = and i32 %2496, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %21, align 1
  %2507 = xor i32 %2495, %2490
  %2508 = xor i32 %2507, %2496
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %27, align 1
  %2512 = icmp eq i32 %2496, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %30, align 1
  %2514 = lshr i32 %2496, 31
  %2515 = trunc i32 %2514 to i8
  store i8 %2515, i8* %33, align 1
  %2516 = lshr i32 %2490, 31
  %2517 = lshr i32 %2495, 31
  %2518 = xor i32 %2514, %2516
  %2519 = xor i32 %2514, %2517
  %2520 = add nuw nsw i32 %2518, %2519
  %2521 = icmp eq i32 %2520, 2
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %39, align 1
  %2523 = add i64 %2447, -60
  %2524 = add i64 %2476, 12
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  %2526 = load i32, i32* %2525, align 4
  %2527 = add i32 %2526, %2496
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RCX.i2274, align 8
  %2529 = lshr i32 %2527, 31
  %2530 = sub i32 %2485, %2527
  %2531 = icmp ult i32 %2485, %2527
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %14, align 1
  %2533 = and i32 %2530, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  %2538 = xor i32 %2527, %2485
  %2539 = xor i32 %2538, %2530
  %2540 = lshr i32 %2539, 4
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  store i8 %2542, i8* %27, align 1
  %2543 = icmp eq i32 %2530, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %30, align 1
  %2545 = lshr i32 %2530, 31
  %2546 = trunc i32 %2545 to i8
  store i8 %2546, i8* %33, align 1
  %2547 = lshr i32 %2485, 31
  %2548 = xor i32 %2529, %2547
  %2549 = xor i32 %2545, %2547
  %2550 = add nuw nsw i32 %2549, %2548
  %2551 = icmp eq i32 %2550, 2
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %39, align 1
  %2553 = icmp ne i8 %2546, 0
  %2554 = xor i1 %2553, %2551
  %.v448 = select i1 %2554, i64 20, i64 34
  %2555 = add i64 %2476, %.v448
  store i64 %2555, i64* %3, align 8
  %2556 = load i64, i64* %RBP.i, align 8
  br i1 %2554, label %block_4826ce, label %block_.L_4826dc

block_4826ce:                                     ; preds = %block_.L_4826ba
  %2557 = add i64 %2556, -72
  %2558 = add i64 %2555, 3
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i32*
  %2560 = load i32, i32* %2559, align 4
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RAX.i2276, align 8
  %2562 = add i64 %2556, -212
  %2563 = add i64 %2555, 9
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i32*
  store i32 %2560, i32* %2564, align 4
  %2565 = load i64, i64* %3, align 8
  %2566 = add i64 %2565, 20
  store i64 %2566, i64* %3, align 8
  br label %block_.L_4826eb

block_.L_4826dc:                                  ; preds = %block_.L_4826ba
  %2567 = add i64 %2556, -52
  %2568 = add i64 %2555, 3
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  %2571 = zext i32 %2570 to i64
  store i64 %2571, i64* %RAX.i2276, align 8
  %2572 = add i64 %2556, -28
  %2573 = add i64 %2555, 6
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, %2570
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i2276, align 8
  %2578 = icmp ult i32 %2576, %2570
  %2579 = icmp ult i32 %2576, %2575
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %14, align 1
  %2582 = and i32 %2576, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  %2587 = xor i32 %2575, %2570
  %2588 = xor i32 %2587, %2576
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %27, align 1
  %2592 = icmp eq i32 %2576, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %30, align 1
  %2594 = lshr i32 %2576, 31
  %2595 = trunc i32 %2594 to i8
  store i8 %2595, i8* %33, align 1
  %2596 = lshr i32 %2570, 31
  %2597 = lshr i32 %2575, 31
  %2598 = xor i32 %2594, %2596
  %2599 = xor i32 %2594, %2597
  %2600 = add nuw nsw i32 %2598, %2599
  %2601 = icmp eq i32 %2600, 2
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %39, align 1
  %2603 = add i64 %2556, -60
  %2604 = add i64 %2555, 9
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  %2607 = add i32 %2606, %2576
  %2608 = zext i32 %2607 to i64
  store i64 %2608, i64* %RAX.i2276, align 8
  %2609 = icmp ult i32 %2607, %2576
  %2610 = icmp ult i32 %2607, %2606
  %2611 = or i1 %2609, %2610
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %14, align 1
  %2613 = and i32 %2607, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %21, align 1
  %2618 = xor i32 %2606, %2576
  %2619 = xor i32 %2618, %2607
  %2620 = lshr i32 %2619, 4
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  store i8 %2622, i8* %27, align 1
  %2623 = icmp eq i32 %2607, 0
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %30, align 1
  %2625 = lshr i32 %2607, 31
  %2626 = trunc i32 %2625 to i8
  store i8 %2626, i8* %33, align 1
  %2627 = lshr i32 %2606, 31
  %2628 = xor i32 %2625, %2594
  %2629 = xor i32 %2625, %2627
  %2630 = add nuw nsw i32 %2628, %2629
  %2631 = icmp eq i32 %2630, 2
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %39, align 1
  %2633 = add i64 %2556, -212
  %2634 = add i64 %2555, 15
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2633 to i32*
  store i32 %2607, i32* %2635, align 4
  %.pre327 = load i64, i64* %3, align 8
  br label %block_.L_4826eb

block_.L_4826eb:                                  ; preds = %block_.L_4826dc, %block_4826ce
  %2636 = phi i64 [ %.pre327, %block_.L_4826dc ], [ %2566, %block_4826ce ]
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -212
  %2639 = add i64 %2636, 6
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = zext i32 %2641 to i64
  store i64 %2642, i64* %RAX.i2276, align 8
  %2643 = add i64 %2637, -208
  %2644 = add i64 %2636, 12
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i32*
  store i32 %2641, i32* %2645, align 4
  %.pre328 = load i64, i64* %3, align 8
  br label %block_.L_4826f7

block_.L_4826f7:                                  ; preds = %block_.L_4826eb, %block_4826ad
  %2646 = phi i64 [ %.pre328, %block_.L_4826eb ], [ %2481, %block_4826ad ]
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -208
  %2649 = add i64 %2646, 6
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RAX.i2276, align 8
  %2653 = add i64 %2647, -64
  %2654 = add i64 %2646, 9
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  store i32 %2651, i32* %2655, align 4
  %2656 = load i64, i64* %3, align 8
  %2657 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %2657, i64* %RCX.i2274, align 8
  %2658 = load i64, i64* %RBP.i, align 8
  %2659 = add i64 %2658, -68
  %2660 = add i64 %2656, 12
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %RDX.i2161, align 8
  %2664 = shl nsw i64 %2663, 3
  %2665 = add i64 %2664, %2657
  %2666 = add i64 %2656, 16
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i64*
  %2668 = load i64, i64* %2667, align 8
  store i64 %2668, i64* %RCX.i2274, align 8
  %2669 = add i64 %2658, -64
  %2670 = add i64 %2656, 20
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = sext i32 %2672 to i64
  store i64 %2673, i64* %RDX.i2161, align 8
  %2674 = add i64 %2668, %2673
  %2675 = add i64 %2656, 24
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i8*
  %2677 = load i8, i8* %2676, align 1
  %2678 = zext i8 %2677 to i64
  store i64 %2678, i64* %RAX.i2276, align 8
  %2679 = zext i8 %2677 to i32
  %2680 = add i64 %2658, -80
  %2681 = add i64 %2656, 27
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i32*
  %2683 = load i32, i32* %2682, align 4
  %2684 = sub i32 %2679, %2683
  %2685 = icmp ult i32 %2679, %2683
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %14, align 1
  %2687 = and i32 %2684, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %21, align 1
  %2692 = xor i32 %2683, %2679
  %2693 = xor i32 %2692, %2684
  %2694 = lshr i32 %2693, 4
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  store i8 %2696, i8* %27, align 1
  %2697 = icmp eq i32 %2684, 0
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %30, align 1
  %2699 = lshr i32 %2684, 31
  %2700 = trunc i32 %2699 to i8
  store i8 %2700, i8* %33, align 1
  %2701 = lshr i32 %2683, 31
  %2702 = add nuw nsw i32 %2699, %2701
  %2703 = icmp eq i32 %2702, 2
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %39, align 1
  %2705 = icmp ne i8 %2700, 0
  %2706 = xor i1 %2705, %2703
  %.v381 = select i1 %2706, i64 33, i64 45
  %2707 = add i64 %2656, %.v381
  store i64 %2707, i64* %3, align 8
  br i1 %2706, label %block_482721, label %block_.L_48272d

block_482721:                                     ; preds = %block_.L_4826f7
  %2708 = add i64 %2658, -4
  %2709 = add i64 %2707, 7
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  store i32 0, i32* %2710, align 4
  %2711 = load i64, i64* %3, align 8
  %2712 = add i64 %2711, 2461
  store i64 %2712, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_48272d:                                  ; preds = %block_.L_4826f7
  %2713 = add i64 %2658, -60
  %2714 = add i64 %2707, 8
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = add i32 %2716, 1
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RAX.i2276, align 8
  %2719 = icmp eq i32 %2716, -1
  %2720 = icmp eq i32 %2717, 0
  %2721 = or i1 %2719, %2720
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %14, align 1
  %2723 = and i32 %2717, 255
  %2724 = tail call i32 @llvm.ctpop.i32(i32 %2723)
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = xor i8 %2726, 1
  store i8 %2727, i8* %21, align 1
  %2728 = xor i32 %2717, %2716
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  store i8 %2731, i8* %27, align 1
  %2732 = zext i1 %2720 to i8
  store i8 %2732, i8* %30, align 1
  %2733 = lshr i32 %2717, 31
  %2734 = trunc i32 %2733 to i8
  store i8 %2734, i8* %33, align 1
  %2735 = lshr i32 %2716, 31
  %2736 = xor i32 %2733, %2735
  %2737 = add nuw nsw i32 %2736, %2733
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %39, align 1
  %2740 = add i64 %2707, 14
  store i64 %2740, i64* %3, align 8
  store i32 %2717, i32* %2715, align 4
  %2741 = load i64, i64* %3, align 8
  %2742 = add i64 %2741, -217
  store i64 %2742, i64* %3, align 8
  br label %block_.L_482662

block_.L_482740:                                  ; preds = %block_.L_482662
  %2743 = add i64 %2265, -28
  %2744 = add i64 %2293, 8
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = add i32 %2746, 1
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RAX.i2276, align 8
  %2749 = icmp eq i32 %2746, -1
  %2750 = icmp eq i32 %2747, 0
  %2751 = or i1 %2749, %2750
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %14, align 1
  %2753 = and i32 %2747, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753)
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %21, align 1
  %2758 = xor i32 %2747, %2746
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %27, align 1
  %2762 = zext i1 %2750 to i8
  store i8 %2762, i8* %30, align 1
  %2763 = lshr i32 %2747, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %33, align 1
  %2765 = lshr i32 %2746, 31
  %2766 = xor i32 %2763, %2765
  %2767 = add nuw nsw i32 %2766, %2763
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %39, align 1
  %2770 = add i64 %2293, 14
  store i64 %2770, i64* %3, align 8
  store i32 %2747, i32* %2745, align 4
  %2771 = load i64, i64* %3, align 8
  %2772 = add i64 %2771, -389
  store i64 %2772, i64* %3, align 8
  br label %block_.L_4825c9

block_.L_482753:                                  ; preds = %block_.L_4825c9
  %2773 = add i64 %2004, -24
  %2774 = add i64 %2032, 8
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = add i32 %2776, 1
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RAX.i2276, align 8
  %2779 = icmp eq i32 %2776, -1
  %2780 = icmp eq i32 %2777, 0
  %2781 = or i1 %2779, %2780
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %14, align 1
  %2783 = and i32 %2777, 255
  %2784 = tail call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  store i8 %2787, i8* %21, align 1
  %2788 = xor i32 %2777, %2776
  %2789 = lshr i32 %2788, 4
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %27, align 1
  %2792 = zext i1 %2780 to i8
  store i8 %2792, i8* %30, align 1
  %2793 = lshr i32 %2777, 31
  %2794 = trunc i32 %2793 to i8
  store i8 %2794, i8* %33, align 1
  %2795 = lshr i32 %2776, 31
  %2796 = xor i32 %2793, %2795
  %2797 = add nuw nsw i32 %2796, %2793
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %39, align 1
  %2800 = add i64 %2032, 14
  store i64 %2800, i64* %3, align 8
  store i32 %2777, i32* %2775, align 4
  %2801 = load i64, i64* %3, align 8
  %2802 = add i64 %2801, -425
  store i64 %2802, i64* %3, align 8
  br label %block_.L_4825b8

block_.L_482766:                                  ; preds = %block_.L_4825b8
  %2803 = add i64 %1999, 2349
  br label %block_.L_483093

block_.L_48276b:                                  ; preds = %block_.L_4825a7
  %2804 = add i64 %1265, -44
  %2805 = add i64 %1966, 4
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  store i8 0, i8* %14, align 1
  %2808 = and i32 %2807, 255
  %2809 = tail call i32 @llvm.ctpop.i32(i32 %2808)
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  %2812 = xor i8 %2811, 1
  store i8 %2812, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2813 = icmp eq i32 %2807, 0
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %30, align 1
  %2815 = lshr i32 %2807, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v391 = select i1 %2813, i64 10, i64 452
  %2817 = add i64 %1966, %.v391
  store i64 %2817, i64* %3, align 8
  br i1 %2813, label %block_482775, label %block_.L_48292f

block_482775:                                     ; preds = %block_.L_48276b
  %2818 = add i64 %1265, -24
  %2819 = add i64 %2817, 7
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  store i32 0, i32* %2820, align 4
  %.pre329 = load i64, i64* %3, align 8
  br label %block_.L_48277c

block_.L_48277c:                                  ; preds = %block_.L_482917, %block_482775
  %2821 = phi i64 [ %3651, %block_.L_482917 ], [ %.pre329, %block_482775 ]
  %2822 = load i64, i64* %RBP.i, align 8
  %2823 = add i64 %2822, -24
  %2824 = add i64 %2821, 4
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  %2826 = load i32, i32* %2825, align 4
  %2827 = add i32 %2826, -4
  %2828 = icmp ult i32 %2826, 4
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %14, align 1
  %2830 = and i32 %2827, 255
  %2831 = tail call i32 @llvm.ctpop.i32(i32 %2830)
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  %2834 = xor i8 %2833, 1
  store i8 %2834, i8* %21, align 1
  %2835 = xor i32 %2827, %2826
  %2836 = lshr i32 %2835, 4
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  store i8 %2838, i8* %27, align 1
  %2839 = icmp eq i32 %2827, 0
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %30, align 1
  %2841 = lshr i32 %2827, 31
  %2842 = trunc i32 %2841 to i8
  store i8 %2842, i8* %33, align 1
  %2843 = lshr i32 %2826, 31
  %2844 = xor i32 %2841, %2843
  %2845 = add nuw nsw i32 %2844, %2843
  %2846 = icmp eq i32 %2845, 2
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %39, align 1
  %2848 = icmp ne i8 %2842, 0
  %2849 = xor i1 %2848, %2846
  %.v436 = select i1 %2849, i64 10, i64 430
  %2850 = add i64 %2821, %.v436
  store i64 %2850, i64* %3, align 8
  br i1 %2849, label %block_482786, label %block_.L_48292a

block_482786:                                     ; preds = %block_.L_48277c
  %2851 = add i64 %2822, -28
  %2852 = add i64 %2850, 7
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  store i32 0, i32* %2853, align 4
  %.pre330 = load i64, i64* %3, align 8
  br label %block_.L_48278d

block_.L_48278d:                                  ; preds = %block_.L_482904, %block_482786
  %2854 = phi i64 [ %3621, %block_.L_482904 ], [ %.pre330, %block_482786 ]
  %2855 = load i64, i64* %RBP.i, align 8
  %2856 = add i64 %2855, -28
  %2857 = add i64 %2854, 4
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i32*
  %2859 = load i32, i32* %2858, align 4
  %2860 = add i32 %2859, -4
  %2861 = icmp ult i32 %2859, 4
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %14, align 1
  %2863 = and i32 %2860, 255
  %2864 = tail call i32 @llvm.ctpop.i32(i32 %2863)
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  store i8 %2867, i8* %21, align 1
  %2868 = xor i32 %2860, %2859
  %2869 = lshr i32 %2868, 4
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  store i8 %2871, i8* %27, align 1
  %2872 = icmp eq i32 %2860, 0
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %30, align 1
  %2874 = lshr i32 %2860, 31
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %33, align 1
  %2876 = lshr i32 %2859, 31
  %2877 = xor i32 %2874, %2876
  %2878 = add nuw nsw i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %39, align 1
  %2881 = icmp ne i8 %2875, 0
  %2882 = xor i1 %2881, %2879
  %.v382 = select i1 %2882, i64 10, i64 394
  %2883 = add i64 %2854, %.v382
  store i64 %2883, i64* %3, align 8
  br i1 %2882, label %block_482797, label %block_.L_482917

block_482797:                                     ; preds = %block_.L_48278d
  %2884 = add i64 %2855, -72
  %2885 = add i64 %2883, 3
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RAX.i2276, align 8
  %2889 = add i64 %2855, -52
  %2890 = add i64 %2883, 6
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2889 to i32*
  %2892 = load i32, i32* %2891, align 4
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RCX.i2274, align 8
  %2894 = add i64 %2883, 9
  store i64 %2894, i64* %3, align 8
  %2895 = load i32, i32* %2858, align 4
  %2896 = add i32 %2895, %2892
  %2897 = zext i32 %2896 to i64
  store i64 %2897, i64* %RCX.i2274, align 8
  %2898 = lshr i32 %2896, 31
  %2899 = sub i32 %2887, %2896
  %2900 = icmp ult i32 %2887, %2896
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %14, align 1
  %2902 = and i32 %2899, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %21, align 1
  %2907 = xor i32 %2896, %2887
  %2908 = xor i32 %2907, %2899
  %2909 = lshr i32 %2908, 4
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  store i8 %2911, i8* %27, align 1
  %2912 = icmp eq i32 %2899, 0
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %30, align 1
  %2914 = lshr i32 %2899, 31
  %2915 = trunc i32 %2914 to i8
  store i8 %2915, i8* %33, align 1
  %2916 = lshr i32 %2887, 31
  %2917 = xor i32 %2898, %2916
  %2918 = xor i32 %2914, %2916
  %2919 = add nuw nsw i32 %2918, %2917
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %39, align 1
  %2922 = icmp ne i8 %2915, 0
  %2923 = xor i1 %2922, %2920
  %.v437 = select i1 %2923, i64 17, i64 31
  %2924 = add i64 %2883, %.v437
  %2925 = add i64 %2924, 3
  store i64 %2925, i64* %3, align 8
  br i1 %2923, label %block_4827a8, label %block_.L_4827b6

block_4827a8:                                     ; preds = %block_482797
  %2926 = load i32, i32* %2886, align 4
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i2276, align 8
  %2928 = add i64 %2855, -216
  %2929 = add i64 %2924, 9
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2928 to i32*
  store i32 %2926, i32* %2930, align 4
  %2931 = load i64, i64* %3, align 8
  %2932 = add i64 %2931, 17
  store i64 %2932, i64* %3, align 8
  br label %block_.L_4827c2

block_.L_4827b6:                                  ; preds = %block_482797
  %2933 = load i32, i32* %2891, align 4
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RAX.i2276, align 8
  %2935 = add i64 %2924, 6
  store i64 %2935, i64* %3, align 8
  %2936 = load i32, i32* %2858, align 4
  %2937 = add i32 %2936, %2933
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RAX.i2276, align 8
  %2939 = icmp ult i32 %2937, %2933
  %2940 = icmp ult i32 %2937, %2936
  %2941 = or i1 %2939, %2940
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %14, align 1
  %2943 = and i32 %2937, 255
  %2944 = tail call i32 @llvm.ctpop.i32(i32 %2943)
  %2945 = trunc i32 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = xor i8 %2946, 1
  store i8 %2947, i8* %21, align 1
  %2948 = xor i32 %2936, %2933
  %2949 = xor i32 %2948, %2937
  %2950 = lshr i32 %2949, 4
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  store i8 %2952, i8* %27, align 1
  %2953 = icmp eq i32 %2937, 0
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %30, align 1
  %2955 = lshr i32 %2937, 31
  %2956 = trunc i32 %2955 to i8
  store i8 %2956, i8* %33, align 1
  %2957 = lshr i32 %2933, 31
  %2958 = lshr i32 %2936, 31
  %2959 = xor i32 %2955, %2957
  %2960 = xor i32 %2955, %2958
  %2961 = add nuw nsw i32 %2959, %2960
  %2962 = icmp eq i32 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %39, align 1
  %2964 = add i64 %2855, -216
  %2965 = add i64 %2924, 12
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  store i32 %2937, i32* %2966, align 4
  %.pre331 = load i64, i64* %3, align 8
  br label %block_.L_4827c2

block_.L_4827c2:                                  ; preds = %block_.L_4827b6, %block_4827a8
  %2967 = phi i64 [ %.pre331, %block_.L_4827b6 ], [ %2932, %block_4827a8 ]
  %2968 = load i64, i64* %RBP.i, align 8
  %2969 = add i64 %2968, -216
  %2970 = add i64 %2967, 6
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %2974 = sub i32 0, %2972
  %2975 = icmp ne i32 %2972, 0
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %14, align 1
  %2977 = and i32 %2974, 255
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %21, align 1
  %2982 = xor i32 %2972, %2974
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %27, align 1
  %2986 = icmp eq i32 %2972, 0
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %30, align 1
  %2988 = lshr i32 %2974, 31
  %2989 = trunc i32 %2988 to i8
  store i8 %2989, i8* %33, align 1
  %2990 = lshr i32 %2972, 31
  %2991 = add nuw nsw i32 %2988, %2990
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %39, align 1
  %2994 = icmp ne i8 %2989, 0
  %2995 = xor i1 %2994, %2992
  %2996 = or i1 %2986, %2995
  %.v438 = select i1 %2996, i64 29, i64 16
  %2997 = add i64 %2967, %.v438
  store i64 %2997, i64* %3, align 8
  br i1 %2996, label %block_.L_4827df, label %block_4827d2

block_4827d2:                                     ; preds = %block_.L_4827c2
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2998 = add i64 %2968, -220
  %2999 = add i64 %2997, 8
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i32*
  store i32 0, i32* %3000, align 4
  %3001 = load i64, i64* %3, align 8
  %3002 = add i64 %3001, 60
  store i64 %3002, i64* %3, align 8
  br label %block_.L_482816

block_.L_4827df:                                  ; preds = %block_.L_4827c2
  %3003 = add i64 %2968, -72
  %3004 = add i64 %2997, 3
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3003 to i32*
  %3006 = load i32, i32* %3005, align 4
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i2276, align 8
  %3008 = add i64 %2968, -52
  %3009 = add i64 %2997, 6
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = zext i32 %3011 to i64
  store i64 %3012, i64* %RCX.i2274, align 8
  %3013 = add i64 %2968, -28
  %3014 = add i64 %2997, 9
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = add i32 %3016, %3011
  %3018 = zext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i2274, align 8
  %3019 = lshr i32 %3017, 31
  %3020 = sub i32 %3006, %3017
  %3021 = icmp ult i32 %3006, %3017
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %14, align 1
  %3023 = and i32 %3020, 255
  %3024 = tail call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  store i8 %3027, i8* %21, align 1
  %3028 = xor i32 %3017, %3006
  %3029 = xor i32 %3028, %3020
  %3030 = lshr i32 %3029, 4
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  store i8 %3032, i8* %27, align 1
  %3033 = icmp eq i32 %3020, 0
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %30, align 1
  %3035 = lshr i32 %3020, 31
  %3036 = trunc i32 %3035 to i8
  store i8 %3036, i8* %33, align 1
  %3037 = lshr i32 %3006, 31
  %3038 = xor i32 %3019, %3037
  %3039 = xor i32 %3035, %3037
  %3040 = add nuw nsw i32 %3039, %3038
  %3041 = icmp eq i32 %3040, 2
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %39, align 1
  %3043 = icmp ne i8 %3036, 0
  %3044 = xor i1 %3043, %3041
  %.v442 = select i1 %3044, i64 17, i64 31
  %3045 = add i64 %2997, %.v442
  %3046 = add i64 %3045, 3
  store i64 %3046, i64* %3, align 8
  br i1 %3044, label %block_4827f0, label %block_.L_4827fe

block_4827f0:                                     ; preds = %block_.L_4827df
  %3047 = load i32, i32* %3005, align 4
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i2276, align 8
  %3049 = add i64 %2968, -224
  %3050 = add i64 %3045, 9
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  store i32 %3047, i32* %3051, align 4
  %3052 = load i64, i64* %3, align 8
  %3053 = add i64 %3052, 17
  store i64 %3053, i64* %3, align 8
  br label %block_.L_48280a

block_.L_4827fe:                                  ; preds = %block_.L_4827df
  %3054 = load i32, i32* %3010, align 4
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX.i2276, align 8
  %3056 = add i64 %3045, 6
  store i64 %3056, i64* %3, align 8
  %3057 = load i32, i32* %3015, align 4
  %3058 = add i32 %3057, %3054
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RAX.i2276, align 8
  %3060 = icmp ult i32 %3058, %3054
  %3061 = icmp ult i32 %3058, %3057
  %3062 = or i1 %3060, %3061
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %14, align 1
  %3064 = and i32 %3058, 255
  %3065 = tail call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  store i8 %3068, i8* %21, align 1
  %3069 = xor i32 %3057, %3054
  %3070 = xor i32 %3069, %3058
  %3071 = lshr i32 %3070, 4
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  store i8 %3073, i8* %27, align 1
  %3074 = icmp eq i32 %3058, 0
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %30, align 1
  %3076 = lshr i32 %3058, 31
  %3077 = trunc i32 %3076 to i8
  store i8 %3077, i8* %33, align 1
  %3078 = lshr i32 %3054, 31
  %3079 = lshr i32 %3057, 31
  %3080 = xor i32 %3076, %3078
  %3081 = xor i32 %3076, %3079
  %3082 = add nuw nsw i32 %3080, %3081
  %3083 = icmp eq i32 %3082, 2
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %39, align 1
  %3085 = add i64 %2968, -224
  %3086 = add i64 %3045, 12
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  store i32 %3058, i32* %3087, align 4
  %.pre332 = load i64, i64* %3, align 8
  br label %block_.L_48280a

block_.L_48280a:                                  ; preds = %block_.L_4827fe, %block_4827f0
  %3088 = phi i64 [ %.pre332, %block_.L_4827fe ], [ %3053, %block_4827f0 ]
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -224
  %3091 = add i64 %3088, 6
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RAX.i2276, align 8
  %3095 = add i64 %3089, -220
  %3096 = add i64 %3088, 12
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  store i32 %3093, i32* %3097, align 4
  %.pre333 = load i64, i64* %3, align 8
  br label %block_.L_482816

block_.L_482816:                                  ; preds = %block_.L_48280a, %block_4827d2
  %3098 = phi i64 [ %.pre333, %block_.L_48280a ], [ %3002, %block_4827d2 ]
  %3099 = load i64, i64* %RBP.i, align 8
  %3100 = add i64 %3099, -220
  %3101 = add i64 %3098, 6
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RAX.i2276, align 8
  %3105 = add i64 %3099, -64
  %3106 = add i64 %3098, 9
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  store i32 %3103, i32* %3107, align 4
  %3108 = load i64, i64* %RBP.i, align 8
  %3109 = add i64 %3108, -56
  %3110 = load i64, i64* %3, align 8
  %3111 = add i64 %3110, 7
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3109 to i32*
  store i32 -2, i32* %3112, align 4
  %.pre334 = load i64, i64* %3, align 8
  br label %block_.L_482826

block_.L_482826:                                  ; preds = %block_.L_4828f1, %block_.L_482816
  %3113 = phi i64 [ %3591, %block_.L_4828f1 ], [ %.pre334, %block_.L_482816 ]
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -56
  %3116 = add i64 %3113, 4
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3115 to i32*
  %3118 = load i32, i32* %3117, align 4
  %3119 = add i32 %3118, -4
  %3120 = icmp ult i32 %3118, 4
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %14, align 1
  %3122 = and i32 %3119, 255
  %3123 = tail call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  store i8 %3126, i8* %21, align 1
  %3127 = xor i32 %3119, %3118
  %3128 = lshr i32 %3127, 4
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  store i8 %3130, i8* %27, align 1
  %3131 = icmp eq i32 %3119, 0
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %30, align 1
  %3133 = lshr i32 %3119, 31
  %3134 = trunc i32 %3133 to i8
  store i8 %3134, i8* %33, align 1
  %3135 = lshr i32 %3118, 31
  %3136 = xor i32 %3133, %3135
  %3137 = add nuw nsw i32 %3136, %3135
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %39, align 1
  %3140 = icmp ne i8 %3134, 0
  %3141 = xor i1 %3140, %3138
  %.v383 = select i1 %3141, i64 10, i64 222
  %3142 = add i64 %3113, %.v383
  store i64 %3142, i64* %3, align 8
  br i1 %3141, label %block_482830, label %block_.L_482904

block_482830:                                     ; preds = %block_.L_482826
  %3143 = add i64 %3114, -76
  %3144 = add i64 %3142, 3
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i32*
  %3146 = load i32, i32* %3145, align 4
  %3147 = zext i32 %3146 to i64
  store i64 %3147, i64* %RAX.i2276, align 8
  %3148 = add i64 %3114, -48
  %3149 = add i64 %3142, 6
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i32*
  %3151 = load i32, i32* %3150, align 4
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RCX.i2274, align 8
  %3153 = add i64 %3142, 9
  store i64 %3153, i64* %3, align 8
  %3154 = load i32, i32* %3117, align 4
  %3155 = add i32 %3154, %3151
  %3156 = zext i32 %3155 to i64
  store i64 %3156, i64* %RCX.i2274, align 8
  %3157 = icmp ult i32 %3155, %3151
  %3158 = icmp ult i32 %3155, %3154
  %3159 = or i1 %3157, %3158
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %14, align 1
  %3161 = and i32 %3155, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %21, align 1
  %3166 = xor i32 %3154, %3151
  %3167 = xor i32 %3166, %3155
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %27, align 1
  %3171 = icmp eq i32 %3155, 0
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %30, align 1
  %3173 = lshr i32 %3155, 31
  %3174 = trunc i32 %3173 to i8
  store i8 %3174, i8* %33, align 1
  %3175 = lshr i32 %3151, 31
  %3176 = lshr i32 %3154, 31
  %3177 = xor i32 %3173, %3175
  %3178 = xor i32 %3173, %3176
  %3179 = add nuw nsw i32 %3177, %3178
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %39, align 1
  %3182 = add i64 %3114, -24
  %3183 = add i64 %3142, 12
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = add i32 %3185, %3155
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RCX.i2274, align 8
  %3188 = lshr i32 %3186, 31
  %3189 = sub i32 %3146, %3186
  %3190 = icmp ult i32 %3146, %3186
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %14, align 1
  %3192 = and i32 %3189, 255
  %3193 = tail call i32 @llvm.ctpop.i32(i32 %3192)
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  %3196 = xor i8 %3195, 1
  store i8 %3196, i8* %21, align 1
  %3197 = xor i32 %3186, %3146
  %3198 = xor i32 %3197, %3189
  %3199 = lshr i32 %3198, 4
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  store i8 %3201, i8* %27, align 1
  %3202 = icmp eq i32 %3189, 0
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %30, align 1
  %3204 = lshr i32 %3189, 31
  %3205 = trunc i32 %3204 to i8
  store i8 %3205, i8* %33, align 1
  %3206 = lshr i32 %3146, 31
  %3207 = xor i32 %3188, %3206
  %3208 = xor i32 %3204, %3206
  %3209 = add nuw nsw i32 %3208, %3207
  %3210 = icmp eq i32 %3209, 2
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %39, align 1
  %3212 = icmp ne i8 %3205, 0
  %3213 = xor i1 %3212, %3210
  %.v439 = select i1 %3213, i64 20, i64 34
  %3214 = add i64 %3142, %.v439
  store i64 %3214, i64* %3, align 8
  %3215 = load i64, i64* %RBP.i, align 8
  br i1 %3213, label %block_482844, label %block_.L_482852

block_482844:                                     ; preds = %block_482830
  %3216 = add i64 %3215, -76
  %3217 = add i64 %3214, 3
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = zext i32 %3219 to i64
  store i64 %3220, i64* %RAX.i2276, align 8
  %3221 = add i64 %3215, -228
  %3222 = add i64 %3214, 9
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  store i32 %3219, i32* %3223, align 4
  %3224 = load i64, i64* %3, align 8
  %3225 = add i64 %3224, 20
  store i64 %3225, i64* %3, align 8
  br label %block_.L_482861

block_.L_482852:                                  ; preds = %block_482830
  %3226 = add i64 %3215, -48
  %3227 = add i64 %3214, 3
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3226 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RAX.i2276, align 8
  %3231 = add i64 %3215, -56
  %3232 = add i64 %3214, 6
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i32*
  %3234 = load i32, i32* %3233, align 4
  %3235 = add i32 %3234, %3229
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RAX.i2276, align 8
  %3237 = icmp ult i32 %3235, %3229
  %3238 = icmp ult i32 %3235, %3234
  %3239 = or i1 %3237, %3238
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %14, align 1
  %3241 = and i32 %3235, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1
  %3246 = xor i32 %3234, %3229
  %3247 = xor i32 %3246, %3235
  %3248 = lshr i32 %3247, 4
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  store i8 %3250, i8* %27, align 1
  %3251 = icmp eq i32 %3235, 0
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %30, align 1
  %3253 = lshr i32 %3235, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %33, align 1
  %3255 = lshr i32 %3229, 31
  %3256 = lshr i32 %3234, 31
  %3257 = xor i32 %3253, %3255
  %3258 = xor i32 %3253, %3256
  %3259 = add nuw nsw i32 %3257, %3258
  %3260 = icmp eq i32 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %39, align 1
  %3262 = add i64 %3215, -24
  %3263 = add i64 %3214, 9
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = add i32 %3265, %3235
  %3267 = zext i32 %3266 to i64
  store i64 %3267, i64* %RAX.i2276, align 8
  %3268 = icmp ult i32 %3266, %3235
  %3269 = icmp ult i32 %3266, %3265
  %3270 = or i1 %3268, %3269
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %14, align 1
  %3272 = and i32 %3266, 255
  %3273 = tail call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  store i8 %3276, i8* %21, align 1
  %3277 = xor i32 %3265, %3235
  %3278 = xor i32 %3277, %3266
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %27, align 1
  %3282 = icmp eq i32 %3266, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %30, align 1
  %3284 = lshr i32 %3266, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %33, align 1
  %3286 = lshr i32 %3265, 31
  %3287 = xor i32 %3284, %3253
  %3288 = xor i32 %3284, %3286
  %3289 = add nuw nsw i32 %3287, %3288
  %3290 = icmp eq i32 %3289, 2
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %39, align 1
  %3292 = add i64 %3215, -228
  %3293 = add i64 %3214, 15
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  store i32 %3266, i32* %3294, align 4
  %.pre335 = load i64, i64* %3, align 8
  br label %block_.L_482861

block_.L_482861:                                  ; preds = %block_.L_482852, %block_482844
  %3295 = phi i64 [ %.pre335, %block_.L_482852 ], [ %3225, %block_482844 ]
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -228
  %3298 = add i64 %3295, 6
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i32*
  %3300 = load i32, i32* %3299, align 4
  %3301 = zext i32 %3300 to i64
  store i64 %3301, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %3302 = sub i32 0, %3300
  %3303 = icmp ne i32 %3300, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %14, align 1
  %3305 = and i32 %3302, 255
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %21, align 1
  %3310 = xor i32 %3300, %3302
  %3311 = lshr i32 %3310, 4
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  store i8 %3313, i8* %27, align 1
  %3314 = icmp eq i32 %3300, 0
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %30, align 1
  %3316 = lshr i32 %3302, 31
  %3317 = trunc i32 %3316 to i8
  store i8 %3317, i8* %33, align 1
  %3318 = lshr i32 %3300, 31
  %3319 = add nuw nsw i32 %3316, %3318
  %3320 = icmp eq i32 %3319, 2
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %39, align 1
  %3322 = icmp ne i8 %3317, 0
  %3323 = xor i1 %3322, %3320
  %3324 = or i1 %3314, %3323
  %.v440 = select i1 %3324, i64 29, i64 16
  %3325 = add i64 %3295, %.v440
  store i64 %3325, i64* %3, align 8
  br i1 %3324, label %block_.L_48287e, label %block_482871

block_482871:                                     ; preds = %block_.L_482861
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3326 = add i64 %3296, -232
  %3327 = add i64 %3325, 8
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i32*
  store i32 0, i32* %3328, align 4
  %3329 = load i64, i64* %3, align 8
  %3330 = add i64 %3329, 66
  store i64 %3330, i64* %3, align 8
  br label %block_.L_4828bb

block_.L_48287e:                                  ; preds = %block_.L_482861
  %3331 = add i64 %3296, -76
  %3332 = add i64 %3325, 3
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i32*
  %3334 = load i32, i32* %3333, align 4
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RAX.i2276, align 8
  %3336 = add i64 %3296, -48
  %3337 = add i64 %3325, 6
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3336 to i32*
  %3339 = load i32, i32* %3338, align 4
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RCX.i2274, align 8
  %3341 = add i64 %3296, -56
  %3342 = add i64 %3325, 9
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = add i32 %3344, %3339
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RCX.i2274, align 8
  %3347 = icmp ult i32 %3345, %3339
  %3348 = icmp ult i32 %3345, %3344
  %3349 = or i1 %3347, %3348
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %14, align 1
  %3351 = and i32 %3345, 255
  %3352 = tail call i32 @llvm.ctpop.i32(i32 %3351)
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  %3355 = xor i8 %3354, 1
  store i8 %3355, i8* %21, align 1
  %3356 = xor i32 %3344, %3339
  %3357 = xor i32 %3356, %3345
  %3358 = lshr i32 %3357, 4
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  store i8 %3360, i8* %27, align 1
  %3361 = icmp eq i32 %3345, 0
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %30, align 1
  %3363 = lshr i32 %3345, 31
  %3364 = trunc i32 %3363 to i8
  store i8 %3364, i8* %33, align 1
  %3365 = lshr i32 %3339, 31
  %3366 = lshr i32 %3344, 31
  %3367 = xor i32 %3363, %3365
  %3368 = xor i32 %3363, %3366
  %3369 = add nuw nsw i32 %3367, %3368
  %3370 = icmp eq i32 %3369, 2
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %39, align 1
  %3372 = add i64 %3296, -24
  %3373 = add i64 %3325, 12
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = add i32 %3375, %3345
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RCX.i2274, align 8
  %3378 = lshr i32 %3376, 31
  %3379 = sub i32 %3334, %3376
  %3380 = icmp ult i32 %3334, %3376
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %14, align 1
  %3382 = and i32 %3379, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %21, align 1
  %3387 = xor i32 %3376, %3334
  %3388 = xor i32 %3387, %3379
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  store i8 %3391, i8* %27, align 1
  %3392 = icmp eq i32 %3379, 0
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %30, align 1
  %3394 = lshr i32 %3379, 31
  %3395 = trunc i32 %3394 to i8
  store i8 %3395, i8* %33, align 1
  %3396 = lshr i32 %3334, 31
  %3397 = xor i32 %3378, %3396
  %3398 = xor i32 %3394, %3396
  %3399 = add nuw nsw i32 %3398, %3397
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %39, align 1
  %3402 = icmp ne i8 %3395, 0
  %3403 = xor i1 %3402, %3400
  %.v441 = select i1 %3403, i64 20, i64 34
  %3404 = add i64 %3325, %.v441
  store i64 %3404, i64* %3, align 8
  %3405 = load i64, i64* %RBP.i, align 8
  br i1 %3403, label %block_482892, label %block_.L_4828a0

block_482892:                                     ; preds = %block_.L_48287e
  %3406 = add i64 %3405, -76
  %3407 = add i64 %3404, 3
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  %3409 = load i32, i32* %3408, align 4
  %3410 = zext i32 %3409 to i64
  store i64 %3410, i64* %RAX.i2276, align 8
  %3411 = add i64 %3405, -236
  %3412 = add i64 %3404, 9
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3411 to i32*
  store i32 %3409, i32* %3413, align 4
  %3414 = load i64, i64* %3, align 8
  %3415 = add i64 %3414, 20
  store i64 %3415, i64* %3, align 8
  br label %block_.L_4828af

block_.L_4828a0:                                  ; preds = %block_.L_48287e
  %3416 = add i64 %3405, -48
  %3417 = add i64 %3404, 3
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = zext i32 %3419 to i64
  store i64 %3420, i64* %RAX.i2276, align 8
  %3421 = add i64 %3405, -56
  %3422 = add i64 %3404, 6
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = add i32 %3424, %3419
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RAX.i2276, align 8
  %3427 = icmp ult i32 %3425, %3419
  %3428 = icmp ult i32 %3425, %3424
  %3429 = or i1 %3427, %3428
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %14, align 1
  %3431 = and i32 %3425, 255
  %3432 = tail call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  store i8 %3435, i8* %21, align 1
  %3436 = xor i32 %3424, %3419
  %3437 = xor i32 %3436, %3425
  %3438 = lshr i32 %3437, 4
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  store i8 %3440, i8* %27, align 1
  %3441 = icmp eq i32 %3425, 0
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %30, align 1
  %3443 = lshr i32 %3425, 31
  %3444 = trunc i32 %3443 to i8
  store i8 %3444, i8* %33, align 1
  %3445 = lshr i32 %3419, 31
  %3446 = lshr i32 %3424, 31
  %3447 = xor i32 %3443, %3445
  %3448 = xor i32 %3443, %3446
  %3449 = add nuw nsw i32 %3447, %3448
  %3450 = icmp eq i32 %3449, 2
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %39, align 1
  %3452 = add i64 %3405, -24
  %3453 = add i64 %3404, 9
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i32*
  %3455 = load i32, i32* %3454, align 4
  %3456 = add i32 %3455, %3425
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RAX.i2276, align 8
  %3458 = icmp ult i32 %3456, %3425
  %3459 = icmp ult i32 %3456, %3455
  %3460 = or i1 %3458, %3459
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %14, align 1
  %3462 = and i32 %3456, 255
  %3463 = tail call i32 @llvm.ctpop.i32(i32 %3462)
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = xor i8 %3465, 1
  store i8 %3466, i8* %21, align 1
  %3467 = xor i32 %3455, %3425
  %3468 = xor i32 %3467, %3456
  %3469 = lshr i32 %3468, 4
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  store i8 %3471, i8* %27, align 1
  %3472 = icmp eq i32 %3456, 0
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %30, align 1
  %3474 = lshr i32 %3456, 31
  %3475 = trunc i32 %3474 to i8
  store i8 %3475, i8* %33, align 1
  %3476 = lshr i32 %3455, 31
  %3477 = xor i32 %3474, %3443
  %3478 = xor i32 %3474, %3476
  %3479 = add nuw nsw i32 %3477, %3478
  %3480 = icmp eq i32 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %39, align 1
  %3482 = add i64 %3405, -236
  %3483 = add i64 %3404, 15
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  store i32 %3456, i32* %3484, align 4
  %.pre336 = load i64, i64* %3, align 8
  br label %block_.L_4828af

block_.L_4828af:                                  ; preds = %block_.L_4828a0, %block_482892
  %3485 = phi i64 [ %.pre336, %block_.L_4828a0 ], [ %3415, %block_482892 ]
  %3486 = load i64, i64* %RBP.i, align 8
  %3487 = add i64 %3486, -236
  %3488 = add i64 %3485, 6
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = zext i32 %3490 to i64
  store i64 %3491, i64* %RAX.i2276, align 8
  %3492 = add i64 %3486, -232
  %3493 = add i64 %3485, 12
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3492 to i32*
  store i32 %3490, i32* %3494, align 4
  %.pre337 = load i64, i64* %3, align 8
  br label %block_.L_4828bb

block_.L_4828bb:                                  ; preds = %block_.L_4828af, %block_482871
  %3495 = phi i64 [ %.pre337, %block_.L_4828af ], [ %3330, %block_482871 ]
  %3496 = load i64, i64* %RBP.i, align 8
  %3497 = add i64 %3496, -232
  %3498 = add i64 %3495, 6
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = zext i32 %3500 to i64
  store i64 %3501, i64* %RAX.i2276, align 8
  %3502 = add i64 %3496, -68
  %3503 = add i64 %3495, 9
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  store i32 %3500, i32* %3504, align 4
  %3505 = load i64, i64* %3, align 8
  %3506 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %3506, i64* %RCX.i2274, align 8
  %3507 = load i64, i64* %RBP.i, align 8
  %3508 = add i64 %3507, -68
  %3509 = add i64 %3505, 12
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i32*
  %3511 = load i32, i32* %3510, align 4
  %3512 = sext i32 %3511 to i64
  store i64 %3512, i64* %RDX.i2161, align 8
  %3513 = shl nsw i64 %3512, 3
  %3514 = add i64 %3513, %3506
  %3515 = add i64 %3505, 16
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i64*
  %3517 = load i64, i64* %3516, align 8
  store i64 %3517, i64* %RCX.i2274, align 8
  %3518 = add i64 %3507, -64
  %3519 = add i64 %3505, 20
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = sext i32 %3521 to i64
  store i64 %3522, i64* %RDX.i2161, align 8
  %3523 = add i64 %3517, %3522
  %3524 = add i64 %3505, 24
  store i64 %3524, i64* %3, align 8
  %3525 = inttoptr i64 %3523 to i8*
  %3526 = load i8, i8* %3525, align 1
  %3527 = zext i8 %3526 to i64
  store i64 %3527, i64* %RAX.i2276, align 8
  %3528 = zext i8 %3526 to i32
  %3529 = add i64 %3507, -80
  %3530 = add i64 %3505, 27
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  %3532 = load i32, i32* %3531, align 4
  %3533 = sub i32 %3528, %3532
  %3534 = icmp ult i32 %3528, %3532
  %3535 = zext i1 %3534 to i8
  store i8 %3535, i8* %14, align 1
  %3536 = and i32 %3533, 255
  %3537 = tail call i32 @llvm.ctpop.i32(i32 %3536)
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  %3540 = xor i8 %3539, 1
  store i8 %3540, i8* %21, align 1
  %3541 = xor i32 %3532, %3528
  %3542 = xor i32 %3541, %3533
  %3543 = lshr i32 %3542, 4
  %3544 = trunc i32 %3543 to i8
  %3545 = and i8 %3544, 1
  store i8 %3545, i8* %27, align 1
  %3546 = icmp eq i32 %3533, 0
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %30, align 1
  %3548 = lshr i32 %3533, 31
  %3549 = trunc i32 %3548 to i8
  store i8 %3549, i8* %33, align 1
  %3550 = lshr i32 %3532, 31
  %3551 = add nuw nsw i32 %3548, %3550
  %3552 = icmp eq i32 %3551, 2
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %39, align 1
  %3554 = icmp ne i8 %3549, 0
  %3555 = xor i1 %3554, %3552
  %.v384 = select i1 %3555, i64 33, i64 45
  %3556 = add i64 %3505, %.v384
  store i64 %3556, i64* %3, align 8
  br i1 %3555, label %block_4828e5, label %block_.L_4828f1

block_4828e5:                                     ; preds = %block_.L_4828bb
  %3557 = add i64 %3507, -4
  %3558 = add i64 %3556, 7
  store i64 %3558, i64* %3, align 8
  %3559 = inttoptr i64 %3557 to i32*
  store i32 0, i32* %3559, align 4
  %3560 = load i64, i64* %3, align 8
  %3561 = add i64 %3560, 2009
  store i64 %3561, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_4828f1:                                  ; preds = %block_.L_4828bb
  %3562 = add i64 %3507, -56
  %3563 = add i64 %3556, 8
  store i64 %3563, i64* %3, align 8
  %3564 = inttoptr i64 %3562 to i32*
  %3565 = load i32, i32* %3564, align 4
  %3566 = add i32 %3565, 1
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX.i2276, align 8
  %3568 = icmp eq i32 %3565, -1
  %3569 = icmp eq i32 %3566, 0
  %3570 = or i1 %3568, %3569
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %14, align 1
  %3572 = and i32 %3566, 255
  %3573 = tail call i32 @llvm.ctpop.i32(i32 %3572)
  %3574 = trunc i32 %3573 to i8
  %3575 = and i8 %3574, 1
  %3576 = xor i8 %3575, 1
  store i8 %3576, i8* %21, align 1
  %3577 = xor i32 %3566, %3565
  %3578 = lshr i32 %3577, 4
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  store i8 %3580, i8* %27, align 1
  %3581 = zext i1 %3569 to i8
  store i8 %3581, i8* %30, align 1
  %3582 = lshr i32 %3566, 31
  %3583 = trunc i32 %3582 to i8
  store i8 %3583, i8* %33, align 1
  %3584 = lshr i32 %3565, 31
  %3585 = xor i32 %3582, %3584
  %3586 = add nuw nsw i32 %3585, %3582
  %3587 = icmp eq i32 %3586, 2
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %39, align 1
  %3589 = add i64 %3556, 14
  store i64 %3589, i64* %3, align 8
  store i32 %3566, i32* %3564, align 4
  %3590 = load i64, i64* %3, align 8
  %3591 = add i64 %3590, -217
  store i64 %3591, i64* %3, align 8
  br label %block_.L_482826

block_.L_482904:                                  ; preds = %block_.L_482826
  %3592 = add i64 %3114, -28
  %3593 = add i64 %3142, 8
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i32*
  %3595 = load i32, i32* %3594, align 4
  %3596 = add i32 %3595, 1
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RAX.i2276, align 8
  %3598 = icmp eq i32 %3595, -1
  %3599 = icmp eq i32 %3596, 0
  %3600 = or i1 %3598, %3599
  %3601 = zext i1 %3600 to i8
  store i8 %3601, i8* %14, align 1
  %3602 = and i32 %3596, 255
  %3603 = tail call i32 @llvm.ctpop.i32(i32 %3602)
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = xor i8 %3605, 1
  store i8 %3606, i8* %21, align 1
  %3607 = xor i32 %3596, %3595
  %3608 = lshr i32 %3607, 4
  %3609 = trunc i32 %3608 to i8
  %3610 = and i8 %3609, 1
  store i8 %3610, i8* %27, align 1
  %3611 = zext i1 %3599 to i8
  store i8 %3611, i8* %30, align 1
  %3612 = lshr i32 %3596, 31
  %3613 = trunc i32 %3612 to i8
  store i8 %3613, i8* %33, align 1
  %3614 = lshr i32 %3595, 31
  %3615 = xor i32 %3612, %3614
  %3616 = add nuw nsw i32 %3615, %3612
  %3617 = icmp eq i32 %3616, 2
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %39, align 1
  %3619 = add i64 %3142, 14
  store i64 %3619, i64* %3, align 8
  store i32 %3596, i32* %3594, align 4
  %3620 = load i64, i64* %3, align 8
  %3621 = add i64 %3620, -389
  store i64 %3621, i64* %3, align 8
  br label %block_.L_48278d

block_.L_482917:                                  ; preds = %block_.L_48278d
  %3622 = add i64 %2855, -24
  %3623 = add i64 %2883, 8
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3622 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = add i32 %3625, 1
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RAX.i2276, align 8
  %3628 = icmp eq i32 %3625, -1
  %3629 = icmp eq i32 %3626, 0
  %3630 = or i1 %3628, %3629
  %3631 = zext i1 %3630 to i8
  store i8 %3631, i8* %14, align 1
  %3632 = and i32 %3626, 255
  %3633 = tail call i32 @llvm.ctpop.i32(i32 %3632)
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  %3636 = xor i8 %3635, 1
  store i8 %3636, i8* %21, align 1
  %3637 = xor i32 %3626, %3625
  %3638 = lshr i32 %3637, 4
  %3639 = trunc i32 %3638 to i8
  %3640 = and i8 %3639, 1
  store i8 %3640, i8* %27, align 1
  %3641 = zext i1 %3629 to i8
  store i8 %3641, i8* %30, align 1
  %3642 = lshr i32 %3626, 31
  %3643 = trunc i32 %3642 to i8
  store i8 %3643, i8* %33, align 1
  %3644 = lshr i32 %3625, 31
  %3645 = xor i32 %3642, %3644
  %3646 = add nuw nsw i32 %3645, %3642
  %3647 = icmp eq i32 %3646, 2
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %39, align 1
  %3649 = add i64 %2883, 14
  store i64 %3649, i64* %3, align 8
  store i32 %3626, i32* %3624, align 4
  %3650 = load i64, i64* %3, align 8
  %3651 = add i64 %3650, -425
  store i64 %3651, i64* %3, align 8
  br label %block_.L_48277c

block_.L_48292a:                                  ; preds = %block_.L_48277c
  %3652 = add i64 %2850, 1892
  br label %block_.L_48308e

block_.L_48292f:                                  ; preds = %block_.L_48276b
  %3653 = add i64 %2817, 4
  store i64 %3653, i64* %3, align 8
  %3654 = load i32, i32* %2806, align 4
  %3655 = add i32 %3654, -2
  %3656 = icmp ult i32 %3654, 2
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %14, align 1
  %3658 = and i32 %3655, 255
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %21, align 1
  %3663 = xor i32 %3655, %3654
  %3664 = lshr i32 %3663, 4
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  store i8 %3666, i8* %27, align 1
  %3667 = icmp eq i32 %3655, 0
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %30, align 1
  %3669 = lshr i32 %3655, 31
  %3670 = trunc i32 %3669 to i8
  store i8 %3670, i8* %33, align 1
  %3671 = lshr i32 %3654, 31
  %3672 = xor i32 %3669, %3671
  %3673 = add nuw nsw i32 %3672, %3671
  %3674 = icmp eq i32 %3673, 2
  %3675 = zext i1 %3674 to i8
  store i8 %3675, i8* %39, align 1
  %.v390 = select i1 %3667, i64 10, i64 500
  %3676 = add i64 %2817, %.v390
  store i64 %3676, i64* %3, align 8
  br i1 %3667, label %block_482939, label %block_.L_482b23

block_482939:                                     ; preds = %block_.L_48292f
  %3677 = add i64 %1265, -24
  %3678 = add i64 %3676, 7
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  store i32 0, i32* %3679, align 4
  %.pre338 = load i64, i64* %3, align 8
  br label %block_.L_482940

block_.L_482940:                                  ; preds = %block_.L_482b0b, %block_482939
  %3680 = phi i64 [ %4711, %block_.L_482b0b ], [ %.pre338, %block_482939 ]
  %3681 = load i64, i64* %RBP.i, align 8
  %3682 = add i64 %3681, -24
  %3683 = add i64 %3680, 4
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = add i32 %3685, -4
  %3687 = icmp ult i32 %3685, 4
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %14, align 1
  %3689 = and i32 %3686, 255
  %3690 = tail call i32 @llvm.ctpop.i32(i32 %3689)
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  %3693 = xor i8 %3692, 1
  store i8 %3693, i8* %21, align 1
  %3694 = xor i32 %3686, %3685
  %3695 = lshr i32 %3694, 4
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  store i8 %3697, i8* %27, align 1
  %3698 = icmp eq i32 %3686, 0
  %3699 = zext i1 %3698 to i8
  store i8 %3699, i8* %30, align 1
  %3700 = lshr i32 %3686, 31
  %3701 = trunc i32 %3700 to i8
  store i8 %3701, i8* %33, align 1
  %3702 = lshr i32 %3685, 31
  %3703 = xor i32 %3700, %3702
  %3704 = add nuw nsw i32 %3703, %3702
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %39, align 1
  %3707 = icmp ne i8 %3701, 0
  %3708 = xor i1 %3707, %3705
  %.v429 = select i1 %3708, i64 10, i64 478
  %3709 = add i64 %3680, %.v429
  store i64 %3709, i64* %3, align 8
  br i1 %3708, label %block_48294a, label %block_.L_482b1e

block_48294a:                                     ; preds = %block_.L_482940
  %3710 = add i64 %3681, -28
  %3711 = add i64 %3709, 7
  store i64 %3711, i64* %3, align 8
  %3712 = inttoptr i64 %3710 to i32*
  store i32 0, i32* %3712, align 4
  %.pre339 = load i64, i64* %3, align 8
  br label %block_.L_482951

block_.L_482951:                                  ; preds = %block_.L_482af8, %block_48294a
  %3713 = phi i64 [ %4681, %block_.L_482af8 ], [ %.pre339, %block_48294a ]
  %3714 = load i64, i64* %RBP.i, align 8
  %3715 = add i64 %3714, -28
  %3716 = add i64 %3713, 4
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = add i32 %3718, -4
  %3720 = icmp ult i32 %3718, 4
  %3721 = zext i1 %3720 to i8
  store i8 %3721, i8* %14, align 1
  %3722 = and i32 %3719, 255
  %3723 = tail call i32 @llvm.ctpop.i32(i32 %3722)
  %3724 = trunc i32 %3723 to i8
  %3725 = and i8 %3724, 1
  %3726 = xor i8 %3725, 1
  store i8 %3726, i8* %21, align 1
  %3727 = xor i32 %3719, %3718
  %3728 = lshr i32 %3727, 4
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  store i8 %3730, i8* %27, align 1
  %3731 = icmp eq i32 %3719, 0
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %30, align 1
  %3733 = lshr i32 %3719, 31
  %3734 = trunc i32 %3733 to i8
  store i8 %3734, i8* %33, align 1
  %3735 = lshr i32 %3718, 31
  %3736 = xor i32 %3733, %3735
  %3737 = add nuw nsw i32 %3736, %3735
  %3738 = icmp eq i32 %3737, 2
  %3739 = zext i1 %3738 to i8
  store i8 %3739, i8* %39, align 1
  %3740 = icmp ne i8 %3734, 0
  %3741 = xor i1 %3740, %3738
  %.v385 = select i1 %3741, i64 10, i64 442
  %3742 = add i64 %3713, %.v385
  store i64 %3742, i64* %3, align 8
  br i1 %3741, label %block_48295b, label %block_.L_482b0b

block_48295b:                                     ; preds = %block_.L_482951
  %3743 = add i64 %3714, -56
  %3744 = add i64 %3742, 7
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i32*
  store i32 -2, i32* %3745, align 4
  %.pre340 = load i64, i64* %3, align 8
  br label %block_.L_482962

block_.L_482962:                                  ; preds = %block_.L_482ae5, %block_48295b
  %3746 = phi i64 [ %4651, %block_.L_482ae5 ], [ %.pre340, %block_48295b ]
  %3747 = load i64, i64* %RBP.i, align 8
  %3748 = add i64 %3747, -56
  %3749 = add i64 %3746, 4
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = add i32 %3751, -4
  %3753 = icmp ult i32 %3751, 4
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %14, align 1
  %3755 = and i32 %3752, 255
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %21, align 1
  %3760 = xor i32 %3752, %3751
  %3761 = lshr i32 %3760, 4
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  store i8 %3763, i8* %27, align 1
  %3764 = icmp eq i32 %3752, 0
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %30, align 1
  %3766 = lshr i32 %3752, 31
  %3767 = trunc i32 %3766 to i8
  store i8 %3767, i8* %33, align 1
  %3768 = lshr i32 %3751, 31
  %3769 = xor i32 %3766, %3768
  %3770 = add nuw nsw i32 %3769, %3768
  %3771 = icmp eq i32 %3770, 2
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %39, align 1
  %3773 = icmp ne i8 %3767, 0
  %3774 = xor i1 %3773, %3771
  %.v386 = select i1 %3774, i64 10, i64 406
  %3775 = add i64 %3746, %.v386
  store i64 %3775, i64* %3, align 8
  br i1 %3774, label %block_48296c, label %block_.L_482af8

block_48296c:                                     ; preds = %block_.L_482962
  %3776 = add i64 %3747, -76
  %3777 = add i64 %3775, 3
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RAX.i2276, align 8
  %3781 = add i64 %3747, -48
  %3782 = add i64 %3775, 6
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3781 to i32*
  %3784 = load i32, i32* %3783, align 4
  %3785 = zext i32 %3784 to i64
  store i64 %3785, i64* %RCX.i2274, align 8
  %3786 = add i64 %3775, 9
  store i64 %3786, i64* %3, align 8
  %3787 = load i32, i32* %3750, align 4
  %3788 = add i32 %3787, %3784
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RCX.i2274, align 8
  %3790 = icmp ult i32 %3788, %3784
  %3791 = icmp ult i32 %3788, %3787
  %3792 = or i1 %3790, %3791
  %3793 = zext i1 %3792 to i8
  store i8 %3793, i8* %14, align 1
  %3794 = and i32 %3788, 255
  %3795 = tail call i32 @llvm.ctpop.i32(i32 %3794)
  %3796 = trunc i32 %3795 to i8
  %3797 = and i8 %3796, 1
  %3798 = xor i8 %3797, 1
  store i8 %3798, i8* %21, align 1
  %3799 = xor i32 %3787, %3784
  %3800 = xor i32 %3799, %3788
  %3801 = lshr i32 %3800, 4
  %3802 = trunc i32 %3801 to i8
  %3803 = and i8 %3802, 1
  store i8 %3803, i8* %27, align 1
  %3804 = icmp eq i32 %3788, 0
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %30, align 1
  %3806 = lshr i32 %3788, 31
  %3807 = trunc i32 %3806 to i8
  store i8 %3807, i8* %33, align 1
  %3808 = lshr i32 %3784, 31
  %3809 = lshr i32 %3787, 31
  %3810 = xor i32 %3806, %3808
  %3811 = xor i32 %3806, %3809
  %3812 = add nuw nsw i32 %3810, %3811
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %39, align 1
  %3815 = add i64 %3747, -24
  %3816 = add i64 %3775, 12
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = add i32 %3818, %3788
  %3820 = zext i32 %3819 to i64
  store i64 %3820, i64* %RCX.i2274, align 8
  %3821 = lshr i32 %3819, 31
  %3822 = sub i32 %3779, %3819
  %3823 = icmp ult i32 %3779, %3819
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %14, align 1
  %3825 = and i32 %3822, 255
  %3826 = tail call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  store i8 %3829, i8* %21, align 1
  %3830 = xor i32 %3819, %3779
  %3831 = xor i32 %3830, %3822
  %3832 = lshr i32 %3831, 4
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  store i8 %3834, i8* %27, align 1
  %3835 = icmp eq i32 %3822, 0
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %30, align 1
  %3837 = lshr i32 %3822, 31
  %3838 = trunc i32 %3837 to i8
  store i8 %3838, i8* %33, align 1
  %3839 = lshr i32 %3779, 31
  %3840 = xor i32 %3821, %3839
  %3841 = xor i32 %3837, %3839
  %3842 = add nuw nsw i32 %3841, %3840
  %3843 = icmp eq i32 %3842, 2
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %39, align 1
  %3845 = icmp ne i8 %3838, 0
  %3846 = xor i1 %3845, %3843
  %.v430 = select i1 %3846, i64 20, i64 34
  %3847 = add i64 %3775, %.v430
  store i64 %3847, i64* %3, align 8
  %3848 = load i64, i64* %RBP.i, align 8
  br i1 %3846, label %block_482980, label %block_.L_48298e

block_482980:                                     ; preds = %block_48296c
  %3849 = add i64 %3848, -76
  %3850 = add i64 %3847, 3
  store i64 %3850, i64* %3, align 8
  %3851 = inttoptr i64 %3849 to i32*
  %3852 = load i32, i32* %3851, align 4
  %3853 = zext i32 %3852 to i64
  store i64 %3853, i64* %RAX.i2276, align 8
  %3854 = add i64 %3848, -240
  %3855 = add i64 %3847, 9
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3854 to i32*
  store i32 %3852, i32* %3856, align 4
  %3857 = load i64, i64* %3, align 8
  %3858 = add i64 %3857, 20
  store i64 %3858, i64* %3, align 8
  br label %block_.L_48299d

block_.L_48298e:                                  ; preds = %block_48296c
  %3859 = add i64 %3848, -48
  %3860 = add i64 %3847, 3
  store i64 %3860, i64* %3, align 8
  %3861 = inttoptr i64 %3859 to i32*
  %3862 = load i32, i32* %3861, align 4
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i2276, align 8
  %3864 = add i64 %3848, -56
  %3865 = add i64 %3847, 6
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i32*
  %3867 = load i32, i32* %3866, align 4
  %3868 = add i32 %3867, %3862
  %3869 = zext i32 %3868 to i64
  store i64 %3869, i64* %RAX.i2276, align 8
  %3870 = icmp ult i32 %3868, %3862
  %3871 = icmp ult i32 %3868, %3867
  %3872 = or i1 %3870, %3871
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %14, align 1
  %3874 = and i32 %3868, 255
  %3875 = tail call i32 @llvm.ctpop.i32(i32 %3874)
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  %3878 = xor i8 %3877, 1
  store i8 %3878, i8* %21, align 1
  %3879 = xor i32 %3867, %3862
  %3880 = xor i32 %3879, %3868
  %3881 = lshr i32 %3880, 4
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  store i8 %3883, i8* %27, align 1
  %3884 = icmp eq i32 %3868, 0
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %30, align 1
  %3886 = lshr i32 %3868, 31
  %3887 = trunc i32 %3886 to i8
  store i8 %3887, i8* %33, align 1
  %3888 = lshr i32 %3862, 31
  %3889 = lshr i32 %3867, 31
  %3890 = xor i32 %3886, %3888
  %3891 = xor i32 %3886, %3889
  %3892 = add nuw nsw i32 %3890, %3891
  %3893 = icmp eq i32 %3892, 2
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %39, align 1
  %3895 = add i64 %3848, -24
  %3896 = add i64 %3847, 9
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = add i32 %3898, %3868
  %3900 = zext i32 %3899 to i64
  store i64 %3900, i64* %RAX.i2276, align 8
  %3901 = icmp ult i32 %3899, %3868
  %3902 = icmp ult i32 %3899, %3898
  %3903 = or i1 %3901, %3902
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %14, align 1
  %3905 = and i32 %3899, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905)
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %21, align 1
  %3910 = xor i32 %3898, %3868
  %3911 = xor i32 %3910, %3899
  %3912 = lshr i32 %3911, 4
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  store i8 %3914, i8* %27, align 1
  %3915 = icmp eq i32 %3899, 0
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %30, align 1
  %3917 = lshr i32 %3899, 31
  %3918 = trunc i32 %3917 to i8
  store i8 %3918, i8* %33, align 1
  %3919 = lshr i32 %3898, 31
  %3920 = xor i32 %3917, %3886
  %3921 = xor i32 %3917, %3919
  %3922 = add nuw nsw i32 %3920, %3921
  %3923 = icmp eq i32 %3922, 2
  %3924 = zext i1 %3923 to i8
  store i8 %3924, i8* %39, align 1
  %3925 = add i64 %3848, -240
  %3926 = add i64 %3847, 15
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3925 to i32*
  store i32 %3899, i32* %3927, align 4
  %.pre341 = load i64, i64* %3, align 8
  br label %block_.L_48299d

block_.L_48299d:                                  ; preds = %block_.L_48298e, %block_482980
  %3928 = phi i64 [ %.pre341, %block_.L_48298e ], [ %3858, %block_482980 ]
  %3929 = load i64, i64* %RBP.i, align 8
  %3930 = add i64 %3929, -240
  %3931 = add i64 %3928, 6
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i32*
  %3933 = load i32, i32* %3932, align 4
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %3935 = sub i32 0, %3933
  %3936 = icmp ne i32 %3933, 0
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %14, align 1
  %3938 = and i32 %3935, 255
  %3939 = tail call i32 @llvm.ctpop.i32(i32 %3938)
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  %3942 = xor i8 %3941, 1
  store i8 %3942, i8* %21, align 1
  %3943 = xor i32 %3933, %3935
  %3944 = lshr i32 %3943, 4
  %3945 = trunc i32 %3944 to i8
  %3946 = and i8 %3945, 1
  store i8 %3946, i8* %27, align 1
  %3947 = icmp eq i32 %3933, 0
  %3948 = zext i1 %3947 to i8
  store i8 %3948, i8* %30, align 1
  %3949 = lshr i32 %3935, 31
  %3950 = trunc i32 %3949 to i8
  store i8 %3950, i8* %33, align 1
  %3951 = lshr i32 %3933, 31
  %3952 = add nuw nsw i32 %3949, %3951
  %3953 = icmp eq i32 %3952, 2
  %3954 = zext i1 %3953 to i8
  store i8 %3954, i8* %39, align 1
  %3955 = icmp ne i8 %3950, 0
  %3956 = xor i1 %3955, %3953
  %3957 = or i1 %3947, %3956
  %.v431 = select i1 %3957, i64 29, i64 16
  %3958 = add i64 %3928, %.v431
  store i64 %3958, i64* %3, align 8
  br i1 %3957, label %block_.L_4829ba, label %block_4829ad

block_4829ad:                                     ; preds = %block_.L_48299d
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3959 = add i64 %3929, -244
  %3960 = add i64 %3958, 8
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  store i32 0, i32* %3961, align 4
  %3962 = load i64, i64* %3, align 8
  %3963 = add i64 %3962, 66
  store i64 %3963, i64* %3, align 8
  br label %block_.L_4829f7

block_.L_4829ba:                                  ; preds = %block_.L_48299d
  %3964 = add i64 %3929, -76
  %3965 = add i64 %3958, 3
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i32*
  %3967 = load i32, i32* %3966, align 4
  %3968 = zext i32 %3967 to i64
  store i64 %3968, i64* %RAX.i2276, align 8
  %3969 = add i64 %3929, -48
  %3970 = add i64 %3958, 6
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3969 to i32*
  %3972 = load i32, i32* %3971, align 4
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RCX.i2274, align 8
  %3974 = add i64 %3929, -56
  %3975 = add i64 %3958, 9
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = add i32 %3977, %3972
  %3979 = zext i32 %3978 to i64
  store i64 %3979, i64* %RCX.i2274, align 8
  %3980 = icmp ult i32 %3978, %3972
  %3981 = icmp ult i32 %3978, %3977
  %3982 = or i1 %3980, %3981
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %14, align 1
  %3984 = and i32 %3978, 255
  %3985 = tail call i32 @llvm.ctpop.i32(i32 %3984)
  %3986 = trunc i32 %3985 to i8
  %3987 = and i8 %3986, 1
  %3988 = xor i8 %3987, 1
  store i8 %3988, i8* %21, align 1
  %3989 = xor i32 %3977, %3972
  %3990 = xor i32 %3989, %3978
  %3991 = lshr i32 %3990, 4
  %3992 = trunc i32 %3991 to i8
  %3993 = and i8 %3992, 1
  store i8 %3993, i8* %27, align 1
  %3994 = icmp eq i32 %3978, 0
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %30, align 1
  %3996 = lshr i32 %3978, 31
  %3997 = trunc i32 %3996 to i8
  store i8 %3997, i8* %33, align 1
  %3998 = lshr i32 %3972, 31
  %3999 = lshr i32 %3977, 31
  %4000 = xor i32 %3996, %3998
  %4001 = xor i32 %3996, %3999
  %4002 = add nuw nsw i32 %4000, %4001
  %4003 = icmp eq i32 %4002, 2
  %4004 = zext i1 %4003 to i8
  store i8 %4004, i8* %39, align 1
  %4005 = add i64 %3929, -24
  %4006 = add i64 %3958, 12
  store i64 %4006, i64* %3, align 8
  %4007 = inttoptr i64 %4005 to i32*
  %4008 = load i32, i32* %4007, align 4
  %4009 = add i32 %4008, %3978
  %4010 = zext i32 %4009 to i64
  store i64 %4010, i64* %RCX.i2274, align 8
  %4011 = lshr i32 %4009, 31
  %4012 = sub i32 %3967, %4009
  %4013 = icmp ult i32 %3967, %4009
  %4014 = zext i1 %4013 to i8
  store i8 %4014, i8* %14, align 1
  %4015 = and i32 %4012, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %21, align 1
  %4020 = xor i32 %4009, %3967
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
  %4029 = lshr i32 %3967, 31
  %4030 = xor i32 %4011, %4029
  %4031 = xor i32 %4027, %4029
  %4032 = add nuw nsw i32 %4031, %4030
  %4033 = icmp eq i32 %4032, 2
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %39, align 1
  %4035 = icmp ne i8 %4028, 0
  %4036 = xor i1 %4035, %4033
  %.v435 = select i1 %4036, i64 20, i64 34
  %4037 = add i64 %3958, %.v435
  store i64 %4037, i64* %3, align 8
  %4038 = load i64, i64* %RBP.i, align 8
  br i1 %4036, label %block_4829ce, label %block_.L_4829dc

block_4829ce:                                     ; preds = %block_.L_4829ba
  %4039 = add i64 %4038, -76
  %4040 = add i64 %4037, 3
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RAX.i2276, align 8
  %4044 = add i64 %4038, -248
  %4045 = add i64 %4037, 9
  store i64 %4045, i64* %3, align 8
  %4046 = inttoptr i64 %4044 to i32*
  store i32 %4042, i32* %4046, align 4
  %4047 = load i64, i64* %3, align 8
  %4048 = add i64 %4047, 20
  store i64 %4048, i64* %3, align 8
  br label %block_.L_4829eb

block_.L_4829dc:                                  ; preds = %block_.L_4829ba
  %4049 = add i64 %4038, -48
  %4050 = add i64 %4037, 3
  store i64 %4050, i64* %3, align 8
  %4051 = inttoptr i64 %4049 to i32*
  %4052 = load i32, i32* %4051, align 4
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RAX.i2276, align 8
  %4054 = add i64 %4038, -56
  %4055 = add i64 %4037, 6
  store i64 %4055, i64* %3, align 8
  %4056 = inttoptr i64 %4054 to i32*
  %4057 = load i32, i32* %4056, align 4
  %4058 = add i32 %4057, %4052
  %4059 = zext i32 %4058 to i64
  store i64 %4059, i64* %RAX.i2276, align 8
  %4060 = icmp ult i32 %4058, %4052
  %4061 = icmp ult i32 %4058, %4057
  %4062 = or i1 %4060, %4061
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %14, align 1
  %4064 = and i32 %4058, 255
  %4065 = tail call i32 @llvm.ctpop.i32(i32 %4064)
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  store i8 %4068, i8* %21, align 1
  %4069 = xor i32 %4057, %4052
  %4070 = xor i32 %4069, %4058
  %4071 = lshr i32 %4070, 4
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  store i8 %4073, i8* %27, align 1
  %4074 = icmp eq i32 %4058, 0
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %30, align 1
  %4076 = lshr i32 %4058, 31
  %4077 = trunc i32 %4076 to i8
  store i8 %4077, i8* %33, align 1
  %4078 = lshr i32 %4052, 31
  %4079 = lshr i32 %4057, 31
  %4080 = xor i32 %4076, %4078
  %4081 = xor i32 %4076, %4079
  %4082 = add nuw nsw i32 %4080, %4081
  %4083 = icmp eq i32 %4082, 2
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %39, align 1
  %4085 = add i64 %4038, -24
  %4086 = add i64 %4037, 9
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = add i32 %4088, %4058
  %4090 = zext i32 %4089 to i64
  store i64 %4090, i64* %RAX.i2276, align 8
  %4091 = icmp ult i32 %4089, %4058
  %4092 = icmp ult i32 %4089, %4088
  %4093 = or i1 %4091, %4092
  %4094 = zext i1 %4093 to i8
  store i8 %4094, i8* %14, align 1
  %4095 = and i32 %4089, 255
  %4096 = tail call i32 @llvm.ctpop.i32(i32 %4095)
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  %4099 = xor i8 %4098, 1
  store i8 %4099, i8* %21, align 1
  %4100 = xor i32 %4088, %4058
  %4101 = xor i32 %4100, %4089
  %4102 = lshr i32 %4101, 4
  %4103 = trunc i32 %4102 to i8
  %4104 = and i8 %4103, 1
  store i8 %4104, i8* %27, align 1
  %4105 = icmp eq i32 %4089, 0
  %4106 = zext i1 %4105 to i8
  store i8 %4106, i8* %30, align 1
  %4107 = lshr i32 %4089, 31
  %4108 = trunc i32 %4107 to i8
  store i8 %4108, i8* %33, align 1
  %4109 = lshr i32 %4088, 31
  %4110 = xor i32 %4107, %4076
  %4111 = xor i32 %4107, %4109
  %4112 = add nuw nsw i32 %4110, %4111
  %4113 = icmp eq i32 %4112, 2
  %4114 = zext i1 %4113 to i8
  store i8 %4114, i8* %39, align 1
  %4115 = add i64 %4038, -248
  %4116 = add i64 %4037, 15
  store i64 %4116, i64* %3, align 8
  %4117 = inttoptr i64 %4115 to i32*
  store i32 %4089, i32* %4117, align 4
  %.pre342 = load i64, i64* %3, align 8
  br label %block_.L_4829eb

block_.L_4829eb:                                  ; preds = %block_.L_4829dc, %block_4829ce
  %4118 = phi i64 [ %.pre342, %block_.L_4829dc ], [ %4048, %block_4829ce ]
  %4119 = load i64, i64* %RBP.i, align 8
  %4120 = add i64 %4119, -248
  %4121 = add i64 %4118, 6
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i32*
  %4123 = load i32, i32* %4122, align 4
  %4124 = zext i32 %4123 to i64
  store i64 %4124, i64* %RAX.i2276, align 8
  %4125 = add i64 %4119, -244
  %4126 = add i64 %4118, 12
  store i64 %4126, i64* %3, align 8
  %4127 = inttoptr i64 %4125 to i32*
  store i32 %4123, i32* %4127, align 4
  %.pre343 = load i64, i64* %3, align 8
  br label %block_.L_4829f7

block_.L_4829f7:                                  ; preds = %block_.L_4829eb, %block_4829ad
  %4128 = phi i64 [ %.pre343, %block_.L_4829eb ], [ %3963, %block_4829ad ]
  %4129 = load i64, i64* %RBP.i, align 8
  %4130 = add i64 %4129, -244
  %4131 = add i64 %4128, 6
  store i64 %4131, i64* %3, align 8
  %4132 = inttoptr i64 %4130 to i32*
  %4133 = load i32, i32* %4132, align 4
  %4134 = zext i32 %4133 to i64
  store i64 %4134, i64* %RAX.i2276, align 8
  %4135 = add i64 %4129, -68
  %4136 = add i64 %4128, 9
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i32*
  store i32 %4133, i32* %4137, align 4
  %4138 = load i64, i64* %RBP.i, align 8
  %4139 = add i64 %4138, -60
  %4140 = load i64, i64* %3, align 8
  %4141 = add i64 %4140, 7
  store i64 %4141, i64* %3, align 8
  %4142 = inttoptr i64 %4139 to i32*
  store i32 -2, i32* %4142, align 4
  %.pre344 = load i64, i64* %3, align 8
  br label %block_.L_482a07

block_.L_482a07:                                  ; preds = %block_.L_482ad2, %block_.L_4829f7
  %4143 = phi i64 [ %4621, %block_.L_482ad2 ], [ %.pre344, %block_.L_4829f7 ]
  %4144 = load i64, i64* %RBP.i, align 8
  %4145 = add i64 %4144, -60
  %4146 = add i64 %4143, 4
  store i64 %4146, i64* %3, align 8
  %4147 = inttoptr i64 %4145 to i32*
  %4148 = load i32, i32* %4147, align 4
  %4149 = add i32 %4148, -4
  %4150 = icmp ult i32 %4148, 4
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %14, align 1
  %4152 = and i32 %4149, 255
  %4153 = tail call i32 @llvm.ctpop.i32(i32 %4152)
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  %4156 = xor i8 %4155, 1
  store i8 %4156, i8* %21, align 1
  %4157 = xor i32 %4149, %4148
  %4158 = lshr i32 %4157, 4
  %4159 = trunc i32 %4158 to i8
  %4160 = and i8 %4159, 1
  store i8 %4160, i8* %27, align 1
  %4161 = icmp eq i32 %4149, 0
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %30, align 1
  %4163 = lshr i32 %4149, 31
  %4164 = trunc i32 %4163 to i8
  store i8 %4164, i8* %33, align 1
  %4165 = lshr i32 %4148, 31
  %4166 = xor i32 %4163, %4165
  %4167 = add nuw nsw i32 %4166, %4165
  %4168 = icmp eq i32 %4167, 2
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %39, align 1
  %4170 = icmp ne i8 %4164, 0
  %4171 = xor i1 %4170, %4168
  %.v387 = select i1 %4171, i64 10, i64 222
  %4172 = add i64 %4143, %.v387
  store i64 %4172, i64* %3, align 8
  br i1 %4171, label %block_482a11, label %block_.L_482ae5

block_482a11:                                     ; preds = %block_.L_482a07
  %4173 = add i64 %4144, -72
  %4174 = add i64 %4172, 3
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i32*
  %4176 = load i32, i32* %4175, align 4
  %4177 = zext i32 %4176 to i64
  store i64 %4177, i64* %RAX.i2276, align 8
  %4178 = add i64 %4144, -52
  %4179 = add i64 %4172, 6
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RCX.i2274, align 8
  %4183 = add i64 %4172, 9
  store i64 %4183, i64* %3, align 8
  %4184 = load i32, i32* %4147, align 4
  %4185 = add i32 %4184, %4181
  %4186 = zext i32 %4185 to i64
  store i64 %4186, i64* %RCX.i2274, align 8
  %4187 = icmp ult i32 %4185, %4181
  %4188 = icmp ult i32 %4185, %4184
  %4189 = or i1 %4187, %4188
  %4190 = zext i1 %4189 to i8
  store i8 %4190, i8* %14, align 1
  %4191 = and i32 %4185, 255
  %4192 = tail call i32 @llvm.ctpop.i32(i32 %4191)
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  store i8 %4195, i8* %21, align 1
  %4196 = xor i32 %4184, %4181
  %4197 = xor i32 %4196, %4185
  %4198 = lshr i32 %4197, 4
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  store i8 %4200, i8* %27, align 1
  %4201 = icmp eq i32 %4185, 0
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %30, align 1
  %4203 = lshr i32 %4185, 31
  %4204 = trunc i32 %4203 to i8
  store i8 %4204, i8* %33, align 1
  %4205 = lshr i32 %4181, 31
  %4206 = lshr i32 %4184, 31
  %4207 = xor i32 %4203, %4205
  %4208 = xor i32 %4203, %4206
  %4209 = add nuw nsw i32 %4207, %4208
  %4210 = icmp eq i32 %4209, 2
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %39, align 1
  %4212 = add i64 %4144, -28
  %4213 = add i64 %4172, 12
  store i64 %4213, i64* %3, align 8
  %4214 = inttoptr i64 %4212 to i32*
  %4215 = load i32, i32* %4214, align 4
  %4216 = add i32 %4215, %4185
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RCX.i2274, align 8
  %4218 = lshr i32 %4216, 31
  %4219 = sub i32 %4176, %4216
  %4220 = icmp ult i32 %4176, %4216
  %4221 = zext i1 %4220 to i8
  store i8 %4221, i8* %14, align 1
  %4222 = and i32 %4219, 255
  %4223 = tail call i32 @llvm.ctpop.i32(i32 %4222)
  %4224 = trunc i32 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = xor i8 %4225, 1
  store i8 %4226, i8* %21, align 1
  %4227 = xor i32 %4216, %4176
  %4228 = xor i32 %4227, %4219
  %4229 = lshr i32 %4228, 4
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  store i8 %4231, i8* %27, align 1
  %4232 = icmp eq i32 %4219, 0
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %30, align 1
  %4234 = lshr i32 %4219, 31
  %4235 = trunc i32 %4234 to i8
  store i8 %4235, i8* %33, align 1
  %4236 = lshr i32 %4176, 31
  %4237 = xor i32 %4218, %4236
  %4238 = xor i32 %4234, %4236
  %4239 = add nuw nsw i32 %4238, %4237
  %4240 = icmp eq i32 %4239, 2
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %39, align 1
  %4242 = icmp ne i8 %4235, 0
  %4243 = xor i1 %4242, %4240
  %.v432 = select i1 %4243, i64 20, i64 34
  %4244 = add i64 %4172, %.v432
  store i64 %4244, i64* %3, align 8
  %4245 = load i64, i64* %RBP.i, align 8
  br i1 %4243, label %block_482a25, label %block_.L_482a33

block_482a25:                                     ; preds = %block_482a11
  %4246 = add i64 %4245, -72
  %4247 = add i64 %4244, 3
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = zext i32 %4249 to i64
  store i64 %4250, i64* %RAX.i2276, align 8
  %4251 = add i64 %4245, -252
  %4252 = add i64 %4244, 9
  store i64 %4252, i64* %3, align 8
  %4253 = inttoptr i64 %4251 to i32*
  store i32 %4249, i32* %4253, align 4
  %4254 = load i64, i64* %3, align 8
  %4255 = add i64 %4254, 20
  store i64 %4255, i64* %3, align 8
  br label %block_.L_482a42

block_.L_482a33:                                  ; preds = %block_482a11
  %4256 = add i64 %4245, -52
  %4257 = add i64 %4244, 3
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i32*
  %4259 = load i32, i32* %4258, align 4
  %4260 = zext i32 %4259 to i64
  store i64 %4260, i64* %RAX.i2276, align 8
  %4261 = add i64 %4245, -60
  %4262 = add i64 %4244, 6
  store i64 %4262, i64* %3, align 8
  %4263 = inttoptr i64 %4261 to i32*
  %4264 = load i32, i32* %4263, align 4
  %4265 = add i32 %4264, %4259
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RAX.i2276, align 8
  %4267 = icmp ult i32 %4265, %4259
  %4268 = icmp ult i32 %4265, %4264
  %4269 = or i1 %4267, %4268
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %14, align 1
  %4271 = and i32 %4265, 255
  %4272 = tail call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  store i8 %4275, i8* %21, align 1
  %4276 = xor i32 %4264, %4259
  %4277 = xor i32 %4276, %4265
  %4278 = lshr i32 %4277, 4
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  store i8 %4280, i8* %27, align 1
  %4281 = icmp eq i32 %4265, 0
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %30, align 1
  %4283 = lshr i32 %4265, 31
  %4284 = trunc i32 %4283 to i8
  store i8 %4284, i8* %33, align 1
  %4285 = lshr i32 %4259, 31
  %4286 = lshr i32 %4264, 31
  %4287 = xor i32 %4283, %4285
  %4288 = xor i32 %4283, %4286
  %4289 = add nuw nsw i32 %4287, %4288
  %4290 = icmp eq i32 %4289, 2
  %4291 = zext i1 %4290 to i8
  store i8 %4291, i8* %39, align 1
  %4292 = add i64 %4245, -28
  %4293 = add i64 %4244, 9
  store i64 %4293, i64* %3, align 8
  %4294 = inttoptr i64 %4292 to i32*
  %4295 = load i32, i32* %4294, align 4
  %4296 = add i32 %4295, %4265
  %4297 = zext i32 %4296 to i64
  store i64 %4297, i64* %RAX.i2276, align 8
  %4298 = icmp ult i32 %4296, %4265
  %4299 = icmp ult i32 %4296, %4295
  %4300 = or i1 %4298, %4299
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %14, align 1
  %4302 = and i32 %4296, 255
  %4303 = tail call i32 @llvm.ctpop.i32(i32 %4302)
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = xor i8 %4305, 1
  store i8 %4306, i8* %21, align 1
  %4307 = xor i32 %4295, %4265
  %4308 = xor i32 %4307, %4296
  %4309 = lshr i32 %4308, 4
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  store i8 %4311, i8* %27, align 1
  %4312 = icmp eq i32 %4296, 0
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %30, align 1
  %4314 = lshr i32 %4296, 31
  %4315 = trunc i32 %4314 to i8
  store i8 %4315, i8* %33, align 1
  %4316 = lshr i32 %4295, 31
  %4317 = xor i32 %4314, %4283
  %4318 = xor i32 %4314, %4316
  %4319 = add nuw nsw i32 %4317, %4318
  %4320 = icmp eq i32 %4319, 2
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %39, align 1
  %4322 = add i64 %4245, -252
  %4323 = add i64 %4244, 15
  store i64 %4323, i64* %3, align 8
  %4324 = inttoptr i64 %4322 to i32*
  store i32 %4296, i32* %4324, align 4
  %.pre345 = load i64, i64* %3, align 8
  br label %block_.L_482a42

block_.L_482a42:                                  ; preds = %block_.L_482a33, %block_482a25
  %4325 = phi i64 [ %.pre345, %block_.L_482a33 ], [ %4255, %block_482a25 ]
  %4326 = load i64, i64* %RBP.i, align 8
  %4327 = add i64 %4326, -252
  %4328 = add i64 %4325, 6
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i32*
  %4330 = load i32, i32* %4329, align 4
  %4331 = zext i32 %4330 to i64
  store i64 %4331, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %4332 = sub i32 0, %4330
  %4333 = icmp ne i32 %4330, 0
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %14, align 1
  %4335 = and i32 %4332, 255
  %4336 = tail call i32 @llvm.ctpop.i32(i32 %4335)
  %4337 = trunc i32 %4336 to i8
  %4338 = and i8 %4337, 1
  %4339 = xor i8 %4338, 1
  store i8 %4339, i8* %21, align 1
  %4340 = xor i32 %4330, %4332
  %4341 = lshr i32 %4340, 4
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  store i8 %4343, i8* %27, align 1
  %4344 = icmp eq i32 %4330, 0
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %30, align 1
  %4346 = lshr i32 %4332, 31
  %4347 = trunc i32 %4346 to i8
  store i8 %4347, i8* %33, align 1
  %4348 = lshr i32 %4330, 31
  %4349 = add nuw nsw i32 %4346, %4348
  %4350 = icmp eq i32 %4349, 2
  %4351 = zext i1 %4350 to i8
  store i8 %4351, i8* %39, align 1
  %4352 = icmp ne i8 %4347, 0
  %4353 = xor i1 %4352, %4350
  %4354 = or i1 %4344, %4353
  %.v433 = select i1 %4354, i64 29, i64 16
  %4355 = add i64 %4325, %.v433
  store i64 %4355, i64* %3, align 8
  br i1 %4354, label %block_.L_482a5f, label %block_482a52

block_482a52:                                     ; preds = %block_.L_482a42
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4356 = add i64 %4326, -256
  %4357 = add i64 %4355, 8
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i32*
  store i32 0, i32* %4358, align 4
  %4359 = load i64, i64* %3, align 8
  %4360 = add i64 %4359, 66
  store i64 %4360, i64* %3, align 8
  br label %block_.L_482a9c

block_.L_482a5f:                                  ; preds = %block_.L_482a42
  %4361 = add i64 %4326, -72
  %4362 = add i64 %4355, 3
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  %4365 = zext i32 %4364 to i64
  store i64 %4365, i64* %RAX.i2276, align 8
  %4366 = add i64 %4326, -52
  %4367 = add i64 %4355, 6
  store i64 %4367, i64* %3, align 8
  %4368 = inttoptr i64 %4366 to i32*
  %4369 = load i32, i32* %4368, align 4
  %4370 = zext i32 %4369 to i64
  store i64 %4370, i64* %RCX.i2274, align 8
  %4371 = add i64 %4326, -60
  %4372 = add i64 %4355, 9
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4371 to i32*
  %4374 = load i32, i32* %4373, align 4
  %4375 = add i32 %4374, %4369
  %4376 = zext i32 %4375 to i64
  store i64 %4376, i64* %RCX.i2274, align 8
  %4377 = icmp ult i32 %4375, %4369
  %4378 = icmp ult i32 %4375, %4374
  %4379 = or i1 %4377, %4378
  %4380 = zext i1 %4379 to i8
  store i8 %4380, i8* %14, align 1
  %4381 = and i32 %4375, 255
  %4382 = tail call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  store i8 %4385, i8* %21, align 1
  %4386 = xor i32 %4374, %4369
  %4387 = xor i32 %4386, %4375
  %4388 = lshr i32 %4387, 4
  %4389 = trunc i32 %4388 to i8
  %4390 = and i8 %4389, 1
  store i8 %4390, i8* %27, align 1
  %4391 = icmp eq i32 %4375, 0
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %30, align 1
  %4393 = lshr i32 %4375, 31
  %4394 = trunc i32 %4393 to i8
  store i8 %4394, i8* %33, align 1
  %4395 = lshr i32 %4369, 31
  %4396 = lshr i32 %4374, 31
  %4397 = xor i32 %4393, %4395
  %4398 = xor i32 %4393, %4396
  %4399 = add nuw nsw i32 %4397, %4398
  %4400 = icmp eq i32 %4399, 2
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %39, align 1
  %4402 = add i64 %4326, -28
  %4403 = add i64 %4355, 12
  store i64 %4403, i64* %3, align 8
  %4404 = inttoptr i64 %4402 to i32*
  %4405 = load i32, i32* %4404, align 4
  %4406 = add i32 %4405, %4375
  %4407 = zext i32 %4406 to i64
  store i64 %4407, i64* %RCX.i2274, align 8
  %4408 = lshr i32 %4406, 31
  %4409 = sub i32 %4364, %4406
  %4410 = icmp ult i32 %4364, %4406
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %14, align 1
  %4412 = and i32 %4409, 255
  %4413 = tail call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  store i8 %4416, i8* %21, align 1
  %4417 = xor i32 %4406, %4364
  %4418 = xor i32 %4417, %4409
  %4419 = lshr i32 %4418, 4
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %27, align 1
  %4422 = icmp eq i32 %4409, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %30, align 1
  %4424 = lshr i32 %4409, 31
  %4425 = trunc i32 %4424 to i8
  store i8 %4425, i8* %33, align 1
  %4426 = lshr i32 %4364, 31
  %4427 = xor i32 %4408, %4426
  %4428 = xor i32 %4424, %4426
  %4429 = add nuw nsw i32 %4428, %4427
  %4430 = icmp eq i32 %4429, 2
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %39, align 1
  %4432 = icmp ne i8 %4425, 0
  %4433 = xor i1 %4432, %4430
  %.v434 = select i1 %4433, i64 20, i64 34
  %4434 = add i64 %4355, %.v434
  store i64 %4434, i64* %3, align 8
  %4435 = load i64, i64* %RBP.i, align 8
  br i1 %4433, label %block_482a73, label %block_.L_482a81

block_482a73:                                     ; preds = %block_.L_482a5f
  %4436 = add i64 %4435, -72
  %4437 = add i64 %4434, 3
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4436 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %RAX.i2276, align 8
  %4441 = add i64 %4435, -260
  %4442 = add i64 %4434, 9
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  store i32 %4439, i32* %4443, align 4
  %4444 = load i64, i64* %3, align 8
  %4445 = add i64 %4444, 20
  store i64 %4445, i64* %3, align 8
  br label %block_.L_482a90

block_.L_482a81:                                  ; preds = %block_.L_482a5f
  %4446 = add i64 %4435, -52
  %4447 = add i64 %4434, 3
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i32*
  %4449 = load i32, i32* %4448, align 4
  %4450 = zext i32 %4449 to i64
  store i64 %4450, i64* %RAX.i2276, align 8
  %4451 = add i64 %4435, -60
  %4452 = add i64 %4434, 6
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4451 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = add i32 %4454, %4449
  %4456 = zext i32 %4455 to i64
  store i64 %4456, i64* %RAX.i2276, align 8
  %4457 = icmp ult i32 %4455, %4449
  %4458 = icmp ult i32 %4455, %4454
  %4459 = or i1 %4457, %4458
  %4460 = zext i1 %4459 to i8
  store i8 %4460, i8* %14, align 1
  %4461 = and i32 %4455, 255
  %4462 = tail call i32 @llvm.ctpop.i32(i32 %4461)
  %4463 = trunc i32 %4462 to i8
  %4464 = and i8 %4463, 1
  %4465 = xor i8 %4464, 1
  store i8 %4465, i8* %21, align 1
  %4466 = xor i32 %4454, %4449
  %4467 = xor i32 %4466, %4455
  %4468 = lshr i32 %4467, 4
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  store i8 %4470, i8* %27, align 1
  %4471 = icmp eq i32 %4455, 0
  %4472 = zext i1 %4471 to i8
  store i8 %4472, i8* %30, align 1
  %4473 = lshr i32 %4455, 31
  %4474 = trunc i32 %4473 to i8
  store i8 %4474, i8* %33, align 1
  %4475 = lshr i32 %4449, 31
  %4476 = lshr i32 %4454, 31
  %4477 = xor i32 %4473, %4475
  %4478 = xor i32 %4473, %4476
  %4479 = add nuw nsw i32 %4477, %4478
  %4480 = icmp eq i32 %4479, 2
  %4481 = zext i1 %4480 to i8
  store i8 %4481, i8* %39, align 1
  %4482 = add i64 %4435, -28
  %4483 = add i64 %4434, 9
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  %4486 = add i32 %4485, %4455
  %4487 = zext i32 %4486 to i64
  store i64 %4487, i64* %RAX.i2276, align 8
  %4488 = icmp ult i32 %4486, %4455
  %4489 = icmp ult i32 %4486, %4485
  %4490 = or i1 %4488, %4489
  %4491 = zext i1 %4490 to i8
  store i8 %4491, i8* %14, align 1
  %4492 = and i32 %4486, 255
  %4493 = tail call i32 @llvm.ctpop.i32(i32 %4492)
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  store i8 %4496, i8* %21, align 1
  %4497 = xor i32 %4485, %4455
  %4498 = xor i32 %4497, %4486
  %4499 = lshr i32 %4498, 4
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  store i8 %4501, i8* %27, align 1
  %4502 = icmp eq i32 %4486, 0
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %30, align 1
  %4504 = lshr i32 %4486, 31
  %4505 = trunc i32 %4504 to i8
  store i8 %4505, i8* %33, align 1
  %4506 = lshr i32 %4485, 31
  %4507 = xor i32 %4504, %4473
  %4508 = xor i32 %4504, %4506
  %4509 = add nuw nsw i32 %4507, %4508
  %4510 = icmp eq i32 %4509, 2
  %4511 = zext i1 %4510 to i8
  store i8 %4511, i8* %39, align 1
  %4512 = add i64 %4435, -260
  %4513 = add i64 %4434, 15
  store i64 %4513, i64* %3, align 8
  %4514 = inttoptr i64 %4512 to i32*
  store i32 %4486, i32* %4514, align 4
  %.pre346 = load i64, i64* %3, align 8
  br label %block_.L_482a90

block_.L_482a90:                                  ; preds = %block_.L_482a81, %block_482a73
  %4515 = phi i64 [ %.pre346, %block_.L_482a81 ], [ %4445, %block_482a73 ]
  %4516 = load i64, i64* %RBP.i, align 8
  %4517 = add i64 %4516, -260
  %4518 = add i64 %4515, 6
  store i64 %4518, i64* %3, align 8
  %4519 = inttoptr i64 %4517 to i32*
  %4520 = load i32, i32* %4519, align 4
  %4521 = zext i32 %4520 to i64
  store i64 %4521, i64* %RAX.i2276, align 8
  %4522 = add i64 %4516, -256
  %4523 = add i64 %4515, 12
  store i64 %4523, i64* %3, align 8
  %4524 = inttoptr i64 %4522 to i32*
  store i32 %4520, i32* %4524, align 4
  %.pre347 = load i64, i64* %3, align 8
  br label %block_.L_482a9c

block_.L_482a9c:                                  ; preds = %block_.L_482a90, %block_482a52
  %4525 = phi i64 [ %.pre347, %block_.L_482a90 ], [ %4360, %block_482a52 ]
  %4526 = load i64, i64* %RBP.i, align 8
  %4527 = add i64 %4526, -256
  %4528 = add i64 %4525, 6
  store i64 %4528, i64* %3, align 8
  %4529 = inttoptr i64 %4527 to i32*
  %4530 = load i32, i32* %4529, align 4
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RAX.i2276, align 8
  %4532 = add i64 %4526, -64
  %4533 = add i64 %4525, 9
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  store i32 %4530, i32* %4534, align 4
  %4535 = load i64, i64* %3, align 8
  %4536 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %4536, i64* %RCX.i2274, align 8
  %4537 = load i64, i64* %RBP.i, align 8
  %4538 = add i64 %4537, -68
  %4539 = add i64 %4535, 12
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4538 to i32*
  %4541 = load i32, i32* %4540, align 4
  %4542 = sext i32 %4541 to i64
  store i64 %4542, i64* %RDX.i2161, align 8
  %4543 = shl nsw i64 %4542, 3
  %4544 = add i64 %4543, %4536
  %4545 = add i64 %4535, 16
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4544 to i64*
  %4547 = load i64, i64* %4546, align 8
  store i64 %4547, i64* %RCX.i2274, align 8
  %4548 = add i64 %4537, -64
  %4549 = add i64 %4535, 20
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  %4551 = load i32, i32* %4550, align 4
  %4552 = sext i32 %4551 to i64
  store i64 %4552, i64* %RDX.i2161, align 8
  %4553 = add i64 %4547, %4552
  %4554 = add i64 %4535, 24
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4553 to i8*
  %4556 = load i8, i8* %4555, align 1
  %4557 = zext i8 %4556 to i64
  store i64 %4557, i64* %RAX.i2276, align 8
  %4558 = zext i8 %4556 to i32
  %4559 = add i64 %4537, -80
  %4560 = add i64 %4535, 27
  store i64 %4560, i64* %3, align 8
  %4561 = inttoptr i64 %4559 to i32*
  %4562 = load i32, i32* %4561, align 4
  %4563 = sub i32 %4558, %4562
  %4564 = icmp ult i32 %4558, %4562
  %4565 = zext i1 %4564 to i8
  store i8 %4565, i8* %14, align 1
  %4566 = and i32 %4563, 255
  %4567 = tail call i32 @llvm.ctpop.i32(i32 %4566)
  %4568 = trunc i32 %4567 to i8
  %4569 = and i8 %4568, 1
  %4570 = xor i8 %4569, 1
  store i8 %4570, i8* %21, align 1
  %4571 = xor i32 %4562, %4558
  %4572 = xor i32 %4571, %4563
  %4573 = lshr i32 %4572, 4
  %4574 = trunc i32 %4573 to i8
  %4575 = and i8 %4574, 1
  store i8 %4575, i8* %27, align 1
  %4576 = icmp eq i32 %4563, 0
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %30, align 1
  %4578 = lshr i32 %4563, 31
  %4579 = trunc i32 %4578 to i8
  store i8 %4579, i8* %33, align 1
  %4580 = lshr i32 %4562, 31
  %4581 = add nuw nsw i32 %4578, %4580
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  store i8 %4583, i8* %39, align 1
  %4584 = icmp ne i8 %4579, 0
  %4585 = xor i1 %4584, %4582
  %.v388 = select i1 %4585, i64 33, i64 45
  %4586 = add i64 %4535, %.v388
  store i64 %4586, i64* %3, align 8
  br i1 %4585, label %block_482ac6, label %block_.L_482ad2

block_482ac6:                                     ; preds = %block_.L_482a9c
  %4587 = add i64 %4537, -4
  %4588 = add i64 %4586, 7
  store i64 %4588, i64* %3, align 8
  %4589 = inttoptr i64 %4587 to i32*
  store i32 0, i32* %4589, align 4
  %4590 = load i64, i64* %3, align 8
  %4591 = add i64 %4590, 1528
  store i64 %4591, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_482ad2:                                  ; preds = %block_.L_482a9c
  %4592 = add i64 %4537, -60
  %4593 = add i64 %4586, 8
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i32*
  %4595 = load i32, i32* %4594, align 4
  %4596 = add i32 %4595, 1
  %4597 = zext i32 %4596 to i64
  store i64 %4597, i64* %RAX.i2276, align 8
  %4598 = icmp eq i32 %4595, -1
  %4599 = icmp eq i32 %4596, 0
  %4600 = or i1 %4598, %4599
  %4601 = zext i1 %4600 to i8
  store i8 %4601, i8* %14, align 1
  %4602 = and i32 %4596, 255
  %4603 = tail call i32 @llvm.ctpop.i32(i32 %4602)
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = xor i8 %4605, 1
  store i8 %4606, i8* %21, align 1
  %4607 = xor i32 %4596, %4595
  %4608 = lshr i32 %4607, 4
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  store i8 %4610, i8* %27, align 1
  %4611 = zext i1 %4599 to i8
  store i8 %4611, i8* %30, align 1
  %4612 = lshr i32 %4596, 31
  %4613 = trunc i32 %4612 to i8
  store i8 %4613, i8* %33, align 1
  %4614 = lshr i32 %4595, 31
  %4615 = xor i32 %4612, %4614
  %4616 = add nuw nsw i32 %4615, %4612
  %4617 = icmp eq i32 %4616, 2
  %4618 = zext i1 %4617 to i8
  store i8 %4618, i8* %39, align 1
  %4619 = add i64 %4586, 14
  store i64 %4619, i64* %3, align 8
  store i32 %4596, i32* %4594, align 4
  %4620 = load i64, i64* %3, align 8
  %4621 = add i64 %4620, -217
  store i64 %4621, i64* %3, align 8
  br label %block_.L_482a07

block_.L_482ae5:                                  ; preds = %block_.L_482a07
  %4622 = add i64 %4144, -56
  %4623 = add i64 %4172, 8
  store i64 %4623, i64* %3, align 8
  %4624 = inttoptr i64 %4622 to i32*
  %4625 = load i32, i32* %4624, align 4
  %4626 = add i32 %4625, 1
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RAX.i2276, align 8
  %4628 = icmp eq i32 %4625, -1
  %4629 = icmp eq i32 %4626, 0
  %4630 = or i1 %4628, %4629
  %4631 = zext i1 %4630 to i8
  store i8 %4631, i8* %14, align 1
  %4632 = and i32 %4626, 255
  %4633 = tail call i32 @llvm.ctpop.i32(i32 %4632)
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  %4636 = xor i8 %4635, 1
  store i8 %4636, i8* %21, align 1
  %4637 = xor i32 %4626, %4625
  %4638 = lshr i32 %4637, 4
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  store i8 %4640, i8* %27, align 1
  %4641 = zext i1 %4629 to i8
  store i8 %4641, i8* %30, align 1
  %4642 = lshr i32 %4626, 31
  %4643 = trunc i32 %4642 to i8
  store i8 %4643, i8* %33, align 1
  %4644 = lshr i32 %4625, 31
  %4645 = xor i32 %4642, %4644
  %4646 = add nuw nsw i32 %4645, %4642
  %4647 = icmp eq i32 %4646, 2
  %4648 = zext i1 %4647 to i8
  store i8 %4648, i8* %39, align 1
  %4649 = add i64 %4172, 14
  store i64 %4649, i64* %3, align 8
  store i32 %4626, i32* %4624, align 4
  %4650 = load i64, i64* %3, align 8
  %4651 = add i64 %4650, -401
  store i64 %4651, i64* %3, align 8
  br label %block_.L_482962

block_.L_482af8:                                  ; preds = %block_.L_482962
  %4652 = add i64 %3747, -28
  %4653 = add i64 %3775, 8
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4652 to i32*
  %4655 = load i32, i32* %4654, align 4
  %4656 = add i32 %4655, 1
  %4657 = zext i32 %4656 to i64
  store i64 %4657, i64* %RAX.i2276, align 8
  %4658 = icmp eq i32 %4655, -1
  %4659 = icmp eq i32 %4656, 0
  %4660 = or i1 %4658, %4659
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %14, align 1
  %4662 = and i32 %4656, 255
  %4663 = tail call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  store i8 %4666, i8* %21, align 1
  %4667 = xor i32 %4656, %4655
  %4668 = lshr i32 %4667, 4
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  store i8 %4670, i8* %27, align 1
  %4671 = zext i1 %4659 to i8
  store i8 %4671, i8* %30, align 1
  %4672 = lshr i32 %4656, 31
  %4673 = trunc i32 %4672 to i8
  store i8 %4673, i8* %33, align 1
  %4674 = lshr i32 %4655, 31
  %4675 = xor i32 %4672, %4674
  %4676 = add nuw nsw i32 %4675, %4672
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %39, align 1
  %4679 = add i64 %3775, 14
  store i64 %4679, i64* %3, align 8
  store i32 %4656, i32* %4654, align 4
  %4680 = load i64, i64* %3, align 8
  %4681 = add i64 %4680, -437
  store i64 %4681, i64* %3, align 8
  br label %block_.L_482951

block_.L_482b0b:                                  ; preds = %block_.L_482951
  %4682 = add i64 %3714, -24
  %4683 = add i64 %3742, 8
  store i64 %4683, i64* %3, align 8
  %4684 = inttoptr i64 %4682 to i32*
  %4685 = load i32, i32* %4684, align 4
  %4686 = add i32 %4685, 1
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RAX.i2276, align 8
  %4688 = icmp eq i32 %4685, -1
  %4689 = icmp eq i32 %4686, 0
  %4690 = or i1 %4688, %4689
  %4691 = zext i1 %4690 to i8
  store i8 %4691, i8* %14, align 1
  %4692 = and i32 %4686, 255
  %4693 = tail call i32 @llvm.ctpop.i32(i32 %4692)
  %4694 = trunc i32 %4693 to i8
  %4695 = and i8 %4694, 1
  %4696 = xor i8 %4695, 1
  store i8 %4696, i8* %21, align 1
  %4697 = xor i32 %4686, %4685
  %4698 = lshr i32 %4697, 4
  %4699 = trunc i32 %4698 to i8
  %4700 = and i8 %4699, 1
  store i8 %4700, i8* %27, align 1
  %4701 = zext i1 %4689 to i8
  store i8 %4701, i8* %30, align 1
  %4702 = lshr i32 %4686, 31
  %4703 = trunc i32 %4702 to i8
  store i8 %4703, i8* %33, align 1
  %4704 = lshr i32 %4685, 31
  %4705 = xor i32 %4702, %4704
  %4706 = add nuw nsw i32 %4705, %4702
  %4707 = icmp eq i32 %4706, 2
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %39, align 1
  %4709 = add i64 %3742, 14
  store i64 %4709, i64* %3, align 8
  store i32 %4686, i32* %4684, align 4
  %4710 = load i64, i64* %3, align 8
  %4711 = add i64 %4710, -473
  store i64 %4711, i64* %3, align 8
  br label %block_.L_482940

block_.L_482b1e:                                  ; preds = %block_.L_482940
  %4712 = add i64 %3709, 1387
  br label %block_.L_483089

block_.L_482b23:                                  ; preds = %block_.L_48292f
  %4713 = add i64 %3676, 4
  store i64 %4713, i64* %3, align 8
  %4714 = load i32, i32* %1269, align 4
  %4715 = add i32 %4714, -2
  %4716 = icmp ult i32 %4714, 2
  %4717 = zext i1 %4716 to i8
  store i8 %4717, i8* %14, align 1
  %4718 = and i32 %4715, 255
  %4719 = tail call i32 @llvm.ctpop.i32(i32 %4718)
  %4720 = trunc i32 %4719 to i8
  %4721 = and i8 %4720, 1
  %4722 = xor i8 %4721, 1
  store i8 %4722, i8* %21, align 1
  %4723 = xor i32 %4715, %4714
  %4724 = lshr i32 %4723, 4
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  store i8 %4726, i8* %27, align 1
  %4727 = icmp eq i32 %4715, 0
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %30, align 1
  %4729 = lshr i32 %4715, 31
  %4730 = trunc i32 %4729 to i8
  store i8 %4730, i8* %33, align 1
  %4731 = lshr i32 %4714, 31
  %4732 = xor i32 %4729, %4731
  %4733 = add nuw nsw i32 %4732, %4731
  %4734 = icmp eq i32 %4733, 2
  %4735 = zext i1 %4734 to i8
  store i8 %4735, i8* %39, align 1
  %.v389 = select i1 %4727, i64 10, i64 500
  %4736 = add i64 %3676, %.v389
  %4737 = add i64 %1265, -24
  %4738 = add i64 %4736, 7
  store i64 %4738, i64* %3, align 8
  %4739 = inttoptr i64 %4737 to i32*
  store i32 0, i32* %4739, align 4
  %.pre348 = load i64, i64* %3, align 8
  br i1 %4727, label %block_.L_482b34.preheader, label %block_.L_482d1e.preheader

block_.L_482d1e.preheader:                        ; preds = %block_.L_482b23
  br label %block_.L_482d1e

block_.L_482b34.preheader:                        ; preds = %block_.L_482b23
  br label %block_.L_482b34

block_.L_482b34:                                  ; preds = %block_.L_482b34.preheader, %block_.L_482cff
  %4740 = phi i64 [ %5771, %block_.L_482cff ], [ %.pre348, %block_.L_482b34.preheader ]
  %4741 = load i64, i64* %RBP.i, align 8
  %4742 = add i64 %4741, -24
  %4743 = add i64 %4740, 4
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = add i32 %4745, -4
  %4747 = icmp ult i32 %4745, 4
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %14, align 1
  %4749 = and i32 %4746, 255
  %4750 = tail call i32 @llvm.ctpop.i32(i32 %4749)
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = xor i8 %4752, 1
  store i8 %4753, i8* %21, align 1
  %4754 = xor i32 %4746, %4745
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  store i8 %4757, i8* %27, align 1
  %4758 = icmp eq i32 %4746, 0
  %4759 = zext i1 %4758 to i8
  store i8 %4759, i8* %30, align 1
  %4760 = lshr i32 %4746, 31
  %4761 = trunc i32 %4760 to i8
  store i8 %4761, i8* %33, align 1
  %4762 = lshr i32 %4745, 31
  %4763 = xor i32 %4760, %4762
  %4764 = add nuw nsw i32 %4763, %4762
  %4765 = icmp eq i32 %4764, 2
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %39, align 1
  %4767 = icmp ne i8 %4761, 0
  %4768 = xor i1 %4767, %4765
  %.v422 = select i1 %4768, i64 10, i64 478
  %4769 = add i64 %4740, %.v422
  store i64 %4769, i64* %3, align 8
  br i1 %4768, label %block_482b3e, label %block_.L_482d12

block_482b3e:                                     ; preds = %block_.L_482b34
  %4770 = add i64 %4741, -28
  %4771 = add i64 %4769, 7
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i32*
  store i32 0, i32* %4772, align 4
  %.pre349 = load i64, i64* %3, align 8
  br label %block_.L_482b45

block_.L_482b45:                                  ; preds = %block_.L_482cec, %block_482b3e
  %4773 = phi i64 [ %5741, %block_.L_482cec ], [ %.pre349, %block_482b3e ]
  %4774 = load i64, i64* %RBP.i, align 8
  %4775 = add i64 %4774, -28
  %4776 = add i64 %4773, 4
  store i64 %4776, i64* %3, align 8
  %4777 = inttoptr i64 %4775 to i32*
  %4778 = load i32, i32* %4777, align 4
  %4779 = add i32 %4778, -4
  %4780 = icmp ult i32 %4778, 4
  %4781 = zext i1 %4780 to i8
  store i8 %4781, i8* %14, align 1
  %4782 = and i32 %4779, 255
  %4783 = tail call i32 @llvm.ctpop.i32(i32 %4782)
  %4784 = trunc i32 %4783 to i8
  %4785 = and i8 %4784, 1
  %4786 = xor i8 %4785, 1
  store i8 %4786, i8* %21, align 1
  %4787 = xor i32 %4779, %4778
  %4788 = lshr i32 %4787, 4
  %4789 = trunc i32 %4788 to i8
  %4790 = and i8 %4789, 1
  store i8 %4790, i8* %27, align 1
  %4791 = icmp eq i32 %4779, 0
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %30, align 1
  %4793 = lshr i32 %4779, 31
  %4794 = trunc i32 %4793 to i8
  store i8 %4794, i8* %33, align 1
  %4795 = lshr i32 %4778, 31
  %4796 = xor i32 %4793, %4795
  %4797 = add nuw nsw i32 %4796, %4795
  %4798 = icmp eq i32 %4797, 2
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %39, align 1
  %4800 = icmp ne i8 %4794, 0
  %4801 = xor i1 %4800, %4798
  %.v393 = select i1 %4801, i64 10, i64 442
  %4802 = add i64 %4773, %.v393
  store i64 %4802, i64* %3, align 8
  br i1 %4801, label %block_482b4f, label %block_.L_482cff

block_482b4f:                                     ; preds = %block_.L_482b45
  %4803 = add i64 %4774, -60
  %4804 = add i64 %4802, 7
  store i64 %4804, i64* %3, align 8
  %4805 = inttoptr i64 %4803 to i32*
  store i32 -2, i32* %4805, align 4
  %.pre350 = load i64, i64* %3, align 8
  br label %block_.L_482b56

block_.L_482b56:                                  ; preds = %block_.L_482cd9, %block_482b4f
  %4806 = phi i64 [ %5711, %block_.L_482cd9 ], [ %.pre350, %block_482b4f ]
  %4807 = load i64, i64* %RBP.i, align 8
  %4808 = add i64 %4807, -60
  %4809 = add i64 %4806, 4
  store i64 %4809, i64* %3, align 8
  %4810 = inttoptr i64 %4808 to i32*
  %4811 = load i32, i32* %4810, align 4
  %4812 = add i32 %4811, -4
  %4813 = icmp ult i32 %4811, 4
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %14, align 1
  %4815 = and i32 %4812, 255
  %4816 = tail call i32 @llvm.ctpop.i32(i32 %4815)
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  %4819 = xor i8 %4818, 1
  store i8 %4819, i8* %21, align 1
  %4820 = xor i32 %4812, %4811
  %4821 = lshr i32 %4820, 4
  %4822 = trunc i32 %4821 to i8
  %4823 = and i8 %4822, 1
  store i8 %4823, i8* %27, align 1
  %4824 = icmp eq i32 %4812, 0
  %4825 = zext i1 %4824 to i8
  store i8 %4825, i8* %30, align 1
  %4826 = lshr i32 %4812, 31
  %4827 = trunc i32 %4826 to i8
  store i8 %4827, i8* %33, align 1
  %4828 = lshr i32 %4811, 31
  %4829 = xor i32 %4826, %4828
  %4830 = add nuw nsw i32 %4829, %4828
  %4831 = icmp eq i32 %4830, 2
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %39, align 1
  %4833 = icmp ne i8 %4827, 0
  %4834 = xor i1 %4833, %4831
  %.v394 = select i1 %4834, i64 10, i64 406
  %4835 = add i64 %4806, %.v394
  store i64 %4835, i64* %3, align 8
  br i1 %4834, label %block_482b60, label %block_.L_482cec

block_482b60:                                     ; preds = %block_.L_482b56
  %4836 = add i64 %4807, -72
  %4837 = add i64 %4835, 3
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  %4839 = load i32, i32* %4838, align 4
  %4840 = zext i32 %4839 to i64
  store i64 %4840, i64* %RAX.i2276, align 8
  %4841 = add i64 %4807, -52
  %4842 = add i64 %4835, 6
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = zext i32 %4844 to i64
  store i64 %4845, i64* %RCX.i2274, align 8
  %4846 = add i64 %4835, 9
  store i64 %4846, i64* %3, align 8
  %4847 = load i32, i32* %4810, align 4
  %4848 = add i32 %4847, %4844
  %4849 = zext i32 %4848 to i64
  store i64 %4849, i64* %RCX.i2274, align 8
  %4850 = icmp ult i32 %4848, %4844
  %4851 = icmp ult i32 %4848, %4847
  %4852 = or i1 %4850, %4851
  %4853 = zext i1 %4852 to i8
  store i8 %4853, i8* %14, align 1
  %4854 = and i32 %4848, 255
  %4855 = tail call i32 @llvm.ctpop.i32(i32 %4854)
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  store i8 %4858, i8* %21, align 1
  %4859 = xor i32 %4847, %4844
  %4860 = xor i32 %4859, %4848
  %4861 = lshr i32 %4860, 4
  %4862 = trunc i32 %4861 to i8
  %4863 = and i8 %4862, 1
  store i8 %4863, i8* %27, align 1
  %4864 = icmp eq i32 %4848, 0
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %30, align 1
  %4866 = lshr i32 %4848, 31
  %4867 = trunc i32 %4866 to i8
  store i8 %4867, i8* %33, align 1
  %4868 = lshr i32 %4844, 31
  %4869 = lshr i32 %4847, 31
  %4870 = xor i32 %4866, %4868
  %4871 = xor i32 %4866, %4869
  %4872 = add nuw nsw i32 %4870, %4871
  %4873 = icmp eq i32 %4872, 2
  %4874 = zext i1 %4873 to i8
  store i8 %4874, i8* %39, align 1
  %4875 = add i64 %4807, -28
  %4876 = add i64 %4835, 12
  store i64 %4876, i64* %3, align 8
  %4877 = inttoptr i64 %4875 to i32*
  %4878 = load i32, i32* %4877, align 4
  %4879 = add i32 %4878, %4848
  %4880 = zext i32 %4879 to i64
  store i64 %4880, i64* %RCX.i2274, align 8
  %4881 = lshr i32 %4879, 31
  %4882 = sub i32 %4839, %4879
  %4883 = icmp ult i32 %4839, %4879
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %14, align 1
  %4885 = and i32 %4882, 255
  %4886 = tail call i32 @llvm.ctpop.i32(i32 %4885)
  %4887 = trunc i32 %4886 to i8
  %4888 = and i8 %4887, 1
  %4889 = xor i8 %4888, 1
  store i8 %4889, i8* %21, align 1
  %4890 = xor i32 %4879, %4839
  %4891 = xor i32 %4890, %4882
  %4892 = lshr i32 %4891, 4
  %4893 = trunc i32 %4892 to i8
  %4894 = and i8 %4893, 1
  store i8 %4894, i8* %27, align 1
  %4895 = icmp eq i32 %4882, 0
  %4896 = zext i1 %4895 to i8
  store i8 %4896, i8* %30, align 1
  %4897 = lshr i32 %4882, 31
  %4898 = trunc i32 %4897 to i8
  store i8 %4898, i8* %33, align 1
  %4899 = lshr i32 %4839, 31
  %4900 = xor i32 %4881, %4899
  %4901 = xor i32 %4897, %4899
  %4902 = add nuw nsw i32 %4901, %4900
  %4903 = icmp eq i32 %4902, 2
  %4904 = zext i1 %4903 to i8
  store i8 %4904, i8* %39, align 1
  %4905 = icmp ne i8 %4898, 0
  %4906 = xor i1 %4905, %4903
  %.v423 = select i1 %4906, i64 20, i64 34
  %4907 = add i64 %4835, %.v423
  store i64 %4907, i64* %3, align 8
  %4908 = load i64, i64* %RBP.i, align 8
  br i1 %4906, label %block_482b74, label %block_.L_482b82

block_482b74:                                     ; preds = %block_482b60
  %4909 = add i64 %4908, -72
  %4910 = add i64 %4907, 3
  store i64 %4910, i64* %3, align 8
  %4911 = inttoptr i64 %4909 to i32*
  %4912 = load i32, i32* %4911, align 4
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RAX.i2276, align 8
  %4914 = add i64 %4908, -264
  %4915 = add i64 %4907, 9
  store i64 %4915, i64* %3, align 8
  %4916 = inttoptr i64 %4914 to i32*
  store i32 %4912, i32* %4916, align 4
  %4917 = load i64, i64* %3, align 8
  %4918 = add i64 %4917, 20
  store i64 %4918, i64* %3, align 8
  br label %block_.L_482b91

block_.L_482b82:                                  ; preds = %block_482b60
  %4919 = add i64 %4908, -52
  %4920 = add i64 %4907, 3
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4919 to i32*
  %4922 = load i32, i32* %4921, align 4
  %4923 = zext i32 %4922 to i64
  store i64 %4923, i64* %RAX.i2276, align 8
  %4924 = add i64 %4908, -60
  %4925 = add i64 %4907, 6
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = add i32 %4927, %4922
  %4929 = zext i32 %4928 to i64
  store i64 %4929, i64* %RAX.i2276, align 8
  %4930 = icmp ult i32 %4928, %4922
  %4931 = icmp ult i32 %4928, %4927
  %4932 = or i1 %4930, %4931
  %4933 = zext i1 %4932 to i8
  store i8 %4933, i8* %14, align 1
  %4934 = and i32 %4928, 255
  %4935 = tail call i32 @llvm.ctpop.i32(i32 %4934)
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = xor i8 %4937, 1
  store i8 %4938, i8* %21, align 1
  %4939 = xor i32 %4927, %4922
  %4940 = xor i32 %4939, %4928
  %4941 = lshr i32 %4940, 4
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %27, align 1
  %4944 = icmp eq i32 %4928, 0
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %30, align 1
  %4946 = lshr i32 %4928, 31
  %4947 = trunc i32 %4946 to i8
  store i8 %4947, i8* %33, align 1
  %4948 = lshr i32 %4922, 31
  %4949 = lshr i32 %4927, 31
  %4950 = xor i32 %4946, %4948
  %4951 = xor i32 %4946, %4949
  %4952 = add nuw nsw i32 %4950, %4951
  %4953 = icmp eq i32 %4952, 2
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %39, align 1
  %4955 = add i64 %4908, -28
  %4956 = add i64 %4907, 9
  store i64 %4956, i64* %3, align 8
  %4957 = inttoptr i64 %4955 to i32*
  %4958 = load i32, i32* %4957, align 4
  %4959 = add i32 %4958, %4928
  %4960 = zext i32 %4959 to i64
  store i64 %4960, i64* %RAX.i2276, align 8
  %4961 = icmp ult i32 %4959, %4928
  %4962 = icmp ult i32 %4959, %4958
  %4963 = or i1 %4961, %4962
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %14, align 1
  %4965 = and i32 %4959, 255
  %4966 = tail call i32 @llvm.ctpop.i32(i32 %4965)
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = xor i8 %4968, 1
  store i8 %4969, i8* %21, align 1
  %4970 = xor i32 %4958, %4928
  %4971 = xor i32 %4970, %4959
  %4972 = lshr i32 %4971, 4
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  store i8 %4974, i8* %27, align 1
  %4975 = icmp eq i32 %4959, 0
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %30, align 1
  %4977 = lshr i32 %4959, 31
  %4978 = trunc i32 %4977 to i8
  store i8 %4978, i8* %33, align 1
  %4979 = lshr i32 %4958, 31
  %4980 = xor i32 %4977, %4946
  %4981 = xor i32 %4977, %4979
  %4982 = add nuw nsw i32 %4980, %4981
  %4983 = icmp eq i32 %4982, 2
  %4984 = zext i1 %4983 to i8
  store i8 %4984, i8* %39, align 1
  %4985 = add i64 %4908, -264
  %4986 = add i64 %4907, 15
  store i64 %4986, i64* %3, align 8
  %4987 = inttoptr i64 %4985 to i32*
  store i32 %4959, i32* %4987, align 4
  %.pre351 = load i64, i64* %3, align 8
  br label %block_.L_482b91

block_.L_482b91:                                  ; preds = %block_.L_482b82, %block_482b74
  %4988 = phi i64 [ %.pre351, %block_.L_482b82 ], [ %4918, %block_482b74 ]
  %4989 = load i64, i64* %RBP.i, align 8
  %4990 = add i64 %4989, -264
  %4991 = add i64 %4988, 6
  store i64 %4991, i64* %3, align 8
  %4992 = inttoptr i64 %4990 to i32*
  %4993 = load i32, i32* %4992, align 4
  %4994 = zext i32 %4993 to i64
  store i64 %4994, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %4995 = sub i32 0, %4993
  %4996 = icmp ne i32 %4993, 0
  %4997 = zext i1 %4996 to i8
  store i8 %4997, i8* %14, align 1
  %4998 = and i32 %4995, 255
  %4999 = tail call i32 @llvm.ctpop.i32(i32 %4998)
  %5000 = trunc i32 %4999 to i8
  %5001 = and i8 %5000, 1
  %5002 = xor i8 %5001, 1
  store i8 %5002, i8* %21, align 1
  %5003 = xor i32 %4993, %4995
  %5004 = lshr i32 %5003, 4
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  store i8 %5006, i8* %27, align 1
  %5007 = icmp eq i32 %4993, 0
  %5008 = zext i1 %5007 to i8
  store i8 %5008, i8* %30, align 1
  %5009 = lshr i32 %4995, 31
  %5010 = trunc i32 %5009 to i8
  store i8 %5010, i8* %33, align 1
  %5011 = lshr i32 %4993, 31
  %5012 = add nuw nsw i32 %5009, %5011
  %5013 = icmp eq i32 %5012, 2
  %5014 = zext i1 %5013 to i8
  store i8 %5014, i8* %39, align 1
  %5015 = icmp ne i8 %5010, 0
  %5016 = xor i1 %5015, %5013
  %5017 = or i1 %5007, %5016
  %.v424 = select i1 %5017, i64 29, i64 16
  %5018 = add i64 %4988, %.v424
  store i64 %5018, i64* %3, align 8
  br i1 %5017, label %block_.L_482bae, label %block_482ba1

block_482ba1:                                     ; preds = %block_.L_482b91
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5019 = add i64 %4989, -268
  %5020 = add i64 %5018, 8
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  store i32 0, i32* %5021, align 4
  %5022 = load i64, i64* %3, align 8
  %5023 = add i64 %5022, 66
  store i64 %5023, i64* %3, align 8
  br label %block_.L_482beb

block_.L_482bae:                                  ; preds = %block_.L_482b91
  %5024 = add i64 %4989, -72
  %5025 = add i64 %5018, 3
  store i64 %5025, i64* %3, align 8
  %5026 = inttoptr i64 %5024 to i32*
  %5027 = load i32, i32* %5026, align 4
  %5028 = zext i32 %5027 to i64
  store i64 %5028, i64* %RAX.i2276, align 8
  %5029 = add i64 %4989, -52
  %5030 = add i64 %5018, 6
  store i64 %5030, i64* %3, align 8
  %5031 = inttoptr i64 %5029 to i32*
  %5032 = load i32, i32* %5031, align 4
  %5033 = zext i32 %5032 to i64
  store i64 %5033, i64* %RCX.i2274, align 8
  %5034 = add i64 %4989, -60
  %5035 = add i64 %5018, 9
  store i64 %5035, i64* %3, align 8
  %5036 = inttoptr i64 %5034 to i32*
  %5037 = load i32, i32* %5036, align 4
  %5038 = add i32 %5037, %5032
  %5039 = zext i32 %5038 to i64
  store i64 %5039, i64* %RCX.i2274, align 8
  %5040 = icmp ult i32 %5038, %5032
  %5041 = icmp ult i32 %5038, %5037
  %5042 = or i1 %5040, %5041
  %5043 = zext i1 %5042 to i8
  store i8 %5043, i8* %14, align 1
  %5044 = and i32 %5038, 255
  %5045 = tail call i32 @llvm.ctpop.i32(i32 %5044)
  %5046 = trunc i32 %5045 to i8
  %5047 = and i8 %5046, 1
  %5048 = xor i8 %5047, 1
  store i8 %5048, i8* %21, align 1
  %5049 = xor i32 %5037, %5032
  %5050 = xor i32 %5049, %5038
  %5051 = lshr i32 %5050, 4
  %5052 = trunc i32 %5051 to i8
  %5053 = and i8 %5052, 1
  store i8 %5053, i8* %27, align 1
  %5054 = icmp eq i32 %5038, 0
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %30, align 1
  %5056 = lshr i32 %5038, 31
  %5057 = trunc i32 %5056 to i8
  store i8 %5057, i8* %33, align 1
  %5058 = lshr i32 %5032, 31
  %5059 = lshr i32 %5037, 31
  %5060 = xor i32 %5056, %5058
  %5061 = xor i32 %5056, %5059
  %5062 = add nuw nsw i32 %5060, %5061
  %5063 = icmp eq i32 %5062, 2
  %5064 = zext i1 %5063 to i8
  store i8 %5064, i8* %39, align 1
  %5065 = add i64 %4989, -28
  %5066 = add i64 %5018, 12
  store i64 %5066, i64* %3, align 8
  %5067 = inttoptr i64 %5065 to i32*
  %5068 = load i32, i32* %5067, align 4
  %5069 = add i32 %5068, %5038
  %5070 = zext i32 %5069 to i64
  store i64 %5070, i64* %RCX.i2274, align 8
  %5071 = lshr i32 %5069, 31
  %5072 = sub i32 %5027, %5069
  %5073 = icmp ult i32 %5027, %5069
  %5074 = zext i1 %5073 to i8
  store i8 %5074, i8* %14, align 1
  %5075 = and i32 %5072, 255
  %5076 = tail call i32 @llvm.ctpop.i32(i32 %5075)
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  %5079 = xor i8 %5078, 1
  store i8 %5079, i8* %21, align 1
  %5080 = xor i32 %5069, %5027
  %5081 = xor i32 %5080, %5072
  %5082 = lshr i32 %5081, 4
  %5083 = trunc i32 %5082 to i8
  %5084 = and i8 %5083, 1
  store i8 %5084, i8* %27, align 1
  %5085 = icmp eq i32 %5072, 0
  %5086 = zext i1 %5085 to i8
  store i8 %5086, i8* %30, align 1
  %5087 = lshr i32 %5072, 31
  %5088 = trunc i32 %5087 to i8
  store i8 %5088, i8* %33, align 1
  %5089 = lshr i32 %5027, 31
  %5090 = xor i32 %5071, %5089
  %5091 = xor i32 %5087, %5089
  %5092 = add nuw nsw i32 %5091, %5090
  %5093 = icmp eq i32 %5092, 2
  %5094 = zext i1 %5093 to i8
  store i8 %5094, i8* %39, align 1
  %5095 = icmp ne i8 %5088, 0
  %5096 = xor i1 %5095, %5093
  %.v428 = select i1 %5096, i64 20, i64 34
  %5097 = add i64 %5018, %.v428
  store i64 %5097, i64* %3, align 8
  %5098 = load i64, i64* %RBP.i, align 8
  br i1 %5096, label %block_482bc2, label %block_.L_482bd0

block_482bc2:                                     ; preds = %block_.L_482bae
  %5099 = add i64 %5098, -72
  %5100 = add i64 %5097, 3
  store i64 %5100, i64* %3, align 8
  %5101 = inttoptr i64 %5099 to i32*
  %5102 = load i32, i32* %5101, align 4
  %5103 = zext i32 %5102 to i64
  store i64 %5103, i64* %RAX.i2276, align 8
  %5104 = add i64 %5098, -272
  %5105 = add i64 %5097, 9
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i32*
  store i32 %5102, i32* %5106, align 4
  %5107 = load i64, i64* %3, align 8
  %5108 = add i64 %5107, 20
  store i64 %5108, i64* %3, align 8
  br label %block_.L_482bdf

block_.L_482bd0:                                  ; preds = %block_.L_482bae
  %5109 = add i64 %5098, -52
  %5110 = add i64 %5097, 3
  store i64 %5110, i64* %3, align 8
  %5111 = inttoptr i64 %5109 to i32*
  %5112 = load i32, i32* %5111, align 4
  %5113 = zext i32 %5112 to i64
  store i64 %5113, i64* %RAX.i2276, align 8
  %5114 = add i64 %5098, -60
  %5115 = add i64 %5097, 6
  store i64 %5115, i64* %3, align 8
  %5116 = inttoptr i64 %5114 to i32*
  %5117 = load i32, i32* %5116, align 4
  %5118 = add i32 %5117, %5112
  %5119 = zext i32 %5118 to i64
  store i64 %5119, i64* %RAX.i2276, align 8
  %5120 = icmp ult i32 %5118, %5112
  %5121 = icmp ult i32 %5118, %5117
  %5122 = or i1 %5120, %5121
  %5123 = zext i1 %5122 to i8
  store i8 %5123, i8* %14, align 1
  %5124 = and i32 %5118, 255
  %5125 = tail call i32 @llvm.ctpop.i32(i32 %5124)
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  %5128 = xor i8 %5127, 1
  store i8 %5128, i8* %21, align 1
  %5129 = xor i32 %5117, %5112
  %5130 = xor i32 %5129, %5118
  %5131 = lshr i32 %5130, 4
  %5132 = trunc i32 %5131 to i8
  %5133 = and i8 %5132, 1
  store i8 %5133, i8* %27, align 1
  %5134 = icmp eq i32 %5118, 0
  %5135 = zext i1 %5134 to i8
  store i8 %5135, i8* %30, align 1
  %5136 = lshr i32 %5118, 31
  %5137 = trunc i32 %5136 to i8
  store i8 %5137, i8* %33, align 1
  %5138 = lshr i32 %5112, 31
  %5139 = lshr i32 %5117, 31
  %5140 = xor i32 %5136, %5138
  %5141 = xor i32 %5136, %5139
  %5142 = add nuw nsw i32 %5140, %5141
  %5143 = icmp eq i32 %5142, 2
  %5144 = zext i1 %5143 to i8
  store i8 %5144, i8* %39, align 1
  %5145 = add i64 %5098, -28
  %5146 = add i64 %5097, 9
  store i64 %5146, i64* %3, align 8
  %5147 = inttoptr i64 %5145 to i32*
  %5148 = load i32, i32* %5147, align 4
  %5149 = add i32 %5148, %5118
  %5150 = zext i32 %5149 to i64
  store i64 %5150, i64* %RAX.i2276, align 8
  %5151 = icmp ult i32 %5149, %5118
  %5152 = icmp ult i32 %5149, %5148
  %5153 = or i1 %5151, %5152
  %5154 = zext i1 %5153 to i8
  store i8 %5154, i8* %14, align 1
  %5155 = and i32 %5149, 255
  %5156 = tail call i32 @llvm.ctpop.i32(i32 %5155)
  %5157 = trunc i32 %5156 to i8
  %5158 = and i8 %5157, 1
  %5159 = xor i8 %5158, 1
  store i8 %5159, i8* %21, align 1
  %5160 = xor i32 %5148, %5118
  %5161 = xor i32 %5160, %5149
  %5162 = lshr i32 %5161, 4
  %5163 = trunc i32 %5162 to i8
  %5164 = and i8 %5163, 1
  store i8 %5164, i8* %27, align 1
  %5165 = icmp eq i32 %5149, 0
  %5166 = zext i1 %5165 to i8
  store i8 %5166, i8* %30, align 1
  %5167 = lshr i32 %5149, 31
  %5168 = trunc i32 %5167 to i8
  store i8 %5168, i8* %33, align 1
  %5169 = lshr i32 %5148, 31
  %5170 = xor i32 %5167, %5136
  %5171 = xor i32 %5167, %5169
  %5172 = add nuw nsw i32 %5170, %5171
  %5173 = icmp eq i32 %5172, 2
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %39, align 1
  %5175 = add i64 %5098, -272
  %5176 = add i64 %5097, 15
  store i64 %5176, i64* %3, align 8
  %5177 = inttoptr i64 %5175 to i32*
  store i32 %5149, i32* %5177, align 4
  %.pre352 = load i64, i64* %3, align 8
  br label %block_.L_482bdf

block_.L_482bdf:                                  ; preds = %block_.L_482bd0, %block_482bc2
  %5178 = phi i64 [ %.pre352, %block_.L_482bd0 ], [ %5108, %block_482bc2 ]
  %5179 = load i64, i64* %RBP.i, align 8
  %5180 = add i64 %5179, -272
  %5181 = add i64 %5178, 6
  store i64 %5181, i64* %3, align 8
  %5182 = inttoptr i64 %5180 to i32*
  %5183 = load i32, i32* %5182, align 4
  %5184 = zext i32 %5183 to i64
  store i64 %5184, i64* %RAX.i2276, align 8
  %5185 = add i64 %5179, -268
  %5186 = add i64 %5178, 12
  store i64 %5186, i64* %3, align 8
  %5187 = inttoptr i64 %5185 to i32*
  store i32 %5183, i32* %5187, align 4
  %.pre353 = load i64, i64* %3, align 8
  br label %block_.L_482beb

block_.L_482beb:                                  ; preds = %block_.L_482bdf, %block_482ba1
  %5188 = phi i64 [ %.pre353, %block_.L_482bdf ], [ %5023, %block_482ba1 ]
  %5189 = load i64, i64* %RBP.i, align 8
  %5190 = add i64 %5189, -268
  %5191 = add i64 %5188, 6
  store i64 %5191, i64* %3, align 8
  %5192 = inttoptr i64 %5190 to i32*
  %5193 = load i32, i32* %5192, align 4
  %5194 = zext i32 %5193 to i64
  store i64 %5194, i64* %RAX.i2276, align 8
  %5195 = add i64 %5189, -64
  %5196 = add i64 %5188, 9
  store i64 %5196, i64* %3, align 8
  %5197 = inttoptr i64 %5195 to i32*
  store i32 %5193, i32* %5197, align 4
  %5198 = load i64, i64* %RBP.i, align 8
  %5199 = add i64 %5198, -56
  %5200 = load i64, i64* %3, align 8
  %5201 = add i64 %5200, 7
  store i64 %5201, i64* %3, align 8
  %5202 = inttoptr i64 %5199 to i32*
  store i32 -2, i32* %5202, align 4
  %.pre354 = load i64, i64* %3, align 8
  br label %block_.L_482bfb

block_.L_482bfb:                                  ; preds = %block_.L_482cc6, %block_.L_482beb
  %5203 = phi i64 [ %5681, %block_.L_482cc6 ], [ %.pre354, %block_.L_482beb ]
  %5204 = load i64, i64* %RBP.i, align 8
  %5205 = add i64 %5204, -56
  %5206 = add i64 %5203, 4
  store i64 %5206, i64* %3, align 8
  %5207 = inttoptr i64 %5205 to i32*
  %5208 = load i32, i32* %5207, align 4
  %5209 = add i32 %5208, -4
  %5210 = icmp ult i32 %5208, 4
  %5211 = zext i1 %5210 to i8
  store i8 %5211, i8* %14, align 1
  %5212 = and i32 %5209, 255
  %5213 = tail call i32 @llvm.ctpop.i32(i32 %5212)
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  %5216 = xor i8 %5215, 1
  store i8 %5216, i8* %21, align 1
  %5217 = xor i32 %5209, %5208
  %5218 = lshr i32 %5217, 4
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  store i8 %5220, i8* %27, align 1
  %5221 = icmp eq i32 %5209, 0
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %30, align 1
  %5223 = lshr i32 %5209, 31
  %5224 = trunc i32 %5223 to i8
  store i8 %5224, i8* %33, align 1
  %5225 = lshr i32 %5208, 31
  %5226 = xor i32 %5223, %5225
  %5227 = add nuw nsw i32 %5226, %5225
  %5228 = icmp eq i32 %5227, 2
  %5229 = zext i1 %5228 to i8
  store i8 %5229, i8* %39, align 1
  %5230 = icmp ne i8 %5224, 0
  %5231 = xor i1 %5230, %5228
  %.v395 = select i1 %5231, i64 10, i64 222
  %5232 = add i64 %5203, %.v395
  store i64 %5232, i64* %3, align 8
  br i1 %5231, label %block_482c05, label %block_.L_482cd9

block_482c05:                                     ; preds = %block_.L_482bfb
  %5233 = add i64 %5204, -76
  %5234 = add i64 %5232, 3
  store i64 %5234, i64* %3, align 8
  %5235 = inttoptr i64 %5233 to i32*
  %5236 = load i32, i32* %5235, align 4
  %5237 = zext i32 %5236 to i64
  store i64 %5237, i64* %RAX.i2276, align 8
  %5238 = add i64 %5204, -48
  %5239 = add i64 %5232, 6
  store i64 %5239, i64* %3, align 8
  %5240 = inttoptr i64 %5238 to i32*
  %5241 = load i32, i32* %5240, align 4
  %5242 = zext i32 %5241 to i64
  store i64 %5242, i64* %RCX.i2274, align 8
  %5243 = add i64 %5232, 9
  store i64 %5243, i64* %3, align 8
  %5244 = load i32, i32* %5207, align 4
  %5245 = add i32 %5244, %5241
  %5246 = zext i32 %5245 to i64
  store i64 %5246, i64* %RCX.i2274, align 8
  %5247 = icmp ult i32 %5245, %5241
  %5248 = icmp ult i32 %5245, %5244
  %5249 = or i1 %5247, %5248
  %5250 = zext i1 %5249 to i8
  store i8 %5250, i8* %14, align 1
  %5251 = and i32 %5245, 255
  %5252 = tail call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  store i8 %5255, i8* %21, align 1
  %5256 = xor i32 %5244, %5241
  %5257 = xor i32 %5256, %5245
  %5258 = lshr i32 %5257, 4
  %5259 = trunc i32 %5258 to i8
  %5260 = and i8 %5259, 1
  store i8 %5260, i8* %27, align 1
  %5261 = icmp eq i32 %5245, 0
  %5262 = zext i1 %5261 to i8
  store i8 %5262, i8* %30, align 1
  %5263 = lshr i32 %5245, 31
  %5264 = trunc i32 %5263 to i8
  store i8 %5264, i8* %33, align 1
  %5265 = lshr i32 %5241, 31
  %5266 = lshr i32 %5244, 31
  %5267 = xor i32 %5263, %5265
  %5268 = xor i32 %5263, %5266
  %5269 = add nuw nsw i32 %5267, %5268
  %5270 = icmp eq i32 %5269, 2
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %39, align 1
  %5272 = add i64 %5204, -24
  %5273 = add i64 %5232, 12
  store i64 %5273, i64* %3, align 8
  %5274 = inttoptr i64 %5272 to i32*
  %5275 = load i32, i32* %5274, align 4
  %5276 = add i32 %5275, %5245
  %5277 = zext i32 %5276 to i64
  store i64 %5277, i64* %RCX.i2274, align 8
  %5278 = lshr i32 %5276, 31
  %5279 = sub i32 %5236, %5276
  %5280 = icmp ult i32 %5236, %5276
  %5281 = zext i1 %5280 to i8
  store i8 %5281, i8* %14, align 1
  %5282 = and i32 %5279, 255
  %5283 = tail call i32 @llvm.ctpop.i32(i32 %5282)
  %5284 = trunc i32 %5283 to i8
  %5285 = and i8 %5284, 1
  %5286 = xor i8 %5285, 1
  store i8 %5286, i8* %21, align 1
  %5287 = xor i32 %5276, %5236
  %5288 = xor i32 %5287, %5279
  %5289 = lshr i32 %5288, 4
  %5290 = trunc i32 %5289 to i8
  %5291 = and i8 %5290, 1
  store i8 %5291, i8* %27, align 1
  %5292 = icmp eq i32 %5279, 0
  %5293 = zext i1 %5292 to i8
  store i8 %5293, i8* %30, align 1
  %5294 = lshr i32 %5279, 31
  %5295 = trunc i32 %5294 to i8
  store i8 %5295, i8* %33, align 1
  %5296 = lshr i32 %5236, 31
  %5297 = xor i32 %5278, %5296
  %5298 = xor i32 %5294, %5296
  %5299 = add nuw nsw i32 %5298, %5297
  %5300 = icmp eq i32 %5299, 2
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %39, align 1
  %5302 = icmp ne i8 %5295, 0
  %5303 = xor i1 %5302, %5300
  %.v425 = select i1 %5303, i64 20, i64 34
  %5304 = add i64 %5232, %.v425
  store i64 %5304, i64* %3, align 8
  %5305 = load i64, i64* %RBP.i, align 8
  br i1 %5303, label %block_482c19, label %block_.L_482c27

block_482c19:                                     ; preds = %block_482c05
  %5306 = add i64 %5305, -76
  %5307 = add i64 %5304, 3
  store i64 %5307, i64* %3, align 8
  %5308 = inttoptr i64 %5306 to i32*
  %5309 = load i32, i32* %5308, align 4
  %5310 = zext i32 %5309 to i64
  store i64 %5310, i64* %RAX.i2276, align 8
  %5311 = add i64 %5305, -276
  %5312 = add i64 %5304, 9
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i32*
  store i32 %5309, i32* %5313, align 4
  %5314 = load i64, i64* %3, align 8
  %5315 = add i64 %5314, 20
  store i64 %5315, i64* %3, align 8
  br label %block_.L_482c36

block_.L_482c27:                                  ; preds = %block_482c05
  %5316 = add i64 %5305, -48
  %5317 = add i64 %5304, 3
  store i64 %5317, i64* %3, align 8
  %5318 = inttoptr i64 %5316 to i32*
  %5319 = load i32, i32* %5318, align 4
  %5320 = zext i32 %5319 to i64
  store i64 %5320, i64* %RAX.i2276, align 8
  %5321 = add i64 %5305, -56
  %5322 = add i64 %5304, 6
  store i64 %5322, i64* %3, align 8
  %5323 = inttoptr i64 %5321 to i32*
  %5324 = load i32, i32* %5323, align 4
  %5325 = add i32 %5324, %5319
  %5326 = zext i32 %5325 to i64
  store i64 %5326, i64* %RAX.i2276, align 8
  %5327 = icmp ult i32 %5325, %5319
  %5328 = icmp ult i32 %5325, %5324
  %5329 = or i1 %5327, %5328
  %5330 = zext i1 %5329 to i8
  store i8 %5330, i8* %14, align 1
  %5331 = and i32 %5325, 255
  %5332 = tail call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  store i8 %5335, i8* %21, align 1
  %5336 = xor i32 %5324, %5319
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
  %5345 = lshr i32 %5319, 31
  %5346 = lshr i32 %5324, 31
  %5347 = xor i32 %5343, %5345
  %5348 = xor i32 %5343, %5346
  %5349 = add nuw nsw i32 %5347, %5348
  %5350 = icmp eq i32 %5349, 2
  %5351 = zext i1 %5350 to i8
  store i8 %5351, i8* %39, align 1
  %5352 = add i64 %5305, -24
  %5353 = add i64 %5304, 9
  store i64 %5353, i64* %3, align 8
  %5354 = inttoptr i64 %5352 to i32*
  %5355 = load i32, i32* %5354, align 4
  %5356 = add i32 %5355, %5325
  %5357 = zext i32 %5356 to i64
  store i64 %5357, i64* %RAX.i2276, align 8
  %5358 = icmp ult i32 %5356, %5325
  %5359 = icmp ult i32 %5356, %5355
  %5360 = or i1 %5358, %5359
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %14, align 1
  %5362 = and i32 %5356, 255
  %5363 = tail call i32 @llvm.ctpop.i32(i32 %5362)
  %5364 = trunc i32 %5363 to i8
  %5365 = and i8 %5364, 1
  %5366 = xor i8 %5365, 1
  store i8 %5366, i8* %21, align 1
  %5367 = xor i32 %5355, %5325
  %5368 = xor i32 %5367, %5356
  %5369 = lshr i32 %5368, 4
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  store i8 %5371, i8* %27, align 1
  %5372 = icmp eq i32 %5356, 0
  %5373 = zext i1 %5372 to i8
  store i8 %5373, i8* %30, align 1
  %5374 = lshr i32 %5356, 31
  %5375 = trunc i32 %5374 to i8
  store i8 %5375, i8* %33, align 1
  %5376 = lshr i32 %5355, 31
  %5377 = xor i32 %5374, %5343
  %5378 = xor i32 %5374, %5376
  %5379 = add nuw nsw i32 %5377, %5378
  %5380 = icmp eq i32 %5379, 2
  %5381 = zext i1 %5380 to i8
  store i8 %5381, i8* %39, align 1
  %5382 = add i64 %5305, -276
  %5383 = add i64 %5304, 15
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5382 to i32*
  store i32 %5356, i32* %5384, align 4
  %.pre355 = load i64, i64* %3, align 8
  br label %block_.L_482c36

block_.L_482c36:                                  ; preds = %block_.L_482c27, %block_482c19
  %5385 = phi i64 [ %.pre355, %block_.L_482c27 ], [ %5315, %block_482c19 ]
  %5386 = load i64, i64* %RBP.i, align 8
  %5387 = add i64 %5386, -276
  %5388 = add i64 %5385, 6
  store i64 %5388, i64* %3, align 8
  %5389 = inttoptr i64 %5387 to i32*
  %5390 = load i32, i32* %5389, align 4
  %5391 = zext i32 %5390 to i64
  store i64 %5391, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %5392 = sub i32 0, %5390
  %5393 = icmp ne i32 %5390, 0
  %5394 = zext i1 %5393 to i8
  store i8 %5394, i8* %14, align 1
  %5395 = and i32 %5392, 255
  %5396 = tail call i32 @llvm.ctpop.i32(i32 %5395)
  %5397 = trunc i32 %5396 to i8
  %5398 = and i8 %5397, 1
  %5399 = xor i8 %5398, 1
  store i8 %5399, i8* %21, align 1
  %5400 = xor i32 %5390, %5392
  %5401 = lshr i32 %5400, 4
  %5402 = trunc i32 %5401 to i8
  %5403 = and i8 %5402, 1
  store i8 %5403, i8* %27, align 1
  %5404 = icmp eq i32 %5390, 0
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %30, align 1
  %5406 = lshr i32 %5392, 31
  %5407 = trunc i32 %5406 to i8
  store i8 %5407, i8* %33, align 1
  %5408 = lshr i32 %5390, 31
  %5409 = add nuw nsw i32 %5406, %5408
  %5410 = icmp eq i32 %5409, 2
  %5411 = zext i1 %5410 to i8
  store i8 %5411, i8* %39, align 1
  %5412 = icmp ne i8 %5407, 0
  %5413 = xor i1 %5412, %5410
  %5414 = or i1 %5404, %5413
  %.v426 = select i1 %5414, i64 29, i64 16
  %5415 = add i64 %5385, %.v426
  store i64 %5415, i64* %3, align 8
  br i1 %5414, label %block_.L_482c53, label %block_482c46

block_482c46:                                     ; preds = %block_.L_482c36
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5416 = add i64 %5386, -280
  %5417 = add i64 %5415, 8
  store i64 %5417, i64* %3, align 8
  %5418 = inttoptr i64 %5416 to i32*
  store i32 0, i32* %5418, align 4
  %5419 = load i64, i64* %3, align 8
  %5420 = add i64 %5419, 66
  store i64 %5420, i64* %3, align 8
  br label %block_.L_482c90

block_.L_482c53:                                  ; preds = %block_.L_482c36
  %5421 = add i64 %5386, -76
  %5422 = add i64 %5415, 3
  store i64 %5422, i64* %3, align 8
  %5423 = inttoptr i64 %5421 to i32*
  %5424 = load i32, i32* %5423, align 4
  %5425 = zext i32 %5424 to i64
  store i64 %5425, i64* %RAX.i2276, align 8
  %5426 = add i64 %5386, -48
  %5427 = add i64 %5415, 6
  store i64 %5427, i64* %3, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  %5430 = zext i32 %5429 to i64
  store i64 %5430, i64* %RCX.i2274, align 8
  %5431 = add i64 %5386, -56
  %5432 = add i64 %5415, 9
  store i64 %5432, i64* %3, align 8
  %5433 = inttoptr i64 %5431 to i32*
  %5434 = load i32, i32* %5433, align 4
  %5435 = add i32 %5434, %5429
  %5436 = zext i32 %5435 to i64
  store i64 %5436, i64* %RCX.i2274, align 8
  %5437 = icmp ult i32 %5435, %5429
  %5438 = icmp ult i32 %5435, %5434
  %5439 = or i1 %5437, %5438
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %14, align 1
  %5441 = and i32 %5435, 255
  %5442 = tail call i32 @llvm.ctpop.i32(i32 %5441)
  %5443 = trunc i32 %5442 to i8
  %5444 = and i8 %5443, 1
  %5445 = xor i8 %5444, 1
  store i8 %5445, i8* %21, align 1
  %5446 = xor i32 %5434, %5429
  %5447 = xor i32 %5446, %5435
  %5448 = lshr i32 %5447, 4
  %5449 = trunc i32 %5448 to i8
  %5450 = and i8 %5449, 1
  store i8 %5450, i8* %27, align 1
  %5451 = icmp eq i32 %5435, 0
  %5452 = zext i1 %5451 to i8
  store i8 %5452, i8* %30, align 1
  %5453 = lshr i32 %5435, 31
  %5454 = trunc i32 %5453 to i8
  store i8 %5454, i8* %33, align 1
  %5455 = lshr i32 %5429, 31
  %5456 = lshr i32 %5434, 31
  %5457 = xor i32 %5453, %5455
  %5458 = xor i32 %5453, %5456
  %5459 = add nuw nsw i32 %5457, %5458
  %5460 = icmp eq i32 %5459, 2
  %5461 = zext i1 %5460 to i8
  store i8 %5461, i8* %39, align 1
  %5462 = add i64 %5386, -24
  %5463 = add i64 %5415, 12
  store i64 %5463, i64* %3, align 8
  %5464 = inttoptr i64 %5462 to i32*
  %5465 = load i32, i32* %5464, align 4
  %5466 = add i32 %5465, %5435
  %5467 = zext i32 %5466 to i64
  store i64 %5467, i64* %RCX.i2274, align 8
  %5468 = lshr i32 %5466, 31
  %5469 = sub i32 %5424, %5466
  %5470 = icmp ult i32 %5424, %5466
  %5471 = zext i1 %5470 to i8
  store i8 %5471, i8* %14, align 1
  %5472 = and i32 %5469, 255
  %5473 = tail call i32 @llvm.ctpop.i32(i32 %5472)
  %5474 = trunc i32 %5473 to i8
  %5475 = and i8 %5474, 1
  %5476 = xor i8 %5475, 1
  store i8 %5476, i8* %21, align 1
  %5477 = xor i32 %5466, %5424
  %5478 = xor i32 %5477, %5469
  %5479 = lshr i32 %5478, 4
  %5480 = trunc i32 %5479 to i8
  %5481 = and i8 %5480, 1
  store i8 %5481, i8* %27, align 1
  %5482 = icmp eq i32 %5469, 0
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %30, align 1
  %5484 = lshr i32 %5469, 31
  %5485 = trunc i32 %5484 to i8
  store i8 %5485, i8* %33, align 1
  %5486 = lshr i32 %5424, 31
  %5487 = xor i32 %5468, %5486
  %5488 = xor i32 %5484, %5486
  %5489 = add nuw nsw i32 %5488, %5487
  %5490 = icmp eq i32 %5489, 2
  %5491 = zext i1 %5490 to i8
  store i8 %5491, i8* %39, align 1
  %5492 = icmp ne i8 %5485, 0
  %5493 = xor i1 %5492, %5490
  %.v427 = select i1 %5493, i64 20, i64 34
  %5494 = add i64 %5415, %.v427
  store i64 %5494, i64* %3, align 8
  %5495 = load i64, i64* %RBP.i, align 8
  br i1 %5493, label %block_482c67, label %block_.L_482c75

block_482c67:                                     ; preds = %block_.L_482c53
  %5496 = add i64 %5495, -76
  %5497 = add i64 %5494, 3
  store i64 %5497, i64* %3, align 8
  %5498 = inttoptr i64 %5496 to i32*
  %5499 = load i32, i32* %5498, align 4
  %5500 = zext i32 %5499 to i64
  store i64 %5500, i64* %RAX.i2276, align 8
  %5501 = add i64 %5495, -284
  %5502 = add i64 %5494, 9
  store i64 %5502, i64* %3, align 8
  %5503 = inttoptr i64 %5501 to i32*
  store i32 %5499, i32* %5503, align 4
  %5504 = load i64, i64* %3, align 8
  %5505 = add i64 %5504, 20
  store i64 %5505, i64* %3, align 8
  br label %block_.L_482c84

block_.L_482c75:                                  ; preds = %block_.L_482c53
  %5506 = add i64 %5495, -48
  %5507 = add i64 %5494, 3
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = zext i32 %5509 to i64
  store i64 %5510, i64* %RAX.i2276, align 8
  %5511 = add i64 %5495, -56
  %5512 = add i64 %5494, 6
  store i64 %5512, i64* %3, align 8
  %5513 = inttoptr i64 %5511 to i32*
  %5514 = load i32, i32* %5513, align 4
  %5515 = add i32 %5514, %5509
  %5516 = zext i32 %5515 to i64
  store i64 %5516, i64* %RAX.i2276, align 8
  %5517 = icmp ult i32 %5515, %5509
  %5518 = icmp ult i32 %5515, %5514
  %5519 = or i1 %5517, %5518
  %5520 = zext i1 %5519 to i8
  store i8 %5520, i8* %14, align 1
  %5521 = and i32 %5515, 255
  %5522 = tail call i32 @llvm.ctpop.i32(i32 %5521)
  %5523 = trunc i32 %5522 to i8
  %5524 = and i8 %5523, 1
  %5525 = xor i8 %5524, 1
  store i8 %5525, i8* %21, align 1
  %5526 = xor i32 %5514, %5509
  %5527 = xor i32 %5526, %5515
  %5528 = lshr i32 %5527, 4
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  store i8 %5530, i8* %27, align 1
  %5531 = icmp eq i32 %5515, 0
  %5532 = zext i1 %5531 to i8
  store i8 %5532, i8* %30, align 1
  %5533 = lshr i32 %5515, 31
  %5534 = trunc i32 %5533 to i8
  store i8 %5534, i8* %33, align 1
  %5535 = lshr i32 %5509, 31
  %5536 = lshr i32 %5514, 31
  %5537 = xor i32 %5533, %5535
  %5538 = xor i32 %5533, %5536
  %5539 = add nuw nsw i32 %5537, %5538
  %5540 = icmp eq i32 %5539, 2
  %5541 = zext i1 %5540 to i8
  store i8 %5541, i8* %39, align 1
  %5542 = add i64 %5495, -24
  %5543 = add i64 %5494, 9
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i32*
  %5545 = load i32, i32* %5544, align 4
  %5546 = add i32 %5545, %5515
  %5547 = zext i32 %5546 to i64
  store i64 %5547, i64* %RAX.i2276, align 8
  %5548 = icmp ult i32 %5546, %5515
  %5549 = icmp ult i32 %5546, %5545
  %5550 = or i1 %5548, %5549
  %5551 = zext i1 %5550 to i8
  store i8 %5551, i8* %14, align 1
  %5552 = and i32 %5546, 255
  %5553 = tail call i32 @llvm.ctpop.i32(i32 %5552)
  %5554 = trunc i32 %5553 to i8
  %5555 = and i8 %5554, 1
  %5556 = xor i8 %5555, 1
  store i8 %5556, i8* %21, align 1
  %5557 = xor i32 %5545, %5515
  %5558 = xor i32 %5557, %5546
  %5559 = lshr i32 %5558, 4
  %5560 = trunc i32 %5559 to i8
  %5561 = and i8 %5560, 1
  store i8 %5561, i8* %27, align 1
  %5562 = icmp eq i32 %5546, 0
  %5563 = zext i1 %5562 to i8
  store i8 %5563, i8* %30, align 1
  %5564 = lshr i32 %5546, 31
  %5565 = trunc i32 %5564 to i8
  store i8 %5565, i8* %33, align 1
  %5566 = lshr i32 %5545, 31
  %5567 = xor i32 %5564, %5533
  %5568 = xor i32 %5564, %5566
  %5569 = add nuw nsw i32 %5567, %5568
  %5570 = icmp eq i32 %5569, 2
  %5571 = zext i1 %5570 to i8
  store i8 %5571, i8* %39, align 1
  %5572 = add i64 %5495, -284
  %5573 = add i64 %5494, 15
  store i64 %5573, i64* %3, align 8
  %5574 = inttoptr i64 %5572 to i32*
  store i32 %5546, i32* %5574, align 4
  %.pre356 = load i64, i64* %3, align 8
  br label %block_.L_482c84

block_.L_482c84:                                  ; preds = %block_.L_482c75, %block_482c67
  %5575 = phi i64 [ %.pre356, %block_.L_482c75 ], [ %5505, %block_482c67 ]
  %5576 = load i64, i64* %RBP.i, align 8
  %5577 = add i64 %5576, -284
  %5578 = add i64 %5575, 6
  store i64 %5578, i64* %3, align 8
  %5579 = inttoptr i64 %5577 to i32*
  %5580 = load i32, i32* %5579, align 4
  %5581 = zext i32 %5580 to i64
  store i64 %5581, i64* %RAX.i2276, align 8
  %5582 = add i64 %5576, -280
  %5583 = add i64 %5575, 12
  store i64 %5583, i64* %3, align 8
  %5584 = inttoptr i64 %5582 to i32*
  store i32 %5580, i32* %5584, align 4
  %.pre357 = load i64, i64* %3, align 8
  br label %block_.L_482c90

block_.L_482c90:                                  ; preds = %block_.L_482c84, %block_482c46
  %5585 = phi i64 [ %.pre357, %block_.L_482c84 ], [ %5420, %block_482c46 ]
  %5586 = load i64, i64* %RBP.i, align 8
  %5587 = add i64 %5586, -280
  %5588 = add i64 %5585, 6
  store i64 %5588, i64* %3, align 8
  %5589 = inttoptr i64 %5587 to i32*
  %5590 = load i32, i32* %5589, align 4
  %5591 = zext i32 %5590 to i64
  store i64 %5591, i64* %RAX.i2276, align 8
  %5592 = add i64 %5586, -68
  %5593 = add i64 %5585, 9
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i32*
  store i32 %5590, i32* %5594, align 4
  %5595 = load i64, i64* %3, align 8
  %5596 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %5596, i64* %RCX.i2274, align 8
  %5597 = load i64, i64* %RBP.i, align 8
  %5598 = add i64 %5597, -68
  %5599 = add i64 %5595, 12
  store i64 %5599, i64* %3, align 8
  %5600 = inttoptr i64 %5598 to i32*
  %5601 = load i32, i32* %5600, align 4
  %5602 = sext i32 %5601 to i64
  store i64 %5602, i64* %RDX.i2161, align 8
  %5603 = shl nsw i64 %5602, 3
  %5604 = add i64 %5603, %5596
  %5605 = add i64 %5595, 16
  store i64 %5605, i64* %3, align 8
  %5606 = inttoptr i64 %5604 to i64*
  %5607 = load i64, i64* %5606, align 8
  store i64 %5607, i64* %RCX.i2274, align 8
  %5608 = add i64 %5597, -64
  %5609 = add i64 %5595, 20
  store i64 %5609, i64* %3, align 8
  %5610 = inttoptr i64 %5608 to i32*
  %5611 = load i32, i32* %5610, align 4
  %5612 = sext i32 %5611 to i64
  store i64 %5612, i64* %RDX.i2161, align 8
  %5613 = add i64 %5607, %5612
  %5614 = add i64 %5595, 24
  store i64 %5614, i64* %3, align 8
  %5615 = inttoptr i64 %5613 to i8*
  %5616 = load i8, i8* %5615, align 1
  %5617 = zext i8 %5616 to i64
  store i64 %5617, i64* %RAX.i2276, align 8
  %5618 = zext i8 %5616 to i32
  %5619 = add i64 %5597, -80
  %5620 = add i64 %5595, 27
  store i64 %5620, i64* %3, align 8
  %5621 = inttoptr i64 %5619 to i32*
  %5622 = load i32, i32* %5621, align 4
  %5623 = sub i32 %5618, %5622
  %5624 = icmp ult i32 %5618, %5622
  %5625 = zext i1 %5624 to i8
  store i8 %5625, i8* %14, align 1
  %5626 = and i32 %5623, 255
  %5627 = tail call i32 @llvm.ctpop.i32(i32 %5626)
  %5628 = trunc i32 %5627 to i8
  %5629 = and i8 %5628, 1
  %5630 = xor i8 %5629, 1
  store i8 %5630, i8* %21, align 1
  %5631 = xor i32 %5622, %5618
  %5632 = xor i32 %5631, %5623
  %5633 = lshr i32 %5632, 4
  %5634 = trunc i32 %5633 to i8
  %5635 = and i8 %5634, 1
  store i8 %5635, i8* %27, align 1
  %5636 = icmp eq i32 %5623, 0
  %5637 = zext i1 %5636 to i8
  store i8 %5637, i8* %30, align 1
  %5638 = lshr i32 %5623, 31
  %5639 = trunc i32 %5638 to i8
  store i8 %5639, i8* %33, align 1
  %5640 = lshr i32 %5622, 31
  %5641 = add nuw nsw i32 %5638, %5640
  %5642 = icmp eq i32 %5641, 2
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %39, align 1
  %5644 = icmp ne i8 %5639, 0
  %5645 = xor i1 %5644, %5642
  %.v396 = select i1 %5645, i64 33, i64 45
  %5646 = add i64 %5595, %.v396
  store i64 %5646, i64* %3, align 8
  br i1 %5645, label %block_482cba, label %block_.L_482cc6

block_482cba:                                     ; preds = %block_.L_482c90
  %5647 = add i64 %5597, -4
  %5648 = add i64 %5646, 7
  store i64 %5648, i64* %3, align 8
  %5649 = inttoptr i64 %5647 to i32*
  store i32 0, i32* %5649, align 4
  %5650 = load i64, i64* %3, align 8
  %5651 = add i64 %5650, 1028
  store i64 %5651, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_482cc6:                                  ; preds = %block_.L_482c90
  %5652 = add i64 %5597, -56
  %5653 = add i64 %5646, 8
  store i64 %5653, i64* %3, align 8
  %5654 = inttoptr i64 %5652 to i32*
  %5655 = load i32, i32* %5654, align 4
  %5656 = add i32 %5655, 1
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RAX.i2276, align 8
  %5658 = icmp eq i32 %5655, -1
  %5659 = icmp eq i32 %5656, 0
  %5660 = or i1 %5658, %5659
  %5661 = zext i1 %5660 to i8
  store i8 %5661, i8* %14, align 1
  %5662 = and i32 %5656, 255
  %5663 = tail call i32 @llvm.ctpop.i32(i32 %5662)
  %5664 = trunc i32 %5663 to i8
  %5665 = and i8 %5664, 1
  %5666 = xor i8 %5665, 1
  store i8 %5666, i8* %21, align 1
  %5667 = xor i32 %5656, %5655
  %5668 = lshr i32 %5667, 4
  %5669 = trunc i32 %5668 to i8
  %5670 = and i8 %5669, 1
  store i8 %5670, i8* %27, align 1
  %5671 = zext i1 %5659 to i8
  store i8 %5671, i8* %30, align 1
  %5672 = lshr i32 %5656, 31
  %5673 = trunc i32 %5672 to i8
  store i8 %5673, i8* %33, align 1
  %5674 = lshr i32 %5655, 31
  %5675 = xor i32 %5672, %5674
  %5676 = add nuw nsw i32 %5675, %5672
  %5677 = icmp eq i32 %5676, 2
  %5678 = zext i1 %5677 to i8
  store i8 %5678, i8* %39, align 1
  %5679 = add i64 %5646, 14
  store i64 %5679, i64* %3, align 8
  store i32 %5656, i32* %5654, align 4
  %5680 = load i64, i64* %3, align 8
  %5681 = add i64 %5680, -217
  store i64 %5681, i64* %3, align 8
  br label %block_.L_482bfb

block_.L_482cd9:                                  ; preds = %block_.L_482bfb
  %5682 = add i64 %5204, -60
  %5683 = add i64 %5232, 8
  store i64 %5683, i64* %3, align 8
  %5684 = inttoptr i64 %5682 to i32*
  %5685 = load i32, i32* %5684, align 4
  %5686 = add i32 %5685, 1
  %5687 = zext i32 %5686 to i64
  store i64 %5687, i64* %RAX.i2276, align 8
  %5688 = icmp eq i32 %5685, -1
  %5689 = icmp eq i32 %5686, 0
  %5690 = or i1 %5688, %5689
  %5691 = zext i1 %5690 to i8
  store i8 %5691, i8* %14, align 1
  %5692 = and i32 %5686, 255
  %5693 = tail call i32 @llvm.ctpop.i32(i32 %5692)
  %5694 = trunc i32 %5693 to i8
  %5695 = and i8 %5694, 1
  %5696 = xor i8 %5695, 1
  store i8 %5696, i8* %21, align 1
  %5697 = xor i32 %5686, %5685
  %5698 = lshr i32 %5697, 4
  %5699 = trunc i32 %5698 to i8
  %5700 = and i8 %5699, 1
  store i8 %5700, i8* %27, align 1
  %5701 = zext i1 %5689 to i8
  store i8 %5701, i8* %30, align 1
  %5702 = lshr i32 %5686, 31
  %5703 = trunc i32 %5702 to i8
  store i8 %5703, i8* %33, align 1
  %5704 = lshr i32 %5685, 31
  %5705 = xor i32 %5702, %5704
  %5706 = add nuw nsw i32 %5705, %5702
  %5707 = icmp eq i32 %5706, 2
  %5708 = zext i1 %5707 to i8
  store i8 %5708, i8* %39, align 1
  %5709 = add i64 %5232, 14
  store i64 %5709, i64* %3, align 8
  store i32 %5686, i32* %5684, align 4
  %5710 = load i64, i64* %3, align 8
  %5711 = add i64 %5710, -401
  store i64 %5711, i64* %3, align 8
  br label %block_.L_482b56

block_.L_482cec:                                  ; preds = %block_.L_482b56
  %5712 = add i64 %4807, -28
  %5713 = add i64 %4835, 8
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5712 to i32*
  %5715 = load i32, i32* %5714, align 4
  %5716 = add i32 %5715, 1
  %5717 = zext i32 %5716 to i64
  store i64 %5717, i64* %RAX.i2276, align 8
  %5718 = icmp eq i32 %5715, -1
  %5719 = icmp eq i32 %5716, 0
  %5720 = or i1 %5718, %5719
  %5721 = zext i1 %5720 to i8
  store i8 %5721, i8* %14, align 1
  %5722 = and i32 %5716, 255
  %5723 = tail call i32 @llvm.ctpop.i32(i32 %5722)
  %5724 = trunc i32 %5723 to i8
  %5725 = and i8 %5724, 1
  %5726 = xor i8 %5725, 1
  store i8 %5726, i8* %21, align 1
  %5727 = xor i32 %5716, %5715
  %5728 = lshr i32 %5727, 4
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  store i8 %5730, i8* %27, align 1
  %5731 = zext i1 %5719 to i8
  store i8 %5731, i8* %30, align 1
  %5732 = lshr i32 %5716, 31
  %5733 = trunc i32 %5732 to i8
  store i8 %5733, i8* %33, align 1
  %5734 = lshr i32 %5715, 31
  %5735 = xor i32 %5732, %5734
  %5736 = add nuw nsw i32 %5735, %5732
  %5737 = icmp eq i32 %5736, 2
  %5738 = zext i1 %5737 to i8
  store i8 %5738, i8* %39, align 1
  %5739 = add i64 %4835, 14
  store i64 %5739, i64* %3, align 8
  store i32 %5716, i32* %5714, align 4
  %5740 = load i64, i64* %3, align 8
  %5741 = add i64 %5740, -437
  store i64 %5741, i64* %3, align 8
  br label %block_.L_482b45

block_.L_482cff:                                  ; preds = %block_.L_482b45
  %5742 = add i64 %4774, -24
  %5743 = add i64 %4802, 8
  store i64 %5743, i64* %3, align 8
  %5744 = inttoptr i64 %5742 to i32*
  %5745 = load i32, i32* %5744, align 4
  %5746 = add i32 %5745, 1
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %RAX.i2276, align 8
  %5748 = icmp eq i32 %5745, -1
  %5749 = icmp eq i32 %5746, 0
  %5750 = or i1 %5748, %5749
  %5751 = zext i1 %5750 to i8
  store i8 %5751, i8* %14, align 1
  %5752 = and i32 %5746, 255
  %5753 = tail call i32 @llvm.ctpop.i32(i32 %5752)
  %5754 = trunc i32 %5753 to i8
  %5755 = and i8 %5754, 1
  %5756 = xor i8 %5755, 1
  store i8 %5756, i8* %21, align 1
  %5757 = xor i32 %5746, %5745
  %5758 = lshr i32 %5757, 4
  %5759 = trunc i32 %5758 to i8
  %5760 = and i8 %5759, 1
  store i8 %5760, i8* %27, align 1
  %5761 = zext i1 %5749 to i8
  store i8 %5761, i8* %30, align 1
  %5762 = lshr i32 %5746, 31
  %5763 = trunc i32 %5762 to i8
  store i8 %5763, i8* %33, align 1
  %5764 = lshr i32 %5745, 31
  %5765 = xor i32 %5762, %5764
  %5766 = add nuw nsw i32 %5765, %5762
  %5767 = icmp eq i32 %5766, 2
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %39, align 1
  %5769 = add i64 %4802, 14
  store i64 %5769, i64* %3, align 8
  store i32 %5746, i32* %5744, align 4
  %5770 = load i64, i64* %3, align 8
  %5771 = add i64 %5770, -473
  store i64 %5771, i64* %3, align 8
  br label %block_.L_482b34

block_.L_482d12:                                  ; preds = %block_.L_482b34
  %5772 = add i64 %4769, 882
  br label %block_.L_483084

block_.L_482d1e:                                  ; preds = %block_.L_482d1e.preheader, %block_.L_48306c
  %5773 = phi i64 [ %7379, %block_.L_48306c ], [ %.pre348, %block_.L_482d1e.preheader ]
  %5774 = load i64, i64* %RBP.i, align 8
  %5775 = add i64 %5774, -24
  %5776 = add i64 %5773, 4
  store i64 %5776, i64* %3, align 8
  %5777 = inttoptr i64 %5775 to i32*
  %5778 = load i32, i32* %5777, align 4
  %5779 = add i32 %5778, -4
  %5780 = icmp ult i32 %5778, 4
  %5781 = zext i1 %5780 to i8
  store i8 %5781, i8* %14, align 1
  %5782 = and i32 %5779, 255
  %5783 = tail call i32 @llvm.ctpop.i32(i32 %5782)
  %5784 = trunc i32 %5783 to i8
  %5785 = and i8 %5784, 1
  %5786 = xor i8 %5785, 1
  store i8 %5786, i8* %21, align 1
  %5787 = xor i32 %5779, %5778
  %5788 = lshr i32 %5787, 4
  %5789 = trunc i32 %5788 to i8
  %5790 = and i8 %5789, 1
  store i8 %5790, i8* %27, align 1
  %5791 = icmp eq i32 %5779, 0
  %5792 = zext i1 %5791 to i8
  store i8 %5792, i8* %30, align 1
  %5793 = lshr i32 %5779, 31
  %5794 = trunc i32 %5793 to i8
  store i8 %5794, i8* %33, align 1
  %5795 = lshr i32 %5778, 31
  %5796 = xor i32 %5793, %5795
  %5797 = add nuw nsw i32 %5796, %5795
  %5798 = icmp eq i32 %5797, 2
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %39, align 1
  %5800 = icmp ne i8 %5794, 0
  %5801 = xor i1 %5800, %5798
  %.v409 = select i1 %5801, i64 10, i64 865
  %5802 = add i64 %5773, %.v409
  store i64 %5802, i64* %3, align 8
  br i1 %5801, label %block_482d28, label %block_.L_48307f

block_482d28:                                     ; preds = %block_.L_482d1e
  %5803 = add i64 %5774, -28
  %5804 = add i64 %5802, 7
  store i64 %5804, i64* %3, align 8
  %5805 = inttoptr i64 %5803 to i32*
  store i32 0, i32* %5805, align 4
  %.pre359 = load i64, i64* %3, align 8
  br label %block_.L_482d2f

block_.L_482d2f:                                  ; preds = %block_.L_483059, %block_482d28
  %5806 = phi i64 [ %7349, %block_.L_483059 ], [ %.pre359, %block_482d28 ]
  %5807 = load i64, i64* %RBP.i, align 8
  %5808 = add i64 %5807, -28
  %5809 = add i64 %5806, 4
  store i64 %5809, i64* %3, align 8
  %5810 = inttoptr i64 %5808 to i32*
  %5811 = load i32, i32* %5810, align 4
  %5812 = add i32 %5811, -4
  %5813 = icmp ult i32 %5811, 4
  %5814 = zext i1 %5813 to i8
  store i8 %5814, i8* %14, align 1
  %5815 = and i32 %5812, 255
  %5816 = tail call i32 @llvm.ctpop.i32(i32 %5815)
  %5817 = trunc i32 %5816 to i8
  %5818 = and i8 %5817, 1
  %5819 = xor i8 %5818, 1
  store i8 %5819, i8* %21, align 1
  %5820 = xor i32 %5812, %5811
  %5821 = lshr i32 %5820, 4
  %5822 = trunc i32 %5821 to i8
  %5823 = and i8 %5822, 1
  store i8 %5823, i8* %27, align 1
  %5824 = icmp eq i32 %5812, 0
  %5825 = zext i1 %5824 to i8
  store i8 %5825, i8* %30, align 1
  %5826 = lshr i32 %5812, 31
  %5827 = trunc i32 %5826 to i8
  store i8 %5827, i8* %33, align 1
  %5828 = lshr i32 %5811, 31
  %5829 = xor i32 %5826, %5828
  %5830 = add nuw nsw i32 %5829, %5828
  %5831 = icmp eq i32 %5830, 2
  %5832 = zext i1 %5831 to i8
  store i8 %5832, i8* %39, align 1
  %5833 = icmp ne i8 %5827, 0
  %5834 = xor i1 %5833, %5831
  %.v397 = select i1 %5834, i64 10, i64 829
  %5835 = add i64 %5806, %.v397
  store i64 %5835, i64* %3, align 8
  br i1 %5834, label %block_482d39, label %block_.L_48306c

block_482d39:                                     ; preds = %block_.L_482d2f
  %5836 = add i64 %5807, -40
  %5837 = add i64 %5835, 4
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i32*
  %5839 = load i32, i32* %5838, align 4
  %5840 = add i32 %5839, -1
  %5841 = icmp eq i32 %5839, 0
  %5842 = zext i1 %5841 to i8
  store i8 %5842, i8* %14, align 1
  %5843 = and i32 %5840, 255
  %5844 = tail call i32 @llvm.ctpop.i32(i32 %5843)
  %5845 = trunc i32 %5844 to i8
  %5846 = and i8 %5845, 1
  %5847 = xor i8 %5846, 1
  store i8 %5847, i8* %21, align 1
  %5848 = xor i32 %5840, %5839
  %5849 = lshr i32 %5848, 4
  %5850 = trunc i32 %5849 to i8
  %5851 = and i8 %5850, 1
  store i8 %5851, i8* %27, align 1
  %5852 = icmp eq i32 %5840, 0
  %5853 = zext i1 %5852 to i8
  store i8 %5853, i8* %30, align 1
  %5854 = lshr i32 %5840, 31
  %5855 = trunc i32 %5854 to i8
  store i8 %5855, i8* %33, align 1
  %5856 = lshr i32 %5839, 31
  %5857 = xor i32 %5854, %5856
  %5858 = add nuw nsw i32 %5857, %5856
  %5859 = icmp eq i32 %5858, 2
  %5860 = zext i1 %5859 to i8
  store i8 %5860, i8* %39, align 1
  %.v398 = select i1 %5852, i64 10, i64 27
  %5861 = add i64 %5835, %.v398
  %5862 = add i64 %5807, -48
  %5863 = add i64 %5861, 3
  store i64 %5863, i64* %3, align 8
  %5864 = inttoptr i64 %5862 to i32*
  %5865 = load i32, i32* %5864, align 4
  %5866 = zext i32 %5865 to i64
  store i64 %5866, i64* %RAX.i2276, align 8
  %5867 = add i64 %5807, -24
  %5868 = add i64 %5861, 6
  store i64 %5868, i64* %3, align 8
  %5869 = inttoptr i64 %5867 to i32*
  %5870 = load i32, i32* %5869, align 4
  %5871 = add i32 %5870, %5865
  %5872 = zext i32 %5871 to i64
  store i64 %5872, i64* %RAX.i2276, align 8
  %5873 = icmp ult i32 %5871, %5865
  %5874 = icmp ult i32 %5871, %5870
  %5875 = or i1 %5873, %5874
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %14, align 1
  %5877 = and i32 %5871, 255
  %5878 = tail call i32 @llvm.ctpop.i32(i32 %5877)
  %5879 = trunc i32 %5878 to i8
  %5880 = and i8 %5879, 1
  %5881 = xor i8 %5880, 1
  store i8 %5881, i8* %21, align 1
  %5882 = xor i32 %5870, %5865
  %5883 = xor i32 %5882, %5871
  %5884 = lshr i32 %5883, 4
  %5885 = trunc i32 %5884 to i8
  %5886 = and i8 %5885, 1
  store i8 %5886, i8* %27, align 1
  %5887 = icmp eq i32 %5871, 0
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %30, align 1
  %5889 = lshr i32 %5871, 31
  %5890 = trunc i32 %5889 to i8
  store i8 %5890, i8* %33, align 1
  %5891 = lshr i32 %5865, 31
  %5892 = lshr i32 %5870, 31
  %5893 = xor i32 %5889, %5891
  %5894 = xor i32 %5889, %5892
  %5895 = add nuw nsw i32 %5893, %5894
  %5896 = icmp eq i32 %5895, 2
  %5897 = zext i1 %5896 to i8
  store i8 %5897, i8* %39, align 1
  br i1 %5852, label %block_482d43, label %block_.L_482d54

block_482d43:                                     ; preds = %block_482d39
  %5898 = add i64 %5807, -288
  %5899 = add i64 %5861, 12
  store i64 %5899, i64* %3, align 8
  %5900 = inttoptr i64 %5898 to i32*
  store i32 %5871, i32* %5900, align 4
  %5901 = load i64, i64* %3, align 8
  %5902 = add i64 %5901, 20
  store i64 %5902, i64* %3, align 8
  br label %block_.L_482d63

block_.L_482d54:                                  ; preds = %block_482d39
  %5903 = add i32 %5871, 1
  %5904 = zext i32 %5903 to i64
  store i64 %5904, i64* %RAX.i2276, align 8
  %5905 = icmp eq i32 %5871, -1
  %5906 = icmp eq i32 %5903, 0
  %5907 = or i1 %5905, %5906
  %5908 = zext i1 %5907 to i8
  store i8 %5908, i8* %14, align 1
  %5909 = and i32 %5903, 255
  %5910 = tail call i32 @llvm.ctpop.i32(i32 %5909)
  %5911 = trunc i32 %5910 to i8
  %5912 = and i8 %5911, 1
  %5913 = xor i8 %5912, 1
  store i8 %5913, i8* %21, align 1
  %5914 = xor i32 %5903, %5871
  %5915 = lshr i32 %5914, 4
  %5916 = trunc i32 %5915 to i8
  %5917 = and i8 %5916, 1
  store i8 %5917, i8* %27, align 1
  %5918 = zext i1 %5906 to i8
  store i8 %5918, i8* %30, align 1
  %5919 = lshr i32 %5903, 31
  %5920 = trunc i32 %5919 to i8
  store i8 %5920, i8* %33, align 1
  %5921 = xor i32 %5919, %5889
  %5922 = add nuw nsw i32 %5921, %5919
  %5923 = icmp eq i32 %5922, 2
  %5924 = zext i1 %5923 to i8
  store i8 %5924, i8* %39, align 1
  %5925 = add i64 %5807, -288
  %5926 = add i64 %5861, 15
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i32*
  store i32 %5903, i32* %5927, align 4
  %.pre360 = load i64, i64* %3, align 8
  br label %block_.L_482d63

block_.L_482d63:                                  ; preds = %block_.L_482d54, %block_482d43
  %5928 = phi i64 [ %.pre360, %block_.L_482d54 ], [ %5902, %block_482d43 ]
  %5929 = load i64, i64* %RBP.i, align 8
  %5930 = add i64 %5929, -288
  %5931 = add i64 %5928, 6
  store i64 %5931, i64* %3, align 8
  %5932 = inttoptr i64 %5930 to i32*
  %5933 = load i32, i32* %5932, align 4
  %5934 = zext i32 %5933 to i64
  store i64 %5934, i64* %RAX.i2276, align 8
  %5935 = add i64 %5929, -68
  %5936 = add i64 %5928, 9
  store i64 %5936, i64* %3, align 8
  %5937 = inttoptr i64 %5935 to i32*
  store i32 %5933, i32* %5937, align 4
  %5938 = load i64, i64* %RBP.i, align 8
  %5939 = add i64 %5938, -76
  %5940 = load i64, i64* %3, align 8
  %5941 = add i64 %5940, 3
  store i64 %5941, i64* %3, align 8
  %5942 = inttoptr i64 %5939 to i32*
  %5943 = load i32, i32* %5942, align 4
  %5944 = zext i32 %5943 to i64
  store i64 %5944, i64* %RAX.i2276, align 8
  %5945 = add i64 %5938, -68
  %5946 = add i64 %5940, 6
  store i64 %5946, i64* %3, align 8
  %5947 = inttoptr i64 %5945 to i32*
  %5948 = load i32, i32* %5947, align 4
  %5949 = sub i32 %5943, %5948
  %5950 = icmp ult i32 %5943, %5948
  %5951 = zext i1 %5950 to i8
  store i8 %5951, i8* %14, align 1
  %5952 = and i32 %5949, 255
  %5953 = tail call i32 @llvm.ctpop.i32(i32 %5952)
  %5954 = trunc i32 %5953 to i8
  %5955 = and i8 %5954, 1
  %5956 = xor i8 %5955, 1
  store i8 %5956, i8* %21, align 1
  %5957 = xor i32 %5948, %5943
  %5958 = xor i32 %5957, %5949
  %5959 = lshr i32 %5958, 4
  %5960 = trunc i32 %5959 to i8
  %5961 = and i8 %5960, 1
  store i8 %5961, i8* %27, align 1
  %5962 = icmp eq i32 %5949, 0
  %5963 = zext i1 %5962 to i8
  store i8 %5963, i8* %30, align 1
  %5964 = lshr i32 %5949, 31
  %5965 = trunc i32 %5964 to i8
  store i8 %5965, i8* %33, align 1
  %5966 = lshr i32 %5943, 31
  %5967 = lshr i32 %5948, 31
  %5968 = xor i32 %5967, %5966
  %5969 = xor i32 %5964, %5966
  %5970 = add nuw nsw i32 %5969, %5968
  %5971 = icmp eq i32 %5970, 2
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %39, align 1
  %5973 = icmp ne i8 %5965, 0
  %5974 = xor i1 %5973, %5971
  %.v410 = select i1 %5974, i64 12, i64 26
  %5975 = add i64 %5940, %.v410
  %5976 = add i64 %5975, 3
  store i64 %5976, i64* %3, align 8
  br i1 %5974, label %block_482d78, label %block_.L_482d86

block_482d78:                                     ; preds = %block_.L_482d63
  %5977 = load i32, i32* %5942, align 4
  %5978 = zext i32 %5977 to i64
  store i64 %5978, i64* %RAX.i2276, align 8
  %5979 = add i64 %5938, -292
  %5980 = add i64 %5975, 9
  store i64 %5980, i64* %3, align 8
  %5981 = inttoptr i64 %5979 to i32*
  store i32 %5977, i32* %5981, align 4
  %5982 = load i64, i64* %3, align 8
  %5983 = add i64 %5982, 14
  store i64 %5983, i64* %3, align 8
  br label %block_.L_482d8f

block_.L_482d86:                                  ; preds = %block_.L_482d63
  %5984 = load i32, i32* %5947, align 4
  %5985 = zext i32 %5984 to i64
  store i64 %5985, i64* %RAX.i2276, align 8
  %5986 = add i64 %5938, -292
  %5987 = add i64 %5975, 9
  store i64 %5987, i64* %3, align 8
  %5988 = inttoptr i64 %5986 to i32*
  store i32 %5984, i32* %5988, align 4
  %.pre361 = load i64, i64* %3, align 8
  br label %block_.L_482d8f

block_.L_482d8f:                                  ; preds = %block_.L_482d86, %block_482d78
  %5989 = phi i64 [ %.pre361, %block_.L_482d86 ], [ %5983, %block_482d78 ]
  %5990 = load i64, i64* %RBP.i, align 8
  %5991 = add i64 %5990, -292
  %5992 = add i64 %5989, 6
  store i64 %5992, i64* %3, align 8
  %5993 = inttoptr i64 %5991 to i32*
  %5994 = load i32, i32* %5993, align 4
  %5995 = zext i32 %5994 to i64
  store i64 %5995, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %5996 = sub i32 0, %5994
  %5997 = icmp ne i32 %5994, 0
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %14, align 1
  %5999 = and i32 %5996, 255
  %6000 = tail call i32 @llvm.ctpop.i32(i32 %5999)
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  %6003 = xor i8 %6002, 1
  store i8 %6003, i8* %21, align 1
  %6004 = xor i32 %5994, %5996
  %6005 = lshr i32 %6004, 4
  %6006 = trunc i32 %6005 to i8
  %6007 = and i8 %6006, 1
  store i8 %6007, i8* %27, align 1
  %6008 = icmp eq i32 %5994, 0
  %6009 = zext i1 %6008 to i8
  store i8 %6009, i8* %30, align 1
  %6010 = lshr i32 %5996, 31
  %6011 = trunc i32 %6010 to i8
  store i8 %6011, i8* %33, align 1
  %6012 = lshr i32 %5994, 31
  %6013 = add nuw nsw i32 %6010, %6012
  %6014 = icmp eq i32 %6013, 2
  %6015 = zext i1 %6014 to i8
  store i8 %6015, i8* %39, align 1
  %6016 = icmp ne i8 %6011, 0
  %6017 = xor i1 %6016, %6014
  %6018 = or i1 %6008, %6017
  %.v411 = select i1 %6018, i64 29, i64 16
  %6019 = add i64 %5989, %.v411
  store i64 %6019, i64* %3, align 8
  br i1 %6018, label %block_.L_482dac, label %block_482d9f

block_482d9f:                                     ; preds = %block_.L_482d8f
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6020 = add i64 %5990, -296
  %6021 = add i64 %6019, 8
  store i64 %6021, i64* %3, align 8
  %6022 = inttoptr i64 %6020 to i32*
  store i32 0, i32* %6022, align 4
  %6023 = load i64, i64* %3, align 8
  %6024 = add i64 %6023, 52
  store i64 %6024, i64* %3, align 8
  br label %block_.L_482ddb

block_.L_482dac:                                  ; preds = %block_.L_482d8f
  %6025 = add i64 %5990, -76
  %6026 = add i64 %6019, 3
  store i64 %6026, i64* %3, align 8
  %6027 = inttoptr i64 %6025 to i32*
  %6028 = load i32, i32* %6027, align 4
  %6029 = zext i32 %6028 to i64
  store i64 %6029, i64* %RAX.i2276, align 8
  %6030 = add i64 %5990, -68
  %6031 = add i64 %6019, 6
  store i64 %6031, i64* %3, align 8
  %6032 = inttoptr i64 %6030 to i32*
  %6033 = load i32, i32* %6032, align 4
  %6034 = sub i32 %6028, %6033
  %6035 = icmp ult i32 %6028, %6033
  %6036 = zext i1 %6035 to i8
  store i8 %6036, i8* %14, align 1
  %6037 = and i32 %6034, 255
  %6038 = tail call i32 @llvm.ctpop.i32(i32 %6037)
  %6039 = trunc i32 %6038 to i8
  %6040 = and i8 %6039, 1
  %6041 = xor i8 %6040, 1
  store i8 %6041, i8* %21, align 1
  %6042 = xor i32 %6033, %6028
  %6043 = xor i32 %6042, %6034
  %6044 = lshr i32 %6043, 4
  %6045 = trunc i32 %6044 to i8
  %6046 = and i8 %6045, 1
  store i8 %6046, i8* %27, align 1
  %6047 = icmp eq i32 %6034, 0
  %6048 = zext i1 %6047 to i8
  store i8 %6048, i8* %30, align 1
  %6049 = lshr i32 %6034, 31
  %6050 = trunc i32 %6049 to i8
  store i8 %6050, i8* %33, align 1
  %6051 = lshr i32 %6028, 31
  %6052 = lshr i32 %6033, 31
  %6053 = xor i32 %6052, %6051
  %6054 = xor i32 %6049, %6051
  %6055 = add nuw nsw i32 %6054, %6053
  %6056 = icmp eq i32 %6055, 2
  %6057 = zext i1 %6056 to i8
  store i8 %6057, i8* %39, align 1
  %6058 = icmp ne i8 %6050, 0
  %6059 = xor i1 %6058, %6056
  %.v421 = select i1 %6059, i64 12, i64 26
  %6060 = add i64 %6019, %.v421
  %6061 = add i64 %6060, 3
  store i64 %6061, i64* %3, align 8
  br i1 %6059, label %block_482db8, label %block_.L_482dc6

block_482db8:                                     ; preds = %block_.L_482dac
  %6062 = load i32, i32* %6027, align 4
  %6063 = zext i32 %6062 to i64
  store i64 %6063, i64* %RAX.i2276, align 8
  %6064 = add i64 %5990, -300
  %6065 = add i64 %6060, 9
  store i64 %6065, i64* %3, align 8
  %6066 = inttoptr i64 %6064 to i32*
  store i32 %6062, i32* %6066, align 4
  %6067 = load i64, i64* %3, align 8
  %6068 = add i64 %6067, 14
  store i64 %6068, i64* %3, align 8
  br label %block_.L_482dcf

block_.L_482dc6:                                  ; preds = %block_.L_482dac
  %6069 = load i32, i32* %6032, align 4
  %6070 = zext i32 %6069 to i64
  store i64 %6070, i64* %RAX.i2276, align 8
  %6071 = add i64 %5990, -300
  %6072 = add i64 %6060, 9
  store i64 %6072, i64* %3, align 8
  %6073 = inttoptr i64 %6071 to i32*
  store i32 %6069, i32* %6073, align 4
  %.pre362 = load i64, i64* %3, align 8
  br label %block_.L_482dcf

block_.L_482dcf:                                  ; preds = %block_.L_482dc6, %block_482db8
  %6074 = phi i64 [ %.pre362, %block_.L_482dc6 ], [ %6068, %block_482db8 ]
  %6075 = load i64, i64* %RBP.i, align 8
  %6076 = add i64 %6075, -300
  %6077 = add i64 %6074, 6
  store i64 %6077, i64* %3, align 8
  %6078 = inttoptr i64 %6076 to i32*
  %6079 = load i32, i32* %6078, align 4
  %6080 = zext i32 %6079 to i64
  store i64 %6080, i64* %RAX.i2276, align 8
  %6081 = add i64 %6075, -296
  %6082 = add i64 %6074, 12
  store i64 %6082, i64* %3, align 8
  %6083 = inttoptr i64 %6081 to i32*
  store i32 %6079, i32* %6083, align 4
  %.pre363 = load i64, i64* %3, align 8
  br label %block_.L_482ddb

block_.L_482ddb:                                  ; preds = %block_.L_482dcf, %block_482d9f
  %6084 = phi i64 [ %.pre363, %block_.L_482dcf ], [ %6024, %block_482d9f ]
  %6085 = load i64, i64* %RBP.i, align 8
  %6086 = add i64 %6085, -296
  %6087 = add i64 %6084, 6
  store i64 %6087, i64* %3, align 8
  %6088 = inttoptr i64 %6086 to i32*
  %6089 = load i32, i32* %6088, align 4
  %6090 = zext i32 %6089 to i64
  store i64 %6090, i64* %RAX.i2276, align 8
  %6091 = add i64 %6085, -68
  %6092 = add i64 %6084, 9
  store i64 %6092, i64* %3, align 8
  %6093 = inttoptr i64 %6091 to i32*
  store i32 %6089, i32* %6093, align 4
  %6094 = load i64, i64* %RBP.i, align 8
  %6095 = add i64 %6094, -60
  %6096 = load i64, i64* %3, align 8
  %6097 = add i64 %6096, 7
  store i64 %6097, i64* %3, align 8
  %6098 = inttoptr i64 %6095 to i32*
  store i32 -2, i32* %6098, align 4
  %.pre364 = load i64, i64* %3, align 8
  br label %block_.L_482deb

block_.L_482deb:                                  ; preds = %block_.L_482eb6, %block_.L_482ddb
  %6099 = phi i64 [ %6577, %block_.L_482eb6 ], [ %.pre364, %block_.L_482ddb ]
  %6100 = load i64, i64* %RBP.i, align 8
  %6101 = add i64 %6100, -60
  %6102 = add i64 %6099, 4
  store i64 %6102, i64* %3, align 8
  %6103 = inttoptr i64 %6101 to i32*
  %6104 = load i32, i32* %6103, align 4
  %6105 = add i32 %6104, -4
  %6106 = icmp ult i32 %6104, 4
  %6107 = zext i1 %6106 to i8
  store i8 %6107, i8* %14, align 1
  %6108 = and i32 %6105, 255
  %6109 = tail call i32 @llvm.ctpop.i32(i32 %6108)
  %6110 = trunc i32 %6109 to i8
  %6111 = and i8 %6110, 1
  %6112 = xor i8 %6111, 1
  store i8 %6112, i8* %21, align 1
  %6113 = xor i32 %6105, %6104
  %6114 = lshr i32 %6113, 4
  %6115 = trunc i32 %6114 to i8
  %6116 = and i8 %6115, 1
  store i8 %6116, i8* %27, align 1
  %6117 = icmp eq i32 %6105, 0
  %6118 = zext i1 %6117 to i8
  store i8 %6118, i8* %30, align 1
  %6119 = lshr i32 %6105, 31
  %6120 = trunc i32 %6119 to i8
  store i8 %6120, i8* %33, align 1
  %6121 = lshr i32 %6104, 31
  %6122 = xor i32 %6119, %6121
  %6123 = add nuw nsw i32 %6122, %6121
  %6124 = icmp eq i32 %6123, 2
  %6125 = zext i1 %6124 to i8
  store i8 %6125, i8* %39, align 1
  %6126 = icmp ne i8 %6120, 0
  %6127 = xor i1 %6126, %6124
  %.v400 = select i1 %6127, i64 10, i64 222
  %6128 = add i64 %6099, %.v400
  store i64 %6128, i64* %3, align 8
  br i1 %6127, label %block_482df5, label %block_.L_482ec9

block_482df5:                                     ; preds = %block_.L_482deb
  %6129 = add i64 %6100, -72
  %6130 = add i64 %6128, 3
  store i64 %6130, i64* %3, align 8
  %6131 = inttoptr i64 %6129 to i32*
  %6132 = load i32, i32* %6131, align 4
  %6133 = zext i32 %6132 to i64
  store i64 %6133, i64* %RAX.i2276, align 8
  %6134 = add i64 %6100, -52
  %6135 = add i64 %6128, 6
  store i64 %6135, i64* %3, align 8
  %6136 = inttoptr i64 %6134 to i32*
  %6137 = load i32, i32* %6136, align 4
  %6138 = zext i32 %6137 to i64
  store i64 %6138, i64* %RCX.i2274, align 8
  %6139 = add i64 %6128, 9
  store i64 %6139, i64* %3, align 8
  %6140 = load i32, i32* %6103, align 4
  %6141 = add i32 %6140, %6137
  %6142 = zext i32 %6141 to i64
  store i64 %6142, i64* %RCX.i2274, align 8
  %6143 = icmp ult i32 %6141, %6137
  %6144 = icmp ult i32 %6141, %6140
  %6145 = or i1 %6143, %6144
  %6146 = zext i1 %6145 to i8
  store i8 %6146, i8* %14, align 1
  %6147 = and i32 %6141, 255
  %6148 = tail call i32 @llvm.ctpop.i32(i32 %6147)
  %6149 = trunc i32 %6148 to i8
  %6150 = and i8 %6149, 1
  %6151 = xor i8 %6150, 1
  store i8 %6151, i8* %21, align 1
  %6152 = xor i32 %6140, %6137
  %6153 = xor i32 %6152, %6141
  %6154 = lshr i32 %6153, 4
  %6155 = trunc i32 %6154 to i8
  %6156 = and i8 %6155, 1
  store i8 %6156, i8* %27, align 1
  %6157 = icmp eq i32 %6141, 0
  %6158 = zext i1 %6157 to i8
  store i8 %6158, i8* %30, align 1
  %6159 = lshr i32 %6141, 31
  %6160 = trunc i32 %6159 to i8
  store i8 %6160, i8* %33, align 1
  %6161 = lshr i32 %6137, 31
  %6162 = lshr i32 %6140, 31
  %6163 = xor i32 %6159, %6161
  %6164 = xor i32 %6159, %6162
  %6165 = add nuw nsw i32 %6163, %6164
  %6166 = icmp eq i32 %6165, 2
  %6167 = zext i1 %6166 to i8
  store i8 %6167, i8* %39, align 1
  %6168 = add i64 %6100, -28
  %6169 = add i64 %6128, 12
  store i64 %6169, i64* %3, align 8
  %6170 = inttoptr i64 %6168 to i32*
  %6171 = load i32, i32* %6170, align 4
  %6172 = add i32 %6171, %6141
  %6173 = zext i32 %6172 to i64
  store i64 %6173, i64* %RCX.i2274, align 8
  %6174 = lshr i32 %6172, 31
  %6175 = sub i32 %6132, %6172
  %6176 = icmp ult i32 %6132, %6172
  %6177 = zext i1 %6176 to i8
  store i8 %6177, i8* %14, align 1
  %6178 = and i32 %6175, 255
  %6179 = tail call i32 @llvm.ctpop.i32(i32 %6178)
  %6180 = trunc i32 %6179 to i8
  %6181 = and i8 %6180, 1
  %6182 = xor i8 %6181, 1
  store i8 %6182, i8* %21, align 1
  %6183 = xor i32 %6172, %6132
  %6184 = xor i32 %6183, %6175
  %6185 = lshr i32 %6184, 4
  %6186 = trunc i32 %6185 to i8
  %6187 = and i8 %6186, 1
  store i8 %6187, i8* %27, align 1
  %6188 = icmp eq i32 %6175, 0
  %6189 = zext i1 %6188 to i8
  store i8 %6189, i8* %30, align 1
  %6190 = lshr i32 %6175, 31
  %6191 = trunc i32 %6190 to i8
  store i8 %6191, i8* %33, align 1
  %6192 = lshr i32 %6132, 31
  %6193 = xor i32 %6174, %6192
  %6194 = xor i32 %6190, %6192
  %6195 = add nuw nsw i32 %6194, %6193
  %6196 = icmp eq i32 %6195, 2
  %6197 = zext i1 %6196 to i8
  store i8 %6197, i8* %39, align 1
  %6198 = icmp ne i8 %6191, 0
  %6199 = xor i1 %6198, %6196
  %.v418 = select i1 %6199, i64 20, i64 34
  %6200 = add i64 %6128, %.v418
  store i64 %6200, i64* %3, align 8
  %6201 = load i64, i64* %RBP.i, align 8
  br i1 %6199, label %block_482e09, label %block_.L_482e17

block_482e09:                                     ; preds = %block_482df5
  %6202 = add i64 %6201, -72
  %6203 = add i64 %6200, 3
  store i64 %6203, i64* %3, align 8
  %6204 = inttoptr i64 %6202 to i32*
  %6205 = load i32, i32* %6204, align 4
  %6206 = zext i32 %6205 to i64
  store i64 %6206, i64* %RAX.i2276, align 8
  %6207 = add i64 %6201, -304
  %6208 = add i64 %6200, 9
  store i64 %6208, i64* %3, align 8
  %6209 = inttoptr i64 %6207 to i32*
  store i32 %6205, i32* %6209, align 4
  %6210 = load i64, i64* %3, align 8
  %6211 = add i64 %6210, 20
  store i64 %6211, i64* %3, align 8
  br label %block_.L_482e26

block_.L_482e17:                                  ; preds = %block_482df5
  %6212 = add i64 %6201, -52
  %6213 = add i64 %6200, 3
  store i64 %6213, i64* %3, align 8
  %6214 = inttoptr i64 %6212 to i32*
  %6215 = load i32, i32* %6214, align 4
  %6216 = zext i32 %6215 to i64
  store i64 %6216, i64* %RAX.i2276, align 8
  %6217 = add i64 %6201, -60
  %6218 = add i64 %6200, 6
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6217 to i32*
  %6220 = load i32, i32* %6219, align 4
  %6221 = add i32 %6220, %6215
  %6222 = zext i32 %6221 to i64
  store i64 %6222, i64* %RAX.i2276, align 8
  %6223 = icmp ult i32 %6221, %6215
  %6224 = icmp ult i32 %6221, %6220
  %6225 = or i1 %6223, %6224
  %6226 = zext i1 %6225 to i8
  store i8 %6226, i8* %14, align 1
  %6227 = and i32 %6221, 255
  %6228 = tail call i32 @llvm.ctpop.i32(i32 %6227)
  %6229 = trunc i32 %6228 to i8
  %6230 = and i8 %6229, 1
  %6231 = xor i8 %6230, 1
  store i8 %6231, i8* %21, align 1
  %6232 = xor i32 %6220, %6215
  %6233 = xor i32 %6232, %6221
  %6234 = lshr i32 %6233, 4
  %6235 = trunc i32 %6234 to i8
  %6236 = and i8 %6235, 1
  store i8 %6236, i8* %27, align 1
  %6237 = icmp eq i32 %6221, 0
  %6238 = zext i1 %6237 to i8
  store i8 %6238, i8* %30, align 1
  %6239 = lshr i32 %6221, 31
  %6240 = trunc i32 %6239 to i8
  store i8 %6240, i8* %33, align 1
  %6241 = lshr i32 %6215, 31
  %6242 = lshr i32 %6220, 31
  %6243 = xor i32 %6239, %6241
  %6244 = xor i32 %6239, %6242
  %6245 = add nuw nsw i32 %6243, %6244
  %6246 = icmp eq i32 %6245, 2
  %6247 = zext i1 %6246 to i8
  store i8 %6247, i8* %39, align 1
  %6248 = add i64 %6201, -28
  %6249 = add i64 %6200, 9
  store i64 %6249, i64* %3, align 8
  %6250 = inttoptr i64 %6248 to i32*
  %6251 = load i32, i32* %6250, align 4
  %6252 = add i32 %6251, %6221
  %6253 = zext i32 %6252 to i64
  store i64 %6253, i64* %RAX.i2276, align 8
  %6254 = icmp ult i32 %6252, %6221
  %6255 = icmp ult i32 %6252, %6251
  %6256 = or i1 %6254, %6255
  %6257 = zext i1 %6256 to i8
  store i8 %6257, i8* %14, align 1
  %6258 = and i32 %6252, 255
  %6259 = tail call i32 @llvm.ctpop.i32(i32 %6258)
  %6260 = trunc i32 %6259 to i8
  %6261 = and i8 %6260, 1
  %6262 = xor i8 %6261, 1
  store i8 %6262, i8* %21, align 1
  %6263 = xor i32 %6251, %6221
  %6264 = xor i32 %6263, %6252
  %6265 = lshr i32 %6264, 4
  %6266 = trunc i32 %6265 to i8
  %6267 = and i8 %6266, 1
  store i8 %6267, i8* %27, align 1
  %6268 = icmp eq i32 %6252, 0
  %6269 = zext i1 %6268 to i8
  store i8 %6269, i8* %30, align 1
  %6270 = lshr i32 %6252, 31
  %6271 = trunc i32 %6270 to i8
  store i8 %6271, i8* %33, align 1
  %6272 = lshr i32 %6251, 31
  %6273 = xor i32 %6270, %6239
  %6274 = xor i32 %6270, %6272
  %6275 = add nuw nsw i32 %6273, %6274
  %6276 = icmp eq i32 %6275, 2
  %6277 = zext i1 %6276 to i8
  store i8 %6277, i8* %39, align 1
  %6278 = add i64 %6201, -304
  %6279 = add i64 %6200, 15
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6278 to i32*
  store i32 %6252, i32* %6280, align 4
  %.pre373 = load i64, i64* %3, align 8
  br label %block_.L_482e26

block_.L_482e26:                                  ; preds = %block_.L_482e17, %block_482e09
  %6281 = phi i64 [ %.pre373, %block_.L_482e17 ], [ %6211, %block_482e09 ]
  %6282 = load i64, i64* %RBP.i, align 8
  %6283 = add i64 %6282, -304
  %6284 = add i64 %6281, 6
  store i64 %6284, i64* %3, align 8
  %6285 = inttoptr i64 %6283 to i32*
  %6286 = load i32, i32* %6285, align 4
  %6287 = zext i32 %6286 to i64
  store i64 %6287, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %6288 = sub i32 0, %6286
  %6289 = icmp ne i32 %6286, 0
  %6290 = zext i1 %6289 to i8
  store i8 %6290, i8* %14, align 1
  %6291 = and i32 %6288, 255
  %6292 = tail call i32 @llvm.ctpop.i32(i32 %6291)
  %6293 = trunc i32 %6292 to i8
  %6294 = and i8 %6293, 1
  %6295 = xor i8 %6294, 1
  store i8 %6295, i8* %21, align 1
  %6296 = xor i32 %6286, %6288
  %6297 = lshr i32 %6296, 4
  %6298 = trunc i32 %6297 to i8
  %6299 = and i8 %6298, 1
  store i8 %6299, i8* %27, align 1
  %6300 = icmp eq i32 %6286, 0
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %30, align 1
  %6302 = lshr i32 %6288, 31
  %6303 = trunc i32 %6302 to i8
  store i8 %6303, i8* %33, align 1
  %6304 = lshr i32 %6286, 31
  %6305 = add nuw nsw i32 %6302, %6304
  %6306 = icmp eq i32 %6305, 2
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %39, align 1
  %6308 = icmp ne i8 %6303, 0
  %6309 = xor i1 %6308, %6306
  %6310 = or i1 %6300, %6309
  %.v419 = select i1 %6310, i64 29, i64 16
  %6311 = add i64 %6281, %.v419
  store i64 %6311, i64* %3, align 8
  br i1 %6310, label %block_.L_482e43, label %block_482e36

block_482e36:                                     ; preds = %block_.L_482e26
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6312 = add i64 %6282, -308
  %6313 = add i64 %6311, 8
  store i64 %6313, i64* %3, align 8
  %6314 = inttoptr i64 %6312 to i32*
  store i32 0, i32* %6314, align 4
  %6315 = load i64, i64* %3, align 8
  %6316 = add i64 %6315, 66
  store i64 %6316, i64* %3, align 8
  br label %block_.L_482e80

block_.L_482e43:                                  ; preds = %block_.L_482e26
  %6317 = add i64 %6282, -72
  %6318 = add i64 %6311, 3
  store i64 %6318, i64* %3, align 8
  %6319 = inttoptr i64 %6317 to i32*
  %6320 = load i32, i32* %6319, align 4
  %6321 = zext i32 %6320 to i64
  store i64 %6321, i64* %RAX.i2276, align 8
  %6322 = add i64 %6282, -52
  %6323 = add i64 %6311, 6
  store i64 %6323, i64* %3, align 8
  %6324 = inttoptr i64 %6322 to i32*
  %6325 = load i32, i32* %6324, align 4
  %6326 = zext i32 %6325 to i64
  store i64 %6326, i64* %RCX.i2274, align 8
  %6327 = add i64 %6282, -60
  %6328 = add i64 %6311, 9
  store i64 %6328, i64* %3, align 8
  %6329 = inttoptr i64 %6327 to i32*
  %6330 = load i32, i32* %6329, align 4
  %6331 = add i32 %6330, %6325
  %6332 = zext i32 %6331 to i64
  store i64 %6332, i64* %RCX.i2274, align 8
  %6333 = icmp ult i32 %6331, %6325
  %6334 = icmp ult i32 %6331, %6330
  %6335 = or i1 %6333, %6334
  %6336 = zext i1 %6335 to i8
  store i8 %6336, i8* %14, align 1
  %6337 = and i32 %6331, 255
  %6338 = tail call i32 @llvm.ctpop.i32(i32 %6337)
  %6339 = trunc i32 %6338 to i8
  %6340 = and i8 %6339, 1
  %6341 = xor i8 %6340, 1
  store i8 %6341, i8* %21, align 1
  %6342 = xor i32 %6330, %6325
  %6343 = xor i32 %6342, %6331
  %6344 = lshr i32 %6343, 4
  %6345 = trunc i32 %6344 to i8
  %6346 = and i8 %6345, 1
  store i8 %6346, i8* %27, align 1
  %6347 = icmp eq i32 %6331, 0
  %6348 = zext i1 %6347 to i8
  store i8 %6348, i8* %30, align 1
  %6349 = lshr i32 %6331, 31
  %6350 = trunc i32 %6349 to i8
  store i8 %6350, i8* %33, align 1
  %6351 = lshr i32 %6325, 31
  %6352 = lshr i32 %6330, 31
  %6353 = xor i32 %6349, %6351
  %6354 = xor i32 %6349, %6352
  %6355 = add nuw nsw i32 %6353, %6354
  %6356 = icmp eq i32 %6355, 2
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %39, align 1
  %6358 = add i64 %6282, -28
  %6359 = add i64 %6311, 12
  store i64 %6359, i64* %3, align 8
  %6360 = inttoptr i64 %6358 to i32*
  %6361 = load i32, i32* %6360, align 4
  %6362 = add i32 %6361, %6331
  %6363 = zext i32 %6362 to i64
  store i64 %6363, i64* %RCX.i2274, align 8
  %6364 = lshr i32 %6362, 31
  %6365 = sub i32 %6320, %6362
  %6366 = icmp ult i32 %6320, %6362
  %6367 = zext i1 %6366 to i8
  store i8 %6367, i8* %14, align 1
  %6368 = and i32 %6365, 255
  %6369 = tail call i32 @llvm.ctpop.i32(i32 %6368)
  %6370 = trunc i32 %6369 to i8
  %6371 = and i8 %6370, 1
  %6372 = xor i8 %6371, 1
  store i8 %6372, i8* %21, align 1
  %6373 = xor i32 %6362, %6320
  %6374 = xor i32 %6373, %6365
  %6375 = lshr i32 %6374, 4
  %6376 = trunc i32 %6375 to i8
  %6377 = and i8 %6376, 1
  store i8 %6377, i8* %27, align 1
  %6378 = icmp eq i32 %6365, 0
  %6379 = zext i1 %6378 to i8
  store i8 %6379, i8* %30, align 1
  %6380 = lshr i32 %6365, 31
  %6381 = trunc i32 %6380 to i8
  store i8 %6381, i8* %33, align 1
  %6382 = lshr i32 %6320, 31
  %6383 = xor i32 %6364, %6382
  %6384 = xor i32 %6380, %6382
  %6385 = add nuw nsw i32 %6384, %6383
  %6386 = icmp eq i32 %6385, 2
  %6387 = zext i1 %6386 to i8
  store i8 %6387, i8* %39, align 1
  %6388 = icmp ne i8 %6381, 0
  %6389 = xor i1 %6388, %6386
  %.v420 = select i1 %6389, i64 20, i64 34
  %6390 = add i64 %6311, %.v420
  store i64 %6390, i64* %3, align 8
  %6391 = load i64, i64* %RBP.i, align 8
  br i1 %6389, label %block_482e57, label %block_.L_482e65

block_482e57:                                     ; preds = %block_.L_482e43
  %6392 = add i64 %6391, -72
  %6393 = add i64 %6390, 3
  store i64 %6393, i64* %3, align 8
  %6394 = inttoptr i64 %6392 to i32*
  %6395 = load i32, i32* %6394, align 4
  %6396 = zext i32 %6395 to i64
  store i64 %6396, i64* %RAX.i2276, align 8
  %6397 = add i64 %6391, -312
  %6398 = add i64 %6390, 9
  store i64 %6398, i64* %3, align 8
  %6399 = inttoptr i64 %6397 to i32*
  store i32 %6395, i32* %6399, align 4
  %6400 = load i64, i64* %3, align 8
  %6401 = add i64 %6400, 20
  store i64 %6401, i64* %3, align 8
  br label %block_.L_482e74

block_.L_482e65:                                  ; preds = %block_.L_482e43
  %6402 = add i64 %6391, -52
  %6403 = add i64 %6390, 3
  store i64 %6403, i64* %3, align 8
  %6404 = inttoptr i64 %6402 to i32*
  %6405 = load i32, i32* %6404, align 4
  %6406 = zext i32 %6405 to i64
  store i64 %6406, i64* %RAX.i2276, align 8
  %6407 = add i64 %6391, -60
  %6408 = add i64 %6390, 6
  store i64 %6408, i64* %3, align 8
  %6409 = inttoptr i64 %6407 to i32*
  %6410 = load i32, i32* %6409, align 4
  %6411 = add i32 %6410, %6405
  %6412 = zext i32 %6411 to i64
  store i64 %6412, i64* %RAX.i2276, align 8
  %6413 = icmp ult i32 %6411, %6405
  %6414 = icmp ult i32 %6411, %6410
  %6415 = or i1 %6413, %6414
  %6416 = zext i1 %6415 to i8
  store i8 %6416, i8* %14, align 1
  %6417 = and i32 %6411, 255
  %6418 = tail call i32 @llvm.ctpop.i32(i32 %6417)
  %6419 = trunc i32 %6418 to i8
  %6420 = and i8 %6419, 1
  %6421 = xor i8 %6420, 1
  store i8 %6421, i8* %21, align 1
  %6422 = xor i32 %6410, %6405
  %6423 = xor i32 %6422, %6411
  %6424 = lshr i32 %6423, 4
  %6425 = trunc i32 %6424 to i8
  %6426 = and i8 %6425, 1
  store i8 %6426, i8* %27, align 1
  %6427 = icmp eq i32 %6411, 0
  %6428 = zext i1 %6427 to i8
  store i8 %6428, i8* %30, align 1
  %6429 = lshr i32 %6411, 31
  %6430 = trunc i32 %6429 to i8
  store i8 %6430, i8* %33, align 1
  %6431 = lshr i32 %6405, 31
  %6432 = lshr i32 %6410, 31
  %6433 = xor i32 %6429, %6431
  %6434 = xor i32 %6429, %6432
  %6435 = add nuw nsw i32 %6433, %6434
  %6436 = icmp eq i32 %6435, 2
  %6437 = zext i1 %6436 to i8
  store i8 %6437, i8* %39, align 1
  %6438 = add i64 %6391, -28
  %6439 = add i64 %6390, 9
  store i64 %6439, i64* %3, align 8
  %6440 = inttoptr i64 %6438 to i32*
  %6441 = load i32, i32* %6440, align 4
  %6442 = add i32 %6441, %6411
  %6443 = zext i32 %6442 to i64
  store i64 %6443, i64* %RAX.i2276, align 8
  %6444 = icmp ult i32 %6442, %6411
  %6445 = icmp ult i32 %6442, %6441
  %6446 = or i1 %6444, %6445
  %6447 = zext i1 %6446 to i8
  store i8 %6447, i8* %14, align 1
  %6448 = and i32 %6442, 255
  %6449 = tail call i32 @llvm.ctpop.i32(i32 %6448)
  %6450 = trunc i32 %6449 to i8
  %6451 = and i8 %6450, 1
  %6452 = xor i8 %6451, 1
  store i8 %6452, i8* %21, align 1
  %6453 = xor i32 %6441, %6411
  %6454 = xor i32 %6453, %6442
  %6455 = lshr i32 %6454, 4
  %6456 = trunc i32 %6455 to i8
  %6457 = and i8 %6456, 1
  store i8 %6457, i8* %27, align 1
  %6458 = icmp eq i32 %6442, 0
  %6459 = zext i1 %6458 to i8
  store i8 %6459, i8* %30, align 1
  %6460 = lshr i32 %6442, 31
  %6461 = trunc i32 %6460 to i8
  store i8 %6461, i8* %33, align 1
  %6462 = lshr i32 %6441, 31
  %6463 = xor i32 %6460, %6429
  %6464 = xor i32 %6460, %6462
  %6465 = add nuw nsw i32 %6463, %6464
  %6466 = icmp eq i32 %6465, 2
  %6467 = zext i1 %6466 to i8
  store i8 %6467, i8* %39, align 1
  %6468 = add i64 %6391, -312
  %6469 = add i64 %6390, 15
  store i64 %6469, i64* %3, align 8
  %6470 = inttoptr i64 %6468 to i32*
  store i32 %6442, i32* %6470, align 4
  %.pre374 = load i64, i64* %3, align 8
  br label %block_.L_482e74

block_.L_482e74:                                  ; preds = %block_.L_482e65, %block_482e57
  %6471 = phi i64 [ %.pre374, %block_.L_482e65 ], [ %6401, %block_482e57 ]
  %6472 = load i64, i64* %RBP.i, align 8
  %6473 = add i64 %6472, -312
  %6474 = add i64 %6471, 6
  store i64 %6474, i64* %3, align 8
  %6475 = inttoptr i64 %6473 to i32*
  %6476 = load i32, i32* %6475, align 4
  %6477 = zext i32 %6476 to i64
  store i64 %6477, i64* %RAX.i2276, align 8
  %6478 = add i64 %6472, -308
  %6479 = add i64 %6471, 12
  store i64 %6479, i64* %3, align 8
  %6480 = inttoptr i64 %6478 to i32*
  store i32 %6476, i32* %6480, align 4
  %.pre375 = load i64, i64* %3, align 8
  br label %block_.L_482e80

block_.L_482e80:                                  ; preds = %block_.L_482e74, %block_482e36
  %6481 = phi i64 [ %.pre375, %block_.L_482e74 ], [ %6316, %block_482e36 ]
  %6482 = load i64, i64* %RBP.i, align 8
  %6483 = add i64 %6482, -308
  %6484 = add i64 %6481, 6
  store i64 %6484, i64* %3, align 8
  %6485 = inttoptr i64 %6483 to i32*
  %6486 = load i32, i32* %6485, align 4
  %6487 = zext i32 %6486 to i64
  store i64 %6487, i64* %RAX.i2276, align 8
  %6488 = add i64 %6482, -64
  %6489 = add i64 %6481, 9
  store i64 %6489, i64* %3, align 8
  %6490 = inttoptr i64 %6488 to i32*
  store i32 %6486, i32* %6490, align 4
  %6491 = load i64, i64* %3, align 8
  %6492 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %6492, i64* %RCX.i2274, align 8
  %6493 = load i64, i64* %RBP.i, align 8
  %6494 = add i64 %6493, -68
  %6495 = add i64 %6491, 12
  store i64 %6495, i64* %3, align 8
  %6496 = inttoptr i64 %6494 to i32*
  %6497 = load i32, i32* %6496, align 4
  %6498 = sext i32 %6497 to i64
  store i64 %6498, i64* %RDX.i2161, align 8
  %6499 = shl nsw i64 %6498, 3
  %6500 = add i64 %6499, %6492
  %6501 = add i64 %6491, 16
  store i64 %6501, i64* %3, align 8
  %6502 = inttoptr i64 %6500 to i64*
  %6503 = load i64, i64* %6502, align 8
  store i64 %6503, i64* %RCX.i2274, align 8
  %6504 = add i64 %6493, -64
  %6505 = add i64 %6491, 20
  store i64 %6505, i64* %3, align 8
  %6506 = inttoptr i64 %6504 to i32*
  %6507 = load i32, i32* %6506, align 4
  %6508 = sext i32 %6507 to i64
  store i64 %6508, i64* %RDX.i2161, align 8
  %6509 = add i64 %6503, %6508
  %6510 = add i64 %6491, 24
  store i64 %6510, i64* %3, align 8
  %6511 = inttoptr i64 %6509 to i8*
  %6512 = load i8, i8* %6511, align 1
  %6513 = zext i8 %6512 to i64
  store i64 %6513, i64* %RAX.i2276, align 8
  %6514 = zext i8 %6512 to i32
  %6515 = add i64 %6493, -80
  %6516 = add i64 %6491, 27
  store i64 %6516, i64* %3, align 8
  %6517 = inttoptr i64 %6515 to i32*
  %6518 = load i32, i32* %6517, align 4
  %6519 = sub i32 %6514, %6518
  %6520 = icmp ult i32 %6514, %6518
  %6521 = zext i1 %6520 to i8
  store i8 %6521, i8* %14, align 1
  %6522 = and i32 %6519, 255
  %6523 = tail call i32 @llvm.ctpop.i32(i32 %6522)
  %6524 = trunc i32 %6523 to i8
  %6525 = and i8 %6524, 1
  %6526 = xor i8 %6525, 1
  store i8 %6526, i8* %21, align 1
  %6527 = xor i32 %6518, %6514
  %6528 = xor i32 %6527, %6519
  %6529 = lshr i32 %6528, 4
  %6530 = trunc i32 %6529 to i8
  %6531 = and i8 %6530, 1
  store i8 %6531, i8* %27, align 1
  %6532 = icmp eq i32 %6519, 0
  %6533 = zext i1 %6532 to i8
  store i8 %6533, i8* %30, align 1
  %6534 = lshr i32 %6519, 31
  %6535 = trunc i32 %6534 to i8
  store i8 %6535, i8* %33, align 1
  %6536 = lshr i32 %6518, 31
  %6537 = add nuw nsw i32 %6534, %6536
  %6538 = icmp eq i32 %6537, 2
  %6539 = zext i1 %6538 to i8
  store i8 %6539, i8* %39, align 1
  %6540 = icmp ne i8 %6535, 0
  %6541 = xor i1 %6540, %6538
  %.v403 = select i1 %6541, i64 33, i64 45
  %6542 = add i64 %6491, %.v403
  store i64 %6542, i64* %3, align 8
  br i1 %6541, label %block_482eaa, label %block_.L_482eb6

block_482eaa:                                     ; preds = %block_.L_482e80
  %6543 = add i64 %6493, -4
  %6544 = add i64 %6542, 7
  store i64 %6544, i64* %3, align 8
  %6545 = inttoptr i64 %6543 to i32*
  store i32 0, i32* %6545, align 4
  %6546 = load i64, i64* %3, align 8
  %6547 = add i64 %6546, 532
  store i64 %6547, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_482eb6:                                  ; preds = %block_.L_482e80
  %6548 = add i64 %6493, -60
  %6549 = add i64 %6542, 8
  store i64 %6549, i64* %3, align 8
  %6550 = inttoptr i64 %6548 to i32*
  %6551 = load i32, i32* %6550, align 4
  %6552 = add i32 %6551, 1
  %6553 = zext i32 %6552 to i64
  store i64 %6553, i64* %RAX.i2276, align 8
  %6554 = icmp eq i32 %6551, -1
  %6555 = icmp eq i32 %6552, 0
  %6556 = or i1 %6554, %6555
  %6557 = zext i1 %6556 to i8
  store i8 %6557, i8* %14, align 1
  %6558 = and i32 %6552, 255
  %6559 = tail call i32 @llvm.ctpop.i32(i32 %6558)
  %6560 = trunc i32 %6559 to i8
  %6561 = and i8 %6560, 1
  %6562 = xor i8 %6561, 1
  store i8 %6562, i8* %21, align 1
  %6563 = xor i32 %6552, %6551
  %6564 = lshr i32 %6563, 4
  %6565 = trunc i32 %6564 to i8
  %6566 = and i8 %6565, 1
  store i8 %6566, i8* %27, align 1
  %6567 = zext i1 %6555 to i8
  store i8 %6567, i8* %30, align 1
  %6568 = lshr i32 %6552, 31
  %6569 = trunc i32 %6568 to i8
  store i8 %6569, i8* %33, align 1
  %6570 = lshr i32 %6551, 31
  %6571 = xor i32 %6568, %6570
  %6572 = add nuw nsw i32 %6571, %6568
  %6573 = icmp eq i32 %6572, 2
  %6574 = zext i1 %6573 to i8
  store i8 %6574, i8* %39, align 1
  %6575 = add i64 %6542, 14
  store i64 %6575, i64* %3, align 8
  store i32 %6552, i32* %6550, align 4
  %6576 = load i64, i64* %3, align 8
  %6577 = add i64 %6576, -217
  store i64 %6577, i64* %3, align 8
  br label %block_.L_482deb

block_.L_482ec9:                                  ; preds = %block_.L_482deb
  %6578 = add i64 %6100, -44
  %6579 = add i64 %6128, 4
  store i64 %6579, i64* %3, align 8
  %6580 = inttoptr i64 %6578 to i32*
  %6581 = load i32, i32* %6580, align 4
  %6582 = add i32 %6581, -1
  %6583 = icmp eq i32 %6581, 0
  %6584 = zext i1 %6583 to i8
  store i8 %6584, i8* %14, align 1
  %6585 = and i32 %6582, 255
  %6586 = tail call i32 @llvm.ctpop.i32(i32 %6585)
  %6587 = trunc i32 %6586 to i8
  %6588 = and i8 %6587, 1
  %6589 = xor i8 %6588, 1
  store i8 %6589, i8* %21, align 1
  %6590 = xor i32 %6582, %6581
  %6591 = lshr i32 %6590, 4
  %6592 = trunc i32 %6591 to i8
  %6593 = and i8 %6592, 1
  store i8 %6593, i8* %27, align 1
  %6594 = icmp eq i32 %6582, 0
  %6595 = zext i1 %6594 to i8
  store i8 %6595, i8* %30, align 1
  %6596 = lshr i32 %6582, 31
  %6597 = trunc i32 %6596 to i8
  store i8 %6597, i8* %33, align 1
  %6598 = lshr i32 %6581, 31
  %6599 = xor i32 %6596, %6598
  %6600 = add nuw nsw i32 %6599, %6598
  %6601 = icmp eq i32 %6600, 2
  %6602 = zext i1 %6601 to i8
  store i8 %6602, i8* %39, align 1
  %.v399 = select i1 %6594, i64 10, i64 27
  %6603 = add i64 %6128, %.v399
  %6604 = add i64 %6100, -52
  %6605 = add i64 %6603, 3
  store i64 %6605, i64* %3, align 8
  %6606 = inttoptr i64 %6604 to i32*
  %6607 = load i32, i32* %6606, align 4
  %6608 = zext i32 %6607 to i64
  store i64 %6608, i64* %RAX.i2276, align 8
  %6609 = add i64 %6100, -28
  %6610 = add i64 %6603, 6
  store i64 %6610, i64* %3, align 8
  %6611 = inttoptr i64 %6609 to i32*
  %6612 = load i32, i32* %6611, align 4
  %6613 = add i32 %6612, %6607
  %6614 = zext i32 %6613 to i64
  store i64 %6614, i64* %RAX.i2276, align 8
  %6615 = icmp ult i32 %6613, %6607
  %6616 = icmp ult i32 %6613, %6612
  %6617 = or i1 %6615, %6616
  %6618 = zext i1 %6617 to i8
  store i8 %6618, i8* %14, align 1
  %6619 = and i32 %6613, 255
  %6620 = tail call i32 @llvm.ctpop.i32(i32 %6619)
  %6621 = trunc i32 %6620 to i8
  %6622 = and i8 %6621, 1
  %6623 = xor i8 %6622, 1
  store i8 %6623, i8* %21, align 1
  %6624 = xor i32 %6612, %6607
  %6625 = xor i32 %6624, %6613
  %6626 = lshr i32 %6625, 4
  %6627 = trunc i32 %6626 to i8
  %6628 = and i8 %6627, 1
  store i8 %6628, i8* %27, align 1
  %6629 = icmp eq i32 %6613, 0
  %6630 = zext i1 %6629 to i8
  store i8 %6630, i8* %30, align 1
  %6631 = lshr i32 %6613, 31
  %6632 = trunc i32 %6631 to i8
  store i8 %6632, i8* %33, align 1
  %6633 = lshr i32 %6607, 31
  %6634 = lshr i32 %6612, 31
  %6635 = xor i32 %6631, %6633
  %6636 = xor i32 %6631, %6634
  %6637 = add nuw nsw i32 %6635, %6636
  %6638 = icmp eq i32 %6637, 2
  %6639 = zext i1 %6638 to i8
  store i8 %6639, i8* %39, align 1
  br i1 %6594, label %block_482ed3, label %block_.L_482ee4

block_482ed3:                                     ; preds = %block_.L_482ec9
  %6640 = add i64 %6100, -316
  %6641 = add i64 %6603, 12
  store i64 %6641, i64* %3, align 8
  %6642 = inttoptr i64 %6640 to i32*
  store i32 %6613, i32* %6642, align 4
  %6643 = load i64, i64* %3, align 8
  %6644 = add i64 %6643, 20
  store i64 %6644, i64* %3, align 8
  br label %block_.L_482ef3

block_.L_482ee4:                                  ; preds = %block_.L_482ec9
  %6645 = add i32 %6613, 1
  %6646 = zext i32 %6645 to i64
  store i64 %6646, i64* %RAX.i2276, align 8
  %6647 = icmp eq i32 %6613, -1
  %6648 = icmp eq i32 %6645, 0
  %6649 = or i1 %6647, %6648
  %6650 = zext i1 %6649 to i8
  store i8 %6650, i8* %14, align 1
  %6651 = and i32 %6645, 255
  %6652 = tail call i32 @llvm.ctpop.i32(i32 %6651)
  %6653 = trunc i32 %6652 to i8
  %6654 = and i8 %6653, 1
  %6655 = xor i8 %6654, 1
  store i8 %6655, i8* %21, align 1
  %6656 = xor i32 %6645, %6613
  %6657 = lshr i32 %6656, 4
  %6658 = trunc i32 %6657 to i8
  %6659 = and i8 %6658, 1
  store i8 %6659, i8* %27, align 1
  %6660 = zext i1 %6648 to i8
  store i8 %6660, i8* %30, align 1
  %6661 = lshr i32 %6645, 31
  %6662 = trunc i32 %6661 to i8
  store i8 %6662, i8* %33, align 1
  %6663 = xor i32 %6661, %6631
  %6664 = add nuw nsw i32 %6663, %6661
  %6665 = icmp eq i32 %6664, 2
  %6666 = zext i1 %6665 to i8
  store i8 %6666, i8* %39, align 1
  %6667 = add i64 %6100, -316
  %6668 = add i64 %6603, 15
  store i64 %6668, i64* %3, align 8
  %6669 = inttoptr i64 %6667 to i32*
  store i32 %6645, i32* %6669, align 4
  %.pre365 = load i64, i64* %3, align 8
  br label %block_.L_482ef3

block_.L_482ef3:                                  ; preds = %block_.L_482ee4, %block_482ed3
  %6670 = phi i64 [ %.pre365, %block_.L_482ee4 ], [ %6644, %block_482ed3 ]
  %6671 = load i64, i64* %RBP.i, align 8
  %6672 = add i64 %6671, -316
  %6673 = add i64 %6670, 6
  store i64 %6673, i64* %3, align 8
  %6674 = inttoptr i64 %6672 to i32*
  %6675 = load i32, i32* %6674, align 4
  %6676 = zext i32 %6675 to i64
  store i64 %6676, i64* %RAX.i2276, align 8
  %6677 = add i64 %6671, -64
  %6678 = add i64 %6670, 9
  store i64 %6678, i64* %3, align 8
  %6679 = inttoptr i64 %6677 to i32*
  store i32 %6675, i32* %6679, align 4
  %6680 = load i64, i64* %RBP.i, align 8
  %6681 = add i64 %6680, -72
  %6682 = load i64, i64* %3, align 8
  %6683 = add i64 %6682, 3
  store i64 %6683, i64* %3, align 8
  %6684 = inttoptr i64 %6681 to i32*
  %6685 = load i32, i32* %6684, align 4
  %6686 = zext i32 %6685 to i64
  store i64 %6686, i64* %RAX.i2276, align 8
  %6687 = add i64 %6680, -64
  %6688 = add i64 %6682, 6
  store i64 %6688, i64* %3, align 8
  %6689 = inttoptr i64 %6687 to i32*
  %6690 = load i32, i32* %6689, align 4
  %6691 = sub i32 %6685, %6690
  %6692 = icmp ult i32 %6685, %6690
  %6693 = zext i1 %6692 to i8
  store i8 %6693, i8* %14, align 1
  %6694 = and i32 %6691, 255
  %6695 = tail call i32 @llvm.ctpop.i32(i32 %6694)
  %6696 = trunc i32 %6695 to i8
  %6697 = and i8 %6696, 1
  %6698 = xor i8 %6697, 1
  store i8 %6698, i8* %21, align 1
  %6699 = xor i32 %6690, %6685
  %6700 = xor i32 %6699, %6691
  %6701 = lshr i32 %6700, 4
  %6702 = trunc i32 %6701 to i8
  %6703 = and i8 %6702, 1
  store i8 %6703, i8* %27, align 1
  %6704 = icmp eq i32 %6691, 0
  %6705 = zext i1 %6704 to i8
  store i8 %6705, i8* %30, align 1
  %6706 = lshr i32 %6691, 31
  %6707 = trunc i32 %6706 to i8
  store i8 %6707, i8* %33, align 1
  %6708 = lshr i32 %6685, 31
  %6709 = lshr i32 %6690, 31
  %6710 = xor i32 %6709, %6708
  %6711 = xor i32 %6706, %6708
  %6712 = add nuw nsw i32 %6711, %6710
  %6713 = icmp eq i32 %6712, 2
  %6714 = zext i1 %6713 to i8
  store i8 %6714, i8* %39, align 1
  %6715 = icmp ne i8 %6707, 0
  %6716 = xor i1 %6715, %6713
  %.v412 = select i1 %6716, i64 12, i64 26
  %6717 = add i64 %6682, %.v412
  %6718 = add i64 %6717, 3
  store i64 %6718, i64* %3, align 8
  br i1 %6716, label %block_482f08, label %block_.L_482f16

block_482f08:                                     ; preds = %block_.L_482ef3
  %6719 = load i32, i32* %6684, align 4
  %6720 = zext i32 %6719 to i64
  store i64 %6720, i64* %RAX.i2276, align 8
  %6721 = add i64 %6680, -320
  %6722 = add i64 %6717, 9
  store i64 %6722, i64* %3, align 8
  %6723 = inttoptr i64 %6721 to i32*
  store i32 %6719, i32* %6723, align 4
  %6724 = load i64, i64* %3, align 8
  %6725 = add i64 %6724, 14
  store i64 %6725, i64* %3, align 8
  br label %block_.L_482f1f

block_.L_482f16:                                  ; preds = %block_.L_482ef3
  %6726 = load i32, i32* %6689, align 4
  %6727 = zext i32 %6726 to i64
  store i64 %6727, i64* %RAX.i2276, align 8
  %6728 = add i64 %6680, -320
  %6729 = add i64 %6717, 9
  store i64 %6729, i64* %3, align 8
  %6730 = inttoptr i64 %6728 to i32*
  store i32 %6726, i32* %6730, align 4
  %.pre366 = load i64, i64* %3, align 8
  br label %block_.L_482f1f

block_.L_482f1f:                                  ; preds = %block_.L_482f16, %block_482f08
  %6731 = phi i64 [ %.pre366, %block_.L_482f16 ], [ %6725, %block_482f08 ]
  %6732 = load i64, i64* %RBP.i, align 8
  %6733 = add i64 %6732, -320
  %6734 = add i64 %6731, 6
  store i64 %6734, i64* %3, align 8
  %6735 = inttoptr i64 %6733 to i32*
  %6736 = load i32, i32* %6735, align 4
  %6737 = zext i32 %6736 to i64
  store i64 %6737, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %6738 = sub i32 0, %6736
  %6739 = icmp ne i32 %6736, 0
  %6740 = zext i1 %6739 to i8
  store i8 %6740, i8* %14, align 1
  %6741 = and i32 %6738, 255
  %6742 = tail call i32 @llvm.ctpop.i32(i32 %6741)
  %6743 = trunc i32 %6742 to i8
  %6744 = and i8 %6743, 1
  %6745 = xor i8 %6744, 1
  store i8 %6745, i8* %21, align 1
  %6746 = xor i32 %6736, %6738
  %6747 = lshr i32 %6746, 4
  %6748 = trunc i32 %6747 to i8
  %6749 = and i8 %6748, 1
  store i8 %6749, i8* %27, align 1
  %6750 = icmp eq i32 %6736, 0
  %6751 = zext i1 %6750 to i8
  store i8 %6751, i8* %30, align 1
  %6752 = lshr i32 %6738, 31
  %6753 = trunc i32 %6752 to i8
  store i8 %6753, i8* %33, align 1
  %6754 = lshr i32 %6736, 31
  %6755 = add nuw nsw i32 %6752, %6754
  %6756 = icmp eq i32 %6755, 2
  %6757 = zext i1 %6756 to i8
  store i8 %6757, i8* %39, align 1
  %6758 = icmp ne i8 %6753, 0
  %6759 = xor i1 %6758, %6756
  %6760 = or i1 %6750, %6759
  %.v413 = select i1 %6760, i64 29, i64 16
  %6761 = add i64 %6731, %.v413
  store i64 %6761, i64* %3, align 8
  br i1 %6760, label %block_.L_482f3c, label %block_482f2f

block_482f2f:                                     ; preds = %block_.L_482f1f
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6762 = add i64 %6732, -324
  %6763 = add i64 %6761, 8
  store i64 %6763, i64* %3, align 8
  %6764 = inttoptr i64 %6762 to i32*
  store i32 0, i32* %6764, align 4
  %6765 = load i64, i64* %3, align 8
  %6766 = add i64 %6765, 52
  store i64 %6766, i64* %3, align 8
  br label %block_.L_482f6b

block_.L_482f3c:                                  ; preds = %block_.L_482f1f
  %6767 = add i64 %6732, -72
  %6768 = add i64 %6761, 3
  store i64 %6768, i64* %3, align 8
  %6769 = inttoptr i64 %6767 to i32*
  %6770 = load i32, i32* %6769, align 4
  %6771 = zext i32 %6770 to i64
  store i64 %6771, i64* %RAX.i2276, align 8
  %6772 = add i64 %6732, -64
  %6773 = add i64 %6761, 6
  store i64 %6773, i64* %3, align 8
  %6774 = inttoptr i64 %6772 to i32*
  %6775 = load i32, i32* %6774, align 4
  %6776 = sub i32 %6770, %6775
  %6777 = icmp ult i32 %6770, %6775
  %6778 = zext i1 %6777 to i8
  store i8 %6778, i8* %14, align 1
  %6779 = and i32 %6776, 255
  %6780 = tail call i32 @llvm.ctpop.i32(i32 %6779)
  %6781 = trunc i32 %6780 to i8
  %6782 = and i8 %6781, 1
  %6783 = xor i8 %6782, 1
  store i8 %6783, i8* %21, align 1
  %6784 = xor i32 %6775, %6770
  %6785 = xor i32 %6784, %6776
  %6786 = lshr i32 %6785, 4
  %6787 = trunc i32 %6786 to i8
  %6788 = and i8 %6787, 1
  store i8 %6788, i8* %27, align 1
  %6789 = icmp eq i32 %6776, 0
  %6790 = zext i1 %6789 to i8
  store i8 %6790, i8* %30, align 1
  %6791 = lshr i32 %6776, 31
  %6792 = trunc i32 %6791 to i8
  store i8 %6792, i8* %33, align 1
  %6793 = lshr i32 %6770, 31
  %6794 = lshr i32 %6775, 31
  %6795 = xor i32 %6794, %6793
  %6796 = xor i32 %6791, %6793
  %6797 = add nuw nsw i32 %6796, %6795
  %6798 = icmp eq i32 %6797, 2
  %6799 = zext i1 %6798 to i8
  store i8 %6799, i8* %39, align 1
  %6800 = icmp ne i8 %6792, 0
  %6801 = xor i1 %6800, %6798
  %.v417 = select i1 %6801, i64 12, i64 26
  %6802 = add i64 %6761, %.v417
  %6803 = add i64 %6802, 3
  store i64 %6803, i64* %3, align 8
  br i1 %6801, label %block_482f48, label %block_.L_482f56

block_482f48:                                     ; preds = %block_.L_482f3c
  %6804 = load i32, i32* %6769, align 4
  %6805 = zext i32 %6804 to i64
  store i64 %6805, i64* %RAX.i2276, align 8
  %6806 = add i64 %6732, -328
  %6807 = add i64 %6802, 9
  store i64 %6807, i64* %3, align 8
  %6808 = inttoptr i64 %6806 to i32*
  store i32 %6804, i32* %6808, align 4
  %6809 = load i64, i64* %3, align 8
  %6810 = add i64 %6809, 14
  store i64 %6810, i64* %3, align 8
  br label %block_.L_482f5f

block_.L_482f56:                                  ; preds = %block_.L_482f3c
  %6811 = load i32, i32* %6774, align 4
  %6812 = zext i32 %6811 to i64
  store i64 %6812, i64* %RAX.i2276, align 8
  %6813 = add i64 %6732, -328
  %6814 = add i64 %6802, 9
  store i64 %6814, i64* %3, align 8
  %6815 = inttoptr i64 %6813 to i32*
  store i32 %6811, i32* %6815, align 4
  %.pre367 = load i64, i64* %3, align 8
  br label %block_.L_482f5f

block_.L_482f5f:                                  ; preds = %block_.L_482f56, %block_482f48
  %6816 = phi i64 [ %.pre367, %block_.L_482f56 ], [ %6810, %block_482f48 ]
  %6817 = load i64, i64* %RBP.i, align 8
  %6818 = add i64 %6817, -328
  %6819 = add i64 %6816, 6
  store i64 %6819, i64* %3, align 8
  %6820 = inttoptr i64 %6818 to i32*
  %6821 = load i32, i32* %6820, align 4
  %6822 = zext i32 %6821 to i64
  store i64 %6822, i64* %RAX.i2276, align 8
  %6823 = add i64 %6817, -324
  %6824 = add i64 %6816, 12
  store i64 %6824, i64* %3, align 8
  %6825 = inttoptr i64 %6823 to i32*
  store i32 %6821, i32* %6825, align 4
  %.pre368 = load i64, i64* %3, align 8
  br label %block_.L_482f6b

block_.L_482f6b:                                  ; preds = %block_.L_482f5f, %block_482f2f
  %6826 = phi i64 [ %.pre368, %block_.L_482f5f ], [ %6766, %block_482f2f ]
  %6827 = load i64, i64* %RBP.i, align 8
  %6828 = add i64 %6827, -324
  %6829 = add i64 %6826, 6
  store i64 %6829, i64* %3, align 8
  %6830 = inttoptr i64 %6828 to i32*
  %6831 = load i32, i32* %6830, align 4
  %6832 = zext i32 %6831 to i64
  store i64 %6832, i64* %RAX.i2276, align 8
  %6833 = add i64 %6827, -64
  %6834 = add i64 %6826, 9
  store i64 %6834, i64* %3, align 8
  %6835 = inttoptr i64 %6833 to i32*
  store i32 %6831, i32* %6835, align 4
  %6836 = load i64, i64* %RBP.i, align 8
  %6837 = add i64 %6836, -56
  %6838 = load i64, i64* %3, align 8
  %6839 = add i64 %6838, 7
  store i64 %6839, i64* %3, align 8
  %6840 = inttoptr i64 %6837 to i32*
  store i32 -2, i32* %6840, align 4
  %.pre369 = load i64, i64* %3, align 8
  br label %block_.L_482f7b

block_.L_482f7b:                                  ; preds = %block_.L_483046, %block_.L_482f6b
  %6841 = phi i64 [ %7319, %block_.L_483046 ], [ %.pre369, %block_.L_482f6b ]
  %6842 = load i64, i64* %RBP.i, align 8
  %6843 = add i64 %6842, -56
  %6844 = add i64 %6841, 4
  store i64 %6844, i64* %3, align 8
  %6845 = inttoptr i64 %6843 to i32*
  %6846 = load i32, i32* %6845, align 4
  %6847 = add i32 %6846, -4
  %6848 = icmp ult i32 %6846, 4
  %6849 = zext i1 %6848 to i8
  store i8 %6849, i8* %14, align 1
  %6850 = and i32 %6847, 255
  %6851 = tail call i32 @llvm.ctpop.i32(i32 %6850)
  %6852 = trunc i32 %6851 to i8
  %6853 = and i8 %6852, 1
  %6854 = xor i8 %6853, 1
  store i8 %6854, i8* %21, align 1
  %6855 = xor i32 %6847, %6846
  %6856 = lshr i32 %6855, 4
  %6857 = trunc i32 %6856 to i8
  %6858 = and i8 %6857, 1
  store i8 %6858, i8* %27, align 1
  %6859 = icmp eq i32 %6847, 0
  %6860 = zext i1 %6859 to i8
  store i8 %6860, i8* %30, align 1
  %6861 = lshr i32 %6847, 31
  %6862 = trunc i32 %6861 to i8
  store i8 %6862, i8* %33, align 1
  %6863 = lshr i32 %6846, 31
  %6864 = xor i32 %6861, %6863
  %6865 = add nuw nsw i32 %6864, %6863
  %6866 = icmp eq i32 %6865, 2
  %6867 = zext i1 %6866 to i8
  store i8 %6867, i8* %39, align 1
  %6868 = icmp ne i8 %6862, 0
  %6869 = xor i1 %6868, %6866
  %.v401 = select i1 %6869, i64 10, i64 222
  %6870 = add i64 %6841, %.v401
  store i64 %6870, i64* %3, align 8
  br i1 %6869, label %block_482f85, label %block_.L_483059

block_482f85:                                     ; preds = %block_.L_482f7b
  %6871 = add i64 %6842, -76
  %6872 = add i64 %6870, 3
  store i64 %6872, i64* %3, align 8
  %6873 = inttoptr i64 %6871 to i32*
  %6874 = load i32, i32* %6873, align 4
  %6875 = zext i32 %6874 to i64
  store i64 %6875, i64* %RAX.i2276, align 8
  %6876 = add i64 %6842, -48
  %6877 = add i64 %6870, 6
  store i64 %6877, i64* %3, align 8
  %6878 = inttoptr i64 %6876 to i32*
  %6879 = load i32, i32* %6878, align 4
  %6880 = zext i32 %6879 to i64
  store i64 %6880, i64* %RCX.i2274, align 8
  %6881 = add i64 %6870, 9
  store i64 %6881, i64* %3, align 8
  %6882 = load i32, i32* %6845, align 4
  %6883 = add i32 %6882, %6879
  %6884 = zext i32 %6883 to i64
  store i64 %6884, i64* %RCX.i2274, align 8
  %6885 = icmp ult i32 %6883, %6879
  %6886 = icmp ult i32 %6883, %6882
  %6887 = or i1 %6885, %6886
  %6888 = zext i1 %6887 to i8
  store i8 %6888, i8* %14, align 1
  %6889 = and i32 %6883, 255
  %6890 = tail call i32 @llvm.ctpop.i32(i32 %6889)
  %6891 = trunc i32 %6890 to i8
  %6892 = and i8 %6891, 1
  %6893 = xor i8 %6892, 1
  store i8 %6893, i8* %21, align 1
  %6894 = xor i32 %6882, %6879
  %6895 = xor i32 %6894, %6883
  %6896 = lshr i32 %6895, 4
  %6897 = trunc i32 %6896 to i8
  %6898 = and i8 %6897, 1
  store i8 %6898, i8* %27, align 1
  %6899 = icmp eq i32 %6883, 0
  %6900 = zext i1 %6899 to i8
  store i8 %6900, i8* %30, align 1
  %6901 = lshr i32 %6883, 31
  %6902 = trunc i32 %6901 to i8
  store i8 %6902, i8* %33, align 1
  %6903 = lshr i32 %6879, 31
  %6904 = lshr i32 %6882, 31
  %6905 = xor i32 %6901, %6903
  %6906 = xor i32 %6901, %6904
  %6907 = add nuw nsw i32 %6905, %6906
  %6908 = icmp eq i32 %6907, 2
  %6909 = zext i1 %6908 to i8
  store i8 %6909, i8* %39, align 1
  %6910 = add i64 %6842, -24
  %6911 = add i64 %6870, 12
  store i64 %6911, i64* %3, align 8
  %6912 = inttoptr i64 %6910 to i32*
  %6913 = load i32, i32* %6912, align 4
  %6914 = add i32 %6913, %6883
  %6915 = zext i32 %6914 to i64
  store i64 %6915, i64* %RCX.i2274, align 8
  %6916 = lshr i32 %6914, 31
  %6917 = sub i32 %6874, %6914
  %6918 = icmp ult i32 %6874, %6914
  %6919 = zext i1 %6918 to i8
  store i8 %6919, i8* %14, align 1
  %6920 = and i32 %6917, 255
  %6921 = tail call i32 @llvm.ctpop.i32(i32 %6920)
  %6922 = trunc i32 %6921 to i8
  %6923 = and i8 %6922, 1
  %6924 = xor i8 %6923, 1
  store i8 %6924, i8* %21, align 1
  %6925 = xor i32 %6914, %6874
  %6926 = xor i32 %6925, %6917
  %6927 = lshr i32 %6926, 4
  %6928 = trunc i32 %6927 to i8
  %6929 = and i8 %6928, 1
  store i8 %6929, i8* %27, align 1
  %6930 = icmp eq i32 %6917, 0
  %6931 = zext i1 %6930 to i8
  store i8 %6931, i8* %30, align 1
  %6932 = lshr i32 %6917, 31
  %6933 = trunc i32 %6932 to i8
  store i8 %6933, i8* %33, align 1
  %6934 = lshr i32 %6874, 31
  %6935 = xor i32 %6916, %6934
  %6936 = xor i32 %6932, %6934
  %6937 = add nuw nsw i32 %6936, %6935
  %6938 = icmp eq i32 %6937, 2
  %6939 = zext i1 %6938 to i8
  store i8 %6939, i8* %39, align 1
  %6940 = icmp ne i8 %6933, 0
  %6941 = xor i1 %6940, %6938
  %.v414 = select i1 %6941, i64 20, i64 34
  %6942 = add i64 %6870, %.v414
  store i64 %6942, i64* %3, align 8
  %6943 = load i64, i64* %RBP.i, align 8
  br i1 %6941, label %block_482f99, label %block_.L_482fa7

block_482f99:                                     ; preds = %block_482f85
  %6944 = add i64 %6943, -76
  %6945 = add i64 %6942, 3
  store i64 %6945, i64* %3, align 8
  %6946 = inttoptr i64 %6944 to i32*
  %6947 = load i32, i32* %6946, align 4
  %6948 = zext i32 %6947 to i64
  store i64 %6948, i64* %RAX.i2276, align 8
  %6949 = add i64 %6943, -332
  %6950 = add i64 %6942, 9
  store i64 %6950, i64* %3, align 8
  %6951 = inttoptr i64 %6949 to i32*
  store i32 %6947, i32* %6951, align 4
  %6952 = load i64, i64* %3, align 8
  %6953 = add i64 %6952, 20
  store i64 %6953, i64* %3, align 8
  br label %block_.L_482fb6

block_.L_482fa7:                                  ; preds = %block_482f85
  %6954 = add i64 %6943, -48
  %6955 = add i64 %6942, 3
  store i64 %6955, i64* %3, align 8
  %6956 = inttoptr i64 %6954 to i32*
  %6957 = load i32, i32* %6956, align 4
  %6958 = zext i32 %6957 to i64
  store i64 %6958, i64* %RAX.i2276, align 8
  %6959 = add i64 %6943, -56
  %6960 = add i64 %6942, 6
  store i64 %6960, i64* %3, align 8
  %6961 = inttoptr i64 %6959 to i32*
  %6962 = load i32, i32* %6961, align 4
  %6963 = add i32 %6962, %6957
  %6964 = zext i32 %6963 to i64
  store i64 %6964, i64* %RAX.i2276, align 8
  %6965 = icmp ult i32 %6963, %6957
  %6966 = icmp ult i32 %6963, %6962
  %6967 = or i1 %6965, %6966
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %14, align 1
  %6969 = and i32 %6963, 255
  %6970 = tail call i32 @llvm.ctpop.i32(i32 %6969)
  %6971 = trunc i32 %6970 to i8
  %6972 = and i8 %6971, 1
  %6973 = xor i8 %6972, 1
  store i8 %6973, i8* %21, align 1
  %6974 = xor i32 %6962, %6957
  %6975 = xor i32 %6974, %6963
  %6976 = lshr i32 %6975, 4
  %6977 = trunc i32 %6976 to i8
  %6978 = and i8 %6977, 1
  store i8 %6978, i8* %27, align 1
  %6979 = icmp eq i32 %6963, 0
  %6980 = zext i1 %6979 to i8
  store i8 %6980, i8* %30, align 1
  %6981 = lshr i32 %6963, 31
  %6982 = trunc i32 %6981 to i8
  store i8 %6982, i8* %33, align 1
  %6983 = lshr i32 %6957, 31
  %6984 = lshr i32 %6962, 31
  %6985 = xor i32 %6981, %6983
  %6986 = xor i32 %6981, %6984
  %6987 = add nuw nsw i32 %6985, %6986
  %6988 = icmp eq i32 %6987, 2
  %6989 = zext i1 %6988 to i8
  store i8 %6989, i8* %39, align 1
  %6990 = add i64 %6943, -24
  %6991 = add i64 %6942, 9
  store i64 %6991, i64* %3, align 8
  %6992 = inttoptr i64 %6990 to i32*
  %6993 = load i32, i32* %6992, align 4
  %6994 = add i32 %6993, %6963
  %6995 = zext i32 %6994 to i64
  store i64 %6995, i64* %RAX.i2276, align 8
  %6996 = icmp ult i32 %6994, %6963
  %6997 = icmp ult i32 %6994, %6993
  %6998 = or i1 %6996, %6997
  %6999 = zext i1 %6998 to i8
  store i8 %6999, i8* %14, align 1
  %7000 = and i32 %6994, 255
  %7001 = tail call i32 @llvm.ctpop.i32(i32 %7000)
  %7002 = trunc i32 %7001 to i8
  %7003 = and i8 %7002, 1
  %7004 = xor i8 %7003, 1
  store i8 %7004, i8* %21, align 1
  %7005 = xor i32 %6993, %6963
  %7006 = xor i32 %7005, %6994
  %7007 = lshr i32 %7006, 4
  %7008 = trunc i32 %7007 to i8
  %7009 = and i8 %7008, 1
  store i8 %7009, i8* %27, align 1
  %7010 = icmp eq i32 %6994, 0
  %7011 = zext i1 %7010 to i8
  store i8 %7011, i8* %30, align 1
  %7012 = lshr i32 %6994, 31
  %7013 = trunc i32 %7012 to i8
  store i8 %7013, i8* %33, align 1
  %7014 = lshr i32 %6993, 31
  %7015 = xor i32 %7012, %6981
  %7016 = xor i32 %7012, %7014
  %7017 = add nuw nsw i32 %7015, %7016
  %7018 = icmp eq i32 %7017, 2
  %7019 = zext i1 %7018 to i8
  store i8 %7019, i8* %39, align 1
  %7020 = add i64 %6943, -332
  %7021 = add i64 %6942, 15
  store i64 %7021, i64* %3, align 8
  %7022 = inttoptr i64 %7020 to i32*
  store i32 %6994, i32* %7022, align 4
  %.pre370 = load i64, i64* %3, align 8
  br label %block_.L_482fb6

block_.L_482fb6:                                  ; preds = %block_.L_482fa7, %block_482f99
  %7023 = phi i64 [ %.pre370, %block_.L_482fa7 ], [ %6953, %block_482f99 ]
  %7024 = load i64, i64* %RBP.i, align 8
  %7025 = add i64 %7024, -332
  %7026 = add i64 %7023, 6
  store i64 %7026, i64* %3, align 8
  %7027 = inttoptr i64 %7025 to i32*
  %7028 = load i32, i32* %7027, align 4
  %7029 = zext i32 %7028 to i64
  store i64 %7029, i64* %RAX.i2276, align 8
  store i64 0, i64* %RCX.i2274, align 8
  %7030 = sub i32 0, %7028
  %7031 = icmp ne i32 %7028, 0
  %7032 = zext i1 %7031 to i8
  store i8 %7032, i8* %14, align 1
  %7033 = and i32 %7030, 255
  %7034 = tail call i32 @llvm.ctpop.i32(i32 %7033)
  %7035 = trunc i32 %7034 to i8
  %7036 = and i8 %7035, 1
  %7037 = xor i8 %7036, 1
  store i8 %7037, i8* %21, align 1
  %7038 = xor i32 %7028, %7030
  %7039 = lshr i32 %7038, 4
  %7040 = trunc i32 %7039 to i8
  %7041 = and i8 %7040, 1
  store i8 %7041, i8* %27, align 1
  %7042 = icmp eq i32 %7028, 0
  %7043 = zext i1 %7042 to i8
  store i8 %7043, i8* %30, align 1
  %7044 = lshr i32 %7030, 31
  %7045 = trunc i32 %7044 to i8
  store i8 %7045, i8* %33, align 1
  %7046 = lshr i32 %7028, 31
  %7047 = add nuw nsw i32 %7044, %7046
  %7048 = icmp eq i32 %7047, 2
  %7049 = zext i1 %7048 to i8
  store i8 %7049, i8* %39, align 1
  %7050 = icmp ne i8 %7045, 0
  %7051 = xor i1 %7050, %7048
  %7052 = or i1 %7042, %7051
  %.v415 = select i1 %7052, i64 29, i64 16
  %7053 = add i64 %7023, %.v415
  store i64 %7053, i64* %3, align 8
  br i1 %7052, label %block_.L_482fd3, label %block_482fc6

block_482fc6:                                     ; preds = %block_.L_482fb6
  store i64 0, i64* %RAX.i2276, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %7054 = add i64 %7024, -336
  %7055 = add i64 %7053, 8
  store i64 %7055, i64* %3, align 8
  %7056 = inttoptr i64 %7054 to i32*
  store i32 0, i32* %7056, align 4
  %7057 = load i64, i64* %3, align 8
  %7058 = add i64 %7057, 66
  store i64 %7058, i64* %3, align 8
  br label %block_.L_483010

block_.L_482fd3:                                  ; preds = %block_.L_482fb6
  %7059 = add i64 %7024, -76
  %7060 = add i64 %7053, 3
  store i64 %7060, i64* %3, align 8
  %7061 = inttoptr i64 %7059 to i32*
  %7062 = load i32, i32* %7061, align 4
  %7063 = zext i32 %7062 to i64
  store i64 %7063, i64* %RAX.i2276, align 8
  %7064 = add i64 %7024, -48
  %7065 = add i64 %7053, 6
  store i64 %7065, i64* %3, align 8
  %7066 = inttoptr i64 %7064 to i32*
  %7067 = load i32, i32* %7066, align 4
  %7068 = zext i32 %7067 to i64
  store i64 %7068, i64* %RCX.i2274, align 8
  %7069 = add i64 %7024, -56
  %7070 = add i64 %7053, 9
  store i64 %7070, i64* %3, align 8
  %7071 = inttoptr i64 %7069 to i32*
  %7072 = load i32, i32* %7071, align 4
  %7073 = add i32 %7072, %7067
  %7074 = zext i32 %7073 to i64
  store i64 %7074, i64* %RCX.i2274, align 8
  %7075 = icmp ult i32 %7073, %7067
  %7076 = icmp ult i32 %7073, %7072
  %7077 = or i1 %7075, %7076
  %7078 = zext i1 %7077 to i8
  store i8 %7078, i8* %14, align 1
  %7079 = and i32 %7073, 255
  %7080 = tail call i32 @llvm.ctpop.i32(i32 %7079)
  %7081 = trunc i32 %7080 to i8
  %7082 = and i8 %7081, 1
  %7083 = xor i8 %7082, 1
  store i8 %7083, i8* %21, align 1
  %7084 = xor i32 %7072, %7067
  %7085 = xor i32 %7084, %7073
  %7086 = lshr i32 %7085, 4
  %7087 = trunc i32 %7086 to i8
  %7088 = and i8 %7087, 1
  store i8 %7088, i8* %27, align 1
  %7089 = icmp eq i32 %7073, 0
  %7090 = zext i1 %7089 to i8
  store i8 %7090, i8* %30, align 1
  %7091 = lshr i32 %7073, 31
  %7092 = trunc i32 %7091 to i8
  store i8 %7092, i8* %33, align 1
  %7093 = lshr i32 %7067, 31
  %7094 = lshr i32 %7072, 31
  %7095 = xor i32 %7091, %7093
  %7096 = xor i32 %7091, %7094
  %7097 = add nuw nsw i32 %7095, %7096
  %7098 = icmp eq i32 %7097, 2
  %7099 = zext i1 %7098 to i8
  store i8 %7099, i8* %39, align 1
  %7100 = add i64 %7024, -24
  %7101 = add i64 %7053, 12
  store i64 %7101, i64* %3, align 8
  %7102 = inttoptr i64 %7100 to i32*
  %7103 = load i32, i32* %7102, align 4
  %7104 = add i32 %7103, %7073
  %7105 = zext i32 %7104 to i64
  store i64 %7105, i64* %RCX.i2274, align 8
  %7106 = lshr i32 %7104, 31
  %7107 = sub i32 %7062, %7104
  %7108 = icmp ult i32 %7062, %7104
  %7109 = zext i1 %7108 to i8
  store i8 %7109, i8* %14, align 1
  %7110 = and i32 %7107, 255
  %7111 = tail call i32 @llvm.ctpop.i32(i32 %7110)
  %7112 = trunc i32 %7111 to i8
  %7113 = and i8 %7112, 1
  %7114 = xor i8 %7113, 1
  store i8 %7114, i8* %21, align 1
  %7115 = xor i32 %7104, %7062
  %7116 = xor i32 %7115, %7107
  %7117 = lshr i32 %7116, 4
  %7118 = trunc i32 %7117 to i8
  %7119 = and i8 %7118, 1
  store i8 %7119, i8* %27, align 1
  %7120 = icmp eq i32 %7107, 0
  %7121 = zext i1 %7120 to i8
  store i8 %7121, i8* %30, align 1
  %7122 = lshr i32 %7107, 31
  %7123 = trunc i32 %7122 to i8
  store i8 %7123, i8* %33, align 1
  %7124 = lshr i32 %7062, 31
  %7125 = xor i32 %7106, %7124
  %7126 = xor i32 %7122, %7124
  %7127 = add nuw nsw i32 %7126, %7125
  %7128 = icmp eq i32 %7127, 2
  %7129 = zext i1 %7128 to i8
  store i8 %7129, i8* %39, align 1
  %7130 = icmp ne i8 %7123, 0
  %7131 = xor i1 %7130, %7128
  %.v416 = select i1 %7131, i64 20, i64 34
  %7132 = add i64 %7053, %.v416
  store i64 %7132, i64* %3, align 8
  %7133 = load i64, i64* %RBP.i, align 8
  br i1 %7131, label %block_482fe7, label %block_.L_482ff5

block_482fe7:                                     ; preds = %block_.L_482fd3
  %7134 = add i64 %7133, -76
  %7135 = add i64 %7132, 3
  store i64 %7135, i64* %3, align 8
  %7136 = inttoptr i64 %7134 to i32*
  %7137 = load i32, i32* %7136, align 4
  %7138 = zext i32 %7137 to i64
  store i64 %7138, i64* %RAX.i2276, align 8
  %7139 = add i64 %7133, -340
  %7140 = add i64 %7132, 9
  store i64 %7140, i64* %3, align 8
  %7141 = inttoptr i64 %7139 to i32*
  store i32 %7137, i32* %7141, align 4
  %7142 = load i64, i64* %3, align 8
  %7143 = add i64 %7142, 20
  store i64 %7143, i64* %3, align 8
  br label %block_.L_483004

block_.L_482ff5:                                  ; preds = %block_.L_482fd3
  %7144 = add i64 %7133, -48
  %7145 = add i64 %7132, 3
  store i64 %7145, i64* %3, align 8
  %7146 = inttoptr i64 %7144 to i32*
  %7147 = load i32, i32* %7146, align 4
  %7148 = zext i32 %7147 to i64
  store i64 %7148, i64* %RAX.i2276, align 8
  %7149 = add i64 %7133, -56
  %7150 = add i64 %7132, 6
  store i64 %7150, i64* %3, align 8
  %7151 = inttoptr i64 %7149 to i32*
  %7152 = load i32, i32* %7151, align 4
  %7153 = add i32 %7152, %7147
  %7154 = zext i32 %7153 to i64
  store i64 %7154, i64* %RAX.i2276, align 8
  %7155 = icmp ult i32 %7153, %7147
  %7156 = icmp ult i32 %7153, %7152
  %7157 = or i1 %7155, %7156
  %7158 = zext i1 %7157 to i8
  store i8 %7158, i8* %14, align 1
  %7159 = and i32 %7153, 255
  %7160 = tail call i32 @llvm.ctpop.i32(i32 %7159)
  %7161 = trunc i32 %7160 to i8
  %7162 = and i8 %7161, 1
  %7163 = xor i8 %7162, 1
  store i8 %7163, i8* %21, align 1
  %7164 = xor i32 %7152, %7147
  %7165 = xor i32 %7164, %7153
  %7166 = lshr i32 %7165, 4
  %7167 = trunc i32 %7166 to i8
  %7168 = and i8 %7167, 1
  store i8 %7168, i8* %27, align 1
  %7169 = icmp eq i32 %7153, 0
  %7170 = zext i1 %7169 to i8
  store i8 %7170, i8* %30, align 1
  %7171 = lshr i32 %7153, 31
  %7172 = trunc i32 %7171 to i8
  store i8 %7172, i8* %33, align 1
  %7173 = lshr i32 %7147, 31
  %7174 = lshr i32 %7152, 31
  %7175 = xor i32 %7171, %7173
  %7176 = xor i32 %7171, %7174
  %7177 = add nuw nsw i32 %7175, %7176
  %7178 = icmp eq i32 %7177, 2
  %7179 = zext i1 %7178 to i8
  store i8 %7179, i8* %39, align 1
  %7180 = add i64 %7133, -24
  %7181 = add i64 %7132, 9
  store i64 %7181, i64* %3, align 8
  %7182 = inttoptr i64 %7180 to i32*
  %7183 = load i32, i32* %7182, align 4
  %7184 = add i32 %7183, %7153
  %7185 = zext i32 %7184 to i64
  store i64 %7185, i64* %RAX.i2276, align 8
  %7186 = icmp ult i32 %7184, %7153
  %7187 = icmp ult i32 %7184, %7183
  %7188 = or i1 %7186, %7187
  %7189 = zext i1 %7188 to i8
  store i8 %7189, i8* %14, align 1
  %7190 = and i32 %7184, 255
  %7191 = tail call i32 @llvm.ctpop.i32(i32 %7190)
  %7192 = trunc i32 %7191 to i8
  %7193 = and i8 %7192, 1
  %7194 = xor i8 %7193, 1
  store i8 %7194, i8* %21, align 1
  %7195 = xor i32 %7183, %7153
  %7196 = xor i32 %7195, %7184
  %7197 = lshr i32 %7196, 4
  %7198 = trunc i32 %7197 to i8
  %7199 = and i8 %7198, 1
  store i8 %7199, i8* %27, align 1
  %7200 = icmp eq i32 %7184, 0
  %7201 = zext i1 %7200 to i8
  store i8 %7201, i8* %30, align 1
  %7202 = lshr i32 %7184, 31
  %7203 = trunc i32 %7202 to i8
  store i8 %7203, i8* %33, align 1
  %7204 = lshr i32 %7183, 31
  %7205 = xor i32 %7202, %7171
  %7206 = xor i32 %7202, %7204
  %7207 = add nuw nsw i32 %7205, %7206
  %7208 = icmp eq i32 %7207, 2
  %7209 = zext i1 %7208 to i8
  store i8 %7209, i8* %39, align 1
  %7210 = add i64 %7133, -340
  %7211 = add i64 %7132, 15
  store i64 %7211, i64* %3, align 8
  %7212 = inttoptr i64 %7210 to i32*
  store i32 %7184, i32* %7212, align 4
  %.pre371 = load i64, i64* %3, align 8
  br label %block_.L_483004

block_.L_483004:                                  ; preds = %block_.L_482ff5, %block_482fe7
  %7213 = phi i64 [ %.pre371, %block_.L_482ff5 ], [ %7143, %block_482fe7 ]
  %7214 = load i64, i64* %RBP.i, align 8
  %7215 = add i64 %7214, -340
  %7216 = add i64 %7213, 6
  store i64 %7216, i64* %3, align 8
  %7217 = inttoptr i64 %7215 to i32*
  %7218 = load i32, i32* %7217, align 4
  %7219 = zext i32 %7218 to i64
  store i64 %7219, i64* %RAX.i2276, align 8
  %7220 = add i64 %7214, -336
  %7221 = add i64 %7213, 12
  store i64 %7221, i64* %3, align 8
  %7222 = inttoptr i64 %7220 to i32*
  store i32 %7218, i32* %7222, align 4
  %.pre372 = load i64, i64* %3, align 8
  br label %block_.L_483010

block_.L_483010:                                  ; preds = %block_.L_483004, %block_482fc6
  %7223 = phi i64 [ %.pre372, %block_.L_483004 ], [ %7058, %block_482fc6 ]
  %7224 = load i64, i64* %RBP.i, align 8
  %7225 = add i64 %7224, -336
  %7226 = add i64 %7223, 6
  store i64 %7226, i64* %3, align 8
  %7227 = inttoptr i64 %7225 to i32*
  %7228 = load i32, i32* %7227, align 4
  %7229 = zext i32 %7228 to i64
  store i64 %7229, i64* %RAX.i2276, align 8
  %7230 = add i64 %7224, -68
  %7231 = add i64 %7223, 9
  store i64 %7231, i64* %3, align 8
  %7232 = inttoptr i64 %7230 to i32*
  store i32 %7228, i32* %7232, align 4
  %7233 = load i64, i64* %3, align 8
  %7234 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %7234, i64* %RCX.i2274, align 8
  %7235 = load i64, i64* %RBP.i, align 8
  %7236 = add i64 %7235, -68
  %7237 = add i64 %7233, 12
  store i64 %7237, i64* %3, align 8
  %7238 = inttoptr i64 %7236 to i32*
  %7239 = load i32, i32* %7238, align 4
  %7240 = sext i32 %7239 to i64
  store i64 %7240, i64* %RDX.i2161, align 8
  %7241 = shl nsw i64 %7240, 3
  %7242 = add i64 %7241, %7234
  %7243 = add i64 %7233, 16
  store i64 %7243, i64* %3, align 8
  %7244 = inttoptr i64 %7242 to i64*
  %7245 = load i64, i64* %7244, align 8
  store i64 %7245, i64* %RCX.i2274, align 8
  %7246 = add i64 %7235, -64
  %7247 = add i64 %7233, 20
  store i64 %7247, i64* %3, align 8
  %7248 = inttoptr i64 %7246 to i32*
  %7249 = load i32, i32* %7248, align 4
  %7250 = sext i32 %7249 to i64
  store i64 %7250, i64* %RDX.i2161, align 8
  %7251 = add i64 %7245, %7250
  %7252 = add i64 %7233, 24
  store i64 %7252, i64* %3, align 8
  %7253 = inttoptr i64 %7251 to i8*
  %7254 = load i8, i8* %7253, align 1
  %7255 = zext i8 %7254 to i64
  store i64 %7255, i64* %RAX.i2276, align 8
  %7256 = zext i8 %7254 to i32
  %7257 = add i64 %7235, -80
  %7258 = add i64 %7233, 27
  store i64 %7258, i64* %3, align 8
  %7259 = inttoptr i64 %7257 to i32*
  %7260 = load i32, i32* %7259, align 4
  %7261 = sub i32 %7256, %7260
  %7262 = icmp ult i32 %7256, %7260
  %7263 = zext i1 %7262 to i8
  store i8 %7263, i8* %14, align 1
  %7264 = and i32 %7261, 255
  %7265 = tail call i32 @llvm.ctpop.i32(i32 %7264)
  %7266 = trunc i32 %7265 to i8
  %7267 = and i8 %7266, 1
  %7268 = xor i8 %7267, 1
  store i8 %7268, i8* %21, align 1
  %7269 = xor i32 %7260, %7256
  %7270 = xor i32 %7269, %7261
  %7271 = lshr i32 %7270, 4
  %7272 = trunc i32 %7271 to i8
  %7273 = and i8 %7272, 1
  store i8 %7273, i8* %27, align 1
  %7274 = icmp eq i32 %7261, 0
  %7275 = zext i1 %7274 to i8
  store i8 %7275, i8* %30, align 1
  %7276 = lshr i32 %7261, 31
  %7277 = trunc i32 %7276 to i8
  store i8 %7277, i8* %33, align 1
  %7278 = lshr i32 %7260, 31
  %7279 = add nuw nsw i32 %7276, %7278
  %7280 = icmp eq i32 %7279, 2
  %7281 = zext i1 %7280 to i8
  store i8 %7281, i8* %39, align 1
  %7282 = icmp ne i8 %7277, 0
  %7283 = xor i1 %7282, %7280
  %.v402 = select i1 %7283, i64 33, i64 45
  %7284 = add i64 %7233, %.v402
  store i64 %7284, i64* %3, align 8
  br i1 %7283, label %block_48303a, label %block_.L_483046

block_48303a:                                     ; preds = %block_.L_483010
  %7285 = add i64 %7235, -4
  %7286 = add i64 %7284, 7
  store i64 %7286, i64* %3, align 8
  %7287 = inttoptr i64 %7285 to i32*
  store i32 0, i32* %7287, align 4
  %7288 = load i64, i64* %3, align 8
  %7289 = add i64 %7288, 132
  store i64 %7289, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_483046:                                  ; preds = %block_.L_483010
  %7290 = add i64 %7235, -56
  %7291 = add i64 %7284, 8
  store i64 %7291, i64* %3, align 8
  %7292 = inttoptr i64 %7290 to i32*
  %7293 = load i32, i32* %7292, align 4
  %7294 = add i32 %7293, 1
  %7295 = zext i32 %7294 to i64
  store i64 %7295, i64* %RAX.i2276, align 8
  %7296 = icmp eq i32 %7293, -1
  %7297 = icmp eq i32 %7294, 0
  %7298 = or i1 %7296, %7297
  %7299 = zext i1 %7298 to i8
  store i8 %7299, i8* %14, align 1
  %7300 = and i32 %7294, 255
  %7301 = tail call i32 @llvm.ctpop.i32(i32 %7300)
  %7302 = trunc i32 %7301 to i8
  %7303 = and i8 %7302, 1
  %7304 = xor i8 %7303, 1
  store i8 %7304, i8* %21, align 1
  %7305 = xor i32 %7294, %7293
  %7306 = lshr i32 %7305, 4
  %7307 = trunc i32 %7306 to i8
  %7308 = and i8 %7307, 1
  store i8 %7308, i8* %27, align 1
  %7309 = zext i1 %7297 to i8
  store i8 %7309, i8* %30, align 1
  %7310 = lshr i32 %7294, 31
  %7311 = trunc i32 %7310 to i8
  store i8 %7311, i8* %33, align 1
  %7312 = lshr i32 %7293, 31
  %7313 = xor i32 %7310, %7312
  %7314 = add nuw nsw i32 %7313, %7310
  %7315 = icmp eq i32 %7314, 2
  %7316 = zext i1 %7315 to i8
  store i8 %7316, i8* %39, align 1
  %7317 = add i64 %7284, 14
  store i64 %7317, i64* %3, align 8
  store i32 %7294, i32* %7292, align 4
  %7318 = load i64, i64* %3, align 8
  %7319 = add i64 %7318, -217
  store i64 %7319, i64* %3, align 8
  br label %block_.L_482f7b

block_.L_483059:                                  ; preds = %block_.L_482f7b
  %7320 = add i64 %6842, -28
  %7321 = add i64 %6870, 8
  store i64 %7321, i64* %3, align 8
  %7322 = inttoptr i64 %7320 to i32*
  %7323 = load i32, i32* %7322, align 4
  %7324 = add i32 %7323, 1
  %7325 = zext i32 %7324 to i64
  store i64 %7325, i64* %RAX.i2276, align 8
  %7326 = icmp eq i32 %7323, -1
  %7327 = icmp eq i32 %7324, 0
  %7328 = or i1 %7326, %7327
  %7329 = zext i1 %7328 to i8
  store i8 %7329, i8* %14, align 1
  %7330 = and i32 %7324, 255
  %7331 = tail call i32 @llvm.ctpop.i32(i32 %7330)
  %7332 = trunc i32 %7331 to i8
  %7333 = and i8 %7332, 1
  %7334 = xor i8 %7333, 1
  store i8 %7334, i8* %21, align 1
  %7335 = xor i32 %7324, %7323
  %7336 = lshr i32 %7335, 4
  %7337 = trunc i32 %7336 to i8
  %7338 = and i8 %7337, 1
  store i8 %7338, i8* %27, align 1
  %7339 = zext i1 %7327 to i8
  store i8 %7339, i8* %30, align 1
  %7340 = lshr i32 %7324, 31
  %7341 = trunc i32 %7340 to i8
  store i8 %7341, i8* %33, align 1
  %7342 = lshr i32 %7323, 31
  %7343 = xor i32 %7340, %7342
  %7344 = add nuw nsw i32 %7343, %7340
  %7345 = icmp eq i32 %7344, 2
  %7346 = zext i1 %7345 to i8
  store i8 %7346, i8* %39, align 1
  %7347 = add i64 %6870, 14
  store i64 %7347, i64* %3, align 8
  store i32 %7324, i32* %7322, align 4
  %7348 = load i64, i64* %3, align 8
  %7349 = add i64 %7348, -824
  store i64 %7349, i64* %3, align 8
  br label %block_.L_482d2f

block_.L_48306c:                                  ; preds = %block_.L_482d2f
  %7350 = add i64 %5807, -24
  %7351 = add i64 %5835, 8
  store i64 %7351, i64* %3, align 8
  %7352 = inttoptr i64 %7350 to i32*
  %7353 = load i32, i32* %7352, align 4
  %7354 = add i32 %7353, 1
  %7355 = zext i32 %7354 to i64
  store i64 %7355, i64* %RAX.i2276, align 8
  %7356 = icmp eq i32 %7353, -1
  %7357 = icmp eq i32 %7354, 0
  %7358 = or i1 %7356, %7357
  %7359 = zext i1 %7358 to i8
  store i8 %7359, i8* %14, align 1
  %7360 = and i32 %7354, 255
  %7361 = tail call i32 @llvm.ctpop.i32(i32 %7360)
  %7362 = trunc i32 %7361 to i8
  %7363 = and i8 %7362, 1
  %7364 = xor i8 %7363, 1
  store i8 %7364, i8* %21, align 1
  %7365 = xor i32 %7354, %7353
  %7366 = lshr i32 %7365, 4
  %7367 = trunc i32 %7366 to i8
  %7368 = and i8 %7367, 1
  store i8 %7368, i8* %27, align 1
  %7369 = zext i1 %7357 to i8
  store i8 %7369, i8* %30, align 1
  %7370 = lshr i32 %7354, 31
  %7371 = trunc i32 %7370 to i8
  store i8 %7371, i8* %33, align 1
  %7372 = lshr i32 %7353, 31
  %7373 = xor i32 %7370, %7372
  %7374 = add nuw nsw i32 %7373, %7370
  %7375 = icmp eq i32 %7374, 2
  %7376 = zext i1 %7375 to i8
  store i8 %7376, i8* %39, align 1
  %7377 = add i64 %5835, 14
  store i64 %7377, i64* %3, align 8
  store i32 %7354, i32* %7352, align 4
  %7378 = load i64, i64* %3, align 8
  %7379 = add i64 %7378, -860
  store i64 %7379, i64* %3, align 8
  br label %block_.L_482d1e

block_.L_48307f:                                  ; preds = %block_.L_482d1e
  %7380 = add i64 %5802, 5
  store i64 %7380, i64* %3, align 8
  br label %block_.L_483084

block_.L_483084:                                  ; preds = %block_.L_48307f, %block_.L_482d12
  %7381 = phi i64 [ %4741, %block_.L_482d12 ], [ %5774, %block_.L_48307f ]
  %storemerge100 = phi i64 [ %5772, %block_.L_482d12 ], [ %7380, %block_.L_48307f ]
  %7382 = add i64 %storemerge100, 5
  store i64 %7382, i64* %3, align 8
  br label %block_.L_483089

block_.L_483089:                                  ; preds = %block_.L_483084, %block_.L_482b1e
  %7383 = phi i64 [ %3681, %block_.L_482b1e ], [ %7381, %block_.L_483084 ]
  %storemerge99 = phi i64 [ %4712, %block_.L_482b1e ], [ %7382, %block_.L_483084 ]
  %7384 = add i64 %storemerge99, 5
  store i64 %7384, i64* %3, align 8
  br label %block_.L_48308e

block_.L_48308e:                                  ; preds = %block_.L_483089, %block_.L_48292a
  %7385 = phi i64 [ %2822, %block_.L_48292a ], [ %7383, %block_.L_483089 ]
  %storemerge98 = phi i64 [ %3652, %block_.L_48292a ], [ %7384, %block_.L_483089 ]
  %7386 = add i64 %storemerge98, 5
  store i64 %7386, i64* %3, align 8
  br label %block_.L_483093

block_.L_483093:                                  ; preds = %block_.L_48308e, %block_.L_482766
  %7387 = phi i64 [ %1971, %block_.L_482766 ], [ %7385, %block_.L_48308e ]
  %storemerge97 = phi i64 [ %2803, %block_.L_482766 ], [ %7386, %block_.L_48308e ]
  %7388 = add i64 %storemerge97, 5
  store i64 %7388, i64* %3, align 8
  br label %block_.L_483098

block_.L_483098:                                  ; preds = %block_.L_483093, %block_.L_4825a2
  %7389 = phi i64 [ %1299, %block_.L_4825a2 ], [ %7387, %block_.L_483093 ]
  %storemerge = phi i64 [ %1953, %block_.L_4825a2 ], [ %7388, %block_.L_483093 ]
  %7390 = add i64 %7389, -36
  %7391 = add i64 %storemerge, 8
  store i64 %7391, i64* %3, align 8
  %7392 = inttoptr i64 %7390 to i32*
  %7393 = load i32, i32* %7392, align 4
  %7394 = add i32 %7393, 1
  %7395 = zext i32 %7394 to i64
  store i64 %7395, i64* %RAX.i2276, align 8
  %7396 = icmp eq i32 %7393, -1
  %7397 = icmp eq i32 %7394, 0
  %7398 = or i1 %7396, %7397
  %7399 = zext i1 %7398 to i8
  store i8 %7399, i8* %14, align 1
  %7400 = and i32 %7394, 255
  %7401 = tail call i32 @llvm.ctpop.i32(i32 %7400)
  %7402 = trunc i32 %7401 to i8
  %7403 = and i8 %7402, 1
  %7404 = xor i8 %7403, 1
  store i8 %7404, i8* %21, align 1
  %7405 = xor i32 %7394, %7393
  %7406 = lshr i32 %7405, 4
  %7407 = trunc i32 %7406 to i8
  %7408 = and i8 %7407, 1
  store i8 %7408, i8* %27, align 1
  %7409 = zext i1 %7397 to i8
  store i8 %7409, i8* %30, align 1
  %7410 = lshr i32 %7394, 31
  %7411 = trunc i32 %7410 to i8
  store i8 %7411, i8* %33, align 1
  %7412 = lshr i32 %7393, 31
  %7413 = xor i32 %7410, %7412
  %7414 = add nuw nsw i32 %7413, %7410
  %7415 = icmp eq i32 %7414, 2
  %7416 = zext i1 %7415 to i8
  store i8 %7416, i8* %39, align 1
  %7417 = add i64 %storemerge, 14
  store i64 %7417, i64* %3, align 8
  store i32 %7394, i32* %7392, align 4
  %7418 = load i64, i64* %3, align 8
  %7419 = add i64 %7418, -3503
  store i64 %7419, i64* %3, align 8
  br label %block_.L_4822f7

block_.L_4830ab:                                  ; preds = %block_.L_4822f7
  %7420 = add i64 %802, -32
  %7421 = add i64 %838, 8
  store i64 %7421, i64* %3, align 8
  %7422 = inttoptr i64 %7420 to i32*
  %7423 = load i32, i32* %7422, align 4
  %7424 = add i32 %7423, 1
  %7425 = zext i32 %7424 to i64
  store i64 %7425, i64* %RAX.i2276, align 8
  %7426 = icmp eq i32 %7423, -1
  %7427 = icmp eq i32 %7424, 0
  %7428 = or i1 %7426, %7427
  %7429 = zext i1 %7428 to i8
  store i8 %7429, i8* %14, align 1
  %7430 = and i32 %7424, 255
  %7431 = tail call i32 @llvm.ctpop.i32(i32 %7430)
  %7432 = trunc i32 %7431 to i8
  %7433 = and i8 %7432, 1
  %7434 = xor i8 %7433, 1
  store i8 %7434, i8* %21, align 1
  %7435 = xor i32 %7424, %7423
  %7436 = lshr i32 %7435, 4
  %7437 = trunc i32 %7436 to i8
  %7438 = and i8 %7437, 1
  store i8 %7438, i8* %27, align 1
  %7439 = zext i1 %7427 to i8
  store i8 %7439, i8* %30, align 1
  %7440 = lshr i32 %7424, 31
  %7441 = trunc i32 %7440 to i8
  store i8 %7441, i8* %33, align 1
  %7442 = lshr i32 %7423, 31
  %7443 = xor i32 %7440, %7442
  %7444 = add nuw nsw i32 %7443, %7440
  %7445 = icmp eq i32 %7444, 2
  %7446 = zext i1 %7445 to i8
  store i8 %7446, i8* %39, align 1
  %7447 = add i64 %838, 14
  store i64 %7447, i64* %3, align 8
  store i32 %7424, i32* %7422, align 4
  %7448 = load i64, i64* %3, align 8
  %7449 = add i64 %7448, -3540
  store i64 %7449, i64* %3, align 8
  br label %block_.L_4822e5

block_.L_4830be:                                  ; preds = %block_.L_4822e5
  %7450 = add i64 %756, -4
  %7451 = add i64 %792, 7
  store i64 %7451, i64* %3, align 8
  %7452 = inttoptr i64 %7450 to i32*
  store i32 1, i32* %7452, align 4
  %.pre376 = load i64, i64* %3, align 8
  br label %block_.L_4830c5

block_.L_4830c5:                                  ; preds = %block_.L_4830be, %block_48303a, %block_482eaa, %block_482cba, %block_482ac6, %block_4828e5, %block_482721, %block_482570
  %7453 = phi i64 [ %.pre376, %block_.L_4830be ], [ %7289, %block_48303a ], [ %6547, %block_482eaa ], [ %5651, %block_482cba ], [ %4591, %block_482ac6 ], [ %3561, %block_4828e5 ], [ %2712, %block_482721 ], [ %1892, %block_482570 ]
  %MEMORY.78 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4830be ], [ %1261, %block_48303a ], [ %1261, %block_482eaa ], [ %1261, %block_482cba ], [ %1261, %block_482ac6 ], [ %1261, %block_4828e5 ], [ %1261, %block_482721 ], [ %1261, %block_482570 ]
  %7454 = load i64, i64* %RBP.i, align 8
  %7455 = add i64 %7454, -4
  %7456 = add i64 %7453, 3
  store i64 %7456, i64* %3, align 8
  %7457 = inttoptr i64 %7455 to i32*
  %7458 = load i32, i32* %7457, align 4
  %7459 = zext i32 %7458 to i64
  store i64 %7459, i64* %RAX.i2276, align 8
  %7460 = load i64, i64* %6, align 8
  %7461 = add i64 %7460, 216
  store i64 %7461, i64* %6, align 8
  %7462 = icmp ugt i64 %7460, -217
  %7463 = zext i1 %7462 to i8
  store i8 %7463, i8* %14, align 1
  %7464 = trunc i64 %7461 to i32
  %7465 = and i32 %7464, 255
  %7466 = tail call i32 @llvm.ctpop.i32(i32 %7465)
  %7467 = trunc i32 %7466 to i8
  %7468 = and i8 %7467, 1
  %7469 = xor i8 %7468, 1
  store i8 %7469, i8* %21, align 1
  %7470 = xor i64 %7460, 16
  %7471 = xor i64 %7470, %7461
  %7472 = lshr i64 %7471, 4
  %7473 = trunc i64 %7472 to i8
  %7474 = and i8 %7473, 1
  store i8 %7474, i8* %27, align 1
  %7475 = icmp eq i64 %7461, 0
  %7476 = zext i1 %7475 to i8
  store i8 %7476, i8* %30, align 1
  %7477 = lshr i64 %7461, 63
  %7478 = trunc i64 %7477 to i8
  store i8 %7478, i8* %33, align 1
  %7479 = lshr i64 %7460, 63
  %7480 = xor i64 %7477, %7479
  %7481 = add nuw nsw i64 %7480, %7477
  %7482 = icmp eq i64 %7481, 2
  %7483 = zext i1 %7482 to i8
  store i8 %7483, i8* %39, align 1
  %7484 = add i64 %7453, 11
  store i64 %7484, i64* %3, align 8
  %7485 = add i64 %7460, 224
  %7486 = inttoptr i64 %7461 to i64*
  %7487 = load i64, i64* %7486, align 8
  store i64 %7487, i64* %RBP.i, align 8
  store i64 %7485, i64* %6, align 8
  %7488 = add i64 %7453, 12
  store i64 %7488, i64* %3, align 8
  %7489 = inttoptr i64 %7485 to i64*
  %7490 = load i64, i64* %7489, align 8
  store i64 %7490, i64* %3, align 8
  %7491 = add i64 %7460, 232
  store i64 %7491, i64* %6, align 8
  ret %struct.Memory* %MEMORY.78
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
define %struct.Memory* @routine_subq__0xd8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -216
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 216
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x34__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jl_.L_4821da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482202(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_4821f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4821fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x71__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -113
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482227(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x71__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -113
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x71__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -113
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ECX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_482269(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482291(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_482281(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48228b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x85__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -133
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4822bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x85__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -133
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x85__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -133
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
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
define %struct.Memory* @routine_jge_.L_4830be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
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
define %struct.Memory* @routine_jge_.L_4830ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x118f8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71928
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movswl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_andl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 3
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
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4825a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_4825a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_48258f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x723650___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482459(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482465(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_482482(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4824b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4824a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4824ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ESI, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4824f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4824ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_jle_.L_48251c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482553(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48253b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rdx__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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
define %struct.Memory* @routine_jge_.L_48257c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4830c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482581(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482421(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482594(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482410(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483098(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48276b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482766(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482753(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4825f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4825fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_jle_.L_48261b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482652(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48263a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movl__0xfffffffe__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_482740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48268e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48269d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
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
define %struct.Memory* @routine_jle_.L_4826ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4826f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4826dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4826eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
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
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movq_0x723650___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x723650_type* @G_0x723650 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rcx__rdx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48272d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482732(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_482662(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482745(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4825c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482758(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4825b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483093(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48292f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48292a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4827b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4827c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_jle_.L_4827df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482816(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4827fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48280a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_movl__0xfffffffe__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jge_.L_482904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482852(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482861(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_jle_.L_48287e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4828bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4828a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4828af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
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
define %struct.Memory* @routine_movl_MINUS0xe8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_jge_.L_4828f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4828f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_482826(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482909(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48278d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48291c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48277c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48308e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_482b23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482b1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482b0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482af8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48298e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48299d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_jle_.L_4829ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4829f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4829dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4829eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
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
define %struct.Memory* @routine_jge_.L_482ae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482a33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482a42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xfc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
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
define %struct.Memory* @routine_jle_.L_482a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482a9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482a81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482a90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl_MINUS0x100__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_jge_.L_482ad2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482ad7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482a07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482aea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482962(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482951(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482940(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_482d17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482d12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482b82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482b91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
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
define %struct.Memory* @routine_jle_.L_482bae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482beb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482bd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482bdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
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
define %struct.Memory* @routine_jge_.L_482cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482c27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482c36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x114__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
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
define %struct.Memory* @routine_jle_.L_482c53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482c90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482c75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482c84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
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
define %struct.Memory* @routine_movl_MINUS0x118__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
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
define %struct.Memory* @routine_jge_.L_482cc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482ccb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482bfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482cde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482b56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482cf1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482b45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482b34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483084(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48307f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48306c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_482d54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482d86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482d8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x124__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
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
define %struct.Memory* @routine_jle_.L_482dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -296
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482ddb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482dc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482dcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_482ec9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482e17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482e26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_482e43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482e80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482e65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482e74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x138__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movl_MINUS0x134__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_jge_.L_482eb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482ebb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482deb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_482ee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482ef3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_jge_.L_482f16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482f1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x140__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
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
define %struct.Memory* @routine_jle_.L_482f3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482f6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482f56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482f5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_483059(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_482fa7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_482fb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_482fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_483010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_482ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483004(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x154__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -340
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
define %struct.Memory* @routine_jge_.L_483046(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48304b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482f7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48305e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482d2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_483071(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_482d1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48309d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4822f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4830b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4822e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 216
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -217
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
