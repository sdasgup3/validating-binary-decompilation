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
define %struct.Memory* @trace_doctor(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1050 = bitcast %union.anon* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -12
  %18 = load i32, i32* %ESI.i1050, align 4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1047 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i64, i64* %RDX.i1047, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -32
  %31 = load i64, i64* %RCX.i1044, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -48
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 7
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %36 to i32*
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -44
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 7
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -40
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -36
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %RAX.i1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %DL.i114 = bitcast %union.anon* %22 to i8*
  %RSI.i93 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42a6ef

block_.L_42a6ef:                                  ; preds = %block_.L_42ac75, %entry
  %61 = phi i64 [ %2490, %block_.L_42ac75 ], [ %.pre, %entry ]
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -36
  %64 = add i64 %61, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RAX.i1033, align 8
  %68 = add i64 %62, -8
  %69 = add i64 %61, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RCX.i1044, align 8
  %72 = add i64 %61, 9
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %66, %74
  %76 = icmp ult i32 %66, %74
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %55, align 1
  %78 = and i32 %75, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78)
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %56, align 1
  %83 = xor i32 %74, %66
  %84 = xor i32 %83, %75
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %57, align 1
  %88 = icmp eq i32 %75, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %58, align 1
  %90 = lshr i32 %75, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %59, align 1
  %92 = lshr i32 %66, 31
  %93 = lshr i32 %74, 31
  %94 = xor i32 %93, %92
  %95 = xor i32 %90, %92
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %60, align 1
  %99 = icmp ne i8 %91, 0
  %100 = xor i1 %99, %97
  %.v = select i1 %100, i64 15, i64 1419
  %101 = add i64 %61, %.v
  store i64 %101, i64* %3, align 8
  br i1 %100, label %block_42a6fe, label %block_.L_42ac7a

block_42a6fe:                                     ; preds = %block_.L_42a6ef
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %70, align 8
  store i64 %103, i64* %RAX.i1033, align 8
  %104 = add i64 %103, 8
  %105 = add i64 %101, 8
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RAX.i1033, align 8
  %108 = add i64 %101, 12
  store i64 %108, i64* %3, align 8
  %109 = load i32, i32* %65, align 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %RCX.i1044, align 8
  %111 = add i64 %107, %110
  %112 = add i64 %101, 16
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i8*
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i64
  %116 = and i64 %115, 4294967295
  store i64 %116, i64* %RDX.i1047, align 8
  %117 = sext i8 %114 to i32
  %118 = add nsw i32 %117, -2
  %119 = icmp ult i8 %114, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %55, align 1
  %121 = and i32 %118, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %56, align 1
  %126 = xor i32 %118, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %57, align 1
  %130 = icmp eq i32 %118, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %58, align 1
  %132 = lshr i32 %118, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %59, align 1
  %134 = lshr i32 %117, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %60, align 1
  %.v37 = select i1 %130, i64 25, i64 168
  %139 = add i64 %101, %.v37
  store i64 %139, i64* %3, align 8
  br i1 %130, label %block_42a717, label %block_.L_42a7a6

block_42a717:                                     ; preds = %block_42a6fe
  %140 = add i64 %139, 4
  store i64 %140, i64* %3, align 8
  %141 = load i64, i64* %70, align 8
  store i64 %141, i64* %RAX.i1033, align 8
  %142 = add i64 %141, 8
  %143 = add i64 %139, 8
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RAX.i1033, align 8
  %146 = add i64 %139, 11
  store i64 %146, i64* %3, align 8
  %147 = load i32, i32* %65, align 4
  %148 = add i32 %147, 1
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RCX.i1044, align 8
  %150 = icmp eq i32 %147, -1
  %151 = icmp eq i32 %148, 0
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %55, align 1
  %154 = and i32 %148, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %56, align 1
  %159 = xor i32 %148, %147
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %57, align 1
  %163 = zext i1 %151 to i8
  store i8 %163, i8* %58, align 1
  %164 = lshr i32 %148, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %59, align 1
  %166 = lshr i32 %147, 31
  %167 = xor i32 %164, %166
  %168 = add nuw nsw i32 %167, %164
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %60, align 1
  %171 = sext i32 %148 to i64
  store i64 %171, i64* %RDX.i1047, align 8
  %172 = add i64 %145, %171
  %173 = add i64 %139, 21
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i8*
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i64
  %177 = and i64 %176, 4294967295
  store i64 %177, i64* %RCX.i1044, align 8
  %178 = sext i8 %175 to i32
  %179 = add nsw i32 %178, -3
  %180 = icmp ult i8 %175, 3
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %55, align 1
  %182 = and i32 %179, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %56, align 1
  %187 = xor i32 %179, %178
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %57, align 1
  %191 = icmp eq i32 %179, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %58, align 1
  %193 = lshr i32 %179, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %59, align 1
  %195 = lshr i32 %178, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %60, align 1
  %.v52 = select i1 %191, i64 30, i64 143
  %200 = add i64 %139, %.v52
  store i64 %200, i64* %3, align 8
  br i1 %191, label %block_42a735, label %block_.L_42a7a6

block_42a735:                                     ; preds = %block_42a717
  %201 = add i64 %200, 4
  store i64 %201, i64* %3, align 8
  %202 = load i64, i64* %70, align 8
  store i64 %202, i64* %RAX.i1033, align 8
  %203 = add i64 %202, 8
  %204 = add i64 %200, 8
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX.i1033, align 8
  %207 = add i64 %62, -40
  %208 = add i64 %200, 12
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %RCX.i1044, align 8
  %212 = add i64 %206, %211
  %213 = add i64 %200, 16
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i8*
  store i8 1, i8* %214, align 1
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -8
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 4
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RAX.i1033, align 8
  %221 = add i64 %220, 16
  %222 = add i64 %217, 8
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i1033, align 8
  %225 = add i64 %215, -36
  %226 = add i64 %217, 12
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i1044, align 8
  %230 = shl nsw i64 %229, 2
  %231 = add i64 %230, %224
  %232 = add i64 %217, 15
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDX.i1047, align 8
  %236 = add i64 %217, 19
  store i64 %236, i64* %3, align 8
  %237 = load i64, i64* %219, align 8
  store i64 %237, i64* %RAX.i1033, align 8
  %238 = add i64 %237, 16
  %239 = add i64 %217, 23
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RAX.i1033, align 8
  %242 = add i64 %215, -40
  %243 = add i64 %217, 27
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX.i1044, align 8
  %247 = shl nsw i64 %246, 2
  %248 = add i64 %247, %241
  %249 = add i64 %217, 30
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 %234, i32* %250, align 4
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -8
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i1033, align 8
  %257 = add i64 %256, 24
  %258 = add i64 %253, 8
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %RAX.i1033, align 8
  %261 = add i64 %251, -36
  %262 = add i64 %253, 11
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %264, 1
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RDX.i1047, align 8
  %267 = icmp eq i32 %264, -1
  %268 = icmp eq i32 %265, 0
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %55, align 1
  %271 = and i32 %265, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %56, align 1
  %276 = xor i32 %265, %264
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %57, align 1
  %280 = zext i1 %268 to i8
  store i8 %280, i8* %58, align 1
  %281 = lshr i32 %265, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %59, align 1
  %283 = lshr i32 %264, 31
  %284 = xor i32 %281, %283
  %285 = add nuw nsw i32 %284, %281
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %60, align 1
  %288 = sext i32 %265 to i64
  store i64 %288, i64* %RCX.i1044, align 8
  %289 = shl nsw i64 %288, 2
  %290 = add i64 %260, %289
  %291 = add i64 %253, 20
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RDX.i1047, align 8
  %295 = add i64 %253, 24
  store i64 %295, i64* %3, align 8
  %296 = load i64, i64* %255, align 8
  store i64 %296, i64* %RAX.i1033, align 8
  %297 = add i64 %296, 24
  %298 = add i64 %253, 28
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX.i1033, align 8
  %301 = add i64 %251, -40
  %302 = add i64 %253, 32
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %RCX.i1044, align 8
  %306 = shl nsw i64 %305, 2
  %307 = add i64 %306, %300
  %308 = add i64 %253, 35
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 %293, i32* %309, align 4
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -36
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 3
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %311 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, 2
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RDX.i1047, align 8
  %318 = icmp ugt i32 %315, -3
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %55, align 1
  %320 = and i32 %316, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %56, align 1
  %325 = xor i32 %316, %315
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %57, align 1
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %58, align 1
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %59, align 1
  %333 = lshr i32 %315, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %331
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %60, align 1
  %338 = add i64 %312, 9
  store i64 %338, i64* %3, align 8
  store i32 %316, i32* %314, align 4
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -40
  %341 = load i64, i64* %3, align 8
  %342 = add i64 %341, 3
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RDX.i1047, align 8
  %347 = icmp eq i32 %344, -1
  %348 = icmp eq i32 %345, 0
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %55, align 1
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %56, align 1
  %356 = xor i32 %345, %344
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %57, align 1
  %360 = zext i1 %348 to i8
  store i8 %360, i8* %58, align 1
  %361 = lshr i32 %345, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %59, align 1
  %363 = lshr i32 %344, 31
  %364 = xor i32 %361, %363
  %365 = add nuw nsw i32 %364, %361
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %60, align 1
  %368 = add i64 %341, 9
  store i64 %368, i64* %3, align 8
  store i32 %345, i32* %343, align 4
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -44
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 3
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RDX.i1047, align 8
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %55, align 1
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %56, align 1
  %386 = xor i32 %375, %374
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %57, align 1
  %390 = zext i1 %378 to i8
  store i8 %390, i8* %58, align 1
  %391 = lshr i32 %375, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %59, align 1
  %393 = lshr i32 %374, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %391
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %60, align 1
  %398 = add i64 %371, 9
  store i64 %398, i64* %3, align 8
  store i32 %375, i32* %373, align 4
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 1236
  br label %block_.L_42ac75

block_.L_42a7a6:                                  ; preds = %block_42a717, %block_42a6fe
  %401 = phi i64 [ %200, %block_42a717 ], [ %139, %block_42a6fe ]
  %402 = add i64 %401, 4
  store i64 %402, i64* %3, align 8
  %403 = load i64, i64* %70, align 8
  store i64 %403, i64* %RAX.i1033, align 8
  %404 = add i64 %403, 8
  %405 = add i64 %401, 8
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i1033, align 8
  %408 = add i64 %401, 12
  store i64 %408, i64* %3, align 8
  %409 = load i32, i32* %65, align 4
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %RCX.i1044, align 8
  %411 = add i64 %407, %410
  %412 = add i64 %401, 16
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i8*
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i64
  %416 = and i64 %415, 4294967295
  store i64 %416, i64* %RDX.i1047, align 8
  %417 = sext i8 %414 to i32
  %418 = add nsw i32 %417, -3
  %419 = icmp ult i8 %414, 3
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %55, align 1
  %421 = and i32 %418, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %56, align 1
  %426 = xor i32 %418, %417
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %57, align 1
  %430 = icmp eq i32 %418, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %58, align 1
  %432 = lshr i32 %418, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %59, align 1
  %434 = lshr i32 %417, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %60, align 1
  %.v38 = select i1 %430, i64 25, i64 168
  %439 = add i64 %401, %.v38
  store i64 %439, i64* %3, align 8
  br i1 %430, label %block_42a7bf, label %block_.L_42a84e

block_42a7bf:                                     ; preds = %block_.L_42a7a6
  %440 = add i64 %439, 4
  store i64 %440, i64* %3, align 8
  %441 = load i64, i64* %70, align 8
  store i64 %441, i64* %RAX.i1033, align 8
  %442 = add i64 %441, 8
  %443 = add i64 %439, 8
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX.i1033, align 8
  %446 = add i64 %439, 11
  store i64 %446, i64* %3, align 8
  %447 = load i32, i32* %65, align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RCX.i1044, align 8
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %55, align 1
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %56, align 1
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %57, align 1
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %58, align 1
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %59, align 1
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %60, align 1
  %471 = sext i32 %448 to i64
  store i64 %471, i64* %RDX.i1047, align 8
  %472 = add i64 %445, %471
  %473 = add i64 %439, 21
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i8*
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i64
  %477 = and i64 %476, 4294967295
  store i64 %477, i64* %RCX.i1044, align 8
  %478 = sext i8 %475 to i32
  %479 = add nsw i32 %478, -2
  %480 = icmp ult i8 %475, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %55, align 1
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %56, align 1
  %487 = xor i32 %479, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %57, align 1
  %491 = icmp eq i32 %479, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %58, align 1
  %493 = lshr i32 %479, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %59, align 1
  %495 = lshr i32 %478, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %60, align 1
  %.v51 = select i1 %491, i64 30, i64 143
  %500 = add i64 %439, %.v51
  store i64 %500, i64* %3, align 8
  br i1 %491, label %block_42a7dd, label %block_.L_42a84e

block_42a7dd:                                     ; preds = %block_42a7bf
  %501 = add i64 %500, 4
  store i64 %501, i64* %3, align 8
  %502 = load i64, i64* %70, align 8
  store i64 %502, i64* %RAX.i1033, align 8
  %503 = add i64 %502, 8
  %504 = add i64 %500, 8
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RAX.i1033, align 8
  %507 = add i64 %62, -40
  %508 = add i64 %500, 12
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  store i64 %511, i64* %RCX.i1044, align 8
  %512 = add i64 %506, %511
  %513 = add i64 %500, 16
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i8*
  store i8 1, i8* %514, align 1
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -8
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 4
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %516 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RAX.i1033, align 8
  %521 = add i64 %520, 16
  %522 = add i64 %517, 8
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RAX.i1033, align 8
  %525 = add i64 %515, -36
  %526 = add i64 %517, 11
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, 1
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RDX.i1047, align 8
  %531 = icmp eq i32 %528, -1
  %532 = icmp eq i32 %529, 0
  %533 = or i1 %531, %532
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %55, align 1
  %535 = and i32 %529, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %56, align 1
  %540 = xor i32 %529, %528
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %57, align 1
  %544 = zext i1 %532 to i8
  store i8 %544, i8* %58, align 1
  %545 = lshr i32 %529, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %59, align 1
  %547 = lshr i32 %528, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %545
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %60, align 1
  %552 = sext i32 %529 to i64
  store i64 %552, i64* %RCX.i1044, align 8
  %553 = shl nsw i64 %552, 2
  %554 = add i64 %524, %553
  %555 = add i64 %517, 20
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RDX.i1047, align 8
  %559 = add i64 %517, 24
  store i64 %559, i64* %3, align 8
  %560 = load i64, i64* %519, align 8
  store i64 %560, i64* %RAX.i1033, align 8
  %561 = add i64 %560, 16
  %562 = add i64 %517, 28
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RAX.i1033, align 8
  %565 = add i64 %515, -40
  %566 = add i64 %517, 32
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = sext i32 %568 to i64
  store i64 %569, i64* %RCX.i1044, align 8
  %570 = shl nsw i64 %569, 2
  %571 = add i64 %570, %564
  %572 = add i64 %517, 35
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  store i32 %557, i32* %573, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -8
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RAX.i1033, align 8
  %580 = add i64 %579, 24
  %581 = add i64 %576, 8
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RAX.i1033, align 8
  %584 = add i64 %574, -36
  %585 = add i64 %576, 12
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %587 to i64
  store i64 %588, i64* %RCX.i1044, align 8
  %589 = shl nsw i64 %588, 2
  %590 = add i64 %589, %583
  %591 = add i64 %576, 15
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RDX.i1047, align 8
  %595 = add i64 %576, 19
  store i64 %595, i64* %3, align 8
  %596 = load i64, i64* %578, align 8
  store i64 %596, i64* %RAX.i1033, align 8
  %597 = add i64 %596, 24
  %598 = add i64 %576, 23
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %RAX.i1033, align 8
  %601 = add i64 %574, -40
  %602 = add i64 %576, 27
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  store i64 %605, i64* %RCX.i1044, align 8
  %606 = shl nsw i64 %605, 2
  %607 = add i64 %606, %600
  %608 = add i64 %576, 30
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  store i32 %593, i32* %609, align 4
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -36
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, 3
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %615, 2
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RDX.i1047, align 8
  %618 = icmp ugt i32 %615, -3
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %55, align 1
  %620 = and i32 %616, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %56, align 1
  %625 = xor i32 %616, %615
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %57, align 1
  %629 = icmp eq i32 %616, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %58, align 1
  %631 = lshr i32 %616, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %59, align 1
  %633 = lshr i32 %615, 31
  %634 = xor i32 %631, %633
  %635 = add nuw nsw i32 %634, %631
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %60, align 1
  %638 = add i64 %612, 9
  store i64 %638, i64* %3, align 8
  store i32 %616, i32* %614, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -40
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, 1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RDX.i1047, align 8
  %647 = icmp eq i32 %644, -1
  %648 = icmp eq i32 %645, 0
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %55, align 1
  %651 = and i32 %645, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %56, align 1
  %656 = xor i32 %645, %644
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %57, align 1
  %660 = zext i1 %648 to i8
  store i8 %660, i8* %58, align 1
  %661 = lshr i32 %645, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %59, align 1
  %663 = lshr i32 %644, 31
  %664 = xor i32 %661, %663
  %665 = add nuw nsw i32 %664, %661
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %60, align 1
  %668 = add i64 %641, 9
  store i64 %668, i64* %3, align 8
  store i32 %645, i32* %643, align 4
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -48
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, 3
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = add i32 %674, 1
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RDX.i1047, align 8
  %677 = icmp eq i32 %674, -1
  %678 = icmp eq i32 %675, 0
  %679 = or i1 %677, %678
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %55, align 1
  %681 = and i32 %675, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %56, align 1
  %686 = xor i32 %675, %674
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %57, align 1
  %690 = zext i1 %678 to i8
  store i8 %690, i8* %58, align 1
  %691 = lshr i32 %675, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %59, align 1
  %693 = lshr i32 %674, 31
  %694 = xor i32 %691, %693
  %695 = add nuw nsw i32 %694, %691
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %60, align 1
  %698 = add i64 %671, 9
  store i64 %698, i64* %3, align 8
  store i32 %675, i32* %673, align 4
  %699 = load i64, i64* %3, align 8
  %700 = add i64 %699, 1063
  br label %block_.L_42ac70

block_.L_42a84e:                                  ; preds = %block_42a7bf, %block_.L_42a7a6
  %701 = phi i64 [ %500, %block_42a7bf ], [ %439, %block_.L_42a7a6 ]
  %702 = add i64 %701, 4
  store i64 %702, i64* %3, align 8
  %703 = load i64, i64* %70, align 8
  store i64 %703, i64* %RAX.i1033, align 8
  %704 = add i64 %703, 8
  %705 = add i64 %701, 8
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %RAX.i1033, align 8
  %708 = add i64 %701, 12
  store i64 %708, i64* %3, align 8
  %709 = load i32, i32* %65, align 4
  %710 = sext i32 %709 to i64
  store i64 %710, i64* %RCX.i1044, align 8
  %711 = add i64 %707, %710
  %712 = add i64 %701, 16
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i8*
  %714 = load i8, i8* %713, align 1
  %715 = sext i8 %714 to i64
  %716 = and i64 %715, 4294967295
  store i64 %716, i64* %RDX.i1047, align 8
  %717 = sext i8 %714 to i32
  %718 = add nsw i32 %717, -3
  %719 = icmp ult i8 %714, 3
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %55, align 1
  %721 = and i32 %718, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %56, align 1
  %726 = xor i32 %718, %717
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %57, align 1
  %730 = icmp eq i32 %718, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %58, align 1
  %732 = lshr i32 %718, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %59, align 1
  %734 = lshr i32 %717, 31
  %735 = xor i32 %732, %734
  %736 = add nuw nsw i32 %735, %734
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %60, align 1
  %.v39 = select i1 %730, i64 25, i64 154
  %739 = add i64 %701, %.v39
  store i64 %739, i64* %3, align 8
  br i1 %730, label %block_42a867, label %block_.L_42a8e8

block_42a867:                                     ; preds = %block_.L_42a84e
  %740 = add i64 %739, 4
  store i64 %740, i64* %3, align 8
  %741 = load i64, i64* %70, align 8
  store i64 %741, i64* %RAX.i1033, align 8
  %742 = add i64 %741, 8
  %743 = add i64 %739, 8
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RAX.i1033, align 8
  %746 = add i64 %739, 11
  store i64 %746, i64* %3, align 8
  %747 = load i32, i32* %65, align 4
  %748 = add i32 %747, -1
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RCX.i1044, align 8
  %750 = icmp eq i32 %747, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %55, align 1
  %752 = and i32 %748, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %56, align 1
  %757 = xor i32 %748, %747
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %57, align 1
  %761 = icmp eq i32 %748, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %58, align 1
  %763 = lshr i32 %748, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %59, align 1
  %765 = lshr i32 %747, 31
  %766 = xor i32 %763, %765
  %767 = add nuw nsw i32 %766, %765
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %60, align 1
  %770 = sext i32 %748 to i64
  store i64 %770, i64* %RDX.i1047, align 8
  %771 = add i64 %745, %770
  %772 = add i64 %739, 21
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i8*
  %774 = load i8, i8* %773, align 1
  %775 = sext i8 %774 to i64
  %776 = and i64 %775, 4294967295
  store i64 %776, i64* %RCX.i1044, align 8
  %777 = sext i8 %774 to i32
  %778 = add nsw i32 %777, -6
  %779 = icmp ult i8 %774, 6
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %55, align 1
  %781 = and i32 %778, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %56, align 1
  %786 = xor i32 %778, %777
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %57, align 1
  %790 = icmp eq i32 %778, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %58, align 1
  %792 = lshr i32 %778, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %59, align 1
  %794 = lshr i32 %777, 31
  %795 = xor i32 %792, %794
  %796 = add nuw nsw i32 %795, %794
  %797 = icmp eq i32 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %60, align 1
  %.v50 = select i1 %790, i64 30, i64 129
  %799 = add i64 %739, %.v50
  store i64 %799, i64* %3, align 8
  br i1 %790, label %block_42a885, label %block_.L_42a8e8

block_42a885:                                     ; preds = %block_42a867
  %800 = add i64 %799, 4
  store i64 %800, i64* %3, align 8
  %801 = load i64, i64* %70, align 8
  store i64 %801, i64* %RAX.i1033, align 8
  %802 = add i64 %801, 8
  %803 = add i64 %799, 8
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RAX.i1033, align 8
  %806 = add i64 %62, -40
  %807 = add i64 %799, 12
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RCX.i1044, align 8
  %811 = add i64 %805, %810
  %812 = add i64 %799, 16
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i8*
  store i8 1, i8* %813, align 1
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -8
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %RAX.i1033, align 8
  %820 = add i64 %819, 16
  %821 = add i64 %816, 8
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX.i1033, align 8
  %824 = add i64 %814, -36
  %825 = add i64 %816, 12
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  store i64 %828, i64* %RCX.i1044, align 8
  %829 = shl nsw i64 %828, 2
  %830 = add i64 %829, %823
  %831 = add i64 %816, 15
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDX.i1047, align 8
  %835 = add i64 %816, 19
  store i64 %835, i64* %3, align 8
  %836 = load i64, i64* %818, align 8
  store i64 %836, i64* %RAX.i1033, align 8
  %837 = add i64 %836, 16
  %838 = add i64 %816, 23
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %RAX.i1033, align 8
  %841 = add i64 %814, -40
  %842 = add i64 %816, 27
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i1044, align 8
  %846 = shl nsw i64 %845, 2
  %847 = add i64 %846, %840
  %848 = add i64 %816, 30
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  store i32 %833, i32* %849, align 4
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -8
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, 4
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %851 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %RAX.i1033, align 8
  %856 = add i64 %855, 24
  %857 = add i64 %852, 8
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RAX.i1033, align 8
  %860 = add i64 %850, -36
  %861 = add i64 %852, 12
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = sext i32 %863 to i64
  store i64 %864, i64* %RCX.i1044, align 8
  %865 = shl nsw i64 %864, 2
  %866 = add i64 %865, %859
  %867 = add i64 %852, 15
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %RDX.i1047, align 8
  %871 = add i64 %852, 19
  store i64 %871, i64* %3, align 8
  %872 = load i64, i64* %854, align 8
  store i64 %872, i64* %RAX.i1033, align 8
  %873 = add i64 %872, 24
  %874 = add i64 %852, 23
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX.i1033, align 8
  %877 = add i64 %850, -40
  %878 = add i64 %852, 27
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  store i64 %881, i64* %RCX.i1044, align 8
  %882 = shl nsw i64 %881, 2
  %883 = add i64 %882, %876
  %884 = add i64 %852, 30
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  store i32 %869, i32* %885, align 4
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -36
  %888 = load i64, i64* %3, align 8
  %889 = add i64 %888, 3
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = add i32 %891, 1
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RDX.i1047, align 8
  %894 = icmp eq i32 %891, -1
  %895 = icmp eq i32 %892, 0
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %55, align 1
  %898 = and i32 %892, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %56, align 1
  %903 = xor i32 %892, %891
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %57, align 1
  %907 = zext i1 %895 to i8
  store i8 %907, i8* %58, align 1
  %908 = lshr i32 %892, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %59, align 1
  %910 = lshr i32 %891, 31
  %911 = xor i32 %908, %910
  %912 = add nuw nsw i32 %911, %908
  %913 = icmp eq i32 %912, 2
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %60, align 1
  %915 = add i64 %888, 9
  store i64 %915, i64* %3, align 8
  store i32 %892, i32* %890, align 4
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -40
  %918 = load i64, i64* %3, align 8
  %919 = add i64 %918, 3
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %917 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = add i32 %921, 1
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RDX.i1047, align 8
  %924 = icmp eq i32 %921, -1
  %925 = icmp eq i32 %922, 0
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %55, align 1
  %928 = and i32 %922, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %56, align 1
  %933 = xor i32 %922, %921
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %57, align 1
  %937 = zext i1 %925 to i8
  store i8 %937, i8* %58, align 1
  %938 = lshr i32 %922, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %59, align 1
  %940 = lshr i32 %921, 31
  %941 = xor i32 %938, %940
  %942 = add nuw nsw i32 %941, %938
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %60, align 1
  %945 = add i64 %918, 9
  store i64 %945, i64* %3, align 8
  store i32 %922, i32* %920, align 4
  %946 = load i64, i64* %3, align 8
  %947 = add i64 %946, 904
  br label %block_.L_42ac6b

block_.L_42a8e8:                                  ; preds = %block_42a867, %block_.L_42a84e
  %948 = phi i64 [ %799, %block_42a867 ], [ %739, %block_.L_42a84e ]
  %949 = add i64 %948, 4
  store i64 %949, i64* %3, align 8
  %950 = load i64, i64* %70, align 8
  store i64 %950, i64* %RAX.i1033, align 8
  %951 = add i64 %950, 8
  %952 = add i64 %948, 8
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RAX.i1033, align 8
  %955 = add i64 %948, 12
  store i64 %955, i64* %3, align 8
  %956 = load i32, i32* %65, align 4
  %957 = sext i32 %956 to i64
  store i64 %957, i64* %RCX.i1044, align 8
  %958 = add i64 %954, %957
  %959 = add i64 %948, 16
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i8*
  %961 = load i8, i8* %960, align 1
  %962 = sext i8 %961 to i64
  %963 = and i64 %962, 4294967295
  store i64 %963, i64* %RDX.i1047, align 8
  %964 = sext i8 %961 to i32
  %965 = add nsw i32 %964, -3
  %966 = icmp ult i8 %961, 3
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %55, align 1
  %968 = and i32 %965, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %56, align 1
  %973 = xor i32 %965, %964
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %57, align 1
  %977 = icmp eq i32 %965, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %58, align 1
  %979 = lshr i32 %965, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %59, align 1
  %981 = lshr i32 %964, 31
  %982 = xor i32 %979, %981
  %983 = add nuw nsw i32 %982, %981
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %60, align 1
  %.v40 = select i1 %977, i64 25, i64 157
  %986 = add i64 %948, %.v40
  store i64 %986, i64* %3, align 8
  br i1 %977, label %block_42a901, label %block_.L_42a985

block_42a901:                                     ; preds = %block_.L_42a8e8
  %987 = add i64 %986, 4
  store i64 %987, i64* %3, align 8
  %988 = load i64, i64* %70, align 8
  store i64 %988, i64* %RAX.i1033, align 8
  %989 = add i64 %988, 8
  %990 = add i64 %986, 8
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %RAX.i1033, align 8
  %993 = add i64 %986, 11
  store i64 %993, i64* %3, align 8
  %994 = load i32, i32* %65, align 4
  %995 = add i32 %994, 1
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RCX.i1044, align 8
  %997 = icmp eq i32 %994, -1
  %998 = icmp eq i32 %995, 0
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %55, align 1
  %1001 = and i32 %995, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %56, align 1
  %1006 = xor i32 %995, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %57, align 1
  %1010 = zext i1 %998 to i8
  store i8 %1010, i8* %58, align 1
  %1011 = lshr i32 %995, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %59, align 1
  %1013 = lshr i32 %994, 31
  %1014 = xor i32 %1011, %1013
  %1015 = add nuw nsw i32 %1014, %1011
  %1016 = icmp eq i32 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %60, align 1
  %1018 = sext i32 %995 to i64
  store i64 %1018, i64* %RDX.i1047, align 8
  %1019 = add i64 %992, %1018
  %1020 = add i64 %986, 21
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i8*
  %1022 = load i8, i8* %1021, align 1
  %1023 = sext i8 %1022 to i64
  %1024 = and i64 %1023, 4294967295
  store i64 %1024, i64* %RCX.i1044, align 8
  %1025 = sext i8 %1022 to i32
  %1026 = add nsw i32 %1025, -7
  %1027 = icmp ult i8 %1022, 7
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %55, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %56, align 1
  %1034 = xor i32 %1026, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %57, align 1
  %1038 = icmp eq i32 %1026, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %58, align 1
  %1040 = lshr i32 %1026, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %59, align 1
  %1042 = lshr i32 %1025, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %60, align 1
  %.v49 = select i1 %1038, i64 30, i64 132
  %1047 = add i64 %986, %.v49
  store i64 %1047, i64* %3, align 8
  br i1 %1038, label %block_42a91f, label %block_.L_42a985

block_42a91f:                                     ; preds = %block_42a901
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %3, align 8
  %1049 = load i64, i64* %70, align 8
  store i64 %1049, i64* %RAX.i1033, align 8
  %1050 = add i64 %1049, 8
  %1051 = add i64 %1047, 8
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %RAX.i1033, align 8
  %1054 = add i64 %62, -40
  %1055 = add i64 %1047, 12
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i1044, align 8
  %1059 = add i64 %1053, %1058
  %1060 = add i64 %1047, 16
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i8*
  store i8 1, i8* %1061, align 1
  %1062 = load i64, i64* %RBP.i, align 8
  %1063 = add i64 %1062, -8
  %1064 = load i64, i64* %3, align 8
  %1065 = add i64 %1064, 4
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1063 to i64*
  %1067 = load i64, i64* %1066, align 8
  store i64 %1067, i64* %RAX.i1033, align 8
  %1068 = add i64 %1067, 16
  %1069 = add i64 %1064, 8
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RAX.i1033, align 8
  %1072 = add i64 %1062, -36
  %1073 = add i64 %1064, 12
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = sext i32 %1075 to i64
  store i64 %1076, i64* %RCX.i1044, align 8
  %1077 = shl nsw i64 %1076, 2
  %1078 = add i64 %1077, %1071
  %1079 = add i64 %1064, 15
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, 1
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDX.i1047, align 8
  %1084 = icmp eq i32 %1081, -1
  %1085 = icmp eq i32 %1082, 0
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %55, align 1
  %1088 = and i32 %1082, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %56, align 1
  %1093 = xor i32 %1082, %1081
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %57, align 1
  %1097 = zext i1 %1085 to i8
  store i8 %1097, i8* %58, align 1
  %1098 = lshr i32 %1082, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %59, align 1
  %1100 = lshr i32 %1081, 31
  %1101 = xor i32 %1098, %1100
  %1102 = add nuw nsw i32 %1101, %1098
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %60, align 1
  %1105 = add i64 %1064, 22
  store i64 %1105, i64* %3, align 8
  %1106 = load i64, i64* %1066, align 8
  store i64 %1106, i64* %RAX.i1033, align 8
  %1107 = add i64 %1106, 16
  %1108 = add i64 %1064, 26
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %RAX.i1033, align 8
  %1111 = add i64 %1062, -40
  %1112 = add i64 %1064, 30
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX.i1044, align 8
  %1116 = shl nsw i64 %1115, 2
  %1117 = add i64 %1116, %1110
  %1118 = add i64 %1064, 33
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  store i32 %1082, i32* %1119, align 4
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -8
  %1122 = load i64, i64* %3, align 8
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX.i1033, align 8
  %1126 = add i64 %1125, 24
  %1127 = add i64 %1122, 8
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i1033, align 8
  %1130 = add i64 %1120, -36
  %1131 = add i64 %1122, 12
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RCX.i1044, align 8
  %1135 = shl nsw i64 %1134, 2
  %1136 = add i64 %1135, %1129
  %1137 = add i64 %1122, 15
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RDX.i1047, align 8
  %1141 = add i64 %1122, 19
  store i64 %1141, i64* %3, align 8
  %1142 = load i64, i64* %1124, align 8
  store i64 %1142, i64* %RAX.i1033, align 8
  %1143 = add i64 %1142, 24
  %1144 = add i64 %1122, 23
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i64*
  %1146 = load i64, i64* %1145, align 8
  store i64 %1146, i64* %RAX.i1033, align 8
  %1147 = add i64 %1120, -40
  %1148 = add i64 %1122, 27
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i1044, align 8
  %1152 = shl nsw i64 %1151, 2
  %1153 = add i64 %1152, %1146
  %1154 = add i64 %1122, 30
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i32*
  store i32 %1139, i32* %1155, align 4
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -36
  %1158 = load i64, i64* %3, align 8
  %1159 = add i64 %1158, 3
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = add i32 %1161, 1
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i1047, align 8
  %1164 = icmp eq i32 %1161, -1
  %1165 = icmp eq i32 %1162, 0
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %55, align 1
  %1168 = and i32 %1162, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %56, align 1
  %1173 = xor i32 %1162, %1161
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %57, align 1
  %1177 = zext i1 %1165 to i8
  store i8 %1177, i8* %58, align 1
  %1178 = lshr i32 %1162, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %59, align 1
  %1180 = lshr i32 %1161, 31
  %1181 = xor i32 %1178, %1180
  %1182 = add nuw nsw i32 %1181, %1178
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %60, align 1
  %1185 = add i64 %1158, 9
  store i64 %1185, i64* %3, align 8
  store i32 %1162, i32* %1160, align 4
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -40
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = add i32 %1191, 1
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RDX.i1047, align 8
  %1194 = icmp eq i32 %1191, -1
  %1195 = icmp eq i32 %1192, 0
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %55, align 1
  %1198 = and i32 %1192, 255
  %1199 = tail call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %56, align 1
  %1203 = xor i32 %1192, %1191
  %1204 = lshr i32 %1203, 4
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  store i8 %1206, i8* %57, align 1
  %1207 = zext i1 %1195 to i8
  store i8 %1207, i8* %58, align 1
  %1208 = lshr i32 %1192, 31
  %1209 = trunc i32 %1208 to i8
  store i8 %1209, i8* %59, align 1
  %1210 = lshr i32 %1191, 31
  %1211 = xor i32 %1208, %1210
  %1212 = add nuw nsw i32 %1211, %1208
  %1213 = icmp eq i32 %1212, 2
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %60, align 1
  %1215 = add i64 %1188, 9
  store i64 %1215, i64* %3, align 8
  store i32 %1192, i32* %1190, align 4
  %1216 = load i64, i64* %3, align 8
  %1217 = add i64 %1216, 742
  br label %block_.L_42ac66

block_.L_42a985:                                  ; preds = %block_42a901, %block_.L_42a8e8
  %1218 = phi i64 [ %1047, %block_42a901 ], [ %986, %block_.L_42a8e8 ]
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %3, align 8
  %1220 = load i64, i64* %70, align 8
  store i64 %1220, i64* %RAX.i1033, align 8
  %1221 = add i64 %1220, 8
  %1222 = add i64 %1218, 8
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i64*
  %1224 = load i64, i64* %1223, align 8
  store i64 %1224, i64* %RAX.i1033, align 8
  %1225 = add i64 %1218, 12
  store i64 %1225, i64* %3, align 8
  %1226 = load i32, i32* %65, align 4
  %1227 = sext i32 %1226 to i64
  store i64 %1227, i64* %RCX.i1044, align 8
  %1228 = add i64 %1224, %1227
  %1229 = add i64 %1218, 16
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i8*
  %1231 = load i8, i8* %1230, align 1
  %1232 = sext i8 %1231 to i64
  %1233 = and i64 %1232, 4294967295
  store i64 %1233, i64* %RDX.i1047, align 8
  %1234 = sext i8 %1231 to i32
  %1235 = add nsw i32 %1234, -6
  %1236 = icmp ult i8 %1231, 6
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %55, align 1
  %1238 = and i32 %1235, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %56, align 1
  %1243 = xor i32 %1235, %1234
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %57, align 1
  %1247 = icmp eq i32 %1235, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %58, align 1
  %1249 = lshr i32 %1235, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %59, align 1
  %1251 = lshr i32 %1234, 31
  %1252 = xor i32 %1249, %1251
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %60, align 1
  %.v41 = select i1 %1247, i64 25, i64 274
  %1256 = add i64 %1218, %.v41
  store i64 %1256, i64* %3, align 8
  br i1 %1247, label %block_42a99e, label %block_.L_42aa97

block_42a99e:                                     ; preds = %block_.L_42a985
  %1257 = add i64 %1256, 4
  store i64 %1257, i64* %3, align 8
  %1258 = load i64, i64* %70, align 8
  store i64 %1258, i64* %RAX.i1033, align 8
  %1259 = add i64 %1258, 8
  %1260 = add i64 %1256, 8
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RAX.i1033, align 8
  %1263 = add i64 %1256, 11
  store i64 %1263, i64* %3, align 8
  %1264 = load i32, i32* %65, align 4
  %1265 = add i32 %1264, 1
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RCX.i1044, align 8
  %1267 = icmp eq i32 %1264, -1
  %1268 = icmp eq i32 %1265, 0
  %1269 = or i1 %1267, %1268
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %55, align 1
  %1271 = and i32 %1265, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %56, align 1
  %1276 = xor i32 %1265, %1264
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %57, align 1
  %1280 = zext i1 %1268 to i8
  store i8 %1280, i8* %58, align 1
  %1281 = lshr i32 %1265, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %59, align 1
  %1283 = lshr i32 %1264, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1281
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %60, align 1
  %1288 = sext i32 %1265 to i64
  store i64 %1288, i64* %RDX.i1047, align 8
  %1289 = add i64 %1262, %1288
  %1290 = add i64 %1256, 21
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i8*
  %1292 = load i8, i8* %1291, align 1
  %1293 = sext i8 %1292 to i64
  %1294 = and i64 %1293, 4294967295
  store i64 %1294, i64* %RCX.i1044, align 8
  %1295 = sext i8 %1292 to i32
  %1296 = add nsw i32 %1295, -7
  %1297 = icmp ult i8 %1292, 7
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %55, align 1
  %1299 = and i32 %1296, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %56, align 1
  %1304 = xor i32 %1296, %1295
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %57, align 1
  %1308 = icmp eq i32 %1296, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %58, align 1
  %1310 = lshr i32 %1296, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %59, align 1
  %1312 = lshr i32 %1295, 31
  %1313 = xor i32 %1310, %1312
  %1314 = add nuw nsw i32 %1313, %1312
  %1315 = icmp eq i32 %1314, 2
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %60, align 1
  %.v46 = select i1 %1308, i64 30, i64 249
  %1317 = add i64 %1256, %.v46
  store i64 %1317, i64* %3, align 8
  br i1 %1308, label %block_42a9bc, label %block_.L_42aa97

block_42a9bc:                                     ; preds = %block_42a99e
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %3, align 8
  %1319 = load i64, i64* %70, align 8
  store i64 %1319, i64* %RAX.i1033, align 8
  %1320 = add i64 %1319, 8
  %1321 = add i64 %1317, 8
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %RAX.i1033, align 8
  %1324 = add i64 %1317, 11
  store i64 %1324, i64* %3, align 8
  %1325 = load i32, i32* %65, align 4
  %1326 = add i32 %1325, -1
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i1044, align 8
  %1328 = icmp eq i32 %1325, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %55, align 1
  %1330 = and i32 %1326, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %56, align 1
  %1335 = xor i32 %1326, %1325
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %57, align 1
  %1339 = icmp eq i32 %1326, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %58, align 1
  %1341 = lshr i32 %1326, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %59, align 1
  %1343 = lshr i32 %1325, 31
  %1344 = xor i32 %1341, %1343
  %1345 = add nuw nsw i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %60, align 1
  %1348 = sext i32 %1326 to i64
  store i64 %1348, i64* %RDX.i1047, align 8
  %1349 = add i64 %1323, %1348
  %1350 = add i64 %1317, 21
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i8*
  %1352 = load i8, i8* %1351, align 1
  %1353 = sext i8 %1352 to i64
  %1354 = and i64 %1353, 4294967295
  store i64 %1354, i64* %RCX.i1044, align 8
  %1355 = sext i8 %1352 to i32
  %1356 = add nsw i32 %1355, -5
  %1357 = icmp ult i8 %1352, 5
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %55, align 1
  %1359 = and i32 %1356, 255
  %1360 = tail call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  store i8 %1363, i8* %56, align 1
  %1364 = xor i32 %1356, %1355
  %1365 = lshr i32 %1364, 4
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  store i8 %1367, i8* %57, align 1
  %1368 = icmp eq i32 %1356, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %58, align 1
  %1370 = lshr i32 %1356, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %59, align 1
  %1372 = lshr i32 %1355, 31
  %1373 = xor i32 %1370, %1372
  %1374 = add nuw nsw i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %60, align 1
  %.v47 = select i1 %1368, i64 30, i64 219
  %1377 = add i64 %1317, %.v47
  store i64 %1377, i64* %3, align 8
  br i1 %1368, label %block_42a9da, label %block_.L_42aa97

block_42a9da:                                     ; preds = %block_42a9bc
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %3, align 8
  %1379 = load i64, i64* %70, align 8
  store i64 %1379, i64* %RAX.i1033, align 8
  %1380 = add i64 %1379, 24
  %1381 = add i64 %1377, 8
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RAX.i1033, align 8
  %1384 = add i64 %1377, 11
  store i64 %1384, i64* %3, align 8
  %1385 = load i32, i32* %65, align 4
  %1386 = add i32 %1385, -1
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i1044, align 8
  %1388 = icmp eq i32 %1385, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %55, align 1
  %1390 = and i32 %1386, 255
  %1391 = tail call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %56, align 1
  %1395 = xor i32 %1386, %1385
  %1396 = lshr i32 %1395, 4
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  store i8 %1398, i8* %57, align 1
  %1399 = icmp eq i32 %1386, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %58, align 1
  %1401 = lshr i32 %1386, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %59, align 1
  %1403 = lshr i32 %1385, 31
  %1404 = xor i32 %1401, %1403
  %1405 = add nuw nsw i32 %1404, %1403
  %1406 = icmp eq i32 %1405, 2
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %60, align 1
  %1408 = sext i32 %1386 to i64
  store i64 %1408, i64* %RDX.i1047, align 8
  %1409 = shl nsw i64 %1408, 2
  %1410 = add i64 %1383, %1409
  %1411 = add i64 %1377, 21
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  store i8 0, i8* %55, align 1
  %1414 = and i32 %1413, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %1419 = icmp eq i32 %1413, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %58, align 1
  %1421 = lshr i32 %1413, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %1423 = icmp ne i8 %1422, 0
  %1424 = or i1 %1419, %1423
  %.v48 = select i1 %1424, i64 189, i64 27
  %1425 = add i64 %1377, %.v48
  store i64 %1425, i64* %3, align 8
  br i1 %1424, label %block_.L_42aa97, label %block_42a9f5

block_42a9f5:                                     ; preds = %block_42a9da
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %3, align 8
  %1427 = load i64, i64* %70, align 8
  store i64 %1427, i64* %RAX.i1033, align 8
  %1428 = add i64 %1427, 8
  %1429 = add i64 %1425, 8
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RAX.i1033, align 8
  %1432 = add i64 %62, -40
  %1433 = add i64 %1425, 12
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sext i32 %1435 to i64
  store i64 %1436, i64* %RCX.i1044, align 8
  %1437 = add i64 %1431, %1436
  %1438 = add i64 %1425, 16
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i8*
  store i8 1, i8* %1439, align 1
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -8
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %RAX.i1033, align 8
  %1446 = add i64 %1445, 16
  %1447 = add i64 %1442, 8
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RAX.i1033, align 8
  %1450 = add i64 %1440, -40
  %1451 = add i64 %1442, 12
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  store i64 %1454, i64* %RCX.i1044, align 8
  %1455 = shl nsw i64 %1454, 2
  %1456 = add i64 %1455, %1449
  %1457 = add i64 %1442, 19
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  store i32 1, i32* %1458, align 4
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -8
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 4
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %RAX.i1033, align 8
  %1465 = add i64 %1464, 24
  %1466 = add i64 %1461, 8
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RAX.i1033, align 8
  %1469 = add i64 %1459, -36
  %1470 = add i64 %1461, 11
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, -1
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RDX.i1047, align 8
  %1475 = icmp eq i32 %1472, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %55, align 1
  %1477 = and i32 %1473, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %56, align 1
  %1482 = xor i32 %1473, %1472
  %1483 = lshr i32 %1482, 4
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %57, align 1
  %1486 = icmp eq i32 %1473, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %58, align 1
  %1488 = lshr i32 %1473, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %59, align 1
  %1490 = lshr i32 %1472, 31
  %1491 = xor i32 %1488, %1490
  %1492 = add nuw nsw i32 %1491, %1490
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %60, align 1
  %1495 = sext i32 %1473 to i64
  store i64 %1495, i64* %RCX.i1044, align 8
  %1496 = shl nsw i64 %1495, 2
  %1497 = add i64 %1468, %1496
  %1498 = add i64 %1461, 20
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RDX.i1047, align 8
  %1502 = add i64 %1461, 24
  store i64 %1502, i64* %3, align 8
  %1503 = load i64, i64* %1463, align 8
  store i64 %1503, i64* %RAX.i1033, align 8
  %1504 = add i64 %1503, 24
  %1505 = add i64 %1461, 28
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i64*
  %1507 = load i64, i64* %1506, align 8
  store i64 %1507, i64* %RAX.i1033, align 8
  %1508 = add i64 %1459, -40
  %1509 = add i64 %1461, 32
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = sext i32 %1511 to i64
  store i64 %1512, i64* %RCX.i1044, align 8
  %1513 = shl nsw i64 %1512, 2
  %1514 = add i64 %1513, %1507
  %1515 = add i64 %1461, 35
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  store i32 %1500, i32* %1516, align 4
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -8
  %1519 = load i64, i64* %3, align 8
  %1520 = add i64 %1519, 4
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1518 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RAX.i1033, align 8
  %1523 = add i64 %1522, 8
  %1524 = add i64 %1519, 8
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i1033, align 8
  %1527 = add i64 %1517, -40
  %1528 = add i64 %1519, 11
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = add i32 %1530, -1
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RDX.i1047, align 8
  %1533 = icmp eq i32 %1530, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %55, align 1
  %1535 = and i32 %1531, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %56, align 1
  %1540 = xor i32 %1531, %1530
  %1541 = lshr i32 %1540, 4
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  store i8 %1543, i8* %57, align 1
  %1544 = icmp eq i32 %1531, 0
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %58, align 1
  %1546 = lshr i32 %1531, 31
  %1547 = trunc i32 %1546 to i8
  store i8 %1547, i8* %59, align 1
  %1548 = lshr i32 %1530, 31
  %1549 = xor i32 %1546, %1548
  %1550 = add nuw nsw i32 %1549, %1548
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %60, align 1
  %1553 = sext i32 %1531 to i64
  store i64 %1553, i64* %RCX.i1044, align 8
  %1554 = add i64 %1526, %1553
  %1555 = add i64 %1519, 21
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i8*
  store i8 6, i8* %1556, align 1
  %1557 = load i64, i64* %RBP.i, align 8
  %1558 = add i64 %1557, -8
  %1559 = load i64, i64* %3, align 8
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1558 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %RAX.i1033, align 8
  %1563 = add i64 %1562, 16
  %1564 = add i64 %1559, 8
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i64*
  %1566 = load i64, i64* %1565, align 8
  store i64 %1566, i64* %RAX.i1033, align 8
  %1567 = add i64 %1557, -40
  %1568 = add i64 %1559, 11
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = add i32 %1570, -1
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RDX.i1047, align 8
  %1573 = icmp eq i32 %1570, 0
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %55, align 1
  %1575 = and i32 %1571, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %56, align 1
  %1580 = xor i32 %1571, %1570
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %57, align 1
  %1584 = icmp eq i32 %1571, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %58, align 1
  %1586 = lshr i32 %1571, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %59, align 1
  %1588 = lshr i32 %1570, 31
  %1589 = xor i32 %1586, %1588
  %1590 = add nuw nsw i32 %1589, %1588
  %1591 = icmp eq i32 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %60, align 1
  %1593 = sext i32 %1571 to i64
  store i64 %1593, i64* %RCX.i1044, align 8
  %1594 = shl nsw i64 %1593, 2
  %1595 = add i64 %1566, %1594
  %1596 = add i64 %1559, 24
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  store i32 0, i32* %1597, align 4
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -8
  %1600 = load i64, i64* %3, align 8
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1599 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i1033, align 8
  %1604 = add i64 %1603, 24
  %1605 = add i64 %1600, 8
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i64*
  %1607 = load i64, i64* %1606, align 8
  store i64 %1607, i64* %RAX.i1033, align 8
  %1608 = add i64 %1598, -40
  %1609 = add i64 %1600, 11
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = add i32 %1611, -1
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RDX.i1047, align 8
  %1614 = icmp eq i32 %1611, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %55, align 1
  %1616 = and i32 %1612, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %56, align 1
  %1621 = xor i32 %1612, %1611
  %1622 = lshr i32 %1621, 4
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %57, align 1
  %1625 = icmp eq i32 %1612, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %58, align 1
  %1627 = lshr i32 %1612, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %59, align 1
  %1629 = lshr i32 %1611, 31
  %1630 = xor i32 %1627, %1629
  %1631 = add nuw nsw i32 %1630, %1629
  %1632 = icmp eq i32 %1631, 2
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %60, align 1
  %1634 = sext i32 %1612 to i64
  store i64 %1634, i64* %RCX.i1044, align 8
  %1635 = shl nsw i64 %1634, 2
  %1636 = add i64 %1607, %1635
  %1637 = add i64 %1600, 24
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  store i32 0, i32* %1638, align 4
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -36
  %1641 = load i64, i64* %3, align 8
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = add i32 %1644, 1
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RDX.i1047, align 8
  %1647 = icmp eq i32 %1644, -1
  %1648 = icmp eq i32 %1645, 0
  %1649 = or i1 %1647, %1648
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %55, align 1
  %1651 = and i32 %1645, 255
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651)
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %56, align 1
  %1656 = xor i32 %1645, %1644
  %1657 = lshr i32 %1656, 4
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  store i8 %1659, i8* %57, align 1
  %1660 = zext i1 %1648 to i8
  store i8 %1660, i8* %58, align 1
  %1661 = lshr i32 %1645, 31
  %1662 = trunc i32 %1661 to i8
  store i8 %1662, i8* %59, align 1
  %1663 = lshr i32 %1644, 31
  %1664 = xor i32 %1661, %1663
  %1665 = add nuw nsw i32 %1664, %1661
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %60, align 1
  %1668 = add i64 %1641, 9
  store i64 %1668, i64* %3, align 8
  store i32 %1645, i32* %1643, align 4
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -40
  %1671 = load i64, i64* %3, align 8
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1670 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = add i32 %1674, 1
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RDX.i1047, align 8
  %1677 = icmp eq i32 %1674, -1
  %1678 = icmp eq i32 %1675, 0
  %1679 = or i1 %1677, %1678
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %55, align 1
  %1681 = and i32 %1675, 255
  %1682 = tail call i32 @llvm.ctpop.i32(i32 %1681)
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  store i8 %1685, i8* %56, align 1
  %1686 = xor i32 %1675, %1674
  %1687 = lshr i32 %1686, 4
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  store i8 %1689, i8* %57, align 1
  %1690 = zext i1 %1678 to i8
  store i8 %1690, i8* %58, align 1
  %1691 = lshr i32 %1675, 31
  %1692 = trunc i32 %1691 to i8
  store i8 %1692, i8* %59, align 1
  %1693 = lshr i32 %1674, 31
  %1694 = xor i32 %1691, %1693
  %1695 = add nuw nsw i32 %1694, %1691
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %60, align 1
  %1698 = add i64 %1671, 9
  store i64 %1698, i64* %3, align 8
  store i32 %1675, i32* %1673, align 4
  %1699 = load i64, i64* %3, align 8
  %1700 = add i64 %1699, 463
  br label %block_.L_42ac61

block_.L_42aa97:                                  ; preds = %block_42a9bc, %block_42a99e, %block_.L_42a985, %block_42a9da
  %1701 = phi i64 [ %1425, %block_42a9da ], [ %1377, %block_42a9bc ], [ %1317, %block_42a99e ], [ %1256, %block_.L_42a985 ]
  %1702 = add i64 %1701, 4
  store i64 %1702, i64* %3, align 8
  %1703 = load i64, i64* %70, align 8
  store i64 %1703, i64* %RAX.i1033, align 8
  %1704 = add i64 %1703, 8
  %1705 = add i64 %1701, 8
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i64*
  %1707 = load i64, i64* %1706, align 8
  store i64 %1707, i64* %RAX.i1033, align 8
  %1708 = add i64 %1701, 12
  store i64 %1708, i64* %3, align 8
  %1709 = load i32, i32* %65, align 4
  %1710 = sext i32 %1709 to i64
  store i64 %1710, i64* %RCX.i1044, align 8
  %1711 = add i64 %1707, %1710
  %1712 = add i64 %1701, 16
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i8*
  %1714 = load i8, i8* %1713, align 1
  %1715 = sext i8 %1714 to i64
  %1716 = and i64 %1715, 4294967295
  store i64 %1716, i64* %RDX.i1047, align 8
  %1717 = sext i8 %1714 to i32
  %1718 = add nsw i32 %1717, -7
  %1719 = icmp ult i8 %1714, 7
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %55, align 1
  %1721 = and i32 %1718, 255
  %1722 = tail call i32 @llvm.ctpop.i32(i32 %1721)
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  %1725 = xor i8 %1724, 1
  store i8 %1725, i8* %56, align 1
  %1726 = xor i32 %1718, %1717
  %1727 = lshr i32 %1726, 4
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  store i8 %1729, i8* %57, align 1
  %1730 = icmp eq i32 %1718, 0
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %58, align 1
  %1732 = lshr i32 %1718, 31
  %1733 = trunc i32 %1732 to i8
  store i8 %1733, i8* %59, align 1
  %1734 = lshr i32 %1717, 31
  %1735 = xor i32 %1732, %1734
  %1736 = add nuw nsw i32 %1735, %1734
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %60, align 1
  %.v42 = select i1 %1730, i64 25, i64 345
  %1739 = add i64 %1701, %.v42
  store i64 %1739, i64* %3, align 8
  br i1 %1730, label %block_42aab0, label %block_.L_42abf0

block_42aab0:                                     ; preds = %block_.L_42aa97
  %1740 = add i64 %1739, 4
  store i64 %1740, i64* %3, align 8
  %1741 = load i64, i64* %70, align 8
  store i64 %1741, i64* %RAX.i1033, align 8
  %1742 = add i64 %1741, 8
  %1743 = add i64 %1739, 8
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i64*
  %1745 = load i64, i64* %1744, align 8
  store i64 %1745, i64* %RAX.i1033, align 8
  %1746 = add i64 %1739, 11
  store i64 %1746, i64* %3, align 8
  %1747 = load i32, i32* %65, align 4
  %1748 = add i32 %1747, -1
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i1044, align 8
  %1750 = icmp eq i32 %1747, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %55, align 1
  %1752 = and i32 %1748, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %56, align 1
  %1757 = xor i32 %1748, %1747
  %1758 = lshr i32 %1757, 4
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  store i8 %1760, i8* %57, align 1
  %1761 = icmp eq i32 %1748, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %58, align 1
  %1763 = lshr i32 %1748, 31
  %1764 = trunc i32 %1763 to i8
  store i8 %1764, i8* %59, align 1
  %1765 = lshr i32 %1747, 31
  %1766 = xor i32 %1763, %1765
  %1767 = add nuw nsw i32 %1766, %1765
  %1768 = icmp eq i32 %1767, 2
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %60, align 1
  %1770 = sext i32 %1748 to i64
  store i64 %1770, i64* %RDX.i1047, align 8
  %1771 = add i64 %1745, %1770
  %1772 = add i64 %1739, 21
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i8*
  %1774 = load i8, i8* %1773, align 1
  %1775 = sext i8 %1774 to i64
  %1776 = and i64 %1775, 4294967295
  store i64 %1776, i64* %RCX.i1044, align 8
  %1777 = sext i8 %1774 to i32
  %1778 = add nsw i32 %1777, -6
  %1779 = icmp ult i8 %1774, 6
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %55, align 1
  %1781 = and i32 %1778, 255
  %1782 = tail call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  store i8 %1785, i8* %56, align 1
  %1786 = xor i32 %1778, %1777
  %1787 = lshr i32 %1786, 4
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  store i8 %1789, i8* %57, align 1
  %1790 = icmp eq i32 %1778, 0
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %58, align 1
  %1792 = lshr i32 %1778, 31
  %1793 = trunc i32 %1792 to i8
  store i8 %1793, i8* %59, align 1
  %1794 = lshr i32 %1777, 31
  %1795 = xor i32 %1792, %1794
  %1796 = add nuw nsw i32 %1795, %1794
  %1797 = icmp eq i32 %1796, 2
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %60, align 1
  %.v43 = select i1 %1790, i64 30, i64 320
  %1799 = add i64 %1739, %.v43
  store i64 %1799, i64* %3, align 8
  br i1 %1790, label %block_42aace, label %block_.L_42abf0

block_42aace:                                     ; preds = %block_42aab0
  %1800 = add i64 %1799, 4
  store i64 %1800, i64* %3, align 8
  %1801 = load i64, i64* %70, align 8
  store i64 %1801, i64* %RAX.i1033, align 8
  %1802 = add i64 %1801, 8
  %1803 = add i64 %1799, 8
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i64*
  %1805 = load i64, i64* %1804, align 8
  store i64 %1805, i64* %RAX.i1033, align 8
  %1806 = add i64 %1799, 11
  store i64 %1806, i64* %3, align 8
  %1807 = load i32, i32* %65, align 4
  %1808 = add i32 %1807, 1
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RCX.i1044, align 8
  %1810 = icmp eq i32 %1807, -1
  %1811 = icmp eq i32 %1808, 0
  %1812 = or i1 %1810, %1811
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %55, align 1
  %1814 = and i32 %1808, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %56, align 1
  %1819 = xor i32 %1808, %1807
  %1820 = lshr i32 %1819, 4
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %57, align 1
  %1823 = zext i1 %1811 to i8
  store i8 %1823, i8* %58, align 1
  %1824 = lshr i32 %1808, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %59, align 1
  %1826 = lshr i32 %1807, 31
  %1827 = xor i32 %1824, %1826
  %1828 = add nuw nsw i32 %1827, %1824
  %1829 = icmp eq i32 %1828, 2
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %60, align 1
  %1831 = sext i32 %1808 to i64
  store i64 %1831, i64* %RDX.i1047, align 8
  %1832 = add i64 %1805, %1831
  %1833 = add i64 %1799, 21
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i8*
  %1835 = load i8, i8* %1834, align 1
  %1836 = sext i8 %1835 to i64
  %1837 = and i64 %1836, 4294967295
  store i64 %1837, i64* %RCX.i1044, align 8
  %1838 = sext i8 %1835 to i32
  %1839 = add nsw i32 %1838, -8
  %1840 = icmp ult i8 %1835, 8
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %55, align 1
  %1842 = and i32 %1839, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %56, align 1
  %1847 = xor i32 %1839, %1838
  %1848 = lshr i32 %1847, 4
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  store i8 %1850, i8* %57, align 1
  %1851 = icmp eq i32 %1839, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %58, align 1
  %1853 = lshr i32 %1839, 31
  %1854 = trunc i32 %1853 to i8
  store i8 %1854, i8* %59, align 1
  %1855 = lshr i32 %1838, 31
  %1856 = xor i32 %1853, %1855
  %1857 = add nuw nsw i32 %1856, %1855
  %1858 = icmp eq i32 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %60, align 1
  %.v44 = select i1 %1851, i64 30, i64 290
  %1860 = add i64 %1799, %.v44
  store i64 %1860, i64* %3, align 8
  br i1 %1851, label %block_42aaec, label %block_.L_42abf0

block_42aaec:                                     ; preds = %block_42aace
  %1861 = add i64 %1860, 4
  store i64 %1861, i64* %3, align 8
  %1862 = load i64, i64* %70, align 8
  store i64 %1862, i64* %RAX.i1033, align 8
  %1863 = add i64 %1862, 8
  %1864 = add i64 %1860, 8
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i64*
  %1866 = load i64, i64* %1865, align 8
  store i64 %1866, i64* %RAX.i1033, align 8
  %1867 = add i64 %1860, 11
  store i64 %1867, i64* %3, align 8
  %1868 = load i32, i32* %65, align 4
  %1869 = add i32 %1868, 2
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RCX.i1044, align 8
  %1871 = icmp ugt i32 %1868, -3
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %55, align 1
  %1873 = and i32 %1869, 255
  %1874 = tail call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  store i8 %1877, i8* %56, align 1
  %1878 = xor i32 %1869, %1868
  %1879 = lshr i32 %1878, 4
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  store i8 %1881, i8* %57, align 1
  %1882 = icmp eq i32 %1869, 0
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %58, align 1
  %1884 = lshr i32 %1869, 31
  %1885 = trunc i32 %1884 to i8
  store i8 %1885, i8* %59, align 1
  %1886 = lshr i32 %1868, 31
  %1887 = xor i32 %1884, %1886
  %1888 = add nuw nsw i32 %1887, %1884
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %60, align 1
  %1891 = sext i32 %1869 to i64
  store i64 %1891, i64* %RDX.i1047, align 8
  %1892 = add i64 %1866, %1891
  %1893 = add i64 %1860, 21
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i8*
  %1895 = load i8, i8* %1894, align 1
  %1896 = sext i8 %1895 to i64
  %1897 = and i64 %1896, 4294967295
  store i64 %1897, i64* %RCX.i1044, align 8
  %1898 = sext i8 %1895 to i32
  %1899 = add nsw i32 %1898, -8
  %1900 = icmp ult i8 %1895, 8
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %55, align 1
  %1902 = and i32 %1899, 255
  %1903 = tail call i32 @llvm.ctpop.i32(i32 %1902)
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  %1906 = xor i8 %1905, 1
  store i8 %1906, i8* %56, align 1
  %1907 = xor i32 %1899, %1898
  %1908 = lshr i32 %1907, 4
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  store i8 %1910, i8* %57, align 1
  %1911 = icmp eq i32 %1899, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %58, align 1
  %1913 = lshr i32 %1899, 31
  %1914 = trunc i32 %1913 to i8
  store i8 %1914, i8* %59, align 1
  %1915 = lshr i32 %1898, 31
  %1916 = xor i32 %1913, %1915
  %1917 = add nuw nsw i32 %1916, %1915
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %60, align 1
  %.v45 = select i1 %1911, i64 30, i64 260
  %1920 = add i64 %1860, %.v45
  store i64 %1920, i64* %3, align 8
  br i1 %1911, label %block_42ab0a, label %block_.L_42abf0

block_42ab0a:                                     ; preds = %block_42aaec
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %3, align 8
  %1922 = load i64, i64* %70, align 8
  store i64 %1922, i64* %RAX.i1033, align 8
  %1923 = add i64 %1922, 8
  %1924 = add i64 %1920, 8
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i64*
  %1926 = load i64, i64* %1925, align 8
  store i64 %1926, i64* %RAX.i1033, align 8
  %1927 = add i64 %62, -40
  %1928 = add i64 %1920, 12
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  %1930 = load i32, i32* %1929, align 4
  %1931 = sext i32 %1930 to i64
  store i64 %1931, i64* %RCX.i1044, align 8
  %1932 = add i64 %1926, %1931
  %1933 = add i64 %1920, 16
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i8*
  store i8 1, i8* %1934, align 1
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -12
  %1937 = load i64, i64* %3, align 8
  %1938 = add i64 %1937, 3
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1936 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RDX.i1047, align 8
  %1942 = add i64 %1935, -8
  %1943 = add i64 %1937, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i64*
  %1945 = load i64, i64* %1944, align 8
  store i64 %1945, i64* %RAX.i1033, align 8
  %1946 = add i64 %1945, 16
  %1947 = add i64 %1937, 11
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i64*
  %1949 = load i64, i64* %1948, align 8
  store i64 %1949, i64* %RAX.i1033, align 8
  %1950 = add i64 %1935, -40
  %1951 = add i64 %1937, 15
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1950 to i32*
  %1953 = load i32, i32* %1952, align 4
  %1954 = sext i32 %1953 to i64
  store i64 %1954, i64* %RCX.i1044, align 8
  %1955 = shl nsw i64 %1954, 2
  %1956 = add i64 %1955, %1949
  %1957 = add i64 %1937, 18
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i32*
  store i32 %1940, i32* %1958, align 4
  %1959 = load i64, i64* %RBP.i, align 8
  %1960 = add i64 %1959, -8
  %1961 = load i64, i64* %3, align 8
  %1962 = add i64 %1961, 4
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1960 to i64*
  %1964 = load i64, i64* %1963, align 8
  store i64 %1964, i64* %RAX.i1033, align 8
  %1965 = add i64 %1964, 24
  %1966 = add i64 %1961, 8
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i64*
  %1968 = load i64, i64* %1967, align 8
  store i64 %1968, i64* %RAX.i1033, align 8
  %1969 = add i64 %1959, -36
  %1970 = add i64 %1961, 11
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i32*
  %1972 = load i32, i32* %1971, align 4
  %1973 = add i32 %1972, 2
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RDX.i1047, align 8
  %1975 = icmp ugt i32 %1972, -3
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %55, align 1
  %1977 = and i32 %1973, 255
  %1978 = tail call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  store i8 %1981, i8* %56, align 1
  %1982 = xor i32 %1973, %1972
  %1983 = lshr i32 %1982, 4
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %57, align 1
  %1986 = icmp eq i32 %1973, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %58, align 1
  %1988 = lshr i32 %1973, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %59, align 1
  %1990 = lshr i32 %1972, 31
  %1991 = xor i32 %1988, %1990
  %1992 = add nuw nsw i32 %1991, %1988
  %1993 = icmp eq i32 %1992, 2
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %60, align 1
  %1995 = sext i32 %1973 to i64
  store i64 %1995, i64* %RCX.i1044, align 8
  %1996 = shl nsw i64 %1995, 2
  %1997 = add i64 %1968, %1996
  %1998 = add i64 %1961, 20
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RDX.i1047, align 8
  %2002 = add i64 %1961, 24
  store i64 %2002, i64* %3, align 8
  %2003 = load i64, i64* %1963, align 8
  store i64 %2003, i64* %RAX.i1033, align 8
  %2004 = add i64 %2003, 24
  %2005 = add i64 %1961, 28
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i64*
  %2007 = load i64, i64* %2006, align 8
  store i64 %2007, i64* %RAX.i1033, align 8
  %2008 = add i64 %1959, -40
  %2009 = add i64 %1961, 32
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = sext i32 %2011 to i64
  store i64 %2012, i64* %RCX.i1044, align 8
  %2013 = shl nsw i64 %2012, 2
  %2014 = add i64 %2013, %2007
  %2015 = add i64 %1961, 35
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2014 to i32*
  store i32 %2000, i32* %2016, align 4
  %2017 = load i64, i64* %RBP.i, align 8
  %2018 = add i64 %2017, -8
  %2019 = load i64, i64* %3, align 8
  %2020 = add i64 %2019, 4
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2018 to i64*
  %2022 = load i64, i64* %2021, align 8
  store i64 %2022, i64* %RAX.i1033, align 8
  %2023 = add i64 %2022, 8
  %2024 = add i64 %2019, 8
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i64*
  %2026 = load i64, i64* %2025, align 8
  store i64 %2026, i64* %RAX.i1033, align 8
  %2027 = add i64 %2017, -40
  %2028 = add i64 %2019, 11
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = add i32 %2030, 1
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDX.i1047, align 8
  %2033 = icmp eq i32 %2030, -1
  %2034 = icmp eq i32 %2031, 0
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %55, align 1
  %2037 = and i32 %2031, 255
  %2038 = tail call i32 @llvm.ctpop.i32(i32 %2037)
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = xor i8 %2040, 1
  store i8 %2041, i8* %56, align 1
  %2042 = xor i32 %2031, %2030
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %57, align 1
  %2046 = zext i1 %2034 to i8
  store i8 %2046, i8* %58, align 1
  %2047 = lshr i32 %2031, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %59, align 1
  %2049 = lshr i32 %2030, 31
  %2050 = xor i32 %2047, %2049
  %2051 = add nuw nsw i32 %2050, %2047
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %60, align 1
  %2054 = sext i32 %2031 to i64
  store i64 %2054, i64* %RCX.i1044, align 8
  %2055 = add i64 %2026, %2054
  %2056 = add i64 %2019, 21
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i8*
  store i8 7, i8* %2057, align 1
  %2058 = load i64, i64* %RBP.i, align 8
  %2059 = add i64 %2058, -8
  %2060 = load i64, i64* %3, align 8
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2059 to i64*
  %2063 = load i64, i64* %2062, align 8
  store i64 %2063, i64* %RAX.i1033, align 8
  %2064 = add i64 %2063, 16
  %2065 = add i64 %2060, 8
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RAX.i1033, align 8
  %2068 = add i64 %2058, -40
  %2069 = add i64 %2060, 11
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = add i32 %2071, 1
  %2073 = zext i32 %2072 to i64
  store i64 %2073, i64* %RDX.i1047, align 8
  %2074 = icmp eq i32 %2071, -1
  %2075 = icmp eq i32 %2072, 0
  %2076 = or i1 %2074, %2075
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %55, align 1
  %2078 = and i32 %2072, 255
  %2079 = tail call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  store i8 %2082, i8* %56, align 1
  %2083 = xor i32 %2072, %2071
  %2084 = lshr i32 %2083, 4
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  store i8 %2086, i8* %57, align 1
  %2087 = zext i1 %2075 to i8
  store i8 %2087, i8* %58, align 1
  %2088 = lshr i32 %2072, 31
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, i8* %59, align 1
  %2090 = lshr i32 %2071, 31
  %2091 = xor i32 %2088, %2090
  %2092 = add nuw nsw i32 %2091, %2088
  %2093 = icmp eq i32 %2092, 2
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %60, align 1
  %2095 = sext i32 %2072 to i64
  store i64 %2095, i64* %RCX.i1044, align 8
  %2096 = shl nsw i64 %2095, 2
  %2097 = add i64 %2067, %2096
  %2098 = add i64 %2060, 24
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  store i32 0, i32* %2099, align 4
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -8
  %2102 = load i64, i64* %3, align 8
  %2103 = add i64 %2102, 4
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2101 to i64*
  %2105 = load i64, i64* %2104, align 8
  store i64 %2105, i64* %RAX.i1033, align 8
  %2106 = add i64 %2105, 24
  %2107 = add i64 %2102, 8
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i64*
  %2109 = load i64, i64* %2108, align 8
  store i64 %2109, i64* %RAX.i1033, align 8
  %2110 = add i64 %2100, -40
  %2111 = add i64 %2102, 11
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = add i32 %2113, 1
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RDX.i1047, align 8
  %2116 = icmp eq i32 %2113, -1
  %2117 = icmp eq i32 %2114, 0
  %2118 = or i1 %2116, %2117
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %55, align 1
  %2120 = and i32 %2114, 255
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %56, align 1
  %2125 = xor i32 %2114, %2113
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %57, align 1
  %2129 = zext i1 %2117 to i8
  store i8 %2129, i8* %58, align 1
  %2130 = lshr i32 %2114, 31
  %2131 = trunc i32 %2130 to i8
  store i8 %2131, i8* %59, align 1
  %2132 = lshr i32 %2113, 31
  %2133 = xor i32 %2130, %2132
  %2134 = add nuw nsw i32 %2133, %2130
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %60, align 1
  %2137 = sext i32 %2114 to i64
  store i64 %2137, i64* %RCX.i1044, align 8
  %2138 = shl nsw i64 %2137, 2
  %2139 = add i64 %2109, %2138
  %2140 = add i64 %2102, 24
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  store i32 0, i32* %2141, align 4
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -8
  %2144 = load i64, i64* %3, align 8
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2143 to i64*
  %2147 = load i64, i64* %2146, align 8
  store i64 %2147, i64* %RAX.i1033, align 8
  %2148 = add i64 %2147, 8
  %2149 = add i64 %2144, 8
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i64*
  %2151 = load i64, i64* %2150, align 8
  store i64 %2151, i64* %RAX.i1033, align 8
  %2152 = add i64 %2142, -40
  %2153 = add i64 %2144, 11
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  %2156 = add i32 %2155, 2
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RDX.i1047, align 8
  %2158 = icmp ugt i32 %2155, -3
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %55, align 1
  %2160 = and i32 %2156, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %56, align 1
  %2165 = xor i32 %2156, %2155
  %2166 = lshr i32 %2165, 4
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  store i8 %2168, i8* %57, align 1
  %2169 = icmp eq i32 %2156, 0
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %58, align 1
  %2171 = lshr i32 %2156, 31
  %2172 = trunc i32 %2171 to i8
  store i8 %2172, i8* %59, align 1
  %2173 = lshr i32 %2155, 31
  %2174 = xor i32 %2171, %2173
  %2175 = add nuw nsw i32 %2174, %2171
  %2176 = icmp eq i32 %2175, 2
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %60, align 1
  %2178 = sext i32 %2156 to i64
  store i64 %2178, i64* %RCX.i1044, align 8
  %2179 = add i64 %2151, %2178
  %2180 = add i64 %2144, 21
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i8*
  store i8 8, i8* %2181, align 1
  %2182 = load i64, i64* %RBP.i, align 8
  %2183 = add i64 %2182, -8
  %2184 = load i64, i64* %3, align 8
  %2185 = add i64 %2184, 4
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2183 to i64*
  %2187 = load i64, i64* %2186, align 8
  store i64 %2187, i64* %RAX.i1033, align 8
  %2188 = add i64 %2187, 16
  %2189 = add i64 %2184, 8
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i64*
  %2191 = load i64, i64* %2190, align 8
  store i64 %2191, i64* %RAX.i1033, align 8
  %2192 = add i64 %2182, -40
  %2193 = add i64 %2184, 11
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = add i32 %2195, 2
  %2197 = zext i32 %2196 to i64
  store i64 %2197, i64* %RDX.i1047, align 8
  %2198 = icmp ugt i32 %2195, -3
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %55, align 1
  %2200 = and i32 %2196, 255
  %2201 = tail call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %56, align 1
  %2205 = xor i32 %2196, %2195
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  store i8 %2208, i8* %57, align 1
  %2209 = icmp eq i32 %2196, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %58, align 1
  %2211 = lshr i32 %2196, 31
  %2212 = trunc i32 %2211 to i8
  store i8 %2212, i8* %59, align 1
  %2213 = lshr i32 %2195, 31
  %2214 = xor i32 %2211, %2213
  %2215 = add nuw nsw i32 %2214, %2211
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %60, align 1
  %2218 = sext i32 %2196 to i64
  store i64 %2218, i64* %RCX.i1044, align 8
  %2219 = shl nsw i64 %2218, 2
  %2220 = add i64 %2191, %2219
  %2221 = add i64 %2184, 24
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  store i32 0, i32* %2222, align 4
  %2223 = load i64, i64* %RBP.i, align 8
  %2224 = add i64 %2223, -8
  %2225 = load i64, i64* %3, align 8
  %2226 = add i64 %2225, 4
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2224 to i64*
  %2228 = load i64, i64* %2227, align 8
  store i64 %2228, i64* %RAX.i1033, align 8
  %2229 = add i64 %2228, 24
  %2230 = add i64 %2225, 8
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %RAX.i1033, align 8
  %2233 = add i64 %2223, -40
  %2234 = add i64 %2225, 11
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  %2237 = add i32 %2236, 2
  %2238 = zext i32 %2237 to i64
  store i64 %2238, i64* %RDX.i1047, align 8
  %2239 = icmp ugt i32 %2236, -3
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %55, align 1
  %2241 = and i32 %2237, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %56, align 1
  %2246 = xor i32 %2237, %2236
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  store i8 %2249, i8* %57, align 1
  %2250 = icmp eq i32 %2237, 0
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %58, align 1
  %2252 = lshr i32 %2237, 31
  %2253 = trunc i32 %2252 to i8
  store i8 %2253, i8* %59, align 1
  %2254 = lshr i32 %2236, 31
  %2255 = xor i32 %2252, %2254
  %2256 = add nuw nsw i32 %2255, %2252
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %60, align 1
  %2259 = sext i32 %2237 to i64
  store i64 %2259, i64* %RCX.i1044, align 8
  %2260 = shl nsw i64 %2259, 2
  %2261 = add i64 %2232, %2260
  %2262 = add i64 %2225, 24
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  store i32 0, i32* %2263, align 4
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -36
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = add i32 %2269, 3
  %2271 = zext i32 %2270 to i64
  store i64 %2271, i64* %RDX.i1047, align 8
  %2272 = icmp ugt i32 %2269, -4
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %55, align 1
  %2274 = and i32 %2270, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %56, align 1
  %2279 = xor i32 %2270, %2269
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %57, align 1
  %2283 = icmp eq i32 %2270, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %58, align 1
  %2285 = lshr i32 %2270, 31
  %2286 = trunc i32 %2285 to i8
  store i8 %2286, i8* %59, align 1
  %2287 = lshr i32 %2269, 31
  %2288 = xor i32 %2285, %2287
  %2289 = add nuw nsw i32 %2288, %2285
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %60, align 1
  %2292 = add i64 %2266, 9
  store i64 %2292, i64* %3, align 8
  store i32 %2270, i32* %2268, align 4
  %2293 = load i64, i64* %RBP.i, align 8
  %2294 = add i64 %2293, -40
  %2295 = load i64, i64* %3, align 8
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2294 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = add i32 %2298, 3
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RDX.i1047, align 8
  %2301 = icmp ugt i32 %2298, -4
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %55, align 1
  %2303 = and i32 %2299, 255
  %2304 = tail call i32 @llvm.ctpop.i32(i32 %2303)
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = xor i8 %2306, 1
  store i8 %2307, i8* %56, align 1
  %2308 = xor i32 %2299, %2298
  %2309 = lshr i32 %2308, 4
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %57, align 1
  %2312 = icmp eq i32 %2299, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %58, align 1
  %2314 = lshr i32 %2299, 31
  %2315 = trunc i32 %2314 to i8
  store i8 %2315, i8* %59, align 1
  %2316 = lshr i32 %2298, 31
  %2317 = xor i32 %2314, %2316
  %2318 = add nuw nsw i32 %2317, %2314
  %2319 = icmp eq i32 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %60, align 1
  %2321 = add i64 %2295, 9
  store i64 %2321, i64* %3, align 8
  store i32 %2299, i32* %2297, align 4
  %2322 = load i64, i64* %3, align 8
  %2323 = add i64 %2322, 113
  store i64 %2323, i64* %3, align 8
  br label %block_.L_42ac5c

block_.L_42abf0:                                  ; preds = %block_42aaec, %block_42aace, %block_42aab0, %block_.L_42aa97
  %2324 = phi i64 [ %1920, %block_42aaec ], [ %1860, %block_42aace ], [ %1799, %block_42aab0 ], [ %1739, %block_.L_42aa97 ]
  %2325 = add i64 %2324, 4
  store i64 %2325, i64* %3, align 8
  %2326 = load i64, i64* %70, align 8
  store i64 %2326, i64* %RAX.i1033, align 8
  %2327 = add i64 %2326, 8
  %2328 = add i64 %2324, 8
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i64*
  %2330 = load i64, i64* %2329, align 8
  store i64 %2330, i64* %RAX.i1033, align 8
  %2331 = add i64 %2324, 12
  store i64 %2331, i64* %3, align 8
  %2332 = load i32, i32* %65, align 4
  %2333 = sext i32 %2332 to i64
  store i64 %2333, i64* %RCX.i1044, align 8
  %2334 = add i64 %2330, %2333
  %2335 = add i64 %2324, 15
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i8*
  %2337 = load i8, i8* %2336, align 1
  store i8 %2337, i8* %DL.i114, align 1
  %2338 = add i64 %2324, 19
  store i64 %2338, i64* %3, align 8
  %2339 = load i64, i64* %70, align 8
  store i64 %2339, i64* %RAX.i1033, align 8
  %2340 = add i64 %2339, 8
  %2341 = add i64 %2324, 23
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i64*
  %2343 = load i64, i64* %2342, align 8
  store i64 %2343, i64* %RAX.i1033, align 8
  %2344 = add i64 %62, -40
  %2345 = add i64 %2324, 27
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i32*
  %2347 = load i32, i32* %2346, align 4
  %2348 = sext i32 %2347 to i64
  store i64 %2348, i64* %RCX.i1044, align 8
  %2349 = add i64 %2343, %2348
  %2350 = add i64 %2324, 30
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i8*
  store i8 %2337, i8* %2351, align 1
  %2352 = load i64, i64* %RBP.i, align 8
  %2353 = add i64 %2352, -8
  %2354 = load i64, i64* %3, align 8
  %2355 = add i64 %2354, 4
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2353 to i64*
  %2357 = load i64, i64* %2356, align 8
  store i64 %2357, i64* %RAX.i1033, align 8
  %2358 = add i64 %2357, 16
  %2359 = add i64 %2354, 8
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i64*
  %2361 = load i64, i64* %2360, align 8
  store i64 %2361, i64* %RAX.i1033, align 8
  %2362 = add i64 %2352, -36
  %2363 = add i64 %2354, 12
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = sext i32 %2365 to i64
  store i64 %2366, i64* %RCX.i1044, align 8
  %2367 = shl nsw i64 %2366, 2
  %2368 = add i64 %2367, %2361
  %2369 = add i64 %2354, 15
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RSI.i93, align 8
  %2373 = add i64 %2354, 19
  store i64 %2373, i64* %3, align 8
  %2374 = load i64, i64* %2356, align 8
  store i64 %2374, i64* %RAX.i1033, align 8
  %2375 = add i64 %2374, 16
  %2376 = add i64 %2354, 23
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  store i64 %2378, i64* %RAX.i1033, align 8
  %2379 = add i64 %2352, -40
  %2380 = add i64 %2354, 27
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = sext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i1044, align 8
  %2384 = shl nsw i64 %2383, 2
  %2385 = add i64 %2384, %2378
  %2386 = add i64 %2354, 30
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  store i32 %2371, i32* %2387, align 4
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = add i64 %2388, -8
  %2390 = load i64, i64* %3, align 8
  %2391 = add i64 %2390, 4
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2389 to i64*
  %2393 = load i64, i64* %2392, align 8
  store i64 %2393, i64* %RAX.i1033, align 8
  %2394 = add i64 %2393, 24
  %2395 = add i64 %2390, 8
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i64*
  %2397 = load i64, i64* %2396, align 8
  store i64 %2397, i64* %RAX.i1033, align 8
  %2398 = add i64 %2388, -36
  %2399 = add i64 %2390, 12
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = sext i32 %2401 to i64
  store i64 %2402, i64* %RCX.i1044, align 8
  %2403 = shl nsw i64 %2402, 2
  %2404 = add i64 %2403, %2397
  %2405 = add i64 %2390, 15
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RSI.i93, align 8
  %2409 = add i64 %2390, 19
  store i64 %2409, i64* %3, align 8
  %2410 = load i64, i64* %2392, align 8
  store i64 %2410, i64* %RAX.i1033, align 8
  %2411 = add i64 %2410, 24
  %2412 = add i64 %2390, 23
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i64*
  %2414 = load i64, i64* %2413, align 8
  store i64 %2414, i64* %RAX.i1033, align 8
  %2415 = add i64 %2388, -40
  %2416 = add i64 %2390, 27
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = sext i32 %2418 to i64
  store i64 %2419, i64* %RCX.i1044, align 8
  %2420 = shl nsw i64 %2419, 2
  %2421 = add i64 %2420, %2414
  %2422 = add i64 %2390, 30
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  store i32 %2407, i32* %2423, align 4
  %2424 = load i64, i64* %RBP.i, align 8
  %2425 = add i64 %2424, -36
  %2426 = load i64, i64* %3, align 8
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2425 to i32*
  %2429 = load i32, i32* %2428, align 4
  %2430 = add i32 %2429, 1
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RSI.i93, align 8
  %2432 = icmp eq i32 %2429, -1
  %2433 = icmp eq i32 %2430, 0
  %2434 = or i1 %2432, %2433
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %55, align 1
  %2436 = and i32 %2430, 255
  %2437 = tail call i32 @llvm.ctpop.i32(i32 %2436)
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = xor i8 %2439, 1
  store i8 %2440, i8* %56, align 1
  %2441 = xor i32 %2430, %2429
  %2442 = lshr i32 %2441, 4
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  store i8 %2444, i8* %57, align 1
  %2445 = zext i1 %2433 to i8
  store i8 %2445, i8* %58, align 1
  %2446 = lshr i32 %2430, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %59, align 1
  %2448 = lshr i32 %2429, 31
  %2449 = xor i32 %2446, %2448
  %2450 = add nuw nsw i32 %2449, %2446
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %60, align 1
  %2453 = add i64 %2426, 9
  store i64 %2453, i64* %3, align 8
  store i32 %2430, i32* %2428, align 4
  %2454 = load i64, i64* %RBP.i, align 8
  %2455 = add i64 %2454, -40
  %2456 = load i64, i64* %3, align 8
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2455 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = add i32 %2459, 1
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RSI.i93, align 8
  %2462 = icmp eq i32 %2459, -1
  %2463 = icmp eq i32 %2460, 0
  %2464 = or i1 %2462, %2463
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %55, align 1
  %2466 = and i32 %2460, 255
  %2467 = tail call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  store i8 %2470, i8* %56, align 1
  %2471 = xor i32 %2460, %2459
  %2472 = lshr i32 %2471, 4
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  store i8 %2474, i8* %57, align 1
  %2475 = zext i1 %2463 to i8
  store i8 %2475, i8* %58, align 1
  %2476 = lshr i32 %2460, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %59, align 1
  %2478 = lshr i32 %2459, 31
  %2479 = xor i32 %2476, %2478
  %2480 = add nuw nsw i32 %2479, %2476
  %2481 = icmp eq i32 %2480, 2
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %60, align 1
  %2483 = add i64 %2456, 9
  store i64 %2483, i64* %3, align 8
  store i32 %2460, i32* %2458, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_42ac5c

block_.L_42ac5c:                                  ; preds = %block_.L_42abf0, %block_42ab0a
  %2484 = phi i64 [ %.pre34, %block_.L_42abf0 ], [ %2323, %block_42ab0a ]
  %2485 = add i64 %2484, 5
  store i64 %2485, i64* %3, align 8
  br label %block_.L_42ac61

block_.L_42ac61:                                  ; preds = %block_.L_42ac5c, %block_42a9f5
  %storemerge22 = phi i64 [ %1700, %block_42a9f5 ], [ %2485, %block_.L_42ac5c ]
  %2486 = add i64 %storemerge22, 5
  store i64 %2486, i64* %3, align 8
  br label %block_.L_42ac66

block_.L_42ac66:                                  ; preds = %block_.L_42ac61, %block_42a91f
  %storemerge21 = phi i64 [ %1217, %block_42a91f ], [ %2486, %block_.L_42ac61 ]
  %2487 = add i64 %storemerge21, 5
  store i64 %2487, i64* %3, align 8
  br label %block_.L_42ac6b

block_.L_42ac6b:                                  ; preds = %block_.L_42ac66, %block_42a885
  %storemerge20 = phi i64 [ %947, %block_42a885 ], [ %2487, %block_.L_42ac66 ]
  %2488 = add i64 %storemerge20, 5
  store i64 %2488, i64* %3, align 8
  br label %block_.L_42ac70

block_.L_42ac70:                                  ; preds = %block_.L_42ac6b, %block_42a7dd
  %storemerge19 = phi i64 [ %700, %block_42a7dd ], [ %2488, %block_.L_42ac6b ]
  %2489 = add i64 %storemerge19, 5
  store i64 %2489, i64* %3, align 8
  br label %block_.L_42ac75

block_.L_42ac75:                                  ; preds = %block_.L_42ac70, %block_42a735
  %storemerge = phi i64 [ %400, %block_42a735 ], [ %2489, %block_.L_42ac70 ]
  %2490 = add i64 %storemerge, -1414
  store i64 %2490, i64* %3, align 8
  br label %block_.L_42a6ef

block_.L_42ac7a:                                  ; preds = %block_.L_42a6ef
  %2491 = add i64 %62, -40
  %2492 = add i64 %101, 3
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RAX.i1033, align 8
  %2496 = add i64 %101, 7
  store i64 %2496, i64* %3, align 8
  %2497 = load i64, i64* %70, align 8
  store i64 %2497, i64* %RCX.i1044, align 8
  %2498 = add i64 %101, 9
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  store i32 %2494, i32* %2499, align 4
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -24
  %2502 = load i64, i64* %3, align 8
  %2503 = add i64 %2502, 5
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2501 to i64*
  %2505 = load i64, i64* %2504, align 8
  store i8 0, i8* %55, align 1
  %2506 = trunc i64 %2505 to i32
  %2507 = and i32 %2506, 255
  %2508 = tail call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  store i8 %2511, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %2512 = icmp eq i64 %2505, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %58, align 1
  %2514 = lshr i64 %2505, 63
  %2515 = trunc i64 %2514 to i8
  store i8 %2515, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %.v35 = select i1 %2512, i64 20, i64 11
  %2516 = add i64 %2502, %.v35
  store i64 %2516, i64* %3, align 8
  br i1 %2512, label %block_.L_42ac97, label %block_42ac8e

block_42ac8e:                                     ; preds = %block_.L_42ac7a
  %2517 = add i64 %2500, -44
  %2518 = add i64 %2516, 3
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i32*
  %2520 = load i32, i32* %2519, align 4
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RAX.i1033, align 8
  %2522 = add i64 %2516, 7
  store i64 %2522, i64* %3, align 8
  %2523 = load i64, i64* %2504, align 8
  store i64 %2523, i64* %RCX.i1044, align 8
  %2524 = add i64 %2516, 9
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  store i32 %2520, i32* %2525, align 4
  %.pre31 = load i64, i64* %RBP.i, align 8
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_42ac97

block_.L_42ac97:                                  ; preds = %block_42ac8e, %block_.L_42ac7a
  %2526 = phi i64 [ %.pre32, %block_42ac8e ], [ %2516, %block_.L_42ac7a ]
  %2527 = phi i64 [ %.pre31, %block_42ac8e ], [ %2500, %block_.L_42ac7a ]
  %2528 = add i64 %2527, -32
  %2529 = add i64 %2526, 5
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i8 0, i8* %55, align 1
  %2532 = trunc i64 %2531 to i32
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %2538 = icmp eq i64 %2531, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %58, align 1
  %2540 = lshr i64 %2531, 63
  %2541 = trunc i64 %2540 to i8
  store i8 %2541, i8* %59, align 1
  store i8 0, i8* %60, align 1
  %.v36 = select i1 %2538, i64 20, i64 11
  %2542 = add i64 %2526, %.v36
  store i64 %2542, i64* %3, align 8
  br i1 %2538, label %block_.L_42acab, label %block_42aca2

block_42aca2:                                     ; preds = %block_.L_42ac97
  %2543 = add i64 %2527, -48
  %2544 = add i64 %2542, 3
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2543 to i32*
  %2546 = load i32, i32* %2545, align 4
  %2547 = zext i32 %2546 to i64
  store i64 %2547, i64* %RAX.i1033, align 8
  %2548 = add i64 %2542, 7
  store i64 %2548, i64* %3, align 8
  %2549 = load i64, i64* %2530, align 8
  store i64 %2549, i64* %RCX.i1044, align 8
  %2550 = add i64 %2542, 9
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  store i32 %2546, i32* %2551, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_42acab

block_.L_42acab:                                  ; preds = %block_42aca2, %block_.L_42ac97
  %2552 = phi i64 [ %.pre33, %block_42aca2 ], [ %2542, %block_.L_42ac97 ]
  %2553 = add i64 %2552, 1
  store i64 %2553, i64* %3, align 8
  %2554 = load i64, i64* %6, align 8
  %2555 = add i64 %2554, 8
  %2556 = inttoptr i64 %2554 to i64*
  %2557 = load i64, i64* %2556, align 8
  store i64 %2557, i64* %RBP.i, align 8
  store i64 %2555, i64* %6, align 8
  %2558 = add i64 %2552, 2
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2555 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %3, align 8
  %2561 = add i64 %2554, 16
  store i64 %2561, i64* %6, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = bitcast i64* %RCX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42ac7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_42a7a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42ac75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_jne_.L_42a84e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42ac70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a8e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -6
  %8 = icmp ult i32 %4, 6
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
define %struct.Memory* @routine_jmpq_.L_42ac6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a985(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -7
  %8 = icmp ult i32 %4, 7
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
define %struct.Memory* @routine_jmpq_.L_42ac66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -6
  %8 = icmp ult i32 %4, 6
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
define %struct.Memory* @routine_jne_.L_42aa97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42aa97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 1, i32* %9, align 4
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
define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 6, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42ac61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -7
  %8 = icmp ult i32 %4, 7
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
define %struct.Memory* @routine_jne_.L_42abf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -8
  %8 = icmp ult i32 %4, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 7, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 8, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_42ac5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_42a6ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42ac97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42acab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
