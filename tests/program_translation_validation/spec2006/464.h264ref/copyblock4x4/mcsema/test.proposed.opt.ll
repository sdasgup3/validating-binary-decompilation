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
define %struct.Memory* @copyblock4x4(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i324, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i321, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %3, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %RSI.i321, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i315 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  %28 = add i64 %23, 6
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %26 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %RAX.i315, align 8
  %32 = add i64 %21, -8
  %33 = add i64 %23, 10
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RSI.i321, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %RDI.i324, align 8
  %37 = icmp ugt i64 %35, -5
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1
  %47 = xor i64 %36, %35
  %48 = lshr i64 %47, 4
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %50, i8* %51, align 1
  %52 = icmp eq i64 %36, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1
  %55 = lshr i64 %36, 63
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %35, 63
  %59 = xor i64 %55, %58
  %60 = add nuw nsw i64 %59, %55
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %62, i8* %63, align 1
  %64 = add i64 %23, 21
  store i64 %64, i64* %3, align 8
  store i64 %36, i64* %34, align 8
  %EAX.i301 = bitcast %union.anon* %27 to i32*
  %65 = bitcast i64* %RSI.i321 to i32**
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %EAX.i301, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 2
  store i64 %69, i64* %3, align 8
  store i32 %67, i32* %66, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -16
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RSI.i321, align 8
  %76 = add i64 %75, 16
  %77 = add i64 %72, 7
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX.i315, align 8
  %81 = add i64 %70, -8
  %82 = add i64 %72, 11
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %RSI.i321, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %RDI.i324, align 8
  %86 = icmp ugt i64 %84, -5
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %39, align 1
  %88 = trunc i64 %85 to i32
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %46, align 1
  %94 = xor i64 %85, %84
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %51, align 1
  %98 = icmp eq i64 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %54, align 1
  %100 = lshr i64 %85, 63
  %101 = trunc i64 %100 to i8
  store i8 %101, i8* %57, align 1
  %102 = lshr i64 %84, 63
  %103 = xor i64 %100, %102
  %104 = add nuw nsw i64 %103, %100
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %63, align 1
  %107 = add i64 %72, 22
  store i64 %107, i64* %3, align 8
  store i64 %85, i64* %83, align 8
  %108 = load i32*, i32** %65, align 8
  %109 = load i32, i32* %EAX.i301, align 4
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 2
  store i64 %111, i64* %3, align 8
  store i32 %109, i32* %108, align 4
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -16
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RSI.i321, align 8
  %118 = add i64 %117, 32
  %119 = add i64 %114, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RAX.i315, align 8
  %123 = add i64 %112, -8
  %124 = add i64 %114, 11
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RSI.i321, align 8
  %127 = add i64 %126, 4
  store i64 %127, i64* %RDI.i324, align 8
  %128 = icmp ugt i64 %126, -5
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %39, align 1
  %130 = trunc i64 %127 to i32
  %131 = and i32 %130, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %46, align 1
  %136 = xor i64 %127, %126
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %51, align 1
  %140 = icmp eq i64 %127, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %54, align 1
  %142 = lshr i64 %127, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %57, align 1
  %144 = lshr i64 %126, 63
  %145 = xor i64 %142, %144
  %146 = add nuw nsw i64 %145, %142
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %63, align 1
  %149 = add i64 %114, 22
  store i64 %149, i64* %3, align 8
  store i64 %127, i64* %125, align 8
  %150 = load i32*, i32** %65, align 8
  %151 = load i32, i32* %EAX.i301, align 4
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 2
  store i64 %153, i64* %3, align 8
  store i32 %151, i32* %150, align 4
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -16
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RSI.i321, align 8
  %160 = add i64 %159, 48
  %161 = add i64 %156, 7
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX.i315, align 8
  %165 = add i64 %154, -8
  %166 = add i64 %156, 11
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RSI.i321, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %RDI.i324, align 8
  %170 = icmp ugt i64 %168, -5
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %39, align 1
  %172 = trunc i64 %169 to i32
  %173 = and i32 %172, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %46, align 1
  %178 = xor i64 %169, %168
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %51, align 1
  %182 = icmp eq i64 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %54, align 1
  %184 = lshr i64 %169, 63
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* %57, align 1
  %186 = lshr i64 %168, 63
  %187 = xor i64 %184, %186
  %188 = add nuw nsw i64 %187, %184
  %189 = icmp eq i64 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %63, align 1
  %191 = add i64 %156, 22
  store i64 %191, i64* %3, align 8
  store i64 %169, i64* %167, align 8
  %192 = load i32*, i32** %65, align 8
  %193 = load i32, i32* %EAX.i301, align 4
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 2
  store i64 %195, i64* %3, align 8
  store i32 %193, i32* %192, align 4
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -16
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 4
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %197 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %RSI.i321, align 8
  %202 = add i64 %201, 4
  %203 = add i64 %198, 7
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX.i315, align 8
  %207 = add i64 %196, -8
  %208 = add i64 %198, 11
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RSI.i321, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %RDI.i324, align 8
  %212 = icmp ugt i64 %210, -5
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %39, align 1
  %214 = trunc i64 %211 to i32
  %215 = and i32 %214, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %46, align 1
  %220 = xor i64 %211, %210
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %51, align 1
  %224 = icmp eq i64 %211, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %54, align 1
  %226 = lshr i64 %211, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %57, align 1
  %228 = lshr i64 %210, 63
  %229 = xor i64 %226, %228
  %230 = add nuw nsw i64 %229, %226
  %231 = icmp eq i64 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %63, align 1
  %233 = add i64 %198, 22
  store i64 %233, i64* %3, align 8
  store i64 %211, i64* %209, align 8
  %234 = load i32*, i32** %65, align 8
  %235 = load i32, i32* %EAX.i301, align 4
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 2
  store i64 %237, i64* %3, align 8
  store i32 %235, i32* %234, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -16
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RSI.i321, align 8
  %244 = add i64 %243, 20
  %245 = add i64 %240, 7
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RAX.i315, align 8
  %249 = add i64 %238, -8
  %250 = add i64 %240, 11
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RSI.i321, align 8
  %253 = add i64 %252, 4
  store i64 %253, i64* %RDI.i324, align 8
  %254 = icmp ugt i64 %252, -5
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %39, align 1
  %256 = trunc i64 %253 to i32
  %257 = and i32 %256, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %46, align 1
  %262 = xor i64 %253, %252
  %263 = lshr i64 %262, 4
  %264 = trunc i64 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %51, align 1
  %266 = icmp eq i64 %253, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %54, align 1
  %268 = lshr i64 %253, 63
  %269 = trunc i64 %268 to i8
  store i8 %269, i8* %57, align 1
  %270 = lshr i64 %252, 63
  %271 = xor i64 %268, %270
  %272 = add nuw nsw i64 %271, %268
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %63, align 1
  %275 = add i64 %240, 22
  store i64 %275, i64* %3, align 8
  store i64 %253, i64* %251, align 8
  %276 = load i32*, i32** %65, align 8
  %277 = load i32, i32* %EAX.i301, align 4
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, 2
  store i64 %279, i64* %3, align 8
  store i32 %277, i32* %276, align 4
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -16
  %282 = load i64, i64* %3, align 8
  %283 = add i64 %282, 4
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RSI.i321, align 8
  %286 = add i64 %285, 36
  %287 = add i64 %282, 7
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i315, align 8
  %291 = add i64 %280, -8
  %292 = add i64 %282, 11
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RSI.i321, align 8
  %295 = add i64 %294, 4
  store i64 %295, i64* %RDI.i324, align 8
  %296 = icmp ugt i64 %294, -5
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %39, align 1
  %298 = trunc i64 %295 to i32
  %299 = and i32 %298, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %46, align 1
  %304 = xor i64 %295, %294
  %305 = lshr i64 %304, 4
  %306 = trunc i64 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %51, align 1
  %308 = icmp eq i64 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %54, align 1
  %310 = lshr i64 %295, 63
  %311 = trunc i64 %310 to i8
  store i8 %311, i8* %57, align 1
  %312 = lshr i64 %294, 63
  %313 = xor i64 %310, %312
  %314 = add nuw nsw i64 %313, %310
  %315 = icmp eq i64 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %63, align 1
  %317 = add i64 %282, 22
  store i64 %317, i64* %3, align 8
  store i64 %295, i64* %293, align 8
  %318 = load i32*, i32** %65, align 8
  %319 = load i32, i32* %EAX.i301, align 4
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 2
  store i64 %321, i64* %3, align 8
  store i32 %319, i32* %318, align 4
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -16
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 4
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RSI.i321, align 8
  %328 = add i64 %327, 52
  %329 = add i64 %324, 7
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX.i315, align 8
  %333 = add i64 %322, -8
  %334 = add i64 %324, 11
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RSI.i321, align 8
  %337 = add i64 %336, 4
  store i64 %337, i64* %RDI.i324, align 8
  %338 = icmp ugt i64 %336, -5
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %340 = trunc i64 %337 to i32
  %341 = and i32 %340, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %46, align 1
  %346 = xor i64 %337, %336
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %51, align 1
  %350 = icmp eq i64 %337, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %54, align 1
  %352 = lshr i64 %337, 63
  %353 = trunc i64 %352 to i8
  store i8 %353, i8* %57, align 1
  %354 = lshr i64 %336, 63
  %355 = xor i64 %352, %354
  %356 = add nuw nsw i64 %355, %352
  %357 = icmp eq i64 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %63, align 1
  %359 = add i64 %324, 22
  store i64 %359, i64* %3, align 8
  store i64 %337, i64* %335, align 8
  %360 = load i32*, i32** %65, align 8
  %361 = load i32, i32* %EAX.i301, align 4
  %362 = load i64, i64* %3, align 8
  %363 = add i64 %362, 2
  store i64 %363, i64* %3, align 8
  store i32 %361, i32* %360, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -16
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 4
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RSI.i321, align 8
  %370 = add i64 %369, 8
  %371 = add i64 %366, 7
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i315, align 8
  %375 = add i64 %364, -8
  %376 = add i64 %366, 11
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RSI.i321, align 8
  %379 = add i64 %378, 4
  store i64 %379, i64* %RDI.i324, align 8
  %380 = icmp ugt i64 %378, -5
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1
  %382 = trunc i64 %379 to i32
  %383 = and i32 %382, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %46, align 1
  %388 = xor i64 %379, %378
  %389 = lshr i64 %388, 4
  %390 = trunc i64 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %51, align 1
  %392 = icmp eq i64 %379, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %54, align 1
  %394 = lshr i64 %379, 63
  %395 = trunc i64 %394 to i8
  store i8 %395, i8* %57, align 1
  %396 = lshr i64 %378, 63
  %397 = xor i64 %394, %396
  %398 = add nuw nsw i64 %397, %394
  %399 = icmp eq i64 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %63, align 1
  %401 = add i64 %366, 22
  store i64 %401, i64* %3, align 8
  store i64 %379, i64* %377, align 8
  %402 = load i32*, i32** %65, align 8
  %403 = load i32, i32* %EAX.i301, align 4
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 2
  store i64 %405, i64* %3, align 8
  store i32 %403, i32* %402, align 4
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -16
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 4
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %407 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RSI.i321, align 8
  %412 = add i64 %411, 24
  %413 = add i64 %408, 7
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RAX.i315, align 8
  %417 = add i64 %406, -8
  %418 = add i64 %408, 11
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RSI.i321, align 8
  %421 = add i64 %420, 4
  store i64 %421, i64* %RDI.i324, align 8
  %422 = icmp ugt i64 %420, -5
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %39, align 1
  %424 = trunc i64 %421 to i32
  %425 = and i32 %424, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %46, align 1
  %430 = xor i64 %421, %420
  %431 = lshr i64 %430, 4
  %432 = trunc i64 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %51, align 1
  %434 = icmp eq i64 %421, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %54, align 1
  %436 = lshr i64 %421, 63
  %437 = trunc i64 %436 to i8
  store i8 %437, i8* %57, align 1
  %438 = lshr i64 %420, 63
  %439 = xor i64 %436, %438
  %440 = add nuw nsw i64 %439, %436
  %441 = icmp eq i64 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %63, align 1
  %443 = add i64 %408, 22
  store i64 %443, i64* %3, align 8
  store i64 %421, i64* %419, align 8
  %444 = load i32*, i32** %65, align 8
  %445 = load i32, i32* %EAX.i301, align 4
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 2
  store i64 %447, i64* %3, align 8
  store i32 %445, i32* %444, align 4
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -16
  %450 = load i64, i64* %3, align 8
  %451 = add i64 %450, 4
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RSI.i321, align 8
  %454 = add i64 %453, 40
  %455 = add i64 %450, 7
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i315, align 8
  %459 = add i64 %448, -8
  %460 = add i64 %450, 11
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RSI.i321, align 8
  %463 = add i64 %462, 4
  store i64 %463, i64* %RDI.i324, align 8
  %464 = icmp ugt i64 %462, -5
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %39, align 1
  %466 = trunc i64 %463 to i32
  %467 = and i32 %466, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %46, align 1
  %472 = xor i64 %463, %462
  %473 = lshr i64 %472, 4
  %474 = trunc i64 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %51, align 1
  %476 = icmp eq i64 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %54, align 1
  %478 = lshr i64 %463, 63
  %479 = trunc i64 %478 to i8
  store i8 %479, i8* %57, align 1
  %480 = lshr i64 %462, 63
  %481 = xor i64 %478, %480
  %482 = add nuw nsw i64 %481, %478
  %483 = icmp eq i64 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %63, align 1
  %485 = add i64 %450, 22
  store i64 %485, i64* %3, align 8
  store i64 %463, i64* %461, align 8
  %486 = load i32*, i32** %65, align 8
  %487 = load i32, i32* %EAX.i301, align 4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 2
  store i64 %489, i64* %3, align 8
  store i32 %487, i32* %486, align 4
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -16
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 4
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RSI.i321, align 8
  %496 = add i64 %495, 56
  %497 = add i64 %492, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i315, align 8
  %501 = add i64 %490, -8
  %502 = add i64 %492, 11
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RSI.i321, align 8
  %505 = add i64 %504, 4
  store i64 %505, i64* %RDI.i324, align 8
  %506 = icmp ugt i64 %504, -5
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %39, align 1
  %508 = trunc i64 %505 to i32
  %509 = and i32 %508, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %46, align 1
  %514 = xor i64 %505, %504
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %51, align 1
  %518 = icmp eq i64 %505, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %54, align 1
  %520 = lshr i64 %505, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %57, align 1
  %522 = lshr i64 %504, 63
  %523 = xor i64 %520, %522
  %524 = add nuw nsw i64 %523, %520
  %525 = icmp eq i64 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %63, align 1
  %527 = add i64 %492, 22
  store i64 %527, i64* %3, align 8
  store i64 %505, i64* %503, align 8
  %528 = load i32*, i32** %65, align 8
  %529 = load i32, i32* %EAX.i301, align 4
  %530 = load i64, i64* %3, align 8
  %531 = add i64 %530, 2
  store i64 %531, i64* %3, align 8
  store i32 %529, i32* %528, align 4
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -16
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, 4
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %533 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RSI.i321, align 8
  %538 = add i64 %537, 12
  %539 = add i64 %534, 7
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i315, align 8
  %543 = add i64 %532, -8
  %544 = add i64 %534, 11
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i64*
  %546 = load i64, i64* %545, align 8
  store i64 %546, i64* %RSI.i321, align 8
  %547 = add i64 %546, 4
  store i64 %547, i64* %RDI.i324, align 8
  %548 = icmp ugt i64 %546, -5
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %39, align 1
  %550 = trunc i64 %547 to i32
  %551 = and i32 %550, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %46, align 1
  %556 = xor i64 %547, %546
  %557 = lshr i64 %556, 4
  %558 = trunc i64 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %51, align 1
  %560 = icmp eq i64 %547, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %54, align 1
  %562 = lshr i64 %547, 63
  %563 = trunc i64 %562 to i8
  store i8 %563, i8* %57, align 1
  %564 = lshr i64 %546, 63
  %565 = xor i64 %562, %564
  %566 = add nuw nsw i64 %565, %562
  %567 = icmp eq i64 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %63, align 1
  %569 = add i64 %534, 22
  store i64 %569, i64* %3, align 8
  store i64 %547, i64* %545, align 8
  %570 = load i32*, i32** %65, align 8
  %571 = load i32, i32* %EAX.i301, align 4
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 2
  store i64 %573, i64* %3, align 8
  store i32 %571, i32* %570, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -16
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RSI.i321, align 8
  %580 = add i64 %579, 28
  %581 = add i64 %576, 7
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RAX.i315, align 8
  %585 = add i64 %574, -8
  %586 = add i64 %576, 11
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i64*
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %RSI.i321, align 8
  %589 = add i64 %588, 4
  store i64 %589, i64* %RDI.i324, align 8
  %590 = icmp ugt i64 %588, -5
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %39, align 1
  %592 = trunc i64 %589 to i32
  %593 = and i32 %592, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %46, align 1
  %598 = xor i64 %589, %588
  %599 = lshr i64 %598, 4
  %600 = trunc i64 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %51, align 1
  %602 = icmp eq i64 %589, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %54, align 1
  %604 = lshr i64 %589, 63
  %605 = trunc i64 %604 to i8
  store i8 %605, i8* %57, align 1
  %606 = lshr i64 %588, 63
  %607 = xor i64 %604, %606
  %608 = add nuw nsw i64 %607, %604
  %609 = icmp eq i64 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %63, align 1
  %611 = add i64 %576, 22
  store i64 %611, i64* %3, align 8
  store i64 %589, i64* %587, align 8
  %612 = load i32*, i32** %65, align 8
  %613 = load i32, i32* %EAX.i301, align 4
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 2
  store i64 %615, i64* %3, align 8
  store i32 %613, i32* %612, align 4
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -16
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 4
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RSI.i321, align 8
  %622 = add i64 %621, 44
  %623 = add i64 %618, 7
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i315, align 8
  %627 = add i64 %616, -8
  %628 = add i64 %618, 11
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RSI.i321, align 8
  %631 = add i64 %630, 4
  store i64 %631, i64* %RDI.i324, align 8
  %632 = icmp ugt i64 %630, -5
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %39, align 1
  %634 = trunc i64 %631 to i32
  %635 = and i32 %634, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %46, align 1
  %640 = xor i64 %631, %630
  %641 = lshr i64 %640, 4
  %642 = trunc i64 %641 to i8
  %643 = and i8 %642, 1
  store i8 %643, i8* %51, align 1
  %644 = icmp eq i64 %631, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %54, align 1
  %646 = lshr i64 %631, 63
  %647 = trunc i64 %646 to i8
  store i8 %647, i8* %57, align 1
  %648 = lshr i64 %630, 63
  %649 = xor i64 %646, %648
  %650 = add nuw nsw i64 %649, %646
  %651 = icmp eq i64 %650, 2
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %63, align 1
  %653 = add i64 %618, 22
  store i64 %653, i64* %3, align 8
  store i64 %631, i64* %629, align 8
  %654 = load i32*, i32** %65, align 8
  %655 = load i32, i32* %EAX.i301, align 4
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, 2
  store i64 %657, i64* %3, align 8
  store i32 %655, i32* %654, align 4
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -16
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RSI.i321, align 8
  %664 = add i64 %663, 60
  %665 = add i64 %660, 7
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i315, align 8
  %669 = add i64 %658, -8
  %670 = add i64 %660, 11
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RSI.i321, align 8
  %673 = add i64 %672, 4
  store i64 %673, i64* %RDI.i324, align 8
  %674 = icmp ugt i64 %672, -5
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %39, align 1
  %676 = trunc i64 %673 to i32
  %677 = and i32 %676, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %46, align 1
  %682 = xor i64 %673, %672
  %683 = lshr i64 %682, 4
  %684 = trunc i64 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %51, align 1
  %686 = icmp eq i64 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %54, align 1
  %688 = lshr i64 %673, 63
  %689 = trunc i64 %688 to i8
  store i8 %689, i8* %57, align 1
  %690 = lshr i64 %672, 63
  %691 = xor i64 %688, %690
  %692 = add nuw nsw i64 %691, %688
  %693 = icmp eq i64 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %63, align 1
  %695 = add i64 %660, 22
  store i64 %695, i64* %3, align 8
  store i64 %673, i64* %671, align 8
  %696 = load i32*, i32** %65, align 8
  %697 = load i32, i32* %EAX.i301, align 4
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 2
  store i64 %699, i64* %3, align 8
  store i32 %697, i32* %696, align 4
  %700 = load i64, i64* %3, align 8
  %701 = add i64 %700, 1
  store i64 %701, i64* %3, align 8
  %702 = load i64, i64* %6, align 8
  %703 = add i64 %702, 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RBP.i, align 8
  store i64 %703, i64* %6, align 8
  %706 = add i64 %700, 2
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %703 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %3, align 8
  %709 = add i64 %702, 16
  store i64 %709, i64* %6, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movl__eax____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_0x20__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_0x30__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl_0x14__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl_0x24__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movl_0x34__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_movl_0x8__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0x18__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x28__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movl_0x38__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_movl_0xc__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_0x1c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movl_0x2c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_movl_0x3c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
