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
define %struct.Memory* @add_eyevalues(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -128
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 120
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
  %RDI.i2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i2709, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i2706, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2703 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i2703, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RDX.i2703, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2697 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = add i64 %59, 7
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %62 to i8*
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  store i64 %67, i64* %RAX.i2697, align 8
  %68 = add i64 %57, -16
  %69 = add i64 %59, 11
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RDX.i2703, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2691 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %73 = add i64 %71, 2
  %74 = add i64 %59, 15
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i8*
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  store i64 %77, i64* %RCX.i2691, align 8
  %ECX.i2688 = bitcast %union.anon* %72 to i32*
  %78 = zext i8 %76 to i32
  %79 = zext i8 %66 to i32
  %80 = add nuw nsw i32 %78, %79
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RAX.i2697, align 8
  store i8 0, i8* %14, align 1
  %82 = and i32 %80, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %21, align 1
  %87 = xor i8 %76, %66
  %88 = zext i8 %87 to i32
  %89 = xor i32 %88, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %27, align 1
  %93 = icmp eq i32 %80, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %95 = add i64 %59, 21
  store i64 %95, i64* %3, align 8
  %96 = load i64, i64* %61, align 8
  store i64 %96, i64* %RDX.i2703, align 8
  %97 = add i64 %96, 2
  %98 = add i64 %59, 25
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i8*
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i64
  store i64 %101, i64* %RCX.i2691, align 8
  %102 = add i64 %59, 29
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %70, align 8
  store i64 %103, i64* %RDX.i2703, align 8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %105 = add i64 %59, 33
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i8*
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  store i64 %108, i64* %104, align 8
  %109 = zext i8 %107 to i32
  %110 = zext i8 %100 to i32
  %111 = add nuw nsw i32 %109, %110
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RCX.i2691, align 8
  %EAX.i2670 = bitcast %union.anon* %63 to i32*
  %113 = sub nsw i32 %80, %111
  %114 = icmp ult i32 %80, %111
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %14, align 1
  %116 = and i32 %113, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  %121 = xor i32 %111, %80
  %122 = xor i32 %121, %113
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %27, align 1
  %126 = icmp eq i32 %113, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %30, align 1
  %128 = lshr i32 %113, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %130 = icmp ne i8 %129, 0
  %.v100 = select i1 %130, i64 44, i64 69
  %131 = add i64 %59, %.v100
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -8
  %134 = add i64 %131, 4
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RAX.i2697, align 8
  br i1 %130, label %block_43cc50, label %block_.L_43cc69

block_43cc50:                                     ; preds = %entry
  %137 = add i64 %131, 7
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i8*
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i64
  store i64 %140, i64* %RCX.i2691, align 8
  %141 = add i64 %132, -16
  %142 = add i64 %131, 11
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RAX.i2697, align 8
  %145 = add i64 %144, 2
  %146 = add i64 %131, 15
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i8*
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i64
  store i64 %149, i64* %RDX.i2703, align 8
  %150 = zext i8 %148 to i32
  %151 = zext i8 %139 to i32
  %152 = add nuw nsw i32 %150, %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %154 = and i32 %152, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  %159 = xor i8 %148, %139
  %160 = zext i8 %159 to i32
  %161 = xor i32 %160, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %27, align 1
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %167 = add i64 %132, -36
  %168 = add i64 %131, 20
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %152, i32* %169, align 4
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 25
  store i64 %171, i64* %3, align 8
  br label %block_.L_43cc7d

block_.L_43cc69:                                  ; preds = %entry
  %172 = add i64 %136, 2
  %173 = add i64 %131, 8
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i8*
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  store i64 %176, i64* %RCX.i2691, align 8
  %177 = add i64 %132, -16
  %178 = add i64 %131, 12
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RAX.i2697, align 8
  %181 = add i64 %131, 15
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i8*
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i64
  store i64 %184, i64* %RDX.i2703, align 8
  %185 = zext i8 %183 to i32
  %186 = zext i8 %175 to i32
  %187 = add nuw nsw i32 %185, %186
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %189 = and i32 %187, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %21, align 1
  %194 = xor i8 %183, %175
  %195 = zext i8 %194 to i32
  %196 = xor i32 %195, %187
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %27, align 1
  %200 = icmp eq i32 %187, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %202 = add i64 %132, -36
  %203 = add i64 %131, 20
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  store i32 %187, i32* %204, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43cc7d

block_.L_43cc7d:                                  ; preds = %block_.L_43cc69, %block_43cc50
  %205 = phi i64 [ %.pre, %block_.L_43cc69 ], [ %171, %block_43cc50 ]
  %EDX.i2596.pre-phi = bitcast %union.anon* %50 to i32*
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -36
  %208 = add i64 %205, 3
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i2697, align 8
  %212 = add i64 %206, -8
  %213 = add i64 %205, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RCX.i2691, align 8
  %216 = add i64 %205, 10
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i8*
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i64
  store i64 %219, i64* %RDX.i2703, align 8
  %220 = add i64 %206, -16
  %221 = add i64 %205, 14
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RCX.i2691, align 8
  %224 = add i64 %223, 1
  %225 = add i64 %205, 18
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i8*
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i64
  store i64 %228, i64* %RSI.i2706, align 8
  %229 = zext i8 %227 to i32
  %230 = zext i8 %218 to i32
  %231 = add nuw nsw i32 %229, %230
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %233 = and i32 %231, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  %238 = xor i8 %227, %218
  %239 = zext i8 %238 to i32
  %240 = xor i32 %239, %231
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %27, align 1
  %244 = icmp eq i32 %231, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %246 = add i64 %205, 24
  store i64 %246, i64* %3, align 8
  %247 = load i64, i64* %214, align 8
  store i64 %247, i64* %RCX.i2691, align 8
  %248 = add i64 %247, 1
  %249 = add i64 %205, 28
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i8*
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i64
  store i64 %252, i64* %RSI.i2706, align 8
  %253 = add i64 %205, 32
  store i64 %253, i64* %3, align 8
  %254 = load i64, i64* %222, align 8
  store i64 %254, i64* %RCX.i2691, align 8
  %255 = add i64 %205, 35
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i8*
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i64
  store i64 %258, i64* %RDI.i2709, align 8
  %259 = zext i8 %257 to i32
  %260 = zext i8 %251 to i32
  %261 = add nuw nsw i32 %259, %260
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RSI.i2706, align 8
  %263 = sub nsw i32 %231, %261
  %264 = icmp ult i32 %231, %261
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %14, align 1
  %266 = and i32 %263, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %21, align 1
  %271 = xor i32 %261, %231
  %272 = xor i32 %271, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %27, align 1
  %276 = icmp eq i32 %263, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %30, align 1
  %278 = lshr i32 %263, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -40
  %282 = load i32, i32* %EAX.i2670, align 4
  %283 = add i64 %205, 42
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %281 to i32*
  store i32 %282, i32* %284, align 4
  %285 = load i64, i64* %3, align 8
  %286 = load i8, i8* %33, align 1
  %287 = icmp ne i8 %286, 0
  %288 = load i8, i8* %39, align 1
  %289 = icmp ne i8 %288, 0
  %290 = xor i1 %287, %289
  %.v121 = select i1 %290, i64 6, i64 31
  %291 = add i64 %285, %.v121
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -8
  %294 = add i64 %291, 4
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RAX.i2697, align 8
  br i1 %290, label %block_43ccad, label %block_.L_43ccc6

block_43ccad:                                     ; preds = %block_.L_43cc7d
  %297 = add i64 %296, 1
  %298 = add i64 %291, 8
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i8*
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i64
  store i64 %301, i64* %RCX.i2691, align 8
  %302 = add i64 %292, -16
  %303 = add i64 %291, 12
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RAX.i2697, align 8
  %306 = add i64 %291, 15
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i8*
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i64
  store i64 %309, i64* %RDX.i2703, align 8
  %310 = zext i8 %308 to i32
  %311 = zext i8 %300 to i32
  %312 = add nuw nsw i32 %310, %311
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %314 = and i32 %312, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %21, align 1
  %319 = xor i8 %308, %300
  %320 = zext i8 %319 to i32
  %321 = xor i32 %320, %312
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %27, align 1
  %325 = icmp eq i32 %312, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %327 = add i64 %292, -44
  %328 = add i64 %291, 20
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  store i32 %312, i32* %329, align 4
  %330 = load i64, i64* %3, align 8
  %331 = add i64 %330, 25
  store i64 %331, i64* %3, align 8
  br label %block_.L_43ccda

block_.L_43ccc6:                                  ; preds = %block_.L_43cc7d
  %332 = add i64 %291, 7
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %296 to i8*
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i64
  store i64 %335, i64* %RCX.i2691, align 8
  %336 = add i64 %292, -16
  %337 = add i64 %291, 11
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RAX.i2697, align 8
  %340 = add i64 %339, 1
  %341 = add i64 %291, 15
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i8*
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i64
  store i64 %344, i64* %RDX.i2703, align 8
  %345 = zext i8 %343 to i32
  %346 = zext i8 %334 to i32
  %347 = add nuw nsw i32 %345, %346
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %349 = and i32 %347, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %21, align 1
  %354 = xor i8 %343, %334
  %355 = zext i8 %354 to i32
  %356 = xor i32 %355, %347
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %27, align 1
  %360 = icmp eq i32 %347, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %362 = add i64 %292, -44
  %363 = add i64 %291, 20
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  store i32 %347, i32* %364, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_43ccda

block_.L_43ccda:                                  ; preds = %block_.L_43ccc6, %block_43ccad
  %365 = phi i64 [ %.pre45, %block_.L_43ccc6 ], [ %331, %block_43ccad ]
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -44
  %368 = add i64 %365, 3
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX.i2697, align 8
  %372 = add i64 %366, -40
  %373 = add i64 %365, 6
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RCX.i2691, align 8
  %377 = sub i32 %375, %370
  %378 = icmp ult i32 %375, %370
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  %385 = xor i32 %370, %375
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %27, align 1
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %30, align 1
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %33, align 1
  %394 = lshr i32 %375, 31
  %395 = lshr i32 %370, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %392, %394
  %398 = add nuw nsw i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %39, align 1
  %401 = icmp ne i8 %393, 0
  %402 = xor i1 %401, %399
  %.v = select i1 %402, i64 14, i64 112
  %403 = add i64 %365, %.v
  %404 = add i64 %366, -8
  %405 = add i64 %403, 4
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i2697, align 8
  %408 = add i64 %403, 7
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i8*
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i64
  store i64 %411, i64* %RCX.i2691, align 8
  %412 = add i64 %366, -16
  %413 = add i64 %403, 11
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX.i2697, align 8
  br i1 %402, label %block_43cce8, label %block_.L_43cd4a

block_43cce8:                                     ; preds = %block_.L_43ccda
  %416 = add i64 %415, 2
  %417 = add i64 %403, 15
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i8*
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i64
  store i64 %420, i64* %RDX.i2703, align 8
  %421 = zext i8 %419 to i32
  %422 = zext i8 %410 to i32
  %423 = add nuw nsw i32 %421, %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %425 = and i32 %423, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i8 %419, %410
  %431 = zext i8 %430 to i32
  %432 = xor i32 %431, %423
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %27, align 1
  %436 = icmp eq i32 %423, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %438 = add i64 %403, 21
  store i64 %438, i64* %3, align 8
  %439 = load i64, i64* %406, align 8
  store i64 %439, i64* %RAX.i2697, align 8
  %440 = add i64 %439, 2
  %441 = add i64 %403, 25
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i8*
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i64
  store i64 %444, i64* %RDX.i2703, align 8
  %445 = add i64 %403, 29
  store i64 %445, i64* %3, align 8
  %446 = load i64, i64* %414, align 8
  store i64 %446, i64* %RAX.i2697, align 8
  %447 = add i64 %403, 32
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i8*
  %449 = load i8, i8* %448, align 1
  %450 = zext i8 %449 to i64
  store i64 %450, i64* %RSI.i2706, align 8
  %451 = zext i8 %449 to i32
  %452 = zext i8 %443 to i32
  %453 = add nuw nsw i32 %451, %452
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RDX.i2703, align 8
  %455 = sub nsw i32 %423, %453
  %456 = icmp ult i32 %423, %453
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = and i32 %455, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %21, align 1
  %463 = xor i32 %453, %423
  %464 = xor i32 %463, %455
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %27, align 1
  %468 = icmp eq i32 %455, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %30, align 1
  %470 = lshr i32 %455, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %472 = icmp ne i8 %471, 0
  %.v120 = select i1 %472, i64 42, i64 67
  %473 = add i64 %403, %.v120
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -8
  %476 = add i64 %473, 4
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %RAX.i2697, align 8
  br i1 %472, label %block_43cd12, label %block_.L_43cd2b

block_43cd12:                                     ; preds = %block_43cce8
  %479 = add i64 %473, 7
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i8*
  %481 = load i8, i8* %480, align 1
  %482 = zext i8 %481 to i64
  store i64 %482, i64* %RCX.i2691, align 8
  %483 = add i64 %474, -16
  %484 = add i64 %473, 11
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RAX.i2697, align 8
  %487 = add i64 %486, 2
  %488 = add i64 %473, 15
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i8*
  %490 = load i8, i8* %489, align 1
  %491 = zext i8 %490 to i64
  store i64 %491, i64* %RDX.i2703, align 8
  %492 = zext i8 %490 to i32
  %493 = zext i8 %481 to i32
  %494 = add nuw nsw i32 %492, %493
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %496 = and i32 %494, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i8 %490, %481
  %502 = zext i8 %501 to i32
  %503 = xor i32 %502, %494
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %27, align 1
  %507 = icmp eq i32 %494, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %509 = add i64 %474, -48
  %510 = add i64 %473, 20
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  store i32 %494, i32* %511, align 4
  %512 = load i64, i64* %3, align 8
  %513 = add i64 %512, 25
  store i64 %513, i64* %3, align 8
  br label %block_.L_43cd3f

block_.L_43cd2b:                                  ; preds = %block_43cce8
  %514 = add i64 %478, 2
  %515 = add i64 %473, 8
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i8*
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i64
  store i64 %518, i64* %RCX.i2691, align 8
  %519 = add i64 %474, -16
  %520 = add i64 %473, 12
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RAX.i2697, align 8
  %523 = add i64 %473, 15
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i8*
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i64
  store i64 %526, i64* %RDX.i2703, align 8
  %527 = zext i8 %525 to i32
  %528 = zext i8 %517 to i32
  %529 = add nuw nsw i32 %527, %528
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %531 = and i32 %529, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %21, align 1
  %536 = xor i8 %525, %517
  %537 = zext i8 %536 to i32
  %538 = xor i32 %537, %529
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  store i8 %541, i8* %27, align 1
  %542 = icmp eq i32 %529, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %544 = add i64 %474, -48
  %545 = add i64 %473, 20
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  store i32 %529, i32* %546, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_43cd3f

block_.L_43cd3f:                                  ; preds = %block_.L_43cd2b, %block_43cd12
  %547 = phi i64 [ %.pre47, %block_.L_43cd2b ], [ %513, %block_43cd12 ]
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -48
  %550 = add i64 %547, 3
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = zext i32 %552 to i64
  store i64 %553, i64* %RAX.i2697, align 8
  %554 = add i64 %548, -52
  %555 = add i64 %547, 6
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  store i32 %552, i32* %556, align 4
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 98
  store i64 %558, i64* %3, align 8
  br label %block_.L_43cda7

block_.L_43cd4a:                                  ; preds = %block_.L_43ccda
  %559 = add i64 %415, 1
  %560 = add i64 %403, 15
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i8*
  %562 = load i8, i8* %561, align 1
  %563 = zext i8 %562 to i64
  store i64 %563, i64* %RDX.i2703, align 8
  %564 = zext i8 %562 to i32
  %565 = zext i8 %410 to i32
  %566 = add nuw nsw i32 %564, %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %568 = and i32 %566, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  %573 = xor i8 %562, %410
  %574 = zext i8 %573 to i32
  %575 = xor i32 %574, %566
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %27, align 1
  %579 = icmp eq i32 %566, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %581 = add i64 %403, 21
  store i64 %581, i64* %3, align 8
  %582 = load i64, i64* %406, align 8
  store i64 %582, i64* %RAX.i2697, align 8
  %583 = add i64 %582, 1
  %584 = add i64 %403, 25
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i8*
  %586 = load i8, i8* %585, align 1
  %587 = zext i8 %586 to i64
  store i64 %587, i64* %RDX.i2703, align 8
  %588 = add i64 %403, 29
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %414, align 8
  store i64 %589, i64* %RAX.i2697, align 8
  %590 = add i64 %403, 32
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i8*
  %592 = load i8, i8* %591, align 1
  %593 = zext i8 %592 to i64
  store i64 %593, i64* %RSI.i2706, align 8
  %594 = zext i8 %592 to i32
  %595 = zext i8 %586 to i32
  %596 = add nuw nsw i32 %594, %595
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RDX.i2703, align 8
  %598 = sub nsw i32 %566, %596
  %599 = icmp ult i32 %566, %596
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %14, align 1
  %601 = and i32 %598, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  %606 = xor i32 %596, %566
  %607 = xor i32 %606, %598
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %27, align 1
  %611 = icmp eq i32 %598, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %30, align 1
  %613 = lshr i32 %598, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %615 = icmp ne i8 %614, 0
  %.v101 = select i1 %615, i64 42, i64 67
  %616 = add i64 %403, %.v101
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -8
  %619 = add i64 %616, 4
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RAX.i2697, align 8
  br i1 %615, label %block_43cd74, label %block_.L_43cd8d

block_43cd74:                                     ; preds = %block_.L_43cd4a
  %622 = add i64 %621, 1
  %623 = add i64 %616, 8
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i8*
  %625 = load i8, i8* %624, align 1
  %626 = zext i8 %625 to i64
  store i64 %626, i64* %RCX.i2691, align 8
  %627 = add i64 %617, -16
  %628 = add i64 %616, 12
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i2697, align 8
  %631 = add i64 %616, 15
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i8*
  %633 = load i8, i8* %632, align 1
  %634 = zext i8 %633 to i64
  store i64 %634, i64* %RDX.i2703, align 8
  %635 = zext i8 %633 to i32
  %636 = zext i8 %625 to i32
  %637 = add nuw nsw i32 %635, %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %639 = and i32 %637, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i8 %633, %625
  %645 = zext i8 %644 to i32
  %646 = xor i32 %645, %637
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %27, align 1
  %650 = icmp eq i32 %637, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %652 = add i64 %617, -56
  %653 = add i64 %616, 20
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  store i32 %637, i32* %654, align 4
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 25
  store i64 %656, i64* %3, align 8
  br label %block_.L_43cda1

block_.L_43cd8d:                                  ; preds = %block_.L_43cd4a
  %657 = add i64 %616, 7
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %621 to i8*
  %659 = load i8, i8* %658, align 1
  %660 = zext i8 %659 to i64
  store i64 %660, i64* %RCX.i2691, align 8
  %661 = add i64 %617, -16
  %662 = add i64 %616, 11
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RAX.i2697, align 8
  %665 = add i64 %664, 1
  %666 = add i64 %616, 15
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i8*
  %668 = load i8, i8* %667, align 1
  %669 = zext i8 %668 to i64
  store i64 %669, i64* %RDX.i2703, align 8
  %670 = zext i8 %668 to i32
  %671 = zext i8 %659 to i32
  %672 = add nuw nsw i32 %670, %671
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %674 = and i32 %672, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %21, align 1
  %679 = xor i8 %668, %659
  %680 = zext i8 %679 to i32
  %681 = xor i32 %680, %672
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %687 = add i64 %617, -56
  %688 = add i64 %616, 20
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 %672, i32* %689, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_43cda1

block_.L_43cda1:                                  ; preds = %block_.L_43cd8d, %block_43cd74
  %690 = phi i64 [ %.pre46, %block_.L_43cd8d ], [ %656, %block_43cd74 ]
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -56
  %693 = add i64 %690, 3
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX.i2697, align 8
  %697 = add i64 %691, -52
  %698 = add i64 %690, 6
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  store i32 %695, i32* %699, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_43cda7

block_.L_43cda7:                                  ; preds = %block_.L_43cda1, %block_.L_43cd3f
  %700 = phi i64 [ %.pre48, %block_.L_43cda1 ], [ %558, %block_.L_43cd3f ]
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -52
  %703 = add i64 %700, 3
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RAX.i2697, align 8
  %AL.i2384 = bitcast %union.anon* %63 to i8*
  %CL.i2385 = bitcast %union.anon* %72 to i8*
  %707 = trunc i32 %705 to i8
  store i8 %707, i8* %CL.i2385, align 1
  %708 = add i64 %701, -32
  %709 = add i64 %700, 8
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i8*
  store i8 %707, i8* %710, align 1
  %711 = load i64, i64* %RBP.i, align 8
  %712 = add i64 %711, -8
  %713 = load i64, i64* %3, align 8
  %714 = add i64 %713, 4
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %712 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RDX.i2703, align 8
  %717 = add i64 %716, 1
  %718 = add i64 %713, 8
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i8*
  %720 = load i8, i8* %719, align 1
  %721 = zext i8 %720 to i64
  store i64 %721, i64* %RAX.i2697, align 8
  %722 = add i64 %711, -16
  %723 = add i64 %713, 12
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RDX.i2703, align 8
  %726 = add i64 %725, 1
  %727 = add i64 %713, 16
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i8*
  %729 = load i8, i8* %728, align 1
  %730 = zext i8 %729 to i64
  store i64 %730, i64* %RSI.i2706, align 8
  %731 = zext i8 %729 to i32
  %732 = zext i8 %720 to i32
  %733 = add nuw nsw i32 %731, %732
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RAX.i2697, align 8
  store i8 0, i8* %14, align 1
  %735 = and i32 %733, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  %740 = xor i8 %729, %720
  %741 = zext i8 %740 to i32
  %742 = xor i32 %741, %733
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %27, align 1
  %746 = icmp eq i32 %733, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %748 = add i64 %713, 22
  store i64 %748, i64* %3, align 8
  %749 = load i64, i64* %715, align 8
  store i64 %749, i64* %RDX.i2703, align 8
  %750 = add i64 %713, 25
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i8*
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i64
  store i64 %753, i64* %RSI.i2706, align 8
  %754 = add i64 %713, 29
  store i64 %754, i64* %3, align 8
  %755 = load i64, i64* %724, align 8
  store i64 %755, i64* %RDX.i2703, align 8
  %756 = add i64 %755, 3
  %757 = add i64 %713, 33
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i8*
  %759 = load i8, i8* %758, align 1
  %760 = zext i8 %759 to i64
  store i64 %760, i64* %RDI.i2709, align 8
  %761 = zext i8 %759 to i32
  %762 = zext i8 %752 to i32
  %763 = add nuw nsw i32 %761, %762
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RSI.i2706, align 8
  store i8 0, i8* %14, align 1
  %765 = and i32 %763, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i8 %759, %752
  %771 = zext i8 %770 to i32
  %772 = xor i32 %771, %763
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  store i8 %775, i8* %27, align 1
  %776 = icmp eq i32 %763, 0
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -8
  %780 = add i64 %713, 39
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %RDX.i2703, align 8
  %783 = add i64 %782, 1
  %784 = add i64 %713, 43
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i8*
  %786 = load i8, i8* %785, align 1
  %787 = zext i8 %786 to i64
  store i64 %787, i64* %RDI.i2709, align 8
  %788 = add i64 %778, -16
  %789 = add i64 %713, 47
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RDX.i2703, align 8
  %792 = add i64 %791, 2
  %793 = add i64 %713, 52
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i8*
  %795 = load i8, i8* %794, align 1
  %796 = zext i8 %795 to i64
  store i64 %796, i64* %104, align 8
  %797 = zext i8 %795 to i32
  %798 = zext i8 %786 to i32
  %799 = add nuw nsw i32 %797, %798
  %800 = zext i32 %799 to i64
  store i64 %800, i64* %RDI.i2709, align 8
  %801 = sub nsw i32 %763, %799
  %802 = icmp ult i32 %763, %799
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %14, align 1
  %804 = and i32 %801, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  %809 = xor i32 %799, %763
  %810 = xor i32 %809, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %27, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %30, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %818 = add i64 %778, -60
  %819 = load i32, i32* %EAX.i2670, align 4
  %820 = add i64 %713, 60
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %821, align 4
  %822 = load i64, i64* %3, align 8
  %823 = load i8, i8* %33, align 1
  %824 = icmp ne i8 %823, 0
  %825 = load i8, i8* %39, align 1
  %826 = icmp ne i8 %825, 0
  %827 = xor i1 %824, %826
  %.v122 = select i1 %827, i64 6, i64 31
  %828 = add i64 %822, %.v122
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -8
  %831 = add i64 %828, 4
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %RAX.i2697, align 8
  br i1 %827, label %block_43cdf1, label %block_.L_43ce0a

block_43cdf1:                                     ; preds = %block_.L_43cda7
  %834 = add i64 %828, 7
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i8*
  %836 = load i8, i8* %835, align 1
  %837 = zext i8 %836 to i64
  store i64 %837, i64* %RCX.i2691, align 8
  %838 = add i64 %829, -16
  %839 = add i64 %828, 11
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RAX.i2697, align 8
  %842 = add i64 %841, 3
  %843 = add i64 %828, 15
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i8*
  %845 = load i8, i8* %844, align 1
  %846 = zext i8 %845 to i64
  store i64 %846, i64* %RDX.i2703, align 8
  %847 = zext i8 %845 to i32
  %848 = zext i8 %836 to i32
  %849 = add nuw nsw i32 %847, %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %851 = and i32 %849, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i8 %845, %836
  %857 = zext i8 %856 to i32
  %858 = xor i32 %857, %849
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %27, align 1
  %862 = icmp eq i32 %849, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %864 = add i64 %829, -64
  %865 = add i64 %828, 20
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  store i32 %849, i32* %866, align 4
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 26
  store i64 %868, i64* %3, align 8
  br label %block_.L_43ce1f

block_.L_43ce0a:                                  ; preds = %block_.L_43cda7
  %869 = add i64 %833, 1
  %870 = add i64 %828, 8
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i8*
  %872 = load i8, i8* %871, align 1
  %873 = zext i8 %872 to i64
  store i64 %873, i64* %RCX.i2691, align 8
  %874 = add i64 %829, -16
  %875 = add i64 %828, 12
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i2697, align 8
  %878 = add i64 %877, 2
  %879 = add i64 %828, 16
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i8*
  %881 = load i8, i8* %880, align 1
  %882 = zext i8 %881 to i64
  store i64 %882, i64* %RDX.i2703, align 8
  %883 = zext i8 %881 to i32
  %884 = zext i8 %872 to i32
  %885 = add nuw nsw i32 %883, %884
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %887 = and i32 %885, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %21, align 1
  %892 = xor i8 %881, %872
  %893 = zext i8 %892 to i32
  %894 = xor i32 %893, %885
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %27, align 1
  %898 = icmp eq i32 %885, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %900 = add i64 %829, -64
  %901 = add i64 %828, 21
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  store i32 %885, i32* %902, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_43ce1f

block_.L_43ce1f:                                  ; preds = %block_.L_43ce0a, %block_43cdf1
  %903 = phi i64 [ %.pre49, %block_.L_43ce0a ], [ %868, %block_43cdf1 ]
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -64
  %906 = add i64 %903, 3
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i2697, align 8
  %910 = add i64 %904, -60
  %911 = add i64 %903, 6
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RCX.i2691, align 8
  %915 = sub i32 %913, %908
  %916 = icmp ult i32 %913, %908
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %14, align 1
  %918 = and i32 %915, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  %923 = xor i32 %908, %913
  %924 = xor i32 %923, %915
  %925 = lshr i32 %924, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %27, align 1
  %928 = icmp eq i32 %915, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %30, align 1
  %930 = lshr i32 %915, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %33, align 1
  %932 = lshr i32 %913, 31
  %933 = lshr i32 %908, 31
  %934 = xor i32 %933, %932
  %935 = xor i32 %930, %932
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %39, align 1
  %939 = icmp ne i8 %931, 0
  %940 = xor i1 %939, %937
  %.v88 = select i1 %940, i64 14, i64 114
  %941 = add i64 %903, %.v88
  %942 = add i64 %904, -8
  %943 = add i64 %941, 4
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX.i2697, align 8
  br i1 %940, label %block_43ce2d, label %block_.L_43ce91

block_43ce2d:                                     ; preds = %block_.L_43ce1f
  %946 = add i64 %941, 7
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i8*
  %948 = load i8, i8* %947, align 1
  %949 = zext i8 %948 to i64
  store i64 %949, i64* %RCX.i2691, align 8
  %950 = add i64 %904, -16
  %951 = add i64 %941, 11
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i64*
  %953 = load i64, i64* %952, align 8
  store i64 %953, i64* %RAX.i2697, align 8
  %954 = add i64 %953, 3
  %955 = add i64 %941, 15
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i8*
  %957 = load i8, i8* %956, align 1
  %958 = zext i8 %957 to i64
  store i64 %958, i64* %RDX.i2703, align 8
  %959 = zext i8 %957 to i32
  %960 = zext i8 %948 to i32
  %961 = add nuw nsw i32 %959, %960
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %963 = and i32 %961, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  %968 = xor i8 %957, %948
  %969 = zext i8 %968 to i32
  %970 = xor i32 %969, %961
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %27, align 1
  %974 = icmp eq i32 %961, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %976 = add i64 %941, 21
  store i64 %976, i64* %3, align 8
  %977 = load i64, i64* %944, align 8
  store i64 %977, i64* %RAX.i2697, align 8
  %978 = add i64 %977, 1
  %979 = add i64 %941, 25
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i8*
  %981 = load i8, i8* %980, align 1
  %982 = zext i8 %981 to i64
  store i64 %982, i64* %RDX.i2703, align 8
  %983 = add i64 %941, 29
  store i64 %983, i64* %3, align 8
  %984 = load i64, i64* %952, align 8
  store i64 %984, i64* %RAX.i2697, align 8
  %985 = add i64 %984, 2
  %986 = add i64 %941, 33
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i8*
  %988 = load i8, i8* %987, align 1
  %989 = zext i8 %988 to i64
  store i64 %989, i64* %RSI.i2706, align 8
  %990 = zext i8 %988 to i32
  %991 = zext i8 %981 to i32
  %992 = add nuw nsw i32 %990, %991
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RDX.i2703, align 8
  %994 = sub nsw i32 %961, %992
  %995 = icmp ult i32 %961, %992
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %14, align 1
  %997 = and i32 %994, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i32 %992, %961
  %1003 = xor i32 %1002, %994
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %27, align 1
  %1007 = icmp eq i32 %994, 0
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %30, align 1
  %1009 = lshr i32 %994, 31
  %1010 = trunc i32 %1009 to i8
  store i8 %1010, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1011 = icmp ne i8 %1010, 0
  %.v119 = select i1 %1011, i64 43, i64 68
  %1012 = add i64 %941, %.v119
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -8
  %1015 = add i64 %1012, 4
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %RAX.i2697, align 8
  br i1 %1011, label %block_43ce58, label %block_.L_43ce71

block_43ce58:                                     ; preds = %block_43ce2d
  %1018 = add i64 %1012, 7
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i8*
  %1020 = load i8, i8* %1019, align 1
  %1021 = zext i8 %1020 to i64
  store i64 %1021, i64* %RCX.i2691, align 8
  %1022 = add i64 %1013, -16
  %1023 = add i64 %1012, 11
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* %RAX.i2697, align 8
  %1026 = add i64 %1025, 3
  %1027 = add i64 %1012, 15
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i8*
  %1029 = load i8, i8* %1028, align 1
  %1030 = zext i8 %1029 to i64
  store i64 %1030, i64* %RDX.i2703, align 8
  %1031 = zext i8 %1029 to i32
  %1032 = zext i8 %1020 to i32
  %1033 = add nuw nsw i32 %1031, %1032
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1035 = and i32 %1033, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i8 %1029, %1020
  %1041 = zext i8 %1040 to i32
  %1042 = xor i32 %1041, %1033
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %27, align 1
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1048 = add i64 %1013, -68
  %1049 = add i64 %1012, 20
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  store i32 %1033, i32* %1050, align 4
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 26
  store i64 %1052, i64* %3, align 8
  br label %block_.L_43ce86

block_.L_43ce71:                                  ; preds = %block_43ce2d
  %1053 = add i64 %1017, 1
  %1054 = add i64 %1012, 8
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i8*
  %1056 = load i8, i8* %1055, align 1
  %1057 = zext i8 %1056 to i64
  store i64 %1057, i64* %RCX.i2691, align 8
  %1058 = add i64 %1013, -16
  %1059 = add i64 %1012, 12
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i64 %1061, i64* %RAX.i2697, align 8
  %1062 = add i64 %1061, 2
  %1063 = add i64 %1012, 16
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i8*
  %1065 = load i8, i8* %1064, align 1
  %1066 = zext i8 %1065 to i64
  store i64 %1066, i64* %RDX.i2703, align 8
  %1067 = zext i8 %1065 to i32
  %1068 = zext i8 %1056 to i32
  %1069 = add nuw nsw i32 %1067, %1068
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1071 = and i32 %1069, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i8 %1065, %1056
  %1077 = zext i8 %1076 to i32
  %1078 = xor i32 %1077, %1069
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %27, align 1
  %1082 = icmp eq i32 %1069, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1084 = add i64 %1013, -68
  %1085 = add i64 %1012, 21
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 %1069, i32* %1086, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_43ce86

block_.L_43ce86:                                  ; preds = %block_.L_43ce71, %block_43ce58
  %1087 = phi i64 [ %.pre50, %block_.L_43ce71 ], [ %1052, %block_43ce58 ]
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -68
  %1090 = add i64 %1087, 3
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i2697, align 8
  %1094 = add i64 %1088, -72
  %1095 = add i64 %1087, 6
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  store i32 %1092, i32* %1096, align 4
  %1097 = load i64, i64* %3, align 8
  %1098 = add i64 %1097, 26
  store i64 %1098, i64* %3, align 8
  br label %block_.L_43cea6

block_.L_43ce91:                                  ; preds = %block_.L_43ce1f
  %1099 = add i64 %945, 1
  %1100 = add i64 %941, 8
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i8*
  %1102 = load i8, i8* %1101, align 1
  %1103 = zext i8 %1102 to i64
  store i64 %1103, i64* %RCX.i2691, align 8
  %1104 = add i64 %904, -16
  %1105 = add i64 %941, 12
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RAX.i2697, align 8
  %1108 = add i64 %1107, 1
  %1109 = add i64 %941, 16
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i8*
  %1111 = load i8, i8* %1110, align 1
  %1112 = zext i8 %1111 to i64
  store i64 %1112, i64* %RDX.i2703, align 8
  %1113 = zext i8 %1111 to i32
  %1114 = zext i8 %1102 to i32
  %1115 = add nuw nsw i32 %1113, %1114
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1117 = and i32 %1115, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i8 %1111, %1102
  %1123 = zext i8 %1122 to i32
  %1124 = xor i32 %1123, %1115
  %1125 = lshr i32 %1124, 4
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  store i8 %1127, i8* %27, align 1
  %1128 = icmp eq i32 %1115, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1130 = add i64 %904, -72
  %1131 = add i64 %941, 21
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  store i32 %1115, i32* %1132, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_43cea6

block_.L_43cea6:                                  ; preds = %block_.L_43ce91, %block_.L_43ce86
  %1133 = phi i64 [ %.pre51, %block_.L_43ce91 ], [ %1098, %block_.L_43ce86 ]
  %1134 = load i64, i64* %RBP.i, align 8
  %1135 = add i64 %1134, -72
  %1136 = add i64 %1133, 3
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i2697, align 8
  %1140 = add i64 %1134, -8
  %1141 = add i64 %1133, 7
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RCX.i2691, align 8
  %1144 = add i64 %1143, 1
  %1145 = add i64 %1133, 11
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i8*
  %1147 = load i8, i8* %1146, align 1
  %1148 = zext i8 %1147 to i64
  store i64 %1148, i64* %RDX.i2703, align 8
  %1149 = add i64 %1134, -16
  %1150 = add i64 %1133, 15
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RCX.i2691, align 8
  %1153 = add i64 %1152, 1
  %1154 = add i64 %1133, 19
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i8*
  %1156 = load i8, i8* %1155, align 1
  %1157 = zext i8 %1156 to i64
  store i64 %1157, i64* %RSI.i2706, align 8
  %1158 = zext i8 %1156 to i32
  %1159 = zext i8 %1147 to i32
  %1160 = add nuw nsw i32 %1158, %1159
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %1162 = and i32 %1160, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %21, align 1
  %1167 = xor i8 %1156, %1147
  %1168 = zext i8 %1167 to i32
  %1169 = xor i32 %1168, %1160
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %27, align 1
  %1173 = icmp eq i32 %1160, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1175 = add i64 %1133, 25
  store i64 %1175, i64* %3, align 8
  %1176 = load i64, i64* %1142, align 8
  store i64 %1176, i64* %RCX.i2691, align 8
  %1177 = add i64 %1176, 3
  %1178 = add i64 %1133, 29
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i8*
  %1180 = load i8, i8* %1179, align 1
  %1181 = zext i8 %1180 to i64
  store i64 %1181, i64* %RSI.i2706, align 8
  %1182 = add i64 %1133, 33
  store i64 %1182, i64* %3, align 8
  %1183 = load i64, i64* %1151, align 8
  store i64 %1183, i64* %RCX.i2691, align 8
  %1184 = add i64 %1133, 36
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i8*
  %1186 = load i8, i8* %1185, align 1
  %1187 = zext i8 %1186 to i64
  store i64 %1187, i64* %RDI.i2709, align 8
  %1188 = zext i8 %1186 to i32
  %1189 = zext i8 %1180 to i32
  %1190 = add nuw nsw i32 %1188, %1189
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RSI.i2706, align 8
  store i8 0, i8* %14, align 1
  %1192 = and i32 %1190, 255
  %1193 = tail call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  store i8 %1196, i8* %21, align 1
  %1197 = xor i8 %1186, %1180
  %1198 = zext i8 %1197 to i32
  %1199 = xor i32 %1198, %1190
  %1200 = lshr i32 %1199, 4
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  store i8 %1202, i8* %27, align 1
  %1203 = icmp eq i32 %1190, 0
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -8
  %1207 = add i64 %1133, 42
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RCX.i2691, align 8
  %1210 = add i64 %1209, 2
  %1211 = add i64 %1133, 46
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i8*
  %1213 = load i8, i8* %1212, align 1
  %1214 = zext i8 %1213 to i64
  store i64 %1214, i64* %RDI.i2709, align 8
  %1215 = add i64 %1205, -16
  %1216 = add i64 %1133, 50
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RCX.i2691, align 8
  %1219 = add i64 %1218, 1
  %1220 = add i64 %1133, 55
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i8*
  %1222 = load i8, i8* %1221, align 1
  %1223 = zext i8 %1222 to i64
  store i64 %1223, i64* %104, align 8
  %1224 = zext i8 %1222 to i32
  %1225 = zext i8 %1213 to i32
  %1226 = add nuw nsw i32 %1224, %1225
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RDI.i2709, align 8
  %1228 = sub nsw i32 %1190, %1226
  %1229 = icmp ult i32 %1190, %1226
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %14, align 1
  %1231 = and i32 %1228, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %21, align 1
  %1236 = xor i32 %1226, %1190
  %1237 = xor i32 %1236, %1228
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %27, align 1
  %1241 = icmp eq i32 %1228, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %30, align 1
  %1243 = lshr i32 %1228, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1245 = add i64 %1205, -76
  %1246 = load i32, i32* %EAX.i2670, align 4
  %1247 = add i64 %1133, 63
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1245 to i32*
  store i32 %1246, i32* %1248, align 4
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -80
  %1251 = load i32, i32* %EDX.i2596.pre-phi, align 4
  %1252 = load i64, i64* %3, align 8
  %1253 = add i64 %1252, 3
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1250 to i32*
  store i32 %1251, i32* %1254, align 4
  %1255 = load i64, i64* %3, align 8
  %1256 = load i8, i8* %33, align 1
  %1257 = icmp ne i8 %1256, 0
  %1258 = load i8, i8* %39, align 1
  %1259 = icmp ne i8 %1258, 0
  %1260 = xor i1 %1257, %1259
  %.v123 = select i1 %1260, i64 6, i64 31
  %1261 = add i64 %1255, %.v123
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -8
  %1264 = add i64 %1261, 4
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX.i2697, align 8
  br i1 %1260, label %block_43ceee, label %block_.L_43cf07

block_43ceee:                                     ; preds = %block_.L_43cea6
  %1267 = add i64 %1266, 3
  %1268 = add i64 %1261, 8
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i8*
  %1270 = load i8, i8* %1269, align 1
  %1271 = zext i8 %1270 to i64
  store i64 %1271, i64* %RCX.i2691, align 8
  %1272 = add i64 %1262, -16
  %1273 = add i64 %1261, 12
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RAX.i2697, align 8
  %1276 = add i64 %1261, 15
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i8*
  %1278 = load i8, i8* %1277, align 1
  %1279 = zext i8 %1278 to i64
  store i64 %1279, i64* %RDX.i2703, align 8
  %1280 = zext i8 %1278 to i32
  %1281 = zext i8 %1270 to i32
  %1282 = add nuw nsw i32 %1280, %1281
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1284 = and i32 %1282, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %21, align 1
  %1289 = xor i8 %1278, %1270
  %1290 = zext i8 %1289 to i32
  %1291 = xor i32 %1290, %1282
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %27, align 1
  %1295 = icmp eq i32 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1297 = add i64 %1262, -84
  %1298 = add i64 %1261, 20
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  store i32 %1282, i32* %1299, align 4
  %1300 = load i64, i64* %3, align 8
  %1301 = add i64 %1300, 26
  store i64 %1301, i64* %3, align 8
  br label %block_.L_43cf1c

block_.L_43cf07:                                  ; preds = %block_.L_43cea6
  %1302 = add i64 %1266, 2
  %1303 = add i64 %1261, 8
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i8*
  %1305 = load i8, i8* %1304, align 1
  %1306 = zext i8 %1305 to i64
  store i64 %1306, i64* %RCX.i2691, align 8
  %1307 = add i64 %1262, -16
  %1308 = add i64 %1261, 12
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %RAX.i2697, align 8
  %1311 = add i64 %1310, 1
  %1312 = add i64 %1261, 16
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i8*
  %1314 = load i8, i8* %1313, align 1
  %1315 = zext i8 %1314 to i64
  store i64 %1315, i64* %RDX.i2703, align 8
  %1316 = zext i8 %1314 to i32
  %1317 = zext i8 %1305 to i32
  %1318 = add nuw nsw i32 %1316, %1317
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1320 = and i32 %1318, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %21, align 1
  %1325 = xor i8 %1314, %1305
  %1326 = zext i8 %1325 to i32
  %1327 = xor i32 %1326, %1318
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %27, align 1
  %1331 = icmp eq i32 %1318, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1333 = add i64 %1262, -84
  %1334 = add i64 %1261, 21
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  store i32 %1318, i32* %1335, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_43cf1c

block_.L_43cf1c:                                  ; preds = %block_.L_43cf07, %block_43ceee
  %1336 = phi i64 [ %.pre52, %block_.L_43cf07 ], [ %1301, %block_43ceee ]
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -84
  %1339 = add i64 %1336, 3
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RAX.i2697, align 8
  %1343 = add i64 %1337, -80
  %1344 = add i64 %1336, 6
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RCX.i2691, align 8
  %1348 = sub i32 %1346, %1341
  %1349 = icmp ult i32 %1346, %1341
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %14, align 1
  %1351 = and i32 %1348, 255
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %21, align 1
  %1356 = xor i32 %1341, %1346
  %1357 = xor i32 %1356, %1348
  %1358 = lshr i32 %1357, 4
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  store i8 %1360, i8* %27, align 1
  %1361 = icmp eq i32 %1348, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %30, align 1
  %1363 = lshr i32 %1348, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %33, align 1
  %1365 = lshr i32 %1346, 31
  %1366 = lshr i32 %1341, 31
  %1367 = xor i32 %1366, %1365
  %1368 = xor i32 %1363, %1365
  %1369 = add nuw nsw i32 %1368, %1367
  %1370 = icmp eq i32 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %39, align 1
  %1372 = icmp ne i8 %1364, 0
  %1373 = xor i1 %1372, %1370
  %.v89 = select i1 %1373, i64 14, i64 114
  %1374 = add i64 %1336, %.v89
  %1375 = add i64 %1337, -8
  %1376 = add i64 %1374, 4
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RAX.i2697, align 8
  br i1 %1373, label %block_43cf2a, label %block_.L_43cf8e

block_43cf2a:                                     ; preds = %block_.L_43cf1c
  %1379 = add i64 %1378, 3
  %1380 = add i64 %1374, 8
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i8*
  %1382 = load i8, i8* %1381, align 1
  %1383 = zext i8 %1382 to i64
  store i64 %1383, i64* %RCX.i2691, align 8
  %1384 = add i64 %1337, -16
  %1385 = add i64 %1374, 12
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %RAX.i2697, align 8
  %1388 = add i64 %1374, 15
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i8*
  %1390 = load i8, i8* %1389, align 1
  %1391 = zext i8 %1390 to i64
  store i64 %1391, i64* %RDX.i2703, align 8
  %1392 = zext i8 %1390 to i32
  %1393 = zext i8 %1382 to i32
  %1394 = add nuw nsw i32 %1392, %1393
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1396 = and i32 %1394, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  %1401 = xor i8 %1390, %1382
  %1402 = zext i8 %1401 to i32
  %1403 = xor i32 %1402, %1394
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1409 = add i64 %1374, 21
  store i64 %1409, i64* %3, align 8
  %1410 = load i64, i64* %1377, align 8
  store i64 %1410, i64* %RAX.i2697, align 8
  %1411 = add i64 %1410, 2
  %1412 = add i64 %1374, 25
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i8*
  %1414 = load i8, i8* %1413, align 1
  %1415 = zext i8 %1414 to i64
  store i64 %1415, i64* %RDX.i2703, align 8
  %1416 = add i64 %1374, 29
  store i64 %1416, i64* %3, align 8
  %1417 = load i64, i64* %1386, align 8
  store i64 %1417, i64* %RAX.i2697, align 8
  %1418 = add i64 %1417, 1
  %1419 = add i64 %1374, 33
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i8*
  %1421 = load i8, i8* %1420, align 1
  %1422 = zext i8 %1421 to i64
  store i64 %1422, i64* %RSI.i2706, align 8
  %1423 = zext i8 %1421 to i32
  %1424 = zext i8 %1414 to i32
  %1425 = add nuw nsw i32 %1423, %1424
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RDX.i2703, align 8
  %1427 = sub nsw i32 %1394, %1425
  %1428 = icmp ult i32 %1394, %1425
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %14, align 1
  %1430 = and i32 %1427, 255
  %1431 = tail call i32 @llvm.ctpop.i32(i32 %1430)
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = xor i8 %1433, 1
  store i8 %1434, i8* %21, align 1
  %1435 = xor i32 %1425, %1394
  %1436 = xor i32 %1435, %1427
  %1437 = lshr i32 %1436, 4
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  store i8 %1439, i8* %27, align 1
  %1440 = icmp eq i32 %1427, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %30, align 1
  %1442 = lshr i32 %1427, 31
  %1443 = trunc i32 %1442 to i8
  store i8 %1443, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1444 = icmp ne i8 %1443, 0
  %.v118 = select i1 %1444, i64 43, i64 68
  %1445 = add i64 %1374, %.v118
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -8
  %1448 = add i64 %1445, 4
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RAX.i2697, align 8
  br i1 %1444, label %block_43cf55, label %block_.L_43cf6e

block_43cf55:                                     ; preds = %block_43cf2a
  %1451 = add i64 %1450, 3
  %1452 = add i64 %1445, 8
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i8*
  %1454 = load i8, i8* %1453, align 1
  %1455 = zext i8 %1454 to i64
  store i64 %1455, i64* %RCX.i2691, align 8
  %1456 = add i64 %1446, -16
  %1457 = add i64 %1445, 12
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i64*
  %1459 = load i64, i64* %1458, align 8
  store i64 %1459, i64* %RAX.i2697, align 8
  %1460 = add i64 %1445, 15
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i8*
  %1462 = load i8, i8* %1461, align 1
  %1463 = zext i8 %1462 to i64
  store i64 %1463, i64* %RDX.i2703, align 8
  %1464 = zext i8 %1462 to i32
  %1465 = zext i8 %1454 to i32
  %1466 = add nuw nsw i32 %1464, %1465
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1468 = and i32 %1466, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %21, align 1
  %1473 = xor i8 %1462, %1454
  %1474 = zext i8 %1473 to i32
  %1475 = xor i32 %1474, %1466
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %27, align 1
  %1479 = icmp eq i32 %1466, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1481 = add i64 %1446, -88
  %1482 = add i64 %1445, 20
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  store i32 %1466, i32* %1483, align 4
  %1484 = load i64, i64* %3, align 8
  %1485 = add i64 %1484, 26
  store i64 %1485, i64* %3, align 8
  br label %block_.L_43cf83

block_.L_43cf6e:                                  ; preds = %block_43cf2a
  %1486 = add i64 %1450, 2
  %1487 = add i64 %1445, 8
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i8*
  %1489 = load i8, i8* %1488, align 1
  %1490 = zext i8 %1489 to i64
  store i64 %1490, i64* %RCX.i2691, align 8
  %1491 = add i64 %1446, -16
  %1492 = add i64 %1445, 12
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RAX.i2697, align 8
  %1495 = add i64 %1494, 1
  %1496 = add i64 %1445, 16
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i8*
  %1498 = load i8, i8* %1497, align 1
  %1499 = zext i8 %1498 to i64
  store i64 %1499, i64* %RDX.i2703, align 8
  %1500 = zext i8 %1498 to i32
  %1501 = zext i8 %1489 to i32
  %1502 = add nuw nsw i32 %1500, %1501
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1504 = and i32 %1502, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %21, align 1
  %1509 = xor i8 %1498, %1489
  %1510 = zext i8 %1509 to i32
  %1511 = xor i32 %1510, %1502
  %1512 = lshr i32 %1511, 4
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  store i8 %1514, i8* %27, align 1
  %1515 = icmp eq i32 %1502, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1517 = add i64 %1446, -88
  %1518 = add i64 %1445, 21
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  store i32 %1502, i32* %1519, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_43cf83

block_.L_43cf83:                                  ; preds = %block_.L_43cf6e, %block_43cf55
  %1520 = phi i64 [ %.pre53, %block_.L_43cf6e ], [ %1485, %block_43cf55 ]
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -88
  %1523 = add i64 %1520, 3
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i2697, align 8
  %1527 = add i64 %1521, -92
  %1528 = add i64 %1520, 6
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  store i32 %1525, i32* %1529, align 4
  %1530 = load i64, i64* %3, align 8
  %1531 = add i64 %1530, 26
  store i64 %1531, i64* %3, align 8
  br label %block_.L_43cfa3

block_.L_43cf8e:                                  ; preds = %block_.L_43cf1c
  %1532 = add i64 %1378, 1
  %1533 = add i64 %1374, 8
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i8*
  %1535 = load i8, i8* %1534, align 1
  %1536 = zext i8 %1535 to i64
  store i64 %1536, i64* %RCX.i2691, align 8
  %1537 = add i64 %1337, -16
  %1538 = add i64 %1374, 12
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i2697, align 8
  %1541 = add i64 %1540, 1
  %1542 = add i64 %1374, 16
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i8*
  %1544 = load i8, i8* %1543, align 1
  %1545 = zext i8 %1544 to i64
  store i64 %1545, i64* %RDX.i2703, align 8
  %1546 = zext i8 %1544 to i32
  %1547 = zext i8 %1535 to i32
  %1548 = add nuw nsw i32 %1546, %1547
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1550 = and i32 %1548, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %21, align 1
  %1555 = xor i8 %1544, %1535
  %1556 = zext i8 %1555 to i32
  %1557 = xor i32 %1556, %1548
  %1558 = lshr i32 %1557, 4
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %27, align 1
  %1561 = icmp eq i32 %1548, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1563 = add i64 %1337, -92
  %1564 = add i64 %1374, 21
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  store i32 %1548, i32* %1565, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_43cfa3

block_.L_43cfa3:                                  ; preds = %block_.L_43cf8e, %block_.L_43cf83
  %1566 = phi i64 [ %.pre54, %block_.L_43cf8e ], [ %1531, %block_.L_43cf83 ]
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -92
  %1569 = add i64 %1566, 3
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RAX.i2697, align 8
  %1573 = add i64 %1567, -76
  %1574 = add i64 %1566, 6
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = zext i32 %1576 to i64
  store i64 %1577, i64* %RCX.i2691, align 8
  %1578 = sub i32 %1576, %1571
  %1579 = icmp ult i32 %1576, %1571
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1
  %1581 = and i32 %1578, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1
  %1586 = xor i32 %1571, %1576
  %1587 = xor i32 %1586, %1578
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %27, align 1
  %1591 = icmp eq i32 %1578, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %30, align 1
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  store i8 %1594, i8* %33, align 1
  %1595 = lshr i32 %1576, 31
  %1596 = lshr i32 %1571, 31
  %1597 = xor i32 %1596, %1595
  %1598 = xor i32 %1593, %1595
  %1599 = add nuw nsw i32 %1598, %1597
  %1600 = icmp eq i32 %1599, 2
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %39, align 1
  %1602 = icmp ne i8 %1594, 0
  %1603 = xor i1 %1602, %1600
  %.v90 = select i1 %1603, i64 14, i64 270
  %1604 = add i64 %1566, %.v90
  %1605 = add i64 %1567, -8
  %1606 = add i64 %1604, 4
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RAX.i2697, align 8
  %1609 = add i64 %1608, 1
  %1610 = add i64 %1604, 8
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i8*
  %1612 = load i8, i8* %1611, align 1
  %1613 = zext i8 %1612 to i64
  store i64 %1613, i64* %RCX.i2691, align 8
  %1614 = add i64 %1567, -16
  %1615 = add i64 %1604, 12
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RAX.i2697, align 8
  %1618 = add i64 %1617, 1
  %1619 = add i64 %1604, 16
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i8*
  %1621 = load i8, i8* %1620, align 1
  %1622 = zext i8 %1621 to i64
  store i64 %1622, i64* %RDX.i2703, align 8
  %1623 = zext i8 %1621 to i32
  %1624 = zext i8 %1612 to i32
  %1625 = add nuw nsw i32 %1623, %1624
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1627 = and i32 %1625, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i8 %1621, %1612
  %1633 = zext i8 %1632 to i32
  %1634 = xor i32 %1633, %1625
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %27, align 1
  %1638 = icmp eq i32 %1625, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -8
  %1642 = add i64 %1604, 22
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i64*
  %1644 = load i64, i64* %1643, align 8
  store i64 %1644, i64* %RAX.i2697, align 8
  br i1 %1603, label %block_43cfb1, label %block_.L_43d0b1

block_43cfb1:                                     ; preds = %block_.L_43cfa3
  %1645 = add i64 %1604, 25
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i8*
  %1647 = load i8, i8* %1646, align 1
  %1648 = zext i8 %1647 to i64
  store i64 %1648, i64* %RDX.i2703, align 8
  %1649 = add i64 %1640, -16
  %1650 = add i64 %1604, 29
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i64*
  %1652 = load i64, i64* %1651, align 8
  store i64 %1652, i64* %RAX.i2697, align 8
  %1653 = add i64 %1652, 3
  %1654 = add i64 %1604, 33
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i8*
  %1656 = load i8, i8* %1655, align 1
  %1657 = zext i8 %1656 to i64
  store i64 %1657, i64* %RSI.i2706, align 8
  %1658 = zext i8 %1656 to i32
  %1659 = zext i8 %1647 to i32
  %1660 = add nuw nsw i32 %1658, %1659
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %1662 = and i32 %1660, 255
  %1663 = tail call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  store i8 %1666, i8* %21, align 1
  %1667 = xor i8 %1656, %1647
  %1668 = zext i8 %1667 to i32
  %1669 = xor i32 %1668, %1660
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  store i8 %1672, i8* %27, align 1
  %1673 = icmp eq i32 %1660, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1675 = add i64 %1604, 39
  store i64 %1675, i64* %3, align 8
  %1676 = load i64, i64* %1643, align 8
  store i64 %1676, i64* %RAX.i2697, align 8
  %1677 = add i64 %1676, 1
  %1678 = add i64 %1604, 43
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i8*
  %1680 = load i8, i8* %1679, align 1
  %1681 = zext i8 %1680 to i64
  store i64 %1681, i64* %RSI.i2706, align 8
  %1682 = add i64 %1604, 47
  store i64 %1682, i64* %3, align 8
  %1683 = load i64, i64* %1651, align 8
  store i64 %1683, i64* %RAX.i2697, align 8
  %1684 = add i64 %1683, 2
  %1685 = add i64 %1604, 51
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i8*
  %1687 = load i8, i8* %1686, align 1
  %1688 = zext i8 %1687 to i64
  store i64 %1688, i64* %RDI.i2709, align 8
  %1689 = zext i8 %1687 to i32
  %1690 = zext i8 %1680 to i32
  %1691 = add nuw nsw i32 %1689, %1690
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RSI.i2706, align 8
  %1693 = sub nsw i32 %1660, %1691
  %1694 = icmp ult i32 %1660, %1691
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %14, align 1
  %1696 = and i32 %1693, 255
  %1697 = tail call i32 @llvm.ctpop.i32(i32 %1696)
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  store i8 %1700, i8* %21, align 1
  %1701 = xor i32 %1691, %1660
  %1702 = xor i32 %1701, %1693
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  store i8 %1705, i8* %27, align 1
  %1706 = icmp eq i32 %1693, 0
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %30, align 1
  %1708 = lshr i32 %1693, 31
  %1709 = trunc i32 %1708 to i8
  store i8 %1709, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1710 = load i64, i64* %RBP.i, align 8
  %1711 = add i64 %1710, -96
  %1712 = load i32, i32* %ECX.i2688, align 4
  %1713 = add i64 %1604, 58
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1711 to i32*
  store i32 %1712, i32* %1714, align 4
  %1715 = load i64, i64* %3, align 8
  %1716 = load i8, i8* %33, align 1
  %1717 = icmp ne i8 %1716, 0
  %1718 = load i8, i8* %39, align 1
  %1719 = icmp ne i8 %1718, 0
  %1720 = xor i1 %1717, %1719
  %.v131 = select i1 %1720, i64 6, i64 31
  %1721 = add i64 %1715, %.v131
  %1722 = load i64, i64* %RBP.i, align 8
  %1723 = add i64 %1722, -8
  %1724 = add i64 %1721, 4
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i2697, align 8
  br i1 %1720, label %block_43cff1, label %block_.L_43d00a

block_43cff1:                                     ; preds = %block_43cfb1
  %1727 = add i64 %1721, 7
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i8*
  %1729 = load i8, i8* %1728, align 1
  %1730 = zext i8 %1729 to i64
  store i64 %1730, i64* %RCX.i2691, align 8
  %1731 = add i64 %1722, -16
  %1732 = add i64 %1721, 11
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RAX.i2697, align 8
  %1735 = add i64 %1734, 3
  %1736 = add i64 %1721, 15
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i8*
  %1738 = load i8, i8* %1737, align 1
  %1739 = zext i8 %1738 to i64
  store i64 %1739, i64* %RDX.i2703, align 8
  %1740 = zext i8 %1738 to i32
  %1741 = zext i8 %1729 to i32
  %1742 = add nuw nsw i32 %1740, %1741
  %1743 = zext i32 %1742 to i64
  store i64 %1743, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1744 = and i32 %1742, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %21, align 1
  %1749 = xor i8 %1738, %1729
  %1750 = zext i8 %1749 to i32
  %1751 = xor i32 %1750, %1742
  %1752 = lshr i32 %1751, 4
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  store i8 %1754, i8* %27, align 1
  %1755 = icmp eq i32 %1742, 0
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1757 = add i64 %1722, -100
  %1758 = add i64 %1721, 20
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  store i32 %1742, i32* %1759, align 4
  %1760 = load i64, i64* %3, align 8
  %1761 = add i64 %1760, 26
  store i64 %1761, i64* %3, align 8
  br label %block_.L_43d01f

block_.L_43d00a:                                  ; preds = %block_43cfb1
  %1762 = add i64 %1726, 1
  %1763 = add i64 %1721, 8
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i8*
  %1765 = load i8, i8* %1764, align 1
  %1766 = zext i8 %1765 to i64
  store i64 %1766, i64* %RCX.i2691, align 8
  %1767 = add i64 %1722, -16
  %1768 = add i64 %1721, 12
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i64*
  %1770 = load i64, i64* %1769, align 8
  store i64 %1770, i64* %RAX.i2697, align 8
  %1771 = add i64 %1770, 2
  %1772 = add i64 %1721, 16
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i8*
  %1774 = load i8, i8* %1773, align 1
  %1775 = zext i8 %1774 to i64
  store i64 %1775, i64* %RDX.i2703, align 8
  %1776 = zext i8 %1774 to i32
  %1777 = zext i8 %1765 to i32
  %1778 = add nuw nsw i32 %1776, %1777
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1780 = and i32 %1778, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %21, align 1
  %1785 = xor i8 %1774, %1765
  %1786 = zext i8 %1785 to i32
  %1787 = xor i32 %1786, %1778
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  store i8 %1790, i8* %27, align 1
  %1791 = icmp eq i32 %1778, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1793 = add i64 %1722, -100
  %1794 = add i64 %1721, 21
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  store i32 %1778, i32* %1795, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_43d01f

block_.L_43d01f:                                  ; preds = %block_.L_43d00a, %block_43cff1
  %1796 = phi i64 [ %.pre58, %block_.L_43d00a ], [ %1761, %block_43cff1 ]
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -100
  %1799 = add i64 %1796, 3
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RAX.i2697, align 8
  %1803 = add i64 %1797, -96
  %1804 = add i64 %1796, 6
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i2691, align 8
  %1808 = sub i32 %1806, %1801
  %1809 = icmp ult i32 %1806, %1801
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %14, align 1
  %1811 = and i32 %1808, 255
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %21, align 1
  %1816 = xor i32 %1801, %1806
  %1817 = xor i32 %1816, %1808
  %1818 = lshr i32 %1817, 4
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %27, align 1
  %1821 = icmp eq i32 %1808, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %30, align 1
  %1823 = lshr i32 %1808, 31
  %1824 = trunc i32 %1823 to i8
  store i8 %1824, i8* %33, align 1
  %1825 = lshr i32 %1806, 31
  %1826 = lshr i32 %1801, 31
  %1827 = xor i32 %1826, %1825
  %1828 = xor i32 %1823, %1825
  %1829 = add nuw nsw i32 %1828, %1827
  %1830 = icmp eq i32 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %39, align 1
  %1832 = icmp ne i8 %1824, 0
  %1833 = xor i1 %1832, %1830
  %.v99 = select i1 %1833, i64 14, i64 114
  %1834 = add i64 %1796, %.v99
  %1835 = add i64 %1797, -8
  %1836 = add i64 %1834, 4
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i64*
  %1838 = load i64, i64* %1837, align 8
  store i64 %1838, i64* %RAX.i2697, align 8
  br i1 %1833, label %block_43d02d, label %block_.L_43d091

block_43d02d:                                     ; preds = %block_.L_43d01f
  %1839 = add i64 %1834, 7
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i8*
  %1841 = load i8, i8* %1840, align 1
  %1842 = zext i8 %1841 to i64
  store i64 %1842, i64* %RCX.i2691, align 8
  %1843 = add i64 %1797, -16
  %1844 = add i64 %1834, 11
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RAX.i2697, align 8
  %1847 = add i64 %1846, 3
  %1848 = add i64 %1834, 15
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i8*
  %1850 = load i8, i8* %1849, align 1
  %1851 = zext i8 %1850 to i64
  store i64 %1851, i64* %RDX.i2703, align 8
  %1852 = zext i8 %1850 to i32
  %1853 = zext i8 %1841 to i32
  %1854 = add nuw nsw i32 %1852, %1853
  %1855 = zext i32 %1854 to i64
  store i64 %1855, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1856 = and i32 %1854, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %21, align 1
  %1861 = xor i8 %1850, %1841
  %1862 = zext i8 %1861 to i32
  %1863 = xor i32 %1862, %1854
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %27, align 1
  %1867 = icmp eq i32 %1854, 0
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1869 = add i64 %1834, 21
  store i64 %1869, i64* %3, align 8
  %1870 = load i64, i64* %1837, align 8
  store i64 %1870, i64* %RAX.i2697, align 8
  %1871 = add i64 %1870, 1
  %1872 = add i64 %1834, 25
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i8*
  %1874 = load i8, i8* %1873, align 1
  %1875 = zext i8 %1874 to i64
  store i64 %1875, i64* %RDX.i2703, align 8
  %1876 = add i64 %1834, 29
  store i64 %1876, i64* %3, align 8
  %1877 = load i64, i64* %1845, align 8
  store i64 %1877, i64* %RAX.i2697, align 8
  %1878 = add i64 %1877, 2
  %1879 = add i64 %1834, 33
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i8*
  %1881 = load i8, i8* %1880, align 1
  %1882 = zext i8 %1881 to i64
  store i64 %1882, i64* %RSI.i2706, align 8
  %1883 = zext i8 %1881 to i32
  %1884 = zext i8 %1874 to i32
  %1885 = add nuw nsw i32 %1883, %1884
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RDX.i2703, align 8
  %1887 = sub nsw i32 %1854, %1885
  %1888 = icmp ult i32 %1854, %1885
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %14, align 1
  %1890 = and i32 %1887, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %21, align 1
  %1895 = xor i32 %1885, %1854
  %1896 = xor i32 %1895, %1887
  %1897 = lshr i32 %1896, 4
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  store i8 %1899, i8* %27, align 1
  %1900 = icmp eq i32 %1887, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %30, align 1
  %1902 = lshr i32 %1887, 31
  %1903 = trunc i32 %1902 to i8
  store i8 %1903, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1904 = icmp ne i8 %1903, 0
  %.v117 = select i1 %1904, i64 43, i64 68
  %1905 = add i64 %1834, %.v117
  %1906 = load i64, i64* %RBP.i, align 8
  %1907 = add i64 %1906, -8
  %1908 = add i64 %1905, 4
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %RAX.i2697, align 8
  br i1 %1904, label %block_43d058, label %block_.L_43d071

block_43d058:                                     ; preds = %block_43d02d
  %1911 = add i64 %1905, 7
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i8*
  %1913 = load i8, i8* %1912, align 1
  %1914 = zext i8 %1913 to i64
  store i64 %1914, i64* %RCX.i2691, align 8
  %1915 = add i64 %1906, -16
  %1916 = add i64 %1905, 11
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RAX.i2697, align 8
  %1919 = add i64 %1918, 3
  %1920 = add i64 %1905, 15
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to i8*
  %1922 = load i8, i8* %1921, align 1
  %1923 = zext i8 %1922 to i64
  store i64 %1923, i64* %RDX.i2703, align 8
  %1924 = zext i8 %1922 to i32
  %1925 = zext i8 %1913 to i32
  %1926 = add nuw nsw i32 %1924, %1925
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1928 = and i32 %1926, 255
  %1929 = tail call i32 @llvm.ctpop.i32(i32 %1928)
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = xor i8 %1931, 1
  store i8 %1932, i8* %21, align 1
  %1933 = xor i8 %1922, %1913
  %1934 = zext i8 %1933 to i32
  %1935 = xor i32 %1934, %1926
  %1936 = lshr i32 %1935, 4
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  store i8 %1938, i8* %27, align 1
  %1939 = icmp eq i32 %1926, 0
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1941 = add i64 %1906, -104
  %1942 = add i64 %1905, 20
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  store i32 %1926, i32* %1943, align 4
  %1944 = load i64, i64* %3, align 8
  %1945 = add i64 %1944, 26
  store i64 %1945, i64* %3, align 8
  br label %block_.L_43d086

block_.L_43d071:                                  ; preds = %block_43d02d
  %1946 = add i64 %1910, 1
  %1947 = add i64 %1905, 8
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i8*
  %1949 = load i8, i8* %1948, align 1
  %1950 = zext i8 %1949 to i64
  store i64 %1950, i64* %RCX.i2691, align 8
  %1951 = add i64 %1906, -16
  %1952 = add i64 %1905, 12
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i64*
  %1954 = load i64, i64* %1953, align 8
  store i64 %1954, i64* %RAX.i2697, align 8
  %1955 = add i64 %1954, 2
  %1956 = add i64 %1905, 16
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i8*
  %1958 = load i8, i8* %1957, align 1
  %1959 = zext i8 %1958 to i64
  store i64 %1959, i64* %RDX.i2703, align 8
  %1960 = zext i8 %1958 to i32
  %1961 = zext i8 %1949 to i32
  %1962 = add nuw nsw i32 %1960, %1961
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %1964 = and i32 %1962, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %21, align 1
  %1969 = xor i8 %1958, %1949
  %1970 = zext i8 %1969 to i32
  %1971 = xor i32 %1970, %1962
  %1972 = lshr i32 %1971, 4
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %27, align 1
  %1975 = icmp eq i32 %1962, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1977 = add i64 %1906, -104
  %1978 = add i64 %1905, 21
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  store i32 %1962, i32* %1979, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_43d086

block_.L_43d086:                                  ; preds = %block_.L_43d071, %block_43d058
  %1980 = phi i64 [ %.pre59, %block_.L_43d071 ], [ %1945, %block_43d058 ]
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -104
  %1983 = add i64 %1980, 3
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RAX.i2697, align 8
  %1987 = add i64 %1981, -108
  %1988 = add i64 %1980, 6
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i32*
  store i32 %1985, i32* %1989, align 4
  %1990 = load i64, i64* %3, align 8
  %1991 = add i64 %1990, 26
  store i64 %1991, i64* %3, align 8
  br label %block_.L_43d0a6

block_.L_43d091:                                  ; preds = %block_.L_43d01f
  %1992 = add i64 %1838, 1
  %1993 = add i64 %1834, 8
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i8*
  %1995 = load i8, i8* %1994, align 1
  %1996 = zext i8 %1995 to i64
  store i64 %1996, i64* %RCX.i2691, align 8
  %1997 = add i64 %1797, -16
  %1998 = add i64 %1834, 12
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i64*
  %2000 = load i64, i64* %1999, align 8
  store i64 %2000, i64* %RAX.i2697, align 8
  %2001 = add i64 %2000, 1
  %2002 = add i64 %1834, 16
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i8*
  %2004 = load i8, i8* %2003, align 1
  %2005 = zext i8 %2004 to i64
  store i64 %2005, i64* %RDX.i2703, align 8
  %2006 = zext i8 %2004 to i32
  %2007 = zext i8 %1995 to i32
  %2008 = add nuw nsw i32 %2006, %2007
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2010 = and i32 %2008, 255
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %21, align 1
  %2015 = xor i8 %2004, %1995
  %2016 = zext i8 %2015 to i32
  %2017 = xor i32 %2016, %2008
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  store i8 %2020, i8* %27, align 1
  %2021 = icmp eq i32 %2008, 0
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2023 = add i64 %1797, -108
  %2024 = add i64 %1834, 21
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  store i32 %2008, i32* %2025, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_43d0a6

block_.L_43d0a6:                                  ; preds = %block_.L_43d091, %block_.L_43d086
  %2026 = phi i64 [ %.pre60, %block_.L_43d091 ], [ %1991, %block_.L_43d086 ]
  %2027 = load i64, i64* %RBP.i, align 8
  %2028 = add i64 %2027, -108
  %2029 = add i64 %2026, 3
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX.i2697, align 8
  %2033 = add i64 %2027, -112
  %2034 = add i64 %2026, 6
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  store i32 %2031, i32* %2035, align 4
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, 256
  store i64 %2037, i64* %3, align 8
  br label %block_.L_43d1ac

block_.L_43d0b1:                                  ; preds = %block_.L_43cfa3
  %2038 = add i64 %1644, 3
  %2039 = add i64 %1604, 26
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i8*
  %2041 = load i8, i8* %2040, align 1
  %2042 = zext i8 %2041 to i64
  store i64 %2042, i64* %RDX.i2703, align 8
  %2043 = add i64 %1640, -16
  %2044 = add i64 %1604, 30
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RAX.i2697, align 8
  %2047 = add i64 %1604, 33
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i8*
  %2049 = load i8, i8* %2048, align 1
  %2050 = zext i8 %2049 to i64
  store i64 %2050, i64* %RSI.i2706, align 8
  %2051 = zext i8 %2049 to i32
  %2052 = zext i8 %2041 to i32
  %2053 = add nuw nsw i32 %2051, %2052
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %2055 = and i32 %2053, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  %2060 = xor i8 %2049, %2041
  %2061 = zext i8 %2060 to i32
  %2062 = xor i32 %2061, %2053
  %2063 = lshr i32 %2062, 4
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  store i8 %2065, i8* %27, align 1
  %2066 = icmp eq i32 %2053, 0
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2068 = add i64 %1604, 39
  store i64 %2068, i64* %3, align 8
  %2069 = load i64, i64* %1643, align 8
  store i64 %2069, i64* %RAX.i2697, align 8
  %2070 = add i64 %2069, 2
  %2071 = add i64 %1604, 43
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i8*
  %2073 = load i8, i8* %2072, align 1
  %2074 = zext i8 %2073 to i64
  store i64 %2074, i64* %RSI.i2706, align 8
  %2075 = add i64 %1604, 47
  store i64 %2075, i64* %3, align 8
  %2076 = load i64, i64* %2045, align 8
  store i64 %2076, i64* %RAX.i2697, align 8
  %2077 = add i64 %2076, 1
  %2078 = add i64 %1604, 51
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i8*
  %2080 = load i8, i8* %2079, align 1
  %2081 = zext i8 %2080 to i64
  store i64 %2081, i64* %RDI.i2709, align 8
  %2082 = zext i8 %2080 to i32
  %2083 = zext i8 %2073 to i32
  %2084 = add nuw nsw i32 %2082, %2083
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RSI.i2706, align 8
  %2086 = sub nsw i32 %2053, %2084
  %2087 = icmp ult i32 %2053, %2084
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %14, align 1
  %2089 = and i32 %2086, 255
  %2090 = tail call i32 @llvm.ctpop.i32(i32 %2089)
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  store i8 %2093, i8* %21, align 1
  %2094 = xor i32 %2084, %2053
  %2095 = xor i32 %2094, %2086
  %2096 = lshr i32 %2095, 4
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  store i8 %2098, i8* %27, align 1
  %2099 = icmp eq i32 %2086, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %30, align 1
  %2101 = lshr i32 %2086, 31
  %2102 = trunc i32 %2101 to i8
  store i8 %2102, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2103 = load i64, i64* %RBP.i, align 8
  %2104 = add i64 %2103, -116
  %2105 = load i32, i32* %ECX.i2688, align 4
  %2106 = add i64 %1604, 58
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2104 to i32*
  store i32 %2105, i32* %2107, align 4
  %2108 = load i64, i64* %3, align 8
  %2109 = load i8, i8* %33, align 1
  %2110 = icmp ne i8 %2109, 0
  %2111 = load i8, i8* %39, align 1
  %2112 = icmp ne i8 %2111, 0
  %2113 = xor i1 %2110, %2112
  %.v124 = select i1 %2113, i64 6, i64 31
  %2114 = add i64 %2108, %.v124
  %2115 = load i64, i64* %RBP.i, align 8
  %2116 = add i64 %2115, -8
  %2117 = add i64 %2114, 4
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i64*
  %2119 = load i64, i64* %2118, align 8
  store i64 %2119, i64* %RAX.i2697, align 8
  br i1 %2113, label %block_43d0f1, label %block_.L_43d10a

block_43d0f1:                                     ; preds = %block_.L_43d0b1
  %2120 = add i64 %2119, 3
  %2121 = add i64 %2114, 8
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i8*
  %2123 = load i8, i8* %2122, align 1
  %2124 = zext i8 %2123 to i64
  store i64 %2124, i64* %RCX.i2691, align 8
  %2125 = add i64 %2115, -16
  %2126 = add i64 %2114, 12
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i64 %2128, i64* %RAX.i2697, align 8
  %2129 = add i64 %2114, 15
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i8*
  %2131 = load i8, i8* %2130, align 1
  %2132 = zext i8 %2131 to i64
  store i64 %2132, i64* %RDX.i2703, align 8
  %2133 = zext i8 %2131 to i32
  %2134 = zext i8 %2123 to i32
  %2135 = add nuw nsw i32 %2133, %2134
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2137 = and i32 %2135, 255
  %2138 = tail call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %21, align 1
  %2142 = xor i8 %2131, %2123
  %2143 = zext i8 %2142 to i32
  %2144 = xor i32 %2143, %2135
  %2145 = lshr i32 %2144, 4
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  store i8 %2147, i8* %27, align 1
  %2148 = icmp eq i32 %2135, 0
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2150 = add i64 %2115, -120
  %2151 = add i64 %2114, 20
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  store i32 %2135, i32* %2152, align 4
  %2153 = load i64, i64* %3, align 8
  %2154 = add i64 %2153, 26
  store i64 %2154, i64* %3, align 8
  br label %block_.L_43d11f

block_.L_43d10a:                                  ; preds = %block_.L_43d0b1
  %2155 = add i64 %2119, 2
  %2156 = add i64 %2114, 8
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i8*
  %2158 = load i8, i8* %2157, align 1
  %2159 = zext i8 %2158 to i64
  store i64 %2159, i64* %RCX.i2691, align 8
  %2160 = add i64 %2115, -16
  %2161 = add i64 %2114, 12
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i64*
  %2163 = load i64, i64* %2162, align 8
  store i64 %2163, i64* %RAX.i2697, align 8
  %2164 = add i64 %2163, 1
  %2165 = add i64 %2114, 16
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i8*
  %2167 = load i8, i8* %2166, align 1
  %2168 = zext i8 %2167 to i64
  store i64 %2168, i64* %RDX.i2703, align 8
  %2169 = zext i8 %2167 to i32
  %2170 = zext i8 %2158 to i32
  %2171 = add nuw nsw i32 %2169, %2170
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2173 = and i32 %2171, 255
  %2174 = tail call i32 @llvm.ctpop.i32(i32 %2173)
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  %2177 = xor i8 %2176, 1
  store i8 %2177, i8* %21, align 1
  %2178 = xor i8 %2167, %2158
  %2179 = zext i8 %2178 to i32
  %2180 = xor i32 %2179, %2171
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %27, align 1
  %2184 = icmp eq i32 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2186 = add i64 %2115, -120
  %2187 = add i64 %2114, 21
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  store i32 %2171, i32* %2188, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_43d11f

block_.L_43d11f:                                  ; preds = %block_.L_43d10a, %block_43d0f1
  %2189 = phi i64 [ %.pre55, %block_.L_43d10a ], [ %2154, %block_43d0f1 ]
  %2190 = load i64, i64* %RBP.i, align 8
  %2191 = add i64 %2190, -120
  %2192 = add i64 %2189, 3
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = zext i32 %2194 to i64
  store i64 %2195, i64* %RAX.i2697, align 8
  %2196 = add i64 %2190, -116
  %2197 = add i64 %2189, 6
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RCX.i2691, align 8
  %2201 = sub i32 %2199, %2194
  %2202 = icmp ult i32 %2199, %2194
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %14, align 1
  %2204 = and i32 %2201, 255
  %2205 = tail call i32 @llvm.ctpop.i32(i32 %2204)
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  %2208 = xor i8 %2207, 1
  store i8 %2208, i8* %21, align 1
  %2209 = xor i32 %2194, %2199
  %2210 = xor i32 %2209, %2201
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %27, align 1
  %2214 = icmp eq i32 %2201, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %30, align 1
  %2216 = lshr i32 %2201, 31
  %2217 = trunc i32 %2216 to i8
  store i8 %2217, i8* %33, align 1
  %2218 = lshr i32 %2199, 31
  %2219 = lshr i32 %2194, 31
  %2220 = xor i32 %2219, %2218
  %2221 = xor i32 %2216, %2218
  %2222 = add nuw nsw i32 %2221, %2220
  %2223 = icmp eq i32 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %39, align 1
  %2225 = icmp ne i8 %2217, 0
  %2226 = xor i1 %2225, %2223
  %.v91 = select i1 %2226, i64 14, i64 114
  %2227 = add i64 %2189, %.v91
  %2228 = add i64 %2190, -8
  %2229 = add i64 %2227, 4
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i64*
  %2231 = load i64, i64* %2230, align 8
  store i64 %2231, i64* %RAX.i2697, align 8
  br i1 %2226, label %block_43d12d, label %block_.L_43d191

block_43d12d:                                     ; preds = %block_.L_43d11f
  %2232 = add i64 %2231, 3
  %2233 = add i64 %2227, 8
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i8*
  %2235 = load i8, i8* %2234, align 1
  %2236 = zext i8 %2235 to i64
  store i64 %2236, i64* %RCX.i2691, align 8
  %2237 = add i64 %2190, -16
  %2238 = add i64 %2227, 12
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  store i64 %2240, i64* %RAX.i2697, align 8
  %2241 = add i64 %2227, 15
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i8*
  %2243 = load i8, i8* %2242, align 1
  %2244 = zext i8 %2243 to i64
  store i64 %2244, i64* %RDX.i2703, align 8
  %2245 = zext i8 %2243 to i32
  %2246 = zext i8 %2235 to i32
  %2247 = add nuw nsw i32 %2245, %2246
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2249 = and i32 %2247, 255
  %2250 = tail call i32 @llvm.ctpop.i32(i32 %2249)
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  %2253 = xor i8 %2252, 1
  store i8 %2253, i8* %21, align 1
  %2254 = xor i8 %2243, %2235
  %2255 = zext i8 %2254 to i32
  %2256 = xor i32 %2255, %2247
  %2257 = lshr i32 %2256, 4
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  store i8 %2259, i8* %27, align 1
  %2260 = icmp eq i32 %2247, 0
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2262 = add i64 %2227, 21
  store i64 %2262, i64* %3, align 8
  %2263 = load i64, i64* %2230, align 8
  store i64 %2263, i64* %RAX.i2697, align 8
  %2264 = add i64 %2263, 2
  %2265 = add i64 %2227, 25
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i8*
  %2267 = load i8, i8* %2266, align 1
  %2268 = zext i8 %2267 to i64
  store i64 %2268, i64* %RDX.i2703, align 8
  %2269 = add i64 %2227, 29
  store i64 %2269, i64* %3, align 8
  %2270 = load i64, i64* %2239, align 8
  store i64 %2270, i64* %RAX.i2697, align 8
  %2271 = add i64 %2270, 1
  %2272 = add i64 %2227, 33
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i8*
  %2274 = load i8, i8* %2273, align 1
  %2275 = zext i8 %2274 to i64
  store i64 %2275, i64* %RSI.i2706, align 8
  %2276 = zext i8 %2274 to i32
  %2277 = zext i8 %2267 to i32
  %2278 = add nuw nsw i32 %2276, %2277
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RDX.i2703, align 8
  %2280 = sub nsw i32 %2247, %2278
  %2281 = icmp ult i32 %2247, %2278
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %14, align 1
  %2283 = and i32 %2280, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i32 %2278, %2247
  %2289 = xor i32 %2288, %2280
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
  store i8 0, i8* %39, align 1
  %2297 = icmp ne i8 %2296, 0
  %.v116 = select i1 %2297, i64 43, i64 68
  %2298 = add i64 %2227, %.v116
  %2299 = load i64, i64* %RBP.i, align 8
  %2300 = add i64 %2299, -8
  %2301 = add i64 %2298, 4
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i64*
  %2303 = load i64, i64* %2302, align 8
  store i64 %2303, i64* %RAX.i2697, align 8
  br i1 %2297, label %block_43d158, label %block_.L_43d171

block_43d158:                                     ; preds = %block_43d12d
  %2304 = add i64 %2303, 3
  %2305 = add i64 %2298, 8
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i8*
  %2307 = load i8, i8* %2306, align 1
  %2308 = zext i8 %2307 to i64
  store i64 %2308, i64* %RCX.i2691, align 8
  %2309 = add i64 %2299, -16
  %2310 = add i64 %2298, 12
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RAX.i2697, align 8
  %2313 = add i64 %2298, 15
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i8*
  %2315 = load i8, i8* %2314, align 1
  %2316 = zext i8 %2315 to i64
  store i64 %2316, i64* %RDX.i2703, align 8
  %2317 = zext i8 %2315 to i32
  %2318 = zext i8 %2307 to i32
  %2319 = add nuw nsw i32 %2317, %2318
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2321 = and i32 %2319, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i8 %2315, %2307
  %2327 = zext i8 %2326 to i32
  %2328 = xor i32 %2327, %2319
  %2329 = lshr i32 %2328, 4
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  store i8 %2331, i8* %27, align 1
  %2332 = icmp eq i32 %2319, 0
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2334 = add i64 %2299, -124
  %2335 = add i64 %2298, 20
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  store i32 %2319, i32* %2336, align 4
  %2337 = load i64, i64* %3, align 8
  %2338 = add i64 %2337, 26
  store i64 %2338, i64* %3, align 8
  br label %block_.L_43d186

block_.L_43d171:                                  ; preds = %block_43d12d
  %2339 = add i64 %2303, 2
  %2340 = add i64 %2298, 8
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i8*
  %2342 = load i8, i8* %2341, align 1
  %2343 = zext i8 %2342 to i64
  store i64 %2343, i64* %RCX.i2691, align 8
  %2344 = add i64 %2299, -16
  %2345 = add i64 %2298, 12
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i64*
  %2347 = load i64, i64* %2346, align 8
  store i64 %2347, i64* %RAX.i2697, align 8
  %2348 = add i64 %2347, 1
  %2349 = add i64 %2298, 16
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i8*
  %2351 = load i8, i8* %2350, align 1
  %2352 = zext i8 %2351 to i64
  store i64 %2352, i64* %RDX.i2703, align 8
  %2353 = zext i8 %2351 to i32
  %2354 = zext i8 %2342 to i32
  %2355 = add nuw nsw i32 %2353, %2354
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2357 = and i32 %2355, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  %2362 = xor i8 %2351, %2342
  %2363 = zext i8 %2362 to i32
  %2364 = xor i32 %2363, %2355
  %2365 = lshr i32 %2364, 4
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  store i8 %2367, i8* %27, align 1
  %2368 = icmp eq i32 %2355, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2370 = add i64 %2299, -124
  %2371 = add i64 %2298, 21
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  store i32 %2355, i32* %2372, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_43d186

block_.L_43d186:                                  ; preds = %block_.L_43d171, %block_43d158
  %2373 = phi i64 [ %.pre56, %block_.L_43d171 ], [ %2338, %block_43d158 ]
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -124
  %2376 = add i64 %2373, 3
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  %2378 = load i32, i32* %2377, align 4
  %2379 = zext i32 %2378 to i64
  store i64 %2379, i64* %RAX.i2697, align 8
  %2380 = add i64 %2374, -128
  %2381 = add i64 %2373, 6
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i32*
  store i32 %2378, i32* %2382, align 4
  %2383 = load i64, i64* %3, align 8
  %2384 = add i64 %2383, 26
  store i64 %2384, i64* %3, align 8
  br label %block_.L_43d1a6

block_.L_43d191:                                  ; preds = %block_.L_43d11f
  %2385 = add i64 %2231, 1
  %2386 = add i64 %2227, 8
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i8*
  %2388 = load i8, i8* %2387, align 1
  %2389 = zext i8 %2388 to i64
  store i64 %2389, i64* %RCX.i2691, align 8
  %2390 = add i64 %2190, -16
  %2391 = add i64 %2227, 12
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i64*
  %2393 = load i64, i64* %2392, align 8
  store i64 %2393, i64* %RAX.i2697, align 8
  %2394 = add i64 %2393, 1
  %2395 = add i64 %2227, 16
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i8*
  %2397 = load i8, i8* %2396, align 1
  %2398 = zext i8 %2397 to i64
  store i64 %2398, i64* %RDX.i2703, align 8
  %2399 = zext i8 %2397 to i32
  %2400 = zext i8 %2388 to i32
  %2401 = add nuw nsw i32 %2399, %2400
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2403 = and i32 %2401, 255
  %2404 = tail call i32 @llvm.ctpop.i32(i32 %2403)
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  store i8 %2407, i8* %21, align 1
  %2408 = xor i8 %2397, %2388
  %2409 = zext i8 %2408 to i32
  %2410 = xor i32 %2409, %2401
  %2411 = lshr i32 %2410, 4
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  store i8 %2413, i8* %27, align 1
  %2414 = icmp eq i32 %2401, 0
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2416 = add i64 %2190, -128
  %2417 = add i64 %2227, 21
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  store i32 %2401, i32* %2418, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_43d1a6

block_.L_43d1a6:                                  ; preds = %block_.L_43d191, %block_.L_43d186
  %2419 = phi i64 [ %.pre57, %block_.L_43d191 ], [ %2384, %block_.L_43d186 ]
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -128
  %2422 = add i64 %2419, 3
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  %2424 = load i32, i32* %2423, align 4
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RAX.i2697, align 8
  %2426 = add i64 %2420, -112
  %2427 = add i64 %2419, 6
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i32*
  store i32 %2424, i32* %2428, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_43d1ac

block_.L_43d1ac:                                  ; preds = %block_.L_43d1a6, %block_.L_43d0a6
  %2429 = phi i64 [ %.pre61, %block_.L_43d1a6 ], [ %2037, %block_.L_43d0a6 ]
  %2430 = load i64, i64* %RBP.i, align 8
  %2431 = add i64 %2430, -112
  %2432 = add i64 %2429, 3
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = zext i32 %2434 to i64
  store i64 %2435, i64* %RAX.i2697, align 8
  %2436 = trunc i32 %2434 to i8
  store i8 %2436, i8* %CL.i2385, align 1
  %2437 = add i64 %2430, -31
  %2438 = add i64 %2429, 8
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i8*
  store i8 %2436, i8* %2439, align 1
  %2440 = load i64, i64* %RBP.i, align 8
  %2441 = add i64 %2440, -8
  %2442 = load i64, i64* %3, align 8
  %2443 = add i64 %2442, 4
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444, align 8
  store i64 %2445, i64* %RDX.i2703, align 8
  %2446 = add i64 %2445, 2
  %2447 = add i64 %2442, 8
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i8*
  %2449 = load i8, i8* %2448, align 1
  %2450 = zext i8 %2449 to i64
  store i64 %2450, i64* %RAX.i2697, align 8
  %2451 = add i64 %2440, -16
  %2452 = add i64 %2442, 12
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i64*
  %2454 = load i64, i64* %2453, align 8
  store i64 %2454, i64* %RDX.i2703, align 8
  %2455 = add i64 %2454, 2
  %2456 = add i64 %2442, 16
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i8*
  %2458 = load i8, i8* %2457, align 1
  %2459 = zext i8 %2458 to i64
  store i64 %2459, i64* %RSI.i2706, align 8
  %2460 = zext i8 %2458 to i32
  %2461 = zext i8 %2449 to i32
  %2462 = add nuw nsw i32 %2460, %2461
  %2463 = zext i32 %2462 to i64
  store i64 %2463, i64* %RAX.i2697, align 8
  store i8 0, i8* %14, align 1
  %2464 = and i32 %2462, 255
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1
  %2469 = xor i8 %2458, %2449
  %2470 = zext i8 %2469 to i32
  %2471 = xor i32 %2470, %2462
  %2472 = lshr i32 %2471, 4
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  store i8 %2474, i8* %27, align 1
  %2475 = icmp eq i32 %2462, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2477 = add i64 %2442, 22
  store i64 %2477, i64* %3, align 8
  %2478 = load i64, i64* %2444, align 8
  store i64 %2478, i64* %RDX.i2703, align 8
  %2479 = add i64 %2478, 3
  %2480 = add i64 %2442, 26
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i8*
  %2482 = load i8, i8* %2481, align 1
  %2483 = zext i8 %2482 to i64
  store i64 %2483, i64* %RSI.i2706, align 8
  %2484 = add i64 %2442, 30
  store i64 %2484, i64* %3, align 8
  %2485 = load i64, i64* %2453, align 8
  store i64 %2485, i64* %RDX.i2703, align 8
  %2486 = add i64 %2442, 33
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i8*
  %2488 = load i8, i8* %2487, align 1
  %2489 = zext i8 %2488 to i64
  store i64 %2489, i64* %RDI.i2709, align 8
  %2490 = zext i8 %2488 to i32
  %2491 = zext i8 %2482 to i32
  %2492 = add nuw nsw i32 %2490, %2491
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RSI.i2706, align 8
  store i8 0, i8* %14, align 1
  %2494 = and i32 %2492, 255
  %2495 = tail call i32 @llvm.ctpop.i32(i32 %2494)
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  %2498 = xor i8 %2497, 1
  store i8 %2498, i8* %21, align 1
  %2499 = xor i8 %2488, %2482
  %2500 = zext i8 %2499 to i32
  %2501 = xor i32 %2500, %2492
  %2502 = lshr i32 %2501, 4
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %27, align 1
  %2505 = icmp eq i32 %2492, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -8
  %2509 = add i64 %2442, 39
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i64*
  %2511 = load i64, i64* %2510, align 8
  store i64 %2511, i64* %RDX.i2703, align 8
  %2512 = add i64 %2511, 2
  %2513 = add i64 %2442, 43
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i8*
  %2515 = load i8, i8* %2514, align 1
  %2516 = zext i8 %2515 to i64
  store i64 %2516, i64* %RDI.i2709, align 8
  %2517 = add i64 %2507, -16
  %2518 = add i64 %2442, 47
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i64*
  %2520 = load i64, i64* %2519, align 8
  store i64 %2520, i64* %RDX.i2703, align 8
  %2521 = add i64 %2520, 1
  %2522 = add i64 %2442, 52
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i8*
  %2524 = load i8, i8* %2523, align 1
  %2525 = zext i8 %2524 to i64
  store i64 %2525, i64* %104, align 8
  %2526 = zext i8 %2524 to i32
  %2527 = zext i8 %2515 to i32
  %2528 = add nuw nsw i32 %2526, %2527
  %2529 = zext i32 %2528 to i64
  store i64 %2529, i64* %RDI.i2709, align 8
  %2530 = sub nsw i32 %2492, %2528
  %2531 = icmp ult i32 %2492, %2528
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %14, align 1
  %2533 = and i32 %2530, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  %2538 = xor i32 %2528, %2492
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
  store i8 0, i8* %39, align 1
  %2547 = add i64 %2507, -132
  %2548 = load i32, i32* %EAX.i2670, align 4
  %2549 = add i64 %2442, 63
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2547 to i32*
  store i32 %2548, i32* %2550, align 4
  %2551 = load i64, i64* %3, align 8
  %2552 = load i8, i8* %33, align 1
  %2553 = icmp ne i8 %2552, 0
  %2554 = load i8, i8* %39, align 1
  %2555 = icmp ne i8 %2554, 0
  %2556 = xor i1 %2553, %2555
  %.v125 = select i1 %2556, i64 6, i64 35
  %2557 = add i64 %2551, %.v125
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -8
  %2560 = add i64 %2557, 4
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RAX.i2697, align 8
  br i1 %2556, label %block_43d1f9, label %block_.L_43d216

block_43d1f9:                                     ; preds = %block_.L_43d1ac
  %2563 = add i64 %2562, 2
  %2564 = add i64 %2557, 8
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i8*
  %2566 = load i8, i8* %2565, align 1
  %2567 = zext i8 %2566 to i64
  store i64 %2567, i64* %RCX.i2691, align 8
  %2568 = add i64 %2558, -16
  %2569 = add i64 %2557, 12
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i64 %2571, i64* %RAX.i2697, align 8
  %2572 = add i64 %2571, 1
  %2573 = add i64 %2557, 16
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i8*
  %2575 = load i8, i8* %2574, align 1
  %2576 = zext i8 %2575 to i64
  store i64 %2576, i64* %RDX.i2703, align 8
  %2577 = zext i8 %2575 to i32
  %2578 = zext i8 %2566 to i32
  %2579 = add nuw nsw i32 %2577, %2578
  %2580 = zext i32 %2579 to i64
  store i64 %2580, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2581 = and i32 %2579, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %21, align 1
  %2586 = xor i8 %2575, %2566
  %2587 = zext i8 %2586 to i32
  %2588 = xor i32 %2587, %2579
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %27, align 1
  %2592 = icmp eq i32 %2579, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2594 = add i64 %2558, -136
  %2595 = add i64 %2557, 24
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  store i32 %2579, i32* %2596, align 4
  %2597 = load i64, i64* %3, align 8
  %2598 = add i64 %2597, 28
  store i64 %2598, i64* %3, align 8
  br label %block_.L_43d22d

block_.L_43d216:                                  ; preds = %block_.L_43d1ac
  %2599 = add i64 %2562, 3
  %2600 = add i64 %2557, 8
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i8*
  %2602 = load i8, i8* %2601, align 1
  %2603 = zext i8 %2602 to i64
  store i64 %2603, i64* %RCX.i2691, align 8
  %2604 = add i64 %2558, -16
  %2605 = add i64 %2557, 12
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i64*
  %2607 = load i64, i64* %2606, align 8
  store i64 %2607, i64* %RAX.i2697, align 8
  %2608 = add i64 %2557, 15
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i8*
  %2610 = load i8, i8* %2609, align 1
  %2611 = zext i8 %2610 to i64
  store i64 %2611, i64* %RDX.i2703, align 8
  %2612 = zext i8 %2610 to i32
  %2613 = zext i8 %2602 to i32
  %2614 = add nuw nsw i32 %2612, %2613
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2616 = and i32 %2614, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %21, align 1
  %2621 = xor i8 %2610, %2602
  %2622 = zext i8 %2621 to i32
  %2623 = xor i32 %2622, %2614
  %2624 = lshr i32 %2623, 4
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  store i8 %2626, i8* %27, align 1
  %2627 = icmp eq i32 %2614, 0
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2629 = add i64 %2558, -136
  %2630 = add i64 %2557, 23
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  store i32 %2614, i32* %2631, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_43d22d

block_.L_43d22d:                                  ; preds = %block_.L_43d216, %block_43d1f9
  %2632 = phi i64 [ %.pre62, %block_.L_43d216 ], [ %2598, %block_43d1f9 ]
  %2633 = load i64, i64* %RBP.i, align 8
  %2634 = add i64 %2633, -136
  %2635 = add i64 %2632, 6
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RAX.i2697, align 8
  %2639 = add i64 %2633, -132
  %2640 = add i64 %2632, 12
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RCX.i2691, align 8
  %2644 = sub i32 %2642, %2637
  %2645 = icmp ult i32 %2642, %2637
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %14, align 1
  %2647 = and i32 %2644, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %21, align 1
  %2652 = xor i32 %2637, %2642
  %2653 = xor i32 %2652, %2644
  %2654 = lshr i32 %2653, 4
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  store i8 %2656, i8* %27, align 1
  %2657 = icmp eq i32 %2644, 0
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %30, align 1
  %2659 = lshr i32 %2644, 31
  %2660 = trunc i32 %2659 to i8
  store i8 %2660, i8* %33, align 1
  %2661 = lshr i32 %2642, 31
  %2662 = lshr i32 %2637, 31
  %2663 = xor i32 %2662, %2661
  %2664 = xor i32 %2659, %2661
  %2665 = add nuw nsw i32 %2664, %2663
  %2666 = icmp eq i32 %2665, 2
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %39, align 1
  %2668 = icmp ne i8 %2660, 0
  %2669 = xor i1 %2668, %2666
  %.v92 = select i1 %2669, i64 20, i64 49
  %2670 = add i64 %2632, %.v92
  %2671 = add i64 %2633, -8
  %2672 = add i64 %2670, 4
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i64*
  %2674 = load i64, i64* %2673, align 8
  store i64 %2674, i64* %RAX.i2697, align 8
  br i1 %2669, label %block_43d241, label %block_.L_43d25e

block_43d241:                                     ; preds = %block_.L_43d22d
  %2675 = add i64 %2674, 2
  %2676 = add i64 %2670, 8
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i8*
  %2678 = load i8, i8* %2677, align 1
  %2679 = zext i8 %2678 to i64
  store i64 %2679, i64* %RCX.i2691, align 8
  %2680 = add i64 %2633, -16
  %2681 = add i64 %2670, 12
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i64*
  %2683 = load i64, i64* %2682, align 8
  store i64 %2683, i64* %RAX.i2697, align 8
  %2684 = add i64 %2683, 2
  %2685 = add i64 %2670, 16
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i8*
  %2687 = load i8, i8* %2686, align 1
  %2688 = zext i8 %2687 to i64
  store i64 %2688, i64* %RDX.i2703, align 8
  %2689 = zext i8 %2687 to i32
  %2690 = zext i8 %2678 to i32
  %2691 = add nuw nsw i32 %2689, %2690
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2693 = and i32 %2691, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %21, align 1
  %2698 = xor i8 %2687, %2678
  %2699 = zext i8 %2698 to i32
  %2700 = xor i32 %2699, %2691
  %2701 = lshr i32 %2700, 4
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %27, align 1
  %2704 = icmp eq i32 %2691, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2706 = add i64 %2633, -140
  %2707 = add i64 %2670, 24
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  store i32 %2691, i32* %2708, align 4
  %2709 = load i64, i64* %3, align 8
  %2710 = add i64 %2709, 112
  store i64 %2710, i64* %3, align 8
  br label %block_.L_43d2c9

block_.L_43d25e:                                  ; preds = %block_.L_43d22d
  %2711 = add i64 %2674, 3
  %2712 = add i64 %2670, 8
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i8*
  %2714 = load i8, i8* %2713, align 1
  %2715 = zext i8 %2714 to i64
  store i64 %2715, i64* %RCX.i2691, align 8
  %2716 = add i64 %2633, -16
  %2717 = add i64 %2670, 12
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i64*
  %2719 = load i64, i64* %2718, align 8
  store i64 %2719, i64* %RAX.i2697, align 8
  %2720 = add i64 %2670, 15
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i8*
  %2722 = load i8, i8* %2721, align 1
  %2723 = zext i8 %2722 to i64
  store i64 %2723, i64* %RDX.i2703, align 8
  %2724 = zext i8 %2722 to i32
  %2725 = zext i8 %2714 to i32
  %2726 = add nuw nsw i32 %2724, %2725
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2728 = and i32 %2726, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i8 %2722, %2714
  %2734 = zext i8 %2733 to i32
  %2735 = xor i32 %2734, %2726
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %27, align 1
  %2739 = icmp eq i32 %2726, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2741 = add i64 %2670, 21
  store i64 %2741, i64* %3, align 8
  %2742 = load i64, i64* %2673, align 8
  store i64 %2742, i64* %RAX.i2697, align 8
  %2743 = add i64 %2742, 2
  %2744 = add i64 %2670, 25
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i8*
  %2746 = load i8, i8* %2745, align 1
  %2747 = zext i8 %2746 to i64
  store i64 %2747, i64* %RDX.i2703, align 8
  %2748 = add i64 %2670, 29
  store i64 %2748, i64* %3, align 8
  %2749 = load i64, i64* %2718, align 8
  store i64 %2749, i64* %RAX.i2697, align 8
  %2750 = add i64 %2749, 1
  %2751 = add i64 %2670, 33
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i8*
  %2753 = load i8, i8* %2752, align 1
  %2754 = zext i8 %2753 to i64
  store i64 %2754, i64* %RSI.i2706, align 8
  %2755 = zext i8 %2753 to i32
  %2756 = zext i8 %2746 to i32
  %2757 = add nuw nsw i32 %2755, %2756
  %2758 = zext i32 %2757 to i64
  store i64 %2758, i64* %RDX.i2703, align 8
  %2759 = sub nsw i32 %2726, %2757
  %2760 = icmp ult i32 %2726, %2757
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %14, align 1
  %2762 = and i32 %2759, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %21, align 1
  %2767 = xor i32 %2757, %2726
  %2768 = xor i32 %2767, %2759
  %2769 = lshr i32 %2768, 4
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  store i8 %2771, i8* %27, align 1
  %2772 = icmp eq i32 %2759, 0
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %30, align 1
  %2774 = lshr i32 %2759, 31
  %2775 = trunc i32 %2774 to i8
  store i8 %2775, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2776 = icmp ne i8 %2775, 0
  %.v102 = select i1 %2776, i64 43, i64 72
  %2777 = add i64 %2670, %.v102
  %2778 = load i64, i64* %RBP.i, align 8
  %2779 = add i64 %2778, -8
  %2780 = add i64 %2777, 4
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i64*
  %2782 = load i64, i64* %2781, align 8
  store i64 %2782, i64* %RAX.i2697, align 8
  br i1 %2776, label %block_43d289, label %block_.L_43d2a6

block_43d289:                                     ; preds = %block_.L_43d25e
  %2783 = add i64 %2782, 2
  %2784 = add i64 %2777, 8
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i8*
  %2786 = load i8, i8* %2785, align 1
  %2787 = zext i8 %2786 to i64
  store i64 %2787, i64* %RCX.i2691, align 8
  %2788 = add i64 %2778, -16
  %2789 = add i64 %2777, 12
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i64*
  %2791 = load i64, i64* %2790, align 8
  store i64 %2791, i64* %RAX.i2697, align 8
  %2792 = add i64 %2791, 1
  %2793 = add i64 %2777, 16
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i8*
  %2795 = load i8, i8* %2794, align 1
  %2796 = zext i8 %2795 to i64
  store i64 %2796, i64* %RDX.i2703, align 8
  %2797 = zext i8 %2795 to i32
  %2798 = zext i8 %2786 to i32
  %2799 = add nuw nsw i32 %2797, %2798
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2801 = and i32 %2799, 255
  %2802 = tail call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  store i8 %2805, i8* %21, align 1
  %2806 = xor i8 %2795, %2786
  %2807 = zext i8 %2806 to i32
  %2808 = xor i32 %2807, %2799
  %2809 = lshr i32 %2808, 4
  %2810 = trunc i32 %2809 to i8
  %2811 = and i8 %2810, 1
  store i8 %2811, i8* %27, align 1
  %2812 = icmp eq i32 %2799, 0
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2814 = add i64 %2778, -144
  %2815 = add i64 %2777, 24
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  store i32 %2799, i32* %2816, align 4
  %2817 = load i64, i64* %3, align 8
  %2818 = add i64 %2817, 28
  store i64 %2818, i64* %3, align 8
  br label %block_.L_43d2bd

block_.L_43d2a6:                                  ; preds = %block_.L_43d25e
  %2819 = add i64 %2782, 3
  %2820 = add i64 %2777, 8
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i8*
  %2822 = load i8, i8* %2821, align 1
  %2823 = zext i8 %2822 to i64
  store i64 %2823, i64* %RCX.i2691, align 8
  %2824 = add i64 %2778, -16
  %2825 = add i64 %2777, 12
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i64*
  %2827 = load i64, i64* %2826, align 8
  store i64 %2827, i64* %RAX.i2697, align 8
  %2828 = add i64 %2777, 15
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i8*
  %2830 = load i8, i8* %2829, align 1
  %2831 = zext i8 %2830 to i64
  store i64 %2831, i64* %RDX.i2703, align 8
  %2832 = zext i8 %2830 to i32
  %2833 = zext i8 %2822 to i32
  %2834 = add nuw nsw i32 %2832, %2833
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %2836 = and i32 %2834, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %21, align 1
  %2841 = xor i8 %2830, %2822
  %2842 = zext i8 %2841 to i32
  %2843 = xor i32 %2842, %2834
  %2844 = lshr i32 %2843, 4
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %27, align 1
  %2847 = icmp eq i32 %2834, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2849 = add i64 %2778, -144
  %2850 = add i64 %2777, 23
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i32*
  store i32 %2834, i32* %2851, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_43d2bd

block_.L_43d2bd:                                  ; preds = %block_.L_43d2a6, %block_43d289
  %2852 = phi i64 [ %.pre63, %block_.L_43d2a6 ], [ %2818, %block_43d289 ]
  %2853 = load i64, i64* %RBP.i, align 8
  %2854 = add i64 %2853, -144
  %2855 = add i64 %2852, 6
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  %2857 = load i32, i32* %2856, align 4
  %2858 = zext i32 %2857 to i64
  store i64 %2858, i64* %RAX.i2697, align 8
  %2859 = add i64 %2853, -140
  %2860 = add i64 %2852, 12
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  store i32 %2857, i32* %2861, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_43d2c9

block_.L_43d2c9:                                  ; preds = %block_.L_43d2bd, %block_43d241
  %2862 = phi i64 [ %.pre64, %block_.L_43d2bd ], [ %2710, %block_43d241 ]
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -140
  %2865 = add i64 %2862, 6
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RAX.i2697, align 8
  %2869 = add i64 %2863, -8
  %2870 = add i64 %2862, 10
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i64*
  %2872 = load i64, i64* %2871, align 8
  store i64 %2872, i64* %RCX.i2691, align 8
  %2873 = add i64 %2872, 2
  %2874 = add i64 %2862, 14
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i8*
  %2876 = load i8, i8* %2875, align 1
  %2877 = zext i8 %2876 to i64
  store i64 %2877, i64* %RDX.i2703, align 8
  %2878 = add i64 %2863, -16
  %2879 = add i64 %2862, 18
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i64*
  %2881 = load i64, i64* %2880, align 8
  store i64 %2881, i64* %RCX.i2691, align 8
  %2882 = add i64 %2881, 2
  %2883 = add i64 %2862, 22
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i8*
  %2885 = load i8, i8* %2884, align 1
  %2886 = zext i8 %2885 to i64
  store i64 %2886, i64* %RSI.i2706, align 8
  %2887 = zext i8 %2885 to i32
  %2888 = zext i8 %2876 to i32
  %2889 = add nuw nsw i32 %2887, %2888
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %2891 = and i32 %2889, 255
  %2892 = tail call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  store i8 %2895, i8* %21, align 1
  %2896 = xor i8 %2885, %2876
  %2897 = zext i8 %2896 to i32
  %2898 = xor i32 %2897, %2889
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %27, align 1
  %2902 = icmp eq i32 %2889, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2904 = add i64 %2862, 28
  store i64 %2904, i64* %3, align 8
  %2905 = load i64, i64* %2871, align 8
  store i64 %2905, i64* %RCX.i2691, align 8
  %2906 = add i64 %2862, 31
  store i64 %2906, i64* %3, align 8
  %2907 = inttoptr i64 %2905 to i8*
  %2908 = load i8, i8* %2907, align 1
  %2909 = zext i8 %2908 to i64
  store i64 %2909, i64* %RSI.i2706, align 8
  %2910 = add i64 %2862, 35
  store i64 %2910, i64* %3, align 8
  %2911 = load i64, i64* %2880, align 8
  store i64 %2911, i64* %RCX.i2691, align 8
  %2912 = add i64 %2911, 3
  %2913 = add i64 %2862, 39
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i8*
  %2915 = load i8, i8* %2914, align 1
  %2916 = zext i8 %2915 to i64
  store i64 %2916, i64* %RDI.i2709, align 8
  %2917 = zext i8 %2915 to i32
  %2918 = zext i8 %2908 to i32
  %2919 = add nuw nsw i32 %2917, %2918
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RSI.i2706, align 8
  store i8 0, i8* %14, align 1
  %2921 = and i32 %2919, 255
  %2922 = tail call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = xor i8 %2924, 1
  store i8 %2925, i8* %21, align 1
  %2926 = xor i8 %2915, %2908
  %2927 = zext i8 %2926 to i32
  %2928 = xor i32 %2927, %2919
  %2929 = lshr i32 %2928, 4
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  store i8 %2931, i8* %27, align 1
  %2932 = icmp eq i32 %2919, 0
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2934 = load i64, i64* %RBP.i, align 8
  %2935 = add i64 %2934, -8
  %2936 = add i64 %2862, 45
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i64*
  %2938 = load i64, i64* %2937, align 8
  store i64 %2938, i64* %RCX.i2691, align 8
  %2939 = add i64 %2938, 1
  %2940 = add i64 %2862, 49
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i8*
  %2942 = load i8, i8* %2941, align 1
  %2943 = zext i8 %2942 to i64
  store i64 %2943, i64* %RDI.i2709, align 8
  %2944 = add i64 %2934, -16
  %2945 = add i64 %2862, 53
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RCX.i2691, align 8
  %2948 = add i64 %2947, 2
  %2949 = add i64 %2862, 58
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i8*
  %2951 = load i8, i8* %2950, align 1
  %2952 = zext i8 %2951 to i64
  store i64 %2952, i64* %104, align 8
  %2953 = zext i8 %2951 to i32
  %2954 = zext i8 %2942 to i32
  %2955 = add nuw nsw i32 %2953, %2954
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RDI.i2709, align 8
  %2957 = sub nsw i32 %2919, %2955
  %2958 = icmp ult i32 %2919, %2955
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %14, align 1
  %2960 = and i32 %2957, 255
  %2961 = tail call i32 @llvm.ctpop.i32(i32 %2960)
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  store i8 %2964, i8* %21, align 1
  %2965 = xor i32 %2955, %2919
  %2966 = xor i32 %2965, %2957
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  store i8 %2969, i8* %27, align 1
  %2970 = icmp eq i32 %2957, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %30, align 1
  %2972 = lshr i32 %2957, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2974 = add i64 %2934, -148
  %2975 = load i32, i32* %EAX.i2670, align 4
  %2976 = add i64 %2862, 69
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2974 to i32*
  store i32 %2975, i32* %2977, align 4
  %2978 = load i64, i64* %RBP.i, align 8
  %2979 = add i64 %2978, -152
  %2980 = load i32, i32* %EDX.i2596.pre-phi, align 4
  %2981 = load i64, i64* %3, align 8
  %2982 = add i64 %2981, 6
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2979 to i32*
  store i32 %2980, i32* %2983, align 4
  %2984 = load i64, i64* %3, align 8
  %2985 = load i8, i8* %33, align 1
  %2986 = icmp ne i8 %2985, 0
  %2987 = load i8, i8* %39, align 1
  %2988 = icmp ne i8 %2987, 0
  %2989 = xor i1 %2986, %2988
  %.v126 = select i1 %2989, i64 6, i64 35
  %2990 = add i64 %2984, %.v126
  %2991 = load i64, i64* %RBP.i, align 8
  %2992 = add i64 %2991, -8
  %2993 = add i64 %2990, 4
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i64*
  %2995 = load i64, i64* %2994, align 8
  store i64 %2995, i64* %RAX.i2697, align 8
  br i1 %2989, label %block_43d31a, label %block_.L_43d337

block_43d31a:                                     ; preds = %block_.L_43d2c9
  %2996 = add i64 %2995, 1
  %2997 = add i64 %2990, 8
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i8*
  %2999 = load i8, i8* %2998, align 1
  %3000 = zext i8 %2999 to i64
  store i64 %3000, i64* %RCX.i2691, align 8
  %3001 = add i64 %2991, -16
  %3002 = add i64 %2990, 12
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RAX.i2697, align 8
  %3005 = add i64 %3004, 2
  %3006 = add i64 %2990, 16
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3005 to i8*
  %3008 = load i8, i8* %3007, align 1
  %3009 = zext i8 %3008 to i64
  store i64 %3009, i64* %RDX.i2703, align 8
  %3010 = zext i8 %3008 to i32
  %3011 = zext i8 %2999 to i32
  %3012 = add nuw nsw i32 %3010, %3011
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3014 = and i32 %3012, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %21, align 1
  %3019 = xor i8 %3008, %2999
  %3020 = zext i8 %3019 to i32
  %3021 = xor i32 %3020, %3012
  %3022 = lshr i32 %3021, 4
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  store i8 %3024, i8* %27, align 1
  %3025 = icmp eq i32 %3012, 0
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3027 = add i64 %2991, -156
  %3028 = add i64 %2990, 24
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i32*
  store i32 %3012, i32* %3029, align 4
  %3030 = load i64, i64* %3, align 8
  %3031 = add i64 %3030, 28
  store i64 %3031, i64* %3, align 8
  br label %block_.L_43d34e

block_.L_43d337:                                  ; preds = %block_.L_43d2c9
  %3032 = add i64 %2990, 7
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %2995 to i8*
  %3034 = load i8, i8* %3033, align 1
  %3035 = zext i8 %3034 to i64
  store i64 %3035, i64* %RCX.i2691, align 8
  %3036 = add i64 %2991, -16
  %3037 = add i64 %2990, 11
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i64*
  %3039 = load i64, i64* %3038, align 8
  store i64 %3039, i64* %RAX.i2697, align 8
  %3040 = add i64 %3039, 3
  %3041 = add i64 %2990, 15
  store i64 %3041, i64* %3, align 8
  %3042 = inttoptr i64 %3040 to i8*
  %3043 = load i8, i8* %3042, align 1
  %3044 = zext i8 %3043 to i64
  store i64 %3044, i64* %RDX.i2703, align 8
  %3045 = zext i8 %3043 to i32
  %3046 = zext i8 %3034 to i32
  %3047 = add nuw nsw i32 %3045, %3046
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3049 = and i32 %3047, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %21, align 1
  %3054 = xor i8 %3043, %3034
  %3055 = zext i8 %3054 to i32
  %3056 = xor i32 %3055, %3047
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %27, align 1
  %3060 = icmp eq i32 %3047, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3062 = add i64 %2991, -156
  %3063 = add i64 %2990, 23
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i32*
  store i32 %3047, i32* %3064, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_43d34e

block_.L_43d34e:                                  ; preds = %block_.L_43d337, %block_43d31a
  %3065 = phi i64 [ %.pre65, %block_.L_43d337 ], [ %3031, %block_43d31a ]
  %3066 = load i64, i64* %RBP.i, align 8
  %3067 = add i64 %3066, -156
  %3068 = add i64 %3065, 6
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i32*
  %3070 = load i32, i32* %3069, align 4
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RAX.i2697, align 8
  %3072 = add i64 %3066, -152
  %3073 = add i64 %3065, 12
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i32*
  %3075 = load i32, i32* %3074, align 4
  %3076 = zext i32 %3075 to i64
  store i64 %3076, i64* %RCX.i2691, align 8
  %3077 = sub i32 %3075, %3070
  %3078 = icmp ult i32 %3075, %3070
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %14, align 1
  %3080 = and i32 %3077, 255
  %3081 = tail call i32 @llvm.ctpop.i32(i32 %3080)
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = xor i8 %3083, 1
  store i8 %3084, i8* %21, align 1
  %3085 = xor i32 %3070, %3075
  %3086 = xor i32 %3085, %3077
  %3087 = lshr i32 %3086, 4
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  store i8 %3089, i8* %27, align 1
  %3090 = icmp eq i32 %3077, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %30, align 1
  %3092 = lshr i32 %3077, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %33, align 1
  %3094 = lshr i32 %3075, 31
  %3095 = lshr i32 %3070, 31
  %3096 = xor i32 %3095, %3094
  %3097 = xor i32 %3092, %3094
  %3098 = add nuw nsw i32 %3097, %3096
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %39, align 1
  %3101 = icmp ne i8 %3093, 0
  %3102 = xor i1 %3101, %3099
  %.v93 = select i1 %3102, i64 20, i64 49
  %3103 = add i64 %3065, %.v93
  %3104 = add i64 %3066, -8
  %3105 = add i64 %3103, 4
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i64*
  %3107 = load i64, i64* %3106, align 8
  store i64 %3107, i64* %RAX.i2697, align 8
  br i1 %3102, label %block_43d362, label %block_.L_43d37f

block_43d362:                                     ; preds = %block_.L_43d34e
  %3108 = add i64 %3107, 2
  %3109 = add i64 %3103, 8
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i8*
  %3111 = load i8, i8* %3110, align 1
  %3112 = zext i8 %3111 to i64
  store i64 %3112, i64* %RCX.i2691, align 8
  %3113 = add i64 %3066, -16
  %3114 = add i64 %3103, 12
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i64*
  %3116 = load i64, i64* %3115, align 8
  store i64 %3116, i64* %RAX.i2697, align 8
  %3117 = add i64 %3116, 2
  %3118 = add i64 %3103, 16
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i8*
  %3120 = load i8, i8* %3119, align 1
  %3121 = zext i8 %3120 to i64
  store i64 %3121, i64* %RDX.i2703, align 8
  %3122 = zext i8 %3120 to i32
  %3123 = zext i8 %3111 to i32
  %3124 = add nuw nsw i32 %3122, %3123
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3126 = and i32 %3124, 255
  %3127 = tail call i32 @llvm.ctpop.i32(i32 %3126)
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = xor i8 %3129, 1
  store i8 %3130, i8* %21, align 1
  %3131 = xor i8 %3120, %3111
  %3132 = zext i8 %3131 to i32
  %3133 = xor i32 %3132, %3124
  %3134 = lshr i32 %3133, 4
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  store i8 %3136, i8* %27, align 1
  %3137 = icmp eq i32 %3124, 0
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3139 = add i64 %3066, -160
  %3140 = add i64 %3103, 24
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i32*
  store i32 %3124, i32* %3141, align 4
  %3142 = load i64, i64* %3, align 8
  %3143 = add i64 %3142, 112
  store i64 %3143, i64* %3, align 8
  br label %block_.L_43d3ea

block_.L_43d37f:                                  ; preds = %block_.L_43d34e
  %3144 = add i64 %3103, 7
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3107 to i8*
  %3146 = load i8, i8* %3145, align 1
  %3147 = zext i8 %3146 to i64
  store i64 %3147, i64* %RCX.i2691, align 8
  %3148 = add i64 %3066, -16
  %3149 = add i64 %3103, 11
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3148 to i64*
  %3151 = load i64, i64* %3150, align 8
  store i64 %3151, i64* %RAX.i2697, align 8
  %3152 = add i64 %3151, 3
  %3153 = add i64 %3103, 15
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i8*
  %3155 = load i8, i8* %3154, align 1
  %3156 = zext i8 %3155 to i64
  store i64 %3156, i64* %RDX.i2703, align 8
  %3157 = zext i8 %3155 to i32
  %3158 = zext i8 %3146 to i32
  %3159 = add nuw nsw i32 %3157, %3158
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3161 = and i32 %3159, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %21, align 1
  %3166 = xor i8 %3155, %3146
  %3167 = zext i8 %3166 to i32
  %3168 = xor i32 %3167, %3159
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  store i8 %3171, i8* %27, align 1
  %3172 = icmp eq i32 %3159, 0
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3174 = add i64 %3103, 21
  store i64 %3174, i64* %3, align 8
  %3175 = load i64, i64* %3106, align 8
  store i64 %3175, i64* %RAX.i2697, align 8
  %3176 = add i64 %3175, 1
  %3177 = add i64 %3103, 25
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i8*
  %3179 = load i8, i8* %3178, align 1
  %3180 = zext i8 %3179 to i64
  store i64 %3180, i64* %RDX.i2703, align 8
  %3181 = add i64 %3103, 29
  store i64 %3181, i64* %3, align 8
  %3182 = load i64, i64* %3150, align 8
  store i64 %3182, i64* %RAX.i2697, align 8
  %3183 = add i64 %3182, 2
  %3184 = add i64 %3103, 33
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i8*
  %3186 = load i8, i8* %3185, align 1
  %3187 = zext i8 %3186 to i64
  store i64 %3187, i64* %RSI.i2706, align 8
  %3188 = zext i8 %3186 to i32
  %3189 = zext i8 %3179 to i32
  %3190 = add nuw nsw i32 %3188, %3189
  %3191 = zext i32 %3190 to i64
  store i64 %3191, i64* %RDX.i2703, align 8
  %3192 = sub nsw i32 %3159, %3190
  %3193 = icmp ult i32 %3159, %3190
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %14, align 1
  %3195 = and i32 %3192, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %21, align 1
  %3200 = xor i32 %3190, %3159
  %3201 = xor i32 %3200, %3192
  %3202 = lshr i32 %3201, 4
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  store i8 %3204, i8* %27, align 1
  %3205 = icmp eq i32 %3192, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %30, align 1
  %3207 = lshr i32 %3192, 31
  %3208 = trunc i32 %3207 to i8
  store i8 %3208, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3209 = icmp ne i8 %3208, 0
  %.v103 = select i1 %3209, i64 43, i64 72
  %3210 = add i64 %3103, %.v103
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -8
  %3213 = add i64 %3210, 4
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %RAX.i2697, align 8
  br i1 %3209, label %block_43d3aa, label %block_.L_43d3c7

block_43d3aa:                                     ; preds = %block_.L_43d37f
  %3216 = add i64 %3215, 1
  %3217 = add i64 %3210, 8
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i8*
  %3219 = load i8, i8* %3218, align 1
  %3220 = zext i8 %3219 to i64
  store i64 %3220, i64* %RCX.i2691, align 8
  %3221 = add i64 %3211, -16
  %3222 = add i64 %3210, 12
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i64*
  %3224 = load i64, i64* %3223, align 8
  store i64 %3224, i64* %RAX.i2697, align 8
  %3225 = add i64 %3224, 2
  %3226 = add i64 %3210, 16
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i8*
  %3228 = load i8, i8* %3227, align 1
  %3229 = zext i8 %3228 to i64
  store i64 %3229, i64* %RDX.i2703, align 8
  %3230 = zext i8 %3228 to i32
  %3231 = zext i8 %3219 to i32
  %3232 = add nuw nsw i32 %3230, %3231
  %3233 = zext i32 %3232 to i64
  store i64 %3233, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3234 = and i32 %3232, 255
  %3235 = tail call i32 @llvm.ctpop.i32(i32 %3234)
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  %3238 = xor i8 %3237, 1
  store i8 %3238, i8* %21, align 1
  %3239 = xor i8 %3228, %3219
  %3240 = zext i8 %3239 to i32
  %3241 = xor i32 %3240, %3232
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  store i8 %3244, i8* %27, align 1
  %3245 = icmp eq i32 %3232, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3247 = add i64 %3211, -164
  %3248 = add i64 %3210, 24
  store i64 %3248, i64* %3, align 8
  %3249 = inttoptr i64 %3247 to i32*
  store i32 %3232, i32* %3249, align 4
  %3250 = load i64, i64* %3, align 8
  %3251 = add i64 %3250, 28
  store i64 %3251, i64* %3, align 8
  br label %block_.L_43d3de

block_.L_43d3c7:                                  ; preds = %block_.L_43d37f
  %3252 = add i64 %3210, 7
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3215 to i8*
  %3254 = load i8, i8* %3253, align 1
  %3255 = zext i8 %3254 to i64
  store i64 %3255, i64* %RCX.i2691, align 8
  %3256 = add i64 %3211, -16
  %3257 = add i64 %3210, 11
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i64*
  %3259 = load i64, i64* %3258, align 8
  store i64 %3259, i64* %RAX.i2697, align 8
  %3260 = add i64 %3259, 3
  %3261 = add i64 %3210, 15
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i8*
  %3263 = load i8, i8* %3262, align 1
  %3264 = zext i8 %3263 to i64
  store i64 %3264, i64* %RDX.i2703, align 8
  %3265 = zext i8 %3263 to i32
  %3266 = zext i8 %3254 to i32
  %3267 = add nuw nsw i32 %3265, %3266
  %3268 = zext i32 %3267 to i64
  store i64 %3268, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3269 = and i32 %3267, 255
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269)
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  %3273 = xor i8 %3272, 1
  store i8 %3273, i8* %21, align 1
  %3274 = xor i8 %3263, %3254
  %3275 = zext i8 %3274 to i32
  %3276 = xor i32 %3275, %3267
  %3277 = lshr i32 %3276, 4
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  store i8 %3279, i8* %27, align 1
  %3280 = icmp eq i32 %3267, 0
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3282 = add i64 %3211, -164
  %3283 = add i64 %3210, 23
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i32*
  store i32 %3267, i32* %3284, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_43d3de

block_.L_43d3de:                                  ; preds = %block_.L_43d3c7, %block_43d3aa
  %3285 = phi i64 [ %.pre66, %block_.L_43d3c7 ], [ %3251, %block_43d3aa ]
  %3286 = load i64, i64* %RBP.i, align 8
  %3287 = add i64 %3286, -164
  %3288 = add i64 %3285, 6
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = zext i32 %3290 to i64
  store i64 %3291, i64* %RAX.i2697, align 8
  %3292 = add i64 %3286, -160
  %3293 = add i64 %3285, 12
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  store i32 %3290, i32* %3294, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_43d3ea

block_.L_43d3ea:                                  ; preds = %block_.L_43d3de, %block_43d362
  %3295 = phi i64 [ %.pre67, %block_.L_43d3de ], [ %3143, %block_43d362 ]
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -160
  %3298 = add i64 %3295, 6
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i32*
  %3300 = load i32, i32* %3299, align 4
  %3301 = zext i32 %3300 to i64
  store i64 %3301, i64* %RAX.i2697, align 8
  %3302 = add i64 %3296, -148
  %3303 = add i64 %3295, 12
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RCX.i2691, align 8
  %3307 = sub i32 %3305, %3300
  %3308 = icmp ult i32 %3305, %3300
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %14, align 1
  %3310 = and i32 %3307, 255
  %3311 = tail call i32 @llvm.ctpop.i32(i32 %3310)
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  %3314 = xor i8 %3313, 1
  store i8 %3314, i8* %21, align 1
  %3315 = xor i32 %3300, %3305
  %3316 = xor i32 %3315, %3307
  %3317 = lshr i32 %3316, 4
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  store i8 %3319, i8* %27, align 1
  %3320 = icmp eq i32 %3307, 0
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %30, align 1
  %3322 = lshr i32 %3307, 31
  %3323 = trunc i32 %3322 to i8
  store i8 %3323, i8* %33, align 1
  %3324 = lshr i32 %3305, 31
  %3325 = lshr i32 %3300, 31
  %3326 = xor i32 %3325, %3324
  %3327 = xor i32 %3322, %3324
  %3328 = add nuw nsw i32 %3327, %3326
  %3329 = icmp eq i32 %3328, 2
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %39, align 1
  %3331 = icmp ne i8 %3323, 0
  %3332 = xor i1 %3331, %3329
  %.v94 = select i1 %3332, i64 20, i64 312
  %3333 = add i64 %3295, %.v94
  %3334 = add i64 %3296, -8
  %3335 = add i64 %3333, 4
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to i64*
  %3337 = load i64, i64* %3336, align 8
  store i64 %3337, i64* %RAX.i2697, align 8
  %3338 = add i64 %3337, 2
  %3339 = add i64 %3333, 8
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i8*
  %3341 = load i8, i8* %3340, align 1
  %3342 = zext i8 %3341 to i64
  store i64 %3342, i64* %RCX.i2691, align 8
  %3343 = add i64 %3296, -16
  %3344 = add i64 %3333, 12
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i64*
  %3346 = load i64, i64* %3345, align 8
  store i64 %3346, i64* %RAX.i2697, align 8
  %3347 = add i64 %3346, 2
  %3348 = add i64 %3333, 16
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i8*
  %3350 = load i8, i8* %3349, align 1
  %3351 = zext i8 %3350 to i64
  store i64 %3351, i64* %RDX.i2703, align 8
  %3352 = zext i8 %3350 to i32
  %3353 = zext i8 %3341 to i32
  %3354 = add nuw nsw i32 %3352, %3353
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3356 = and i32 %3354, 255
  %3357 = tail call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  store i8 %3360, i8* %21, align 1
  %3361 = xor i8 %3350, %3341
  %3362 = zext i8 %3361 to i32
  %3363 = xor i32 %3362, %3354
  %3364 = lshr i32 %3363, 4
  %3365 = trunc i32 %3364 to i8
  %3366 = and i8 %3365, 1
  store i8 %3366, i8* %27, align 1
  %3367 = icmp eq i32 %3354, 0
  %3368 = zext i1 %3367 to i8
  store i8 %3368, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3369 = load i64, i64* %RBP.i, align 8
  %3370 = add i64 %3369, -8
  %3371 = add i64 %3333, 22
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i64*
  %3373 = load i64, i64* %3372, align 8
  store i64 %3373, i64* %RAX.i2697, align 8
  br i1 %3332, label %block_43d3fe, label %block_.L_43d522

block_43d3fe:                                     ; preds = %block_.L_43d3ea
  %3374 = add i64 %3333, 25
  store i64 %3374, i64* %3, align 8
  %3375 = inttoptr i64 %3373 to i8*
  %3376 = load i8, i8* %3375, align 1
  %3377 = zext i8 %3376 to i64
  store i64 %3377, i64* %RDX.i2703, align 8
  %3378 = add i64 %3369, -16
  %3379 = add i64 %3333, 29
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i64*
  %3381 = load i64, i64* %3380, align 8
  store i64 %3381, i64* %RAX.i2697, align 8
  %3382 = add i64 %3381, 3
  %3383 = add i64 %3333, 33
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i8*
  %3385 = load i8, i8* %3384, align 1
  %3386 = zext i8 %3385 to i64
  store i64 %3386, i64* %RSI.i2706, align 8
  %3387 = zext i8 %3385 to i32
  %3388 = zext i8 %3376 to i32
  %3389 = add nuw nsw i32 %3387, %3388
  %3390 = zext i32 %3389 to i64
  store i64 %3390, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %3391 = and i32 %3389, 255
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %21, align 1
  %3396 = xor i8 %3385, %3376
  %3397 = zext i8 %3396 to i32
  %3398 = xor i32 %3397, %3389
  %3399 = lshr i32 %3398, 4
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  store i8 %3401, i8* %27, align 1
  %3402 = icmp eq i32 %3389, 0
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3404 = add i64 %3333, 39
  store i64 %3404, i64* %3, align 8
  %3405 = load i64, i64* %3372, align 8
  store i64 %3405, i64* %RAX.i2697, align 8
  %3406 = add i64 %3405, 1
  %3407 = add i64 %3333, 43
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i8*
  %3409 = load i8, i8* %3408, align 1
  %3410 = zext i8 %3409 to i64
  store i64 %3410, i64* %RSI.i2706, align 8
  %3411 = add i64 %3333, 47
  store i64 %3411, i64* %3, align 8
  %3412 = load i64, i64* %3380, align 8
  store i64 %3412, i64* %RAX.i2697, align 8
  %3413 = add i64 %3412, 2
  %3414 = add i64 %3333, 51
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i8*
  %3416 = load i8, i8* %3415, align 1
  %3417 = zext i8 %3416 to i64
  store i64 %3417, i64* %RDI.i2709, align 8
  %3418 = zext i8 %3416 to i32
  %3419 = zext i8 %3409 to i32
  %3420 = add nuw nsw i32 %3418, %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RSI.i2706, align 8
  %3422 = sub nsw i32 %3389, %3420
  %3423 = icmp ult i32 %3389, %3420
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %14, align 1
  %3425 = and i32 %3422, 255
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425)
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %21, align 1
  %3430 = xor i32 %3420, %3389
  %3431 = xor i32 %3430, %3422
  %3432 = lshr i32 %3431, 4
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  store i8 %3434, i8* %27, align 1
  %3435 = icmp eq i32 %3422, 0
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %30, align 1
  %3437 = lshr i32 %3422, 31
  %3438 = trunc i32 %3437 to i8
  store i8 %3438, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3439 = load i64, i64* %RBP.i, align 8
  %3440 = add i64 %3439, -168
  %3441 = load i32, i32* %ECX.i2688, align 4
  %3442 = add i64 %3333, 61
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3440 to i32*
  store i32 %3441, i32* %3443, align 4
  %3444 = load i64, i64* %3, align 8
  %3445 = load i8, i8* %33, align 1
  %3446 = icmp ne i8 %3445, 0
  %3447 = load i8, i8* %39, align 1
  %3448 = icmp ne i8 %3447, 0
  %3449 = xor i1 %3446, %3448
  %.v130 = select i1 %3449, i64 6, i64 35
  %3450 = add i64 %3444, %.v130
  %3451 = load i64, i64* %RBP.i, align 8
  %3452 = add i64 %3451, -8
  %3453 = add i64 %3450, 4
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i64*
  %3455 = load i64, i64* %3454, align 8
  store i64 %3455, i64* %RAX.i2697, align 8
  br i1 %3449, label %block_43d441, label %block_.L_43d45e

block_43d441:                                     ; preds = %block_43d3fe
  %3456 = add i64 %3455, 1
  %3457 = add i64 %3450, 8
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i8*
  %3459 = load i8, i8* %3458, align 1
  %3460 = zext i8 %3459 to i64
  store i64 %3460, i64* %RCX.i2691, align 8
  %3461 = add i64 %3451, -16
  %3462 = add i64 %3450, 12
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i64*
  %3464 = load i64, i64* %3463, align 8
  store i64 %3464, i64* %RAX.i2697, align 8
  %3465 = add i64 %3464, 2
  %3466 = add i64 %3450, 16
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i8*
  %3468 = load i8, i8* %3467, align 1
  %3469 = zext i8 %3468 to i64
  store i64 %3469, i64* %RDX.i2703, align 8
  %3470 = zext i8 %3468 to i32
  %3471 = zext i8 %3459 to i32
  %3472 = add nuw nsw i32 %3470, %3471
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3474 = and i32 %3472, 255
  %3475 = tail call i32 @llvm.ctpop.i32(i32 %3474)
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = xor i8 %3477, 1
  store i8 %3478, i8* %21, align 1
  %3479 = xor i8 %3468, %3459
  %3480 = zext i8 %3479 to i32
  %3481 = xor i32 %3480, %3472
  %3482 = lshr i32 %3481, 4
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  store i8 %3484, i8* %27, align 1
  %3485 = icmp eq i32 %3472, 0
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3487 = add i64 %3451, -172
  %3488 = add i64 %3450, 24
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  store i32 %3472, i32* %3489, align 4
  %3490 = load i64, i64* %3, align 8
  %3491 = add i64 %3490, 28
  store i64 %3491, i64* %3, align 8
  br label %block_.L_43d475

block_.L_43d45e:                                  ; preds = %block_43d3fe
  %3492 = add i64 %3450, 7
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3455 to i8*
  %3494 = load i8, i8* %3493, align 1
  %3495 = zext i8 %3494 to i64
  store i64 %3495, i64* %RCX.i2691, align 8
  %3496 = add i64 %3451, -16
  %3497 = add i64 %3450, 11
  store i64 %3497, i64* %3, align 8
  %3498 = inttoptr i64 %3496 to i64*
  %3499 = load i64, i64* %3498, align 8
  store i64 %3499, i64* %RAX.i2697, align 8
  %3500 = add i64 %3499, 3
  %3501 = add i64 %3450, 15
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i8*
  %3503 = load i8, i8* %3502, align 1
  %3504 = zext i8 %3503 to i64
  store i64 %3504, i64* %RDX.i2703, align 8
  %3505 = zext i8 %3503 to i32
  %3506 = zext i8 %3494 to i32
  %3507 = add nuw nsw i32 %3505, %3506
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3509 = and i32 %3507, 255
  %3510 = tail call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  store i8 %3513, i8* %21, align 1
  %3514 = xor i8 %3503, %3494
  %3515 = zext i8 %3514 to i32
  %3516 = xor i32 %3515, %3507
  %3517 = lshr i32 %3516, 4
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  store i8 %3519, i8* %27, align 1
  %3520 = icmp eq i32 %3507, 0
  %3521 = zext i1 %3520 to i8
  store i8 %3521, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3522 = add i64 %3451, -172
  %3523 = add i64 %3450, 23
  store i64 %3523, i64* %3, align 8
  %3524 = inttoptr i64 %3522 to i32*
  store i32 %3507, i32* %3524, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_43d475

block_.L_43d475:                                  ; preds = %block_.L_43d45e, %block_43d441
  %3525 = phi i64 [ %.pre71, %block_.L_43d45e ], [ %3491, %block_43d441 ]
  %3526 = load i64, i64* %RBP.i, align 8
  %3527 = add i64 %3526, -172
  %3528 = add i64 %3525, 6
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i32*
  %3530 = load i32, i32* %3529, align 4
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RAX.i2697, align 8
  %3532 = add i64 %3526, -168
  %3533 = add i64 %3525, 12
  store i64 %3533, i64* %3, align 8
  %3534 = inttoptr i64 %3532 to i32*
  %3535 = load i32, i32* %3534, align 4
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RCX.i2691, align 8
  %3537 = sub i32 %3535, %3530
  %3538 = icmp ult i32 %3535, %3530
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %14, align 1
  %3540 = and i32 %3537, 255
  %3541 = tail call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  store i8 %3544, i8* %21, align 1
  %3545 = xor i32 %3530, %3535
  %3546 = xor i32 %3545, %3537
  %3547 = lshr i32 %3546, 4
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  store i8 %3549, i8* %27, align 1
  %3550 = icmp eq i32 %3537, 0
  %3551 = zext i1 %3550 to i8
  store i8 %3551, i8* %30, align 1
  %3552 = lshr i32 %3537, 31
  %3553 = trunc i32 %3552 to i8
  store i8 %3553, i8* %33, align 1
  %3554 = lshr i32 %3535, 31
  %3555 = lshr i32 %3530, 31
  %3556 = xor i32 %3555, %3554
  %3557 = xor i32 %3552, %3554
  %3558 = add nuw nsw i32 %3557, %3556
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %39, align 1
  %3561 = icmp ne i8 %3553, 0
  %3562 = xor i1 %3561, %3559
  %.v98 = select i1 %3562, i64 20, i64 49
  %3563 = add i64 %3525, %.v98
  %3564 = add i64 %3526, -8
  %3565 = add i64 %3563, 4
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i64*
  %3567 = load i64, i64* %3566, align 8
  store i64 %3567, i64* %RAX.i2697, align 8
  br i1 %3562, label %block_43d489, label %block_.L_43d4a6

block_43d489:                                     ; preds = %block_.L_43d475
  %3568 = add i64 %3567, 2
  %3569 = add i64 %3563, 8
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i8*
  %3571 = load i8, i8* %3570, align 1
  %3572 = zext i8 %3571 to i64
  store i64 %3572, i64* %RCX.i2691, align 8
  %3573 = add i64 %3526, -16
  %3574 = add i64 %3563, 12
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i64*
  %3576 = load i64, i64* %3575, align 8
  store i64 %3576, i64* %RAX.i2697, align 8
  %3577 = add i64 %3576, 2
  %3578 = add i64 %3563, 16
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i8*
  %3580 = load i8, i8* %3579, align 1
  %3581 = zext i8 %3580 to i64
  store i64 %3581, i64* %RDX.i2703, align 8
  %3582 = zext i8 %3580 to i32
  %3583 = zext i8 %3571 to i32
  %3584 = add nuw nsw i32 %3582, %3583
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3586 = and i32 %3584, 255
  %3587 = tail call i32 @llvm.ctpop.i32(i32 %3586)
  %3588 = trunc i32 %3587 to i8
  %3589 = and i8 %3588, 1
  %3590 = xor i8 %3589, 1
  store i8 %3590, i8* %21, align 1
  %3591 = xor i8 %3580, %3571
  %3592 = zext i8 %3591 to i32
  %3593 = xor i32 %3592, %3584
  %3594 = lshr i32 %3593, 4
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  store i8 %3596, i8* %27, align 1
  %3597 = icmp eq i32 %3584, 0
  %3598 = zext i1 %3597 to i8
  store i8 %3598, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3599 = add i64 %3526, -176
  %3600 = add i64 %3563, 24
  store i64 %3600, i64* %3, align 8
  %3601 = inttoptr i64 %3599 to i32*
  store i32 %3584, i32* %3601, align 4
  %3602 = load i64, i64* %3, align 8
  %3603 = add i64 %3602, 112
  store i64 %3603, i64* %3, align 8
  br label %block_.L_43d511

block_.L_43d4a6:                                  ; preds = %block_.L_43d475
  %3604 = add i64 %3563, 7
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3567 to i8*
  %3606 = load i8, i8* %3605, align 1
  %3607 = zext i8 %3606 to i64
  store i64 %3607, i64* %RCX.i2691, align 8
  %3608 = add i64 %3526, -16
  %3609 = add i64 %3563, 11
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3608 to i64*
  %3611 = load i64, i64* %3610, align 8
  store i64 %3611, i64* %RAX.i2697, align 8
  %3612 = add i64 %3611, 3
  %3613 = add i64 %3563, 15
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i8*
  %3615 = load i8, i8* %3614, align 1
  %3616 = zext i8 %3615 to i64
  store i64 %3616, i64* %RDX.i2703, align 8
  %3617 = zext i8 %3615 to i32
  %3618 = zext i8 %3606 to i32
  %3619 = add nuw nsw i32 %3617, %3618
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3621 = and i32 %3619, 255
  %3622 = tail call i32 @llvm.ctpop.i32(i32 %3621)
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = xor i8 %3624, 1
  store i8 %3625, i8* %21, align 1
  %3626 = xor i8 %3615, %3606
  %3627 = zext i8 %3626 to i32
  %3628 = xor i32 %3627, %3619
  %3629 = lshr i32 %3628, 4
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  store i8 %3631, i8* %27, align 1
  %3632 = icmp eq i32 %3619, 0
  %3633 = zext i1 %3632 to i8
  store i8 %3633, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3634 = add i64 %3563, 21
  store i64 %3634, i64* %3, align 8
  %3635 = load i64, i64* %3566, align 8
  store i64 %3635, i64* %RAX.i2697, align 8
  %3636 = add i64 %3635, 1
  %3637 = add i64 %3563, 25
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3636 to i8*
  %3639 = load i8, i8* %3638, align 1
  %3640 = zext i8 %3639 to i64
  store i64 %3640, i64* %RDX.i2703, align 8
  %3641 = add i64 %3563, 29
  store i64 %3641, i64* %3, align 8
  %3642 = load i64, i64* %3610, align 8
  store i64 %3642, i64* %RAX.i2697, align 8
  %3643 = add i64 %3642, 2
  %3644 = add i64 %3563, 33
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3643 to i8*
  %3646 = load i8, i8* %3645, align 1
  %3647 = zext i8 %3646 to i64
  store i64 %3647, i64* %RSI.i2706, align 8
  %3648 = zext i8 %3646 to i32
  %3649 = zext i8 %3639 to i32
  %3650 = add nuw nsw i32 %3648, %3649
  %3651 = zext i32 %3650 to i64
  store i64 %3651, i64* %RDX.i2703, align 8
  %3652 = sub nsw i32 %3619, %3650
  %3653 = icmp ult i32 %3619, %3650
  %3654 = zext i1 %3653 to i8
  store i8 %3654, i8* %14, align 1
  %3655 = and i32 %3652, 255
  %3656 = tail call i32 @llvm.ctpop.i32(i32 %3655)
  %3657 = trunc i32 %3656 to i8
  %3658 = and i8 %3657, 1
  %3659 = xor i8 %3658, 1
  store i8 %3659, i8* %21, align 1
  %3660 = xor i32 %3650, %3619
  %3661 = xor i32 %3660, %3652
  %3662 = lshr i32 %3661, 4
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  store i8 %3664, i8* %27, align 1
  %3665 = icmp eq i32 %3652, 0
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %30, align 1
  %3667 = lshr i32 %3652, 31
  %3668 = trunc i32 %3667 to i8
  store i8 %3668, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3669 = icmp ne i8 %3668, 0
  %.v115 = select i1 %3669, i64 43, i64 72
  %3670 = add i64 %3563, %.v115
  %3671 = load i64, i64* %RBP.i, align 8
  %3672 = add i64 %3671, -8
  %3673 = add i64 %3670, 4
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3672 to i64*
  %3675 = load i64, i64* %3674, align 8
  store i64 %3675, i64* %RAX.i2697, align 8
  br i1 %3669, label %block_43d4d1, label %block_.L_43d4ee

block_43d4d1:                                     ; preds = %block_.L_43d4a6
  %3676 = add i64 %3675, 1
  %3677 = add i64 %3670, 8
  store i64 %3677, i64* %3, align 8
  %3678 = inttoptr i64 %3676 to i8*
  %3679 = load i8, i8* %3678, align 1
  %3680 = zext i8 %3679 to i64
  store i64 %3680, i64* %RCX.i2691, align 8
  %3681 = add i64 %3671, -16
  %3682 = add i64 %3670, 12
  store i64 %3682, i64* %3, align 8
  %3683 = inttoptr i64 %3681 to i64*
  %3684 = load i64, i64* %3683, align 8
  store i64 %3684, i64* %RAX.i2697, align 8
  %3685 = add i64 %3684, 2
  %3686 = add i64 %3670, 16
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i8*
  %3688 = load i8, i8* %3687, align 1
  %3689 = zext i8 %3688 to i64
  store i64 %3689, i64* %RDX.i2703, align 8
  %3690 = zext i8 %3688 to i32
  %3691 = zext i8 %3679 to i32
  %3692 = add nuw nsw i32 %3690, %3691
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3694 = and i32 %3692, 255
  %3695 = tail call i32 @llvm.ctpop.i32(i32 %3694)
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  store i8 %3698, i8* %21, align 1
  %3699 = xor i8 %3688, %3679
  %3700 = zext i8 %3699 to i32
  %3701 = xor i32 %3700, %3692
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %27, align 1
  %3705 = icmp eq i32 %3692, 0
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3707 = add i64 %3671, -180
  %3708 = add i64 %3670, 24
  store i64 %3708, i64* %3, align 8
  %3709 = inttoptr i64 %3707 to i32*
  store i32 %3692, i32* %3709, align 4
  %3710 = load i64, i64* %3, align 8
  %3711 = add i64 %3710, 28
  store i64 %3711, i64* %3, align 8
  br label %block_.L_43d505

block_.L_43d4ee:                                  ; preds = %block_.L_43d4a6
  %3712 = add i64 %3670, 7
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3675 to i8*
  %3714 = load i8, i8* %3713, align 1
  %3715 = zext i8 %3714 to i64
  store i64 %3715, i64* %RCX.i2691, align 8
  %3716 = add i64 %3671, -16
  %3717 = add i64 %3670, 11
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i64*
  %3719 = load i64, i64* %3718, align 8
  store i64 %3719, i64* %RAX.i2697, align 8
  %3720 = add i64 %3719, 3
  %3721 = add i64 %3670, 15
  store i64 %3721, i64* %3, align 8
  %3722 = inttoptr i64 %3720 to i8*
  %3723 = load i8, i8* %3722, align 1
  %3724 = zext i8 %3723 to i64
  store i64 %3724, i64* %RDX.i2703, align 8
  %3725 = zext i8 %3723 to i32
  %3726 = zext i8 %3714 to i32
  %3727 = add nuw nsw i32 %3725, %3726
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3729 = and i32 %3727, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i8 %3723, %3714
  %3735 = zext i8 %3734 to i32
  %3736 = xor i32 %3735, %3727
  %3737 = lshr i32 %3736, 4
  %3738 = trunc i32 %3737 to i8
  %3739 = and i8 %3738, 1
  store i8 %3739, i8* %27, align 1
  %3740 = icmp eq i32 %3727, 0
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3742 = add i64 %3671, -180
  %3743 = add i64 %3670, 23
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to i32*
  store i32 %3727, i32* %3744, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_43d505

block_.L_43d505:                                  ; preds = %block_.L_43d4ee, %block_43d4d1
  %3745 = phi i64 [ %.pre72, %block_.L_43d4ee ], [ %3711, %block_43d4d1 ]
  %3746 = load i64, i64* %RBP.i, align 8
  %3747 = add i64 %3746, -180
  %3748 = add i64 %3745, 6
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = zext i32 %3750 to i64
  store i64 %3751, i64* %RAX.i2697, align 8
  %3752 = add i64 %3746, -176
  %3753 = add i64 %3745, 12
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i32*
  store i32 %3750, i32* %3754, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43d511

block_.L_43d511:                                  ; preds = %block_.L_43d505, %block_43d489
  %3755 = phi i64 [ %.pre73, %block_.L_43d505 ], [ %3603, %block_43d489 ]
  %3756 = load i64, i64* %RBP.i, align 8
  %3757 = add i64 %3756, -176
  %3758 = add i64 %3755, 6
  store i64 %3758, i64* %3, align 8
  %3759 = inttoptr i64 %3757 to i32*
  %3760 = load i32, i32* %3759, align 4
  %3761 = zext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i2697, align 8
  %3762 = add i64 %3756, -184
  %3763 = add i64 %3755, 12
  store i64 %3763, i64* %3, align 8
  %3764 = inttoptr i64 %3762 to i32*
  store i32 %3760, i32* %3764, align 4
  %3765 = load i64, i64* %3, align 8
  %3766 = add i64 %3765, 292
  store i64 %3766, i64* %3, align 8
  br label %block_.L_43d641

block_.L_43d522:                                  ; preds = %block_.L_43d3ea
  %3767 = add i64 %3373, 3
  %3768 = add i64 %3333, 26
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i8*
  %3770 = load i8, i8* %3769, align 1
  %3771 = zext i8 %3770 to i64
  store i64 %3771, i64* %RDX.i2703, align 8
  %3772 = add i64 %3369, -16
  %3773 = add i64 %3333, 30
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i64*
  %3775 = load i64, i64* %3774, align 8
  store i64 %3775, i64* %RAX.i2697, align 8
  %3776 = add i64 %3333, 33
  store i64 %3776, i64* %3, align 8
  %3777 = inttoptr i64 %3775 to i8*
  %3778 = load i8, i8* %3777, align 1
  %3779 = zext i8 %3778 to i64
  store i64 %3779, i64* %RSI.i2706, align 8
  %3780 = zext i8 %3778 to i32
  %3781 = zext i8 %3770 to i32
  %3782 = add nuw nsw i32 %3780, %3781
  %3783 = zext i32 %3782 to i64
  store i64 %3783, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %3784 = and i32 %3782, 255
  %3785 = tail call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  store i8 %3788, i8* %21, align 1
  %3789 = xor i8 %3778, %3770
  %3790 = zext i8 %3789 to i32
  %3791 = xor i32 %3790, %3782
  %3792 = lshr i32 %3791, 4
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  store i8 %3794, i8* %27, align 1
  %3795 = icmp eq i32 %3782, 0
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3797 = add i64 %3333, 39
  store i64 %3797, i64* %3, align 8
  %3798 = load i64, i64* %3372, align 8
  store i64 %3798, i64* %RAX.i2697, align 8
  %3799 = add i64 %3798, 2
  %3800 = add i64 %3333, 43
  store i64 %3800, i64* %3, align 8
  %3801 = inttoptr i64 %3799 to i8*
  %3802 = load i8, i8* %3801, align 1
  %3803 = zext i8 %3802 to i64
  store i64 %3803, i64* %RSI.i2706, align 8
  %3804 = add i64 %3333, 47
  store i64 %3804, i64* %3, align 8
  %3805 = load i64, i64* %3774, align 8
  store i64 %3805, i64* %RAX.i2697, align 8
  %3806 = add i64 %3805, 1
  %3807 = add i64 %3333, 51
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i8*
  %3809 = load i8, i8* %3808, align 1
  %3810 = zext i8 %3809 to i64
  store i64 %3810, i64* %RDI.i2709, align 8
  %3811 = zext i8 %3809 to i32
  %3812 = zext i8 %3802 to i32
  %3813 = add nuw nsw i32 %3811, %3812
  %3814 = zext i32 %3813 to i64
  store i64 %3814, i64* %RSI.i2706, align 8
  %3815 = sub nsw i32 %3782, %3813
  %3816 = icmp ult i32 %3782, %3813
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %14, align 1
  %3818 = and i32 %3815, 255
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818)
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %21, align 1
  %3823 = xor i32 %3813, %3782
  %3824 = xor i32 %3823, %3815
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %27, align 1
  %3828 = icmp eq i32 %3815, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %30, align 1
  %3830 = lshr i32 %3815, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3832 = load i64, i64* %RBP.i, align 8
  %3833 = add i64 %3832, -188
  %3834 = load i32, i32* %ECX.i2688, align 4
  %3835 = add i64 %3333, 61
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3833 to i32*
  store i32 %3834, i32* %3836, align 4
  %3837 = load i64, i64* %3, align 8
  %3838 = load i8, i8* %33, align 1
  %3839 = icmp ne i8 %3838, 0
  %3840 = load i8, i8* %39, align 1
  %3841 = icmp ne i8 %3840, 0
  %3842 = xor i1 %3839, %3841
  %.v127 = select i1 %3842, i64 6, i64 35
  %3843 = add i64 %3837, %.v127
  %3844 = load i64, i64* %RBP.i, align 8
  %3845 = add i64 %3844, -8
  %3846 = add i64 %3843, 4
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i64*
  %3848 = load i64, i64* %3847, align 8
  store i64 %3848, i64* %RAX.i2697, align 8
  br i1 %3842, label %block_43d565, label %block_.L_43d582

block_43d565:                                     ; preds = %block_.L_43d522
  %3849 = add i64 %3848, 2
  %3850 = add i64 %3843, 8
  store i64 %3850, i64* %3, align 8
  %3851 = inttoptr i64 %3849 to i8*
  %3852 = load i8, i8* %3851, align 1
  %3853 = zext i8 %3852 to i64
  store i64 %3853, i64* %RCX.i2691, align 8
  %3854 = add i64 %3844, -16
  %3855 = add i64 %3843, 12
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3854 to i64*
  %3857 = load i64, i64* %3856, align 8
  store i64 %3857, i64* %RAX.i2697, align 8
  %3858 = add i64 %3857, 1
  %3859 = add i64 %3843, 16
  store i64 %3859, i64* %3, align 8
  %3860 = inttoptr i64 %3858 to i8*
  %3861 = load i8, i8* %3860, align 1
  %3862 = zext i8 %3861 to i64
  store i64 %3862, i64* %RDX.i2703, align 8
  %3863 = zext i8 %3861 to i32
  %3864 = zext i8 %3852 to i32
  %3865 = add nuw nsw i32 %3863, %3864
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3867 = and i32 %3865, 255
  %3868 = tail call i32 @llvm.ctpop.i32(i32 %3867)
  %3869 = trunc i32 %3868 to i8
  %3870 = and i8 %3869, 1
  %3871 = xor i8 %3870, 1
  store i8 %3871, i8* %21, align 1
  %3872 = xor i8 %3861, %3852
  %3873 = zext i8 %3872 to i32
  %3874 = xor i32 %3873, %3865
  %3875 = lshr i32 %3874, 4
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  store i8 %3877, i8* %27, align 1
  %3878 = icmp eq i32 %3865, 0
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3880 = add i64 %3844, -192
  %3881 = add i64 %3843, 24
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  store i32 %3865, i32* %3882, align 4
  %3883 = load i64, i64* %3, align 8
  %3884 = add i64 %3883, 28
  store i64 %3884, i64* %3, align 8
  br label %block_.L_43d599

block_.L_43d582:                                  ; preds = %block_.L_43d522
  %3885 = add i64 %3848, 3
  %3886 = add i64 %3843, 8
  store i64 %3886, i64* %3, align 8
  %3887 = inttoptr i64 %3885 to i8*
  %3888 = load i8, i8* %3887, align 1
  %3889 = zext i8 %3888 to i64
  store i64 %3889, i64* %RCX.i2691, align 8
  %3890 = add i64 %3844, -16
  %3891 = add i64 %3843, 12
  store i64 %3891, i64* %3, align 8
  %3892 = inttoptr i64 %3890 to i64*
  %3893 = load i64, i64* %3892, align 8
  store i64 %3893, i64* %RAX.i2697, align 8
  %3894 = add i64 %3843, 15
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i8*
  %3896 = load i8, i8* %3895, align 1
  %3897 = zext i8 %3896 to i64
  store i64 %3897, i64* %RDX.i2703, align 8
  %3898 = zext i8 %3896 to i32
  %3899 = zext i8 %3888 to i32
  %3900 = add nuw nsw i32 %3898, %3899
  %3901 = zext i32 %3900 to i64
  store i64 %3901, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3902 = and i32 %3900, 255
  %3903 = tail call i32 @llvm.ctpop.i32(i32 %3902)
  %3904 = trunc i32 %3903 to i8
  %3905 = and i8 %3904, 1
  %3906 = xor i8 %3905, 1
  store i8 %3906, i8* %21, align 1
  %3907 = xor i8 %3896, %3888
  %3908 = zext i8 %3907 to i32
  %3909 = xor i32 %3908, %3900
  %3910 = lshr i32 %3909, 4
  %3911 = trunc i32 %3910 to i8
  %3912 = and i8 %3911, 1
  store i8 %3912, i8* %27, align 1
  %3913 = icmp eq i32 %3900, 0
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3915 = add i64 %3844, -192
  %3916 = add i64 %3843, 23
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  store i32 %3900, i32* %3917, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43d599

block_.L_43d599:                                  ; preds = %block_.L_43d582, %block_43d565
  %3918 = phi i64 [ %.pre68, %block_.L_43d582 ], [ %3884, %block_43d565 ]
  %3919 = load i64, i64* %RBP.i, align 8
  %3920 = add i64 %3919, -192
  %3921 = add i64 %3918, 6
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to i32*
  %3923 = load i32, i32* %3922, align 4
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RAX.i2697, align 8
  %3925 = add i64 %3919, -188
  %3926 = add i64 %3918, 12
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3925 to i32*
  %3928 = load i32, i32* %3927, align 4
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RCX.i2691, align 8
  %3930 = sub i32 %3928, %3923
  %3931 = icmp ult i32 %3928, %3923
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %14, align 1
  %3933 = and i32 %3930, 255
  %3934 = tail call i32 @llvm.ctpop.i32(i32 %3933)
  %3935 = trunc i32 %3934 to i8
  %3936 = and i8 %3935, 1
  %3937 = xor i8 %3936, 1
  store i8 %3937, i8* %21, align 1
  %3938 = xor i32 %3923, %3928
  %3939 = xor i32 %3938, %3930
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %27, align 1
  %3943 = icmp eq i32 %3930, 0
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %30, align 1
  %3945 = lshr i32 %3930, 31
  %3946 = trunc i32 %3945 to i8
  store i8 %3946, i8* %33, align 1
  %3947 = lshr i32 %3928, 31
  %3948 = lshr i32 %3923, 31
  %3949 = xor i32 %3948, %3947
  %3950 = xor i32 %3945, %3947
  %3951 = add nuw nsw i32 %3950, %3949
  %3952 = icmp eq i32 %3951, 2
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %39, align 1
  %3954 = icmp ne i8 %3946, 0
  %3955 = xor i1 %3954, %3952
  %.v95 = select i1 %3955, i64 20, i64 49
  %3956 = add i64 %3918, %.v95
  %3957 = add i64 %3919, -8
  %3958 = add i64 %3956, 4
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i64*
  %3960 = load i64, i64* %3959, align 8
  store i64 %3960, i64* %RAX.i2697, align 8
  br i1 %3955, label %block_43d5ad, label %block_.L_43d5ca

block_43d5ad:                                     ; preds = %block_.L_43d599
  %3961 = add i64 %3960, 2
  %3962 = add i64 %3956, 8
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i8*
  %3964 = load i8, i8* %3963, align 1
  %3965 = zext i8 %3964 to i64
  store i64 %3965, i64* %RCX.i2691, align 8
  %3966 = add i64 %3919, -16
  %3967 = add i64 %3956, 12
  store i64 %3967, i64* %3, align 8
  %3968 = inttoptr i64 %3966 to i64*
  %3969 = load i64, i64* %3968, align 8
  store i64 %3969, i64* %RAX.i2697, align 8
  %3970 = add i64 %3969, 2
  %3971 = add i64 %3956, 16
  store i64 %3971, i64* %3, align 8
  %3972 = inttoptr i64 %3970 to i8*
  %3973 = load i8, i8* %3972, align 1
  %3974 = zext i8 %3973 to i64
  store i64 %3974, i64* %RDX.i2703, align 8
  %3975 = zext i8 %3973 to i32
  %3976 = zext i8 %3964 to i32
  %3977 = add nuw nsw i32 %3975, %3976
  %3978 = zext i32 %3977 to i64
  store i64 %3978, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %3979 = and i32 %3977, 255
  %3980 = tail call i32 @llvm.ctpop.i32(i32 %3979)
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  %3983 = xor i8 %3982, 1
  store i8 %3983, i8* %21, align 1
  %3984 = xor i8 %3973, %3964
  %3985 = zext i8 %3984 to i32
  %3986 = xor i32 %3985, %3977
  %3987 = lshr i32 %3986, 4
  %3988 = trunc i32 %3987 to i8
  %3989 = and i8 %3988, 1
  store i8 %3989, i8* %27, align 1
  %3990 = icmp eq i32 %3977, 0
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3992 = add i64 %3919, -196
  %3993 = add i64 %3956, 24
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i32*
  store i32 %3977, i32* %3994, align 4
  %3995 = load i64, i64* %3, align 8
  %3996 = add i64 %3995, 112
  store i64 %3996, i64* %3, align 8
  br label %block_.L_43d635

block_.L_43d5ca:                                  ; preds = %block_.L_43d599
  %3997 = add i64 %3960, 3
  %3998 = add i64 %3956, 8
  store i64 %3998, i64* %3, align 8
  %3999 = inttoptr i64 %3997 to i8*
  %4000 = load i8, i8* %3999, align 1
  %4001 = zext i8 %4000 to i64
  store i64 %4001, i64* %RCX.i2691, align 8
  %4002 = add i64 %3919, -16
  %4003 = add i64 %3956, 12
  store i64 %4003, i64* %3, align 8
  %4004 = inttoptr i64 %4002 to i64*
  %4005 = load i64, i64* %4004, align 8
  store i64 %4005, i64* %RAX.i2697, align 8
  %4006 = add i64 %3956, 15
  store i64 %4006, i64* %3, align 8
  %4007 = inttoptr i64 %4005 to i8*
  %4008 = load i8, i8* %4007, align 1
  %4009 = zext i8 %4008 to i64
  store i64 %4009, i64* %RDX.i2703, align 8
  %4010 = zext i8 %4008 to i32
  %4011 = zext i8 %4000 to i32
  %4012 = add nuw nsw i32 %4010, %4011
  %4013 = zext i32 %4012 to i64
  store i64 %4013, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4014 = and i32 %4012, 255
  %4015 = tail call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  store i8 %4018, i8* %21, align 1
  %4019 = xor i8 %4008, %4000
  %4020 = zext i8 %4019 to i32
  %4021 = xor i32 %4020, %4012
  %4022 = lshr i32 %4021, 4
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  store i8 %4024, i8* %27, align 1
  %4025 = icmp eq i32 %4012, 0
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4027 = add i64 %3956, 21
  store i64 %4027, i64* %3, align 8
  %4028 = load i64, i64* %3959, align 8
  store i64 %4028, i64* %RAX.i2697, align 8
  %4029 = add i64 %4028, 2
  %4030 = add i64 %3956, 25
  store i64 %4030, i64* %3, align 8
  %4031 = inttoptr i64 %4029 to i8*
  %4032 = load i8, i8* %4031, align 1
  %4033 = zext i8 %4032 to i64
  store i64 %4033, i64* %RDX.i2703, align 8
  %4034 = add i64 %3956, 29
  store i64 %4034, i64* %3, align 8
  %4035 = load i64, i64* %4004, align 8
  store i64 %4035, i64* %RAX.i2697, align 8
  %4036 = add i64 %4035, 1
  %4037 = add i64 %3956, 33
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i8*
  %4039 = load i8, i8* %4038, align 1
  %4040 = zext i8 %4039 to i64
  store i64 %4040, i64* %RSI.i2706, align 8
  %4041 = zext i8 %4039 to i32
  %4042 = zext i8 %4032 to i32
  %4043 = add nuw nsw i32 %4041, %4042
  %4044 = zext i32 %4043 to i64
  store i64 %4044, i64* %RDX.i2703, align 8
  %4045 = sub nsw i32 %4012, %4043
  %4046 = icmp ult i32 %4012, %4043
  %4047 = zext i1 %4046 to i8
  store i8 %4047, i8* %14, align 1
  %4048 = and i32 %4045, 255
  %4049 = tail call i32 @llvm.ctpop.i32(i32 %4048)
  %4050 = trunc i32 %4049 to i8
  %4051 = and i8 %4050, 1
  %4052 = xor i8 %4051, 1
  store i8 %4052, i8* %21, align 1
  %4053 = xor i32 %4043, %4012
  %4054 = xor i32 %4053, %4045
  %4055 = lshr i32 %4054, 4
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  store i8 %4057, i8* %27, align 1
  %4058 = icmp eq i32 %4045, 0
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %30, align 1
  %4060 = lshr i32 %4045, 31
  %4061 = trunc i32 %4060 to i8
  store i8 %4061, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4062 = icmp ne i8 %4061, 0
  %.v104 = select i1 %4062, i64 43, i64 72
  %4063 = add i64 %3956, %.v104
  %4064 = load i64, i64* %RBP.i, align 8
  %4065 = add i64 %4064, -8
  %4066 = add i64 %4063, 4
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i64*
  %4068 = load i64, i64* %4067, align 8
  store i64 %4068, i64* %RAX.i2697, align 8
  br i1 %4062, label %block_43d5f5, label %block_.L_43d612

block_43d5f5:                                     ; preds = %block_.L_43d5ca
  %4069 = add i64 %4068, 2
  %4070 = add i64 %4063, 8
  store i64 %4070, i64* %3, align 8
  %4071 = inttoptr i64 %4069 to i8*
  %4072 = load i8, i8* %4071, align 1
  %4073 = zext i8 %4072 to i64
  store i64 %4073, i64* %RCX.i2691, align 8
  %4074 = add i64 %4064, -16
  %4075 = add i64 %4063, 12
  store i64 %4075, i64* %3, align 8
  %4076 = inttoptr i64 %4074 to i64*
  %4077 = load i64, i64* %4076, align 8
  store i64 %4077, i64* %RAX.i2697, align 8
  %4078 = add i64 %4077, 1
  %4079 = add i64 %4063, 16
  store i64 %4079, i64* %3, align 8
  %4080 = inttoptr i64 %4078 to i8*
  %4081 = load i8, i8* %4080, align 1
  %4082 = zext i8 %4081 to i64
  store i64 %4082, i64* %RDX.i2703, align 8
  %4083 = zext i8 %4081 to i32
  %4084 = zext i8 %4072 to i32
  %4085 = add nuw nsw i32 %4083, %4084
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4087 = and i32 %4085, 255
  %4088 = tail call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  store i8 %4091, i8* %21, align 1
  %4092 = xor i8 %4081, %4072
  %4093 = zext i8 %4092 to i32
  %4094 = xor i32 %4093, %4085
  %4095 = lshr i32 %4094, 4
  %4096 = trunc i32 %4095 to i8
  %4097 = and i8 %4096, 1
  store i8 %4097, i8* %27, align 1
  %4098 = icmp eq i32 %4085, 0
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4100 = add i64 %4064, -200
  %4101 = add i64 %4063, 24
  store i64 %4101, i64* %3, align 8
  %4102 = inttoptr i64 %4100 to i32*
  store i32 %4085, i32* %4102, align 4
  %4103 = load i64, i64* %3, align 8
  %4104 = add i64 %4103, 28
  store i64 %4104, i64* %3, align 8
  br label %block_.L_43d629

block_.L_43d612:                                  ; preds = %block_.L_43d5ca
  %4105 = add i64 %4068, 3
  %4106 = add i64 %4063, 8
  store i64 %4106, i64* %3, align 8
  %4107 = inttoptr i64 %4105 to i8*
  %4108 = load i8, i8* %4107, align 1
  %4109 = zext i8 %4108 to i64
  store i64 %4109, i64* %RCX.i2691, align 8
  %4110 = add i64 %4064, -16
  %4111 = add i64 %4063, 12
  store i64 %4111, i64* %3, align 8
  %4112 = inttoptr i64 %4110 to i64*
  %4113 = load i64, i64* %4112, align 8
  store i64 %4113, i64* %RAX.i2697, align 8
  %4114 = add i64 %4063, 15
  store i64 %4114, i64* %3, align 8
  %4115 = inttoptr i64 %4113 to i8*
  %4116 = load i8, i8* %4115, align 1
  %4117 = zext i8 %4116 to i64
  store i64 %4117, i64* %RDX.i2703, align 8
  %4118 = zext i8 %4116 to i32
  %4119 = zext i8 %4108 to i32
  %4120 = add nuw nsw i32 %4118, %4119
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4122 = and i32 %4120, 255
  %4123 = tail call i32 @llvm.ctpop.i32(i32 %4122)
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = xor i8 %4125, 1
  store i8 %4126, i8* %21, align 1
  %4127 = xor i8 %4116, %4108
  %4128 = zext i8 %4127 to i32
  %4129 = xor i32 %4128, %4120
  %4130 = lshr i32 %4129, 4
  %4131 = trunc i32 %4130 to i8
  %4132 = and i8 %4131, 1
  store i8 %4132, i8* %27, align 1
  %4133 = icmp eq i32 %4120, 0
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4135 = add i64 %4064, -200
  %4136 = add i64 %4063, 23
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i32*
  store i32 %4120, i32* %4137, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_43d629

block_.L_43d629:                                  ; preds = %block_.L_43d612, %block_43d5f5
  %4138 = phi i64 [ %.pre69, %block_.L_43d612 ], [ %4104, %block_43d5f5 ]
  %4139 = load i64, i64* %RBP.i, align 8
  %4140 = add i64 %4139, -200
  %4141 = add i64 %4138, 6
  store i64 %4141, i64* %3, align 8
  %4142 = inttoptr i64 %4140 to i32*
  %4143 = load i32, i32* %4142, align 4
  %4144 = zext i32 %4143 to i64
  store i64 %4144, i64* %RAX.i2697, align 8
  %4145 = add i64 %4139, -196
  %4146 = add i64 %4138, 12
  store i64 %4146, i64* %3, align 8
  %4147 = inttoptr i64 %4145 to i32*
  store i32 %4143, i32* %4147, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_43d635

block_.L_43d635:                                  ; preds = %block_.L_43d629, %block_43d5ad
  %4148 = phi i64 [ %.pre70, %block_.L_43d629 ], [ %3996, %block_43d5ad ]
  %4149 = load i64, i64* %RBP.i, align 8
  %4150 = add i64 %4149, -196
  %4151 = add i64 %4148, 6
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i32*
  %4153 = load i32, i32* %4152, align 4
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RAX.i2697, align 8
  %4155 = add i64 %4149, -184
  %4156 = add i64 %4148, 12
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  store i32 %4153, i32* %4157, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_43d641

block_.L_43d641:                                  ; preds = %block_.L_43d635, %block_.L_43d511
  %4158 = phi i64 [ %.pre74, %block_.L_43d635 ], [ %3766, %block_.L_43d511 ]
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -184
  %4161 = add i64 %4158, 6
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RAX.i2697, align 8
  %4165 = trunc i32 %4163 to i8
  store i8 %4165, i8* %CL.i2385, align 1
  %4166 = add i64 %4159, -30
  %4167 = add i64 %4158, 11
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4166 to i8*
  store i8 %4165, i8* %4168, align 1
  %4169 = load i64, i64* %RBP.i, align 8
  %4170 = add i64 %4169, -8
  %4171 = load i64, i64* %3, align 8
  %4172 = add i64 %4171, 4
  store i64 %4172, i64* %3, align 8
  %4173 = inttoptr i64 %4170 to i64*
  %4174 = load i64, i64* %4173, align 8
  store i64 %4174, i64* %RDX.i2703, align 8
  %4175 = add i64 %4174, 3
  %4176 = add i64 %4171, 8
  store i64 %4176, i64* %3, align 8
  %4177 = inttoptr i64 %4175 to i8*
  %4178 = load i8, i8* %4177, align 1
  %4179 = zext i8 %4178 to i64
  store i64 %4179, i64* %RAX.i2697, align 8
  %4180 = add i64 %4169, -16
  %4181 = add i64 %4171, 12
  store i64 %4181, i64* %3, align 8
  %4182 = inttoptr i64 %4180 to i64*
  %4183 = load i64, i64* %4182, align 8
  store i64 %4183, i64* %RDX.i2703, align 8
  %4184 = add i64 %4183, 1
  %4185 = add i64 %4171, 16
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i8*
  %4187 = load i8, i8* %4186, align 1
  %4188 = zext i8 %4187 to i64
  store i64 %4188, i64* %RSI.i2706, align 8
  %4189 = zext i8 %4187 to i32
  %4190 = zext i8 %4178 to i32
  %4191 = add nuw nsw i32 %4189, %4190
  %4192 = zext i32 %4191 to i64
  store i64 %4192, i64* %RAX.i2697, align 8
  store i8 0, i8* %14, align 1
  %4193 = and i32 %4191, 255
  %4194 = tail call i32 @llvm.ctpop.i32(i32 %4193)
  %4195 = trunc i32 %4194 to i8
  %4196 = and i8 %4195, 1
  %4197 = xor i8 %4196, 1
  store i8 %4197, i8* %21, align 1
  %4198 = xor i8 %4187, %4178
  %4199 = zext i8 %4198 to i32
  %4200 = xor i32 %4199, %4191
  %4201 = lshr i32 %4200, 4
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  store i8 %4203, i8* %27, align 1
  %4204 = icmp eq i32 %4191, 0
  %4205 = zext i1 %4204 to i8
  store i8 %4205, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4206 = add i64 %4171, 22
  store i64 %4206, i64* %3, align 8
  %4207 = load i64, i64* %4173, align 8
  store i64 %4207, i64* %RDX.i2703, align 8
  %4208 = add i64 %4207, 1
  %4209 = add i64 %4171, 26
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i8*
  %4211 = load i8, i8* %4210, align 1
  %4212 = zext i8 %4211 to i64
  store i64 %4212, i64* %RSI.i2706, align 8
  %4213 = add i64 %4171, 30
  store i64 %4213, i64* %3, align 8
  %4214 = load i64, i64* %4182, align 8
  store i64 %4214, i64* %RDX.i2703, align 8
  %4215 = add i64 %4214, 3
  %4216 = add i64 %4171, 34
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i8*
  %4218 = load i8, i8* %4217, align 1
  %4219 = zext i8 %4218 to i64
  store i64 %4219, i64* %RDI.i2709, align 8
  %4220 = zext i8 %4218 to i32
  %4221 = zext i8 %4211 to i32
  %4222 = add nuw nsw i32 %4220, %4221
  %4223 = zext i32 %4222 to i64
  store i64 %4223, i64* %RSI.i2706, align 8
  %4224 = sub nsw i32 %4191, %4222
  %4225 = icmp ult i32 %4191, %4222
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %14, align 1
  %4227 = and i32 %4224, 255
  %4228 = tail call i32 @llvm.ctpop.i32(i32 %4227)
  %4229 = trunc i32 %4228 to i8
  %4230 = and i8 %4229, 1
  %4231 = xor i8 %4230, 1
  store i8 %4231, i8* %21, align 1
  %4232 = xor i32 %4222, %4191
  %4233 = xor i32 %4232, %4224
  %4234 = lshr i32 %4233, 4
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  store i8 %4236, i8* %27, align 1
  %4237 = icmp eq i32 %4224, 0
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %30, align 1
  %4239 = lshr i32 %4224, 31
  %4240 = trunc i32 %4239 to i8
  store i8 %4240, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4241 = icmp ne i8 %4240, 0
  %.v105 = select i1 %4241, i64 44, i64 73
  %4242 = add i64 %4171, %.v105
  %4243 = load i64, i64* %RBP.i, align 8
  %4244 = add i64 %4243, -8
  %4245 = add i64 %4242, 4
  store i64 %4245, i64* %3, align 8
  %4246 = inttoptr i64 %4244 to i64*
  %4247 = load i64, i64* %4246, align 8
  store i64 %4247, i64* %RAX.i2697, align 8
  br i1 %4241, label %block_43d678, label %block_.L_43d695

block_43d678:                                     ; preds = %block_.L_43d641
  %4248 = add i64 %4247, 1
  %4249 = add i64 %4242, 8
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i8*
  %4251 = load i8, i8* %4250, align 1
  %4252 = zext i8 %4251 to i64
  store i64 %4252, i64* %RCX.i2691, align 8
  %4253 = add i64 %4243, -16
  %4254 = add i64 %4242, 12
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i64*
  %4256 = load i64, i64* %4255, align 8
  store i64 %4256, i64* %RAX.i2697, align 8
  %4257 = add i64 %4256, 3
  %4258 = add i64 %4242, 16
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i8*
  %4260 = load i8, i8* %4259, align 1
  %4261 = zext i8 %4260 to i64
  store i64 %4261, i64* %RDX.i2703, align 8
  %4262 = zext i8 %4260 to i32
  %4263 = zext i8 %4251 to i32
  %4264 = add nuw nsw i32 %4262, %4263
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4266 = and i32 %4264, 255
  %4267 = tail call i32 @llvm.ctpop.i32(i32 %4266)
  %4268 = trunc i32 %4267 to i8
  %4269 = and i8 %4268, 1
  %4270 = xor i8 %4269, 1
  store i8 %4270, i8* %21, align 1
  %4271 = xor i8 %4260, %4251
  %4272 = zext i8 %4271 to i32
  %4273 = xor i32 %4272, %4264
  %4274 = lshr i32 %4273, 4
  %4275 = trunc i32 %4274 to i8
  %4276 = and i8 %4275, 1
  store i8 %4276, i8* %27, align 1
  %4277 = icmp eq i32 %4264, 0
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4279 = add i64 %4243, -204
  %4280 = add i64 %4242, 24
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4279 to i32*
  store i32 %4264, i32* %4281, align 4
  %4282 = load i64, i64* %3, align 8
  %4283 = add i64 %4282, 29
  store i64 %4283, i64* %3, align 8
  br label %block_.L_43d6ad

block_.L_43d695:                                  ; preds = %block_.L_43d641
  %4284 = add i64 %4247, 3
  %4285 = add i64 %4242, 8
  store i64 %4285, i64* %3, align 8
  %4286 = inttoptr i64 %4284 to i8*
  %4287 = load i8, i8* %4286, align 1
  %4288 = zext i8 %4287 to i64
  store i64 %4288, i64* %RCX.i2691, align 8
  %4289 = add i64 %4243, -16
  %4290 = add i64 %4242, 12
  store i64 %4290, i64* %3, align 8
  %4291 = inttoptr i64 %4289 to i64*
  %4292 = load i64, i64* %4291, align 8
  store i64 %4292, i64* %RAX.i2697, align 8
  %4293 = add i64 %4292, 1
  %4294 = add i64 %4242, 16
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to i8*
  %4296 = load i8, i8* %4295, align 1
  %4297 = zext i8 %4296 to i64
  store i64 %4297, i64* %RDX.i2703, align 8
  %4298 = zext i8 %4296 to i32
  %4299 = zext i8 %4287 to i32
  %4300 = add nuw nsw i32 %4298, %4299
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4302 = and i32 %4300, 255
  %4303 = tail call i32 @llvm.ctpop.i32(i32 %4302)
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = xor i8 %4305, 1
  store i8 %4306, i8* %21, align 1
  %4307 = xor i8 %4296, %4287
  %4308 = zext i8 %4307 to i32
  %4309 = xor i32 %4308, %4300
  %4310 = lshr i32 %4309, 4
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  store i8 %4312, i8* %27, align 1
  %4313 = icmp eq i32 %4300, 0
  %4314 = zext i1 %4313 to i8
  store i8 %4314, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4315 = add i64 %4243, -204
  %4316 = add i64 %4242, 24
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4315 to i32*
  store i32 %4300, i32* %4317, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_43d6ad

block_.L_43d6ad:                                  ; preds = %block_.L_43d695, %block_43d678
  %4318 = phi i64 [ %.pre75, %block_.L_43d695 ], [ %4283, %block_43d678 ]
  %4319 = load i64, i64* %RBP.i, align 8
  %4320 = add i64 %4319, -204
  %4321 = add i64 %4318, 6
  store i64 %4321, i64* %3, align 8
  %4322 = inttoptr i64 %4320 to i32*
  %4323 = load i32, i32* %4322, align 4
  %4324 = zext i32 %4323 to i64
  store i64 %4324, i64* %RAX.i2697, align 8
  %4325 = add i64 %4319, -8
  %4326 = add i64 %4318, 10
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4325 to i64*
  %4328 = load i64, i64* %4327, align 8
  store i64 %4328, i64* %RCX.i2691, align 8
  %4329 = add i64 %4328, 3
  %4330 = add i64 %4318, 14
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i8*
  %4332 = load i8, i8* %4331, align 1
  %4333 = zext i8 %4332 to i64
  store i64 %4333, i64* %RDX.i2703, align 8
  %4334 = add i64 %4319, -16
  %4335 = add i64 %4318, 18
  store i64 %4335, i64* %3, align 8
  %4336 = inttoptr i64 %4334 to i64*
  %4337 = load i64, i64* %4336, align 8
  store i64 %4337, i64* %RCX.i2691, align 8
  %4338 = add i64 %4337, 2
  %4339 = add i64 %4318, 22
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4338 to i8*
  %4341 = load i8, i8* %4340, align 1
  %4342 = zext i8 %4341 to i64
  store i64 %4342, i64* %RSI.i2706, align 8
  %4343 = zext i8 %4341 to i32
  %4344 = zext i8 %4332 to i32
  %4345 = add nuw nsw i32 %4343, %4344
  %4346 = zext i32 %4345 to i64
  store i64 %4346, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %4347 = and i32 %4345, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %21, align 1
  %4352 = xor i8 %4341, %4332
  %4353 = zext i8 %4352 to i32
  %4354 = xor i32 %4353, %4345
  %4355 = lshr i32 %4354, 4
  %4356 = trunc i32 %4355 to i8
  %4357 = and i8 %4356, 1
  store i8 %4357, i8* %27, align 1
  %4358 = icmp eq i32 %4345, 0
  %4359 = zext i1 %4358 to i8
  store i8 %4359, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4360 = add i64 %4318, 28
  store i64 %4360, i64* %3, align 8
  %4361 = load i64, i64* %4327, align 8
  store i64 %4361, i64* %RCX.i2691, align 8
  %4362 = add i64 %4361, 2
  %4363 = add i64 %4318, 32
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i8*
  %4365 = load i8, i8* %4364, align 1
  %4366 = zext i8 %4365 to i64
  store i64 %4366, i64* %RSI.i2706, align 8
  %4367 = add i64 %4318, 36
  store i64 %4367, i64* %3, align 8
  %4368 = load i64, i64* %4336, align 8
  store i64 %4368, i64* %RCX.i2691, align 8
  %4369 = add i64 %4368, 3
  %4370 = add i64 %4318, 40
  store i64 %4370, i64* %3, align 8
  %4371 = inttoptr i64 %4369 to i8*
  %4372 = load i8, i8* %4371, align 1
  %4373 = zext i8 %4372 to i64
  store i64 %4373, i64* %RDI.i2709, align 8
  %4374 = zext i8 %4372 to i32
  %4375 = zext i8 %4365 to i32
  %4376 = add nuw nsw i32 %4374, %4375
  %4377 = zext i32 %4376 to i64
  store i64 %4377, i64* %RSI.i2706, align 8
  %4378 = sub nsw i32 %4345, %4376
  %4379 = icmp ult i32 %4345, %4376
  %4380 = zext i1 %4379 to i8
  store i8 %4380, i8* %14, align 1
  %4381 = and i32 %4378, 255
  %4382 = tail call i32 @llvm.ctpop.i32(i32 %4381)
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = xor i8 %4384, 1
  store i8 %4385, i8* %21, align 1
  %4386 = xor i32 %4376, %4345
  %4387 = xor i32 %4386, %4378
  %4388 = lshr i32 %4387, 4
  %4389 = trunc i32 %4388 to i8
  %4390 = and i8 %4389, 1
  store i8 %4390, i8* %27, align 1
  %4391 = icmp eq i32 %4378, 0
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %30, align 1
  %4393 = lshr i32 %4378, 31
  %4394 = trunc i32 %4393 to i8
  store i8 %4394, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4395 = load i64, i64* %RBP.i, align 8
  %4396 = add i64 %4395, -208
  %4397 = load i32, i32* %EAX.i2670, align 4
  %4398 = add i64 %4318, 50
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4396 to i32*
  store i32 %4397, i32* %4399, align 4
  %4400 = load i64, i64* %3, align 8
  %4401 = load i8, i8* %33, align 1
  %4402 = icmp ne i8 %4401, 0
  %4403 = load i8, i8* %39, align 1
  %4404 = icmp ne i8 %4403, 0
  %4405 = xor i1 %4402, %4404
  %.v128 = select i1 %4405, i64 6, i64 35
  %4406 = add i64 %4400, %.v128
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -8
  %4409 = add i64 %4406, 4
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RAX.i2697, align 8
  br i1 %4405, label %block_43d6e5, label %block_.L_43d702

block_43d6e5:                                     ; preds = %block_.L_43d6ad
  %4412 = add i64 %4411, 3
  %4413 = add i64 %4406, 8
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i8*
  %4415 = load i8, i8* %4414, align 1
  %4416 = zext i8 %4415 to i64
  store i64 %4416, i64* %RCX.i2691, align 8
  %4417 = add i64 %4407, -16
  %4418 = add i64 %4406, 12
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i64*
  %4420 = load i64, i64* %4419, align 8
  store i64 %4420, i64* %RAX.i2697, align 8
  %4421 = add i64 %4420, 2
  %4422 = add i64 %4406, 16
  store i64 %4422, i64* %3, align 8
  %4423 = inttoptr i64 %4421 to i8*
  %4424 = load i8, i8* %4423, align 1
  %4425 = zext i8 %4424 to i64
  store i64 %4425, i64* %RDX.i2703, align 8
  %4426 = zext i8 %4424 to i32
  %4427 = zext i8 %4415 to i32
  %4428 = add nuw nsw i32 %4426, %4427
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4430 = and i32 %4428, 255
  %4431 = tail call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  store i8 %4434, i8* %21, align 1
  %4435 = xor i8 %4424, %4415
  %4436 = zext i8 %4435 to i32
  %4437 = xor i32 %4436, %4428
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  store i8 %4440, i8* %27, align 1
  %4441 = icmp eq i32 %4428, 0
  %4442 = zext i1 %4441 to i8
  store i8 %4442, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4443 = add i64 %4407, -212
  %4444 = add i64 %4406, 24
  store i64 %4444, i64* %3, align 8
  %4445 = inttoptr i64 %4443 to i32*
  store i32 %4428, i32* %4445, align 4
  %4446 = load i64, i64* %3, align 8
  %4447 = add i64 %4446, 29
  store i64 %4447, i64* %3, align 8
  br label %block_.L_43d71a

block_.L_43d702:                                  ; preds = %block_.L_43d6ad
  %4448 = add i64 %4411, 2
  %4449 = add i64 %4406, 8
  store i64 %4449, i64* %3, align 8
  %4450 = inttoptr i64 %4448 to i8*
  %4451 = load i8, i8* %4450, align 1
  %4452 = zext i8 %4451 to i64
  store i64 %4452, i64* %RCX.i2691, align 8
  %4453 = add i64 %4407, -16
  %4454 = add i64 %4406, 12
  store i64 %4454, i64* %3, align 8
  %4455 = inttoptr i64 %4453 to i64*
  %4456 = load i64, i64* %4455, align 8
  store i64 %4456, i64* %RAX.i2697, align 8
  %4457 = add i64 %4456, 3
  %4458 = add i64 %4406, 16
  store i64 %4458, i64* %3, align 8
  %4459 = inttoptr i64 %4457 to i8*
  %4460 = load i8, i8* %4459, align 1
  %4461 = zext i8 %4460 to i64
  store i64 %4461, i64* %RDX.i2703, align 8
  %4462 = zext i8 %4460 to i32
  %4463 = zext i8 %4451 to i32
  %4464 = add nuw nsw i32 %4462, %4463
  %4465 = zext i32 %4464 to i64
  store i64 %4465, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4466 = and i32 %4464, 255
  %4467 = tail call i32 @llvm.ctpop.i32(i32 %4466)
  %4468 = trunc i32 %4467 to i8
  %4469 = and i8 %4468, 1
  %4470 = xor i8 %4469, 1
  store i8 %4470, i8* %21, align 1
  %4471 = xor i8 %4460, %4451
  %4472 = zext i8 %4471 to i32
  %4473 = xor i32 %4472, %4464
  %4474 = lshr i32 %4473, 4
  %4475 = trunc i32 %4474 to i8
  %4476 = and i8 %4475, 1
  store i8 %4476, i8* %27, align 1
  %4477 = icmp eq i32 %4464, 0
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4479 = add i64 %4407, -212
  %4480 = add i64 %4406, 24
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  store i32 %4464, i32* %4481, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_43d71a

block_.L_43d71a:                                  ; preds = %block_.L_43d702, %block_43d6e5
  %4482 = phi i64 [ %.pre76, %block_.L_43d702 ], [ %4447, %block_43d6e5 ]
  %4483 = load i64, i64* %RBP.i, align 8
  %4484 = add i64 %4483, -212
  %4485 = add i64 %4482, 6
  store i64 %4485, i64* %3, align 8
  %4486 = inttoptr i64 %4484 to i32*
  %4487 = load i32, i32* %4486, align 4
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %RAX.i2697, align 8
  %4489 = add i64 %4483, -208
  %4490 = add i64 %4482, 12
  store i64 %4490, i64* %3, align 8
  %4491 = inttoptr i64 %4489 to i32*
  %4492 = load i32, i32* %4491, align 4
  %4493 = zext i32 %4492 to i64
  store i64 %4493, i64* %RCX.i2691, align 8
  %4494 = sub i32 %4492, %4487
  %4495 = icmp ult i32 %4492, %4487
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %14, align 1
  %4497 = and i32 %4494, 255
  %4498 = tail call i32 @llvm.ctpop.i32(i32 %4497)
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  %4501 = xor i8 %4500, 1
  store i8 %4501, i8* %21, align 1
  %4502 = xor i32 %4487, %4492
  %4503 = xor i32 %4502, %4494
  %4504 = lshr i32 %4503, 4
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  store i8 %4506, i8* %27, align 1
  %4507 = icmp eq i32 %4494, 0
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %30, align 1
  %4509 = lshr i32 %4494, 31
  %4510 = trunc i32 %4509 to i8
  store i8 %4510, i8* %33, align 1
  %4511 = lshr i32 %4492, 31
  %4512 = lshr i32 %4487, 31
  %4513 = xor i32 %4512, %4511
  %4514 = xor i32 %4509, %4511
  %4515 = add nuw nsw i32 %4514, %4513
  %4516 = icmp eq i32 %4515, 2
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %39, align 1
  %4518 = icmp ne i8 %4510, 0
  %4519 = xor i1 %4518, %4516
  %.v96 = select i1 %4519, i64 20, i64 134
  %4520 = add i64 %4482, %.v96
  %4521 = add i64 %4483, -8
  %4522 = add i64 %4520, 4
  store i64 %4522, i64* %3, align 8
  %4523 = inttoptr i64 %4521 to i64*
  %4524 = load i64, i64* %4523, align 8
  store i64 %4524, i64* %RAX.i2697, align 8
  %4525 = add i64 %4524, 3
  %4526 = add i64 %4520, 8
  store i64 %4526, i64* %3, align 8
  %4527 = inttoptr i64 %4525 to i8*
  %4528 = load i8, i8* %4527, align 1
  %4529 = zext i8 %4528 to i64
  store i64 %4529, i64* %RCX.i2691, align 8
  %4530 = add i64 %4483, -16
  %4531 = add i64 %4520, 12
  store i64 %4531, i64* %3, align 8
  %4532 = inttoptr i64 %4530 to i64*
  %4533 = load i64, i64* %4532, align 8
  store i64 %4533, i64* %RAX.i2697, align 8
  br i1 %4519, label %block_43d72e, label %block_.L_43d7a0

block_43d72e:                                     ; preds = %block_.L_43d71a
  %4534 = add i64 %4533, 2
  %4535 = add i64 %4520, 16
  store i64 %4535, i64* %3, align 8
  %4536 = inttoptr i64 %4534 to i8*
  %4537 = load i8, i8* %4536, align 1
  %4538 = zext i8 %4537 to i64
  store i64 %4538, i64* %RDX.i2703, align 8
  %4539 = zext i8 %4537 to i32
  %4540 = zext i8 %4528 to i32
  %4541 = add nuw nsw i32 %4539, %4540
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4543 = and i32 %4541, 255
  %4544 = tail call i32 @llvm.ctpop.i32(i32 %4543)
  %4545 = trunc i32 %4544 to i8
  %4546 = and i8 %4545, 1
  %4547 = xor i8 %4546, 1
  store i8 %4547, i8* %21, align 1
  %4548 = xor i8 %4537, %4528
  %4549 = zext i8 %4548 to i32
  %4550 = xor i32 %4549, %4541
  %4551 = lshr i32 %4550, 4
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  store i8 %4553, i8* %27, align 1
  %4554 = icmp eq i32 %4541, 0
  %4555 = zext i1 %4554 to i8
  store i8 %4555, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4556 = add i64 %4520, 22
  store i64 %4556, i64* %3, align 8
  %4557 = load i64, i64* %4523, align 8
  store i64 %4557, i64* %RAX.i2697, align 8
  %4558 = add i64 %4557, 2
  %4559 = add i64 %4520, 26
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i8*
  %4561 = load i8, i8* %4560, align 1
  %4562 = zext i8 %4561 to i64
  store i64 %4562, i64* %RDX.i2703, align 8
  %4563 = add i64 %4520, 30
  store i64 %4563, i64* %3, align 8
  %4564 = load i64, i64* %4532, align 8
  store i64 %4564, i64* %RAX.i2697, align 8
  %4565 = add i64 %4564, 3
  %4566 = add i64 %4520, 34
  store i64 %4566, i64* %3, align 8
  %4567 = inttoptr i64 %4565 to i8*
  %4568 = load i8, i8* %4567, align 1
  %4569 = zext i8 %4568 to i64
  store i64 %4569, i64* %RSI.i2706, align 8
  %4570 = zext i8 %4568 to i32
  %4571 = zext i8 %4561 to i32
  %4572 = add nuw nsw i32 %4570, %4571
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RDX.i2703, align 8
  %4574 = sub nsw i32 %4541, %4572
  %4575 = icmp ult i32 %4541, %4572
  %4576 = zext i1 %4575 to i8
  store i8 %4576, i8* %14, align 1
  %4577 = and i32 %4574, 255
  %4578 = tail call i32 @llvm.ctpop.i32(i32 %4577)
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  %4581 = xor i8 %4580, 1
  store i8 %4581, i8* %21, align 1
  %4582 = xor i32 %4572, %4541
  %4583 = xor i32 %4582, %4574
  %4584 = lshr i32 %4583, 4
  %4585 = trunc i32 %4584 to i8
  %4586 = and i8 %4585, 1
  store i8 %4586, i8* %27, align 1
  %4587 = icmp eq i32 %4574, 0
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %30, align 1
  %4589 = lshr i32 %4574, 31
  %4590 = trunc i32 %4589 to i8
  store i8 %4590, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4591 = icmp ne i8 %4590, 0
  %.v114 = select i1 %4591, i64 44, i64 73
  %4592 = add i64 %4520, %.v114
  %4593 = load i64, i64* %RBP.i, align 8
  %4594 = add i64 %4593, -8
  %4595 = add i64 %4592, 4
  store i64 %4595, i64* %3, align 8
  %4596 = inttoptr i64 %4594 to i64*
  %4597 = load i64, i64* %4596, align 8
  store i64 %4597, i64* %RAX.i2697, align 8
  br i1 %4591, label %block_43d75a, label %block_.L_43d777

block_43d75a:                                     ; preds = %block_43d72e
  %4598 = add i64 %4597, 3
  %4599 = add i64 %4592, 8
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i8*
  %4601 = load i8, i8* %4600, align 1
  %4602 = zext i8 %4601 to i64
  store i64 %4602, i64* %RCX.i2691, align 8
  %4603 = add i64 %4593, -16
  %4604 = add i64 %4592, 12
  store i64 %4604, i64* %3, align 8
  %4605 = inttoptr i64 %4603 to i64*
  %4606 = load i64, i64* %4605, align 8
  store i64 %4606, i64* %RAX.i2697, align 8
  %4607 = add i64 %4606, 2
  %4608 = add i64 %4592, 16
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i8*
  %4610 = load i8, i8* %4609, align 1
  %4611 = zext i8 %4610 to i64
  store i64 %4611, i64* %RDX.i2703, align 8
  %4612 = zext i8 %4610 to i32
  %4613 = zext i8 %4601 to i32
  %4614 = add nuw nsw i32 %4612, %4613
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4616 = and i32 %4614, 255
  %4617 = tail call i32 @llvm.ctpop.i32(i32 %4616)
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = xor i8 %4619, 1
  store i8 %4620, i8* %21, align 1
  %4621 = xor i8 %4610, %4601
  %4622 = zext i8 %4621 to i32
  %4623 = xor i32 %4622, %4614
  %4624 = lshr i32 %4623, 4
  %4625 = trunc i32 %4624 to i8
  %4626 = and i8 %4625, 1
  store i8 %4626, i8* %27, align 1
  %4627 = icmp eq i32 %4614, 0
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4629 = add i64 %4593, -216
  %4630 = add i64 %4592, 24
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i32*
  store i32 %4614, i32* %4631, align 4
  %4632 = load i64, i64* %3, align 8
  %4633 = add i64 %4632, 29
  store i64 %4633, i64* %3, align 8
  br label %block_.L_43d78f

block_.L_43d777:                                  ; preds = %block_43d72e
  %4634 = add i64 %4597, 2
  %4635 = add i64 %4592, 8
  store i64 %4635, i64* %3, align 8
  %4636 = inttoptr i64 %4634 to i8*
  %4637 = load i8, i8* %4636, align 1
  %4638 = zext i8 %4637 to i64
  store i64 %4638, i64* %RCX.i2691, align 8
  %4639 = add i64 %4593, -16
  %4640 = add i64 %4592, 12
  store i64 %4640, i64* %3, align 8
  %4641 = inttoptr i64 %4639 to i64*
  %4642 = load i64, i64* %4641, align 8
  store i64 %4642, i64* %RAX.i2697, align 8
  %4643 = add i64 %4642, 3
  %4644 = add i64 %4592, 16
  store i64 %4644, i64* %3, align 8
  %4645 = inttoptr i64 %4643 to i8*
  %4646 = load i8, i8* %4645, align 1
  %4647 = zext i8 %4646 to i64
  store i64 %4647, i64* %RDX.i2703, align 8
  %4648 = zext i8 %4646 to i32
  %4649 = zext i8 %4637 to i32
  %4650 = add nuw nsw i32 %4648, %4649
  %4651 = zext i32 %4650 to i64
  store i64 %4651, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4652 = and i32 %4650, 255
  %4653 = tail call i32 @llvm.ctpop.i32(i32 %4652)
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = xor i8 %4655, 1
  store i8 %4656, i8* %21, align 1
  %4657 = xor i8 %4646, %4637
  %4658 = zext i8 %4657 to i32
  %4659 = xor i32 %4658, %4650
  %4660 = lshr i32 %4659, 4
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  store i8 %4662, i8* %27, align 1
  %4663 = icmp eq i32 %4650, 0
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4665 = add i64 %4593, -216
  %4666 = add i64 %4592, 24
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i32*
  store i32 %4650, i32* %4667, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_43d78f

block_.L_43d78f:                                  ; preds = %block_.L_43d777, %block_43d75a
  %4668 = phi i64 [ %.pre78, %block_.L_43d777 ], [ %4633, %block_43d75a ]
  %4669 = load i64, i64* %RBP.i, align 8
  %4670 = add i64 %4669, -216
  %4671 = add i64 %4668, 6
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4670 to i32*
  %4673 = load i32, i32* %4672, align 4
  %4674 = zext i32 %4673 to i64
  store i64 %4674, i64* %RAX.i2697, align 8
  %4675 = add i64 %4669, -220
  %4676 = add i64 %4668, 12
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i32*
  store i32 %4673, i32* %4677, align 4
  %4678 = load i64, i64* %3, align 8
  %4679 = add i64 %4678, 114
  store i64 %4679, i64* %3, align 8
  br label %block_.L_43d80d

block_.L_43d7a0:                                  ; preds = %block_.L_43d71a
  %4680 = add i64 %4533, 1
  %4681 = add i64 %4520, 16
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4680 to i8*
  %4683 = load i8, i8* %4682, align 1
  %4684 = zext i8 %4683 to i64
  store i64 %4684, i64* %RDX.i2703, align 8
  %4685 = zext i8 %4683 to i32
  %4686 = zext i8 %4528 to i32
  %4687 = add nuw nsw i32 %4685, %4686
  %4688 = zext i32 %4687 to i64
  store i64 %4688, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4689 = and i32 %4687, 255
  %4690 = tail call i32 @llvm.ctpop.i32(i32 %4689)
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = xor i8 %4692, 1
  store i8 %4693, i8* %21, align 1
  %4694 = xor i8 %4683, %4528
  %4695 = zext i8 %4694 to i32
  %4696 = xor i32 %4695, %4687
  %4697 = lshr i32 %4696, 4
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  store i8 %4699, i8* %27, align 1
  %4700 = icmp eq i32 %4687, 0
  %4701 = zext i1 %4700 to i8
  store i8 %4701, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4702 = add i64 %4520, 22
  store i64 %4702, i64* %3, align 8
  %4703 = load i64, i64* %4523, align 8
  store i64 %4703, i64* %RAX.i2697, align 8
  %4704 = add i64 %4703, 1
  %4705 = add i64 %4520, 26
  store i64 %4705, i64* %3, align 8
  %4706 = inttoptr i64 %4704 to i8*
  %4707 = load i8, i8* %4706, align 1
  %4708 = zext i8 %4707 to i64
  store i64 %4708, i64* %RDX.i2703, align 8
  %4709 = add i64 %4520, 30
  store i64 %4709, i64* %3, align 8
  %4710 = load i64, i64* %4532, align 8
  store i64 %4710, i64* %RAX.i2697, align 8
  %4711 = add i64 %4710, 3
  %4712 = add i64 %4520, 34
  store i64 %4712, i64* %3, align 8
  %4713 = inttoptr i64 %4711 to i8*
  %4714 = load i8, i8* %4713, align 1
  %4715 = zext i8 %4714 to i64
  store i64 %4715, i64* %RSI.i2706, align 8
  %4716 = zext i8 %4714 to i32
  %4717 = zext i8 %4707 to i32
  %4718 = add nuw nsw i32 %4716, %4717
  %4719 = zext i32 %4718 to i64
  store i64 %4719, i64* %RDX.i2703, align 8
  %4720 = sub nsw i32 %4687, %4718
  %4721 = icmp ult i32 %4687, %4718
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %14, align 1
  %4723 = and i32 %4720, 255
  %4724 = tail call i32 @llvm.ctpop.i32(i32 %4723)
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  %4727 = xor i8 %4726, 1
  store i8 %4727, i8* %21, align 1
  %4728 = xor i32 %4718, %4687
  %4729 = xor i32 %4728, %4720
  %4730 = lshr i32 %4729, 4
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  store i8 %4732, i8* %27, align 1
  %4733 = icmp eq i32 %4720, 0
  %4734 = zext i1 %4733 to i8
  store i8 %4734, i8* %30, align 1
  %4735 = lshr i32 %4720, 31
  %4736 = trunc i32 %4735 to i8
  store i8 %4736, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4737 = icmp ne i8 %4736, 0
  %.v106 = select i1 %4737, i64 44, i64 73
  %4738 = add i64 %4520, %.v106
  %4739 = load i64, i64* %RBP.i, align 8
  %4740 = add i64 %4739, -8
  %4741 = add i64 %4738, 4
  store i64 %4741, i64* %3, align 8
  %4742 = inttoptr i64 %4740 to i64*
  %4743 = load i64, i64* %4742, align 8
  store i64 %4743, i64* %RAX.i2697, align 8
  br i1 %4737, label %block_43d7cc, label %block_.L_43d7e9

block_43d7cc:                                     ; preds = %block_.L_43d7a0
  %4744 = add i64 %4743, 1
  %4745 = add i64 %4738, 8
  store i64 %4745, i64* %3, align 8
  %4746 = inttoptr i64 %4744 to i8*
  %4747 = load i8, i8* %4746, align 1
  %4748 = zext i8 %4747 to i64
  store i64 %4748, i64* %RCX.i2691, align 8
  %4749 = add i64 %4739, -16
  %4750 = add i64 %4738, 12
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i64*
  %4752 = load i64, i64* %4751, align 8
  store i64 %4752, i64* %RAX.i2697, align 8
  %4753 = add i64 %4752, 3
  %4754 = add i64 %4738, 16
  store i64 %4754, i64* %3, align 8
  %4755 = inttoptr i64 %4753 to i8*
  %4756 = load i8, i8* %4755, align 1
  %4757 = zext i8 %4756 to i64
  store i64 %4757, i64* %RDX.i2703, align 8
  %4758 = zext i8 %4756 to i32
  %4759 = zext i8 %4747 to i32
  %4760 = add nuw nsw i32 %4758, %4759
  %4761 = zext i32 %4760 to i64
  store i64 %4761, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4762 = and i32 %4760, 255
  %4763 = tail call i32 @llvm.ctpop.i32(i32 %4762)
  %4764 = trunc i32 %4763 to i8
  %4765 = and i8 %4764, 1
  %4766 = xor i8 %4765, 1
  store i8 %4766, i8* %21, align 1
  %4767 = xor i8 %4756, %4747
  %4768 = zext i8 %4767 to i32
  %4769 = xor i32 %4768, %4760
  %4770 = lshr i32 %4769, 4
  %4771 = trunc i32 %4770 to i8
  %4772 = and i8 %4771, 1
  store i8 %4772, i8* %27, align 1
  %4773 = icmp eq i32 %4760, 0
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4775 = add i64 %4739, -224
  %4776 = add i64 %4738, 24
  store i64 %4776, i64* %3, align 8
  %4777 = inttoptr i64 %4775 to i32*
  store i32 %4760, i32* %4777, align 4
  %4778 = load i64, i64* %3, align 8
  %4779 = add i64 %4778, 29
  store i64 %4779, i64* %3, align 8
  br label %block_.L_43d801

block_.L_43d7e9:                                  ; preds = %block_.L_43d7a0
  %4780 = add i64 %4743, 3
  %4781 = add i64 %4738, 8
  store i64 %4781, i64* %3, align 8
  %4782 = inttoptr i64 %4780 to i8*
  %4783 = load i8, i8* %4782, align 1
  %4784 = zext i8 %4783 to i64
  store i64 %4784, i64* %RCX.i2691, align 8
  %4785 = add i64 %4739, -16
  %4786 = add i64 %4738, 12
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4785 to i64*
  %4788 = load i64, i64* %4787, align 8
  store i64 %4788, i64* %RAX.i2697, align 8
  %4789 = add i64 %4788, 1
  %4790 = add i64 %4738, 16
  store i64 %4790, i64* %3, align 8
  %4791 = inttoptr i64 %4789 to i8*
  %4792 = load i8, i8* %4791, align 1
  %4793 = zext i8 %4792 to i64
  store i64 %4793, i64* %RDX.i2703, align 8
  %4794 = zext i8 %4792 to i32
  %4795 = zext i8 %4783 to i32
  %4796 = add nuw nsw i32 %4794, %4795
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %4798 = and i32 %4796, 255
  %4799 = tail call i32 @llvm.ctpop.i32(i32 %4798)
  %4800 = trunc i32 %4799 to i8
  %4801 = and i8 %4800, 1
  %4802 = xor i8 %4801, 1
  store i8 %4802, i8* %21, align 1
  %4803 = xor i8 %4792, %4783
  %4804 = zext i8 %4803 to i32
  %4805 = xor i32 %4804, %4796
  %4806 = lshr i32 %4805, 4
  %4807 = trunc i32 %4806 to i8
  %4808 = and i8 %4807, 1
  store i8 %4808, i8* %27, align 1
  %4809 = icmp eq i32 %4796, 0
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4811 = add i64 %4739, -224
  %4812 = add i64 %4738, 24
  store i64 %4812, i64* %3, align 8
  %4813 = inttoptr i64 %4811 to i32*
  store i32 %4796, i32* %4813, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_43d801

block_.L_43d801:                                  ; preds = %block_.L_43d7e9, %block_43d7cc
  %4814 = phi i64 [ %.pre77, %block_.L_43d7e9 ], [ %4779, %block_43d7cc ]
  %4815 = load i64, i64* %RBP.i, align 8
  %4816 = add i64 %4815, -224
  %4817 = add i64 %4814, 6
  store i64 %4817, i64* %3, align 8
  %4818 = inttoptr i64 %4816 to i32*
  %4819 = load i32, i32* %4818, align 4
  %4820 = zext i32 %4819 to i64
  store i64 %4820, i64* %RAX.i2697, align 8
  %4821 = add i64 %4815, -220
  %4822 = add i64 %4814, 12
  store i64 %4822, i64* %3, align 8
  %4823 = inttoptr i64 %4821 to i32*
  store i32 %4819, i32* %4823, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43d80d

block_.L_43d80d:                                  ; preds = %block_.L_43d801, %block_.L_43d78f
  %4824 = phi i64 [ %.pre79, %block_.L_43d801 ], [ %4679, %block_.L_43d78f ]
  %4825 = load i64, i64* %RBP.i, align 8
  %4826 = add i64 %4825, -220
  %4827 = add i64 %4824, 6
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i32*
  %4829 = load i32, i32* %4828, align 4
  %4830 = zext i32 %4829 to i64
  store i64 %4830, i64* %RAX.i2697, align 8
  %4831 = trunc i32 %4829 to i8
  store i8 %4831, i8* %CL.i2385, align 1
  %4832 = add i64 %4825, -29
  %4833 = add i64 %4824, 11
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i8*
  store i8 %4831, i8* %4834, align 1
  %4835 = load i64, i64* %RBP.i, align 8
  %4836 = add i64 %4835, -8
  %4837 = load i64, i64* %3, align 8
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %3, align 8
  %4839 = inttoptr i64 %4836 to i64*
  %4840 = load i64, i64* %4839, align 8
  store i64 %4840, i64* %RDX.i2703, align 8
  %4841 = add i64 %4840, 3
  %4842 = add i64 %4837, 8
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i8*
  %4844 = load i8, i8* %4843, align 1
  %4845 = zext i8 %4844 to i64
  store i64 %4845, i64* %RAX.i2697, align 8
  %4846 = add i64 %4837, 12
  store i64 %4846, i64* %3, align 8
  %4847 = load i64, i64* %4839, align 8
  store i64 %4847, i64* %RDX.i2703, align 8
  %4848 = add i64 %4847, 2
  %4849 = add i64 %4837, 16
  store i64 %4849, i64* %3, align 8
  %4850 = inttoptr i64 %4848 to i8*
  %4851 = load i8, i8* %4850, align 1
  %4852 = zext i8 %4851 to i64
  store i64 %4852, i64* %RSI.i2706, align 8
  %4853 = zext i8 %4851 to i32
  %4854 = zext i8 %4844 to i32
  %4855 = sub nsw i32 %4854, %4853
  %4856 = zext i32 %4855 to i64
  store i64 %4856, i64* %RAX.i2697, align 8
  %4857 = lshr i32 %4855, 31
  %4858 = add nsw i32 %4855, -2
  %4859 = icmp ult i32 %4855, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %14, align 1
  %4861 = and i32 %4858, 255
  %4862 = tail call i32 @llvm.ctpop.i32(i32 %4861)
  %4863 = trunc i32 %4862 to i8
  %4864 = and i8 %4863, 1
  %4865 = xor i8 %4864, 1
  store i8 %4865, i8* %21, align 1
  %4866 = xor i32 %4858, %4855
  %4867 = lshr i32 %4866, 4
  %4868 = trunc i32 %4867 to i8
  %4869 = and i8 %4868, 1
  store i8 %4869, i8* %27, align 1
  %4870 = icmp eq i32 %4858, 0
  %4871 = zext i1 %4870 to i8
  store i8 %4871, i8* %30, align 1
  %4872 = lshr i32 %4858, 31
  %4873 = trunc i32 %4872 to i8
  store i8 %4873, i8* %33, align 1
  %4874 = xor i32 %4872, %4857
  %4875 = add nuw nsw i32 %4874, %4857
  %4876 = icmp eq i32 %4875, 2
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %39, align 1
  %.v107 = select i1 %4870, i64 27, i64 54
  %4878 = add i64 %4837, %.v107
  store i64 %4878, i64* %3, align 8
  br i1 %4870, label %block_43d833, label %block_.L_43d84e

block_43d833:                                     ; preds = %block_.L_43d80d
  %4879 = add i64 %4835, -16
  %4880 = add i64 %4878, 4
  store i64 %4880, i64* %3, align 8
  %4881 = inttoptr i64 %4879 to i64*
  %4882 = load i64, i64* %4881, align 8
  store i64 %4882, i64* %RAX.i2697, align 8
  %4883 = add i64 %4882, 2
  %4884 = add i64 %4878, 8
  store i64 %4884, i64* %3, align 8
  %4885 = inttoptr i64 %4883 to i8*
  %4886 = load i8, i8* %4885, align 1
  %4887 = zext i8 %4886 to i64
  store i64 %4887, i64* %RCX.i2691, align 8
  %4888 = add i64 %4878, 12
  store i64 %4888, i64* %3, align 8
  %4889 = load i64, i64* %4881, align 8
  store i64 %4889, i64* %RAX.i2697, align 8
  %4890 = add i64 %4889, 1
  %4891 = add i64 %4878, 16
  store i64 %4891, i64* %3, align 8
  %4892 = inttoptr i64 %4890 to i8*
  %4893 = load i8, i8* %4892, align 1
  %4894 = zext i8 %4893 to i64
  store i64 %4894, i64* %RDX.i2703, align 8
  %4895 = zext i8 %4893 to i32
  %4896 = zext i8 %4886 to i32
  %4897 = sub nsw i32 %4896, %4895
  %4898 = zext i32 %4897 to i64
  store i64 %4898, i64* %RCX.i2691, align 8
  %4899 = icmp eq i32 %4897, 0
  %4900 = zext i1 %4899 to i8
  %4901 = lshr i32 %4897, 31
  %4902 = add nsw i32 %4897, -1
  store i8 %4900, i8* %14, align 1
  %4903 = and i32 %4902, 255
  %4904 = tail call i32 @llvm.ctpop.i32(i32 %4903)
  %4905 = trunc i32 %4904 to i8
  %4906 = and i8 %4905, 1
  %4907 = xor i8 %4906, 1
  store i8 %4907, i8* %21, align 1
  %4908 = xor i32 %4902, %4897
  %4909 = lshr i32 %4908, 4
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  store i8 %4911, i8* %27, align 1
  %4912 = icmp eq i32 %4902, 0
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %30, align 1
  %4914 = lshr i32 %4902, 31
  %4915 = trunc i32 %4914 to i8
  store i8 %4915, i8* %33, align 1
  %4916 = xor i32 %4914, %4901
  %4917 = add nuw nsw i32 %4916, %4901
  %4918 = icmp eq i32 %4917, 2
  %4919 = zext i1 %4918 to i8
  store i8 %4919, i8* %39, align 1
  %.v113 = select i1 %4912, i64 81, i64 27
  %4920 = add i64 %4878, %.v113
  store i64 %4920, i64* %3, align 8
  br i1 %4912, label %block_.L_43d884, label %block_.L_43d84e

block_.L_43d84e:                                  ; preds = %block_.L_43d80d, %block_43d833
  %4921 = phi i64 [ %4920, %block_43d833 ], [ %4878, %block_.L_43d80d ]
  %4922 = add i64 %4921, 4
  store i64 %4922, i64* %3, align 8
  %4923 = load i64, i64* %4839, align 8
  store i64 %4923, i64* %RAX.i2697, align 8
  %4924 = add i64 %4923, 2
  %4925 = add i64 %4921, 8
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i8*
  %4927 = load i8, i8* %4926, align 1
  %4928 = zext i8 %4927 to i64
  store i64 %4928, i64* %RCX.i2691, align 8
  %4929 = add i64 %4921, 12
  store i64 %4929, i64* %3, align 8
  %4930 = load i64, i64* %4839, align 8
  store i64 %4930, i64* %RAX.i2697, align 8
  %4931 = add i64 %4930, 1
  %4932 = add i64 %4921, 16
  store i64 %4932, i64* %3, align 8
  %4933 = inttoptr i64 %4931 to i8*
  %4934 = load i8, i8* %4933, align 1
  %4935 = zext i8 %4934 to i64
  store i64 %4935, i64* %RDX.i2703, align 8
  %4936 = zext i8 %4934 to i32
  %4937 = zext i8 %4927 to i32
  %4938 = sub nsw i32 %4937, %4936
  %4939 = zext i32 %4938 to i64
  store i64 %4939, i64* %RCX.i2691, align 8
  %4940 = icmp eq i32 %4938, 0
  %4941 = zext i1 %4940 to i8
  %4942 = lshr i32 %4938, 31
  %4943 = add nsw i32 %4938, -1
  store i8 %4941, i8* %14, align 1
  %4944 = and i32 %4943, 255
  %4945 = tail call i32 @llvm.ctpop.i32(i32 %4944)
  %4946 = trunc i32 %4945 to i8
  %4947 = and i8 %4946, 1
  %4948 = xor i8 %4947, 1
  store i8 %4948, i8* %21, align 1
  %4949 = xor i32 %4943, %4938
  %4950 = lshr i32 %4949, 4
  %4951 = trunc i32 %4950 to i8
  %4952 = and i8 %4951, 1
  store i8 %4952, i8* %27, align 1
  %4953 = icmp eq i32 %4943, 0
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %30, align 1
  %4955 = lshr i32 %4943, 31
  %4956 = trunc i32 %4955 to i8
  store i8 %4956, i8* %33, align 1
  %4957 = xor i32 %4955, %4942
  %4958 = add nuw nsw i32 %4957, %4942
  %4959 = icmp eq i32 %4958, 2
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %39, align 1
  %.v108 = select i1 %4953, i64 27, i64 514
  %4961 = add i64 %4921, %.v108
  store i64 %4961, i64* %3, align 8
  br i1 %4953, label %block_43d869, label %block_.L_43da50

block_43d869:                                     ; preds = %block_.L_43d84e
  %4962 = add i64 %4835, -16
  %4963 = add i64 %4961, 4
  store i64 %4963, i64* %3, align 8
  %4964 = inttoptr i64 %4962 to i64*
  %4965 = load i64, i64* %4964, align 8
  store i64 %4965, i64* %RAX.i2697, align 8
  %4966 = add i64 %4965, 3
  %4967 = add i64 %4961, 8
  store i64 %4967, i64* %3, align 8
  %4968 = inttoptr i64 %4966 to i8*
  %4969 = load i8, i8* %4968, align 1
  %4970 = zext i8 %4969 to i64
  store i64 %4970, i64* %RCX.i2691, align 8
  %4971 = add i64 %4961, 12
  store i64 %4971, i64* %3, align 8
  %4972 = load i64, i64* %4964, align 8
  store i64 %4972, i64* %RAX.i2697, align 8
  %4973 = add i64 %4972, 2
  %4974 = add i64 %4961, 16
  store i64 %4974, i64* %3, align 8
  %4975 = inttoptr i64 %4973 to i8*
  %4976 = load i8, i8* %4975, align 1
  %4977 = zext i8 %4976 to i64
  store i64 %4977, i64* %RDX.i2703, align 8
  %4978 = zext i8 %4976 to i32
  %4979 = zext i8 %4969 to i32
  %4980 = sub nsw i32 %4979, %4978
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RCX.i2691, align 8
  %4982 = lshr i32 %4980, 31
  %4983 = add nsw i32 %4980, -2
  %4984 = icmp ult i32 %4980, 2
  %4985 = zext i1 %4984 to i8
  store i8 %4985, i8* %14, align 1
  %4986 = and i32 %4983, 255
  %4987 = tail call i32 @llvm.ctpop.i32(i32 %4986)
  %4988 = trunc i32 %4987 to i8
  %4989 = and i8 %4988, 1
  %4990 = xor i8 %4989, 1
  store i8 %4990, i8* %21, align 1
  %4991 = xor i32 %4983, %4980
  %4992 = lshr i32 %4991, 4
  %4993 = trunc i32 %4992 to i8
  %4994 = and i8 %4993, 1
  store i8 %4994, i8* %27, align 1
  %4995 = icmp eq i32 %4983, 0
  %4996 = zext i1 %4995 to i8
  store i8 %4996, i8* %30, align 1
  %4997 = lshr i32 %4983, 31
  %4998 = trunc i32 %4997 to i8
  store i8 %4998, i8* %33, align 1
  %4999 = xor i32 %4997, %4982
  %5000 = add nuw nsw i32 %4999, %4982
  %5001 = icmp eq i32 %5000, 2
  %5002 = zext i1 %5001 to i8
  store i8 %5002, i8* %39, align 1
  %.v109 = select i1 %4995, i64 27, i64 487
  %5003 = add i64 %4961, %.v109
  store i64 %5003, i64* %3, align 8
  br i1 %4995, label %block_.L_43d884, label %block_.L_43da50

block_.L_43d884:                                  ; preds = %block_43d869, %block_43d833
  %.pre-phi87 = phi i64* [ %4964, %block_43d869 ], [ %4881, %block_43d833 ]
  %5004 = phi i64 [ %5003, %block_43d869 ], [ %4920, %block_43d833 ]
  %5005 = add i64 %5004, 4
  store i64 %5005, i64* %3, align 8
  %5006 = load i64, i64* %4839, align 8
  store i64 %5006, i64* %RAX.i2697, align 8
  %5007 = add i64 %5006, 2
  %5008 = add i64 %5004, 8
  store i64 %5008, i64* %3, align 8
  %5009 = inttoptr i64 %5007 to i8*
  %5010 = load i8, i8* %5009, align 1
  %5011 = zext i8 %5010 to i64
  store i64 %5011, i64* %RCX.i2691, align 8
  %5012 = add i64 %5004, 12
  store i64 %5012, i64* %3, align 8
  %5013 = load i64, i64* %.pre-phi87, align 8
  store i64 %5013, i64* %RAX.i2697, align 8
  %5014 = add i64 %5013, 3
  %5015 = add i64 %5004, 16
  store i64 %5015, i64* %3, align 8
  %5016 = inttoptr i64 %5014 to i8*
  %5017 = load i8, i8* %5016, align 1
  %5018 = zext i8 %5017 to i64
  store i64 %5018, i64* %RDX.i2703, align 8
  %5019 = zext i8 %5017 to i32
  %5020 = zext i8 %5010 to i32
  %5021 = add nuw nsw i32 %5019, %5020
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5023 = and i32 %5021, 255
  %5024 = tail call i32 @llvm.ctpop.i32(i32 %5023)
  %5025 = trunc i32 %5024 to i8
  %5026 = and i8 %5025, 1
  %5027 = xor i8 %5026, 1
  store i8 %5027, i8* %21, align 1
  %5028 = xor i8 %5017, %5010
  %5029 = zext i8 %5028 to i32
  %5030 = xor i32 %5029, %5021
  %5031 = lshr i32 %5030, 4
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  store i8 %5033, i8* %27, align 1
  %5034 = icmp eq i32 %5021, 0
  %5035 = zext i1 %5034 to i8
  store i8 %5035, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5036 = add i64 %5004, 22
  store i64 %5036, i64* %3, align 8
  %5037 = load i64, i64* %4839, align 8
  store i64 %5037, i64* %RAX.i2697, align 8
  %5038 = add i64 %5037, 3
  %5039 = add i64 %5004, 26
  store i64 %5039, i64* %3, align 8
  %5040 = inttoptr i64 %5038 to i8*
  %5041 = load i8, i8* %5040, align 1
  %5042 = zext i8 %5041 to i64
  store i64 %5042, i64* %RDX.i2703, align 8
  %5043 = add i64 %5004, 30
  store i64 %5043, i64* %3, align 8
  %5044 = load i64, i64* %.pre-phi87, align 8
  store i64 %5044, i64* %RAX.i2697, align 8
  %5045 = add i64 %5044, 1
  %5046 = add i64 %5004, 34
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5045 to i8*
  %5048 = load i8, i8* %5047, align 1
  %5049 = zext i8 %5048 to i64
  store i64 %5049, i64* %RSI.i2706, align 8
  %5050 = zext i8 %5048 to i32
  %5051 = zext i8 %5041 to i32
  %5052 = add nuw nsw i32 %5050, %5051
  %5053 = zext i32 %5052 to i64
  store i64 %5053, i64* %RDX.i2703, align 8
  %5054 = sub nsw i32 %5021, %5052
  %5055 = icmp ult i32 %5021, %5052
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %14, align 1
  %5057 = and i32 %5054, 255
  %5058 = tail call i32 @llvm.ctpop.i32(i32 %5057)
  %5059 = trunc i32 %5058 to i8
  %5060 = and i8 %5059, 1
  %5061 = xor i8 %5060, 1
  store i8 %5061, i8* %21, align 1
  %5062 = xor i32 %5052, %5021
  %5063 = xor i32 %5062, %5054
  %5064 = lshr i32 %5063, 4
  %5065 = trunc i32 %5064 to i8
  %5066 = and i8 %5065, 1
  store i8 %5066, i8* %27, align 1
  %5067 = icmp eq i32 %5054, 0
  %5068 = zext i1 %5067 to i8
  store i8 %5068, i8* %30, align 1
  %5069 = lshr i32 %5054, 31
  %5070 = trunc i32 %5069 to i8
  store i8 %5070, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5071 = icmp ne i8 %5070, 0
  %.v110 = select i1 %5071, i64 44, i64 73
  %5072 = add i64 %5004, %.v110
  %5073 = load i64, i64* %RBP.i, align 8
  %5074 = add i64 %5073, -8
  %5075 = add i64 %5072, 4
  store i64 %5075, i64* %3, align 8
  %5076 = inttoptr i64 %5074 to i64*
  %5077 = load i64, i64* %5076, align 8
  store i64 %5077, i64* %RAX.i2697, align 8
  br i1 %5071, label %block_43d8b0, label %block_.L_43d8cd

block_43d8b0:                                     ; preds = %block_.L_43d884
  %5078 = add i64 %5077, 2
  %5079 = add i64 %5072, 8
  store i64 %5079, i64* %3, align 8
  %5080 = inttoptr i64 %5078 to i8*
  %5081 = load i8, i8* %5080, align 1
  %5082 = zext i8 %5081 to i64
  store i64 %5082, i64* %RCX.i2691, align 8
  %5083 = add i64 %5073, -16
  %5084 = add i64 %5072, 12
  store i64 %5084, i64* %3, align 8
  %5085 = inttoptr i64 %5083 to i64*
  %5086 = load i64, i64* %5085, align 8
  store i64 %5086, i64* %RAX.i2697, align 8
  %5087 = add i64 %5086, 3
  %5088 = add i64 %5072, 16
  store i64 %5088, i64* %3, align 8
  %5089 = inttoptr i64 %5087 to i8*
  %5090 = load i8, i8* %5089, align 1
  %5091 = zext i8 %5090 to i64
  store i64 %5091, i64* %RDX.i2703, align 8
  %5092 = zext i8 %5090 to i32
  %5093 = zext i8 %5081 to i32
  %5094 = add nuw nsw i32 %5092, %5093
  %5095 = zext i32 %5094 to i64
  store i64 %5095, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5096 = and i32 %5094, 255
  %5097 = tail call i32 @llvm.ctpop.i32(i32 %5096)
  %5098 = trunc i32 %5097 to i8
  %5099 = and i8 %5098, 1
  %5100 = xor i8 %5099, 1
  store i8 %5100, i8* %21, align 1
  %5101 = xor i8 %5090, %5081
  %5102 = zext i8 %5101 to i32
  %5103 = xor i32 %5102, %5094
  %5104 = lshr i32 %5103, 4
  %5105 = trunc i32 %5104 to i8
  %5106 = and i8 %5105, 1
  store i8 %5106, i8* %27, align 1
  %5107 = icmp eq i32 %5094, 0
  %5108 = zext i1 %5107 to i8
  store i8 %5108, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5109 = add i64 %5073, -228
  %5110 = add i64 %5072, 24
  store i64 %5110, i64* %3, align 8
  %5111 = inttoptr i64 %5109 to i32*
  store i32 %5094, i32* %5111, align 4
  %5112 = load i64, i64* %3, align 8
  %5113 = add i64 %5112, 29
  store i64 %5113, i64* %3, align 8
  br label %block_.L_43d8e5

block_.L_43d8cd:                                  ; preds = %block_.L_43d884
  %5114 = add i64 %5077, 3
  %5115 = add i64 %5072, 8
  store i64 %5115, i64* %3, align 8
  %5116 = inttoptr i64 %5114 to i8*
  %5117 = load i8, i8* %5116, align 1
  %5118 = zext i8 %5117 to i64
  store i64 %5118, i64* %RCX.i2691, align 8
  %5119 = add i64 %5073, -16
  %5120 = add i64 %5072, 12
  store i64 %5120, i64* %3, align 8
  %5121 = inttoptr i64 %5119 to i64*
  %5122 = load i64, i64* %5121, align 8
  store i64 %5122, i64* %RAX.i2697, align 8
  %5123 = add i64 %5122, 1
  %5124 = add i64 %5072, 16
  store i64 %5124, i64* %3, align 8
  %5125 = inttoptr i64 %5123 to i8*
  %5126 = load i8, i8* %5125, align 1
  %5127 = zext i8 %5126 to i64
  store i64 %5127, i64* %RDX.i2703, align 8
  %5128 = zext i8 %5126 to i32
  %5129 = zext i8 %5117 to i32
  %5130 = add nuw nsw i32 %5128, %5129
  %5131 = zext i32 %5130 to i64
  store i64 %5131, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5132 = and i32 %5130, 255
  %5133 = tail call i32 @llvm.ctpop.i32(i32 %5132)
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  %5136 = xor i8 %5135, 1
  store i8 %5136, i8* %21, align 1
  %5137 = xor i8 %5126, %5117
  %5138 = zext i8 %5137 to i32
  %5139 = xor i32 %5138, %5130
  %5140 = lshr i32 %5139, 4
  %5141 = trunc i32 %5140 to i8
  %5142 = and i8 %5141, 1
  store i8 %5142, i8* %27, align 1
  %5143 = icmp eq i32 %5130, 0
  %5144 = zext i1 %5143 to i8
  store i8 %5144, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5145 = add i64 %5073, -228
  %5146 = add i64 %5072, 24
  store i64 %5146, i64* %3, align 8
  %5147 = inttoptr i64 %5145 to i32*
  store i32 %5130, i32* %5147, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_43d8e5

block_.L_43d8e5:                                  ; preds = %block_.L_43d8cd, %block_43d8b0
  %5148 = phi i64 [ %.pre80, %block_.L_43d8cd ], [ %5113, %block_43d8b0 ]
  %5149 = load i64, i64* %RBP.i, align 8
  %5150 = add i64 %5149, -228
  %5151 = add i64 %5148, 6
  store i64 %5151, i64* %3, align 8
  %5152 = inttoptr i64 %5150 to i32*
  %5153 = load i32, i32* %5152, align 4
  %5154 = zext i32 %5153 to i64
  store i64 %5154, i64* %RAX.i2697, align 8
  %5155 = add i64 %5149, -8
  %5156 = add i64 %5148, 10
  store i64 %5156, i64* %3, align 8
  %5157 = inttoptr i64 %5155 to i64*
  %5158 = load i64, i64* %5157, align 8
  store i64 %5158, i64* %RCX.i2691, align 8
  %5159 = add i64 %5158, 3
  %5160 = add i64 %5148, 14
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5159 to i8*
  %5162 = load i8, i8* %5161, align 1
  %5163 = zext i8 %5162 to i64
  store i64 %5163, i64* %RDX.i2703, align 8
  %5164 = add i64 %5149, -16
  %5165 = add i64 %5148, 18
  store i64 %5165, i64* %3, align 8
  %5166 = inttoptr i64 %5164 to i64*
  %5167 = load i64, i64* %5166, align 8
  store i64 %5167, i64* %RCX.i2691, align 8
  %5168 = add i64 %5167, 2
  %5169 = add i64 %5148, 22
  store i64 %5169, i64* %3, align 8
  %5170 = inttoptr i64 %5168 to i8*
  %5171 = load i8, i8* %5170, align 1
  %5172 = zext i8 %5171 to i64
  store i64 %5172, i64* %RSI.i2706, align 8
  %5173 = zext i8 %5171 to i32
  %5174 = zext i8 %5162 to i32
  %5175 = add nuw nsw i32 %5173, %5174
  %5176 = zext i32 %5175 to i64
  store i64 %5176, i64* %RDX.i2703, align 8
  store i8 0, i8* %14, align 1
  %5177 = and i32 %5175, 255
  %5178 = tail call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  store i8 %5181, i8* %21, align 1
  %5182 = xor i8 %5171, %5162
  %5183 = zext i8 %5182 to i32
  %5184 = xor i32 %5183, %5175
  %5185 = lshr i32 %5184, 4
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  store i8 %5187, i8* %27, align 1
  %5188 = icmp eq i32 %5175, 0
  %5189 = zext i1 %5188 to i8
  store i8 %5189, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5190 = add i64 %5148, 28
  store i64 %5190, i64* %3, align 8
  %5191 = load i64, i64* %5157, align 8
  store i64 %5191, i64* %RCX.i2691, align 8
  %5192 = add i64 %5191, 1
  %5193 = add i64 %5148, 32
  store i64 %5193, i64* %3, align 8
  %5194 = inttoptr i64 %5192 to i8*
  %5195 = load i8, i8* %5194, align 1
  %5196 = zext i8 %5195 to i64
  store i64 %5196, i64* %RSI.i2706, align 8
  %5197 = add i64 %5148, 36
  store i64 %5197, i64* %3, align 8
  %5198 = load i64, i64* %5166, align 8
  store i64 %5198, i64* %RCX.i2691, align 8
  %5199 = add i64 %5198, 3
  %5200 = add i64 %5148, 40
  store i64 %5200, i64* %3, align 8
  %5201 = inttoptr i64 %5199 to i8*
  %5202 = load i8, i8* %5201, align 1
  %5203 = zext i8 %5202 to i64
  store i64 %5203, i64* %RDI.i2709, align 8
  %5204 = zext i8 %5202 to i32
  %5205 = zext i8 %5195 to i32
  %5206 = add nuw nsw i32 %5204, %5205
  %5207 = zext i32 %5206 to i64
  store i64 %5207, i64* %RSI.i2706, align 8
  %5208 = sub nsw i32 %5175, %5206
  %5209 = icmp ult i32 %5175, %5206
  %5210 = zext i1 %5209 to i8
  store i8 %5210, i8* %14, align 1
  %5211 = and i32 %5208, 255
  %5212 = tail call i32 @llvm.ctpop.i32(i32 %5211)
  %5213 = trunc i32 %5212 to i8
  %5214 = and i8 %5213, 1
  %5215 = xor i8 %5214, 1
  store i8 %5215, i8* %21, align 1
  %5216 = xor i32 %5206, %5175
  %5217 = xor i32 %5216, %5208
  %5218 = lshr i32 %5217, 4
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  store i8 %5220, i8* %27, align 1
  %5221 = icmp eq i32 %5208, 0
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %30, align 1
  %5223 = lshr i32 %5208, 31
  %5224 = trunc i32 %5223 to i8
  store i8 %5224, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5225 = load i64, i64* %RBP.i, align 8
  %5226 = add i64 %5225, -232
  %5227 = load i32, i32* %EAX.i2670, align 4
  %5228 = add i64 %5148, 50
  store i64 %5228, i64* %3, align 8
  %5229 = inttoptr i64 %5226 to i32*
  store i32 %5227, i32* %5229, align 4
  %5230 = load i64, i64* %3, align 8
  %5231 = load i8, i8* %33, align 1
  %5232 = icmp ne i8 %5231, 0
  %5233 = load i8, i8* %39, align 1
  %5234 = icmp ne i8 %5233, 0
  %5235 = xor i1 %5232, %5234
  %.v129 = select i1 %5235, i64 6, i64 35
  %5236 = add i64 %5230, %.v129
  %5237 = load i64, i64* %RBP.i, align 8
  %5238 = add i64 %5237, -8
  %5239 = add i64 %5236, 4
  store i64 %5239, i64* %3, align 8
  %5240 = inttoptr i64 %5238 to i64*
  %5241 = load i64, i64* %5240, align 8
  store i64 %5241, i64* %RAX.i2697, align 8
  br i1 %5235, label %block_43d91d, label %block_.L_43d93a

block_43d91d:                                     ; preds = %block_.L_43d8e5
  %5242 = add i64 %5241, 3
  %5243 = add i64 %5236, 8
  store i64 %5243, i64* %3, align 8
  %5244 = inttoptr i64 %5242 to i8*
  %5245 = load i8, i8* %5244, align 1
  %5246 = zext i8 %5245 to i64
  store i64 %5246, i64* %RCX.i2691, align 8
  %5247 = add i64 %5237, -16
  %5248 = add i64 %5236, 12
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i64*
  %5250 = load i64, i64* %5249, align 8
  store i64 %5250, i64* %RAX.i2697, align 8
  %5251 = add i64 %5250, 2
  %5252 = add i64 %5236, 16
  store i64 %5252, i64* %3, align 8
  %5253 = inttoptr i64 %5251 to i8*
  %5254 = load i8, i8* %5253, align 1
  %5255 = zext i8 %5254 to i64
  store i64 %5255, i64* %RDX.i2703, align 8
  %5256 = zext i8 %5254 to i32
  %5257 = zext i8 %5245 to i32
  %5258 = add nuw nsw i32 %5256, %5257
  %5259 = zext i32 %5258 to i64
  store i64 %5259, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5260 = and i32 %5258, 255
  %5261 = tail call i32 @llvm.ctpop.i32(i32 %5260)
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  %5264 = xor i8 %5263, 1
  store i8 %5264, i8* %21, align 1
  %5265 = xor i8 %5254, %5245
  %5266 = zext i8 %5265 to i32
  %5267 = xor i32 %5266, %5258
  %5268 = lshr i32 %5267, 4
  %5269 = trunc i32 %5268 to i8
  %5270 = and i8 %5269, 1
  store i8 %5270, i8* %27, align 1
  %5271 = icmp eq i32 %5258, 0
  %5272 = zext i1 %5271 to i8
  store i8 %5272, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5273 = add i64 %5237, -236
  %5274 = add i64 %5236, 24
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5273 to i32*
  store i32 %5258, i32* %5275, align 4
  %5276 = load i64, i64* %3, align 8
  %5277 = add i64 %5276, 29
  store i64 %5277, i64* %3, align 8
  br label %block_.L_43d952

block_.L_43d93a:                                  ; preds = %block_.L_43d8e5
  %5278 = add i64 %5241, 1
  %5279 = add i64 %5236, 8
  store i64 %5279, i64* %3, align 8
  %5280 = inttoptr i64 %5278 to i8*
  %5281 = load i8, i8* %5280, align 1
  %5282 = zext i8 %5281 to i64
  store i64 %5282, i64* %RCX.i2691, align 8
  %5283 = add i64 %5237, -16
  %5284 = add i64 %5236, 12
  store i64 %5284, i64* %3, align 8
  %5285 = inttoptr i64 %5283 to i64*
  %5286 = load i64, i64* %5285, align 8
  store i64 %5286, i64* %RAX.i2697, align 8
  %5287 = add i64 %5286, 3
  %5288 = add i64 %5236, 16
  store i64 %5288, i64* %3, align 8
  %5289 = inttoptr i64 %5287 to i8*
  %5290 = load i8, i8* %5289, align 1
  %5291 = zext i8 %5290 to i64
  store i64 %5291, i64* %RDX.i2703, align 8
  %5292 = zext i8 %5290 to i32
  %5293 = zext i8 %5281 to i32
  %5294 = add nuw nsw i32 %5292, %5293
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5296 = and i32 %5294, 255
  %5297 = tail call i32 @llvm.ctpop.i32(i32 %5296)
  %5298 = trunc i32 %5297 to i8
  %5299 = and i8 %5298, 1
  %5300 = xor i8 %5299, 1
  store i8 %5300, i8* %21, align 1
  %5301 = xor i8 %5290, %5281
  %5302 = zext i8 %5301 to i32
  %5303 = xor i32 %5302, %5294
  %5304 = lshr i32 %5303, 4
  %5305 = trunc i32 %5304 to i8
  %5306 = and i8 %5305, 1
  store i8 %5306, i8* %27, align 1
  %5307 = icmp eq i32 %5294, 0
  %5308 = zext i1 %5307 to i8
  store i8 %5308, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5309 = add i64 %5237, -236
  %5310 = add i64 %5236, 24
  store i64 %5310, i64* %3, align 8
  %5311 = inttoptr i64 %5309 to i32*
  store i32 %5294, i32* %5311, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_43d952

block_.L_43d952:                                  ; preds = %block_.L_43d93a, %block_43d91d
  %5312 = phi i64 [ %.pre81, %block_.L_43d93a ], [ %5277, %block_43d91d ]
  %5313 = load i64, i64* %RBP.i, align 8
  %5314 = add i64 %5313, -236
  %5315 = add i64 %5312, 6
  store i64 %5315, i64* %3, align 8
  %5316 = inttoptr i64 %5314 to i32*
  %5317 = load i32, i32* %5316, align 4
  %5318 = zext i32 %5317 to i64
  store i64 %5318, i64* %RAX.i2697, align 8
  %5319 = add i64 %5313, -232
  %5320 = add i64 %5312, 12
  store i64 %5320, i64* %3, align 8
  %5321 = inttoptr i64 %5319 to i32*
  %5322 = load i32, i32* %5321, align 4
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %RCX.i2691, align 8
  %5324 = sub i32 %5322, %5317
  %5325 = icmp ult i32 %5322, %5317
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %14, align 1
  %5327 = and i32 %5324, 255
  %5328 = tail call i32 @llvm.ctpop.i32(i32 %5327)
  %5329 = trunc i32 %5328 to i8
  %5330 = and i8 %5329, 1
  %5331 = xor i8 %5330, 1
  store i8 %5331, i8* %21, align 1
  %5332 = xor i32 %5317, %5322
  %5333 = xor i32 %5332, %5324
  %5334 = lshr i32 %5333, 4
  %5335 = trunc i32 %5334 to i8
  %5336 = and i8 %5335, 1
  store i8 %5336, i8* %27, align 1
  %5337 = icmp eq i32 %5324, 0
  %5338 = zext i1 %5337 to i8
  store i8 %5338, i8* %30, align 1
  %5339 = lshr i32 %5324, 31
  %5340 = trunc i32 %5339 to i8
  store i8 %5340, i8* %33, align 1
  %5341 = lshr i32 %5322, 31
  %5342 = lshr i32 %5317, 31
  %5343 = xor i32 %5342, %5341
  %5344 = xor i32 %5339, %5341
  %5345 = add nuw nsw i32 %5344, %5343
  %5346 = icmp eq i32 %5345, 2
  %5347 = zext i1 %5346 to i8
  store i8 %5347, i8* %39, align 1
  %5348 = icmp ne i8 %5340, 0
  %5349 = xor i1 %5348, %5346
  %.v97 = select i1 %5349, i64 20, i64 134
  %5350 = add i64 %5312, %.v97
  %5351 = add i64 %5313, -8
  %5352 = add i64 %5350, 4
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5351 to i64*
  %5354 = load i64, i64* %5353, align 8
  store i64 %5354, i64* %RAX.i2697, align 8
  br i1 %5349, label %block_43d966, label %block_.L_43d9d8

block_43d966:                                     ; preds = %block_.L_43d952
  %5355 = add i64 %5354, 3
  %5356 = add i64 %5350, 8
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i8*
  %5358 = load i8, i8* %5357, align 1
  %5359 = zext i8 %5358 to i64
  store i64 %5359, i64* %RCX.i2691, align 8
  %5360 = add i64 %5313, -16
  %5361 = add i64 %5350, 12
  store i64 %5361, i64* %3, align 8
  %5362 = inttoptr i64 %5360 to i64*
  %5363 = load i64, i64* %5362, align 8
  store i64 %5363, i64* %RAX.i2697, align 8
  %5364 = add i64 %5363, 2
  %5365 = add i64 %5350, 16
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5364 to i8*
  %5367 = load i8, i8* %5366, align 1
  %5368 = zext i8 %5367 to i64
  store i64 %5368, i64* %RDX.i2703, align 8
  %5369 = zext i8 %5367 to i32
  %5370 = zext i8 %5358 to i32
  %5371 = add nuw nsw i32 %5369, %5370
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5373 = and i32 %5371, 255
  %5374 = tail call i32 @llvm.ctpop.i32(i32 %5373)
  %5375 = trunc i32 %5374 to i8
  %5376 = and i8 %5375, 1
  %5377 = xor i8 %5376, 1
  store i8 %5377, i8* %21, align 1
  %5378 = xor i8 %5367, %5358
  %5379 = zext i8 %5378 to i32
  %5380 = xor i32 %5379, %5371
  %5381 = lshr i32 %5380, 4
  %5382 = trunc i32 %5381 to i8
  %5383 = and i8 %5382, 1
  store i8 %5383, i8* %27, align 1
  %5384 = icmp eq i32 %5371, 0
  %5385 = zext i1 %5384 to i8
  store i8 %5385, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5386 = add i64 %5350, 22
  store i64 %5386, i64* %3, align 8
  %5387 = load i64, i64* %5353, align 8
  store i64 %5387, i64* %RAX.i2697, align 8
  %5388 = add i64 %5387, 1
  %5389 = add i64 %5350, 26
  store i64 %5389, i64* %3, align 8
  %5390 = inttoptr i64 %5388 to i8*
  %5391 = load i8, i8* %5390, align 1
  %5392 = zext i8 %5391 to i64
  store i64 %5392, i64* %RDX.i2703, align 8
  %5393 = add i64 %5350, 30
  store i64 %5393, i64* %3, align 8
  %5394 = load i64, i64* %5362, align 8
  store i64 %5394, i64* %RAX.i2697, align 8
  %5395 = add i64 %5394, 3
  %5396 = add i64 %5350, 34
  store i64 %5396, i64* %3, align 8
  %5397 = inttoptr i64 %5395 to i8*
  %5398 = load i8, i8* %5397, align 1
  %5399 = zext i8 %5398 to i64
  store i64 %5399, i64* %RSI.i2706, align 8
  %5400 = zext i8 %5398 to i32
  %5401 = zext i8 %5391 to i32
  %5402 = add nuw nsw i32 %5400, %5401
  %5403 = zext i32 %5402 to i64
  store i64 %5403, i64* %RDX.i2703, align 8
  %5404 = sub nsw i32 %5371, %5402
  %5405 = icmp ult i32 %5371, %5402
  %5406 = zext i1 %5405 to i8
  store i8 %5406, i8* %14, align 1
  %5407 = and i32 %5404, 255
  %5408 = tail call i32 @llvm.ctpop.i32(i32 %5407)
  %5409 = trunc i32 %5408 to i8
  %5410 = and i8 %5409, 1
  %5411 = xor i8 %5410, 1
  store i8 %5411, i8* %21, align 1
  %5412 = xor i32 %5402, %5371
  %5413 = xor i32 %5412, %5404
  %5414 = lshr i32 %5413, 4
  %5415 = trunc i32 %5414 to i8
  %5416 = and i8 %5415, 1
  store i8 %5416, i8* %27, align 1
  %5417 = icmp eq i32 %5404, 0
  %5418 = zext i1 %5417 to i8
  store i8 %5418, i8* %30, align 1
  %5419 = lshr i32 %5404, 31
  %5420 = trunc i32 %5419 to i8
  store i8 %5420, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5421 = icmp ne i8 %5420, 0
  %.v112 = select i1 %5421, i64 44, i64 73
  %5422 = add i64 %5350, %.v112
  %5423 = load i64, i64* %RBP.i, align 8
  %5424 = add i64 %5423, -8
  %5425 = add i64 %5422, 4
  store i64 %5425, i64* %3, align 8
  %5426 = inttoptr i64 %5424 to i64*
  %5427 = load i64, i64* %5426, align 8
  store i64 %5427, i64* %RAX.i2697, align 8
  br i1 %5421, label %block_43d992, label %block_.L_43d9af

block_43d992:                                     ; preds = %block_43d966
  %5428 = add i64 %5427, 3
  %5429 = add i64 %5422, 8
  store i64 %5429, i64* %3, align 8
  %5430 = inttoptr i64 %5428 to i8*
  %5431 = load i8, i8* %5430, align 1
  %5432 = zext i8 %5431 to i64
  store i64 %5432, i64* %RCX.i2691, align 8
  %5433 = add i64 %5423, -16
  %5434 = add i64 %5422, 12
  store i64 %5434, i64* %3, align 8
  %5435 = inttoptr i64 %5433 to i64*
  %5436 = load i64, i64* %5435, align 8
  store i64 %5436, i64* %RAX.i2697, align 8
  %5437 = add i64 %5436, 2
  %5438 = add i64 %5422, 16
  store i64 %5438, i64* %3, align 8
  %5439 = inttoptr i64 %5437 to i8*
  %5440 = load i8, i8* %5439, align 1
  %5441 = zext i8 %5440 to i64
  store i64 %5441, i64* %RDX.i2703, align 8
  %5442 = zext i8 %5440 to i32
  %5443 = zext i8 %5431 to i32
  %5444 = add nuw nsw i32 %5442, %5443
  %5445 = zext i32 %5444 to i64
  store i64 %5445, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5446 = and i32 %5444, 255
  %5447 = tail call i32 @llvm.ctpop.i32(i32 %5446)
  %5448 = trunc i32 %5447 to i8
  %5449 = and i8 %5448, 1
  %5450 = xor i8 %5449, 1
  store i8 %5450, i8* %21, align 1
  %5451 = xor i8 %5440, %5431
  %5452 = zext i8 %5451 to i32
  %5453 = xor i32 %5452, %5444
  %5454 = lshr i32 %5453, 4
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  store i8 %5456, i8* %27, align 1
  %5457 = icmp eq i32 %5444, 0
  %5458 = zext i1 %5457 to i8
  store i8 %5458, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5459 = add i64 %5423, -240
  %5460 = add i64 %5422, 24
  store i64 %5460, i64* %3, align 8
  %5461 = inttoptr i64 %5459 to i32*
  store i32 %5444, i32* %5461, align 4
  %5462 = load i64, i64* %3, align 8
  %5463 = add i64 %5462, 29
  store i64 %5463, i64* %3, align 8
  br label %block_.L_43d9c7

block_.L_43d9af:                                  ; preds = %block_43d966
  %5464 = add i64 %5427, 1
  %5465 = add i64 %5422, 8
  store i64 %5465, i64* %3, align 8
  %5466 = inttoptr i64 %5464 to i8*
  %5467 = load i8, i8* %5466, align 1
  %5468 = zext i8 %5467 to i64
  store i64 %5468, i64* %RCX.i2691, align 8
  %5469 = add i64 %5423, -16
  %5470 = add i64 %5422, 12
  store i64 %5470, i64* %3, align 8
  %5471 = inttoptr i64 %5469 to i64*
  %5472 = load i64, i64* %5471, align 8
  store i64 %5472, i64* %RAX.i2697, align 8
  %5473 = add i64 %5472, 3
  %5474 = add i64 %5422, 16
  store i64 %5474, i64* %3, align 8
  %5475 = inttoptr i64 %5473 to i8*
  %5476 = load i8, i8* %5475, align 1
  %5477 = zext i8 %5476 to i64
  store i64 %5477, i64* %RDX.i2703, align 8
  %5478 = zext i8 %5476 to i32
  %5479 = zext i8 %5467 to i32
  %5480 = add nuw nsw i32 %5478, %5479
  %5481 = zext i32 %5480 to i64
  store i64 %5481, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5482 = and i32 %5480, 255
  %5483 = tail call i32 @llvm.ctpop.i32(i32 %5482)
  %5484 = trunc i32 %5483 to i8
  %5485 = and i8 %5484, 1
  %5486 = xor i8 %5485, 1
  store i8 %5486, i8* %21, align 1
  %5487 = xor i8 %5476, %5467
  %5488 = zext i8 %5487 to i32
  %5489 = xor i32 %5488, %5480
  %5490 = lshr i32 %5489, 4
  %5491 = trunc i32 %5490 to i8
  %5492 = and i8 %5491, 1
  store i8 %5492, i8* %27, align 1
  %5493 = icmp eq i32 %5480, 0
  %5494 = zext i1 %5493 to i8
  store i8 %5494, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5495 = add i64 %5423, -240
  %5496 = add i64 %5422, 24
  store i64 %5496, i64* %3, align 8
  %5497 = inttoptr i64 %5495 to i32*
  store i32 %5480, i32* %5497, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_43d9c7

block_.L_43d9c7:                                  ; preds = %block_.L_43d9af, %block_43d992
  %5498 = phi i64 [ %.pre83, %block_.L_43d9af ], [ %5463, %block_43d992 ]
  %5499 = load i64, i64* %RBP.i, align 8
  %5500 = add i64 %5499, -240
  %5501 = add i64 %5498, 6
  store i64 %5501, i64* %3, align 8
  %5502 = inttoptr i64 %5500 to i32*
  %5503 = load i32, i32* %5502, align 4
  %5504 = zext i32 %5503 to i64
  store i64 %5504, i64* %RAX.i2697, align 8
  %5505 = add i64 %5499, -244
  %5506 = add i64 %5498, 12
  store i64 %5506, i64* %3, align 8
  %5507 = inttoptr i64 %5505 to i32*
  store i32 %5503, i32* %5507, align 4
  %5508 = load i64, i64* %3, align 8
  %5509 = add i64 %5508, 114
  store i64 %5509, i64* %3, align 8
  br label %block_.L_43da45

block_.L_43d9d8:                                  ; preds = %block_.L_43d952
  %5510 = add i64 %5354, 2
  %5511 = add i64 %5350, 8
  store i64 %5511, i64* %3, align 8
  %5512 = inttoptr i64 %5510 to i8*
  %5513 = load i8, i8* %5512, align 1
  %5514 = zext i8 %5513 to i64
  store i64 %5514, i64* %RCX.i2691, align 8
  %5515 = add i64 %5313, -16
  %5516 = add i64 %5350, 12
  store i64 %5516, i64* %3, align 8
  %5517 = inttoptr i64 %5515 to i64*
  %5518 = load i64, i64* %5517, align 8
  store i64 %5518, i64* %RAX.i2697, align 8
  %5519 = add i64 %5518, 3
  %5520 = add i64 %5350, 16
  store i64 %5520, i64* %3, align 8
  %5521 = inttoptr i64 %5519 to i8*
  %5522 = load i8, i8* %5521, align 1
  %5523 = zext i8 %5522 to i64
  store i64 %5523, i64* %RDX.i2703, align 8
  %5524 = zext i8 %5522 to i32
  %5525 = zext i8 %5513 to i32
  %5526 = add nuw nsw i32 %5524, %5525
  %5527 = zext i32 %5526 to i64
  store i64 %5527, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5528 = and i32 %5526, 255
  %5529 = tail call i32 @llvm.ctpop.i32(i32 %5528)
  %5530 = trunc i32 %5529 to i8
  %5531 = and i8 %5530, 1
  %5532 = xor i8 %5531, 1
  store i8 %5532, i8* %21, align 1
  %5533 = xor i8 %5522, %5513
  %5534 = zext i8 %5533 to i32
  %5535 = xor i32 %5534, %5526
  %5536 = lshr i32 %5535, 4
  %5537 = trunc i32 %5536 to i8
  %5538 = and i8 %5537, 1
  store i8 %5538, i8* %27, align 1
  %5539 = icmp eq i32 %5526, 0
  %5540 = zext i1 %5539 to i8
  store i8 %5540, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5541 = add i64 %5350, 22
  store i64 %5541, i64* %3, align 8
  %5542 = load i64, i64* %5353, align 8
  store i64 %5542, i64* %RAX.i2697, align 8
  %5543 = add i64 %5542, 3
  %5544 = add i64 %5350, 26
  store i64 %5544, i64* %3, align 8
  %5545 = inttoptr i64 %5543 to i8*
  %5546 = load i8, i8* %5545, align 1
  %5547 = zext i8 %5546 to i64
  store i64 %5547, i64* %RDX.i2703, align 8
  %5548 = add i64 %5350, 30
  store i64 %5548, i64* %3, align 8
  %5549 = load i64, i64* %5517, align 8
  store i64 %5549, i64* %RAX.i2697, align 8
  %5550 = add i64 %5549, 1
  %5551 = add i64 %5350, 34
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i8*
  %5553 = load i8, i8* %5552, align 1
  %5554 = zext i8 %5553 to i64
  store i64 %5554, i64* %RSI.i2706, align 8
  %5555 = zext i8 %5553 to i32
  %5556 = zext i8 %5546 to i32
  %5557 = add nuw nsw i32 %5555, %5556
  %5558 = zext i32 %5557 to i64
  store i64 %5558, i64* %RDX.i2703, align 8
  %5559 = sub nsw i32 %5526, %5557
  %5560 = icmp ult i32 %5526, %5557
  %5561 = zext i1 %5560 to i8
  store i8 %5561, i8* %14, align 1
  %5562 = and i32 %5559, 255
  %5563 = tail call i32 @llvm.ctpop.i32(i32 %5562)
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  %5566 = xor i8 %5565, 1
  store i8 %5566, i8* %21, align 1
  %5567 = xor i32 %5557, %5526
  %5568 = xor i32 %5567, %5559
  %5569 = lshr i32 %5568, 4
  %5570 = trunc i32 %5569 to i8
  %5571 = and i8 %5570, 1
  store i8 %5571, i8* %27, align 1
  %5572 = icmp eq i32 %5559, 0
  %5573 = zext i1 %5572 to i8
  store i8 %5573, i8* %30, align 1
  %5574 = lshr i32 %5559, 31
  %5575 = trunc i32 %5574 to i8
  store i8 %5575, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5576 = icmp ne i8 %5575, 0
  %.v111 = select i1 %5576, i64 44, i64 73
  %5577 = add i64 %5350, %.v111
  %5578 = load i64, i64* %RBP.i, align 8
  %5579 = add i64 %5578, -8
  %5580 = add i64 %5577, 4
  store i64 %5580, i64* %3, align 8
  %5581 = inttoptr i64 %5579 to i64*
  %5582 = load i64, i64* %5581, align 8
  store i64 %5582, i64* %RAX.i2697, align 8
  br i1 %5576, label %block_43da04, label %block_.L_43da21

block_43da04:                                     ; preds = %block_.L_43d9d8
  %5583 = add i64 %5582, 2
  %5584 = add i64 %5577, 8
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i8*
  %5586 = load i8, i8* %5585, align 1
  %5587 = zext i8 %5586 to i64
  store i64 %5587, i64* %RCX.i2691, align 8
  %5588 = add i64 %5578, -16
  %5589 = add i64 %5577, 12
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5588 to i64*
  %5591 = load i64, i64* %5590, align 8
  store i64 %5591, i64* %RAX.i2697, align 8
  %5592 = add i64 %5591, 3
  %5593 = add i64 %5577, 16
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i8*
  %5595 = load i8, i8* %5594, align 1
  %5596 = zext i8 %5595 to i64
  store i64 %5596, i64* %RDX.i2703, align 8
  %5597 = zext i8 %5595 to i32
  %5598 = zext i8 %5586 to i32
  %5599 = add nuw nsw i32 %5597, %5598
  %5600 = zext i32 %5599 to i64
  store i64 %5600, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5601 = and i32 %5599, 255
  %5602 = tail call i32 @llvm.ctpop.i32(i32 %5601)
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  %5605 = xor i8 %5604, 1
  store i8 %5605, i8* %21, align 1
  %5606 = xor i8 %5595, %5586
  %5607 = zext i8 %5606 to i32
  %5608 = xor i32 %5607, %5599
  %5609 = lshr i32 %5608, 4
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  store i8 %5611, i8* %27, align 1
  %5612 = icmp eq i32 %5599, 0
  %5613 = zext i1 %5612 to i8
  store i8 %5613, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5614 = add i64 %5578, -248
  %5615 = add i64 %5577, 24
  store i64 %5615, i64* %3, align 8
  %5616 = inttoptr i64 %5614 to i32*
  store i32 %5599, i32* %5616, align 4
  %5617 = load i64, i64* %3, align 8
  %5618 = add i64 %5617, 29
  store i64 %5618, i64* %3, align 8
  br label %block_.L_43da39

block_.L_43da21:                                  ; preds = %block_.L_43d9d8
  %5619 = add i64 %5582, 3
  %5620 = add i64 %5577, 8
  store i64 %5620, i64* %3, align 8
  %5621 = inttoptr i64 %5619 to i8*
  %5622 = load i8, i8* %5621, align 1
  %5623 = zext i8 %5622 to i64
  store i64 %5623, i64* %RCX.i2691, align 8
  %5624 = add i64 %5578, -16
  %5625 = add i64 %5577, 12
  store i64 %5625, i64* %3, align 8
  %5626 = inttoptr i64 %5624 to i64*
  %5627 = load i64, i64* %5626, align 8
  store i64 %5627, i64* %RAX.i2697, align 8
  %5628 = add i64 %5627, 1
  %5629 = add i64 %5577, 16
  store i64 %5629, i64* %3, align 8
  %5630 = inttoptr i64 %5628 to i8*
  %5631 = load i8, i8* %5630, align 1
  %5632 = zext i8 %5631 to i64
  store i64 %5632, i64* %RDX.i2703, align 8
  %5633 = zext i8 %5631 to i32
  %5634 = zext i8 %5622 to i32
  %5635 = add nuw nsw i32 %5633, %5634
  %5636 = zext i32 %5635 to i64
  store i64 %5636, i64* %RCX.i2691, align 8
  store i8 0, i8* %14, align 1
  %5637 = and i32 %5635, 255
  %5638 = tail call i32 @llvm.ctpop.i32(i32 %5637)
  %5639 = trunc i32 %5638 to i8
  %5640 = and i8 %5639, 1
  %5641 = xor i8 %5640, 1
  store i8 %5641, i8* %21, align 1
  %5642 = xor i8 %5631, %5622
  %5643 = zext i8 %5642 to i32
  %5644 = xor i32 %5643, %5635
  %5645 = lshr i32 %5644, 4
  %5646 = trunc i32 %5645 to i8
  %5647 = and i8 %5646, 1
  store i8 %5647, i8* %27, align 1
  %5648 = icmp eq i32 %5635, 0
  %5649 = zext i1 %5648 to i8
  store i8 %5649, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5650 = add i64 %5578, -248
  %5651 = add i64 %5577, 24
  store i64 %5651, i64* %3, align 8
  %5652 = inttoptr i64 %5650 to i32*
  store i32 %5635, i32* %5652, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_43da39

block_.L_43da39:                                  ; preds = %block_.L_43da21, %block_43da04
  %5653 = phi i64 [ %.pre82, %block_.L_43da21 ], [ %5618, %block_43da04 ]
  %5654 = load i64, i64* %RBP.i, align 8
  %5655 = add i64 %5654, -248
  %5656 = add i64 %5653, 6
  store i64 %5656, i64* %3, align 8
  %5657 = inttoptr i64 %5655 to i32*
  %5658 = load i32, i32* %5657, align 4
  %5659 = zext i32 %5658 to i64
  store i64 %5659, i64* %RAX.i2697, align 8
  %5660 = add i64 %5654, -244
  %5661 = add i64 %5653, 12
  store i64 %5661, i64* %3, align 8
  %5662 = inttoptr i64 %5660 to i32*
  store i32 %5658, i32* %5662, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_43da45

block_.L_43da45:                                  ; preds = %block_.L_43da39, %block_.L_43d9c7
  %5663 = phi i64 [ %.pre84, %block_.L_43da39 ], [ %5509, %block_.L_43d9c7 ]
  %5664 = load i64, i64* %RBP.i, align 8
  %5665 = add i64 %5664, -244
  %5666 = add i64 %5663, 6
  store i64 %5666, i64* %3, align 8
  %5667 = inttoptr i64 %5665 to i32*
  %5668 = load i32, i32* %5667, align 4
  %5669 = zext i32 %5668 to i64
  store i64 %5669, i64* %RAX.i2697, align 8
  %5670 = trunc i32 %5668 to i8
  store i8 %5670, i8* %CL.i2385, align 1
  %5671 = add i64 %5664, -29
  %5672 = add i64 %5663, 11
  store i64 %5672, i64* %3, align 8
  %5673 = inttoptr i64 %5671 to i8*
  store i8 %5670, i8* %5673, align 1
  %.pre85 = load i64, i64* %RBP.i, align 8
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_43da50

block_.L_43da50:                                  ; preds = %block_43d869, %block_.L_43d84e, %block_.L_43da45
  %5674 = phi i64 [ %.pre86, %block_.L_43da45 ], [ %5003, %block_43d869 ], [ %4961, %block_.L_43d84e ]
  %5675 = phi i64 [ %.pre85, %block_.L_43da45 ], [ %4835, %block_43d869 ], [ %4835, %block_.L_43d84e ]
  %5676 = add i64 %5675, -32
  %5677 = add i64 %5674, 3
  store i64 %5677, i64* %3, align 8
  %5678 = inttoptr i64 %5676 to i8*
  %5679 = load i8, i8* %5678, align 1
  store i8 %5679, i8* %AL.i2384, align 1
  %5680 = add i64 %5675, -24
  %5681 = add i64 %5674, 7
  store i64 %5681, i64* %3, align 8
  %5682 = inttoptr i64 %5680 to i64*
  %5683 = load i64, i64* %5682, align 8
  store i64 %5683, i64* %RCX.i2691, align 8
  %5684 = add i64 %5674, 9
  store i64 %5684, i64* %3, align 8
  %5685 = inttoptr i64 %5683 to i8*
  store i8 %5679, i8* %5685, align 1
  %5686 = load i64, i64* %RBP.i, align 8
  %5687 = add i64 %5686, -31
  %5688 = load i64, i64* %3, align 8
  %5689 = add i64 %5688, 3
  store i64 %5689, i64* %3, align 8
  %5690 = inttoptr i64 %5687 to i8*
  %5691 = load i8, i8* %5690, align 1
  store i8 %5691, i8* %AL.i2384, align 1
  %5692 = add i64 %5686, -24
  %5693 = add i64 %5688, 7
  store i64 %5693, i64* %3, align 8
  %5694 = inttoptr i64 %5692 to i64*
  %5695 = load i64, i64* %5694, align 8
  store i64 %5695, i64* %RCX.i2691, align 8
  %5696 = add i64 %5695, 1
  %5697 = add i64 %5688, 10
  store i64 %5697, i64* %3, align 8
  %5698 = inttoptr i64 %5696 to i8*
  store i8 %5691, i8* %5698, align 1
  %5699 = load i64, i64* %RBP.i, align 8
  %5700 = add i64 %5699, -30
  %5701 = load i64, i64* %3, align 8
  %5702 = add i64 %5701, 3
  store i64 %5702, i64* %3, align 8
  %5703 = inttoptr i64 %5700 to i8*
  %5704 = load i8, i8* %5703, align 1
  store i8 %5704, i8* %AL.i2384, align 1
  %5705 = add i64 %5699, -24
  %5706 = add i64 %5701, 7
  store i64 %5706, i64* %3, align 8
  %5707 = inttoptr i64 %5705 to i64*
  %5708 = load i64, i64* %5707, align 8
  store i64 %5708, i64* %RCX.i2691, align 8
  %5709 = add i64 %5708, 2
  %5710 = add i64 %5701, 10
  store i64 %5710, i64* %3, align 8
  %5711 = inttoptr i64 %5709 to i8*
  store i8 %5704, i8* %5711, align 1
  %5712 = load i64, i64* %RBP.i, align 8
  %5713 = add i64 %5712, -29
  %5714 = load i64, i64* %3, align 8
  %5715 = add i64 %5714, 3
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5713 to i8*
  %5717 = load i8, i8* %5716, align 1
  store i8 %5717, i8* %AL.i2384, align 1
  %5718 = add i64 %5712, -24
  %5719 = add i64 %5714, 7
  store i64 %5719, i64* %3, align 8
  %5720 = inttoptr i64 %5718 to i64*
  %5721 = load i64, i64* %5720, align 8
  store i64 %5721, i64* %RCX.i2691, align 8
  %5722 = add i64 %5721, 3
  %5723 = add i64 %5714, 10
  store i64 %5723, i64* %3, align 8
  %5724 = inttoptr i64 %5722 to i8*
  store i8 %5717, i8* %5724, align 1
  %5725 = load i64, i64* %6, align 8
  %5726 = load i64, i64* %3, align 8
  %5727 = add i64 %5725, 120
  store i64 %5727, i64* %6, align 8
  %5728 = icmp ugt i64 %5725, -121
  %5729 = zext i1 %5728 to i8
  store i8 %5729, i8* %14, align 1
  %5730 = trunc i64 %5727 to i32
  %5731 = and i32 %5730, 255
  %5732 = tail call i32 @llvm.ctpop.i32(i32 %5731)
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  %5735 = xor i8 %5734, 1
  store i8 %5735, i8* %21, align 1
  %5736 = xor i64 %5725, 16
  %5737 = xor i64 %5736, %5727
  %5738 = lshr i64 %5737, 4
  %5739 = trunc i64 %5738 to i8
  %5740 = and i8 %5739, 1
  store i8 %5740, i8* %27, align 1
  %5741 = icmp eq i64 %5727, 0
  %5742 = zext i1 %5741 to i8
  store i8 %5742, i8* %30, align 1
  %5743 = lshr i64 %5727, 63
  %5744 = trunc i64 %5743 to i8
  store i8 %5744, i8* %33, align 1
  %5745 = lshr i64 %5725, 63
  %5746 = xor i64 %5743, %5745
  %5747 = add nuw nsw i64 %5746, %5743
  %5748 = icmp eq i64 %5747, 2
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %39, align 1
  %5750 = add i64 %5726, 5
  store i64 %5750, i64* %3, align 8
  %5751 = add i64 %5725, 128
  %5752 = inttoptr i64 %5727 to i64*
  %5753 = load i64, i64* %5752, align 8
  store i64 %5753, i64* %RBP.i, align 8
  store i64 %5751, i64* %6, align 8
  %5754 = add i64 %5726, 6
  store i64 %5754, i64* %3, align 8
  %5755 = inttoptr i64 %5751 to i64*
  %5756 = load i64, i64* %5755, align 8
  store i64 %5756, i64* %3, align 8
  %5757 = add i64 %5725, 136
  store i64 %5757, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_subq__0x78___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 120
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movzbl_0x2__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl___rdx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RDX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_jge_.L_43cc69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl_0x2__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_43cc7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movzbl_0x1__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movzbl___rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_43ccc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x1__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43ccda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_43cd4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jge_.L_43cd2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43cd3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43cda7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43cd8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43cda1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movzbl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x3__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rdx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_cmpl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ESI, align 4
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jge_.L_43ce0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x3__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ce1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43ce91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x2__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43ce71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ce86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43cea6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x3__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_jge_.L_43cf07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x3__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43cf1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_43cf8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x1__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43cf6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43cf83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43cfa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_43d0b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x3__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d00a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d01f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jge_.L_43d091(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43d071(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d086(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43d0a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_43d1ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d10a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d11f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jge_.L_43d191(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43d171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43d1a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x1f__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -31
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x3__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rdx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_jge_.L_43d216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d22d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_jge_.L_43d25e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d2c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d2a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d2bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movzbl_0x2__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x3__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x1__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x2__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d337(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d34e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_jge_.L_43d37f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d3ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d3c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d3de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_jge_.L_43d522(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d45e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d475(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_jge_.L_43d4a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d511(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d4ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d505(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_jmpq_.L_43d641(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d582(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d599(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_jge_.L_43d5ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d612(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d629(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x1e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -30
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x3__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_43d695(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d6ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movzbl_0x3__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_43d702(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d71a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_jge_.L_43d7a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43d777(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d78f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43d80d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d7e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d801(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x1d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -29
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43d84e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43d884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43da50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43d8cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d8e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_43d93a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d952(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xe8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_jge_.L_43d9d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43d9af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43d9c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43da45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43da21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43da39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x20__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_movb__al____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1f__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -31
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__0x1__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 1
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -30
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__0x2__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 2
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x1d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -29
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__0x3__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x78___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -121
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
