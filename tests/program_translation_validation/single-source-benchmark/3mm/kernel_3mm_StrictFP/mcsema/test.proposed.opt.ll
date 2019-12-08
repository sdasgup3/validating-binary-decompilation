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

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_3mm_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R15.i458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i458, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC.i, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i456, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC.i, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %RBX.i454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %20 = load i64, i64* %RBX.i454, align 8
  %21 = load i64, i64* %PC.i, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC.i, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  store i64 %23, i64* %6, align 8
  %RAX.i451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, 56
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %26 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RAX.i451, align 8
  %R10.i449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %31 = add i64 %25, 48
  %32 = add i64 %27, 8
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %31 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %R10.i449, align 8
  %R11.i446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %35 = add i64 %25, 40
  %36 = add i64 %27, 12
  store i64 %36, i64* %PC.i, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %R11.i446, align 8
  %39 = add i64 %25, 32
  %40 = add i64 %27, 16
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBX.i454, align 8
  %43 = add i64 %25, 24
  %44 = add i64 %27, 20
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %R14.i456, align 8
  %47 = add i64 %25, 16
  %48 = add i64 %27, 24
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %R15.i458, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %51 to i32*
  %52 = add i64 %25, -28
  %53 = load i32, i32* %EDI.i, align 4
  %54 = add i64 %27, 27
  store i64 %54, i64* %PC.i, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i32, i32* %ESI.i, align 4
  %60 = load i64, i64* %PC.i, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -36
  %66 = load i32, i32* %EDX.i, align 4
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %70 to i32*
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -40
  %73 = load i32, i32* %ECX.i, align 4
  %74 = load i64, i64* %PC.i, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %PC.i, align 8
  %76 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -44
  %80 = load i32, i32* %R8D.i, align 4
  %81 = load i64, i64* %PC.i, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %R9.i, align 8
  %87 = load i64, i64* %PC.i, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -60
  %92 = load i64, i64* %PC.i, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC.i, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -80
  %97 = load i64, i64* %R15.i458, align 8
  %98 = load i64, i64* %PC.i, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC.i, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -88
  %103 = load i64, i64* %RAX.i451, align 8
  %104 = load i64, i64* %PC.i, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %R10.i449, align 8
  %110 = load i64, i64* %PC.i, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -104
  %115 = load i64, i64* %R11.i446, align 8
  %116 = load i64, i64* %PC.i, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -112
  %121 = load i64, i64* %RBX.i454, align 8
  %122 = load i64, i64* %PC.i, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC.i, align 8
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -120
  %127 = load i64, i64* %R14.i456, align 8
  %128 = load i64, i64* %PC.i, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC.i, align 8
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130, align 8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %138 = bitcast %union.VectorReg* %137 to i8*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast %union.VectorReg* %137 to i32*
  %141 = getelementptr inbounds i8, i8* %138, i64 4
  %142 = bitcast i8* %141 to i32*
  %143 = bitcast i64* %139 to i32*
  %144 = getelementptr inbounds i8, i8* %138, i64 12
  %145 = bitcast i8* %144 to i32*
  %RCX.i381 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %146 = bitcast %union.VectorReg* %137 to double*
  %147 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4010e4

block_.L_4010e4:                                  ; preds = %block_.L_40119f, %entry
  %148 = phi i64 [ %549, %block_.L_40119f ], [ %.pre, %entry ]
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -60
  %151 = add i64 %148, 3
  store i64 %151, i64* %PC.i, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i451, align 8
  %155 = add i64 %149, -28
  %156 = add i64 %148, 6
  store i64 %156, i64* %PC.i, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = sub i32 %153, %158
  %160 = icmp ult i32 %153, %158
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %131, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %132, align 1
  %167 = xor i32 %158, %153
  %168 = xor i32 %167, %159
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %133, align 1
  %172 = icmp eq i32 %159, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %134, align 1
  %174 = lshr i32 %159, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %135, align 1
  %176 = lshr i32 %153, 31
  %177 = lshr i32 %158, 31
  %178 = xor i32 %177, %176
  %179 = xor i32 %174, %176
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %136, align 1
  %183 = icmp ne i8 %175, 0
  %184 = xor i1 %183, %181
  %.v = select i1 %184, i64 12, i64 206
  %185 = add i64 %148, %.v
  store i64 %185, i64* %3, align 8
  br i1 %184, label %block_4010f0, label %block_.L_4011b2

block_4010f0:                                     ; preds = %block_.L_4010e4
  %186 = add i64 %149, -64
  %187 = add i64 %185, 7
  store i64 %187, i64* %PC.i, align 8
  %188 = inttoptr i64 %186 to i32*
  store i32 0, i32* %188, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010f7

block_.L_4010f7:                                  ; preds = %block_.L_40118c, %block_4010f0
  %189 = phi i64 [ %518, %block_.L_40118c ], [ %.pre1, %block_4010f0 ]
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -64
  %192 = add i64 %189, 3
  store i64 %192, i64* %PC.i, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i451, align 8
  %196 = add i64 %190, -32
  %197 = add i64 %189, 6
  store i64 %197, i64* %PC.i, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %194, %199
  %201 = icmp ult i32 %194, %199
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %131, align 1
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %132, align 1
  %208 = xor i32 %199, %194
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %133, align 1
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %134, align 1
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %135, align 1
  %217 = lshr i32 %194, 31
  %218 = lshr i32 %199, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %136, align 1
  %224 = icmp ne i8 %216, 0
  %225 = xor i1 %224, %222
  %.v9 = select i1 %225, i64 12, i64 168
  %226 = add i64 %189, %.v9
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_401103, label %block_.L_40119f

block_401103:                                     ; preds = %block_.L_4010f7
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %227 = add i64 %190, -56
  %228 = add i64 %226, 7
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i451, align 8
  %231 = add i64 %190, -60
  %232 = add i64 %226, 11
  store i64 %232, i64* %PC.i, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = shl nsw i64 %235, 13
  store i64 %236, i64* %RCX.i381, align 8
  %237 = lshr i64 %235, 50
  %238 = and i64 %237, 1
  %239 = add i64 %236, %230
  store i64 %239, i64* %RAX.i451, align 8
  %240 = icmp ult i64 %239, %230
  %241 = icmp ult i64 %239, %236
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %131, align 1
  %244 = trunc i64 %239 to i32
  %245 = and i32 %244, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %132, align 1
  %250 = xor i64 %230, %239
  %251 = lshr i64 %250, 4
  %252 = trunc i64 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %133, align 1
  %254 = icmp eq i64 %239, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %134, align 1
  %256 = lshr i64 %239, 63
  %257 = trunc i64 %256 to i8
  store i8 %257, i8* %135, align 1
  %258 = lshr i64 %230, 63
  %259 = xor i64 %256, %258
  %260 = xor i64 %256, %238
  %261 = add nuw nsw i64 %259, %260
  %262 = icmp eq i64 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %136, align 1
  %264 = add i64 %226, 22
  store i64 %264, i64* %PC.i, align 8
  %265 = load i32, i32* %193, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX.i381, align 8
  %267 = shl nsw i64 %266, 3
  %268 = add i64 %267, %239
  %269 = add i64 %226, 27
  store i64 %269, i64* %PC.i, align 8
  %270 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %271 = load i64, i64* %270, align 1
  %272 = inttoptr i64 %268 to i64*
  store i64 %271, i64* %272, align 8
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -68
  %275 = load i64, i64* %PC.i, align 8
  %276 = add i64 %275, 7
  store i64 %276, i64* %PC.i, align 8
  %277 = inttoptr i64 %274 to i32*
  store i32 0, i32* %277, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_401125

block_.L_401125:                                  ; preds = %block_401131, %block_401103
  %278 = phi i64 [ %487, %block_401131 ], [ %.pre2, %block_401103 ]
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -68
  %281 = add i64 %278, 3
  store i64 %281, i64* %PC.i, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i451, align 8
  %285 = add i64 %279, -36
  %286 = add i64 %278, 6
  store i64 %286, i64* %PC.i, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sub i32 %283, %288
  %290 = icmp ult i32 %283, %288
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %131, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %132, align 1
  %297 = xor i32 %288, %283
  %298 = xor i32 %297, %289
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %133, align 1
  %302 = icmp eq i32 %289, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %134, align 1
  %304 = lshr i32 %289, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %135, align 1
  %306 = lshr i32 %283, 31
  %307 = lshr i32 %288, 31
  %308 = xor i32 %307, %306
  %309 = xor i32 %304, %306
  %310 = add nuw nsw i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %136, align 1
  %313 = icmp ne i8 %305, 0
  %314 = xor i1 %313, %311
  %.v10 = select i1 %314, i64 12, i64 103
  %315 = add i64 %278, %.v10
  store i64 %315, i64* %3, align 8
  br i1 %314, label %block_401131, label %block_.L_40118c

block_401131:                                     ; preds = %block_.L_401125
  %316 = add i64 %279, 16
  %317 = add i64 %315, 4
  store i64 %317, i64* %PC.i, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RAX.i451, align 8
  %320 = add i64 %279, -60
  %321 = add i64 %315, 8
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = shl nsw i64 %324, 13
  store i64 %325, i64* %RCX.i381, align 8
  %326 = lshr i64 %324, 50
  %327 = and i64 %326, 1
  %328 = add i64 %325, %319
  store i64 %328, i64* %RAX.i451, align 8
  %329 = icmp ult i64 %328, %319
  %330 = icmp ult i64 %328, %325
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %131, align 1
  %333 = trunc i64 %328 to i32
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %132, align 1
  %339 = xor i64 %319, %328
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %133, align 1
  %343 = icmp eq i64 %328, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %134, align 1
  %345 = lshr i64 %328, 63
  %346 = trunc i64 %345 to i8
  store i8 %346, i8* %135, align 1
  %347 = lshr i64 %319, 63
  %348 = xor i64 %345, %347
  %349 = xor i64 %345, %327
  %350 = add nuw nsw i64 %348, %349
  %351 = icmp eq i64 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %136, align 1
  %353 = add i64 %315, 19
  store i64 %353, i64* %PC.i, align 8
  %354 = load i32, i32* %282, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX.i381, align 8
  %356 = shl nsw i64 %355, 3
  %357 = add i64 %356, %328
  %358 = add i64 %315, 24
  store i64 %358, i64* %PC.i, align 8
  %359 = inttoptr i64 %357 to double*
  %360 = load double, double* %359, align 8
  store double %360, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %361 = add i64 %279, 24
  %362 = add i64 %315, 28
  store i64 %362, i64* %PC.i, align 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RAX.i451, align 8
  %365 = add i64 %315, 32
  store i64 %365, i64* %PC.i, align 8
  %366 = load i32, i32* %282, align 4
  %367 = sext i32 %366 to i64
  %368 = shl nsw i64 %367, 13
  store i64 %368, i64* %RCX.i381, align 8
  %369 = lshr i64 %367, 50
  %370 = and i64 %369, 1
  %371 = add i64 %368, %364
  store i64 %371, i64* %RAX.i451, align 8
  %372 = icmp ult i64 %371, %364
  %373 = icmp ult i64 %371, %368
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %131, align 1
  %376 = trunc i64 %371 to i32
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %132, align 1
  %382 = xor i64 %364, %371
  %383 = lshr i64 %382, 4
  %384 = trunc i64 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %133, align 1
  %386 = icmp eq i64 %371, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %134, align 1
  %388 = lshr i64 %371, 63
  %389 = trunc i64 %388 to i8
  store i8 %389, i8* %135, align 1
  %390 = lshr i64 %364, 63
  %391 = xor i64 %388, %390
  %392 = xor i64 %388, %370
  %393 = add nuw nsw i64 %391, %392
  %394 = icmp eq i64 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %136, align 1
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -64
  %398 = add i64 %315, 43
  store i64 %398, i64* %PC.i, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX.i381, align 8
  %402 = shl nsw i64 %401, 3
  %403 = add i64 %402, %371
  %404 = add i64 %315, 48
  store i64 %404, i64* %PC.i, align 8
  %405 = inttoptr i64 %403 to double*
  %406 = load double, double* %405, align 8
  %407 = fmul double %360, %406
  store double %407, double* %146, align 1
  store i64 0, i64* %139, align 1
  %408 = add i64 %396, -56
  %409 = add i64 %315, 52
  store i64 %409, i64* %PC.i, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RAX.i451, align 8
  %412 = add i64 %396, -60
  %413 = add i64 %315, 56
  store i64 %413, i64* %PC.i, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sext i32 %415 to i64
  %417 = shl nsw i64 %416, 13
  store i64 %417, i64* %RCX.i381, align 8
  %418 = lshr i64 %416, 50
  %419 = and i64 %418, 1
  %420 = add i64 %417, %411
  store i64 %420, i64* %RAX.i451, align 8
  %421 = icmp ult i64 %420, %411
  %422 = icmp ult i64 %420, %417
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %131, align 1
  %425 = trunc i64 %420 to i32
  %426 = and i32 %425, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %132, align 1
  %431 = xor i64 %411, %420
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %133, align 1
  %435 = icmp eq i64 %420, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %134, align 1
  %437 = lshr i64 %420, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %135, align 1
  %439 = lshr i64 %411, 63
  %440 = xor i64 %437, %439
  %441 = xor i64 %437, %419
  %442 = add nuw nsw i64 %440, %441
  %443 = icmp eq i64 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %136, align 1
  %445 = add i64 %315, 67
  store i64 %445, i64* %PC.i, align 8
  %446 = load i32, i32* %399, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %RCX.i381, align 8
  %448 = shl nsw i64 %447, 3
  %449 = add i64 %448, %420
  %450 = add i64 %315, 72
  store i64 %450, i64* %PC.i, align 8
  %451 = inttoptr i64 %449 to double*
  %452 = load double, double* %451, align 8
  %453 = fadd double %407, %452
  store double %453, double* %146, align 1
  store i64 0, i64* %139, align 1
  %454 = add i64 %315, 77
  store i64 %454, i64* %PC.i, align 8
  store double %453, double* %451, align 8
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -68
  %457 = load i64, i64* %PC.i, align 8
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC.i, align 8
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = add i32 %460, 1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX.i451, align 8
  %463 = icmp eq i32 %460, -1
  %464 = icmp eq i32 %461, 0
  %465 = or i1 %463, %464
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %131, align 1
  %467 = and i32 %461, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %132, align 1
  %472 = xor i32 %460, %461
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %133, align 1
  %476 = icmp eq i32 %461, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %134, align 1
  %478 = lshr i32 %461, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %135, align 1
  %480 = lshr i32 %460, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %136, align 1
  %485 = add i64 %457, 9
  store i64 %485, i64* %PC.i, align 8
  store i32 %461, i32* %459, align 4
  %486 = load i64, i64* %PC.i, align 8
  %487 = add i64 %486, -98
  store i64 %487, i64* %3, align 8
  br label %block_.L_401125

block_.L_40118c:                                  ; preds = %block_.L_401125
  %488 = add i64 %279, -64
  %489 = add i64 %315, 8
  store i64 %489, i64* %PC.i, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = add i32 %491, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i451, align 8
  %494 = icmp eq i32 %491, -1
  %495 = icmp eq i32 %492, 0
  %496 = or i1 %494, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %131, align 1
  %498 = and i32 %492, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %132, align 1
  %503 = xor i32 %491, %492
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %133, align 1
  %507 = icmp eq i32 %492, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %134, align 1
  %509 = lshr i32 %492, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %135, align 1
  %511 = lshr i32 %491, 31
  %512 = xor i32 %509, %511
  %513 = add nuw nsw i32 %512, %509
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %136, align 1
  %516 = add i64 %315, 14
  store i64 %516, i64* %PC.i, align 8
  store i32 %492, i32* %490, align 4
  %517 = load i64, i64* %PC.i, align 8
  %518 = add i64 %517, -163
  store i64 %518, i64* %3, align 8
  br label %block_.L_4010f7

block_.L_40119f:                                  ; preds = %block_.L_4010f7
  %519 = add i64 %190, -60
  %520 = add i64 %226, 8
  store i64 %520, i64* %PC.i, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, 1
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX.i451, align 8
  %525 = icmp eq i32 %522, -1
  %526 = icmp eq i32 %523, 0
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %131, align 1
  %529 = and i32 %523, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %132, align 1
  %534 = xor i32 %522, %523
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %133, align 1
  %538 = icmp eq i32 %523, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %134, align 1
  %540 = lshr i32 %523, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %135, align 1
  %542 = lshr i32 %522, 31
  %543 = xor i32 %540, %542
  %544 = add nuw nsw i32 %543, %540
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %136, align 1
  %547 = add i64 %226, 14
  store i64 %547, i64* %PC.i, align 8
  store i32 %523, i32* %521, align 4
  %548 = load i64, i64* %PC.i, align 8
  %549 = add i64 %548, -201
  store i64 %549, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4011b2:                                  ; preds = %block_.L_4010e4
  %550 = add i64 %185, 7
  store i64 %550, i64* %PC.i, align 8
  store i32 0, i32* %152, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_4011b9

block_.L_4011b9:                                  ; preds = %block_.L_401274, %block_.L_4011b2
  %551 = phi i64 [ %952, %block_.L_401274 ], [ %.pre3, %block_.L_4011b2 ]
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -60
  %554 = add i64 %551, 3
  store i64 %554, i64* %PC.i, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i451, align 8
  %558 = add i64 %552, -32
  %559 = add i64 %551, 6
  store i64 %559, i64* %PC.i, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sub i32 %556, %561
  %563 = icmp ult i32 %556, %561
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %131, align 1
  %565 = and i32 %562, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %132, align 1
  %570 = xor i32 %561, %556
  %571 = xor i32 %570, %562
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %133, align 1
  %575 = icmp eq i32 %562, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %134, align 1
  %577 = lshr i32 %562, 31
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %135, align 1
  %579 = lshr i32 %556, 31
  %580 = lshr i32 %561, 31
  %581 = xor i32 %580, %579
  %582 = xor i32 %577, %579
  %583 = add nuw nsw i32 %582, %581
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %136, align 1
  %586 = icmp ne i8 %578, 0
  %587 = xor i1 %586, %584
  %.v11 = select i1 %587, i64 12, i64 206
  %588 = add i64 %551, %.v11
  store i64 %588, i64* %3, align 8
  br i1 %587, label %block_4011c5, label %block_.L_401287

block_4011c5:                                     ; preds = %block_.L_4011b9
  %589 = add i64 %552, -64
  %590 = add i64 %588, 7
  store i64 %590, i64* %PC.i, align 8
  %591 = inttoptr i64 %589 to i32*
  store i32 0, i32* %591, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_4011cc

block_.L_4011cc:                                  ; preds = %block_.L_401261, %block_4011c5
  %592 = phi i64 [ %921, %block_.L_401261 ], [ %.pre4, %block_4011c5 ]
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -64
  %595 = add i64 %592, 3
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX.i451, align 8
  %599 = add i64 %593, -40
  %600 = add i64 %592, 6
  store i64 %600, i64* %PC.i, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = sub i32 %597, %602
  %604 = icmp ult i32 %597, %602
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %131, align 1
  %606 = and i32 %603, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %132, align 1
  %611 = xor i32 %602, %597
  %612 = xor i32 %611, %603
  %613 = lshr i32 %612, 4
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  store i8 %615, i8* %133, align 1
  %616 = icmp eq i32 %603, 0
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %134, align 1
  %618 = lshr i32 %603, 31
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %135, align 1
  %620 = lshr i32 %597, 31
  %621 = lshr i32 %602, 31
  %622 = xor i32 %621, %620
  %623 = xor i32 %618, %620
  %624 = add nuw nsw i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %136, align 1
  %627 = icmp ne i8 %619, 0
  %628 = xor i1 %627, %625
  %.v12 = select i1 %628, i64 12, i64 168
  %629 = add i64 %592, %.v12
  store i64 %629, i64* %3, align 8
  br i1 %628, label %block_4011d8, label %block_.L_401274

block_4011d8:                                     ; preds = %block_.L_4011cc
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %630 = add i64 %593, 32
  %631 = add i64 %629, 7
  store i64 %631, i64* %PC.i, align 8
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RAX.i451, align 8
  %634 = add i64 %593, -60
  %635 = add i64 %629, 11
  store i64 %635, i64* %PC.i, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = shl nsw i64 %638, 13
  store i64 %639, i64* %RCX.i381, align 8
  %640 = lshr i64 %638, 50
  %641 = and i64 %640, 1
  %642 = add i64 %639, %633
  store i64 %642, i64* %RAX.i451, align 8
  %643 = icmp ult i64 %642, %633
  %644 = icmp ult i64 %642, %639
  %645 = or i1 %643, %644
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %131, align 1
  %647 = trunc i64 %642 to i32
  %648 = and i32 %647, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %132, align 1
  %653 = xor i64 %633, %642
  %654 = lshr i64 %653, 4
  %655 = trunc i64 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %133, align 1
  %657 = icmp eq i64 %642, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %134, align 1
  %659 = lshr i64 %642, 63
  %660 = trunc i64 %659 to i8
  store i8 %660, i8* %135, align 1
  %661 = lshr i64 %633, 63
  %662 = xor i64 %659, %661
  %663 = xor i64 %659, %641
  %664 = add nuw nsw i64 %662, %663
  %665 = icmp eq i64 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %136, align 1
  %667 = add i64 %629, 22
  store i64 %667, i64* %PC.i, align 8
  %668 = load i32, i32* %596, align 4
  %669 = sext i32 %668 to i64
  store i64 %669, i64* %RCX.i381, align 8
  %670 = shl nsw i64 %669, 3
  %671 = add i64 %670, %642
  %672 = add i64 %629, 27
  store i64 %672, i64* %PC.i, align 8
  %673 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %674 = load i64, i64* %673, align 1
  %675 = inttoptr i64 %671 to i64*
  store i64 %674, i64* %675, align 8
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -68
  %678 = load i64, i64* %PC.i, align 8
  %679 = add i64 %678, 7
  store i64 %679, i64* %PC.i, align 8
  %680 = inttoptr i64 %677 to i32*
  store i32 0, i32* %680, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_4011fa

block_.L_4011fa:                                  ; preds = %block_401206, %block_4011d8
  %681 = phi i64 [ %890, %block_401206 ], [ %.pre5, %block_4011d8 ]
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -68
  %684 = add i64 %681, 3
  store i64 %684, i64* %PC.i, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RAX.i451, align 8
  %688 = add i64 %682, -44
  %689 = add i64 %681, 6
  store i64 %689, i64* %PC.i, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = sub i32 %686, %691
  %693 = icmp ult i32 %686, %691
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %131, align 1
  %695 = and i32 %692, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %132, align 1
  %700 = xor i32 %691, %686
  %701 = xor i32 %700, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %133, align 1
  %705 = icmp eq i32 %692, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %134, align 1
  %707 = lshr i32 %692, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %135, align 1
  %709 = lshr i32 %686, 31
  %710 = lshr i32 %691, 31
  %711 = xor i32 %710, %709
  %712 = xor i32 %707, %709
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %136, align 1
  %716 = icmp ne i8 %708, 0
  %717 = xor i1 %716, %714
  %.v13 = select i1 %717, i64 12, i64 103
  %718 = add i64 %681, %.v13
  store i64 %718, i64* %3, align 8
  br i1 %717, label %block_401206, label %block_.L_401261

block_401206:                                     ; preds = %block_.L_4011fa
  %719 = add i64 %682, 40
  %720 = add i64 %718, 4
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %RAX.i451, align 8
  %723 = add i64 %682, -60
  %724 = add i64 %718, 8
  store i64 %724, i64* %PC.i, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = sext i32 %726 to i64
  %728 = shl nsw i64 %727, 13
  store i64 %728, i64* %RCX.i381, align 8
  %729 = lshr i64 %727, 50
  %730 = and i64 %729, 1
  %731 = add i64 %728, %722
  store i64 %731, i64* %RAX.i451, align 8
  %732 = icmp ult i64 %731, %722
  %733 = icmp ult i64 %731, %728
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %131, align 1
  %736 = trunc i64 %731 to i32
  %737 = and i32 %736, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %132, align 1
  %742 = xor i64 %722, %731
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %133, align 1
  %746 = icmp eq i64 %731, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %134, align 1
  %748 = lshr i64 %731, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %135, align 1
  %750 = lshr i64 %722, 63
  %751 = xor i64 %748, %750
  %752 = xor i64 %748, %730
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %136, align 1
  %756 = add i64 %718, 19
  store i64 %756, i64* %PC.i, align 8
  %757 = load i32, i32* %685, align 4
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX.i381, align 8
  %759 = shl nsw i64 %758, 3
  %760 = add i64 %759, %731
  %761 = add i64 %718, 24
  store i64 %761, i64* %PC.i, align 8
  %762 = inttoptr i64 %760 to double*
  %763 = load double, double* %762, align 8
  store double %763, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %764 = add i64 %682, 48
  %765 = add i64 %718, 28
  store i64 %765, i64* %PC.i, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RAX.i451, align 8
  %768 = add i64 %718, 32
  store i64 %768, i64* %PC.i, align 8
  %769 = load i32, i32* %685, align 4
  %770 = sext i32 %769 to i64
  %771 = shl nsw i64 %770, 13
  store i64 %771, i64* %RCX.i381, align 8
  %772 = lshr i64 %770, 50
  %773 = and i64 %772, 1
  %774 = add i64 %771, %767
  store i64 %774, i64* %RAX.i451, align 8
  %775 = icmp ult i64 %774, %767
  %776 = icmp ult i64 %774, %771
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %131, align 1
  %779 = trunc i64 %774 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %132, align 1
  %785 = xor i64 %767, %774
  %786 = lshr i64 %785, 4
  %787 = trunc i64 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %133, align 1
  %789 = icmp eq i64 %774, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %134, align 1
  %791 = lshr i64 %774, 63
  %792 = trunc i64 %791 to i8
  store i8 %792, i8* %135, align 1
  %793 = lshr i64 %767, 63
  %794 = xor i64 %791, %793
  %795 = xor i64 %791, %773
  %796 = add nuw nsw i64 %794, %795
  %797 = icmp eq i64 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %136, align 1
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -64
  %801 = add i64 %718, 43
  store i64 %801, i64* %PC.i, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = sext i32 %803 to i64
  store i64 %804, i64* %RCX.i381, align 8
  %805 = shl nsw i64 %804, 3
  %806 = add i64 %805, %774
  %807 = add i64 %718, 48
  store i64 %807, i64* %PC.i, align 8
  %808 = inttoptr i64 %806 to double*
  %809 = load double, double* %808, align 8
  %810 = fmul double %763, %809
  store double %810, double* %146, align 1
  store i64 0, i64* %139, align 1
  %811 = add i64 %799, 32
  %812 = add i64 %718, 52
  store i64 %812, i64* %PC.i, align 8
  %813 = inttoptr i64 %811 to i64*
  %814 = load i64, i64* %813, align 8
  store i64 %814, i64* %RAX.i451, align 8
  %815 = add i64 %799, -60
  %816 = add i64 %718, 56
  store i64 %816, i64* %PC.i, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  %820 = shl nsw i64 %819, 13
  store i64 %820, i64* %RCX.i381, align 8
  %821 = lshr i64 %819, 50
  %822 = and i64 %821, 1
  %823 = add i64 %820, %814
  store i64 %823, i64* %RAX.i451, align 8
  %824 = icmp ult i64 %823, %814
  %825 = icmp ult i64 %823, %820
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %131, align 1
  %828 = trunc i64 %823 to i32
  %829 = and i32 %828, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %132, align 1
  %834 = xor i64 %814, %823
  %835 = lshr i64 %834, 4
  %836 = trunc i64 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %133, align 1
  %838 = icmp eq i64 %823, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %134, align 1
  %840 = lshr i64 %823, 63
  %841 = trunc i64 %840 to i8
  store i8 %841, i8* %135, align 1
  %842 = lshr i64 %814, 63
  %843 = xor i64 %840, %842
  %844 = xor i64 %840, %822
  %845 = add nuw nsw i64 %843, %844
  %846 = icmp eq i64 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %136, align 1
  %848 = add i64 %718, 67
  store i64 %848, i64* %PC.i, align 8
  %849 = load i32, i32* %802, align 4
  %850 = sext i32 %849 to i64
  store i64 %850, i64* %RCX.i381, align 8
  %851 = shl nsw i64 %850, 3
  %852 = add i64 %851, %823
  %853 = add i64 %718, 72
  store i64 %853, i64* %PC.i, align 8
  %854 = inttoptr i64 %852 to double*
  %855 = load double, double* %854, align 8
  %856 = fadd double %810, %855
  store double %856, double* %146, align 1
  store i64 0, i64* %139, align 1
  %857 = add i64 %718, 77
  store i64 %857, i64* %PC.i, align 8
  store double %856, double* %854, align 8
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -68
  %860 = load i64, i64* %PC.i, align 8
  %861 = add i64 %860, 3
  store i64 %861, i64* %PC.i, align 8
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = add i32 %863, 1
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i451, align 8
  %866 = icmp eq i32 %863, -1
  %867 = icmp eq i32 %864, 0
  %868 = or i1 %866, %867
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %131, align 1
  %870 = and i32 %864, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %132, align 1
  %875 = xor i32 %863, %864
  %876 = lshr i32 %875, 4
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  store i8 %878, i8* %133, align 1
  %879 = icmp eq i32 %864, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %134, align 1
  %881 = lshr i32 %864, 31
  %882 = trunc i32 %881 to i8
  store i8 %882, i8* %135, align 1
  %883 = lshr i32 %863, 31
  %884 = xor i32 %881, %883
  %885 = add nuw nsw i32 %884, %881
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %136, align 1
  %888 = add i64 %860, 9
  store i64 %888, i64* %PC.i, align 8
  store i32 %864, i32* %862, align 4
  %889 = load i64, i64* %PC.i, align 8
  %890 = add i64 %889, -98
  store i64 %890, i64* %3, align 8
  br label %block_.L_4011fa

block_.L_401261:                                  ; preds = %block_.L_4011fa
  %891 = add i64 %682, -64
  %892 = add i64 %718, 8
  store i64 %892, i64* %PC.i, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = add i32 %894, 1
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i451, align 8
  %897 = icmp eq i32 %894, -1
  %898 = icmp eq i32 %895, 0
  %899 = or i1 %897, %898
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %131, align 1
  %901 = and i32 %895, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %132, align 1
  %906 = xor i32 %894, %895
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %133, align 1
  %910 = icmp eq i32 %895, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %134, align 1
  %912 = lshr i32 %895, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %135, align 1
  %914 = lshr i32 %894, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %912
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %136, align 1
  %919 = add i64 %718, 14
  store i64 %919, i64* %PC.i, align 8
  store i32 %895, i32* %893, align 4
  %920 = load i64, i64* %PC.i, align 8
  %921 = add i64 %920, -163
  store i64 %921, i64* %3, align 8
  br label %block_.L_4011cc

block_.L_401274:                                  ; preds = %block_.L_4011cc
  %922 = add i64 %593, -60
  %923 = add i64 %629, 8
  store i64 %923, i64* %PC.i, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = add i32 %925, 1
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX.i451, align 8
  %928 = icmp eq i32 %925, -1
  %929 = icmp eq i32 %926, 0
  %930 = or i1 %928, %929
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %131, align 1
  %932 = and i32 %926, 255
  %933 = tail call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  store i8 %936, i8* %132, align 1
  %937 = xor i32 %925, %926
  %938 = lshr i32 %937, 4
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %133, align 1
  %941 = icmp eq i32 %926, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %134, align 1
  %943 = lshr i32 %926, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %135, align 1
  %945 = lshr i32 %925, 31
  %946 = xor i32 %943, %945
  %947 = add nuw nsw i32 %946, %943
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %136, align 1
  %950 = add i64 %629, 14
  store i64 %950, i64* %PC.i, align 8
  store i32 %926, i32* %924, align 4
  %951 = load i64, i64* %PC.i, align 8
  %952 = add i64 %951, -201
  store i64 %952, i64* %3, align 8
  br label %block_.L_4011b9

block_.L_401287:                                  ; preds = %block_.L_4011b9
  %953 = add i64 %588, 7
  store i64 %953, i64* %PC.i, align 8
  store i32 0, i32* %555, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_40128e

block_.L_40128e:                                  ; preds = %block_.L_401349, %block_.L_401287
  %954 = phi i64 [ %1355, %block_.L_401349 ], [ %.pre6, %block_.L_401287 ]
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -60
  %957 = add i64 %954, 3
  store i64 %957, i64* %PC.i, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RAX.i451, align 8
  %961 = add i64 %955, -28
  %962 = add i64 %954, 6
  store i64 %962, i64* %PC.i, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = sub i32 %959, %964
  %966 = icmp ult i32 %959, %964
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %131, align 1
  %968 = and i32 %965, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %132, align 1
  %973 = xor i32 %964, %959
  %974 = xor i32 %973, %965
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %133, align 1
  %978 = icmp eq i32 %965, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %134, align 1
  %980 = lshr i32 %965, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %135, align 1
  %982 = lshr i32 %959, 31
  %983 = lshr i32 %964, 31
  %984 = xor i32 %983, %982
  %985 = xor i32 %980, %982
  %986 = add nuw nsw i32 %985, %984
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %136, align 1
  %989 = icmp ne i8 %981, 0
  %990 = xor i1 %989, %987
  %.v14 = select i1 %990, i64 12, i64 206
  %991 = add i64 %954, %.v14
  store i64 %991, i64* %3, align 8
  br i1 %990, label %block_40129a, label %block_.L_40135c

block_40129a:                                     ; preds = %block_.L_40128e
  %992 = add i64 %955, -64
  %993 = add i64 %991, 7
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %992 to i32*
  store i32 0, i32* %994, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_4012a1

block_.L_4012a1:                                  ; preds = %block_.L_401336, %block_40129a
  %995 = phi i64 [ %1324, %block_.L_401336 ], [ %.pre7, %block_40129a ]
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -64
  %998 = add i64 %995, 3
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i451, align 8
  %1002 = add i64 %996, -40
  %1003 = add i64 %995, 6
  store i64 %1003, i64* %PC.i, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sub i32 %1000, %1005
  %1007 = icmp ult i32 %1000, %1005
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %131, align 1
  %1009 = and i32 %1006, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %132, align 1
  %1014 = xor i32 %1005, %1000
  %1015 = xor i32 %1014, %1006
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %133, align 1
  %1019 = icmp eq i32 %1006, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %134, align 1
  %1021 = lshr i32 %1006, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %135, align 1
  %1023 = lshr i32 %1000, 31
  %1024 = lshr i32 %1005, 31
  %1025 = xor i32 %1024, %1023
  %1026 = xor i32 %1021, %1023
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %136, align 1
  %1030 = icmp ne i8 %1022, 0
  %1031 = xor i1 %1030, %1028
  %.v15 = select i1 %1031, i64 12, i64 168
  %1032 = add i64 %995, %.v15
  store i64 %1032, i64* %3, align 8
  br i1 %1031, label %block_4012ad, label %block_.L_401349

block_4012ad:                                     ; preds = %block_.L_4012a1
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %1033 = add i64 %996, 56
  %1034 = add i64 %1032, 7
  store i64 %1034, i64* %PC.i, align 8
  %1035 = inttoptr i64 %1033 to i64*
  %1036 = load i64, i64* %1035, align 8
  store i64 %1036, i64* %RAX.i451, align 8
  %1037 = add i64 %996, -60
  %1038 = add i64 %1032, 11
  store i64 %1038, i64* %PC.i, align 8
  %1039 = inttoptr i64 %1037 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = shl nsw i64 %1041, 13
  store i64 %1042, i64* %RCX.i381, align 8
  %1043 = lshr i64 %1041, 50
  %1044 = and i64 %1043, 1
  %1045 = add i64 %1042, %1036
  store i64 %1045, i64* %RAX.i451, align 8
  %1046 = icmp ult i64 %1045, %1036
  %1047 = icmp ult i64 %1045, %1042
  %1048 = or i1 %1046, %1047
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %131, align 1
  %1050 = trunc i64 %1045 to i32
  %1051 = and i32 %1050, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %132, align 1
  %1056 = xor i64 %1036, %1045
  %1057 = lshr i64 %1056, 4
  %1058 = trunc i64 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %133, align 1
  %1060 = icmp eq i64 %1045, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %134, align 1
  %1062 = lshr i64 %1045, 63
  %1063 = trunc i64 %1062 to i8
  store i8 %1063, i8* %135, align 1
  %1064 = lshr i64 %1036, 63
  %1065 = xor i64 %1062, %1064
  %1066 = xor i64 %1062, %1044
  %1067 = add nuw nsw i64 %1065, %1066
  %1068 = icmp eq i64 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %136, align 1
  %1070 = add i64 %1032, 22
  store i64 %1070, i64* %PC.i, align 8
  %1071 = load i32, i32* %999, align 4
  %1072 = sext i32 %1071 to i64
  store i64 %1072, i64* %RCX.i381, align 8
  %1073 = shl nsw i64 %1072, 3
  %1074 = add i64 %1073, %1045
  %1075 = add i64 %1032, 27
  store i64 %1075, i64* %PC.i, align 8
  %1076 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %1077 = load i64, i64* %1076, align 1
  %1078 = inttoptr i64 %1074 to i64*
  store i64 %1077, i64* %1078, align 8
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -68
  %1081 = load i64, i64* %PC.i, align 8
  %1082 = add i64 %1081, 7
  store i64 %1082, i64* %PC.i, align 8
  %1083 = inttoptr i64 %1080 to i32*
  store i32 0, i32* %1083, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_4012cf

block_.L_4012cf:                                  ; preds = %block_4012db, %block_4012ad
  %1084 = phi i64 [ %1293, %block_4012db ], [ %.pre8, %block_4012ad ]
  %1085 = load i64, i64* %RBP.i, align 8
  %1086 = add i64 %1085, -68
  %1087 = add i64 %1084, 3
  store i64 %1087, i64* %PC.i, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX.i451, align 8
  %1091 = add i64 %1085, -32
  %1092 = add i64 %1084, 6
  store i64 %1092, i64* %PC.i, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = sub i32 %1089, %1094
  %1096 = icmp ult i32 %1089, %1094
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %131, align 1
  %1098 = and i32 %1095, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %132, align 1
  %1103 = xor i32 %1094, %1089
  %1104 = xor i32 %1103, %1095
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %133, align 1
  %1108 = icmp eq i32 %1095, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %134, align 1
  %1110 = lshr i32 %1095, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %135, align 1
  %1112 = lshr i32 %1089, 31
  %1113 = lshr i32 %1094, 31
  %1114 = xor i32 %1113, %1112
  %1115 = xor i32 %1110, %1112
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %136, align 1
  %1119 = icmp ne i8 %1111, 0
  %1120 = xor i1 %1119, %1117
  %.v16 = select i1 %1120, i64 12, i64 103
  %1121 = add i64 %1084, %.v16
  store i64 %1121, i64* %3, align 8
  br i1 %1120, label %block_4012db, label %block_.L_401336

block_4012db:                                     ; preds = %block_.L_4012cf
  %1122 = add i64 %1085, -56
  %1123 = add i64 %1121, 4
  store i64 %1123, i64* %PC.i, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX.i451, align 8
  %1126 = add i64 %1085, -60
  %1127 = add i64 %1121, 8
  store i64 %1127, i64* %PC.i, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = shl nsw i64 %1130, 13
  store i64 %1131, i64* %RCX.i381, align 8
  %1132 = lshr i64 %1130, 50
  %1133 = and i64 %1132, 1
  %1134 = add i64 %1131, %1125
  store i64 %1134, i64* %RAX.i451, align 8
  %1135 = icmp ult i64 %1134, %1125
  %1136 = icmp ult i64 %1134, %1131
  %1137 = or i1 %1135, %1136
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %131, align 1
  %1139 = trunc i64 %1134 to i32
  %1140 = and i32 %1139, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %132, align 1
  %1145 = xor i64 %1125, %1134
  %1146 = lshr i64 %1145, 4
  %1147 = trunc i64 %1146 to i8
  %1148 = and i8 %1147, 1
  store i8 %1148, i8* %133, align 1
  %1149 = icmp eq i64 %1134, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %134, align 1
  %1151 = lshr i64 %1134, 63
  %1152 = trunc i64 %1151 to i8
  store i8 %1152, i8* %135, align 1
  %1153 = lshr i64 %1125, 63
  %1154 = xor i64 %1151, %1153
  %1155 = xor i64 %1151, %1133
  %1156 = add nuw nsw i64 %1154, %1155
  %1157 = icmp eq i64 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %136, align 1
  %1159 = add i64 %1121, 19
  store i64 %1159, i64* %PC.i, align 8
  %1160 = load i32, i32* %1088, align 4
  %1161 = sext i32 %1160 to i64
  store i64 %1161, i64* %RCX.i381, align 8
  %1162 = shl nsw i64 %1161, 3
  %1163 = add i64 %1162, %1134
  %1164 = add i64 %1121, 24
  store i64 %1164, i64* %PC.i, align 8
  %1165 = inttoptr i64 %1163 to double*
  %1166 = load double, double* %1165, align 8
  store double %1166, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %1167 = add i64 %1085, 32
  %1168 = add i64 %1121, 28
  store i64 %1168, i64* %PC.i, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i451, align 8
  %1171 = add i64 %1121, 32
  store i64 %1171, i64* %PC.i, align 8
  %1172 = load i32, i32* %1088, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = shl nsw i64 %1173, 13
  store i64 %1174, i64* %RCX.i381, align 8
  %1175 = lshr i64 %1173, 50
  %1176 = and i64 %1175, 1
  %1177 = add i64 %1174, %1170
  store i64 %1177, i64* %RAX.i451, align 8
  %1178 = icmp ult i64 %1177, %1170
  %1179 = icmp ult i64 %1177, %1174
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %131, align 1
  %1182 = trunc i64 %1177 to i32
  %1183 = and i32 %1182, 255
  %1184 = tail call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %132, align 1
  %1188 = xor i64 %1170, %1177
  %1189 = lshr i64 %1188, 4
  %1190 = trunc i64 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %133, align 1
  %1192 = icmp eq i64 %1177, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %134, align 1
  %1194 = lshr i64 %1177, 63
  %1195 = trunc i64 %1194 to i8
  store i8 %1195, i8* %135, align 1
  %1196 = lshr i64 %1170, 63
  %1197 = xor i64 %1194, %1196
  %1198 = xor i64 %1194, %1176
  %1199 = add nuw nsw i64 %1197, %1198
  %1200 = icmp eq i64 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %136, align 1
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -64
  %1204 = add i64 %1121, 43
  store i64 %1204, i64* %PC.i, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = sext i32 %1206 to i64
  store i64 %1207, i64* %RCX.i381, align 8
  %1208 = shl nsw i64 %1207, 3
  %1209 = add i64 %1208, %1177
  %1210 = add i64 %1121, 48
  store i64 %1210, i64* %PC.i, align 8
  %1211 = inttoptr i64 %1209 to double*
  %1212 = load double, double* %1211, align 8
  %1213 = fmul double %1166, %1212
  store double %1213, double* %146, align 1
  store i64 0, i64* %139, align 1
  %1214 = add i64 %1202, 56
  %1215 = add i64 %1121, 52
  store i64 %1215, i64* %PC.i, align 8
  %1216 = inttoptr i64 %1214 to i64*
  %1217 = load i64, i64* %1216, align 8
  store i64 %1217, i64* %RAX.i451, align 8
  %1218 = add i64 %1202, -60
  %1219 = add i64 %1121, 56
  store i64 %1219, i64* %PC.i, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = shl nsw i64 %1222, 13
  store i64 %1223, i64* %RCX.i381, align 8
  %1224 = lshr i64 %1222, 50
  %1225 = and i64 %1224, 1
  %1226 = add i64 %1223, %1217
  store i64 %1226, i64* %RAX.i451, align 8
  %1227 = icmp ult i64 %1226, %1217
  %1228 = icmp ult i64 %1226, %1223
  %1229 = or i1 %1227, %1228
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %131, align 1
  %1231 = trunc i64 %1226 to i32
  %1232 = and i32 %1231, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %132, align 1
  %1237 = xor i64 %1217, %1226
  %1238 = lshr i64 %1237, 4
  %1239 = trunc i64 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %133, align 1
  %1241 = icmp eq i64 %1226, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %134, align 1
  %1243 = lshr i64 %1226, 63
  %1244 = trunc i64 %1243 to i8
  store i8 %1244, i8* %135, align 1
  %1245 = lshr i64 %1217, 63
  %1246 = xor i64 %1243, %1245
  %1247 = xor i64 %1243, %1225
  %1248 = add nuw nsw i64 %1246, %1247
  %1249 = icmp eq i64 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %136, align 1
  %1251 = add i64 %1121, 67
  store i64 %1251, i64* %PC.i, align 8
  %1252 = load i32, i32* %1205, align 4
  %1253 = sext i32 %1252 to i64
  store i64 %1253, i64* %RCX.i381, align 8
  %1254 = shl nsw i64 %1253, 3
  %1255 = add i64 %1254, %1226
  %1256 = add i64 %1121, 72
  store i64 %1256, i64* %PC.i, align 8
  %1257 = inttoptr i64 %1255 to double*
  %1258 = load double, double* %1257, align 8
  %1259 = fadd double %1213, %1258
  store double %1259, double* %146, align 1
  store i64 0, i64* %139, align 1
  %1260 = add i64 %1121, 77
  store i64 %1260, i64* %PC.i, align 8
  store double %1259, double* %1257, align 8
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -68
  %1263 = load i64, i64* %PC.i, align 8
  %1264 = add i64 %1263, 3
  store i64 %1264, i64* %PC.i, align 8
  %1265 = inttoptr i64 %1262 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = add i32 %1266, 1
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %RAX.i451, align 8
  %1269 = icmp eq i32 %1266, -1
  %1270 = icmp eq i32 %1267, 0
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %131, align 1
  %1273 = and i32 %1267, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %132, align 1
  %1278 = xor i32 %1266, %1267
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %133, align 1
  %1282 = icmp eq i32 %1267, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %134, align 1
  %1284 = lshr i32 %1267, 31
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* %135, align 1
  %1286 = lshr i32 %1266, 31
  %1287 = xor i32 %1284, %1286
  %1288 = add nuw nsw i32 %1287, %1284
  %1289 = icmp eq i32 %1288, 2
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %136, align 1
  %1291 = add i64 %1263, 9
  store i64 %1291, i64* %PC.i, align 8
  store i32 %1267, i32* %1265, align 4
  %1292 = load i64, i64* %PC.i, align 8
  %1293 = add i64 %1292, -98
  store i64 %1293, i64* %3, align 8
  br label %block_.L_4012cf

block_.L_401336:                                  ; preds = %block_.L_4012cf
  %1294 = add i64 %1085, -64
  %1295 = add i64 %1121, 8
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = add i32 %1297, 1
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RAX.i451, align 8
  %1300 = icmp eq i32 %1297, -1
  %1301 = icmp eq i32 %1298, 0
  %1302 = or i1 %1300, %1301
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %131, align 1
  %1304 = and i32 %1298, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %132, align 1
  %1309 = xor i32 %1297, %1298
  %1310 = lshr i32 %1309, 4
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %133, align 1
  %1313 = icmp eq i32 %1298, 0
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %134, align 1
  %1315 = lshr i32 %1298, 31
  %1316 = trunc i32 %1315 to i8
  store i8 %1316, i8* %135, align 1
  %1317 = lshr i32 %1297, 31
  %1318 = xor i32 %1315, %1317
  %1319 = add nuw nsw i32 %1318, %1315
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %136, align 1
  %1322 = add i64 %1121, 14
  store i64 %1322, i64* %PC.i, align 8
  store i32 %1298, i32* %1296, align 4
  %1323 = load i64, i64* %PC.i, align 8
  %1324 = add i64 %1323, -163
  store i64 %1324, i64* %3, align 8
  br label %block_.L_4012a1

block_.L_401349:                                  ; preds = %block_.L_4012a1
  %1325 = add i64 %996, -60
  %1326 = add i64 %1032, 8
  store i64 %1326, i64* %PC.i, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = add i32 %1328, 1
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RAX.i451, align 8
  %1331 = icmp eq i32 %1328, -1
  %1332 = icmp eq i32 %1329, 0
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %131, align 1
  %1335 = and i32 %1329, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %132, align 1
  %1340 = xor i32 %1328, %1329
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %133, align 1
  %1344 = icmp eq i32 %1329, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %134, align 1
  %1346 = lshr i32 %1329, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %135, align 1
  %1348 = lshr i32 %1328, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1346
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %136, align 1
  %1353 = add i64 %1032, 14
  store i64 %1353, i64* %PC.i, align 8
  store i32 %1329, i32* %1327, align 4
  %1354 = load i64, i64* %PC.i, align 8
  %1355 = add i64 %1354, -201
  store i64 %1355, i64* %3, align 8
  br label %block_.L_40128e

block_.L_40135c:                                  ; preds = %block_.L_40128e
  %1356 = add i64 %991, 1
  store i64 %1356, i64* %PC.i, align 8
  %1357 = load i64, i64* %6, align 8
  %1358 = add i64 %1357, 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RBX.i454, align 8
  store i64 %1358, i64* %6, align 8
  %1361 = add i64 %991, 3
  store i64 %1361, i64* %PC.i, align 8
  %1362 = add i64 %1357, 16
  %1363 = inttoptr i64 %1358 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %R14.i456, align 8
  store i64 %1362, i64* %6, align 8
  %1365 = add i64 %991, 5
  store i64 %1365, i64* %PC.i, align 8
  %1366 = add i64 %1357, 24
  %1367 = inttoptr i64 %1362 to i64*
  %1368 = load i64, i64* %1367, align 8
  store i64 %1368, i64* %R15.i458, align 8
  store i64 %1366, i64* %6, align 8
  %1369 = add i64 %991, 6
  store i64 %1369, i64* %PC.i, align 8
  %1370 = add i64 %1357, 32
  %1371 = inttoptr i64 %1366 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RBP.i, align 8
  store i64 %1370, i64* %6, align 8
  %1373 = add i64 %991, 7
  store i64 %1373, i64* %PC.i, align 8
  %1374 = inttoptr i64 %1370 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %3, align 8
  %1376 = add i64 %1357, 40
  store i64 %1376, i64* %6, align 8
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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

define %struct.Memory* @routine_jge_.L_4011b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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

define %struct.Memory* @routine_jge_.L_40119f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 51
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
  %17 = lshr i64 %3, 50
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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

define %struct.Memory* @routine_jge_.L_40118c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_401125(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401191(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_4010f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4010e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401287(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401274(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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

define %struct.Memory* @routine_jge_.L_401261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401266(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401279(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40135c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401336(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4012cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40133b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4012a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40134e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40128e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
