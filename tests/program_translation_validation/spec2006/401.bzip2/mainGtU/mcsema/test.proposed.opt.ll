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
define %struct.Memory* @mainGtU(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2218 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i2218, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2215 = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %ESI.i2215, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2212 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -24
  %26 = load i64, i64* %RDX.i2212, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RCX.i2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -32
  %32 = load i64, i64* %RCX.i2209, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %36 to i32*
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -36
  %39 = load i32, i32* %R8D.i, align 4
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -48
  %45 = load i64, i64* %R9.i, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RCX.i2209, align 8
  %RSI.i2199 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %55 = add i64 %49, -8
  %56 = add i64 %51, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RSI.i2199, align 8
  store i64 %59, i64* %RDX.i2212, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i2192 = bitcast %union.anon* %60 to i8*
  %61 = add i64 %54, %59
  %62 = add i64 %51, 12
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i8*
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %AL.i2192, align 1
  %65 = add i64 %49, -53
  %66 = add i64 %51, 15
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i8*
  store i8 %64, i8* %67, align 1
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -24
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RCX.i2209, align 8
  %74 = add i64 %68, -12
  %75 = add i64 %70, 7
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RSI.i2199, align 8
  store i64 %78, i64* %RDX.i2212, align 8
  %79 = add i64 %73, %78
  %80 = add i64 %70, 12
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i8*
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %AL.i2192, align 1
  %83 = add i64 %68, -54
  %84 = add i64 %70, 15
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i8*
  store i8 %82, i8* %85, align 1
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -53
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i8*
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  store i64 %92, i64* %RSI.i2199, align 8
  %RDI.i2168 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %93 = add i64 %86, -54
  %94 = add i64 %88, 8
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i8*
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  store i64 %97, i64* %RDI.i2168, align 8
  %98 = zext i8 %91 to i32
  %99 = zext i8 %96 to i32
  %100 = sub nsw i32 %98, %99
  %101 = icmp ult i8 %91, %96
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %102, i8* %103, align 1
  %104 = and i32 %100, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %108, i8* %109, align 1
  %110 = xor i8 %96, %91
  %111 = zext i8 %110 to i32
  %112 = xor i32 %111, %100
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %115, i8* %116, align 1
  %117 = icmp eq i32 %100, 0
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %118, i8* %119, align 1
  %120 = lshr i32 %100, 31
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %123, align 1
  %.v688 = select i1 %117, i64 45, i64 16
  %124 = add i64 %88, %.v688
  store i64 %124, i64* %3, align 8
  %RAX.i2139 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  br i1 %117, label %block_.L_402f85, label %block_402f68

block_402f68:                                     ; preds = %entry
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = load i8, i8* %90, align 1
  %127 = zext i8 %126 to i64
  store i64 %127, i64* %RAX.i2139, align 8
  %128 = add i64 %124, 8
  store i64 %128, i64* %3, align 8
  %129 = load i8, i8* %95, align 1
  %130 = zext i8 %129 to i64
  store i64 %130, i64* %RCX.i2209, align 8
  %131 = zext i8 %126 to i32
  %132 = zext i8 %129 to i32
  %133 = sub nsw i32 %131, %132
  %DL.i2154 = bitcast %union.anon* %23 to i8*
  %134 = icmp sgt i32 %133, 0
  %135 = zext i1 %134 to i8
  store i8 0, i8* %103, align 1
  %136 = zext i1 %134 to i32
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = xor i8 %138, 1
  store i8 %139, i8* %109, align 1
  %140 = icmp slt i32 %133, 1
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %142 = zext i1 %134 to i64
  store i64 %142, i64* %RAX.i2139, align 8
  store i8 %135, i8* %DL.i2154, align 1
  %143 = add i64 %86, -1
  %144 = add i64 %124, 24
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i8*
  store i8 %135, i8* %145, align 1
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 2587
  store i64 %147, i64* %3, align 8
  br label %block_.L_40399b

block_.L_402f85:                                  ; preds = %entry
  %148 = add i64 %86, -8
  %149 = add i64 %124, 3
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i2139, align 8
  %154 = icmp eq i32 %151, -1
  %155 = icmp eq i32 %152, 0
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %103, align 1
  %158 = and i32 %152, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %109, align 1
  %163 = xor i32 %152, %151
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %116, align 1
  %167 = zext i1 %155 to i8
  store i8 %167, i8* %119, align 1
  %168 = lshr i32 %152, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %122, align 1
  %170 = lshr i32 %151, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %123, align 1
  %175 = add i64 %124, 9
  store i64 %175, i64* %3, align 8
  store i32 %152, i32* %150, align 4
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -12
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %178, 3
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %177 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i2139, align 8
  %184 = icmp eq i32 %181, -1
  %185 = icmp eq i32 %182, 0
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %103, align 1
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %109, align 1
  %193 = xor i32 %182, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %116, align 1
  %197 = zext i1 %185 to i8
  store i8 %197, i8* %119, align 1
  %198 = lshr i32 %182, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %122, align 1
  %200 = lshr i32 %181, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %123, align 1
  %205 = add i64 %178, 9
  store i64 %205, i64* %3, align 8
  store i32 %182, i32* %180, align 4
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -24
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %RCX.i2209, align 8
  %212 = add i64 %206, -8
  %213 = add i64 %208, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i2139, align 8
  store i64 %216, i64* %RDX.i2212, align 8
  %SIL.i2113 = bitcast %union.anon* %16 to i8*
  %217 = add i64 %211, %216
  %218 = add i64 %208, 13
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i8*
  %220 = load i8, i8* %219, align 1
  store i8 %220, i8* %SIL.i2113, align 1
  %221 = add i64 %206, -53
  %222 = add i64 %208, 17
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i8*
  store i8 %220, i8* %223, align 1
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -24
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 4
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RCX.i2209, align 8
  %230 = add i64 %224, -12
  %231 = add i64 %226, 7
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX.i2139, align 8
  store i64 %234, i64* %RDX.i2212, align 8
  %235 = add i64 %229, %234
  %236 = add i64 %226, 13
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i8*
  %238 = load i8, i8* %237, align 1
  store i8 %238, i8* %SIL.i2113, align 1
  %239 = add i64 %224, -54
  %240 = add i64 %226, 17
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i8*
  store i8 %238, i8* %241, align 1
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -53
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 4
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i8*
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i64
  store i64 %248, i64* %RAX.i2139, align 8
  %249 = add i64 %242, -54
  %250 = add i64 %244, 8
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i8*
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i64
  store i64 %253, i64* %RDI.i2168, align 8
  %254 = zext i8 %247 to i32
  %255 = zext i8 %252 to i32
  %256 = sub nsw i32 %254, %255
  %257 = icmp ult i8 %247, %252
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %103, align 1
  %259 = and i32 %256, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %109, align 1
  %264 = xor i8 %252, %247
  %265 = zext i8 %264 to i32
  %266 = xor i32 %265, %256
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %116, align 1
  %270 = icmp eq i32 %256, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %119, align 1
  %272 = lshr i32 %256, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v689 = select i1 %270, i64 45, i64 16
  %274 = add i64 %244, %.v689
  store i64 %274, i64* %3, align 8
  br i1 %270, label %block_.L_402fe6, label %block_402fc9

block_402fc9:                                     ; preds = %block_.L_402f85
  %275 = add i64 %274, 4
  store i64 %275, i64* %3, align 8
  %276 = load i8, i8* %246, align 1
  %277 = zext i8 %276 to i64
  store i64 %277, i64* %RAX.i2139, align 8
  %278 = add i64 %274, 8
  store i64 %278, i64* %3, align 8
  %279 = load i8, i8* %251, align 1
  %280 = zext i8 %279 to i64
  store i64 %280, i64* %RCX.i2209, align 8
  %281 = zext i8 %276 to i32
  %282 = zext i8 %279 to i32
  %283 = sub nsw i32 %281, %282
  %DL.i2073 = bitcast %union.anon* %23 to i8*
  %284 = icmp sgt i32 %283, 0
  %285 = zext i1 %284 to i8
  store i8 0, i8* %103, align 1
  %286 = zext i1 %284 to i32
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = xor i8 %288, 1
  store i8 %289, i8* %109, align 1
  %290 = icmp slt i32 %283, 1
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %292 = zext i1 %284 to i64
  store i64 %292, i64* %RAX.i2139, align 8
  store i8 %285, i8* %DL.i2073, align 1
  %293 = add i64 %242, -1
  %294 = add i64 %274, 24
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i8*
  store i8 %285, i8* %295, align 1
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 2490
  store i64 %297, i64* %3, align 8
  br label %block_.L_40399b

block_.L_402fe6:                                  ; preds = %block_.L_402f85
  %298 = add i64 %242, -8
  %299 = add i64 %274, 3
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = add i32 %301, 1
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i2139, align 8
  %304 = icmp eq i32 %301, -1
  %305 = icmp eq i32 %302, 0
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %103, align 1
  %308 = and i32 %302, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %109, align 1
  %313 = xor i32 %302, %301
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %116, align 1
  %317 = zext i1 %305 to i8
  store i8 %317, i8* %119, align 1
  %318 = lshr i32 %302, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %122, align 1
  %320 = lshr i32 %301, 31
  %321 = xor i32 %318, %320
  %322 = add nuw nsw i32 %321, %318
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %123, align 1
  %325 = add i64 %274, 9
  store i64 %325, i64* %3, align 8
  store i32 %302, i32* %300, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -12
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 3
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i2139, align 8
  %334 = icmp eq i32 %331, -1
  %335 = icmp eq i32 %332, 0
  %336 = or i1 %334, %335
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %103, align 1
  %338 = and i32 %332, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %109, align 1
  %343 = xor i32 %332, %331
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %116, align 1
  %347 = zext i1 %335 to i8
  store i8 %347, i8* %119, align 1
  %348 = lshr i32 %332, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %122, align 1
  %350 = lshr i32 %331, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %123, align 1
  %355 = add i64 %328, 9
  store i64 %355, i64* %3, align 8
  store i32 %332, i32* %330, align 4
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -24
  %358 = load i64, i64* %3, align 8
  %359 = add i64 %358, 4
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %357 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RCX.i2209, align 8
  %362 = add i64 %356, -8
  %363 = add i64 %358, 7
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX.i2139, align 8
  store i64 %366, i64* %RDX.i2212, align 8
  %367 = add i64 %361, %366
  %368 = add i64 %358, 13
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i8*
  %370 = load i8, i8* %369, align 1
  store i8 %370, i8* %SIL.i2113, align 1
  %371 = add i64 %356, -53
  %372 = add i64 %358, 17
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  store i8 %370, i8* %373, align 1
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -24
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX.i2209, align 8
  %380 = add i64 %374, -12
  %381 = add i64 %376, 7
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RAX.i2139, align 8
  store i64 %384, i64* %RDX.i2212, align 8
  %385 = add i64 %379, %384
  %386 = add i64 %376, 13
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i8*
  %388 = load i8, i8* %387, align 1
  store i8 %388, i8* %SIL.i2113, align 1
  %389 = add i64 %374, -54
  %390 = add i64 %376, 17
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i8*
  store i8 %388, i8* %391, align 1
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -53
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i8*
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i64
  store i64 %398, i64* %RAX.i2139, align 8
  %399 = add i64 %392, -54
  %400 = add i64 %394, 8
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i8*
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i64
  store i64 %403, i64* %RDI.i2168, align 8
  %404 = zext i8 %397 to i32
  %405 = zext i8 %402 to i32
  %406 = sub nsw i32 %404, %405
  %407 = icmp ult i8 %397, %402
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %103, align 1
  %409 = and i32 %406, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %109, align 1
  %414 = xor i8 %402, %397
  %415 = zext i8 %414 to i32
  %416 = xor i32 %415, %406
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %116, align 1
  %420 = icmp eq i32 %406, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %119, align 1
  %422 = lshr i32 %406, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v691 = select i1 %420, i64 45, i64 16
  %424 = add i64 %394, %.v691
  store i64 %424, i64* %3, align 8
  br i1 %420, label %block_.L_403047, label %block_40302a

block_40302a:                                     ; preds = %block_.L_402fe6
  %425 = add i64 %424, 4
  store i64 %425, i64* %3, align 8
  %426 = load i8, i8* %396, align 1
  %427 = zext i8 %426 to i64
  store i64 %427, i64* %RAX.i2139, align 8
  %428 = add i64 %424, 8
  store i64 %428, i64* %3, align 8
  %429 = load i8, i8* %401, align 1
  %430 = zext i8 %429 to i64
  store i64 %430, i64* %RCX.i2209, align 8
  %431 = zext i8 %426 to i32
  %432 = zext i8 %429 to i32
  %433 = sub nsw i32 %431, %432
  %DL.i1992 = bitcast %union.anon* %23 to i8*
  %434 = icmp sgt i32 %433, 0
  %435 = zext i1 %434 to i8
  store i8 0, i8* %103, align 1
  %436 = zext i1 %434 to i32
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = xor i8 %438, 1
  store i8 %439, i8* %109, align 1
  %440 = icmp slt i32 %433, 1
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %442 = zext i1 %434 to i64
  store i64 %442, i64* %RAX.i2139, align 8
  store i8 %435, i8* %DL.i1992, align 1
  %443 = add i64 %392, -1
  %444 = add i64 %424, 24
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i8*
  store i8 %435, i8* %445, align 1
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 2393
  store i64 %447, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403047:                                  ; preds = %block_.L_402fe6
  %448 = add i64 %392, -8
  %449 = add i64 %424, 3
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = add i32 %451, 1
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i2139, align 8
  %454 = icmp eq i32 %451, -1
  %455 = icmp eq i32 %452, 0
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %103, align 1
  %458 = and i32 %452, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %109, align 1
  %463 = xor i32 %452, %451
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %116, align 1
  %467 = zext i1 %455 to i8
  store i8 %467, i8* %119, align 1
  %468 = lshr i32 %452, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %122, align 1
  %470 = lshr i32 %451, 31
  %471 = xor i32 %468, %470
  %472 = add nuw nsw i32 %471, %468
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %123, align 1
  %475 = add i64 %424, 9
  store i64 %475, i64* %3, align 8
  store i32 %452, i32* %450, align 4
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -12
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, 3
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX.i2139, align 8
  %484 = icmp eq i32 %481, -1
  %485 = icmp eq i32 %482, 0
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %103, align 1
  %488 = and i32 %482, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %109, align 1
  %493 = xor i32 %482, %481
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %116, align 1
  %497 = zext i1 %485 to i8
  store i8 %497, i8* %119, align 1
  %498 = lshr i32 %482, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %122, align 1
  %500 = lshr i32 %481, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %498
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %123, align 1
  %505 = add i64 %478, 9
  store i64 %505, i64* %3, align 8
  store i32 %482, i32* %480, align 4
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -24
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 4
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %507 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RCX.i2209, align 8
  %512 = add i64 %506, -8
  %513 = add i64 %508, 7
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i2139, align 8
  store i64 %516, i64* %RDX.i2212, align 8
  %517 = add i64 %511, %516
  %518 = add i64 %508, 13
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i8*
  %520 = load i8, i8* %519, align 1
  store i8 %520, i8* %SIL.i2113, align 1
  %521 = add i64 %506, -53
  %522 = add i64 %508, 17
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i8*
  store i8 %520, i8* %523, align 1
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -24
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 4
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RCX.i2209, align 8
  %530 = add i64 %524, -12
  %531 = add i64 %526, 7
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i2139, align 8
  store i64 %534, i64* %RDX.i2212, align 8
  %535 = add i64 %529, %534
  %536 = add i64 %526, 13
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i8*
  %538 = load i8, i8* %537, align 1
  store i8 %538, i8* %SIL.i2113, align 1
  %539 = add i64 %524, -54
  %540 = add i64 %526, 17
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i8*
  store i8 %538, i8* %541, align 1
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -53
  %544 = load i64, i64* %3, align 8
  %545 = add i64 %544, 4
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %543 to i8*
  %547 = load i8, i8* %546, align 1
  %548 = zext i8 %547 to i64
  store i64 %548, i64* %RAX.i2139, align 8
  %549 = add i64 %542, -54
  %550 = add i64 %544, 8
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i8*
  %552 = load i8, i8* %551, align 1
  %553 = zext i8 %552 to i64
  store i64 %553, i64* %RDI.i2168, align 8
  %554 = zext i8 %547 to i32
  %555 = zext i8 %552 to i32
  %556 = sub nsw i32 %554, %555
  %557 = icmp ult i8 %547, %552
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %103, align 1
  %559 = and i32 %556, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %109, align 1
  %564 = xor i8 %552, %547
  %565 = zext i8 %564 to i32
  %566 = xor i32 %565, %556
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %116, align 1
  %570 = icmp eq i32 %556, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %119, align 1
  %572 = lshr i32 %556, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v693 = select i1 %570, i64 45, i64 16
  %574 = add i64 %544, %.v693
  store i64 %574, i64* %3, align 8
  br i1 %570, label %block_.L_4030a8, label %block_40308b

block_40308b:                                     ; preds = %block_.L_403047
  %575 = add i64 %574, 4
  store i64 %575, i64* %3, align 8
  %576 = load i8, i8* %546, align 1
  %577 = zext i8 %576 to i64
  store i64 %577, i64* %RAX.i2139, align 8
  %578 = add i64 %574, 8
  store i64 %578, i64* %3, align 8
  %579 = load i8, i8* %551, align 1
  %580 = zext i8 %579 to i64
  store i64 %580, i64* %RCX.i2209, align 8
  %581 = zext i8 %576 to i32
  %582 = zext i8 %579 to i32
  %583 = sub nsw i32 %581, %582
  %DL.i1911 = bitcast %union.anon* %23 to i8*
  %584 = icmp sgt i32 %583, 0
  %585 = zext i1 %584 to i8
  store i8 0, i8* %103, align 1
  %586 = zext i1 %584 to i32
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = xor i8 %588, 1
  store i8 %589, i8* %109, align 1
  %590 = icmp slt i32 %583, 1
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %592 = zext i1 %584 to i64
  store i64 %592, i64* %RAX.i2139, align 8
  store i8 %585, i8* %DL.i1911, align 1
  %593 = add i64 %542, -1
  %594 = add i64 %574, 24
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i8*
  store i8 %585, i8* %595, align 1
  %596 = load i64, i64* %3, align 8
  %597 = add i64 %596, 2296
  store i64 %597, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4030a8:                                  ; preds = %block_.L_403047
  %598 = add i64 %542, -8
  %599 = add i64 %574, 3
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = add i32 %601, 1
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RAX.i2139, align 8
  %604 = icmp eq i32 %601, -1
  %605 = icmp eq i32 %602, 0
  %606 = or i1 %604, %605
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %103, align 1
  %608 = and i32 %602, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %109, align 1
  %613 = xor i32 %602, %601
  %614 = lshr i32 %613, 4
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %116, align 1
  %617 = zext i1 %605 to i8
  store i8 %617, i8* %119, align 1
  %618 = lshr i32 %602, 31
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %122, align 1
  %620 = lshr i32 %601, 31
  %621 = xor i32 %618, %620
  %622 = add nuw nsw i32 %621, %618
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %123, align 1
  %625 = add i64 %574, 9
  store i64 %625, i64* %3, align 8
  store i32 %602, i32* %600, align 4
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -12
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, 3
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = add i32 %631, 1
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RAX.i2139, align 8
  %634 = icmp eq i32 %631, -1
  %635 = icmp eq i32 %632, 0
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %103, align 1
  %638 = and i32 %632, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %109, align 1
  %643 = xor i32 %632, %631
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %116, align 1
  %647 = zext i1 %635 to i8
  store i8 %647, i8* %119, align 1
  %648 = lshr i32 %632, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %122, align 1
  %650 = lshr i32 %631, 31
  %651 = xor i32 %648, %650
  %652 = add nuw nsw i32 %651, %648
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %123, align 1
  %655 = add i64 %628, 9
  store i64 %655, i64* %3, align 8
  store i32 %632, i32* %630, align 4
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -24
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 4
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RCX.i2209, align 8
  %662 = add i64 %656, -8
  %663 = add i64 %658, 7
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX.i2139, align 8
  store i64 %666, i64* %RDX.i2212, align 8
  %667 = add i64 %661, %666
  %668 = add i64 %658, 13
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i8*
  %670 = load i8, i8* %669, align 1
  store i8 %670, i8* %SIL.i2113, align 1
  %671 = add i64 %656, -53
  %672 = add i64 %658, 17
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i8*
  store i8 %670, i8* %673, align 1
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -24
  %676 = load i64, i64* %3, align 8
  %677 = add i64 %676, 4
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %675 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RCX.i2209, align 8
  %680 = add i64 %674, -12
  %681 = add i64 %676, 7
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i2139, align 8
  store i64 %684, i64* %RDX.i2212, align 8
  %685 = add i64 %679, %684
  %686 = add i64 %676, 13
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i8*
  %688 = load i8, i8* %687, align 1
  store i8 %688, i8* %SIL.i2113, align 1
  %689 = add i64 %674, -54
  %690 = add i64 %676, 17
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i8*
  store i8 %688, i8* %691, align 1
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -53
  %694 = load i64, i64* %3, align 8
  %695 = add i64 %694, 4
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %693 to i8*
  %697 = load i8, i8* %696, align 1
  %698 = zext i8 %697 to i64
  store i64 %698, i64* %RAX.i2139, align 8
  %699 = add i64 %692, -54
  %700 = add i64 %694, 8
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i8*
  %702 = load i8, i8* %701, align 1
  %703 = zext i8 %702 to i64
  store i64 %703, i64* %RDI.i2168, align 8
  %704 = zext i8 %697 to i32
  %705 = zext i8 %702 to i32
  %706 = sub nsw i32 %704, %705
  %707 = icmp ult i8 %697, %702
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %103, align 1
  %709 = and i32 %706, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %109, align 1
  %714 = xor i8 %702, %697
  %715 = zext i8 %714 to i32
  %716 = xor i32 %715, %706
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %116, align 1
  %720 = icmp eq i32 %706, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %119, align 1
  %722 = lshr i32 %706, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v695 = select i1 %720, i64 45, i64 16
  %724 = add i64 %694, %.v695
  store i64 %724, i64* %3, align 8
  br i1 %720, label %block_.L_403109, label %block_4030ec

block_4030ec:                                     ; preds = %block_.L_4030a8
  %725 = add i64 %724, 4
  store i64 %725, i64* %3, align 8
  %726 = load i8, i8* %696, align 1
  %727 = zext i8 %726 to i64
  store i64 %727, i64* %RAX.i2139, align 8
  %728 = add i64 %724, 8
  store i64 %728, i64* %3, align 8
  %729 = load i8, i8* %701, align 1
  %730 = zext i8 %729 to i64
  store i64 %730, i64* %RCX.i2209, align 8
  %731 = zext i8 %726 to i32
  %732 = zext i8 %729 to i32
  %733 = sub nsw i32 %731, %732
  %DL.i1830 = bitcast %union.anon* %23 to i8*
  %734 = icmp sgt i32 %733, 0
  %735 = zext i1 %734 to i8
  store i8 0, i8* %103, align 1
  %736 = zext i1 %734 to i32
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = xor i8 %738, 1
  store i8 %739, i8* %109, align 1
  %740 = icmp slt i32 %733, 1
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %742 = zext i1 %734 to i64
  store i64 %742, i64* %RAX.i2139, align 8
  store i8 %735, i8* %DL.i1830, align 1
  %743 = add i64 %692, -1
  %744 = add i64 %724, 24
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i8*
  store i8 %735, i8* %745, align 1
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 2199
  store i64 %747, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403109:                                  ; preds = %block_.L_4030a8
  %748 = add i64 %692, -8
  %749 = add i64 %724, 3
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = add i32 %751, 1
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RAX.i2139, align 8
  %754 = icmp eq i32 %751, -1
  %755 = icmp eq i32 %752, 0
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %103, align 1
  %758 = and i32 %752, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %109, align 1
  %763 = xor i32 %752, %751
  %764 = lshr i32 %763, 4
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  store i8 %766, i8* %116, align 1
  %767 = zext i1 %755 to i8
  store i8 %767, i8* %119, align 1
  %768 = lshr i32 %752, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %122, align 1
  %770 = lshr i32 %751, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %768
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %123, align 1
  %775 = add i64 %724, 9
  store i64 %775, i64* %3, align 8
  store i32 %752, i32* %750, align 4
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -12
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, 3
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %777 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = add i32 %781, 1
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX.i2139, align 8
  %784 = icmp eq i32 %781, -1
  %785 = icmp eq i32 %782, 0
  %786 = or i1 %784, %785
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %103, align 1
  %788 = and i32 %782, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %109, align 1
  %793 = xor i32 %782, %781
  %794 = lshr i32 %793, 4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  store i8 %796, i8* %116, align 1
  %797 = zext i1 %785 to i8
  store i8 %797, i8* %119, align 1
  %798 = lshr i32 %782, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %122, align 1
  %800 = lshr i32 %781, 31
  %801 = xor i32 %798, %800
  %802 = add nuw nsw i32 %801, %798
  %803 = icmp eq i32 %802, 2
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %123, align 1
  %805 = add i64 %778, 9
  store i64 %805, i64* %3, align 8
  store i32 %782, i32* %780, align 4
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -24
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 4
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %807 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %RCX.i2209, align 8
  %812 = add i64 %806, -8
  %813 = add i64 %808, 7
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i2139, align 8
  store i64 %816, i64* %RDX.i2212, align 8
  %817 = add i64 %811, %816
  %818 = add i64 %808, 13
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i8*
  %820 = load i8, i8* %819, align 1
  store i8 %820, i8* %SIL.i2113, align 1
  %821 = add i64 %806, -53
  %822 = add i64 %808, 17
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i8*
  store i8 %820, i8* %823, align 1
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -24
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 4
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %825 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RCX.i2209, align 8
  %830 = add i64 %824, -12
  %831 = add i64 %826, 7
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RAX.i2139, align 8
  store i64 %834, i64* %RDX.i2212, align 8
  %835 = add i64 %829, %834
  %836 = add i64 %826, 13
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i8*
  %838 = load i8, i8* %837, align 1
  store i8 %838, i8* %SIL.i2113, align 1
  %839 = add i64 %824, -54
  %840 = add i64 %826, 17
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i8*
  store i8 %838, i8* %841, align 1
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -53
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 4
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i8*
  %847 = load i8, i8* %846, align 1
  %848 = zext i8 %847 to i64
  store i64 %848, i64* %RAX.i2139, align 8
  %849 = add i64 %842, -54
  %850 = add i64 %844, 8
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i8*
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i64
  store i64 %853, i64* %RDI.i2168, align 8
  %854 = zext i8 %847 to i32
  %855 = zext i8 %852 to i32
  %856 = sub nsw i32 %854, %855
  %857 = icmp ult i8 %847, %852
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %103, align 1
  %859 = and i32 %856, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %109, align 1
  %864 = xor i8 %852, %847
  %865 = zext i8 %864 to i32
  %866 = xor i32 %865, %856
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %116, align 1
  %870 = icmp eq i32 %856, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %119, align 1
  %872 = lshr i32 %856, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v697 = select i1 %870, i64 45, i64 16
  %874 = add i64 %844, %.v697
  store i64 %874, i64* %3, align 8
  br i1 %870, label %block_.L_40316a, label %block_40314d

block_40314d:                                     ; preds = %block_.L_403109
  %875 = add i64 %874, 4
  store i64 %875, i64* %3, align 8
  %876 = load i8, i8* %846, align 1
  %877 = zext i8 %876 to i64
  store i64 %877, i64* %RAX.i2139, align 8
  %878 = add i64 %874, 8
  store i64 %878, i64* %3, align 8
  %879 = load i8, i8* %851, align 1
  %880 = zext i8 %879 to i64
  store i64 %880, i64* %RCX.i2209, align 8
  %881 = zext i8 %876 to i32
  %882 = zext i8 %879 to i32
  %883 = sub nsw i32 %881, %882
  %DL.i1749 = bitcast %union.anon* %23 to i8*
  %884 = icmp sgt i32 %883, 0
  %885 = zext i1 %884 to i8
  store i8 0, i8* %103, align 1
  %886 = zext i1 %884 to i32
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = xor i8 %888, 1
  store i8 %889, i8* %109, align 1
  %890 = icmp slt i32 %883, 1
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %892 = zext i1 %884 to i64
  store i64 %892, i64* %RAX.i2139, align 8
  store i8 %885, i8* %DL.i1749, align 1
  %893 = add i64 %842, -1
  %894 = add i64 %874, 24
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i8*
  store i8 %885, i8* %895, align 1
  %896 = load i64, i64* %3, align 8
  %897 = add i64 %896, 2102
  store i64 %897, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40316a:                                  ; preds = %block_.L_403109
  %898 = add i64 %842, -8
  %899 = add i64 %874, 3
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = add i32 %901, 1
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i2139, align 8
  %904 = icmp eq i32 %901, -1
  %905 = icmp eq i32 %902, 0
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %103, align 1
  %908 = and i32 %902, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %109, align 1
  %913 = xor i32 %902, %901
  %914 = lshr i32 %913, 4
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  store i8 %916, i8* %116, align 1
  %917 = zext i1 %905 to i8
  store i8 %917, i8* %119, align 1
  %918 = lshr i32 %902, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %122, align 1
  %920 = lshr i32 %901, 31
  %921 = xor i32 %918, %920
  %922 = add nuw nsw i32 %921, %918
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %123, align 1
  %925 = add i64 %874, 9
  store i64 %925, i64* %3, align 8
  store i32 %902, i32* %900, align 4
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -12
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 3
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = add i32 %931, 1
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RAX.i2139, align 8
  %934 = icmp eq i32 %931, -1
  %935 = icmp eq i32 %932, 0
  %936 = or i1 %934, %935
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %103, align 1
  %938 = and i32 %932, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %109, align 1
  %943 = xor i32 %932, %931
  %944 = lshr i32 %943, 4
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %116, align 1
  %947 = zext i1 %935 to i8
  store i8 %947, i8* %119, align 1
  %948 = lshr i32 %932, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %122, align 1
  %950 = lshr i32 %931, 31
  %951 = xor i32 %948, %950
  %952 = add nuw nsw i32 %951, %948
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %123, align 1
  %955 = add i64 %928, 9
  store i64 %955, i64* %3, align 8
  store i32 %932, i32* %930, align 4
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -24
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RCX.i2209, align 8
  %962 = add i64 %956, -8
  %963 = add i64 %958, 7
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX.i2139, align 8
  store i64 %966, i64* %RDX.i2212, align 8
  %967 = add i64 %961, %966
  %968 = add i64 %958, 13
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i8*
  %970 = load i8, i8* %969, align 1
  store i8 %970, i8* %SIL.i2113, align 1
  %971 = add i64 %956, -53
  %972 = add i64 %958, 17
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i8*
  store i8 %970, i8* %973, align 1
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -24
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 4
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RCX.i2209, align 8
  %980 = add i64 %974, -12
  %981 = add i64 %976, 7
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX.i2139, align 8
  store i64 %984, i64* %RDX.i2212, align 8
  %985 = add i64 %979, %984
  %986 = add i64 %976, 13
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i8*
  %988 = load i8, i8* %987, align 1
  store i8 %988, i8* %SIL.i2113, align 1
  %989 = add i64 %974, -54
  %990 = add i64 %976, 17
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i8*
  store i8 %988, i8* %991, align 1
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -53
  %994 = load i64, i64* %3, align 8
  %995 = add i64 %994, 4
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %993 to i8*
  %997 = load i8, i8* %996, align 1
  %998 = zext i8 %997 to i64
  store i64 %998, i64* %RAX.i2139, align 8
  %999 = add i64 %992, -54
  %1000 = add i64 %994, 8
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i8*
  %1002 = load i8, i8* %1001, align 1
  %1003 = zext i8 %1002 to i64
  store i64 %1003, i64* %RDI.i2168, align 8
  %1004 = zext i8 %997 to i32
  %1005 = zext i8 %1002 to i32
  %1006 = sub nsw i32 %1004, %1005
  %1007 = icmp ult i8 %997, %1002
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %103, align 1
  %1009 = and i32 %1006, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %109, align 1
  %1014 = xor i8 %1002, %997
  %1015 = zext i8 %1014 to i32
  %1016 = xor i32 %1015, %1006
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %116, align 1
  %1020 = icmp eq i32 %1006, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %119, align 1
  %1022 = lshr i32 %1006, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v699 = select i1 %1020, i64 45, i64 16
  %1024 = add i64 %994, %.v699
  store i64 %1024, i64* %3, align 8
  br i1 %1020, label %block_.L_4031cb, label %block_4031ae

block_4031ae:                                     ; preds = %block_.L_40316a
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %3, align 8
  %1026 = load i8, i8* %996, align 1
  %1027 = zext i8 %1026 to i64
  store i64 %1027, i64* %RAX.i2139, align 8
  %1028 = add i64 %1024, 8
  store i64 %1028, i64* %3, align 8
  %1029 = load i8, i8* %1001, align 1
  %1030 = zext i8 %1029 to i64
  store i64 %1030, i64* %RCX.i2209, align 8
  %1031 = zext i8 %1026 to i32
  %1032 = zext i8 %1029 to i32
  %1033 = sub nsw i32 %1031, %1032
  %DL.i1668 = bitcast %union.anon* %23 to i8*
  %1034 = icmp sgt i32 %1033, 0
  %1035 = zext i1 %1034 to i8
  store i8 0, i8* %103, align 1
  %1036 = zext i1 %1034 to i32
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %109, align 1
  %1040 = icmp slt i32 %1033, 1
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1042 = zext i1 %1034 to i64
  store i64 %1042, i64* %RAX.i2139, align 8
  store i8 %1035, i8* %DL.i1668, align 1
  %1043 = add i64 %992, -1
  %1044 = add i64 %1024, 24
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i8*
  store i8 %1035, i8* %1045, align 1
  %1046 = load i64, i64* %3, align 8
  %1047 = add i64 %1046, 2005
  store i64 %1047, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4031cb:                                  ; preds = %block_.L_40316a
  %1048 = add i64 %992, -8
  %1049 = add i64 %1024, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = add i32 %1051, 1
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX.i2139, align 8
  %1054 = icmp eq i32 %1051, -1
  %1055 = icmp eq i32 %1052, 0
  %1056 = or i1 %1054, %1055
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %103, align 1
  %1058 = and i32 %1052, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058)
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %109, align 1
  %1063 = xor i32 %1052, %1051
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %116, align 1
  %1067 = zext i1 %1055 to i8
  store i8 %1067, i8* %119, align 1
  %1068 = lshr i32 %1052, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %122, align 1
  %1070 = lshr i32 %1051, 31
  %1071 = xor i32 %1068, %1070
  %1072 = add nuw nsw i32 %1071, %1068
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %123, align 1
  %1075 = add i64 %1024, 9
  store i64 %1075, i64* %3, align 8
  store i32 %1052, i32* %1050, align 4
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -12
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, 1
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i2139, align 8
  %1084 = icmp eq i32 %1081, -1
  %1085 = icmp eq i32 %1082, 0
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %103, align 1
  %1088 = and i32 %1082, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %109, align 1
  %1093 = xor i32 %1082, %1081
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %116, align 1
  %1097 = zext i1 %1085 to i8
  store i8 %1097, i8* %119, align 1
  %1098 = lshr i32 %1082, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %122, align 1
  %1100 = lshr i32 %1081, 31
  %1101 = xor i32 %1098, %1100
  %1102 = add nuw nsw i32 %1101, %1098
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %123, align 1
  %1105 = add i64 %1078, 9
  store i64 %1105, i64* %3, align 8
  store i32 %1082, i32* %1080, align 4
  %1106 = load i64, i64* %RBP.i, align 8
  %1107 = add i64 %1106, -24
  %1108 = load i64, i64* %3, align 8
  %1109 = add i64 %1108, 4
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1107 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RCX.i2209, align 8
  %1112 = add i64 %1106, -8
  %1113 = add i64 %1108, 7
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RAX.i2139, align 8
  store i64 %1116, i64* %RDX.i2212, align 8
  %1117 = add i64 %1111, %1116
  %1118 = add i64 %1108, 13
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i8*
  %1120 = load i8, i8* %1119, align 1
  store i8 %1120, i8* %SIL.i2113, align 1
  %1121 = add i64 %1106, -53
  %1122 = add i64 %1108, 17
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i8*
  store i8 %1120, i8* %1123, align 1
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -24
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RCX.i2209, align 8
  %1130 = add i64 %1124, -12
  %1131 = add i64 %1126, 7
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RAX.i2139, align 8
  store i64 %1134, i64* %RDX.i2212, align 8
  %1135 = add i64 %1129, %1134
  %1136 = add i64 %1126, 13
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i8*
  %1138 = load i8, i8* %1137, align 1
  store i8 %1138, i8* %SIL.i2113, align 1
  %1139 = add i64 %1124, -54
  %1140 = add i64 %1126, 17
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i8*
  store i8 %1138, i8* %1141, align 1
  %1142 = load i64, i64* %RBP.i, align 8
  %1143 = add i64 %1142, -53
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1143 to i8*
  %1147 = load i8, i8* %1146, align 1
  %1148 = zext i8 %1147 to i64
  store i64 %1148, i64* %RAX.i2139, align 8
  %1149 = add i64 %1142, -54
  %1150 = add i64 %1144, 8
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i8*
  %1152 = load i8, i8* %1151, align 1
  %1153 = zext i8 %1152 to i64
  store i64 %1153, i64* %RDI.i2168, align 8
  %1154 = zext i8 %1147 to i32
  %1155 = zext i8 %1152 to i32
  %1156 = sub nsw i32 %1154, %1155
  %1157 = icmp ult i8 %1147, %1152
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %103, align 1
  %1159 = and i32 %1156, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %109, align 1
  %1164 = xor i8 %1152, %1147
  %1165 = zext i8 %1164 to i32
  %1166 = xor i32 %1165, %1156
  %1167 = lshr i32 %1166, 4
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %116, align 1
  %1170 = icmp eq i32 %1156, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %119, align 1
  %1172 = lshr i32 %1156, 31
  %1173 = trunc i32 %1172 to i8
  store i8 %1173, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v701 = select i1 %1170, i64 45, i64 16
  %1174 = add i64 %1144, %.v701
  store i64 %1174, i64* %3, align 8
  br i1 %1170, label %block_.L_40322c, label %block_40320f

block_40320f:                                     ; preds = %block_.L_4031cb
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %3, align 8
  %1176 = load i8, i8* %1146, align 1
  %1177 = zext i8 %1176 to i64
  store i64 %1177, i64* %RAX.i2139, align 8
  %1178 = add i64 %1174, 8
  store i64 %1178, i64* %3, align 8
  %1179 = load i8, i8* %1151, align 1
  %1180 = zext i8 %1179 to i64
  store i64 %1180, i64* %RCX.i2209, align 8
  %1181 = zext i8 %1176 to i32
  %1182 = zext i8 %1179 to i32
  %1183 = sub nsw i32 %1181, %1182
  %DL.i1587 = bitcast %union.anon* %23 to i8*
  %1184 = icmp sgt i32 %1183, 0
  %1185 = zext i1 %1184 to i8
  store i8 0, i8* %103, align 1
  %1186 = zext i1 %1184 to i32
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %109, align 1
  %1190 = icmp slt i32 %1183, 1
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1192 = zext i1 %1184 to i64
  store i64 %1192, i64* %RAX.i2139, align 8
  store i8 %1185, i8* %DL.i1587, align 1
  %1193 = add i64 %1142, -1
  %1194 = add i64 %1174, 24
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i8*
  store i8 %1185, i8* %1195, align 1
  %1196 = load i64, i64* %3, align 8
  %1197 = add i64 %1196, 1908
  store i64 %1197, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40322c:                                  ; preds = %block_.L_4031cb
  %1198 = add i64 %1142, -8
  %1199 = add i64 %1174, 3
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1201, 1
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RAX.i2139, align 8
  %1204 = icmp eq i32 %1201, -1
  %1205 = icmp eq i32 %1202, 0
  %1206 = or i1 %1204, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %103, align 1
  %1208 = and i32 %1202, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %109, align 1
  %1213 = xor i32 %1202, %1201
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %116, align 1
  %1217 = zext i1 %1205 to i8
  store i8 %1217, i8* %119, align 1
  %1218 = lshr i32 %1202, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %122, align 1
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1218, %1220
  %1222 = add nuw nsw i32 %1221, %1218
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %123, align 1
  %1225 = add i64 %1174, 9
  store i64 %1225, i64* %3, align 8
  store i32 %1202, i32* %1200, align 4
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -12
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = add i32 %1231, 1
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX.i2139, align 8
  %1234 = icmp eq i32 %1231, -1
  %1235 = icmp eq i32 %1232, 0
  %1236 = or i1 %1234, %1235
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %103, align 1
  %1238 = and i32 %1232, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %109, align 1
  %1243 = xor i32 %1232, %1231
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %116, align 1
  %1247 = zext i1 %1235 to i8
  store i8 %1247, i8* %119, align 1
  %1248 = lshr i32 %1232, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %122, align 1
  %1250 = lshr i32 %1231, 31
  %1251 = xor i32 %1248, %1250
  %1252 = add nuw nsw i32 %1251, %1248
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %123, align 1
  %1255 = add i64 %1228, 9
  store i64 %1255, i64* %3, align 8
  store i32 %1232, i32* %1230, align 4
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -24
  %1258 = load i64, i64* %3, align 8
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RCX.i2209, align 8
  %1262 = add i64 %1256, -8
  %1263 = add i64 %1258, 7
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX.i2139, align 8
  store i64 %1266, i64* %RDX.i2212, align 8
  %1267 = add i64 %1261, %1266
  %1268 = add i64 %1258, 13
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i8*
  %1270 = load i8, i8* %1269, align 1
  store i8 %1270, i8* %SIL.i2113, align 1
  %1271 = add i64 %1256, -53
  %1272 = add i64 %1258, 17
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i8*
  store i8 %1270, i8* %1273, align 1
  %1274 = load i64, i64* %RBP.i, align 8
  %1275 = add i64 %1274, -24
  %1276 = load i64, i64* %3, align 8
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %RCX.i2209, align 8
  %1280 = add i64 %1274, -12
  %1281 = add i64 %1276, 7
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RAX.i2139, align 8
  store i64 %1284, i64* %RDX.i2212, align 8
  %1285 = add i64 %1279, %1284
  %1286 = add i64 %1276, 13
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i8*
  %1288 = load i8, i8* %1287, align 1
  store i8 %1288, i8* %SIL.i2113, align 1
  %1289 = add i64 %1274, -54
  %1290 = add i64 %1276, 17
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i8*
  store i8 %1288, i8* %1291, align 1
  %1292 = load i64, i64* %RBP.i, align 8
  %1293 = add i64 %1292, -53
  %1294 = load i64, i64* %3, align 8
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1293 to i8*
  %1297 = load i8, i8* %1296, align 1
  %1298 = zext i8 %1297 to i64
  store i64 %1298, i64* %RAX.i2139, align 8
  %1299 = add i64 %1292, -54
  %1300 = add i64 %1294, 8
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i8*
  %1302 = load i8, i8* %1301, align 1
  %1303 = zext i8 %1302 to i64
  store i64 %1303, i64* %RDI.i2168, align 8
  %1304 = zext i8 %1297 to i32
  %1305 = zext i8 %1302 to i32
  %1306 = sub nsw i32 %1304, %1305
  %1307 = icmp ult i8 %1297, %1302
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %103, align 1
  %1309 = and i32 %1306, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %109, align 1
  %1314 = xor i8 %1302, %1297
  %1315 = zext i8 %1314 to i32
  %1316 = xor i32 %1315, %1306
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %116, align 1
  %1320 = icmp eq i32 %1306, 0
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %119, align 1
  %1322 = lshr i32 %1306, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v703 = select i1 %1320, i64 45, i64 16
  %1324 = add i64 %1294, %.v703
  store i64 %1324, i64* %3, align 8
  br i1 %1320, label %block_.L_40328d, label %block_403270

block_403270:                                     ; preds = %block_.L_40322c
  %1325 = add i64 %1324, 4
  store i64 %1325, i64* %3, align 8
  %1326 = load i8, i8* %1296, align 1
  %1327 = zext i8 %1326 to i64
  store i64 %1327, i64* %RAX.i2139, align 8
  %1328 = add i64 %1324, 8
  store i64 %1328, i64* %3, align 8
  %1329 = load i8, i8* %1301, align 1
  %1330 = zext i8 %1329 to i64
  store i64 %1330, i64* %RCX.i2209, align 8
  %1331 = zext i8 %1326 to i32
  %1332 = zext i8 %1329 to i32
  %1333 = sub nsw i32 %1331, %1332
  %DL.i1506 = bitcast %union.anon* %23 to i8*
  %1334 = icmp sgt i32 %1333, 0
  %1335 = zext i1 %1334 to i8
  store i8 0, i8* %103, align 1
  %1336 = zext i1 %1334 to i32
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %109, align 1
  %1340 = icmp slt i32 %1333, 1
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1342 = zext i1 %1334 to i64
  store i64 %1342, i64* %RAX.i2139, align 8
  store i8 %1335, i8* %DL.i1506, align 1
  %1343 = add i64 %1292, -1
  %1344 = add i64 %1324, 24
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i8*
  store i8 %1335, i8* %1345, align 1
  %1346 = load i64, i64* %3, align 8
  %1347 = add i64 %1346, 1811
  store i64 %1347, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40328d:                                  ; preds = %block_.L_40322c
  %1348 = add i64 %1292, -8
  %1349 = add i64 %1324, 3
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX.i2139, align 8
  %1354 = icmp eq i32 %1351, -1
  %1355 = icmp eq i32 %1352, 0
  %1356 = or i1 %1354, %1355
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %103, align 1
  %1358 = and i32 %1352, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %109, align 1
  %1363 = xor i32 %1352, %1351
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %116, align 1
  %1367 = zext i1 %1355 to i8
  store i8 %1367, i8* %119, align 1
  %1368 = lshr i32 %1352, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %122, align 1
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %123, align 1
  %1375 = add i64 %1324, 9
  store i64 %1375, i64* %3, align 8
  store i32 %1352, i32* %1350, align 4
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -12
  %1378 = load i64, i64* %3, align 8
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1377 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = add i32 %1381, 1
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX.i2139, align 8
  %1384 = icmp eq i32 %1381, -1
  %1385 = icmp eq i32 %1382, 0
  %1386 = or i1 %1384, %1385
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %103, align 1
  %1388 = and i32 %1382, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388)
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %109, align 1
  %1393 = xor i32 %1382, %1381
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %116, align 1
  %1397 = zext i1 %1385 to i8
  store i8 %1397, i8* %119, align 1
  %1398 = lshr i32 %1382, 31
  %1399 = trunc i32 %1398 to i8
  store i8 %1399, i8* %122, align 1
  %1400 = lshr i32 %1381, 31
  %1401 = xor i32 %1398, %1400
  %1402 = add nuw nsw i32 %1401, %1398
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %123, align 1
  %1405 = add i64 %1378, 9
  store i64 %1405, i64* %3, align 8
  store i32 %1382, i32* %1380, align 4
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -24
  %1408 = load i64, i64* %3, align 8
  %1409 = add i64 %1408, 4
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1407 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RCX.i2209, align 8
  %1412 = add i64 %1406, -8
  %1413 = add i64 %1408, 7
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %RAX.i2139, align 8
  store i64 %1416, i64* %RDX.i2212, align 8
  %1417 = add i64 %1411, %1416
  %1418 = add i64 %1408, 13
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i8*
  %1420 = load i8, i8* %1419, align 1
  store i8 %1420, i8* %SIL.i2113, align 1
  %1421 = add i64 %1406, -53
  %1422 = add i64 %1408, 17
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i8*
  store i8 %1420, i8* %1423, align 1
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -24
  %1426 = load i64, i64* %3, align 8
  %1427 = add i64 %1426, 4
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RCX.i2209, align 8
  %1430 = add i64 %1424, -12
  %1431 = add i64 %1426, 7
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RAX.i2139, align 8
  store i64 %1434, i64* %RDX.i2212, align 8
  %1435 = add i64 %1429, %1434
  %1436 = add i64 %1426, 13
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i8*
  %1438 = load i8, i8* %1437, align 1
  store i8 %1438, i8* %SIL.i2113, align 1
  %1439 = add i64 %1424, -54
  %1440 = add i64 %1426, 17
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i8*
  store i8 %1438, i8* %1441, align 1
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -53
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i8*
  %1447 = load i8, i8* %1446, align 1
  %1448 = zext i8 %1447 to i64
  store i64 %1448, i64* %RAX.i2139, align 8
  %1449 = add i64 %1442, -54
  %1450 = add i64 %1444, 8
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i8*
  %1452 = load i8, i8* %1451, align 1
  %1453 = zext i8 %1452 to i64
  store i64 %1453, i64* %RDI.i2168, align 8
  %1454 = zext i8 %1447 to i32
  %1455 = zext i8 %1452 to i32
  %1456 = sub nsw i32 %1454, %1455
  %1457 = icmp ult i8 %1447, %1452
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %103, align 1
  %1459 = and i32 %1456, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %109, align 1
  %1464 = xor i8 %1452, %1447
  %1465 = zext i8 %1464 to i32
  %1466 = xor i32 %1465, %1456
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %116, align 1
  %1470 = icmp eq i32 %1456, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %119, align 1
  %1472 = lshr i32 %1456, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v705 = select i1 %1470, i64 45, i64 16
  %1474 = add i64 %1444, %.v705
  store i64 %1474, i64* %3, align 8
  br i1 %1470, label %block_.L_4032ee, label %block_4032d1

block_4032d1:                                     ; preds = %block_.L_40328d
  %1475 = add i64 %1474, 4
  store i64 %1475, i64* %3, align 8
  %1476 = load i8, i8* %1446, align 1
  %1477 = zext i8 %1476 to i64
  store i64 %1477, i64* %RAX.i2139, align 8
  %1478 = add i64 %1474, 8
  store i64 %1478, i64* %3, align 8
  %1479 = load i8, i8* %1451, align 1
  %1480 = zext i8 %1479 to i64
  store i64 %1480, i64* %RCX.i2209, align 8
  %1481 = zext i8 %1476 to i32
  %1482 = zext i8 %1479 to i32
  %1483 = sub nsw i32 %1481, %1482
  %DL.i1425 = bitcast %union.anon* %23 to i8*
  %1484 = icmp sgt i32 %1483, 0
  %1485 = zext i1 %1484 to i8
  store i8 0, i8* %103, align 1
  %1486 = zext i1 %1484 to i32
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %109, align 1
  %1490 = icmp slt i32 %1483, 1
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1492 = zext i1 %1484 to i64
  store i64 %1492, i64* %RAX.i2139, align 8
  store i8 %1485, i8* %DL.i1425, align 1
  %1493 = add i64 %1442, -1
  %1494 = add i64 %1474, 24
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i8*
  store i8 %1485, i8* %1495, align 1
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 1714
  store i64 %1497, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4032ee:                                  ; preds = %block_.L_40328d
  %1498 = add i64 %1442, -8
  %1499 = add i64 %1474, 3
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = add i32 %1501, 1
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i2139, align 8
  %1504 = icmp eq i32 %1501, -1
  %1505 = icmp eq i32 %1502, 0
  %1506 = or i1 %1504, %1505
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %103, align 1
  %1508 = and i32 %1502, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %109, align 1
  %1513 = xor i32 %1502, %1501
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %116, align 1
  %1517 = zext i1 %1505 to i8
  store i8 %1517, i8* %119, align 1
  %1518 = lshr i32 %1502, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %122, align 1
  %1520 = lshr i32 %1501, 31
  %1521 = xor i32 %1518, %1520
  %1522 = add nuw nsw i32 %1521, %1518
  %1523 = icmp eq i32 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %123, align 1
  %1525 = add i64 %1474, 9
  store i64 %1525, i64* %3, align 8
  store i32 %1502, i32* %1500, align 4
  %1526 = load i64, i64* %RBP.i, align 8
  %1527 = add i64 %1526, -12
  %1528 = load i64, i64* %3, align 8
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = add i32 %1531, 1
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX.i2139, align 8
  %1534 = icmp eq i32 %1531, -1
  %1535 = icmp eq i32 %1532, 0
  %1536 = or i1 %1534, %1535
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %103, align 1
  %1538 = and i32 %1532, 255
  %1539 = tail call i32 @llvm.ctpop.i32(i32 %1538)
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  store i8 %1542, i8* %109, align 1
  %1543 = xor i32 %1532, %1531
  %1544 = lshr i32 %1543, 4
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  store i8 %1546, i8* %116, align 1
  %1547 = zext i1 %1535 to i8
  store i8 %1547, i8* %119, align 1
  %1548 = lshr i32 %1532, 31
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %122, align 1
  %1550 = lshr i32 %1531, 31
  %1551 = xor i32 %1548, %1550
  %1552 = add nuw nsw i32 %1551, %1548
  %1553 = icmp eq i32 %1552, 2
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %123, align 1
  %1555 = add i64 %1528, 9
  store i64 %1555, i64* %3, align 8
  store i32 %1532, i32* %1530, align 4
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -24
  %1558 = load i64, i64* %3, align 8
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1557 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RCX.i2209, align 8
  %1562 = add i64 %1556, -8
  %1563 = add i64 %1558, 7
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RAX.i2139, align 8
  store i64 %1566, i64* %RDX.i2212, align 8
  %1567 = add i64 %1561, %1566
  %1568 = add i64 %1558, 13
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i8*
  %1570 = load i8, i8* %1569, align 1
  store i8 %1570, i8* %SIL.i2113, align 1
  %1571 = add i64 %1556, -53
  %1572 = add i64 %1558, 17
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i8*
  store i8 %1570, i8* %1573, align 1
  %1574 = load i64, i64* %RBP.i, align 8
  %1575 = add i64 %1574, -24
  %1576 = load i64, i64* %3, align 8
  %1577 = add i64 %1576, 4
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1575 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RCX.i2209, align 8
  %1580 = add i64 %1574, -12
  %1581 = add i64 %1576, 7
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i2139, align 8
  store i64 %1584, i64* %RDX.i2212, align 8
  %1585 = add i64 %1579, %1584
  %1586 = add i64 %1576, 13
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i8*
  %1588 = load i8, i8* %1587, align 1
  store i8 %1588, i8* %SIL.i2113, align 1
  %1589 = add i64 %1574, -54
  %1590 = add i64 %1576, 17
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i8*
  store i8 %1588, i8* %1591, align 1
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -53
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i8*
  %1597 = load i8, i8* %1596, align 1
  %1598 = zext i8 %1597 to i64
  store i64 %1598, i64* %RAX.i2139, align 8
  %1599 = add i64 %1592, -54
  %1600 = add i64 %1594, 8
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i8*
  %1602 = load i8, i8* %1601, align 1
  %1603 = zext i8 %1602 to i64
  store i64 %1603, i64* %RDI.i2168, align 8
  %1604 = zext i8 %1597 to i32
  %1605 = zext i8 %1602 to i32
  %1606 = sub nsw i32 %1604, %1605
  %1607 = icmp ult i8 %1597, %1602
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %103, align 1
  %1609 = and i32 %1606, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %109, align 1
  %1614 = xor i8 %1602, %1597
  %1615 = zext i8 %1614 to i32
  %1616 = xor i32 %1615, %1606
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %116, align 1
  %1620 = icmp eq i32 %1606, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %119, align 1
  %1622 = lshr i32 %1606, 31
  %1623 = trunc i32 %1622 to i8
  store i8 %1623, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v707 = select i1 %1620, i64 45, i64 16
  %1624 = add i64 %1594, %.v707
  store i64 %1624, i64* %3, align 8
  br i1 %1620, label %block_.L_40334f, label %block_403332

block_403332:                                     ; preds = %block_.L_4032ee
  %1625 = add i64 %1624, 4
  store i64 %1625, i64* %3, align 8
  %1626 = load i8, i8* %1596, align 1
  %1627 = zext i8 %1626 to i64
  store i64 %1627, i64* %RAX.i2139, align 8
  %1628 = add i64 %1624, 8
  store i64 %1628, i64* %3, align 8
  %1629 = load i8, i8* %1601, align 1
  %1630 = zext i8 %1629 to i64
  store i64 %1630, i64* %RCX.i2209, align 8
  %1631 = zext i8 %1626 to i32
  %1632 = zext i8 %1629 to i32
  %1633 = sub nsw i32 %1631, %1632
  %DL.i1344 = bitcast %union.anon* %23 to i8*
  %1634 = icmp sgt i32 %1633, 0
  %1635 = zext i1 %1634 to i8
  store i8 0, i8* %103, align 1
  %1636 = zext i1 %1634 to i32
  %1637 = tail call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %109, align 1
  %1640 = icmp slt i32 %1633, 1
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1642 = zext i1 %1634 to i64
  store i64 %1642, i64* %RAX.i2139, align 8
  store i8 %1635, i8* %DL.i1344, align 1
  %1643 = add i64 %1592, -1
  %1644 = add i64 %1624, 24
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i8*
  store i8 %1635, i8* %1645, align 1
  %1646 = load i64, i64* %3, align 8
  %1647 = add i64 %1646, 1617
  store i64 %1647, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40334f:                                  ; preds = %block_.L_4032ee
  %1648 = add i64 %1592, -8
  %1649 = add i64 %1624, 3
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = add i32 %1651, 1
  %1653 = zext i32 %1652 to i64
  store i64 %1653, i64* %RAX.i2139, align 8
  %1654 = icmp eq i32 %1651, -1
  %1655 = icmp eq i32 %1652, 0
  %1656 = or i1 %1654, %1655
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %103, align 1
  %1658 = and i32 %1652, 255
  %1659 = tail call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  store i8 %1662, i8* %109, align 1
  %1663 = xor i32 %1652, %1651
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  store i8 %1666, i8* %116, align 1
  %1667 = zext i1 %1655 to i8
  store i8 %1667, i8* %119, align 1
  %1668 = lshr i32 %1652, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %122, align 1
  %1670 = lshr i32 %1651, 31
  %1671 = xor i32 %1668, %1670
  %1672 = add nuw nsw i32 %1671, %1668
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %123, align 1
  %1675 = add i64 %1624, 9
  store i64 %1675, i64* %3, align 8
  store i32 %1652, i32* %1650, align 4
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -12
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1677 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = add i32 %1681, 1
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RAX.i2139, align 8
  %1684 = icmp eq i32 %1681, -1
  %1685 = icmp eq i32 %1682, 0
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %103, align 1
  %1688 = and i32 %1682, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %109, align 1
  %1693 = xor i32 %1682, %1681
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %116, align 1
  %1697 = zext i1 %1685 to i8
  store i8 %1697, i8* %119, align 1
  %1698 = lshr i32 %1682, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %122, align 1
  %1700 = lshr i32 %1681, 31
  %1701 = xor i32 %1698, %1700
  %1702 = add nuw nsw i32 %1701, %1698
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %123, align 1
  %1705 = add i64 %1678, 9
  store i64 %1705, i64* %3, align 8
  store i32 %1682, i32* %1680, align 4
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -24
  %1708 = load i64, i64* %3, align 8
  %1709 = add i64 %1708, 4
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1707 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RCX.i2209, align 8
  %1712 = add i64 %1706, -8
  %1713 = add i64 %1708, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RAX.i2139, align 8
  store i64 %1716, i64* %RDX.i2212, align 8
  %1717 = add i64 %1711, %1716
  %1718 = add i64 %1708, 13
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i8*
  %1720 = load i8, i8* %1719, align 1
  store i8 %1720, i8* %SIL.i2113, align 1
  %1721 = add i64 %1706, -53
  %1722 = add i64 %1708, 17
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i8*
  store i8 %1720, i8* %1723, align 1
  %1724 = load i64, i64* %RBP.i, align 8
  %1725 = add i64 %1724, -24
  %1726 = load i64, i64* %3, align 8
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1725 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RCX.i2209, align 8
  %1730 = add i64 %1724, -12
  %1731 = add i64 %1726, 7
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RAX.i2139, align 8
  store i64 %1734, i64* %RDX.i2212, align 8
  %1735 = add i64 %1729, %1734
  %1736 = add i64 %1726, 13
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i8*
  %1738 = load i8, i8* %1737, align 1
  store i8 %1738, i8* %SIL.i2113, align 1
  %1739 = add i64 %1724, -54
  %1740 = add i64 %1726, 17
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i8*
  store i8 %1738, i8* %1741, align 1
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -53
  %1744 = load i64, i64* %3, align 8
  %1745 = add i64 %1744, 4
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1743 to i8*
  %1747 = load i8, i8* %1746, align 1
  %1748 = zext i8 %1747 to i64
  store i64 %1748, i64* %RAX.i2139, align 8
  %1749 = add i64 %1742, -54
  %1750 = add i64 %1744, 8
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i8*
  %1752 = load i8, i8* %1751, align 1
  %1753 = zext i8 %1752 to i64
  store i64 %1753, i64* %RDI.i2168, align 8
  %1754 = zext i8 %1747 to i32
  %1755 = zext i8 %1752 to i32
  %1756 = sub nsw i32 %1754, %1755
  %1757 = icmp ult i8 %1747, %1752
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %103, align 1
  %1759 = and i32 %1756, 255
  %1760 = tail call i32 @llvm.ctpop.i32(i32 %1759)
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = xor i8 %1762, 1
  store i8 %1763, i8* %109, align 1
  %1764 = xor i8 %1752, %1747
  %1765 = zext i8 %1764 to i32
  %1766 = xor i32 %1765, %1756
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %116, align 1
  %1770 = icmp eq i32 %1756, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %119, align 1
  %1772 = lshr i32 %1756, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v709 = select i1 %1770, i64 45, i64 16
  %1774 = add i64 %1744, %.v709
  store i64 %1774, i64* %3, align 8
  br i1 %1770, label %block_.L_4033b0, label %block_403393

block_403393:                                     ; preds = %block_.L_40334f
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %3, align 8
  %1776 = load i8, i8* %1746, align 1
  %1777 = zext i8 %1776 to i64
  store i64 %1777, i64* %RAX.i2139, align 8
  %1778 = add i64 %1774, 8
  store i64 %1778, i64* %3, align 8
  %1779 = load i8, i8* %1751, align 1
  %1780 = zext i8 %1779 to i64
  store i64 %1780, i64* %RCX.i2209, align 8
  %1781 = zext i8 %1776 to i32
  %1782 = zext i8 %1779 to i32
  %1783 = sub nsw i32 %1781, %1782
  %DL.i1263 = bitcast %union.anon* %23 to i8*
  %1784 = icmp sgt i32 %1783, 0
  %1785 = zext i1 %1784 to i8
  store i8 0, i8* %103, align 1
  %1786 = zext i1 %1784 to i32
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %109, align 1
  %1790 = icmp slt i32 %1783, 1
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1792 = zext i1 %1784 to i64
  store i64 %1792, i64* %RAX.i2139, align 8
  store i8 %1785, i8* %DL.i1263, align 1
  %1793 = add i64 %1742, -1
  %1794 = add i64 %1774, 24
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i8*
  store i8 %1785, i8* %1795, align 1
  %1796 = load i64, i64* %3, align 8
  %1797 = add i64 %1796, 1520
  store i64 %1797, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4033b0:                                  ; preds = %block_.L_40334f
  %1798 = add i64 %1742, -8
  %1799 = add i64 %1774, 3
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = add i32 %1801, 1
  %1803 = zext i32 %1802 to i64
  store i64 %1803, i64* %RAX.i2139, align 8
  %1804 = icmp eq i32 %1801, -1
  %1805 = icmp eq i32 %1802, 0
  %1806 = or i1 %1804, %1805
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %103, align 1
  %1808 = and i32 %1802, 255
  %1809 = tail call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %109, align 1
  %1813 = xor i32 %1802, %1801
  %1814 = lshr i32 %1813, 4
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  store i8 %1816, i8* %116, align 1
  %1817 = zext i1 %1805 to i8
  store i8 %1817, i8* %119, align 1
  %1818 = lshr i32 %1802, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %122, align 1
  %1820 = lshr i32 %1801, 31
  %1821 = xor i32 %1818, %1820
  %1822 = add nuw nsw i32 %1821, %1818
  %1823 = icmp eq i32 %1822, 2
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %123, align 1
  %1825 = add i64 %1774, 9
  store i64 %1825, i64* %3, align 8
  store i32 %1802, i32* %1800, align 4
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -12
  %1828 = load i64, i64* %3, align 8
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1827 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = add i32 %1831, 1
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RAX.i2139, align 8
  %1834 = icmp eq i32 %1831, -1
  %1835 = icmp eq i32 %1832, 0
  %1836 = or i1 %1834, %1835
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %103, align 1
  %1838 = and i32 %1832, 255
  %1839 = tail call i32 @llvm.ctpop.i32(i32 %1838)
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  store i8 %1842, i8* %109, align 1
  %1843 = xor i32 %1832, %1831
  %1844 = lshr i32 %1843, 4
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  store i8 %1846, i8* %116, align 1
  %1847 = zext i1 %1835 to i8
  store i8 %1847, i8* %119, align 1
  %1848 = lshr i32 %1832, 31
  %1849 = trunc i32 %1848 to i8
  store i8 %1849, i8* %122, align 1
  %1850 = lshr i32 %1831, 31
  %1851 = xor i32 %1848, %1850
  %1852 = add nuw nsw i32 %1851, %1848
  %1853 = icmp eq i32 %1852, 2
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %123, align 1
  %1855 = add i64 %1828, 9
  store i64 %1855, i64* %3, align 8
  store i32 %1832, i32* %1830, align 4
  %1856 = load i64, i64* %RBP.i, align 8
  %1857 = add i64 %1856, -36
  %1858 = load i64, i64* %3, align 8
  %1859 = add i64 %1858, 3
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1857 to i32*
  %1861 = load i32, i32* %1860, align 4
  %1862 = add i32 %1861, 8
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RAX.i2139, align 8
  %1864 = icmp ugt i32 %1861, -9
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %103, align 1
  %1866 = and i32 %1862, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %109, align 1
  %1871 = xor i32 %1862, %1861
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  store i8 %1874, i8* %116, align 1
  %1875 = icmp eq i32 %1862, 0
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %119, align 1
  %1877 = lshr i32 %1862, 31
  %1878 = trunc i32 %1877 to i8
  store i8 %1878, i8* %122, align 1
  %1879 = lshr i32 %1861, 31
  %1880 = xor i32 %1877, %1879
  %1881 = add nuw nsw i32 %1880, %1877
  %1882 = icmp eq i32 %1881, 2
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %123, align 1
  %1884 = add i64 %1856, -52
  %1885 = add i64 %1858, 9
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  store i32 %1862, i32* %1886, align 4
  %SI.i1149 = bitcast %union.anon* %16 to i16*
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre682 = load i64, i64* %3, align 8
  br label %block_.L_4033cb

block_.L_4033cb:                                  ; preds = %block_.L_403979, %block_.L_4033b0
  %1887 = phi i64 [ %4036, %block_.L_403979 ], [ %.pre682, %block_.L_4033b0 ]
  %1888 = phi i64 [ %4020, %block_.L_403979 ], [ %.pre, %block_.L_4033b0 ]
  %1889 = add i64 %1888, -24
  %1890 = add i64 %1887, 4
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i64*
  %1892 = load i64, i64* %1891, align 8
  store i64 %1892, i64* %RAX.i2139, align 8
  %1893 = add i64 %1888, -8
  %1894 = add i64 %1887, 7
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i2209, align 8
  store i64 %1897, i64* %RDX.i2212, align 8
  %1898 = add i64 %1892, %1897
  %1899 = add i64 %1887, 13
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i8*
  %1901 = load i8, i8* %1900, align 1
  store i8 %1901, i8* %SIL.i2113, align 1
  %1902 = add i64 %1888, -53
  %1903 = add i64 %1887, 17
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i8*
  store i8 %1901, i8* %1904, align 1
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -24
  %1907 = load i64, i64* %3, align 8
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1906 to i64*
  %1910 = load i64, i64* %1909, align 8
  store i64 %1910, i64* %RAX.i2139, align 8
  %1911 = add i64 %1905, -12
  %1912 = add i64 %1907, 7
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = zext i32 %1914 to i64
  store i64 %1915, i64* %RCX.i2209, align 8
  store i64 %1915, i64* %RDX.i2212, align 8
  %1916 = add i64 %1910, %1915
  %1917 = add i64 %1907, 13
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i8*
  %1919 = load i8, i8* %1918, align 1
  store i8 %1919, i8* %SIL.i2113, align 1
  %1920 = add i64 %1905, -54
  %1921 = add i64 %1907, 17
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i8*
  store i8 %1919, i8* %1922, align 1
  %1923 = load i64, i64* %RBP.i, align 8
  %1924 = add i64 %1923, -53
  %1925 = load i64, i64* %3, align 8
  %1926 = add i64 %1925, 4
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1924 to i8*
  %1928 = load i8, i8* %1927, align 1
  %1929 = zext i8 %1928 to i64
  store i64 %1929, i64* %RCX.i2209, align 8
  %1930 = add i64 %1923, -54
  %1931 = add i64 %1925, 8
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i8*
  %1933 = load i8, i8* %1932, align 1
  %1934 = zext i8 %1933 to i64
  store i64 %1934, i64* %RDI.i2168, align 8
  %1935 = zext i8 %1928 to i32
  %1936 = zext i8 %1933 to i32
  %1937 = sub nsw i32 %1935, %1936
  %1938 = icmp ult i8 %1928, %1933
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %103, align 1
  %1940 = and i32 %1937, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940)
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %109, align 1
  %1945 = xor i8 %1933, %1928
  %1946 = zext i8 %1945 to i32
  %1947 = xor i32 %1946, %1937
  %1948 = lshr i32 %1947, 4
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %116, align 1
  %1951 = icmp eq i32 %1937, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %119, align 1
  %1953 = lshr i32 %1937, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v711 = select i1 %1951, i64 45, i64 16
  %1955 = add i64 %1925, %.v711
  store i64 %1955, i64* %3, align 8
  br i1 %1951, label %block_.L_40341a, label %block_4033fd

block_4033fd:                                     ; preds = %block_.L_4033cb
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %3, align 8
  %1957 = load i8, i8* %1927, align 1
  %1958 = zext i8 %1957 to i64
  store i64 %1958, i64* %RAX.i2139, align 8
  %1959 = add i64 %1955, 8
  store i64 %1959, i64* %3, align 8
  %1960 = load i8, i8* %1932, align 1
  %1961 = zext i8 %1960 to i64
  store i64 %1961, i64* %RCX.i2209, align 8
  %1962 = zext i8 %1957 to i32
  %1963 = zext i8 %1960 to i32
  %1964 = sub nsw i32 %1962, %1963
  %DL.i1174 = bitcast %union.anon* %23 to i8*
  %1965 = icmp sgt i32 %1964, 0
  %1966 = zext i1 %1965 to i8
  store i8 0, i8* %103, align 1
  %1967 = zext i1 %1965 to i32
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %109, align 1
  %1971 = icmp slt i32 %1964, 1
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %1973 = zext i1 %1965 to i64
  store i64 %1973, i64* %RAX.i2139, align 8
  store i8 %1966, i8* %DL.i1174, align 1
  %1974 = add i64 %1923, -1
  %1975 = add i64 %1955, 24
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i8*
  store i8 %1966, i8* %1976, align 1
  %1977 = load i64, i64* %3, align 8
  %1978 = add i64 %1977, 1414
  store i64 %1978, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40341a:                                  ; preds = %block_.L_4033cb
  %1979 = add i64 %1923, -32
  %1980 = add i64 %1955, 4
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i64*
  %1982 = load i64, i64* %1981, align 8
  store i64 %1982, i64* %RAX.i2139, align 8
  %1983 = add i64 %1923, -8
  %1984 = add i64 %1955, 7
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i2209, align 8
  store i64 %1987, i64* %RDX.i2212, align 8
  %1988 = shl nuw nsw i64 %1987, 1
  %1989 = add i64 %1982, %1988
  %1990 = add i64 %1955, 13
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i16*
  %1992 = load i16, i16* %1991, align 2
  store i16 %1992, i16* %SI.i1149, align 2
  %1993 = add i64 %1923, -56
  %1994 = add i64 %1955, 17
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i16*
  store i16 %1992, i16* %1995, align 2
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -32
  %1998 = load i64, i64* %3, align 8
  %1999 = add i64 %1998, 4
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1997 to i64*
  %2001 = load i64, i64* %2000, align 8
  store i64 %2001, i64* %RAX.i2139, align 8
  %2002 = add i64 %1996, -12
  %2003 = add i64 %1998, 7
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  %2005 = load i32, i32* %2004, align 4
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RCX.i2209, align 8
  store i64 %2006, i64* %RDX.i2212, align 8
  %2007 = shl nuw nsw i64 %2006, 1
  %2008 = add i64 %2001, %2007
  %2009 = add i64 %1998, 13
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i16*
  %2011 = load i16, i16* %2010, align 2
  store i16 %2011, i16* %SI.i1149, align 2
  %2012 = add i64 %1996, -58
  %2013 = add i64 %1998, 17
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i16*
  store i16 %2011, i16* %2014, align 2
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -56
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2016 to i16*
  %2020 = load i16, i16* %2019, align 2
  %2021 = zext i16 %2020 to i64
  store i64 %2021, i64* %RCX.i2209, align 8
  %2022 = add i64 %2015, -58
  %2023 = add i64 %2017, 8
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i16*
  %2025 = load i16, i16* %2024, align 2
  %2026 = zext i16 %2025 to i64
  store i64 %2026, i64* %RDI.i2168, align 8
  %2027 = zext i16 %2020 to i32
  %2028 = zext i16 %2025 to i32
  %2029 = sub nsw i32 %2027, %2028
  %2030 = icmp ult i16 %2020, %2025
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %103, align 1
  %2032 = and i32 %2029, 255
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %109, align 1
  %2037 = xor i16 %2025, %2020
  %2038 = zext i16 %2037 to i32
  %2039 = xor i32 %2038, %2029
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %116, align 1
  %2043 = icmp eq i32 %2029, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %119, align 1
  %2045 = lshr i32 %2029, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v713 = select i1 %2043, i64 45, i64 16
  %2047 = add i64 %2017, %.v713
  store i64 %2047, i64* %3, align 8
  br i1 %2043, label %block_.L_403469, label %block_40344c

block_40344c:                                     ; preds = %block_.L_40341a
  %2048 = add i64 %2047, 4
  store i64 %2048, i64* %3, align 8
  %2049 = load i16, i16* %2019, align 2
  %2050 = zext i16 %2049 to i64
  store i64 %2050, i64* %RAX.i2139, align 8
  %2051 = add i64 %2047, 8
  store i64 %2051, i64* %3, align 8
  %2052 = load i16, i16* %2024, align 2
  %2053 = zext i16 %2052 to i64
  store i64 %2053, i64* %RCX.i2209, align 8
  %2054 = zext i16 %2049 to i32
  %2055 = zext i16 %2052 to i32
  %2056 = sub nsw i32 %2054, %2055
  %DL.i1109 = bitcast %union.anon* %23 to i8*
  %2057 = icmp sgt i32 %2056, 0
  %2058 = zext i1 %2057 to i8
  store i8 0, i8* %103, align 1
  %2059 = zext i1 %2057 to i32
  %2060 = tail call i32 @llvm.ctpop.i32(i32 %2059)
  %2061 = trunc i32 %2060 to i8
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %109, align 1
  %2063 = icmp slt i32 %2056, 1
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2065 = zext i1 %2057 to i64
  store i64 %2065, i64* %RAX.i2139, align 8
  store i8 %2058, i8* %DL.i1109, align 1
  %2066 = add i64 %2015, -1
  %2067 = add i64 %2047, 24
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2066 to i8*
  store i8 %2058, i8* %2068, align 1
  %2069 = load i64, i64* %3, align 8
  %2070 = add i64 %2069, 1335
  store i64 %2070, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403469:                                  ; preds = %block_.L_40341a
  %2071 = add i64 %2015, -8
  %2072 = add i64 %2047, 3
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = add i32 %2074, 1
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i2139, align 8
  %2077 = icmp eq i32 %2074, -1
  %2078 = icmp eq i32 %2075, 0
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %103, align 1
  %2081 = and i32 %2075, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %109, align 1
  %2086 = xor i32 %2075, %2074
  %2087 = lshr i32 %2086, 4
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  store i8 %2089, i8* %116, align 1
  %2090 = zext i1 %2078 to i8
  store i8 %2090, i8* %119, align 1
  %2091 = lshr i32 %2075, 31
  %2092 = trunc i32 %2091 to i8
  store i8 %2092, i8* %122, align 1
  %2093 = lshr i32 %2074, 31
  %2094 = xor i32 %2091, %2093
  %2095 = add nuw nsw i32 %2094, %2091
  %2096 = icmp eq i32 %2095, 2
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %123, align 1
  %2098 = add i64 %2047, 9
  store i64 %2098, i64* %3, align 8
  store i32 %2075, i32* %2073, align 4
  %2099 = load i64, i64* %RBP.i, align 8
  %2100 = add i64 %2099, -12
  %2101 = load i64, i64* %3, align 8
  %2102 = add i64 %2101, 3
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2100 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = add i32 %2104, 1
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i2139, align 8
  %2107 = icmp eq i32 %2104, -1
  %2108 = icmp eq i32 %2105, 0
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %103, align 1
  %2111 = and i32 %2105, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %109, align 1
  %2116 = xor i32 %2105, %2104
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %116, align 1
  %2120 = zext i1 %2108 to i8
  store i8 %2120, i8* %119, align 1
  %2121 = lshr i32 %2105, 31
  %2122 = trunc i32 %2121 to i8
  store i8 %2122, i8* %122, align 1
  %2123 = lshr i32 %2104, 31
  %2124 = xor i32 %2121, %2123
  %2125 = add nuw nsw i32 %2124, %2121
  %2126 = icmp eq i32 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %123, align 1
  %2128 = add i64 %2101, 9
  store i64 %2128, i64* %3, align 8
  store i32 %2105, i32* %2103, align 4
  %2129 = load i64, i64* %RBP.i, align 8
  %2130 = add i64 %2129, -24
  %2131 = load i64, i64* %3, align 8
  %2132 = add i64 %2131, 4
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2130 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RCX.i2209, align 8
  %2135 = add i64 %2129, -8
  %2136 = add i64 %2131, 7
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RAX.i2139, align 8
  store i64 %2139, i64* %RDX.i2212, align 8
  %2140 = add i64 %2134, %2139
  %2141 = add i64 %2131, 13
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i8*
  %2143 = load i8, i8* %2142, align 1
  store i8 %2143, i8* %SIL.i2113, align 1
  %2144 = add i64 %2129, -53
  %2145 = add i64 %2131, 17
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i8*
  store i8 %2143, i8* %2146, align 1
  %2147 = load i64, i64* %RBP.i, align 8
  %2148 = add i64 %2147, -24
  %2149 = load i64, i64* %3, align 8
  %2150 = add i64 %2149, 4
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2148 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RCX.i2209, align 8
  %2153 = add i64 %2147, -12
  %2154 = add i64 %2149, 7
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RAX.i2139, align 8
  store i64 %2157, i64* %RDX.i2212, align 8
  %2158 = add i64 %2152, %2157
  %2159 = add i64 %2149, 13
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i8*
  %2161 = load i8, i8* %2160, align 1
  store i8 %2161, i8* %SIL.i2113, align 1
  %2162 = add i64 %2147, -54
  %2163 = add i64 %2149, 17
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i8*
  store i8 %2161, i8* %2164, align 1
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -53
  %2167 = load i64, i64* %3, align 8
  %2168 = add i64 %2167, 4
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2166 to i8*
  %2170 = load i8, i8* %2169, align 1
  %2171 = zext i8 %2170 to i64
  store i64 %2171, i64* %RAX.i2139, align 8
  %2172 = add i64 %2165, -54
  %2173 = add i64 %2167, 8
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i8*
  %2175 = load i8, i8* %2174, align 1
  %2176 = zext i8 %2175 to i64
  store i64 %2176, i64* %RDI.i2168, align 8
  %2177 = zext i8 %2170 to i32
  %2178 = zext i8 %2175 to i32
  %2179 = sub nsw i32 %2177, %2178
  %2180 = icmp ult i8 %2170, %2175
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %103, align 1
  %2182 = and i32 %2179, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %109, align 1
  %2187 = xor i8 %2175, %2170
  %2188 = zext i8 %2187 to i32
  %2189 = xor i32 %2188, %2179
  %2190 = lshr i32 %2189, 4
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  store i8 %2192, i8* %116, align 1
  %2193 = icmp eq i32 %2179, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %119, align 1
  %2195 = lshr i32 %2179, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v715 = select i1 %2193, i64 45, i64 16
  %2197 = add i64 %2167, %.v715
  store i64 %2197, i64* %3, align 8
  br i1 %2193, label %block_.L_4034ca, label %block_4034ad

block_4034ad:                                     ; preds = %block_.L_403469
  %2198 = add i64 %2197, 4
  store i64 %2198, i64* %3, align 8
  %2199 = load i8, i8* %2169, align 1
  %2200 = zext i8 %2199 to i64
  store i64 %2200, i64* %RAX.i2139, align 8
  %2201 = add i64 %2197, 8
  store i64 %2201, i64* %3, align 8
  %2202 = load i8, i8* %2174, align 1
  %2203 = zext i8 %2202 to i64
  store i64 %2203, i64* %RCX.i2209, align 8
  %2204 = zext i8 %2199 to i32
  %2205 = zext i8 %2202 to i32
  %2206 = sub nsw i32 %2204, %2205
  %DL.i1028 = bitcast %union.anon* %23 to i8*
  %2207 = icmp sgt i32 %2206, 0
  %2208 = zext i1 %2207 to i8
  store i8 0, i8* %103, align 1
  %2209 = zext i1 %2207 to i32
  %2210 = tail call i32 @llvm.ctpop.i32(i32 %2209)
  %2211 = trunc i32 %2210 to i8
  %2212 = xor i8 %2211, 1
  store i8 %2212, i8* %109, align 1
  %2213 = icmp slt i32 %2206, 1
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2215 = zext i1 %2207 to i64
  store i64 %2215, i64* %RAX.i2139, align 8
  store i8 %2208, i8* %DL.i1028, align 1
  %2216 = add i64 %2165, -1
  %2217 = add i64 %2197, 24
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i8*
  store i8 %2208, i8* %2218, align 1
  %2219 = load i64, i64* %3, align 8
  %2220 = add i64 %2219, 1238
  store i64 %2220, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4034ca:                                  ; preds = %block_.L_403469
  %2221 = add i64 %2165, -32
  %2222 = add i64 %2197, 4
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i64*
  %2224 = load i64, i64* %2223, align 8
  store i64 %2224, i64* %RAX.i2139, align 8
  %2225 = add i64 %2165, -8
  %2226 = add i64 %2197, 7
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %RCX.i2209, align 8
  store i64 %2229, i64* %RDX.i2212, align 8
  %2230 = shl nuw nsw i64 %2229, 1
  %2231 = add i64 %2224, %2230
  %2232 = add i64 %2197, 13
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to i16*
  %2234 = load i16, i16* %2233, align 2
  store i16 %2234, i16* %SI.i1149, align 2
  %2235 = add i64 %2165, -56
  %2236 = add i64 %2197, 17
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i16*
  store i16 %2234, i16* %2237, align 2
  %2238 = load i64, i64* %RBP.i, align 8
  %2239 = add i64 %2238, -32
  %2240 = load i64, i64* %3, align 8
  %2241 = add i64 %2240, 4
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2239 to i64*
  %2243 = load i64, i64* %2242, align 8
  store i64 %2243, i64* %RAX.i2139, align 8
  %2244 = add i64 %2238, -12
  %2245 = add i64 %2240, 7
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RCX.i2209, align 8
  store i64 %2248, i64* %RDX.i2212, align 8
  %2249 = shl nuw nsw i64 %2248, 1
  %2250 = add i64 %2243, %2249
  %2251 = add i64 %2240, 13
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i16*
  %2253 = load i16, i16* %2252, align 2
  store i16 %2253, i16* %SI.i1149, align 2
  %2254 = add i64 %2238, -58
  %2255 = add i64 %2240, 17
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i16*
  store i16 %2253, i16* %2256, align 2
  %2257 = load i64, i64* %RBP.i, align 8
  %2258 = add i64 %2257, -56
  %2259 = load i64, i64* %3, align 8
  %2260 = add i64 %2259, 4
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2258 to i16*
  %2262 = load i16, i16* %2261, align 2
  %2263 = zext i16 %2262 to i64
  store i64 %2263, i64* %RCX.i2209, align 8
  %2264 = add i64 %2257, -58
  %2265 = add i64 %2259, 8
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i16*
  %2267 = load i16, i16* %2266, align 2
  %2268 = zext i16 %2267 to i64
  store i64 %2268, i64* %RDI.i2168, align 8
  %2269 = zext i16 %2262 to i32
  %2270 = zext i16 %2267 to i32
  %2271 = sub nsw i32 %2269, %2270
  %2272 = icmp ult i16 %2262, %2267
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %103, align 1
  %2274 = and i32 %2271, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %109, align 1
  %2279 = xor i16 %2267, %2262
  %2280 = zext i16 %2279 to i32
  %2281 = xor i32 %2280, %2271
  %2282 = lshr i32 %2281, 4
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  store i8 %2284, i8* %116, align 1
  %2285 = icmp eq i32 %2271, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %119, align 1
  %2287 = lshr i32 %2271, 31
  %2288 = trunc i32 %2287 to i8
  store i8 %2288, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v717 = select i1 %2285, i64 45, i64 16
  %2289 = add i64 %2259, %.v717
  store i64 %2289, i64* %3, align 8
  br i1 %2285, label %block_.L_403519, label %block_4034fc

block_4034fc:                                     ; preds = %block_.L_4034ca
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %3, align 8
  %2291 = load i16, i16* %2261, align 2
  %2292 = zext i16 %2291 to i64
  store i64 %2292, i64* %RAX.i2139, align 8
  %2293 = add i64 %2289, 8
  store i64 %2293, i64* %3, align 8
  %2294 = load i16, i16* %2266, align 2
  %2295 = zext i16 %2294 to i64
  store i64 %2295, i64* %RCX.i2209, align 8
  %2296 = zext i16 %2291 to i32
  %2297 = zext i16 %2294 to i32
  %2298 = sub nsw i32 %2296, %2297
  %DL.i963 = bitcast %union.anon* %23 to i8*
  %2299 = icmp sgt i32 %2298, 0
  %2300 = zext i1 %2299 to i8
  store i8 0, i8* %103, align 1
  %2301 = zext i1 %2299 to i32
  %2302 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %109, align 1
  %2305 = icmp slt i32 %2298, 1
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2307 = zext i1 %2299 to i64
  store i64 %2307, i64* %RAX.i2139, align 8
  store i8 %2300, i8* %DL.i963, align 1
  %2308 = add i64 %2257, -1
  %2309 = add i64 %2289, 24
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i8*
  store i8 %2300, i8* %2310, align 1
  %2311 = load i64, i64* %3, align 8
  %2312 = add i64 %2311, 1159
  store i64 %2312, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403519:                                  ; preds = %block_.L_4034ca
  %2313 = add i64 %2257, -8
  %2314 = add i64 %2289, 3
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = add i32 %2316, 1
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RAX.i2139, align 8
  %2319 = icmp eq i32 %2316, -1
  %2320 = icmp eq i32 %2317, 0
  %2321 = or i1 %2319, %2320
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %103, align 1
  %2323 = and i32 %2317, 255
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %109, align 1
  %2328 = xor i32 %2317, %2316
  %2329 = lshr i32 %2328, 4
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  store i8 %2331, i8* %116, align 1
  %2332 = zext i1 %2320 to i8
  store i8 %2332, i8* %119, align 1
  %2333 = lshr i32 %2317, 31
  %2334 = trunc i32 %2333 to i8
  store i8 %2334, i8* %122, align 1
  %2335 = lshr i32 %2316, 31
  %2336 = xor i32 %2333, %2335
  %2337 = add nuw nsw i32 %2336, %2333
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %123, align 1
  %2340 = add i64 %2289, 9
  store i64 %2340, i64* %3, align 8
  store i32 %2317, i32* %2315, align 4
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -12
  %2343 = load i64, i64* %3, align 8
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = add i32 %2346, 1
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RAX.i2139, align 8
  %2349 = icmp eq i32 %2346, -1
  %2350 = icmp eq i32 %2347, 0
  %2351 = or i1 %2349, %2350
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %103, align 1
  %2353 = and i32 %2347, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %109, align 1
  %2358 = xor i32 %2347, %2346
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %116, align 1
  %2362 = zext i1 %2350 to i8
  store i8 %2362, i8* %119, align 1
  %2363 = lshr i32 %2347, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %122, align 1
  %2365 = lshr i32 %2346, 31
  %2366 = xor i32 %2363, %2365
  %2367 = add nuw nsw i32 %2366, %2363
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %123, align 1
  %2370 = add i64 %2343, 9
  store i64 %2370, i64* %3, align 8
  store i32 %2347, i32* %2345, align 4
  %2371 = load i64, i64* %RBP.i, align 8
  %2372 = add i64 %2371, -24
  %2373 = load i64, i64* %3, align 8
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2372 to i64*
  %2376 = load i64, i64* %2375, align 8
  store i64 %2376, i64* %RCX.i2209, align 8
  %2377 = add i64 %2371, -8
  %2378 = add i64 %2373, 7
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i2139, align 8
  store i64 %2381, i64* %RDX.i2212, align 8
  %2382 = add i64 %2376, %2381
  %2383 = add i64 %2373, 13
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i8*
  %2385 = load i8, i8* %2384, align 1
  store i8 %2385, i8* %SIL.i2113, align 1
  %2386 = add i64 %2371, -53
  %2387 = add i64 %2373, 17
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i8*
  store i8 %2385, i8* %2388, align 1
  %2389 = load i64, i64* %RBP.i, align 8
  %2390 = add i64 %2389, -24
  %2391 = load i64, i64* %3, align 8
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2390 to i64*
  %2394 = load i64, i64* %2393, align 8
  store i64 %2394, i64* %RCX.i2209, align 8
  %2395 = add i64 %2389, -12
  %2396 = add i64 %2391, 7
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RAX.i2139, align 8
  store i64 %2399, i64* %RDX.i2212, align 8
  %2400 = add i64 %2394, %2399
  %2401 = add i64 %2391, 13
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i8*
  %2403 = load i8, i8* %2402, align 1
  store i8 %2403, i8* %SIL.i2113, align 1
  %2404 = add i64 %2389, -54
  %2405 = add i64 %2391, 17
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i8*
  store i8 %2403, i8* %2406, align 1
  %2407 = load i64, i64* %RBP.i, align 8
  %2408 = add i64 %2407, -53
  %2409 = load i64, i64* %3, align 8
  %2410 = add i64 %2409, 4
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2408 to i8*
  %2412 = load i8, i8* %2411, align 1
  %2413 = zext i8 %2412 to i64
  store i64 %2413, i64* %RAX.i2139, align 8
  %2414 = add i64 %2407, -54
  %2415 = add i64 %2409, 8
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i8*
  %2417 = load i8, i8* %2416, align 1
  %2418 = zext i8 %2417 to i64
  store i64 %2418, i64* %RDI.i2168, align 8
  %2419 = zext i8 %2412 to i32
  %2420 = zext i8 %2417 to i32
  %2421 = sub nsw i32 %2419, %2420
  %2422 = icmp ult i8 %2412, %2417
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %103, align 1
  %2424 = and i32 %2421, 255
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %109, align 1
  %2429 = xor i8 %2417, %2412
  %2430 = zext i8 %2429 to i32
  %2431 = xor i32 %2430, %2421
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  store i8 %2434, i8* %116, align 1
  %2435 = icmp eq i32 %2421, 0
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %119, align 1
  %2437 = lshr i32 %2421, 31
  %2438 = trunc i32 %2437 to i8
  store i8 %2438, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v719 = select i1 %2435, i64 45, i64 16
  %2439 = add i64 %2409, %.v719
  store i64 %2439, i64* %3, align 8
  br i1 %2435, label %block_.L_40357a, label %block_40355d

block_40355d:                                     ; preds = %block_.L_403519
  %2440 = add i64 %2439, 4
  store i64 %2440, i64* %3, align 8
  %2441 = load i8, i8* %2411, align 1
  %2442 = zext i8 %2441 to i64
  store i64 %2442, i64* %RAX.i2139, align 8
  %2443 = add i64 %2439, 8
  store i64 %2443, i64* %3, align 8
  %2444 = load i8, i8* %2416, align 1
  %2445 = zext i8 %2444 to i64
  store i64 %2445, i64* %RCX.i2209, align 8
  %2446 = zext i8 %2441 to i32
  %2447 = zext i8 %2444 to i32
  %2448 = sub nsw i32 %2446, %2447
  %DL.i882 = bitcast %union.anon* %23 to i8*
  %2449 = icmp sgt i32 %2448, 0
  %2450 = zext i1 %2449 to i8
  store i8 0, i8* %103, align 1
  %2451 = zext i1 %2449 to i32
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = xor i8 %2453, 1
  store i8 %2454, i8* %109, align 1
  %2455 = icmp slt i32 %2448, 1
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2457 = zext i1 %2449 to i64
  store i64 %2457, i64* %RAX.i2139, align 8
  store i8 %2450, i8* %DL.i882, align 1
  %2458 = add i64 %2407, -1
  %2459 = add i64 %2439, 24
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2458 to i8*
  store i8 %2450, i8* %2460, align 1
  %2461 = load i64, i64* %3, align 8
  %2462 = add i64 %2461, 1062
  store i64 %2462, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40357a:                                  ; preds = %block_.L_403519
  %2463 = add i64 %2407, -32
  %2464 = add i64 %2439, 4
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i64*
  %2466 = load i64, i64* %2465, align 8
  store i64 %2466, i64* %RAX.i2139, align 8
  %2467 = add i64 %2407, -8
  %2468 = add i64 %2439, 7
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i32*
  %2470 = load i32, i32* %2469, align 4
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RCX.i2209, align 8
  store i64 %2471, i64* %RDX.i2212, align 8
  %2472 = shl nuw nsw i64 %2471, 1
  %2473 = add i64 %2466, %2472
  %2474 = add i64 %2439, 13
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i16*
  %2476 = load i16, i16* %2475, align 2
  store i16 %2476, i16* %SI.i1149, align 2
  %2477 = add i64 %2407, -56
  %2478 = add i64 %2439, 17
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i16*
  store i16 %2476, i16* %2479, align 2
  %2480 = load i64, i64* %RBP.i, align 8
  %2481 = add i64 %2480, -32
  %2482 = load i64, i64* %3, align 8
  %2483 = add i64 %2482, 4
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2481 to i64*
  %2485 = load i64, i64* %2484, align 8
  store i64 %2485, i64* %RAX.i2139, align 8
  %2486 = add i64 %2480, -12
  %2487 = add i64 %2482, 7
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RCX.i2209, align 8
  store i64 %2490, i64* %RDX.i2212, align 8
  %2491 = shl nuw nsw i64 %2490, 1
  %2492 = add i64 %2485, %2491
  %2493 = add i64 %2482, 13
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i16*
  %2495 = load i16, i16* %2494, align 2
  store i16 %2495, i16* %SI.i1149, align 2
  %2496 = add i64 %2480, -58
  %2497 = add i64 %2482, 17
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i16*
  store i16 %2495, i16* %2498, align 2
  %2499 = load i64, i64* %RBP.i, align 8
  %2500 = add i64 %2499, -56
  %2501 = load i64, i64* %3, align 8
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2500 to i16*
  %2504 = load i16, i16* %2503, align 2
  %2505 = zext i16 %2504 to i64
  store i64 %2505, i64* %RCX.i2209, align 8
  %2506 = add i64 %2499, -58
  %2507 = add i64 %2501, 8
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i16*
  %2509 = load i16, i16* %2508, align 2
  %2510 = zext i16 %2509 to i64
  store i64 %2510, i64* %RDI.i2168, align 8
  %2511 = zext i16 %2504 to i32
  %2512 = zext i16 %2509 to i32
  %2513 = sub nsw i32 %2511, %2512
  %2514 = icmp ult i16 %2504, %2509
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %103, align 1
  %2516 = and i32 %2513, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %109, align 1
  %2521 = xor i16 %2509, %2504
  %2522 = zext i16 %2521 to i32
  %2523 = xor i32 %2522, %2513
  %2524 = lshr i32 %2523, 4
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %116, align 1
  %2527 = icmp eq i32 %2513, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %119, align 1
  %2529 = lshr i32 %2513, 31
  %2530 = trunc i32 %2529 to i8
  store i8 %2530, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v721 = select i1 %2527, i64 45, i64 16
  %2531 = add i64 %2501, %.v721
  store i64 %2531, i64* %3, align 8
  br i1 %2527, label %block_.L_4035c9, label %block_4035ac

block_4035ac:                                     ; preds = %block_.L_40357a
  %2532 = add i64 %2531, 4
  store i64 %2532, i64* %3, align 8
  %2533 = load i16, i16* %2503, align 2
  %2534 = zext i16 %2533 to i64
  store i64 %2534, i64* %RAX.i2139, align 8
  %2535 = add i64 %2531, 8
  store i64 %2535, i64* %3, align 8
  %2536 = load i16, i16* %2508, align 2
  %2537 = zext i16 %2536 to i64
  store i64 %2537, i64* %RCX.i2209, align 8
  %2538 = zext i16 %2533 to i32
  %2539 = zext i16 %2536 to i32
  %2540 = sub nsw i32 %2538, %2539
  %DL.i817 = bitcast %union.anon* %23 to i8*
  %2541 = icmp sgt i32 %2540, 0
  %2542 = zext i1 %2541 to i8
  store i8 0, i8* %103, align 1
  %2543 = zext i1 %2541 to i32
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %109, align 1
  %2547 = icmp slt i32 %2540, 1
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2549 = zext i1 %2541 to i64
  store i64 %2549, i64* %RAX.i2139, align 8
  store i8 %2542, i8* %DL.i817, align 1
  %2550 = add i64 %2499, -1
  %2551 = add i64 %2531, 24
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i8*
  store i8 %2542, i8* %2552, align 1
  %2553 = load i64, i64* %3, align 8
  %2554 = add i64 %2553, 983
  store i64 %2554, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4035c9:                                  ; preds = %block_.L_40357a
  %2555 = add i64 %2499, -8
  %2556 = add i64 %2531, 3
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = add i32 %2558, 1
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i2139, align 8
  %2561 = icmp eq i32 %2558, -1
  %2562 = icmp eq i32 %2559, 0
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %103, align 1
  %2565 = and i32 %2559, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %109, align 1
  %2570 = xor i32 %2559, %2558
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  store i8 %2573, i8* %116, align 1
  %2574 = zext i1 %2562 to i8
  store i8 %2574, i8* %119, align 1
  %2575 = lshr i32 %2559, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %122, align 1
  %2577 = lshr i32 %2558, 31
  %2578 = xor i32 %2575, %2577
  %2579 = add nuw nsw i32 %2578, %2575
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %123, align 1
  %2582 = add i64 %2531, 9
  store i64 %2582, i64* %3, align 8
  store i32 %2559, i32* %2557, align 4
  %2583 = load i64, i64* %RBP.i, align 8
  %2584 = add i64 %2583, -12
  %2585 = load i64, i64* %3, align 8
  %2586 = add i64 %2585, 3
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2584 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = add i32 %2588, 1
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RAX.i2139, align 8
  %2591 = icmp eq i32 %2588, -1
  %2592 = icmp eq i32 %2589, 0
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %103, align 1
  %2595 = and i32 %2589, 255
  %2596 = tail call i32 @llvm.ctpop.i32(i32 %2595)
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  store i8 %2599, i8* %109, align 1
  %2600 = xor i32 %2589, %2588
  %2601 = lshr i32 %2600, 4
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  store i8 %2603, i8* %116, align 1
  %2604 = zext i1 %2592 to i8
  store i8 %2604, i8* %119, align 1
  %2605 = lshr i32 %2589, 31
  %2606 = trunc i32 %2605 to i8
  store i8 %2606, i8* %122, align 1
  %2607 = lshr i32 %2588, 31
  %2608 = xor i32 %2605, %2607
  %2609 = add nuw nsw i32 %2608, %2605
  %2610 = icmp eq i32 %2609, 2
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %123, align 1
  %2612 = add i64 %2585, 9
  store i64 %2612, i64* %3, align 8
  store i32 %2589, i32* %2587, align 4
  %2613 = load i64, i64* %RBP.i, align 8
  %2614 = add i64 %2613, -24
  %2615 = load i64, i64* %3, align 8
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2614 to i64*
  %2618 = load i64, i64* %2617, align 8
  store i64 %2618, i64* %RCX.i2209, align 8
  %2619 = add i64 %2613, -8
  %2620 = add i64 %2615, 7
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RAX.i2139, align 8
  store i64 %2623, i64* %RDX.i2212, align 8
  %2624 = add i64 %2618, %2623
  %2625 = add i64 %2615, 13
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i8*
  %2627 = load i8, i8* %2626, align 1
  store i8 %2627, i8* %SIL.i2113, align 1
  %2628 = add i64 %2613, -53
  %2629 = add i64 %2615, 17
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i8*
  store i8 %2627, i8* %2630, align 1
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -24
  %2633 = load i64, i64* %3, align 8
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2632 to i64*
  %2636 = load i64, i64* %2635, align 8
  store i64 %2636, i64* %RCX.i2209, align 8
  %2637 = add i64 %2631, -12
  %2638 = add i64 %2633, 7
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = zext i32 %2640 to i64
  store i64 %2641, i64* %RAX.i2139, align 8
  store i64 %2641, i64* %RDX.i2212, align 8
  %2642 = add i64 %2636, %2641
  %2643 = add i64 %2633, 13
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i8*
  %2645 = load i8, i8* %2644, align 1
  store i8 %2645, i8* %SIL.i2113, align 1
  %2646 = add i64 %2631, -54
  %2647 = add i64 %2633, 17
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i8*
  store i8 %2645, i8* %2648, align 1
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -53
  %2651 = load i64, i64* %3, align 8
  %2652 = add i64 %2651, 4
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2650 to i8*
  %2654 = load i8, i8* %2653, align 1
  %2655 = zext i8 %2654 to i64
  store i64 %2655, i64* %RAX.i2139, align 8
  %2656 = add i64 %2649, -54
  %2657 = add i64 %2651, 8
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i8*
  %2659 = load i8, i8* %2658, align 1
  %2660 = zext i8 %2659 to i64
  store i64 %2660, i64* %RDI.i2168, align 8
  %2661 = zext i8 %2654 to i32
  %2662 = zext i8 %2659 to i32
  %2663 = sub nsw i32 %2661, %2662
  %2664 = icmp ult i8 %2654, %2659
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %103, align 1
  %2666 = and i32 %2663, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %109, align 1
  %2671 = xor i8 %2659, %2654
  %2672 = zext i8 %2671 to i32
  %2673 = xor i32 %2672, %2663
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %116, align 1
  %2677 = icmp eq i32 %2663, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %119, align 1
  %2679 = lshr i32 %2663, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v723 = select i1 %2677, i64 45, i64 16
  %2681 = add i64 %2651, %.v723
  store i64 %2681, i64* %3, align 8
  br i1 %2677, label %block_.L_40362a, label %block_40360d

block_40360d:                                     ; preds = %block_.L_4035c9
  %2682 = add i64 %2681, 4
  store i64 %2682, i64* %3, align 8
  %2683 = load i8, i8* %2653, align 1
  %2684 = zext i8 %2683 to i64
  store i64 %2684, i64* %RAX.i2139, align 8
  %2685 = add i64 %2681, 8
  store i64 %2685, i64* %3, align 8
  %2686 = load i8, i8* %2658, align 1
  %2687 = zext i8 %2686 to i64
  store i64 %2687, i64* %RCX.i2209, align 8
  %2688 = zext i8 %2683 to i32
  %2689 = zext i8 %2686 to i32
  %2690 = sub nsw i32 %2688, %2689
  %DL.i736 = bitcast %union.anon* %23 to i8*
  %2691 = icmp sgt i32 %2690, 0
  %2692 = zext i1 %2691 to i8
  store i8 0, i8* %103, align 1
  %2693 = zext i1 %2691 to i32
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %109, align 1
  %2697 = icmp slt i32 %2690, 1
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2699 = zext i1 %2691 to i64
  store i64 %2699, i64* %RAX.i2139, align 8
  store i8 %2692, i8* %DL.i736, align 1
  %2700 = add i64 %2649, -1
  %2701 = add i64 %2681, 24
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i8*
  store i8 %2692, i8* %2702, align 1
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 886
  store i64 %2704, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40362a:                                  ; preds = %block_.L_4035c9
  %2705 = add i64 %2649, -32
  %2706 = add i64 %2681, 4
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RAX.i2139, align 8
  %2709 = add i64 %2649, -8
  %2710 = add i64 %2681, 7
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RCX.i2209, align 8
  store i64 %2713, i64* %RDX.i2212, align 8
  %2714 = shl nuw nsw i64 %2713, 1
  %2715 = add i64 %2708, %2714
  %2716 = add i64 %2681, 13
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i16*
  %2718 = load i16, i16* %2717, align 2
  store i16 %2718, i16* %SI.i1149, align 2
  %2719 = add i64 %2649, -56
  %2720 = add i64 %2681, 17
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i16*
  store i16 %2718, i16* %2721, align 2
  %2722 = load i64, i64* %RBP.i, align 8
  %2723 = add i64 %2722, -32
  %2724 = load i64, i64* %3, align 8
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2723 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RAX.i2139, align 8
  %2728 = add i64 %2722, -12
  %2729 = add i64 %2724, 7
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RCX.i2209, align 8
  store i64 %2732, i64* %RDX.i2212, align 8
  %2733 = shl nuw nsw i64 %2732, 1
  %2734 = add i64 %2727, %2733
  %2735 = add i64 %2724, 13
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i16*
  %2737 = load i16, i16* %2736, align 2
  store i16 %2737, i16* %SI.i1149, align 2
  %2738 = add i64 %2722, -58
  %2739 = add i64 %2724, 17
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i16*
  store i16 %2737, i16* %2740, align 2
  %2741 = load i64, i64* %RBP.i, align 8
  %2742 = add i64 %2741, -56
  %2743 = load i64, i64* %3, align 8
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2742 to i16*
  %2746 = load i16, i16* %2745, align 2
  %2747 = zext i16 %2746 to i64
  store i64 %2747, i64* %RCX.i2209, align 8
  %2748 = add i64 %2741, -58
  %2749 = add i64 %2743, 8
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i16*
  %2751 = load i16, i16* %2750, align 2
  %2752 = zext i16 %2751 to i64
  store i64 %2752, i64* %RDI.i2168, align 8
  %2753 = zext i16 %2746 to i32
  %2754 = zext i16 %2751 to i32
  %2755 = sub nsw i32 %2753, %2754
  %2756 = icmp ult i16 %2746, %2751
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %103, align 1
  %2758 = and i32 %2755, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %109, align 1
  %2763 = xor i16 %2751, %2746
  %2764 = zext i16 %2763 to i32
  %2765 = xor i32 %2764, %2755
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %116, align 1
  %2769 = icmp eq i32 %2755, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %119, align 1
  %2771 = lshr i32 %2755, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v725 = select i1 %2769, i64 45, i64 16
  %2773 = add i64 %2743, %.v725
  store i64 %2773, i64* %3, align 8
  br i1 %2769, label %block_.L_403679, label %block_40365c

block_40365c:                                     ; preds = %block_.L_40362a
  %2774 = add i64 %2773, 4
  store i64 %2774, i64* %3, align 8
  %2775 = load i16, i16* %2745, align 2
  %2776 = zext i16 %2775 to i64
  store i64 %2776, i64* %RAX.i2139, align 8
  %2777 = add i64 %2773, 8
  store i64 %2777, i64* %3, align 8
  %2778 = load i16, i16* %2750, align 2
  %2779 = zext i16 %2778 to i64
  store i64 %2779, i64* %RCX.i2209, align 8
  %2780 = zext i16 %2775 to i32
  %2781 = zext i16 %2778 to i32
  %2782 = sub nsw i32 %2780, %2781
  %DL.i671 = bitcast %union.anon* %23 to i8*
  %2783 = icmp sgt i32 %2782, 0
  %2784 = zext i1 %2783 to i8
  store i8 0, i8* %103, align 1
  %2785 = zext i1 %2783 to i32
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %109, align 1
  %2789 = icmp slt i32 %2782, 1
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2791 = zext i1 %2783 to i64
  store i64 %2791, i64* %RAX.i2139, align 8
  store i8 %2784, i8* %DL.i671, align 1
  %2792 = add i64 %2741, -1
  %2793 = add i64 %2773, 24
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i8*
  store i8 %2784, i8* %2794, align 1
  %2795 = load i64, i64* %3, align 8
  %2796 = add i64 %2795, 807
  store i64 %2796, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403679:                                  ; preds = %block_.L_40362a
  %2797 = add i64 %2741, -8
  %2798 = add i64 %2773, 3
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = add i32 %2800, 1
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RAX.i2139, align 8
  %2803 = icmp eq i32 %2800, -1
  %2804 = icmp eq i32 %2801, 0
  %2805 = or i1 %2803, %2804
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %103, align 1
  %2807 = and i32 %2801, 255
  %2808 = tail call i32 @llvm.ctpop.i32(i32 %2807)
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = xor i8 %2810, 1
  store i8 %2811, i8* %109, align 1
  %2812 = xor i32 %2801, %2800
  %2813 = lshr i32 %2812, 4
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  store i8 %2815, i8* %116, align 1
  %2816 = zext i1 %2804 to i8
  store i8 %2816, i8* %119, align 1
  %2817 = lshr i32 %2801, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %122, align 1
  %2819 = lshr i32 %2800, 31
  %2820 = xor i32 %2817, %2819
  %2821 = add nuw nsw i32 %2820, %2817
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %123, align 1
  %2824 = add i64 %2773, 9
  store i64 %2824, i64* %3, align 8
  store i32 %2801, i32* %2799, align 4
  %2825 = load i64, i64* %RBP.i, align 8
  %2826 = add i64 %2825, -12
  %2827 = load i64, i64* %3, align 8
  %2828 = add i64 %2827, 3
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2826 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = add i32 %2830, 1
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i2139, align 8
  %2833 = icmp eq i32 %2830, -1
  %2834 = icmp eq i32 %2831, 0
  %2835 = or i1 %2833, %2834
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %103, align 1
  %2837 = and i32 %2831, 255
  %2838 = tail call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  store i8 %2841, i8* %109, align 1
  %2842 = xor i32 %2831, %2830
  %2843 = lshr i32 %2842, 4
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  store i8 %2845, i8* %116, align 1
  %2846 = zext i1 %2834 to i8
  store i8 %2846, i8* %119, align 1
  %2847 = lshr i32 %2831, 31
  %2848 = trunc i32 %2847 to i8
  store i8 %2848, i8* %122, align 1
  %2849 = lshr i32 %2830, 31
  %2850 = xor i32 %2847, %2849
  %2851 = add nuw nsw i32 %2850, %2847
  %2852 = icmp eq i32 %2851, 2
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %123, align 1
  %2854 = add i64 %2827, 9
  store i64 %2854, i64* %3, align 8
  store i32 %2831, i32* %2829, align 4
  %2855 = load i64, i64* %RBP.i, align 8
  %2856 = add i64 %2855, -24
  %2857 = load i64, i64* %3, align 8
  %2858 = add i64 %2857, 4
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2856 to i64*
  %2860 = load i64, i64* %2859, align 8
  store i64 %2860, i64* %RCX.i2209, align 8
  %2861 = add i64 %2855, -8
  %2862 = add i64 %2857, 7
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i32*
  %2864 = load i32, i32* %2863, align 4
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX.i2139, align 8
  store i64 %2865, i64* %RDX.i2212, align 8
  %2866 = add i64 %2860, %2865
  %2867 = add i64 %2857, 13
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i8*
  %2869 = load i8, i8* %2868, align 1
  store i8 %2869, i8* %SIL.i2113, align 1
  %2870 = add i64 %2855, -53
  %2871 = add i64 %2857, 17
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i8*
  store i8 %2869, i8* %2872, align 1
  %2873 = load i64, i64* %RBP.i, align 8
  %2874 = add i64 %2873, -24
  %2875 = load i64, i64* %3, align 8
  %2876 = add i64 %2875, 4
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2874 to i64*
  %2878 = load i64, i64* %2877, align 8
  store i64 %2878, i64* %RCX.i2209, align 8
  %2879 = add i64 %2873, -12
  %2880 = add i64 %2875, 7
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i2139, align 8
  store i64 %2883, i64* %RDX.i2212, align 8
  %2884 = add i64 %2878, %2883
  %2885 = add i64 %2875, 13
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i8*
  %2887 = load i8, i8* %2886, align 1
  store i8 %2887, i8* %SIL.i2113, align 1
  %2888 = add i64 %2873, -54
  %2889 = add i64 %2875, 17
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i8*
  store i8 %2887, i8* %2890, align 1
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -53
  %2893 = load i64, i64* %3, align 8
  %2894 = add i64 %2893, 4
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2892 to i8*
  %2896 = load i8, i8* %2895, align 1
  %2897 = zext i8 %2896 to i64
  store i64 %2897, i64* %RAX.i2139, align 8
  %2898 = add i64 %2891, -54
  %2899 = add i64 %2893, 8
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i8*
  %2901 = load i8, i8* %2900, align 1
  %2902 = zext i8 %2901 to i64
  store i64 %2902, i64* %RDI.i2168, align 8
  %2903 = zext i8 %2896 to i32
  %2904 = zext i8 %2901 to i32
  %2905 = sub nsw i32 %2903, %2904
  %2906 = icmp ult i8 %2896, %2901
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %103, align 1
  %2908 = and i32 %2905, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %109, align 1
  %2913 = xor i8 %2901, %2896
  %2914 = zext i8 %2913 to i32
  %2915 = xor i32 %2914, %2905
  %2916 = lshr i32 %2915, 4
  %2917 = trunc i32 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %116, align 1
  %2919 = icmp eq i32 %2905, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %119, align 1
  %2921 = lshr i32 %2905, 31
  %2922 = trunc i32 %2921 to i8
  store i8 %2922, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v727 = select i1 %2919, i64 45, i64 16
  %2923 = add i64 %2893, %.v727
  store i64 %2923, i64* %3, align 8
  br i1 %2919, label %block_.L_4036da, label %block_4036bd

block_4036bd:                                     ; preds = %block_.L_403679
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %3, align 8
  %2925 = load i8, i8* %2895, align 1
  %2926 = zext i8 %2925 to i64
  store i64 %2926, i64* %RAX.i2139, align 8
  %2927 = add i64 %2923, 8
  store i64 %2927, i64* %3, align 8
  %2928 = load i8, i8* %2900, align 1
  %2929 = zext i8 %2928 to i64
  store i64 %2929, i64* %RCX.i2209, align 8
  %2930 = zext i8 %2925 to i32
  %2931 = zext i8 %2928 to i32
  %2932 = sub nsw i32 %2930, %2931
  %DL.i590 = bitcast %union.anon* %23 to i8*
  %2933 = icmp sgt i32 %2932, 0
  %2934 = zext i1 %2933 to i8
  store i8 0, i8* %103, align 1
  %2935 = zext i1 %2933 to i32
  %2936 = tail call i32 @llvm.ctpop.i32(i32 %2935)
  %2937 = trunc i32 %2936 to i8
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %109, align 1
  %2939 = icmp slt i32 %2932, 1
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %2941 = zext i1 %2933 to i64
  store i64 %2941, i64* %RAX.i2139, align 8
  store i8 %2934, i8* %DL.i590, align 1
  %2942 = add i64 %2891, -1
  %2943 = add i64 %2923, 24
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i8*
  store i8 %2934, i8* %2944, align 1
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 710
  store i64 %2946, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4036da:                                  ; preds = %block_.L_403679
  %2947 = add i64 %2891, -32
  %2948 = add i64 %2923, 4
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i64*
  %2950 = load i64, i64* %2949, align 8
  store i64 %2950, i64* %RAX.i2139, align 8
  %2951 = add i64 %2891, -8
  %2952 = add i64 %2923, 7
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = zext i32 %2954 to i64
  store i64 %2955, i64* %RCX.i2209, align 8
  store i64 %2955, i64* %RDX.i2212, align 8
  %2956 = shl nuw nsw i64 %2955, 1
  %2957 = add i64 %2950, %2956
  %2958 = add i64 %2923, 13
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i16*
  %2960 = load i16, i16* %2959, align 2
  store i16 %2960, i16* %SI.i1149, align 2
  %2961 = add i64 %2891, -56
  %2962 = add i64 %2923, 17
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i16*
  store i16 %2960, i16* %2963, align 2
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -32
  %2966 = load i64, i64* %3, align 8
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2965 to i64*
  %2969 = load i64, i64* %2968, align 8
  store i64 %2969, i64* %RAX.i2139, align 8
  %2970 = add i64 %2964, -12
  %2971 = add i64 %2966, 7
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RCX.i2209, align 8
  store i64 %2974, i64* %RDX.i2212, align 8
  %2975 = shl nuw nsw i64 %2974, 1
  %2976 = add i64 %2969, %2975
  %2977 = add i64 %2966, 13
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i16*
  %2979 = load i16, i16* %2978, align 2
  store i16 %2979, i16* %SI.i1149, align 2
  %2980 = add i64 %2964, -58
  %2981 = add i64 %2966, 17
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i16*
  store i16 %2979, i16* %2982, align 2
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -56
  %2985 = load i64, i64* %3, align 8
  %2986 = add i64 %2985, 4
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2984 to i16*
  %2988 = load i16, i16* %2987, align 2
  %2989 = zext i16 %2988 to i64
  store i64 %2989, i64* %RCX.i2209, align 8
  %2990 = add i64 %2983, -58
  %2991 = add i64 %2985, 8
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i16*
  %2993 = load i16, i16* %2992, align 2
  %2994 = zext i16 %2993 to i64
  store i64 %2994, i64* %RDI.i2168, align 8
  %2995 = zext i16 %2988 to i32
  %2996 = zext i16 %2993 to i32
  %2997 = sub nsw i32 %2995, %2996
  %2998 = icmp ult i16 %2988, %2993
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %103, align 1
  %3000 = and i32 %2997, 255
  %3001 = tail call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  store i8 %3004, i8* %109, align 1
  %3005 = xor i16 %2993, %2988
  %3006 = zext i16 %3005 to i32
  %3007 = xor i32 %3006, %2997
  %3008 = lshr i32 %3007, 4
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  store i8 %3010, i8* %116, align 1
  %3011 = icmp eq i32 %2997, 0
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %119, align 1
  %3013 = lshr i32 %2997, 31
  %3014 = trunc i32 %3013 to i8
  store i8 %3014, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v729 = select i1 %3011, i64 45, i64 16
  %3015 = add i64 %2985, %.v729
  store i64 %3015, i64* %3, align 8
  br i1 %3011, label %block_.L_403729, label %block_40370c

block_40370c:                                     ; preds = %block_.L_4036da
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %3, align 8
  %3017 = load i16, i16* %2987, align 2
  %3018 = zext i16 %3017 to i64
  store i64 %3018, i64* %RAX.i2139, align 8
  %3019 = add i64 %3015, 8
  store i64 %3019, i64* %3, align 8
  %3020 = load i16, i16* %2992, align 2
  %3021 = zext i16 %3020 to i64
  store i64 %3021, i64* %RCX.i2209, align 8
  %3022 = zext i16 %3017 to i32
  %3023 = zext i16 %3020 to i32
  %3024 = sub nsw i32 %3022, %3023
  %DL.i525 = bitcast %union.anon* %23 to i8*
  %3025 = icmp sgt i32 %3024, 0
  %3026 = zext i1 %3025 to i8
  store i8 0, i8* %103, align 1
  %3027 = zext i1 %3025 to i32
  %3028 = tail call i32 @llvm.ctpop.i32(i32 %3027)
  %3029 = trunc i32 %3028 to i8
  %3030 = xor i8 %3029, 1
  store i8 %3030, i8* %109, align 1
  %3031 = icmp slt i32 %3024, 1
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3033 = zext i1 %3025 to i64
  store i64 %3033, i64* %RAX.i2139, align 8
  store i8 %3026, i8* %DL.i525, align 1
  %3034 = add i64 %2983, -1
  %3035 = add i64 %3015, 24
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i8*
  store i8 %3026, i8* %3036, align 1
  %3037 = load i64, i64* %3, align 8
  %3038 = add i64 %3037, 631
  store i64 %3038, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403729:                                  ; preds = %block_.L_4036da
  %3039 = add i64 %2983, -8
  %3040 = add i64 %3015, 3
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i32*
  %3042 = load i32, i32* %3041, align 4
  %3043 = add i32 %3042, 1
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RAX.i2139, align 8
  %3045 = icmp eq i32 %3042, -1
  %3046 = icmp eq i32 %3043, 0
  %3047 = or i1 %3045, %3046
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %103, align 1
  %3049 = and i32 %3043, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %109, align 1
  %3054 = xor i32 %3043, %3042
  %3055 = lshr i32 %3054, 4
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  store i8 %3057, i8* %116, align 1
  %3058 = zext i1 %3046 to i8
  store i8 %3058, i8* %119, align 1
  %3059 = lshr i32 %3043, 31
  %3060 = trunc i32 %3059 to i8
  store i8 %3060, i8* %122, align 1
  %3061 = lshr i32 %3042, 31
  %3062 = xor i32 %3059, %3061
  %3063 = add nuw nsw i32 %3062, %3059
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %123, align 1
  %3066 = add i64 %3015, 9
  store i64 %3066, i64* %3, align 8
  store i32 %3043, i32* %3041, align 4
  %3067 = load i64, i64* %RBP.i, align 8
  %3068 = add i64 %3067, -12
  %3069 = load i64, i64* %3, align 8
  %3070 = add i64 %3069, 3
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3068 to i32*
  %3072 = load i32, i32* %3071, align 4
  %3073 = add i32 %3072, 1
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RAX.i2139, align 8
  %3075 = icmp eq i32 %3072, -1
  %3076 = icmp eq i32 %3073, 0
  %3077 = or i1 %3075, %3076
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %103, align 1
  %3079 = and i32 %3073, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %109, align 1
  %3084 = xor i32 %3073, %3072
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %116, align 1
  %3088 = zext i1 %3076 to i8
  store i8 %3088, i8* %119, align 1
  %3089 = lshr i32 %3073, 31
  %3090 = trunc i32 %3089 to i8
  store i8 %3090, i8* %122, align 1
  %3091 = lshr i32 %3072, 31
  %3092 = xor i32 %3089, %3091
  %3093 = add nuw nsw i32 %3092, %3089
  %3094 = icmp eq i32 %3093, 2
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %123, align 1
  %3096 = add i64 %3069, 9
  store i64 %3096, i64* %3, align 8
  store i32 %3073, i32* %3071, align 4
  %3097 = load i64, i64* %RBP.i, align 8
  %3098 = add i64 %3097, -24
  %3099 = load i64, i64* %3, align 8
  %3100 = add i64 %3099, 4
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3098 to i64*
  %3102 = load i64, i64* %3101, align 8
  store i64 %3102, i64* %RCX.i2209, align 8
  %3103 = add i64 %3097, -8
  %3104 = add i64 %3099, 7
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3103 to i32*
  %3106 = load i32, i32* %3105, align 4
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RAX.i2139, align 8
  store i64 %3107, i64* %RDX.i2212, align 8
  %3108 = add i64 %3102, %3107
  %3109 = add i64 %3099, 13
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i8*
  %3111 = load i8, i8* %3110, align 1
  store i8 %3111, i8* %SIL.i2113, align 1
  %3112 = add i64 %3097, -53
  %3113 = add i64 %3099, 17
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i8*
  store i8 %3111, i8* %3114, align 1
  %3115 = load i64, i64* %RBP.i, align 8
  %3116 = add i64 %3115, -24
  %3117 = load i64, i64* %3, align 8
  %3118 = add i64 %3117, 4
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3116 to i64*
  %3120 = load i64, i64* %3119, align 8
  store i64 %3120, i64* %RCX.i2209, align 8
  %3121 = add i64 %3115, -12
  %3122 = add i64 %3117, 7
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RAX.i2139, align 8
  store i64 %3125, i64* %RDX.i2212, align 8
  %3126 = add i64 %3120, %3125
  %3127 = add i64 %3117, 13
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i8*
  %3129 = load i8, i8* %3128, align 1
  store i8 %3129, i8* %SIL.i2113, align 1
  %3130 = add i64 %3115, -54
  %3131 = add i64 %3117, 17
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i8*
  store i8 %3129, i8* %3132, align 1
  %3133 = load i64, i64* %RBP.i, align 8
  %3134 = add i64 %3133, -53
  %3135 = load i64, i64* %3, align 8
  %3136 = add i64 %3135, 4
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3134 to i8*
  %3138 = load i8, i8* %3137, align 1
  %3139 = zext i8 %3138 to i64
  store i64 %3139, i64* %RAX.i2139, align 8
  %3140 = add i64 %3133, -54
  %3141 = add i64 %3135, 8
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i8*
  %3143 = load i8, i8* %3142, align 1
  %3144 = zext i8 %3143 to i64
  store i64 %3144, i64* %RDI.i2168, align 8
  %3145 = zext i8 %3138 to i32
  %3146 = zext i8 %3143 to i32
  %3147 = sub nsw i32 %3145, %3146
  %3148 = icmp ult i8 %3138, %3143
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %103, align 1
  %3150 = and i32 %3147, 255
  %3151 = tail call i32 @llvm.ctpop.i32(i32 %3150)
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  %3154 = xor i8 %3153, 1
  store i8 %3154, i8* %109, align 1
  %3155 = xor i8 %3143, %3138
  %3156 = zext i8 %3155 to i32
  %3157 = xor i32 %3156, %3147
  %3158 = lshr i32 %3157, 4
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  store i8 %3160, i8* %116, align 1
  %3161 = icmp eq i32 %3147, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %119, align 1
  %3163 = lshr i32 %3147, 31
  %3164 = trunc i32 %3163 to i8
  store i8 %3164, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v731 = select i1 %3161, i64 45, i64 16
  %3165 = add i64 %3135, %.v731
  store i64 %3165, i64* %3, align 8
  br i1 %3161, label %block_.L_40378a, label %block_40376d

block_40376d:                                     ; preds = %block_.L_403729
  %3166 = add i64 %3165, 4
  store i64 %3166, i64* %3, align 8
  %3167 = load i8, i8* %3137, align 1
  %3168 = zext i8 %3167 to i64
  store i64 %3168, i64* %RAX.i2139, align 8
  %3169 = add i64 %3165, 8
  store i64 %3169, i64* %3, align 8
  %3170 = load i8, i8* %3142, align 1
  %3171 = zext i8 %3170 to i64
  store i64 %3171, i64* %RCX.i2209, align 8
  %3172 = zext i8 %3167 to i32
  %3173 = zext i8 %3170 to i32
  %3174 = sub nsw i32 %3172, %3173
  %DL.i444 = bitcast %union.anon* %23 to i8*
  %3175 = icmp sgt i32 %3174, 0
  %3176 = zext i1 %3175 to i8
  store i8 0, i8* %103, align 1
  %3177 = zext i1 %3175 to i32
  %3178 = tail call i32 @llvm.ctpop.i32(i32 %3177)
  %3179 = trunc i32 %3178 to i8
  %3180 = xor i8 %3179, 1
  store i8 %3180, i8* %109, align 1
  %3181 = icmp slt i32 %3174, 1
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3183 = zext i1 %3175 to i64
  store i64 %3183, i64* %RAX.i2139, align 8
  store i8 %3176, i8* %DL.i444, align 1
  %3184 = add i64 %3133, -1
  %3185 = add i64 %3165, 24
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to i8*
  store i8 %3176, i8* %3186, align 1
  %3187 = load i64, i64* %3, align 8
  %3188 = add i64 %3187, 534
  store i64 %3188, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40378a:                                  ; preds = %block_.L_403729
  %3189 = add i64 %3133, -32
  %3190 = add i64 %3165, 4
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i64*
  %3192 = load i64, i64* %3191, align 8
  store i64 %3192, i64* %RAX.i2139, align 8
  %3193 = add i64 %3133, -8
  %3194 = add i64 %3165, 7
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = zext i32 %3196 to i64
  store i64 %3197, i64* %RCX.i2209, align 8
  store i64 %3197, i64* %RDX.i2212, align 8
  %3198 = shl nuw nsw i64 %3197, 1
  %3199 = add i64 %3192, %3198
  %3200 = add i64 %3165, 13
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3199 to i16*
  %3202 = load i16, i16* %3201, align 2
  store i16 %3202, i16* %SI.i1149, align 2
  %3203 = add i64 %3133, -56
  %3204 = add i64 %3165, 17
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i16*
  store i16 %3202, i16* %3205, align 2
  %3206 = load i64, i64* %RBP.i, align 8
  %3207 = add i64 %3206, -32
  %3208 = load i64, i64* %3, align 8
  %3209 = add i64 %3208, 4
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3207 to i64*
  %3211 = load i64, i64* %3210, align 8
  store i64 %3211, i64* %RAX.i2139, align 8
  %3212 = add i64 %3206, -12
  %3213 = add i64 %3208, 7
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = zext i32 %3215 to i64
  store i64 %3216, i64* %RCX.i2209, align 8
  store i64 %3216, i64* %RDX.i2212, align 8
  %3217 = shl nuw nsw i64 %3216, 1
  %3218 = add i64 %3211, %3217
  %3219 = add i64 %3208, 13
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i16*
  %3221 = load i16, i16* %3220, align 2
  store i16 %3221, i16* %SI.i1149, align 2
  %3222 = add i64 %3206, -58
  %3223 = add i64 %3208, 17
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i16*
  store i16 %3221, i16* %3224, align 2
  %3225 = load i64, i64* %RBP.i, align 8
  %3226 = add i64 %3225, -56
  %3227 = load i64, i64* %3, align 8
  %3228 = add i64 %3227, 4
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3226 to i16*
  %3230 = load i16, i16* %3229, align 2
  %3231 = zext i16 %3230 to i64
  store i64 %3231, i64* %RCX.i2209, align 8
  %3232 = add i64 %3225, -58
  %3233 = add i64 %3227, 8
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to i16*
  %3235 = load i16, i16* %3234, align 2
  %3236 = zext i16 %3235 to i64
  store i64 %3236, i64* %RDI.i2168, align 8
  %3237 = zext i16 %3230 to i32
  %3238 = zext i16 %3235 to i32
  %3239 = sub nsw i32 %3237, %3238
  %3240 = icmp ult i16 %3230, %3235
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %103, align 1
  %3242 = and i32 %3239, 255
  %3243 = tail call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %109, align 1
  %3247 = xor i16 %3235, %3230
  %3248 = zext i16 %3247 to i32
  %3249 = xor i32 %3248, %3239
  %3250 = lshr i32 %3249, 4
  %3251 = trunc i32 %3250 to i8
  %3252 = and i8 %3251, 1
  store i8 %3252, i8* %116, align 1
  %3253 = icmp eq i32 %3239, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %119, align 1
  %3255 = lshr i32 %3239, 31
  %3256 = trunc i32 %3255 to i8
  store i8 %3256, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v733 = select i1 %3253, i64 45, i64 16
  %3257 = add i64 %3227, %.v733
  store i64 %3257, i64* %3, align 8
  br i1 %3253, label %block_.L_4037d9, label %block_4037bc

block_4037bc:                                     ; preds = %block_.L_40378a
  %3258 = add i64 %3257, 4
  store i64 %3258, i64* %3, align 8
  %3259 = load i16, i16* %3229, align 2
  %3260 = zext i16 %3259 to i64
  store i64 %3260, i64* %RAX.i2139, align 8
  %3261 = add i64 %3257, 8
  store i64 %3261, i64* %3, align 8
  %3262 = load i16, i16* %3234, align 2
  %3263 = zext i16 %3262 to i64
  store i64 %3263, i64* %RCX.i2209, align 8
  %3264 = zext i16 %3259 to i32
  %3265 = zext i16 %3262 to i32
  %3266 = sub nsw i32 %3264, %3265
  %DL.i379 = bitcast %union.anon* %23 to i8*
  %3267 = icmp sgt i32 %3266, 0
  %3268 = zext i1 %3267 to i8
  store i8 0, i8* %103, align 1
  %3269 = zext i1 %3267 to i32
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269)
  %3271 = trunc i32 %3270 to i8
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %109, align 1
  %3273 = icmp slt i32 %3266, 1
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3275 = zext i1 %3267 to i64
  store i64 %3275, i64* %RAX.i2139, align 8
  store i8 %3268, i8* %DL.i379, align 1
  %3276 = add i64 %3225, -1
  %3277 = add i64 %3257, 24
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i8*
  store i8 %3268, i8* %3278, align 1
  %3279 = load i64, i64* %3, align 8
  %3280 = add i64 %3279, 455
  store i64 %3280, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4037d9:                                  ; preds = %block_.L_40378a
  %3281 = add i64 %3225, -8
  %3282 = add i64 %3257, 3
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = add i32 %3284, 1
  %3286 = zext i32 %3285 to i64
  store i64 %3286, i64* %RAX.i2139, align 8
  %3287 = icmp eq i32 %3284, -1
  %3288 = icmp eq i32 %3285, 0
  %3289 = or i1 %3287, %3288
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %103, align 1
  %3291 = and i32 %3285, 255
  %3292 = tail call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  store i8 %3295, i8* %109, align 1
  %3296 = xor i32 %3285, %3284
  %3297 = lshr i32 %3296, 4
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  store i8 %3299, i8* %116, align 1
  %3300 = zext i1 %3288 to i8
  store i8 %3300, i8* %119, align 1
  %3301 = lshr i32 %3285, 31
  %3302 = trunc i32 %3301 to i8
  store i8 %3302, i8* %122, align 1
  %3303 = lshr i32 %3284, 31
  %3304 = xor i32 %3301, %3303
  %3305 = add nuw nsw i32 %3304, %3301
  %3306 = icmp eq i32 %3305, 2
  %3307 = zext i1 %3306 to i8
  store i8 %3307, i8* %123, align 1
  %3308 = add i64 %3257, 9
  store i64 %3308, i64* %3, align 8
  store i32 %3285, i32* %3283, align 4
  %3309 = load i64, i64* %RBP.i, align 8
  %3310 = add i64 %3309, -12
  %3311 = load i64, i64* %3, align 8
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3310 to i32*
  %3314 = load i32, i32* %3313, align 4
  %3315 = add i32 %3314, 1
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RAX.i2139, align 8
  %3317 = icmp eq i32 %3314, -1
  %3318 = icmp eq i32 %3315, 0
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %103, align 1
  %3321 = and i32 %3315, 255
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  %3325 = xor i8 %3324, 1
  store i8 %3325, i8* %109, align 1
  %3326 = xor i32 %3315, %3314
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  store i8 %3329, i8* %116, align 1
  %3330 = zext i1 %3318 to i8
  store i8 %3330, i8* %119, align 1
  %3331 = lshr i32 %3315, 31
  %3332 = trunc i32 %3331 to i8
  store i8 %3332, i8* %122, align 1
  %3333 = lshr i32 %3314, 31
  %3334 = xor i32 %3331, %3333
  %3335 = add nuw nsw i32 %3334, %3331
  %3336 = icmp eq i32 %3335, 2
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %123, align 1
  %3338 = add i64 %3311, 9
  store i64 %3338, i64* %3, align 8
  store i32 %3315, i32* %3313, align 4
  %3339 = load i64, i64* %RBP.i, align 8
  %3340 = add i64 %3339, -24
  %3341 = load i64, i64* %3, align 8
  %3342 = add i64 %3341, 4
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3340 to i64*
  %3344 = load i64, i64* %3343, align 8
  store i64 %3344, i64* %RCX.i2209, align 8
  %3345 = add i64 %3339, -8
  %3346 = add i64 %3341, 7
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i32*
  %3348 = load i32, i32* %3347, align 4
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RAX.i2139, align 8
  store i64 %3349, i64* %RDX.i2212, align 8
  %3350 = add i64 %3344, %3349
  %3351 = add i64 %3341, 13
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3350 to i8*
  %3353 = load i8, i8* %3352, align 1
  store i8 %3353, i8* %SIL.i2113, align 1
  %3354 = add i64 %3339, -53
  %3355 = add i64 %3341, 17
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3354 to i8*
  store i8 %3353, i8* %3356, align 1
  %3357 = load i64, i64* %RBP.i, align 8
  %3358 = add i64 %3357, -24
  %3359 = load i64, i64* %3, align 8
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3358 to i64*
  %3362 = load i64, i64* %3361, align 8
  store i64 %3362, i64* %RCX.i2209, align 8
  %3363 = add i64 %3357, -12
  %3364 = add i64 %3359, 7
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = zext i32 %3366 to i64
  store i64 %3367, i64* %RAX.i2139, align 8
  store i64 %3367, i64* %RDX.i2212, align 8
  %3368 = add i64 %3362, %3367
  %3369 = add i64 %3359, 13
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i8*
  %3371 = load i8, i8* %3370, align 1
  store i8 %3371, i8* %SIL.i2113, align 1
  %3372 = add i64 %3357, -54
  %3373 = add i64 %3359, 17
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i8*
  store i8 %3371, i8* %3374, align 1
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -53
  %3377 = load i64, i64* %3, align 8
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3376 to i8*
  %3380 = load i8, i8* %3379, align 1
  %3381 = zext i8 %3380 to i64
  store i64 %3381, i64* %RAX.i2139, align 8
  %3382 = add i64 %3375, -54
  %3383 = add i64 %3377, 8
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i8*
  %3385 = load i8, i8* %3384, align 1
  %3386 = zext i8 %3385 to i64
  store i64 %3386, i64* %RDI.i2168, align 8
  %3387 = zext i8 %3380 to i32
  %3388 = zext i8 %3385 to i32
  %3389 = sub nsw i32 %3387, %3388
  %3390 = icmp ult i8 %3380, %3385
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %103, align 1
  %3392 = and i32 %3389, 255
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %109, align 1
  %3397 = xor i8 %3385, %3380
  %3398 = zext i8 %3397 to i32
  %3399 = xor i32 %3398, %3389
  %3400 = lshr i32 %3399, 4
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  store i8 %3402, i8* %116, align 1
  %3403 = icmp eq i32 %3389, 0
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %119, align 1
  %3405 = lshr i32 %3389, 31
  %3406 = trunc i32 %3405 to i8
  store i8 %3406, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v735 = select i1 %3403, i64 45, i64 16
  %3407 = add i64 %3377, %.v735
  store i64 %3407, i64* %3, align 8
  br i1 %3403, label %block_.L_40383a, label %block_40381d

block_40381d:                                     ; preds = %block_.L_4037d9
  %3408 = add i64 %3407, 4
  store i64 %3408, i64* %3, align 8
  %3409 = load i8, i8* %3379, align 1
  %3410 = zext i8 %3409 to i64
  store i64 %3410, i64* %RAX.i2139, align 8
  %3411 = add i64 %3407, 8
  store i64 %3411, i64* %3, align 8
  %3412 = load i8, i8* %3384, align 1
  %3413 = zext i8 %3412 to i64
  store i64 %3413, i64* %RCX.i2209, align 8
  %3414 = zext i8 %3409 to i32
  %3415 = zext i8 %3412 to i32
  %3416 = sub nsw i32 %3414, %3415
  %DL.i298 = bitcast %union.anon* %23 to i8*
  %3417 = icmp sgt i32 %3416, 0
  %3418 = zext i1 %3417 to i8
  store i8 0, i8* %103, align 1
  %3419 = zext i1 %3417 to i32
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = xor i8 %3421, 1
  store i8 %3422, i8* %109, align 1
  %3423 = icmp slt i32 %3416, 1
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3425 = zext i1 %3417 to i64
  store i64 %3425, i64* %RAX.i2139, align 8
  store i8 %3418, i8* %DL.i298, align 1
  %3426 = add i64 %3375, -1
  %3427 = add i64 %3407, 24
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i8*
  store i8 %3418, i8* %3428, align 1
  %3429 = load i64, i64* %3, align 8
  %3430 = add i64 %3429, 358
  store i64 %3430, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40383a:                                  ; preds = %block_.L_4037d9
  %3431 = add i64 %3375, -32
  %3432 = add i64 %3407, 4
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3431 to i64*
  %3434 = load i64, i64* %3433, align 8
  store i64 %3434, i64* %RAX.i2139, align 8
  %3435 = add i64 %3375, -8
  %3436 = add i64 %3407, 7
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RCX.i2209, align 8
  store i64 %3439, i64* %RDX.i2212, align 8
  %3440 = shl nuw nsw i64 %3439, 1
  %3441 = add i64 %3434, %3440
  %3442 = add i64 %3407, 13
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i16*
  %3444 = load i16, i16* %3443, align 2
  store i16 %3444, i16* %SI.i1149, align 2
  %3445 = add i64 %3375, -56
  %3446 = add i64 %3407, 17
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i16*
  store i16 %3444, i16* %3447, align 2
  %3448 = load i64, i64* %RBP.i, align 8
  %3449 = add i64 %3448, -32
  %3450 = load i64, i64* %3, align 8
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3449 to i64*
  %3453 = load i64, i64* %3452, align 8
  store i64 %3453, i64* %RAX.i2139, align 8
  %3454 = add i64 %3448, -12
  %3455 = add i64 %3450, 7
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RCX.i2209, align 8
  store i64 %3458, i64* %RDX.i2212, align 8
  %3459 = shl nuw nsw i64 %3458, 1
  %3460 = add i64 %3453, %3459
  %3461 = add i64 %3450, 13
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i16*
  %3463 = load i16, i16* %3462, align 2
  store i16 %3463, i16* %SI.i1149, align 2
  %3464 = add i64 %3448, -58
  %3465 = add i64 %3450, 17
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i16*
  store i16 %3463, i16* %3466, align 2
  %3467 = load i64, i64* %RBP.i, align 8
  %3468 = add i64 %3467, -56
  %3469 = load i64, i64* %3, align 8
  %3470 = add i64 %3469, 4
  store i64 %3470, i64* %3, align 8
  %3471 = inttoptr i64 %3468 to i16*
  %3472 = load i16, i16* %3471, align 2
  %3473 = zext i16 %3472 to i64
  store i64 %3473, i64* %RCX.i2209, align 8
  %3474 = add i64 %3467, -58
  %3475 = add i64 %3469, 8
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i16*
  %3477 = load i16, i16* %3476, align 2
  %3478 = zext i16 %3477 to i64
  store i64 %3478, i64* %RDI.i2168, align 8
  %3479 = zext i16 %3472 to i32
  %3480 = zext i16 %3477 to i32
  %3481 = sub nsw i32 %3479, %3480
  %3482 = icmp ult i16 %3472, %3477
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %103, align 1
  %3484 = and i32 %3481, 255
  %3485 = tail call i32 @llvm.ctpop.i32(i32 %3484)
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  %3488 = xor i8 %3487, 1
  store i8 %3488, i8* %109, align 1
  %3489 = xor i16 %3477, %3472
  %3490 = zext i16 %3489 to i32
  %3491 = xor i32 %3490, %3481
  %3492 = lshr i32 %3491, 4
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  store i8 %3494, i8* %116, align 1
  %3495 = icmp eq i32 %3481, 0
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %119, align 1
  %3497 = lshr i32 %3481, 31
  %3498 = trunc i32 %3497 to i8
  store i8 %3498, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v737 = select i1 %3495, i64 45, i64 16
  %3499 = add i64 %3469, %.v737
  store i64 %3499, i64* %3, align 8
  br i1 %3495, label %block_.L_403889, label %block_40386c

block_40386c:                                     ; preds = %block_.L_40383a
  %3500 = add i64 %3499, 4
  store i64 %3500, i64* %3, align 8
  %3501 = load i16, i16* %3471, align 2
  %3502 = zext i16 %3501 to i64
  store i64 %3502, i64* %RAX.i2139, align 8
  %3503 = add i64 %3499, 8
  store i64 %3503, i64* %3, align 8
  %3504 = load i16, i16* %3476, align 2
  %3505 = zext i16 %3504 to i64
  store i64 %3505, i64* %RCX.i2209, align 8
  %3506 = zext i16 %3501 to i32
  %3507 = zext i16 %3504 to i32
  %3508 = sub nsw i32 %3506, %3507
  %DL.i233 = bitcast %union.anon* %23 to i8*
  %3509 = icmp sgt i32 %3508, 0
  %3510 = zext i1 %3509 to i8
  store i8 0, i8* %103, align 1
  %3511 = zext i1 %3509 to i32
  %3512 = tail call i32 @llvm.ctpop.i32(i32 %3511)
  %3513 = trunc i32 %3512 to i8
  %3514 = xor i8 %3513, 1
  store i8 %3514, i8* %109, align 1
  %3515 = icmp slt i32 %3508, 1
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3517 = zext i1 %3509 to i64
  store i64 %3517, i64* %RAX.i2139, align 8
  store i8 %3510, i8* %DL.i233, align 1
  %3518 = add i64 %3467, -1
  %3519 = add i64 %3499, 24
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i8*
  store i8 %3510, i8* %3520, align 1
  %3521 = load i64, i64* %3, align 8
  %3522 = add i64 %3521, 279
  store i64 %3522, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403889:                                  ; preds = %block_.L_40383a
  %3523 = add i64 %3467, -8
  %3524 = add i64 %3499, 3
  store i64 %3524, i64* %3, align 8
  %3525 = inttoptr i64 %3523 to i32*
  %3526 = load i32, i32* %3525, align 4
  %3527 = add i32 %3526, 1
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RAX.i2139, align 8
  %3529 = icmp eq i32 %3526, -1
  %3530 = icmp eq i32 %3527, 0
  %3531 = or i1 %3529, %3530
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %103, align 1
  %3533 = and i32 %3527, 255
  %3534 = tail call i32 @llvm.ctpop.i32(i32 %3533)
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  %3537 = xor i8 %3536, 1
  store i8 %3537, i8* %109, align 1
  %3538 = xor i32 %3527, %3526
  %3539 = lshr i32 %3538, 4
  %3540 = trunc i32 %3539 to i8
  %3541 = and i8 %3540, 1
  store i8 %3541, i8* %116, align 1
  %3542 = zext i1 %3530 to i8
  store i8 %3542, i8* %119, align 1
  %3543 = lshr i32 %3527, 31
  %3544 = trunc i32 %3543 to i8
  store i8 %3544, i8* %122, align 1
  %3545 = lshr i32 %3526, 31
  %3546 = xor i32 %3543, %3545
  %3547 = add nuw nsw i32 %3546, %3543
  %3548 = icmp eq i32 %3547, 2
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %123, align 1
  %3550 = add i64 %3499, 9
  store i64 %3550, i64* %3, align 8
  store i32 %3527, i32* %3525, align 4
  %3551 = load i64, i64* %RBP.i, align 8
  %3552 = add i64 %3551, -12
  %3553 = load i64, i64* %3, align 8
  %3554 = add i64 %3553, 3
  store i64 %3554, i64* %3, align 8
  %3555 = inttoptr i64 %3552 to i32*
  %3556 = load i32, i32* %3555, align 4
  %3557 = add i32 %3556, 1
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RAX.i2139, align 8
  %3559 = icmp eq i32 %3556, -1
  %3560 = icmp eq i32 %3557, 0
  %3561 = or i1 %3559, %3560
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %103, align 1
  %3563 = and i32 %3557, 255
  %3564 = tail call i32 @llvm.ctpop.i32(i32 %3563)
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = xor i8 %3566, 1
  store i8 %3567, i8* %109, align 1
  %3568 = xor i32 %3557, %3556
  %3569 = lshr i32 %3568, 4
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  store i8 %3571, i8* %116, align 1
  %3572 = zext i1 %3560 to i8
  store i8 %3572, i8* %119, align 1
  %3573 = lshr i32 %3557, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %122, align 1
  %3575 = lshr i32 %3556, 31
  %3576 = xor i32 %3573, %3575
  %3577 = add nuw nsw i32 %3576, %3573
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %123, align 1
  %3580 = add i64 %3553, 9
  store i64 %3580, i64* %3, align 8
  store i32 %3557, i32* %3555, align 4
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -24
  %3583 = load i64, i64* %3, align 8
  %3584 = add i64 %3583, 4
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3582 to i64*
  %3586 = load i64, i64* %3585, align 8
  store i64 %3586, i64* %RCX.i2209, align 8
  %3587 = add i64 %3581, -8
  %3588 = add i64 %3583, 7
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RAX.i2139, align 8
  store i64 %3591, i64* %RDX.i2212, align 8
  %3592 = add i64 %3586, %3591
  %3593 = add i64 %3583, 13
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3592 to i8*
  %3595 = load i8, i8* %3594, align 1
  store i8 %3595, i8* %SIL.i2113, align 1
  %3596 = add i64 %3581, -53
  %3597 = add i64 %3583, 17
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i8*
  store i8 %3595, i8* %3598, align 1
  %3599 = load i64, i64* %RBP.i, align 8
  %3600 = add i64 %3599, -24
  %3601 = load i64, i64* %3, align 8
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3600 to i64*
  %3604 = load i64, i64* %3603, align 8
  store i64 %3604, i64* %RCX.i2209, align 8
  %3605 = add i64 %3599, -12
  %3606 = add i64 %3601, 7
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RAX.i2139, align 8
  store i64 %3609, i64* %RDX.i2212, align 8
  %3610 = add i64 %3604, %3609
  %3611 = add i64 %3601, 13
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i8*
  %3613 = load i8, i8* %3612, align 1
  store i8 %3613, i8* %SIL.i2113, align 1
  %3614 = add i64 %3599, -54
  %3615 = add i64 %3601, 17
  store i64 %3615, i64* %3, align 8
  %3616 = inttoptr i64 %3614 to i8*
  store i8 %3613, i8* %3616, align 1
  %3617 = load i64, i64* %RBP.i, align 8
  %3618 = add i64 %3617, -53
  %3619 = load i64, i64* %3, align 8
  %3620 = add i64 %3619, 4
  store i64 %3620, i64* %3, align 8
  %3621 = inttoptr i64 %3618 to i8*
  %3622 = load i8, i8* %3621, align 1
  %3623 = zext i8 %3622 to i64
  store i64 %3623, i64* %RAX.i2139, align 8
  %3624 = add i64 %3617, -54
  %3625 = add i64 %3619, 8
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i8*
  %3627 = load i8, i8* %3626, align 1
  %3628 = zext i8 %3627 to i64
  store i64 %3628, i64* %RDI.i2168, align 8
  %3629 = zext i8 %3622 to i32
  %3630 = zext i8 %3627 to i32
  %3631 = sub nsw i32 %3629, %3630
  %3632 = icmp ult i8 %3622, %3627
  %3633 = zext i1 %3632 to i8
  store i8 %3633, i8* %103, align 1
  %3634 = and i32 %3631, 255
  %3635 = tail call i32 @llvm.ctpop.i32(i32 %3634)
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  %3638 = xor i8 %3637, 1
  store i8 %3638, i8* %109, align 1
  %3639 = xor i8 %3627, %3622
  %3640 = zext i8 %3639 to i32
  %3641 = xor i32 %3640, %3631
  %3642 = lshr i32 %3641, 4
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  store i8 %3644, i8* %116, align 1
  %3645 = icmp eq i32 %3631, 0
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %119, align 1
  %3647 = lshr i32 %3631, 31
  %3648 = trunc i32 %3647 to i8
  store i8 %3648, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v739 = select i1 %3645, i64 45, i64 16
  %3649 = add i64 %3619, %.v739
  store i64 %3649, i64* %3, align 8
  br i1 %3645, label %block_.L_4038ea, label %block_4038cd

block_4038cd:                                     ; preds = %block_.L_403889
  %3650 = add i64 %3649, 4
  store i64 %3650, i64* %3, align 8
  %3651 = load i8, i8* %3621, align 1
  %3652 = zext i8 %3651 to i64
  store i64 %3652, i64* %RAX.i2139, align 8
  %3653 = add i64 %3649, 8
  store i64 %3653, i64* %3, align 8
  %3654 = load i8, i8* %3626, align 1
  %3655 = zext i8 %3654 to i64
  store i64 %3655, i64* %RCX.i2209, align 8
  %3656 = zext i8 %3651 to i32
  %3657 = zext i8 %3654 to i32
  %3658 = sub nsw i32 %3656, %3657
  %DL.i153 = bitcast %union.anon* %23 to i8*
  %3659 = icmp sgt i32 %3658, 0
  %3660 = zext i1 %3659 to i8
  store i8 0, i8* %103, align 1
  %3661 = zext i1 %3659 to i32
  %3662 = tail call i32 @llvm.ctpop.i32(i32 %3661)
  %3663 = trunc i32 %3662 to i8
  %3664 = xor i8 %3663, 1
  store i8 %3664, i8* %109, align 1
  %3665 = icmp slt i32 %3658, 1
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3667 = zext i1 %3659 to i64
  store i64 %3667, i64* %RAX.i2139, align 8
  store i8 %3660, i8* %DL.i153, align 1
  %3668 = add i64 %3617, -1
  %3669 = add i64 %3649, 24
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i8*
  store i8 %3660, i8* %3670, align 1
  %3671 = load i64, i64* %3, align 8
  %3672 = add i64 %3671, 182
  store i64 %3672, i64* %3, align 8
  br label %block_.L_40399b

block_.L_4038ea:                                  ; preds = %block_.L_403889
  %3673 = add i64 %3617, -32
  %3674 = add i64 %3649, 4
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i64*
  %3676 = load i64, i64* %3675, align 8
  store i64 %3676, i64* %RAX.i2139, align 8
  %3677 = add i64 %3617, -8
  %3678 = add i64 %3649, 7
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %RCX.i2209, align 8
  store i64 %3681, i64* %RDX.i2212, align 8
  %3682 = shl nuw nsw i64 %3681, 1
  %3683 = add i64 %3676, %3682
  %3684 = add i64 %3649, 13
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i16*
  %3686 = load i16, i16* %3685, align 2
  store i16 %3686, i16* %SI.i1149, align 2
  %3687 = add i64 %3617, -56
  %3688 = add i64 %3649, 17
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i16*
  store i16 %3686, i16* %3689, align 2
  %3690 = load i64, i64* %RBP.i, align 8
  %3691 = add i64 %3690, -32
  %3692 = load i64, i64* %3, align 8
  %3693 = add i64 %3692, 4
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3691 to i64*
  %3695 = load i64, i64* %3694, align 8
  store i64 %3695, i64* %RAX.i2139, align 8
  %3696 = add i64 %3690, -12
  %3697 = add i64 %3692, 7
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = zext i32 %3699 to i64
  store i64 %3700, i64* %RCX.i2209, align 8
  store i64 %3700, i64* %RDX.i2212, align 8
  %3701 = shl nuw nsw i64 %3700, 1
  %3702 = add i64 %3695, %3701
  %3703 = add i64 %3692, 13
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3702 to i16*
  %3705 = load i16, i16* %3704, align 2
  store i16 %3705, i16* %SI.i1149, align 2
  %3706 = add i64 %3690, -58
  %3707 = add i64 %3692, 17
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i16*
  store i16 %3705, i16* %3708, align 2
  %3709 = load i64, i64* %RBP.i, align 8
  %3710 = add i64 %3709, -56
  %3711 = load i64, i64* %3, align 8
  %3712 = add i64 %3711, 4
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3710 to i16*
  %3714 = load i16, i16* %3713, align 2
  %3715 = zext i16 %3714 to i64
  store i64 %3715, i64* %RCX.i2209, align 8
  %3716 = add i64 %3709, -58
  %3717 = add i64 %3711, 8
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i16*
  %3719 = load i16, i16* %3718, align 2
  %3720 = zext i16 %3719 to i64
  store i64 %3720, i64* %RDI.i2168, align 8
  %3721 = zext i16 %3714 to i32
  %3722 = zext i16 %3719 to i32
  %3723 = sub nsw i32 %3721, %3722
  %3724 = icmp ult i16 %3714, %3719
  %3725 = zext i1 %3724 to i8
  store i8 %3725, i8* %103, align 1
  %3726 = and i32 %3723, 255
  %3727 = tail call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  store i8 %3730, i8* %109, align 1
  %3731 = xor i16 %3719, %3714
  %3732 = zext i16 %3731 to i32
  %3733 = xor i32 %3732, %3723
  %3734 = lshr i32 %3733, 4
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  store i8 %3736, i8* %116, align 1
  %3737 = icmp eq i32 %3723, 0
  %3738 = zext i1 %3737 to i8
  store i8 %3738, i8* %119, align 1
  %3739 = lshr i32 %3723, 31
  %3740 = trunc i32 %3739 to i8
  store i8 %3740, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %.v741 = select i1 %3737, i64 45, i64 16
  %3741 = add i64 %3711, %.v741
  store i64 %3741, i64* %3, align 8
  br i1 %3737, label %block_.L_403939, label %block_40391c

block_40391c:                                     ; preds = %block_.L_4038ea
  %3742 = add i64 %3741, 4
  store i64 %3742, i64* %3, align 8
  %3743 = load i16, i16* %3713, align 2
  %3744 = zext i16 %3743 to i64
  store i64 %3744, i64* %RAX.i2139, align 8
  %3745 = add i64 %3741, 8
  store i64 %3745, i64* %3, align 8
  %3746 = load i16, i16* %3718, align 2
  %3747 = zext i16 %3746 to i64
  store i64 %3747, i64* %RCX.i2209, align 8
  %3748 = zext i16 %3743 to i32
  %3749 = zext i16 %3746 to i32
  %3750 = sub nsw i32 %3748, %3749
  %DL.i92 = bitcast %union.anon* %23 to i8*
  %3751 = icmp sgt i32 %3750, 0
  %3752 = zext i1 %3751 to i8
  store i8 0, i8* %103, align 1
  %3753 = zext i1 %3751 to i32
  %3754 = tail call i32 @llvm.ctpop.i32(i32 %3753)
  %3755 = trunc i32 %3754 to i8
  %3756 = xor i8 %3755, 1
  store i8 %3756, i8* %109, align 1
  %3757 = icmp slt i32 %3750, 1
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %119, align 1
  store i8 0, i8* %122, align 1
  store i8 0, i8* %123, align 1
  store i8 0, i8* %116, align 1
  %3759 = zext i1 %3751 to i64
  store i64 %3759, i64* %RAX.i2139, align 8
  store i8 %3752, i8* %DL.i92, align 1
  %3760 = add i64 %3709, -1
  %3761 = add i64 %3741, 24
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3760 to i8*
  store i8 %3752, i8* %3762, align 1
  %3763 = load i64, i64* %3, align 8
  %3764 = add i64 %3763, 103
  store i64 %3764, i64* %3, align 8
  br label %block_.L_40399b

block_.L_403939:                                  ; preds = %block_.L_4038ea
  %3765 = add i64 %3709, -8
  %3766 = add i64 %3741, 3
  store i64 %3766, i64* %3, align 8
  %3767 = inttoptr i64 %3765 to i32*
  %3768 = load i32, i32* %3767, align 4
  %3769 = add i32 %3768, 1
  %3770 = zext i32 %3769 to i64
  store i64 %3770, i64* %RAX.i2139, align 8
  %3771 = icmp eq i32 %3768, -1
  %3772 = icmp eq i32 %3769, 0
  %3773 = or i1 %3771, %3772
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %103, align 1
  %3775 = and i32 %3769, 255
  %3776 = tail call i32 @llvm.ctpop.i32(i32 %3775)
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  %3779 = xor i8 %3778, 1
  store i8 %3779, i8* %109, align 1
  %3780 = xor i32 %3769, %3768
  %3781 = lshr i32 %3780, 4
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  store i8 %3783, i8* %116, align 1
  %3784 = zext i1 %3772 to i8
  store i8 %3784, i8* %119, align 1
  %3785 = lshr i32 %3769, 31
  %3786 = trunc i32 %3785 to i8
  store i8 %3786, i8* %122, align 1
  %3787 = lshr i32 %3768, 31
  %3788 = xor i32 %3785, %3787
  %3789 = add nuw nsw i32 %3788, %3785
  %3790 = icmp eq i32 %3789, 2
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %123, align 1
  %3792 = add i64 %3741, 9
  store i64 %3792, i64* %3, align 8
  store i32 %3769, i32* %3767, align 4
  %3793 = load i64, i64* %RBP.i, align 8
  %3794 = add i64 %3793, -12
  %3795 = load i64, i64* %3, align 8
  %3796 = add i64 %3795, 3
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3794 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = add i32 %3798, 1
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RAX.i2139, align 8
  %3801 = icmp eq i32 %3798, -1
  %3802 = icmp eq i32 %3799, 0
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %103, align 1
  %3805 = and i32 %3799, 255
  %3806 = tail call i32 @llvm.ctpop.i32(i32 %3805)
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  %3809 = xor i8 %3808, 1
  store i8 %3809, i8* %109, align 1
  %3810 = xor i32 %3799, %3798
  %3811 = lshr i32 %3810, 4
  %3812 = trunc i32 %3811 to i8
  %3813 = and i8 %3812, 1
  store i8 %3813, i8* %116, align 1
  %3814 = zext i1 %3802 to i8
  store i8 %3814, i8* %119, align 1
  %3815 = lshr i32 %3799, 31
  %3816 = trunc i32 %3815 to i8
  store i8 %3816, i8* %122, align 1
  %3817 = lshr i32 %3798, 31
  %3818 = xor i32 %3815, %3817
  %3819 = add nuw nsw i32 %3818, %3815
  %3820 = icmp eq i32 %3819, 2
  %3821 = zext i1 %3820 to i8
  store i8 %3821, i8* %123, align 1
  %3822 = add i64 %3795, 9
  store i64 %3822, i64* %3, align 8
  store i32 %3799, i32* %3797, align 4
  %3823 = load i64, i64* %RBP.i, align 8
  %3824 = add i64 %3823, -8
  %3825 = load i64, i64* %3, align 8
  %3826 = add i64 %3825, 3
  store i64 %3826, i64* %3, align 8
  %3827 = inttoptr i64 %3824 to i32*
  %3828 = load i32, i32* %3827, align 4
  %3829 = zext i32 %3828 to i64
  store i64 %3829, i64* %RAX.i2139, align 8
  %3830 = add i64 %3823, -36
  %3831 = add i64 %3825, 6
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3830 to i32*
  %3833 = load i32, i32* %3832, align 4
  %3834 = sub i32 %3828, %3833
  %3835 = icmp ult i32 %3828, %3833
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %103, align 1
  %3837 = and i32 %3834, 255
  %3838 = tail call i32 @llvm.ctpop.i32(i32 %3837)
  %3839 = trunc i32 %3838 to i8
  %3840 = and i8 %3839, 1
  %3841 = xor i8 %3840, 1
  store i8 %3841, i8* %109, align 1
  %3842 = xor i32 %3833, %3828
  %3843 = xor i32 %3842, %3834
  %3844 = lshr i32 %3843, 4
  %3845 = trunc i32 %3844 to i8
  %3846 = and i8 %3845, 1
  store i8 %3846, i8* %116, align 1
  %3847 = icmp eq i32 %3834, 0
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %119, align 1
  %3849 = lshr i32 %3834, 31
  %3850 = trunc i32 %3849 to i8
  store i8 %3850, i8* %122, align 1
  %3851 = lshr i32 %3828, 31
  %3852 = lshr i32 %3833, 31
  %3853 = xor i32 %3852, %3851
  %3854 = xor i32 %3849, %3851
  %3855 = add nuw nsw i32 %3854, %3853
  %3856 = icmp eq i32 %3855, 2
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %123, align 1
  %.v743 = select i1 %3835, i64 23, i64 12
  %3858 = add i64 %3825, %.v743
  store i64 %3858, i64* %3, align 8
  br i1 %3835, label %block_.L_403962, label %block_403957

block_403957:                                     ; preds = %block_.L_403939
  %3859 = add i64 %3858, 3
  store i64 %3859, i64* %3, align 8
  %3860 = load i32, i32* %3832, align 4
  %3861 = zext i32 %3860 to i64
  store i64 %3861, i64* %RAX.i2139, align 8
  %3862 = add i64 %3858, 6
  store i64 %3862, i64* %3, align 8
  %3863 = load i32, i32* %3827, align 4
  %3864 = sub i32 %3863, %3860
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RCX.i2209, align 8
  %3866 = icmp ult i32 %3863, %3860
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %103, align 1
  %3868 = and i32 %3864, 255
  %3869 = tail call i32 @llvm.ctpop.i32(i32 %3868)
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  store i8 %3872, i8* %109, align 1
  %3873 = xor i32 %3860, %3863
  %3874 = xor i32 %3873, %3864
  %3875 = lshr i32 %3874, 4
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  store i8 %3877, i8* %116, align 1
  %3878 = icmp eq i32 %3864, 0
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %119, align 1
  %3880 = lshr i32 %3864, 31
  %3881 = trunc i32 %3880 to i8
  store i8 %3881, i8* %122, align 1
  %3882 = lshr i32 %3863, 31
  %3883 = lshr i32 %3860, 31
  %3884 = xor i32 %3883, %3882
  %3885 = xor i32 %3880, %3882
  %3886 = add nuw nsw i32 %3885, %3884
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %123, align 1
  %3889 = add i64 %3858, 11
  store i64 %3889, i64* %3, align 8
  store i32 %3864, i32* %3827, align 4
  %.pre683 = load i64, i64* %RBP.i, align 8
  %.pre684 = load i64, i64* %3, align 8
  br label %block_.L_403962

block_.L_403962:                                  ; preds = %block_403957, %block_.L_403939
  %3890 = phi i64 [ %.pre684, %block_403957 ], [ %3858, %block_.L_403939 ]
  %3891 = phi i64 [ %.pre683, %block_403957 ], [ %3823, %block_.L_403939 ]
  %3892 = add i64 %3891, -12
  %3893 = add i64 %3890, 3
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %RAX.i2139, align 8
  %3897 = add i64 %3891, -36
  %3898 = add i64 %3890, 6
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i32*
  %3900 = load i32, i32* %3899, align 4
  %3901 = sub i32 %3895, %3900
  %3902 = icmp ult i32 %3895, %3900
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %103, align 1
  %3904 = and i32 %3901, 255
  %3905 = tail call i32 @llvm.ctpop.i32(i32 %3904)
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = xor i8 %3907, 1
  store i8 %3908, i8* %109, align 1
  %3909 = xor i32 %3900, %3895
  %3910 = xor i32 %3909, %3901
  %3911 = lshr i32 %3910, 4
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  store i8 %3913, i8* %116, align 1
  %3914 = icmp eq i32 %3901, 0
  %3915 = zext i1 %3914 to i8
  store i8 %3915, i8* %119, align 1
  %3916 = lshr i32 %3901, 31
  %3917 = trunc i32 %3916 to i8
  store i8 %3917, i8* %122, align 1
  %3918 = lshr i32 %3895, 31
  %3919 = lshr i32 %3900, 31
  %3920 = xor i32 %3919, %3918
  %3921 = xor i32 %3916, %3918
  %3922 = add nuw nsw i32 %3921, %3920
  %3923 = icmp eq i32 %3922, 2
  %3924 = zext i1 %3923 to i8
  store i8 %3924, i8* %123, align 1
  %.v744 = select i1 %3902, i64 23, i64 12
  %3925 = add i64 %3890, %.v744
  store i64 %3925, i64* %3, align 8
  br i1 %3902, label %block_.L_403979, label %block_40396e

block_40396e:                                     ; preds = %block_.L_403962
  %3926 = add i64 %3925, 3
  store i64 %3926, i64* %3, align 8
  %3927 = load i32, i32* %3899, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RAX.i2139, align 8
  %3929 = add i64 %3925, 6
  store i64 %3929, i64* %3, align 8
  %3930 = load i32, i32* %3894, align 4
  %3931 = sub i32 %3930, %3927
  %3932 = zext i32 %3931 to i64
  store i64 %3932, i64* %RCX.i2209, align 8
  %3933 = icmp ult i32 %3930, %3927
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %103, align 1
  %3935 = and i32 %3931, 255
  %3936 = tail call i32 @llvm.ctpop.i32(i32 %3935)
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  %3939 = xor i8 %3938, 1
  store i8 %3939, i8* %109, align 1
  %3940 = xor i32 %3927, %3930
  %3941 = xor i32 %3940, %3931
  %3942 = lshr i32 %3941, 4
  %3943 = trunc i32 %3942 to i8
  %3944 = and i8 %3943, 1
  store i8 %3944, i8* %116, align 1
  %3945 = icmp eq i32 %3931, 0
  %3946 = zext i1 %3945 to i8
  store i8 %3946, i8* %119, align 1
  %3947 = lshr i32 %3931, 31
  %3948 = trunc i32 %3947 to i8
  store i8 %3948, i8* %122, align 1
  %3949 = lshr i32 %3930, 31
  %3950 = lshr i32 %3927, 31
  %3951 = xor i32 %3950, %3949
  %3952 = xor i32 %3947, %3949
  %3953 = add nuw nsw i32 %3952, %3951
  %3954 = icmp eq i32 %3953, 2
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %123, align 1
  %3956 = add i64 %3925, 11
  store i64 %3956, i64* %3, align 8
  store i32 %3931, i32* %3894, align 4
  %.pre685 = load i64, i64* %RBP.i, align 8
  %.pre686 = load i64, i64* %3, align 8
  br label %block_.L_403979

block_.L_403979:                                  ; preds = %block_40396e, %block_.L_403962
  %3957 = phi i64 [ %.pre686, %block_40396e ], [ %3925, %block_.L_403962 ]
  %3958 = phi i64 [ %.pre685, %block_40396e ], [ %3891, %block_.L_403962 ]
  %3959 = add i64 %3958, -52
  %3960 = add i64 %3957, 3
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = add i32 %3962, -8
  %3964 = zext i32 %3963 to i64
  store i64 %3964, i64* %RAX.i2139, align 8
  %3965 = icmp ult i32 %3962, 8
  %3966 = zext i1 %3965 to i8
  store i8 %3966, i8* %103, align 1
  %3967 = and i32 %3963, 255
  %3968 = tail call i32 @llvm.ctpop.i32(i32 %3967)
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = xor i8 %3970, 1
  store i8 %3971, i8* %109, align 1
  %3972 = xor i32 %3963, %3962
  %3973 = lshr i32 %3972, 4
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  store i8 %3975, i8* %116, align 1
  %3976 = icmp eq i32 %3963, 0
  %3977 = zext i1 %3976 to i8
  store i8 %3977, i8* %119, align 1
  %3978 = lshr i32 %3963, 31
  %3979 = trunc i32 %3978 to i8
  store i8 %3979, i8* %122, align 1
  %3980 = lshr i32 %3962, 31
  %3981 = xor i32 %3978, %3980
  %3982 = add nuw nsw i32 %3981, %3980
  %3983 = icmp eq i32 %3982, 2
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %123, align 1
  %3985 = add i64 %3957, 9
  store i64 %3985, i64* %3, align 8
  store i32 %3963, i32* %3961, align 4
  %3986 = load i64, i64* %RBP.i, align 8
  %3987 = add i64 %3986, -48
  %3988 = load i64, i64* %3, align 8
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3987 to i64*
  %3991 = load i64, i64* %3990, align 8
  store i64 %3991, i64* %RCX.i2209, align 8
  %3992 = add i64 %3988, 6
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = add i32 %3994, -1
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RAX.i2139, align 8
  %3997 = icmp ne i32 %3994, 0
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %103, align 1
  %3999 = and i32 %3995, 255
  %4000 = tail call i32 @llvm.ctpop.i32(i32 %3999)
  %4001 = trunc i32 %4000 to i8
  %4002 = and i8 %4001, 1
  %4003 = xor i8 %4002, 1
  store i8 %4003, i8* %109, align 1
  %4004 = xor i32 %3994, 16
  %4005 = xor i32 %4004, %3995
  %4006 = lshr i32 %4005, 4
  %4007 = trunc i32 %4006 to i8
  %4008 = and i8 %4007, 1
  store i8 %4008, i8* %116, align 1
  %4009 = icmp eq i32 %3995, 0
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %119, align 1
  %4011 = lshr i32 %3995, 31
  %4012 = trunc i32 %4011 to i8
  store i8 %4012, i8* %122, align 1
  %4013 = lshr i32 %3994, 31
  %4014 = xor i32 %4011, %4013
  %4015 = xor i32 %4011, 1
  %4016 = add nuw nsw i32 %4014, %4015
  %4017 = icmp eq i32 %4016, 2
  %4018 = zext i1 %4017 to i8
  store i8 %4018, i8* %123, align 1
  %4019 = add i64 %3988, 11
  store i64 %4019, i64* %3, align 8
  store i32 %3995, i32* %3993, align 4
  %4020 = load i64, i64* %RBP.i, align 8
  %4021 = add i64 %4020, -52
  %4022 = load i64, i64* %3, align 8
  %4023 = add i64 %4022, 4
  store i64 %4023, i64* %3, align 8
  %4024 = inttoptr i64 %4021 to i32*
  %4025 = load i32, i32* %4024, align 4
  store i8 0, i8* %103, align 1
  %4026 = and i32 %4025, 255
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  store i8 %4030, i8* %109, align 1
  store i8 0, i8* %116, align 1
  %4031 = icmp eq i32 %4025, 0
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %119, align 1
  %4033 = lshr i32 %4025, 31
  %4034 = trunc i32 %4033 to i8
  store i8 %4034, i8* %122, align 1
  store i8 0, i8* %123, align 1
  %4035 = icmp ne i8 %4034, 0
  %.v = select i1 %4035, i64 6, i64 -1478
  %4036 = add i64 %4023, %.v
  store i64 %4036, i64* %3, align 8
  br i1 %4035, label %block_403997, label %block_.L_4033cb

block_403997:                                     ; preds = %block_.L_403979
  %4037 = add i64 %4020, -1
  %4038 = add i64 %4036, 4
  store i64 %4038, i64* %3, align 8
  %4039 = inttoptr i64 %4037 to i8*
  store i8 0, i8* %4039, align 1
  %.pre687 = load i64, i64* %3, align 8
  br label %block_.L_40399b

block_.L_40399b:                                  ; preds = %block_403997, %block_40391c, %block_4038cd, %block_40386c, %block_40381d, %block_4037bc, %block_40376d, %block_40370c, %block_4036bd, %block_40365c, %block_40360d, %block_4035ac, %block_40355d, %block_4034fc, %block_4034ad, %block_40344c, %block_4033fd, %block_403393, %block_403332, %block_4032d1, %block_403270, %block_40320f, %block_4031ae, %block_40314d, %block_4030ec, %block_40308b, %block_40302a, %block_402fc9, %block_402f68
  %4040 = phi i64 [ %.pre687, %block_403997 ], [ %3764, %block_40391c ], [ %3672, %block_4038cd ], [ %3522, %block_40386c ], [ %3430, %block_40381d ], [ %3280, %block_4037bc ], [ %3188, %block_40376d ], [ %3038, %block_40370c ], [ %2946, %block_4036bd ], [ %2796, %block_40365c ], [ %2704, %block_40360d ], [ %2554, %block_4035ac ], [ %2462, %block_40355d ], [ %2312, %block_4034fc ], [ %2220, %block_4034ad ], [ %2070, %block_40344c ], [ %1978, %block_4033fd ], [ %1797, %block_403393 ], [ %1647, %block_403332 ], [ %1497, %block_4032d1 ], [ %1347, %block_403270 ], [ %1197, %block_40320f ], [ %1047, %block_4031ae ], [ %897, %block_40314d ], [ %747, %block_4030ec ], [ %597, %block_40308b ], [ %447, %block_40302a ], [ %297, %block_402fc9 ], [ %147, %block_402f68 ]
  %4041 = load i64, i64* %RBP.i, align 8
  %4042 = add i64 %4041, -1
  %4043 = add i64 %4040, 4
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i8*
  %4045 = load i8, i8* %4044, align 1
  %4046 = zext i8 %4045 to i64
  store i64 %4046, i64* %RAX.i2139, align 8
  %4047 = add i64 %4040, 5
  store i64 %4047, i64* %3, align 8
  %4048 = load i64, i64* %6, align 8
  %4049 = add i64 %4048, 8
  %4050 = inttoptr i64 %4048 to i64*
  %4051 = load i64, i64* %4050, align 8
  store i64 %4051, i64* %RBP.i, align 8
  store i64 %4049, i64* %6, align 8
  %4052 = add i64 %4040, 6
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4049 to i64*
  %4054 = load i64, i64* %4053, align 8
  store i64 %4054, i64* %3, align 8
  %4055 = add i64 %4048, 16
  store i64 %4055, i64* %6, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rcx__rdx_1____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x35__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -53
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movb__al__MINUS0x36__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x35__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
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
define %struct.Memory* @routine_movzbl_MINUS0x36__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -54
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_402f85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_MINUS0x35__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
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
define %struct.Memory* @routine_movzbl_MINUS0x36__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -54
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
define %struct.Memory* @routine_setg__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
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
  store i8 %18, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_movzbl__dl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40399b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb___rcx__rdx_1____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x35__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -53
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x36__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_402fe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403047(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4030a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403109(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40316a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4031cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40322c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40328d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4032ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40334f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4033b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -9
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
define %struct.Memory* @routine_movb___rax__rdx_1____sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x35__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
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
define %struct.Memory* @routine_cmpl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_40341a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__si__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__MINUS0x3a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -58
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403469(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzwl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4034ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403519(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40357a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4035c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40362a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4036da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403729(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40378a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4037d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40383a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4038ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_403962(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_403979(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_subl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_movl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_4033cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
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
