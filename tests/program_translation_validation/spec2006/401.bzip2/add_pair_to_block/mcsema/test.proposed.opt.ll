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
define %struct.Memory* @add_pair_to_block(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i449, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %3, align 8
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RDI.i449, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i444 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  %22 = add i64 %20, 92
  %23 = add i64 %17, 7
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %22 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX.i444, align 8
  %AL.i441 = bitcast %union.anon* %21 to i8*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i442 = bitcast %union.anon* %27 to i8*
  %28 = trunc i32 %25 to i8
  store i8 %28, i8* %CL.i442, align 1
  %29 = add i64 %15, -13
  %30 = add i64 %17, 12
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %29 to i8*
  store i8 %28, i8* %31, align 1
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -12
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 7
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %33 to i32*
  store i32 0, i32* %36, align 4
  %RCX.i431 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDX.i414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i408 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %ESI.i405 = bitcast %union.anon* %43 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_405deb

block_.L_405deb:                                  ; preds = %block_405dfb, %entry
  %44 = phi i64 [ %188, %block_405dfb ], [ %.pre, %entry ]
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = add i64 %44, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RAX.i444, align 8
  %51 = add i64 %45, -8
  %52 = add i64 %44, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RCX.i431, align 8
  %55 = add i64 %54, 96
  %56 = add i64 %44, 10
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %49, %58
  %60 = icmp ult i32 %49, %58
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %37, align 1
  %62 = and i32 %59, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %38, align 1
  %67 = xor i32 %58, %49
  %68 = xor i32 %67, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %39, align 1
  %72 = icmp eq i32 %59, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %40, align 1
  %74 = lshr i32 %59, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %41, align 1
  %76 = lshr i32 %49, 31
  %77 = lshr i32 %58, 31
  %78 = xor i32 %77, %76
  %79 = xor i32 %74, %76
  %80 = add nuw nsw i32 %79, %78
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %42, align 1
  %83 = icmp ne i8 %75, 0
  %84 = xor i1 %83, %81
  %.v = select i1 %84, i64 16, i64 83
  %85 = add i64 %44, %.v
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %53, align 8
  store i64 %87, i64* %RAX.i444, align 8
  br i1 %84, label %block_405dfb, label %block_.L_405e3e

block_405dfb:                                     ; preds = %block_.L_405deb
  %88 = add i64 %87, 648
  %89 = add i64 %85, 10
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %RCX.i431, align 8
  %94 = lshr i32 %91, 24
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %37, align 1
  store i8 1, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %97 = icmp eq i32 %92, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %40, align 1
  %99 = lshr i32 %91, 23
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %41, align 1
  store i8 0, i8* %42, align 1
  %102 = add i64 %85, 17
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %53, align 8
  store i64 %103, i64* %RAX.i444, align 8
  %104 = add i64 %103, 648
  %105 = add i64 %85, 23
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = lshr i32 %107, 23
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = lshr i32 %107, 24
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RDX.i414, align 8
  store i8 %110, i8* %37, align 1
  %113 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %117 = icmp eq i32 %111, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %40, align 1
  store i8 0, i8* %41, align 1
  store i8 0, i8* %42, align 1
  %119 = add i64 %45, -13
  %120 = add i64 %85, 30
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i8*
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i64
  store i64 %123, i64* %RSI.i408, align 8
  %124 = zext i8 %122 to i64
  %125 = xor i64 %124, %112
  %126 = trunc i64 %125 to i32
  store i8 0, i8* %37, align 1
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %38, align 1
  %131 = icmp eq i32 %126, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %40, align 1
  store i8 0, i8* %41, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %39, align 1
  store i64 %125, i64* %RDX.i414, align 8
  store i64 %125, i64* %RAX.i444, align 8
  %133 = shl nuw nsw i64 %125, 2
  %134 = add nuw nsw i64 %133, 6390128
  %135 = add i64 %85, 43
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, %92
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RCX.i431, align 8
  store i8 0, i8* %37, align 1
  %140 = and i32 %137, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %38, align 1
  %145 = icmp eq i32 %138, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %40, align 1
  %147 = lshr i32 %138, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %41, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %39, align 1
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -8
  %151 = add i64 %85, 47
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i444, align 8
  %154 = add i64 %153, 648
  %155 = add i64 %85, 53
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %138, i32* %156, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -12
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 3
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, 1
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX.i444, align 8
  %165 = icmp eq i32 %162, -1
  %166 = icmp eq i32 %163, 0
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %37, align 1
  %169 = and i32 %163, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %38, align 1
  %174 = xor i32 %163, %162
  %175 = lshr i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %39, align 1
  %178 = zext i1 %166 to i8
  store i8 %178, i8* %40, align 1
  %179 = lshr i32 %163, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %41, align 1
  %181 = lshr i32 %162, 31
  %182 = xor i32 %179, %181
  %183 = add nuw nsw i32 %182, %179
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %42, align 1
  %186 = add i64 %159, 9
  store i64 %186, i64* %3, align 8
  store i32 %163, i32* %161, align 4
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, -78
  store i64 %188, i64* %3, align 8
  br label %block_.L_405deb

block_.L_405e3e:                                  ; preds = %block_.L_405deb
  %189 = add i64 %87, 92
  %190 = add i64 %85, 7
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RCX.i431, align 8
  store i64 %193, i64* %RDX.i414, align 8
  %194 = add nuw nsw i64 %193, 128
  %195 = add i64 %194, %87
  %196 = add i64 %85, 17
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i8*
  store i8 1, i8* %197, align 1
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -8
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX.i444, align 8
  %204 = add i64 %203, 96
  %205 = add i64 %200, 7
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RCX.i431, align 8
  %209 = add i32 %207, -1
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RSI.i408, align 8
  %211 = icmp eq i32 %207, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %37, align 1
  %213 = and i32 %209, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %38, align 1
  %218 = xor i32 %209, %207
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %39, align 1
  %222 = icmp eq i32 %209, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %40, align 1
  %224 = lshr i32 %209, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %41, align 1
  %226 = lshr i32 %207, 31
  %227 = xor i32 %224, %226
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %42, align 1
  %231 = add i64 %198, -20
  %232 = add i64 %200, 15
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  store i32 %207, i32* %233, align 4
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -24
  %236 = load i32, i32* %ESI.i405, align 4
  %237 = load i64, i64* %3, align 8
  %238 = add i64 %237, 3
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %235 to i32*
  store i32 %236, i32* %239, align 4
  %240 = load i64, i64* %3, align 8
  %241 = load i8, i8* %40, align 1
  %242 = icmp ne i8 %241, 0
  %.v12 = select i1 %242, i64 51, i64 6
  %243 = add i64 %240, %.v12
  store i64 %243, i64* %3, align 8
  %cmpBr_405e61 = icmp eq i8 %241, 1
  %244 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_405e61, label %block_.L_405e94, label %block_405e67

block_405e67:                                     ; preds = %block_.L_405e3e
  %245 = add i64 %244, -20
  %246 = add i64 %243, 8
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, -2
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i444, align 8
  %251 = icmp ult i32 %248, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %37, align 1
  %253 = and i32 %249, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %38, align 1
  %258 = xor i32 %249, %248
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %39, align 1
  %262 = icmp eq i32 %249, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %40, align 1
  %264 = lshr i32 %249, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %41, align 1
  %266 = lshr i32 %248, 31
  %267 = xor i32 %264, %266
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %42, align 1
  %271 = add i64 %244, -28
  %272 = add i64 %243, 14
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  store i32 %249, i32* %273, align 4
  %274 = load i64, i64* %3, align 8
  %275 = load i8, i8* %40, align 1
  %276 = icmp ne i8 %275, 0
  %.v13 = select i1 %276, i64 71, i64 6
  %277 = add i64 %274, %.v13
  store i64 %277, i64* %3, align 8
  %cmpBr_405e75 = icmp eq i8 %275, 1
  %278 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_405e75, label %block_.L_405ebc, label %block_405e7b

block_405e7b:                                     ; preds = %block_405e67
  %279 = add i64 %278, -20
  %280 = add i64 %277, 8
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %282, -3
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i444, align 8
  %285 = icmp ult i32 %282, 3
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %37, align 1
  %287 = and i32 %283, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %38, align 1
  %292 = xor i32 %283, %282
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %39, align 1
  %296 = icmp eq i32 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %40, align 1
  %298 = lshr i32 %283, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %41, align 1
  %300 = lshr i32 %282, 31
  %301 = xor i32 %298, %300
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %42, align 1
  %305 = add i64 %278, -32
  %306 = add i64 %277, 14
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 %283, i32* %307, align 4
  %308 = load i64, i64* %3, align 8
  %309 = load i8, i8* %40, align 1
  %310 = icmp ne i8 %309, 0
  %.v14 = select i1 %310, i64 126, i64 6
  %311 = add i64 %308, %.v14
  store i64 %311, i64* %3, align 8
  %cmpBr_405e89 = icmp eq i8 %309, 1
  %312 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_405e89, label %block_.L_405f07, label %block_405e8f

block_405e8f:                                     ; preds = %block_405e7b
  %313 = add i64 %312, -8
  %314 = add i64 %311, 234
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RAX.i444, align 8
  %317 = add i64 %311, 238
  store i64 %317, i64* %3, align 8
  %318 = load i64, i64* %315, align 8
  store i64 %318, i64* %RCX.i431, align 8
  %319 = add i64 %318, 96
  %320 = add i64 %311, 241
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, -4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDX.i414, align 8
  %325 = icmp ult i32 %322, 4
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %37, align 1
  %327 = and i32 %323, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %38, align 1
  %332 = xor i32 %323, %322
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %39, align 1
  %336 = icmp eq i32 %323, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %40, align 1
  %338 = lshr i32 %323, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %41, align 1
  %340 = lshr i32 %322, 31
  %341 = xor i32 %338, %340
  %342 = add nuw nsw i32 %341, %340
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %42, align 1
  %345 = sext i32 %323 to i64
  store i64 %345, i64* %RCX.i431, align 8
  %346 = add nsw i64 %345, 128
  %347 = add i64 %346, %316
  %348 = add i64 %311, 255
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i8*
  store i8 1, i8* %349, align 1
  %SIL.i144 = bitcast %union.anon* %43 to i8*
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -13
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 4
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i8*
  %355 = load i8, i8* %354, align 1
  store i8 %355, i8* %SIL.i144, align 1
  %356 = add i64 %350, -8
  %357 = add i64 %352, 8
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX.i444, align 8
  %360 = add i64 %359, 64
  %361 = add i64 %352, 12
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RAX.i444, align 8
  %364 = add i64 %352, 16
  store i64 %364, i64* %3, align 8
  %365 = load i64, i64* %358, align 8
  store i64 %365, i64* %RCX.i431, align 8
  %366 = add i64 %365, 108
  %367 = add i64 %352, 20
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RCX.i431, align 8
  %371 = add i64 %363, %370
  %372 = add i64 %352, 24
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  store i8 %355, i8* %373, align 1
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -8
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i444, align 8
  %380 = add i64 %379, 108
  %381 = add i64 %376, 7
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = add i32 %383, 1
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RDX.i414, align 8
  %386 = icmp eq i32 %383, -1
  %387 = icmp eq i32 %384, 0
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %37, align 1
  %390 = and i32 %384, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %38, align 1
  %395 = xor i32 %384, %383
  %396 = lshr i32 %395, 4
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %39, align 1
  %399 = zext i1 %387 to i8
  store i8 %399, i8* %40, align 1
  %400 = lshr i32 %384, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %41, align 1
  %402 = lshr i32 %383, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %400
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %42, align 1
  %407 = add i64 %376, 13
  store i64 %407, i64* %3, align 8
  store i32 %384, i32* %382, align 4
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -13
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, 4
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %409 to i8*
  %413 = load i8, i8* %412, align 1
  store i8 %413, i8* %SIL.i144, align 1
  %414 = add i64 %408, -8
  %415 = add i64 %410, 8
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX.i444, align 8
  %418 = add i64 %417, 64
  %419 = add i64 %410, 12
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RAX.i444, align 8
  %422 = add i64 %410, 16
  store i64 %422, i64* %3, align 8
  %423 = load i64, i64* %416, align 8
  store i64 %423, i64* %RCX.i431, align 8
  %424 = add i64 %423, 108
  %425 = add i64 %410, 20
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  store i64 %428, i64* %RCX.i431, align 8
  %429 = add i64 %421, %428
  %430 = add i64 %410, 24
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i8*
  store i8 %413, i8* %431, align 1
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -8
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 4
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %433 to i64*
  %437 = load i64, i64* %436, align 8
  store i64 %437, i64* %RAX.i444, align 8
  %438 = add i64 %437, 108
  %439 = add i64 %434, 7
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, 1
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RDX.i414, align 8
  %444 = icmp eq i32 %441, -1
  %445 = icmp eq i32 %442, 0
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %37, align 1
  %448 = and i32 %442, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %38, align 1
  %453 = xor i32 %442, %441
  %454 = lshr i32 %453, 4
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  store i8 %456, i8* %39, align 1
  %457 = zext i1 %445 to i8
  store i8 %457, i8* %40, align 1
  %458 = lshr i32 %442, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %41, align 1
  %460 = lshr i32 %441, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %458
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %42, align 1
  %465 = add i64 %434, 13
  store i64 %465, i64* %3, align 8
  store i32 %442, i32* %440, align 4
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -13
  %468 = load i64, i64* %3, align 8
  %469 = add i64 %468, 4
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %467 to i8*
  %471 = load i8, i8* %470, align 1
  store i8 %471, i8* %SIL.i144, align 1
  %472 = add i64 %466, -8
  %473 = add i64 %468, 8
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX.i444, align 8
  %476 = add i64 %475, 64
  %477 = add i64 %468, 12
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RAX.i444, align 8
  %480 = add i64 %468, 16
  store i64 %480, i64* %3, align 8
  %481 = load i64, i64* %474, align 8
  store i64 %481, i64* %RCX.i431, align 8
  %482 = add i64 %481, 108
  %483 = add i64 %468, 20
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  store i64 %486, i64* %RCX.i431, align 8
  %487 = add i64 %479, %486
  %488 = add i64 %468, 24
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i8*
  store i8 %471, i8* %489, align 1
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -8
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 4
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RAX.i444, align 8
  %496 = add i64 %495, 108
  %497 = add i64 %492, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RDX.i414, align 8
  %502 = icmp eq i32 %499, -1
  %503 = icmp eq i32 %500, 0
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %37, align 1
  %506 = and i32 %500, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %38, align 1
  %511 = xor i32 %500, %499
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %39, align 1
  %515 = zext i1 %503 to i8
  store i8 %515, i8* %40, align 1
  %516 = lshr i32 %500, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %41, align 1
  %518 = lshr i32 %499, 31
  %519 = xor i32 %516, %518
  %520 = add nuw nsw i32 %519, %516
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %42, align 1
  %523 = add i64 %492, 13
  store i64 %523, i64* %3, align 8
  store i32 %500, i32* %498, align 4
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -13
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 4
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i8*
  %529 = load i8, i8* %528, align 1
  store i8 %529, i8* %SIL.i144, align 1
  %530 = add i64 %524, -8
  %531 = add i64 %526, 8
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RAX.i444, align 8
  %534 = add i64 %533, 64
  %535 = add i64 %526, 12
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RAX.i444, align 8
  %538 = add i64 %526, 16
  store i64 %538, i64* %3, align 8
  %539 = load i64, i64* %532, align 8
  store i64 %539, i64* %RCX.i431, align 8
  %540 = add i64 %539, 108
  %541 = add i64 %526, 20
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %RCX.i431, align 8
  %545 = add i64 %537, %544
  %546 = add i64 %526, 24
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i8*
  store i8 %529, i8* %547, align 1
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -8
  %550 = load i64, i64* %3, align 8
  %551 = add i64 %550, 4
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %549 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RAX.i444, align 8
  %554 = add i64 %553, 108
  %555 = add i64 %550, 7
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, 1
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RDX.i414, align 8
  %560 = icmp eq i32 %557, -1
  %561 = icmp eq i32 %558, 0
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %37, align 1
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %38, align 1
  %569 = xor i32 %558, %557
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %39, align 1
  %573 = zext i1 %561 to i8
  store i8 %573, i8* %40, align 1
  %574 = lshr i32 %558, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %41, align 1
  %576 = lshr i32 %557, 31
  %577 = xor i32 %574, %576
  %578 = add nuw nsw i32 %577, %574
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %42, align 1
  %581 = add i64 %550, 13
  store i64 %581, i64* %3, align 8
  store i32 %558, i32* %556, align 4
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -8
  %584 = load i64, i64* %3, align 8
  %585 = add i64 %584, 4
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RAX.i444, align 8
  %588 = add i64 %587, 96
  %589 = add i64 %584, 7
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = add i32 %591, -4
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RDX.i414, align 8
  %594 = icmp ult i32 %591, 4
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %37, align 1
  %596 = and i32 %592, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %38, align 1
  %601 = xor i32 %592, %591
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %39, align 1
  %605 = icmp eq i32 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %40, align 1
  %607 = lshr i32 %592, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %41, align 1
  %609 = lshr i32 %591, 31
  %610 = xor i32 %607, %609
  %611 = add nuw nsw i32 %610, %609
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %42, align 1
  %614 = trunc i32 %592 to i8
  store i8 %614, i8* %SIL.i144, align 1
  %615 = add i64 %584, 17
  store i64 %615, i64* %3, align 8
  %616 = load i64, i64* %586, align 8
  store i64 %616, i64* %RAX.i444, align 8
  %617 = add i64 %616, 64
  %618 = add i64 %584, 21
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RAX.i444, align 8
  %621 = add i64 %584, 25
  store i64 %621, i64* %3, align 8
  %622 = load i64, i64* %586, align 8
  store i64 %622, i64* %RCX.i431, align 8
  %623 = add i64 %622, 108
  %624 = add i64 %584, 29
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = sext i32 %626 to i64
  store i64 %627, i64* %RCX.i431, align 8
  %628 = add i64 %620, %627
  %629 = add i64 %584, 33
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i8*
  store i8 %614, i8* %630, align 1
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -8
  %633 = load i64, i64* %3, align 8
  %634 = add i64 %633, 4
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RAX.i444, align 8
  %637 = add i64 %636, 108
  %638 = add i64 %633, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = add i32 %640, 1
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RDX.i414, align 8
  %643 = icmp eq i32 %640, -1
  %644 = icmp eq i32 %641, 0
  %645 = or i1 %643, %644
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %37, align 1
  %647 = and i32 %641, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %38, align 1
  %652 = xor i32 %641, %640
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %39, align 1
  %656 = zext i1 %644 to i8
  store i8 %656, i8* %40, align 1
  %657 = lshr i32 %641, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %41, align 1
  %659 = lshr i32 %640, 31
  %660 = xor i32 %657, %659
  %661 = add nuw nsw i32 %660, %657
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %42, align 1
  %664 = add i64 %633, 13
  store i64 %664, i64* %3, align 8
  store i32 %641, i32* %639, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_406050

block_.L_405e94:                                  ; preds = %block_.L_405e3e
  %665 = add i64 %244, -13
  %666 = add i64 %243, 3
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i8*
  %668 = load i8, i8* %667, align 1
  store i8 %668, i8* %AL.i441, align 1
  %669 = add i64 %244, -8
  %670 = add i64 %243, 7
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RCX.i431, align 8
  %673 = add i64 %672, 64
  %674 = add i64 %243, 11
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %RCX.i431, align 8
  %677 = add i64 %243, 15
  store i64 %677, i64* %3, align 8
  %678 = load i64, i64* %671, align 8
  store i64 %678, i64* %RDX.i414, align 8
  %679 = add i64 %678, 108
  %680 = add i64 %243, 19
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RDX.i414, align 8
  %684 = add i64 %676, %683
  %685 = add i64 %243, 22
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i8*
  store i8 %668, i8* %686, align 1
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -8
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 4
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RCX.i431, align 8
  %693 = add i64 %692, 108
  %694 = add i64 %689, 7
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, 1
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RSI.i408, align 8
  %699 = icmp eq i32 %696, -1
  %700 = icmp eq i32 %697, 0
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %37, align 1
  %703 = and i32 %697, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %38, align 1
  %708 = xor i32 %697, %696
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %39, align 1
  %712 = zext i1 %700 to i8
  store i8 %712, i8* %40, align 1
  %713 = lshr i32 %697, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %41, align 1
  %715 = lshr i32 %696, 31
  %716 = xor i32 %713, %715
  %717 = add nuw nsw i32 %716, %713
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %42, align 1
  %720 = add i64 %689, 13
  store i64 %720, i64* %3, align 8
  store i32 %697, i32* %695, align 4
  %721 = load i64, i64* %3, align 8
  %722 = add i64 %721, 409
  store i64 %722, i64* %3, align 8
  br label %block_.L_406050

block_.L_405ebc:                                  ; preds = %block_405e67
  %723 = add i64 %278, -13
  %724 = add i64 %277, 3
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i8*
  %726 = load i8, i8* %725, align 1
  store i8 %726, i8* %AL.i441, align 1
  %727 = add i64 %278, -8
  %728 = add i64 %277, 7
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RCX.i431, align 8
  %731 = add i64 %730, 64
  %732 = add i64 %277, 11
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RCX.i431, align 8
  %735 = add i64 %277, 15
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %729, align 8
  store i64 %736, i64* %RDX.i414, align 8
  %737 = add i64 %736, 108
  %738 = add i64 %277, 19
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  %740 = load i32, i32* %739, align 4
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RDX.i414, align 8
  %742 = add i64 %734, %741
  %743 = add i64 %277, 22
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i8*
  store i8 %726, i8* %744, align 1
  %745 = load i64, i64* %RBP.i, align 8
  %746 = add i64 %745, -8
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, 4
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RCX.i431, align 8
  %751 = add i64 %750, 108
  %752 = add i64 %747, 7
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = add i32 %754, 1
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RSI.i408, align 8
  %757 = icmp eq i32 %754, -1
  %758 = icmp eq i32 %755, 0
  %759 = or i1 %757, %758
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %37, align 1
  %761 = and i32 %755, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %38, align 1
  %766 = xor i32 %755, %754
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %39, align 1
  %770 = zext i1 %758 to i8
  store i8 %770, i8* %40, align 1
  %771 = lshr i32 %755, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %41, align 1
  %773 = lshr i32 %754, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %771
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %42, align 1
  %778 = add i64 %747, 13
  store i64 %778, i64* %3, align 8
  store i32 %755, i32* %753, align 4
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -13
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, 3
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %780 to i8*
  %784 = load i8, i8* %783, align 1
  store i8 %784, i8* %AL.i441, align 1
  %785 = add i64 %779, -8
  %786 = add i64 %781, 7
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RCX.i431, align 8
  %789 = add i64 %788, 64
  %790 = add i64 %781, 11
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RCX.i431, align 8
  %793 = add i64 %781, 15
  store i64 %793, i64* %3, align 8
  %794 = load i64, i64* %787, align 8
  store i64 %794, i64* %RDX.i414, align 8
  %795 = add i64 %794, 108
  %796 = add i64 %781, 19
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  store i64 %799, i64* %RDX.i414, align 8
  %800 = add i64 %792, %799
  %801 = add i64 %781, 22
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i8*
  store i8 %784, i8* %802, align 1
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -8
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 4
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RCX.i431, align 8
  %809 = add i64 %808, 108
  %810 = add i64 %805, 7
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = add i32 %812, 1
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RSI.i408, align 8
  %815 = icmp eq i32 %812, -1
  %816 = icmp eq i32 %813, 0
  %817 = or i1 %815, %816
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %37, align 1
  %819 = and i32 %813, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %38, align 1
  %824 = xor i32 %813, %812
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %39, align 1
  %828 = zext i1 %816 to i8
  store i8 %828, i8* %40, align 1
  %829 = lshr i32 %813, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %41, align 1
  %831 = lshr i32 %812, 31
  %832 = xor i32 %829, %831
  %833 = add nuw nsw i32 %832, %829
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %42, align 1
  %836 = add i64 %805, 13
  store i64 %836, i64* %3, align 8
  store i32 %813, i32* %811, align 4
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 334
  store i64 %838, i64* %3, align 8
  br label %block_.L_406050

block_.L_405f07:                                  ; preds = %block_405e7b
  %839 = add i64 %312, -13
  %840 = add i64 %311, 3
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i8*
  %842 = load i8, i8* %841, align 1
  store i8 %842, i8* %AL.i441, align 1
  %843 = add i64 %312, -8
  %844 = add i64 %311, 7
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %RCX.i431, align 8
  %847 = add i64 %846, 64
  %848 = add i64 %311, 11
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %RCX.i431, align 8
  %851 = add i64 %311, 15
  store i64 %851, i64* %3, align 8
  %852 = load i64, i64* %845, align 8
  store i64 %852, i64* %RDX.i414, align 8
  %853 = add i64 %852, 108
  %854 = add i64 %311, 19
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RDX.i414, align 8
  %858 = add i64 %850, %857
  %859 = add i64 %311, 22
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i8*
  store i8 %842, i8* %860, align 1
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -8
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, 4
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RCX.i431, align 8
  %867 = add i64 %866, 108
  %868 = add i64 %863, 7
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i32 %870, 1
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RSI.i408, align 8
  %873 = icmp eq i32 %870, -1
  %874 = icmp eq i32 %871, 0
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %37, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %38, align 1
  %882 = xor i32 %871, %870
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %39, align 1
  %886 = zext i1 %874 to i8
  store i8 %886, i8* %40, align 1
  %887 = lshr i32 %871, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %41, align 1
  %889 = lshr i32 %870, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %887
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %42, align 1
  %894 = add i64 %863, 13
  store i64 %894, i64* %3, align 8
  store i32 %871, i32* %869, align 4
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -13
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 3
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to i8*
  %900 = load i8, i8* %899, align 1
  store i8 %900, i8* %AL.i441, align 1
  %901 = add i64 %895, -8
  %902 = add i64 %897, 7
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RCX.i431, align 8
  %905 = add i64 %904, 64
  %906 = add i64 %897, 11
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RCX.i431, align 8
  %909 = add i64 %897, 15
  store i64 %909, i64* %3, align 8
  %910 = load i64, i64* %903, align 8
  store i64 %910, i64* %RDX.i414, align 8
  %911 = add i64 %910, 108
  %912 = add i64 %897, 19
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = sext i32 %914 to i64
  store i64 %915, i64* %RDX.i414, align 8
  %916 = add i64 %908, %915
  %917 = add i64 %897, 22
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i8*
  store i8 %900, i8* %918, align 1
  %919 = load i64, i64* %RBP.i, align 8
  %920 = add i64 %919, -8
  %921 = load i64, i64* %3, align 8
  %922 = add i64 %921, 4
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %920 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %RCX.i431, align 8
  %925 = add i64 %924, 108
  %926 = add i64 %921, 7
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = add i32 %928, 1
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RSI.i408, align 8
  %931 = icmp eq i32 %928, -1
  %932 = icmp eq i32 %929, 0
  %933 = or i1 %931, %932
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %37, align 1
  %935 = and i32 %929, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %38, align 1
  %940 = xor i32 %929, %928
  %941 = lshr i32 %940, 4
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %39, align 1
  %944 = zext i1 %932 to i8
  store i8 %944, i8* %40, align 1
  %945 = lshr i32 %929, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %41, align 1
  %947 = lshr i32 %928, 31
  %948 = xor i32 %945, %947
  %949 = add nuw nsw i32 %948, %945
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %42, align 1
  %952 = add i64 %921, 13
  store i64 %952, i64* %3, align 8
  store i32 %929, i32* %927, align 4
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -13
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 3
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i8*
  %958 = load i8, i8* %957, align 1
  store i8 %958, i8* %AL.i441, align 1
  %959 = add i64 %953, -8
  %960 = add i64 %955, 7
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RCX.i431, align 8
  %963 = add i64 %962, 64
  %964 = add i64 %955, 11
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RCX.i431, align 8
  %967 = add i64 %955, 15
  store i64 %967, i64* %3, align 8
  %968 = load i64, i64* %961, align 8
  store i64 %968, i64* %RDX.i414, align 8
  %969 = add i64 %968, 108
  %970 = add i64 %955, 19
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RDX.i414, align 8
  %974 = add i64 %966, %973
  %975 = add i64 %955, 22
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i8*
  store i8 %958, i8* %976, align 1
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -8
  %979 = load i64, i64* %3, align 8
  %980 = add i64 %979, 4
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %978 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RCX.i431, align 8
  %983 = add i64 %982, 108
  %984 = add i64 %979, 7
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = add i32 %986, 1
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RSI.i408, align 8
  %989 = icmp eq i32 %986, -1
  %990 = icmp eq i32 %987, 0
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %37, align 1
  %993 = and i32 %987, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %38, align 1
  %998 = xor i32 %987, %986
  %999 = lshr i32 %998, 4
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %39, align 1
  %1002 = zext i1 %990 to i8
  store i8 %1002, i8* %40, align 1
  %1003 = lshr i32 %987, 31
  %1004 = trunc i32 %1003 to i8
  store i8 %1004, i8* %41, align 1
  %1005 = lshr i32 %986, 31
  %1006 = xor i32 %1003, %1005
  %1007 = add nuw nsw i32 %1006, %1003
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %42, align 1
  %1010 = add i64 %979, 13
  store i64 %1010, i64* %3, align 8
  store i32 %987, i32* %985, align 4
  %1011 = load i64, i64* %3, align 8
  %1012 = add i64 %1011, 224
  store i64 %1012, i64* %3, align 8
  br label %block_.L_406050

block_.L_406050:                                  ; preds = %block_405e8f, %block_.L_405f07, %block_.L_405ebc, %block_.L_405e94
  %1013 = phi i64 [ %.pre10, %block_405e8f ], [ %1012, %block_.L_405f07 ], [ %838, %block_.L_405ebc ], [ %722, %block_.L_405e94 ]
  %1014 = add i64 %1013, 1
  store i64 %1014, i64* %3, align 8
  %1015 = load i64, i64* %6, align 8
  %1016 = add i64 %1015, 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %RBP.i, align 8
  store i64 %1016, i64* %6, align 8
  %1019 = add i64 %1013, 2
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1016 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %3, align 8
  %1022 = add i64 %1015, 16
  store i64 %1022, i64* %6, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5c__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 92
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
define %struct.Memory* @routine_movb__cl__MINUS0xd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_cmpl_0x60__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 96
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
define %struct.Memory* @routine_jge_.L_405e3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x288__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 648
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
define %struct.Memory* @routine_shll__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 23
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x288__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 648
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
define %struct.Memory* @routine_shrl__0x18___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 23
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 255
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %11, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0xd__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -13
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
define %struct.Memory* @routine_xorl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = xor i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x618170___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6390128
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x288__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 648
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_405deb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 92
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
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1__0x80__rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %3, 128
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_405e94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_405e6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_je_.L_405ebc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_405e80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 3
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
define %struct.Memory* @routine_je_.L_405f07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_405f75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_0x6c__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 108
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
define %struct.Memory* @routine_movb__al____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %AL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 108
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
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x6c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 108
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_subl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_movb__0x1__0x80__rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, 128
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd__rbp____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x6c__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 108
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
define %struct.Memory* @routine_movb__sil____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %SIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 108
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
define %struct.Memory* @routine_movl__edx__0x6c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movb__dl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
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
