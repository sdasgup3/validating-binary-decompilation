; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6ccf80_type = type <{ [8 x i8] }>
%G_0x710a40_type = type <{ [8 x i8] }>
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
@G_0x6ccf80 = local_unnamed_addr global %G_0x6ccf80_type zeroinitializer
@G_0x710a40 = local_unnamed_addr global %G_0x710a40_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @PaddAutoCropBorders(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i416 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = add i64 %7, 16
  %13 = add i64 %10, 6
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RAX.i416, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i413 = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %19 = add i64 %7, 8
  %20 = add i64 %10, 10
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %19 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %18, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %24 to i32*
  %25 = add i64 %7, -12
  %26 = load i32, i32* %EDI.i, align 4
  %27 = add i64 %10, 13
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %29 to i32*
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -8
  %32 = load i32, i32* %ESI.i, align 4
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i406 = bitcast %union.anon* %36 to i32*
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -12
  %39 = load i32, i32* %EDX.i406, align 4
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i403 = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i32, i32* %ECX.i403, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %R8D.i, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i32, i32* %R9D.i, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -28
  %66 = load i32, i32* %R10D.i413, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %EAX.i394 = bitcast %union.anon* %11 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -32
  %72 = load i32, i32* %EAX.i394, align 4
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -40
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i367 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %RDX.i361 = getelementptr inbounds %union.anon, %union.anon* %36, i64 0, i32 0
  %SI.i352 = bitcast %union.anon* %29 to i16*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_429bed

block_.L_429bed:                                  ; preds = %block_.L_429c4e, %entry
  %87 = phi i64 [ %288, %block_.L_429c4e ], [ %.pre, %entry ]
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -40
  %90 = add i64 %87, 3
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %RAX.i416, align 8
  %94 = add i64 %88, -8
  %95 = add i64 %87, 6
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %92, %97
  %99 = icmp ult i32 %92, %97
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %81, align 1
  %101 = and i32 %98, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %82, align 1
  %106 = xor i32 %97, %92
  %107 = xor i32 %106, %98
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %83, align 1
  %111 = icmp eq i32 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %84, align 1
  %113 = lshr i32 %98, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %85, align 1
  %115 = lshr i32 %92, 31
  %116 = lshr i32 %97, 31
  %117 = xor i32 %116, %115
  %118 = xor i32 %113, %115
  %119 = add nuw nsw i32 %118, %117
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %86, align 1
  %122 = icmp ne i8 %114, 0
  %123 = xor i1 %122, %120
  %.v43 = select i1 %123, i64 12, i64 116
  %124 = add i64 %87, %.v43
  store i64 %124, i64* %3, align 8
  br i1 %123, label %block_429bf9, label %block_.L_429c61

block_429bf9:                                     ; preds = %block_.L_429bed
  %125 = add i64 %88, -4
  %126 = add i64 %124, 3
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RAX.i416, align 8
  %130 = add i64 %88, -36
  %131 = add i64 %124, 6
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 %128, i32* %132, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_429bff

block_.L_429bff:                                  ; preds = %block_429c0b, %block_429bf9
  %133 = phi i64 [ %258, %block_429c0b ], [ %.pre39, %block_429bf9 ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -36
  %136 = add i64 %133, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i416, align 8
  %140 = add i64 %134, -12
  %141 = add i64 %133, 6
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sub i32 %138, %143
  %145 = icmp ult i32 %138, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %81, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %82, align 1
  %152 = xor i32 %143, %138
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %83, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %84, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %85, align 1
  %161 = lshr i32 %138, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %86, align 1
  %168 = icmp ne i8 %160, 0
  %169 = xor i1 %168, %166
  %.v42 = select i1 %169, i64 12, i64 79
  %170 = add i64 %133, %.v42
  store i64 %170, i64* %3, align 8
  br i1 %169, label %block_429c0b, label %block_.L_429c4e

block_429c0b:                                     ; preds = %block_.L_429bff
  %171 = load i64, i64* bitcast (%G_0x710a40_type* @G_0x710a40 to i64*), align 8
  store i64 %171, i64* %RAX.i416, align 8
  %172 = add i64 %134, -40
  %173 = add i64 %170, 12
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RCX.i367, align 8
  %177 = shl nsw i64 %176, 3
  %178 = add i64 %177, %171
  %179 = add i64 %170, 16
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX.i416, align 8
  %182 = add i64 %170, 19
  store i64 %182, i64* %3, align 8
  %183 = load i32, i32* %137, align 4
  %184 = add i32 %183, -1
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RDX.i361, align 8
  %186 = icmp eq i32 %183, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %81, align 1
  %188 = and i32 %184, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %82, align 1
  %193 = xor i32 %184, %183
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %83, align 1
  %197 = icmp eq i32 %184, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %84, align 1
  %199 = lshr i32 %184, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %85, align 1
  %201 = lshr i32 %183, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %201
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %86, align 1
  %206 = sext i32 %184 to i64
  store i64 %206, i64* %RCX.i367, align 8
  %207 = shl nsw i64 %206, 1
  %208 = add i64 %181, %207
  %209 = add i64 %170, 29
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i16*
  %211 = load i16, i16* %210, align 2
  store i16 %211, i16* %SI.i352, align 2
  store i64 %171, i64* %RAX.i416, align 8
  %212 = add i64 %170, 41
  store i64 %212, i64* %3, align 8
  %213 = load i32, i32* %174, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RCX.i367, align 8
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %171
  %217 = add i64 %170, 45
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RAX.i416, align 8
  %220 = add i64 %170, 49
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %137, align 4
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %RCX.i367, align 8
  %223 = shl nsw i64 %222, 1
  %224 = add i64 %223, %219
  %225 = add i64 %170, 53
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i16*
  store i16 %211, i16* %226, align 2
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -36
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 3
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %228 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = add i32 %232, 1
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX.i416, align 8
  %235 = icmp eq i32 %232, -1
  %236 = icmp eq i32 %233, 0
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %81, align 1
  %239 = and i32 %233, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %82, align 1
  %244 = xor i32 %233, %232
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %83, align 1
  %248 = zext i1 %236 to i8
  store i8 %248, i8* %84, align 1
  %249 = lshr i32 %233, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %85, align 1
  %251 = lshr i32 %232, 31
  %252 = xor i32 %249, %251
  %253 = add nuw nsw i32 %252, %249
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %86, align 1
  %256 = add i64 %229, 9
  store i64 %256, i64* %3, align 8
  store i32 %233, i32* %231, align 4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, -74
  store i64 %258, i64* %3, align 8
  br label %block_.L_429bff

block_.L_429c4e:                                  ; preds = %block_.L_429bff
  %259 = add i64 %134, -40
  %260 = add i64 %170, 8
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, 1
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX.i416, align 8
  %265 = icmp eq i32 %262, -1
  %266 = icmp eq i32 %263, 0
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %81, align 1
  %269 = and i32 %263, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %82, align 1
  %274 = xor i32 %263, %262
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %83, align 1
  %278 = zext i1 %266 to i8
  store i8 %278, i8* %84, align 1
  %279 = lshr i32 %263, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %85, align 1
  %281 = lshr i32 %262, 31
  %282 = xor i32 %279, %281
  %283 = add nuw nsw i32 %282, %279
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %86, align 1
  %286 = add i64 %170, 14
  store i64 %286, i64* %3, align 8
  store i32 %263, i32* %261, align 4
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, -111
  store i64 %288, i64* %3, align 8
  br label %block_.L_429bed

block_.L_429c61:                                  ; preds = %block_.L_429bed
  %289 = add i64 %124, 3
  store i64 %289, i64* %3, align 8
  %290 = load i32, i32* %96, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX.i416, align 8
  %292 = add i64 %124, 6
  store i64 %292, i64* %3, align 8
  store i32 %290, i32* %91, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_429c67

block_.L_429c67:                                  ; preds = %block_.L_429cc9, %block_.L_429c61
  %293 = phi i64 [ %489, %block_.L_429cc9 ], [ %.pre33, %block_.L_429c61 ]
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -40
  %296 = add i64 %293, 3
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX.i416, align 8
  %300 = add i64 %294, -16
  %301 = add i64 %293, 6
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = sub i32 %298, %303
  %305 = icmp ult i32 %298, %303
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %81, align 1
  %307 = and i32 %304, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %82, align 1
  %312 = xor i32 %303, %298
  %313 = xor i32 %312, %304
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %83, align 1
  %317 = icmp eq i32 %304, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %84, align 1
  %319 = lshr i32 %304, 31
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %85, align 1
  %321 = lshr i32 %298, 31
  %322 = lshr i32 %303, 31
  %323 = xor i32 %322, %321
  %324 = xor i32 %319, %321
  %325 = add nuw nsw i32 %324, %323
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %86, align 1
  %328 = icmp ne i8 %320, 0
  %329 = xor i1 %328, %326
  %.v44 = select i1 %329, i64 12, i64 117
  %330 = add i64 %293, %.v44
  store i64 %330, i64* %3, align 8
  br i1 %329, label %block_429c73, label %block_.L_429cdc

block_429c73:                                     ; preds = %block_.L_429c67
  %331 = add i64 %294, -36
  %332 = add i64 %330, 7
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  store i32 0, i32* %333, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_429c7a

block_.L_429c7a:                                  ; preds = %block_429c86, %block_429c73
  %334 = phi i64 [ %459, %block_429c86 ], [ %.pre38, %block_429c73 ]
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -36
  %337 = add i64 %334, 3
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX.i416, align 8
  %341 = add i64 %335, -12
  %342 = add i64 %334, 6
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = sub i32 %339, %344
  %346 = icmp ult i32 %339, %344
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %81, align 1
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %82, align 1
  %353 = xor i32 %344, %339
  %354 = xor i32 %353, %345
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %83, align 1
  %358 = icmp eq i32 %345, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %84, align 1
  %360 = lshr i32 %345, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %85, align 1
  %362 = lshr i32 %339, 31
  %363 = lshr i32 %344, 31
  %364 = xor i32 %363, %362
  %365 = xor i32 %360, %362
  %366 = add nuw nsw i32 %365, %364
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %86, align 1
  %369 = icmp ne i8 %361, 0
  %370 = xor i1 %369, %367
  %.v41 = select i1 %370, i64 12, i64 79
  %371 = add i64 %334, %.v41
  store i64 %371, i64* %3, align 8
  br i1 %370, label %block_429c86, label %block_.L_429cc9

block_429c86:                                     ; preds = %block_.L_429c7a
  %372 = load i64, i64* bitcast (%G_0x710a40_type* @G_0x710a40 to i64*), align 8
  store i64 %372, i64* %RAX.i416, align 8
  %373 = add i64 %335, -40
  %374 = add i64 %371, 11
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, -1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RCX.i367, align 8
  %379 = icmp eq i32 %376, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %81, align 1
  %381 = and i32 %377, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %82, align 1
  %386 = xor i32 %377, %376
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %83, align 1
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %84, align 1
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %85, align 1
  %394 = lshr i32 %376, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %86, align 1
  %399 = sext i32 %377 to i64
  store i64 %399, i64* %RDX.i361, align 8
  %400 = shl nsw i64 %399, 3
  %401 = add i64 %372, %400
  %402 = add i64 %371, 21
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RAX.i416, align 8
  %405 = add i64 %371, 25
  store i64 %405, i64* %3, align 8
  %406 = load i32, i32* %338, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %RDX.i361, align 8
  %408 = shl nsw i64 %407, 1
  %409 = add i64 %408, %404
  %410 = add i64 %371, 29
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i16*
  %412 = load i16, i16* %411, align 2
  store i16 %412, i16* %SI.i352, align 2
  store i64 %372, i64* %RAX.i416, align 8
  %413 = add i64 %371, 41
  store i64 %413, i64* %3, align 8
  %414 = load i32, i32* %375, align 4
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %RDX.i361, align 8
  %416 = shl nsw i64 %415, 3
  %417 = add i64 %416, %372
  %418 = add i64 %371, 45
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RAX.i416, align 8
  %421 = add i64 %371, 49
  store i64 %421, i64* %3, align 8
  %422 = load i32, i32* %338, align 4
  %423 = sext i32 %422 to i64
  store i64 %423, i64* %RDX.i361, align 8
  %424 = shl nsw i64 %423, 1
  %425 = add i64 %424, %420
  %426 = add i64 %371, 53
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i16*
  store i16 %412, i16* %427, align 2
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -36
  %430 = load i64, i64* %3, align 8
  %431 = add i64 %430, 3
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %429 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, 1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i416, align 8
  %436 = icmp eq i32 %433, -1
  %437 = icmp eq i32 %434, 0
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %81, align 1
  %440 = and i32 %434, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %82, align 1
  %445 = xor i32 %434, %433
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %83, align 1
  %449 = zext i1 %437 to i8
  store i8 %449, i8* %84, align 1
  %450 = lshr i32 %434, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %85, align 1
  %452 = lshr i32 %433, 31
  %453 = xor i32 %450, %452
  %454 = add nuw nsw i32 %453, %450
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %86, align 1
  %457 = add i64 %430, 9
  store i64 %457, i64* %3, align 8
  store i32 %434, i32* %432, align 4
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, -74
  store i64 %459, i64* %3, align 8
  br label %block_.L_429c7a

block_.L_429cc9:                                  ; preds = %block_.L_429c7a
  %460 = add i64 %335, -40
  %461 = add i64 %371, 8
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, 1
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX.i416, align 8
  %466 = icmp eq i32 %463, -1
  %467 = icmp eq i32 %464, 0
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %81, align 1
  %470 = and i32 %464, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %82, align 1
  %475 = xor i32 %464, %463
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %83, align 1
  %479 = zext i1 %467 to i8
  store i8 %479, i8* %84, align 1
  %480 = lshr i32 %464, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %85, align 1
  %482 = lshr i32 %463, 31
  %483 = xor i32 %480, %482
  %484 = add nuw nsw i32 %483, %480
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %86, align 1
  %487 = add i64 %371, 14
  store i64 %487, i64* %3, align 8
  store i32 %464, i32* %462, align 4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, -112
  store i64 %489, i64* %3, align 8
  br label %block_.L_429c67

block_.L_429cdc:                                  ; preds = %block_.L_429c67
  %490 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %490, i64* %RAX.i416, align 8
  %491 = add i64 %490, 72700
  %492 = add i64 %330, 15
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  store i8 0, i8* %81, align 1
  %495 = and i32 %494, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %82, align 1
  store i8 0, i8* %83, align 1
  %500 = icmp eq i32 %494, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %84, align 1
  %502 = lshr i32 %494, 31
  %503 = trunc i32 %502 to i8
  store i8 %503, i8* %85, align 1
  store i8 0, i8* %86, align 1
  %.v45 = select i1 %500, i64 406, i64 21
  %504 = add i64 %330, %.v45
  store i64 %504, i64* %3, align 8
  br i1 %500, label %block_.L_429e72, label %block_429cf1

block_429cf1:                                     ; preds = %block_.L_429cdc
  %505 = add i64 %504, 7
  store i64 %505, i64* %3, align 8
  store i32 0, i32* %297, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_429cf8

block_.L_429cf8:                                  ; preds = %block_.L_429d9c, %block_429cf1
  %506 = phi i64 [ %778, %block_.L_429d9c ], [ %.pre34, %block_429cf1 ]
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -40
  %509 = add i64 %506, 3
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX.i416, align 8
  %513 = add i64 %507, -24
  %514 = add i64 %506, 6
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sub i32 %511, %516
  %518 = icmp ult i32 %511, %516
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %81, align 1
  %520 = and i32 %517, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %82, align 1
  %525 = xor i32 %516, %511
  %526 = xor i32 %525, %517
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %83, align 1
  %530 = icmp eq i32 %517, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %84, align 1
  %532 = lshr i32 %517, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %85, align 1
  %534 = lshr i32 %511, 31
  %535 = lshr i32 %516, 31
  %536 = xor i32 %535, %534
  %537 = xor i32 %532, %534
  %538 = add nuw nsw i32 %537, %536
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %86, align 1
  %541 = icmp ne i8 %533, 0
  %542 = xor i1 %541, %539
  %.v46 = select i1 %542, i64 12, i64 183
  %543 = add i64 %506, %.v46
  store i64 %543, i64* %3, align 8
  br i1 %542, label %block_429d04, label %block_.L_429daf

block_429d04:                                     ; preds = %block_.L_429cf8
  %544 = add i64 %507, -20
  %545 = add i64 %543, 3
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RAX.i416, align 8
  %549 = add i64 %507, -36
  %550 = add i64 %543, 6
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  store i32 %547, i32* %551, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_429d0a

block_.L_429d0a:                                  ; preds = %block_429d16, %block_429d04
  %552 = phi i64 [ %748, %block_429d16 ], [ %.pre37, %block_429d04 ]
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -36
  %555 = add i64 %552, 3
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i416, align 8
  %559 = add i64 %553, -28
  %560 = add i64 %552, 6
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = sub i32 %557, %562
  %564 = icmp ult i32 %557, %562
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %81, align 1
  %566 = and i32 %563, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %82, align 1
  %571 = xor i32 %562, %557
  %572 = xor i32 %571, %563
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %83, align 1
  %576 = icmp eq i32 %563, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %84, align 1
  %578 = lshr i32 %563, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %85, align 1
  %580 = lshr i32 %557, 31
  %581 = lshr i32 %562, 31
  %582 = xor i32 %581, %580
  %583 = xor i32 %578, %580
  %584 = add nuw nsw i32 %583, %582
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %86, align 1
  %587 = icmp ne i8 %579, 0
  %588 = xor i1 %587, %585
  %.v40 = select i1 %588, i64 12, i64 146
  %589 = add i64 %552, %.v40
  store i64 %589, i64* %3, align 8
  br i1 %588, label %block_429d16, label %block_.L_429d9c

block_429d16:                                     ; preds = %block_.L_429d0a
  %590 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %590, i64* %RAX.i416, align 8
  %591 = add i64 %589, 11
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RAX.i416, align 8
  %594 = add i64 %553, -40
  %595 = add i64 %589, 15
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i367, align 8
  %599 = shl nsw i64 %598, 3
  %600 = add i64 %599, %593
  %601 = add i64 %589, 19
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RAX.i416, align 8
  %604 = add i64 %589, 22
  store i64 %604, i64* %3, align 8
  %605 = load i32, i32* %556, align 4
  %606 = add i32 %605, -1
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RDX.i361, align 8
  %608 = icmp eq i32 %605, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %81, align 1
  %610 = and i32 %606, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %82, align 1
  %615 = xor i32 %606, %605
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %83, align 1
  %619 = icmp eq i32 %606, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %84, align 1
  %621 = lshr i32 %606, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %85, align 1
  %623 = lshr i32 %605, 31
  %624 = xor i32 %621, %623
  %625 = add nuw nsw i32 %624, %623
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %86, align 1
  %628 = sext i32 %606 to i64
  store i64 %628, i64* %RCX.i367, align 8
  %629 = shl nsw i64 %628, 1
  %630 = add i64 %603, %629
  %631 = add i64 %589, 32
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i16*
  %633 = load i16, i16* %632, align 2
  store i16 %633, i16* %SI.i352, align 2
  store i64 %590, i64* %RAX.i416, align 8
  %634 = add i64 %589, 43
  store i64 %634, i64* %3, align 8
  %635 = load i64, i64* %592, align 8
  store i64 %635, i64* %RAX.i416, align 8
  %636 = add i64 %589, 47
  store i64 %636, i64* %3, align 8
  %637 = load i32, i32* %596, align 4
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX.i367, align 8
  %639 = shl nsw i64 %638, 3
  %640 = add i64 %639, %635
  %641 = add i64 %589, 51
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX.i416, align 8
  %644 = add i64 %589, 55
  store i64 %644, i64* %3, align 8
  %645 = load i32, i32* %556, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %RCX.i367, align 8
  %647 = shl nsw i64 %646, 1
  %648 = add i64 %647, %643
  %649 = add i64 %589, 59
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i16*
  store i16 %633, i16* %650, align 2
  %651 = load i64, i64* %3, align 8
  %652 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %652, i64* %RAX.i416, align 8
  %653 = add i64 %652, 8
  %654 = add i64 %651, 12
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i416, align 8
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -40
  %659 = add i64 %651, 16
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %RCX.i367, align 8
  %663 = shl nsw i64 %662, 3
  %664 = add i64 %663, %656
  %665 = add i64 %651, 20
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RAX.i416, align 8
  %668 = add i64 %657, -36
  %669 = add i64 %651, 23
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = add i32 %671, -1
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RDX.i361, align 8
  %674 = icmp eq i32 %671, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %81, align 1
  %676 = and i32 %672, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %82, align 1
  %681 = xor i32 %672, %671
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %83, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %84, align 1
  %687 = lshr i32 %672, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %85, align 1
  %689 = lshr i32 %671, 31
  %690 = xor i32 %687, %689
  %691 = add nuw nsw i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %86, align 1
  %694 = sext i32 %672 to i64
  store i64 %694, i64* %RCX.i367, align 8
  %695 = shl nsw i64 %694, 1
  %696 = add i64 %667, %695
  %697 = add i64 %651, 33
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i16*
  %699 = load i16, i16* %698, align 2
  store i16 %699, i16* %SI.i352, align 2
  store i64 %652, i64* %RAX.i416, align 8
  %700 = add i64 %651, 45
  store i64 %700, i64* %3, align 8
  %701 = load i64, i64* %655, align 8
  store i64 %701, i64* %RAX.i416, align 8
  %702 = add i64 %651, 49
  store i64 %702, i64* %3, align 8
  %703 = load i32, i32* %660, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i367, align 8
  %705 = shl nsw i64 %704, 3
  %706 = add i64 %705, %701
  %707 = add i64 %651, 53
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RAX.i416, align 8
  %710 = add i64 %651, 57
  store i64 %710, i64* %3, align 8
  %711 = load i32, i32* %670, align 4
  %712 = sext i32 %711 to i64
  store i64 %712, i64* %RCX.i367, align 8
  %713 = shl nsw i64 %712, 1
  %714 = add i64 %713, %709
  %715 = add i64 %651, 61
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i16*
  store i16 %699, i16* %716, align 2
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -36
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, 3
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = add i32 %722, 1
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX.i416, align 8
  %725 = icmp eq i32 %722, -1
  %726 = icmp eq i32 %723, 0
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %81, align 1
  %729 = and i32 %723, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %82, align 1
  %734 = xor i32 %723, %722
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %83, align 1
  %738 = zext i1 %726 to i8
  store i8 %738, i8* %84, align 1
  %739 = lshr i32 %723, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %85, align 1
  %741 = lshr i32 %722, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %739
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %86, align 1
  %746 = add i64 %719, 9
  store i64 %746, i64* %3, align 8
  store i32 %723, i32* %721, align 4
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, -141
  store i64 %748, i64* %3, align 8
  br label %block_.L_429d0a

block_.L_429d9c:                                  ; preds = %block_.L_429d0a
  %749 = add i64 %553, -40
  %750 = add i64 %589, 8
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i416, align 8
  %755 = icmp eq i32 %752, -1
  %756 = icmp eq i32 %753, 0
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %81, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %82, align 1
  %764 = xor i32 %753, %752
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %83, align 1
  %768 = zext i1 %756 to i8
  store i8 %768, i8* %84, align 1
  %769 = lshr i32 %753, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %85, align 1
  %771 = lshr i32 %752, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %769
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %86, align 1
  %776 = add i64 %589, 14
  store i64 %776, i64* %3, align 8
  store i32 %753, i32* %751, align 4
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, -178
  store i64 %778, i64* %3, align 8
  br label %block_.L_429cf8

block_.L_429daf:                                  ; preds = %block_.L_429cf8
  %779 = add i64 %543, 3
  store i64 %779, i64* %3, align 8
  %780 = load i32, i32* %515, align 4
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RAX.i416, align 8
  %782 = add i64 %543, 6
  store i64 %782, i64* %3, align 8
  store i32 %780, i32* %510, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_429db5

block_.L_429db5:                                  ; preds = %block_.L_429e5a, %block_.L_429daf
  %783 = phi i64 [ %1050, %block_.L_429e5a ], [ %.pre35, %block_.L_429daf ]
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -40
  %786 = add i64 %783, 3
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RAX.i416, align 8
  %790 = add i64 %784, -32
  %791 = add i64 %783, 6
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i32*
  %793 = load i32, i32* %792, align 4
  %794 = sub i32 %788, %793
  %795 = icmp ult i32 %788, %793
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %81, align 1
  %797 = and i32 %794, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %82, align 1
  %802 = xor i32 %793, %788
  %803 = xor i32 %802, %794
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %83, align 1
  %807 = icmp eq i32 %794, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %84, align 1
  %809 = lshr i32 %794, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %85, align 1
  %811 = lshr i32 %788, 31
  %812 = lshr i32 %793, 31
  %813 = xor i32 %812, %811
  %814 = xor i32 %809, %811
  %815 = add nuw nsw i32 %814, %813
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %86, align 1
  %818 = icmp ne i8 %810, 0
  %819 = xor i1 %818, %816
  %.v47 = select i1 %819, i64 12, i64 184
  %820 = add i64 %783, %.v47
  store i64 %820, i64* %3, align 8
  br i1 %819, label %block_429dc1, label %block_.L_429e6d

block_429dc1:                                     ; preds = %block_.L_429db5
  %821 = add i64 %784, -36
  %822 = add i64 %820, 7
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  store i32 0, i32* %823, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_429dc8

block_.L_429dc8:                                  ; preds = %block_429dd4, %block_429dc1
  %824 = phi i64 [ %1020, %block_429dd4 ], [ %.pre36, %block_429dc1 ]
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -36
  %827 = add i64 %824, 3
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX.i416, align 8
  %831 = add i64 %825, -28
  %832 = add i64 %824, 6
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = sub i32 %829, %834
  %836 = icmp ult i32 %829, %834
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %81, align 1
  %838 = and i32 %835, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %82, align 1
  %843 = xor i32 %834, %829
  %844 = xor i32 %843, %835
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %83, align 1
  %848 = icmp eq i32 %835, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %84, align 1
  %850 = lshr i32 %835, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %85, align 1
  %852 = lshr i32 %829, 31
  %853 = lshr i32 %834, 31
  %854 = xor i32 %853, %852
  %855 = xor i32 %850, %852
  %856 = add nuw nsw i32 %855, %854
  %857 = icmp eq i32 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %86, align 1
  %859 = icmp ne i8 %851, 0
  %860 = xor i1 %859, %857
  %.v = select i1 %860, i64 12, i64 146
  %861 = add i64 %824, %.v
  store i64 %861, i64* %3, align 8
  br i1 %860, label %block_429dd4, label %block_.L_429e5a

block_429dd4:                                     ; preds = %block_.L_429dc8
  %862 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %862, i64* %RAX.i416, align 8
  %863 = add i64 %861, 11
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  store i64 %865, i64* %RAX.i416, align 8
  %866 = add i64 %825, -40
  %867 = add i64 %861, 14
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = add i32 %869, -1
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RCX.i367, align 8
  %872 = icmp eq i32 %869, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %81, align 1
  %874 = and i32 %870, 255
  %875 = tail call i32 @llvm.ctpop.i32(i32 %874)
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = xor i8 %877, 1
  store i8 %878, i8* %82, align 1
  %879 = xor i32 %870, %869
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %83, align 1
  %883 = icmp eq i32 %870, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %84, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %85, align 1
  %887 = lshr i32 %869, 31
  %888 = xor i32 %885, %887
  %889 = add nuw nsw i32 %888, %887
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %86, align 1
  %892 = sext i32 %870 to i64
  store i64 %892, i64* %RDX.i361, align 8
  %893 = shl nsw i64 %892, 3
  %894 = add i64 %865, %893
  %895 = add i64 %861, 24
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i416, align 8
  %898 = add i64 %861, 28
  store i64 %898, i64* %3, align 8
  %899 = load i32, i32* %828, align 4
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RDX.i361, align 8
  %901 = shl nsw i64 %900, 1
  %902 = add i64 %901, %897
  %903 = add i64 %861, 32
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i16*
  %905 = load i16, i16* %904, align 2
  store i16 %905, i16* %SI.i352, align 2
  store i64 %862, i64* %RAX.i416, align 8
  %906 = add i64 %861, 43
  store i64 %906, i64* %3, align 8
  %907 = load i64, i64* %864, align 8
  store i64 %907, i64* %RAX.i416, align 8
  %908 = add i64 %861, 47
  store i64 %908, i64* %3, align 8
  %909 = load i32, i32* %868, align 4
  %910 = sext i32 %909 to i64
  store i64 %910, i64* %RDX.i361, align 8
  %911 = shl nsw i64 %910, 3
  %912 = add i64 %911, %907
  %913 = add i64 %861, 51
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %RAX.i416, align 8
  %916 = add i64 %861, 55
  store i64 %916, i64* %3, align 8
  %917 = load i32, i32* %828, align 4
  %918 = sext i32 %917 to i64
  store i64 %918, i64* %RDX.i361, align 8
  %919 = shl nsw i64 %918, 1
  %920 = add i64 %919, %915
  %921 = add i64 %861, 59
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i16*
  store i16 %905, i16* %922, align 2
  %923 = load i64, i64* %3, align 8
  %924 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %924, i64* %RAX.i416, align 8
  %925 = add i64 %924, 8
  %926 = add i64 %923, 12
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i416, align 8
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -40
  %931 = add i64 %923, 15
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = add i32 %933, -1
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RCX.i367, align 8
  %936 = icmp eq i32 %933, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %81, align 1
  %938 = and i32 %934, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %82, align 1
  %943 = xor i32 %934, %933
  %944 = lshr i32 %943, 4
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %83, align 1
  %947 = icmp eq i32 %934, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %84, align 1
  %949 = lshr i32 %934, 31
  %950 = trunc i32 %949 to i8
  store i8 %950, i8* %85, align 1
  %951 = lshr i32 %933, 31
  %952 = xor i32 %949, %951
  %953 = add nuw nsw i32 %952, %951
  %954 = icmp eq i32 %953, 2
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %86, align 1
  %956 = sext i32 %934 to i64
  store i64 %956, i64* %RDX.i361, align 8
  %957 = shl nsw i64 %956, 3
  %958 = add i64 %928, %957
  %959 = add i64 %923, 25
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i416, align 8
  %962 = add i64 %929, -36
  %963 = add i64 %923, 29
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RDX.i361, align 8
  %967 = shl nsw i64 %966, 1
  %968 = add i64 %967, %961
  %969 = add i64 %923, 33
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i16*
  %971 = load i16, i16* %970, align 2
  store i16 %971, i16* %SI.i352, align 2
  store i64 %924, i64* %RAX.i416, align 8
  %972 = add i64 %923, 45
  store i64 %972, i64* %3, align 8
  %973 = load i64, i64* %927, align 8
  store i64 %973, i64* %RAX.i416, align 8
  %974 = add i64 %923, 49
  store i64 %974, i64* %3, align 8
  %975 = load i32, i32* %932, align 4
  %976 = sext i32 %975 to i64
  store i64 %976, i64* %RDX.i361, align 8
  %977 = shl nsw i64 %976, 3
  %978 = add i64 %977, %973
  %979 = add i64 %923, 53
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %RAX.i416, align 8
  %982 = add i64 %923, 57
  store i64 %982, i64* %3, align 8
  %983 = load i32, i32* %964, align 4
  %984 = sext i32 %983 to i64
  store i64 %984, i64* %RDX.i361, align 8
  %985 = shl nsw i64 %984, 1
  %986 = add i64 %985, %981
  %987 = add i64 %923, 61
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i16*
  store i16 %971, i16* %988, align 2
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -36
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 3
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = add i32 %994, 1
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i416, align 8
  %997 = icmp eq i32 %994, -1
  %998 = icmp eq i32 %995, 0
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %81, align 1
  %1001 = and i32 %995, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %82, align 1
  %1006 = xor i32 %995, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %83, align 1
  %1010 = zext i1 %998 to i8
  store i8 %1010, i8* %84, align 1
  %1011 = lshr i32 %995, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %85, align 1
  %1013 = lshr i32 %994, 31
  %1014 = xor i32 %1011, %1013
  %1015 = add nuw nsw i32 %1014, %1011
  %1016 = icmp eq i32 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %86, align 1
  %1018 = add i64 %991, 9
  store i64 %1018, i64* %3, align 8
  store i32 %995, i32* %993, align 4
  %1019 = load i64, i64* %3, align 8
  %1020 = add i64 %1019, -141
  store i64 %1020, i64* %3, align 8
  br label %block_.L_429dc8

block_.L_429e5a:                                  ; preds = %block_.L_429dc8
  %1021 = add i64 %825, -40
  %1022 = add i64 %861, 8
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, 1
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX.i416, align 8
  %1027 = icmp eq i32 %1024, -1
  %1028 = icmp eq i32 %1025, 0
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %81, align 1
  %1031 = and i32 %1025, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %82, align 1
  %1036 = xor i32 %1025, %1024
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %83, align 1
  %1040 = zext i1 %1028 to i8
  store i8 %1040, i8* %84, align 1
  %1041 = lshr i32 %1025, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %85, align 1
  %1043 = lshr i32 %1024, 31
  %1044 = xor i32 %1041, %1043
  %1045 = add nuw nsw i32 %1044, %1041
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %86, align 1
  %1048 = add i64 %861, 14
  store i64 %1048, i64* %3, align 8
  store i32 %1025, i32* %1023, align 4
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, -179
  store i64 %1050, i64* %3, align 8
  br label %block_.L_429db5

block_.L_429e6d:                                  ; preds = %block_.L_429db5
  %1051 = add i64 %820, 5
  store i64 %1051, i64* %3, align 8
  br label %block_.L_429e72

block_.L_429e72:                                  ; preds = %block_.L_429e6d, %block_.L_429cdc
  %1052 = phi i64 [ %1051, %block_.L_429e6d ], [ %504, %block_.L_429cdc ]
  %1053 = add i64 %1052, 1
  store i64 %1053, i64* %3, align 8
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RBP.i, align 8
  store i64 %1055, i64* %6, align 8
  %1058 = add i64 %1052, 2
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1055 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %3, align 8
  %1061 = add i64 %1054, 16
  store i64 %1061, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jge_.L_429c4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x710a40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710a40_type* @G_0x710a40 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
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
define %struct.Memory* @routine_jmpq_.L_429bff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_429bed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jge_.L_429cdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429cc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movw___rax__rdx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si____rax__rdx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429cce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429c67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_je_.L_429e72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jge_.L_429daf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429d9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6ccf80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ccf80_type* @G_0x6ccf80 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_429d0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429da1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429cf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429e6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_429e5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429dc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429e5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429db5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429e72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
