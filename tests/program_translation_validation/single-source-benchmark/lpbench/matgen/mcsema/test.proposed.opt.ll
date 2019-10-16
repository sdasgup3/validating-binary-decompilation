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

declare %struct.Memory* @sub_4007a0.random_double(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @matgen(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 0, i32* %53, align 4
  %RAX.i119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400697

block_.L_400697:                                  ; preds = %block_.L_4006e0, %entry
  %55 = phi i64 [ %.pre, %entry ], [ %212, %block_.L_4006e0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_4006e0 ]
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -20
  %58 = add i64 %55, 7
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, -2000
  %62 = icmp ult i32 %60, 2000
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %14, align 1
  %64 = and i32 %61, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  %69 = xor i32 %60, 16
  %70 = xor i32 %69, %61
  %71 = lshr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %26, align 1
  %74 = icmp eq i32 %61, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %29, align 1
  %76 = lshr i32 %61, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %32, align 1
  %78 = lshr i32 %60, 31
  %79 = xor i32 %76, %78
  %80 = add nuw nsw i32 %79, %78
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %38, align 1
  %83 = icmp ne i8 %77, 0
  %84 = xor i1 %83, %81
  %.v20 = select i1 %84, i64 13, i64 92
  %85 = add i64 %55, %.v20
  store i64 %85, i64* %3, align 8
  br i1 %84, label %block_4006a4, label %block_.L_4006f3

block_4006a4:                                     ; preds = %block_.L_400697
  %86 = add i64 %56, -24
  %87 = add i64 %85, 7
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 0, i32* %88, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_4006ab

block_.L_4006ab:                                  ; preds = %block_4006b8, %block_4006a4
  %89 = phi i64 [ %.pre18, %block_4006a4 ], [ %182, %block_4006b8 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4006a4 ], [ %call2_4006b8, %block_4006b8 ]
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -24
  %92 = add i64 %89, 7
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, -2000
  %96 = icmp ult i32 %94, 2000
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %14, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1
  %103 = xor i32 %94, 16
  %104 = xor i32 %103, %95
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %26, align 1
  %108 = icmp eq i32 %95, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %29, align 1
  %110 = lshr i32 %95, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %32, align 1
  %112 = lshr i32 %94, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1
  %117 = icmp ne i8 %111, 0
  %118 = xor i1 %117, %115
  %.v19 = select i1 %118, i64 13, i64 53
  %119 = add i64 %89, %.v19
  store i64 %119, i64* %3, align 8
  br i1 %118, label %block_4006b8, label %block_.L_4006e0

block_4006b8:                                     ; preds = %block_.L_4006ab
  %120 = add i64 %119, 232
  %121 = add i64 %119, 5
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  %call2_4006b8 = tail call %struct.Memory* @sub_4007a0.random_double(%struct.State* nonnull %0, i64 %120, %struct.Memory* %MEMORY.1)
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -8
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i119, align 8
  %131 = add i64 %125, -24
  %132 = add i64 %127, 8
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %RCX.i116, align 8
  %136 = shl nsw i64 %135, 3
  %137 = add i64 %136, %130
  %138 = add i64 %127, 12
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX.i119, align 8
  %141 = add i64 %125, -20
  %142 = add i64 %127, 16
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RCX.i116, align 8
  %146 = shl nsw i64 %145, 3
  %147 = add i64 %146, %140
  %148 = add i64 %127, 21
  store i64 %148, i64* %3, align 8
  %149 = load i64, i64* %54, align 1
  %150 = inttoptr i64 %147 to i64*
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -24
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 3
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX.i119, align 8
  %159 = icmp eq i32 %156, -1
  %160 = icmp eq i32 %157, 0
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %14, align 1
  %163 = and i32 %157, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i32 %157, %156
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %26, align 1
  %172 = zext i1 %160 to i8
  store i8 %172, i8* %29, align 1
  %173 = lshr i32 %157, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %32, align 1
  %175 = lshr i32 %156, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %173
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  %180 = add i64 %153, 9
  store i64 %180, i64* %3, align 8
  store i32 %157, i32* %155, align 4
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, -48
  store i64 %182, i64* %3, align 8
  br label %block_.L_4006ab

block_.L_4006e0:                                  ; preds = %block_.L_4006ab
  %183 = add i64 %90, -20
  %184 = add i64 %119, 8
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i119, align 8
  %189 = icmp eq i32 %186, -1
  %190 = icmp eq i32 %187, 0
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1
  %193 = and i32 %187, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %21, align 1
  %198 = xor i32 %187, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %26, align 1
  %202 = zext i1 %190 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i32 %187, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %32, align 1
  %205 = lshr i32 %186, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %203
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %38, align 1
  %210 = add i64 %119, 14
  store i64 %210, i64* %3, align 8
  store i32 %187, i32* %185, align 4
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, -87
  store i64 %212, i64* %3, align 8
  br label %block_.L_400697

block_.L_4006f3:                                  ; preds = %block_.L_400697
  %213 = add i64 %85, 7
  store i64 %213, i64* %3, align 8
  store i32 0, i32* %59, align 4
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %216 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %214, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre15 = load i64, i64* %3, align 8
  %217 = bitcast %union.VectorReg* %214 to <4 x i32>*
  br label %block_.L_4006fa

block_.L_4006fa:                                  ; preds = %block_400707, %block_.L_4006f3
  %218 = phi i64 [ %292, %block_400707 ], [ %.pre15, %block_.L_4006f3 ]
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -20
  %221 = add i64 %218, 7
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, -2000
  %225 = icmp ult i32 %223, 2000
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1
  %232 = xor i32 %223, 16
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %26, align 1
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %29, align 1
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = lshr i32 %223, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %38, align 1
  %246 = icmp ne i8 %240, 0
  %247 = xor i1 %246, %244
  %.v21 = select i1 %247, i64 13, i64 43
  %248 = add i64 %218, %.v21
  store i64 %248, i64* %3, align 8
  br i1 %247, label %block_400707, label %block_.L_400725

block_400707:                                     ; preds = %block_.L_4006fa
  store <4 x i32> zeroinitializer, <4 x i32>* %217, align 1
  %249 = add i64 %219, -16
  %250 = add i64 %248, 7
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX.i119, align 8
  %253 = add i64 %248, 11
  store i64 %253, i64* %3, align 8
  %254 = load i32, i32* %222, align 4
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %RCX.i116, align 8
  %256 = shl nsw i64 %255, 3
  %257 = add i64 %256, %252
  %258 = add i64 %248, 16
  store i64 %258, i64* %3, align 8
  %259 = load i64, i64* %216, align 1
  %260 = inttoptr i64 %257 to i64*
  store i64 %259, i64* %260, align 8
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -20
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 3
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = add i32 %266, 1
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i119, align 8
  %269 = icmp eq i32 %266, -1
  %270 = icmp eq i32 %267, 0
  %271 = or i1 %269, %270
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %14, align 1
  %273 = and i32 %267, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %21, align 1
  %278 = xor i32 %267, %266
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %26, align 1
  %282 = zext i1 %270 to i8
  store i8 %282, i8* %29, align 1
  %283 = lshr i32 %267, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %32, align 1
  %285 = lshr i32 %266, 31
  %286 = xor i32 %283, %285
  %287 = add nuw nsw i32 %286, %283
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %38, align 1
  %290 = add i64 %263, 9
  store i64 %290, i64* %3, align 8
  store i32 %267, i32* %265, align 4
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, -38
  store i64 %292, i64* %3, align 8
  br label %block_.L_4006fa

block_.L_400725:                                  ; preds = %block_.L_4006fa
  %293 = add i64 %219, -24
  %294 = add i64 %248, 7
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  store i32 0, i32* %295, align 4
  %296 = bitcast %union.VectorReg* %214 to double*
  %297 = bitcast i64* %215 to double*
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_40072c

block_.L_40072c:                                  ; preds = %block_.L_400782, %block_.L_400725
  %298 = phi i64 [ %462, %block_.L_400782 ], [ %.pre16, %block_.L_400725 ]
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -24
  %301 = add i64 %298, 7
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = add i32 %303, -2000
  %305 = icmp ult i32 %303, 2000
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %14, align 1
  %307 = and i32 %304, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %21, align 1
  %312 = xor i32 %303, 16
  %313 = xor i32 %312, %304
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %26, align 1
  %317 = icmp eq i32 %304, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %29, align 1
  %319 = lshr i32 %304, 31
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %32, align 1
  %321 = lshr i32 %303, 31
  %322 = xor i32 %319, %321
  %323 = add nuw nsw i32 %322, %321
  %324 = icmp eq i32 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %38, align 1
  %326 = icmp ne i8 %320, 0
  %327 = xor i1 %326, %324
  %.v22 = select i1 %327, i64 13, i64 105
  %328 = add i64 %298, %.v22
  store i64 %328, i64* %3, align 8
  br i1 %327, label %block_400739, label %block_.L_400795

block_400739:                                     ; preds = %block_.L_40072c
  %329 = add i64 %299, -20
  %330 = add i64 %328, 7
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 0, i32* %331, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_400740

block_.L_400740:                                  ; preds = %block_40074d, %block_400739
  %332 = phi i64 [ %432, %block_40074d ], [ %.pre17, %block_400739 ]
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -20
  %335 = add i64 %332, 7
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = add i32 %337, -2000
  %339 = icmp ult i32 %337, 2000
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %338, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  %346 = xor i32 %337, 16
  %347 = xor i32 %346, %338
  %348 = lshr i32 %347, 4
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %26, align 1
  %351 = icmp eq i32 %338, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %29, align 1
  %353 = lshr i32 %338, 31
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %32, align 1
  %355 = lshr i32 %337, 31
  %356 = xor i32 %353, %355
  %357 = add nuw nsw i32 %356, %355
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %38, align 1
  %360 = icmp ne i8 %354, 0
  %361 = xor i1 %360, %358
  %.v = select i1 %361, i64 13, i64 66
  %362 = add i64 %332, %.v
  store i64 %362, i64* %3, align 8
  br i1 %361, label %block_40074d, label %block_.L_400782

block_40074d:                                     ; preds = %block_.L_400740
  %363 = add i64 %333, -8
  %364 = add i64 %362, 4
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i119, align 8
  %367 = add i64 %333, -24
  %368 = add i64 %362, 8
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RCX.i116, align 8
  %372 = shl nsw i64 %371, 3
  %373 = add i64 %372, %366
  %374 = add i64 %362, 12
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i64*
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %RAX.i119, align 8
  %377 = add i64 %362, 16
  store i64 %377, i64* %3, align 8
  %378 = load i32, i32* %336, align 4
  %379 = sext i32 %378 to i64
  store i64 %379, i64* %RCX.i116, align 8
  %380 = shl nsw i64 %379, 3
  %381 = add i64 %380, %376
  %382 = add i64 %362, 21
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i64*
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %216, align 1
  store double 0.000000e+00, double* %297, align 1
  %385 = add i64 %333, -16
  %386 = add i64 %362, 25
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RAX.i119, align 8
  %389 = add i64 %362, 29
  store i64 %389, i64* %3, align 8
  %390 = load i32, i32* %336, align 4
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %RCX.i116, align 8
  %392 = shl nsw i64 %391, 3
  %393 = add i64 %392, %388
  %394 = add i64 %362, 34
  store i64 %394, i64* %3, align 8
  %395 = bitcast i64 %384 to double
  %396 = inttoptr i64 %393 to double*
  %397 = load double, double* %396, align 8
  %398 = fadd double %395, %397
  store double %398, double* %296, align 1
  store i64 0, i64* %215, align 1
  %399 = add i64 %362, 39
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %393 to double*
  store double %398, double* %400, align 8
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -20
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 3
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, 1
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i119, align 8
  %409 = icmp eq i32 %406, -1
  %410 = icmp eq i32 %407, 0
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %21, align 1
  %418 = xor i32 %407, %406
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %26, align 1
  %422 = zext i1 %410 to i8
  store i8 %422, i8* %29, align 1
  %423 = lshr i32 %407, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %32, align 1
  %425 = lshr i32 %406, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %38, align 1
  %430 = add i64 %403, 9
  store i64 %430, i64* %3, align 8
  store i32 %407, i32* %405, align 4
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, -61
  store i64 %432, i64* %3, align 8
  br label %block_.L_400740

block_.L_400782:                                  ; preds = %block_.L_400740
  %433 = add i64 %333, -24
  %434 = add i64 %362, 8
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = add i32 %436, 1
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX.i119, align 8
  %439 = icmp eq i32 %436, -1
  %440 = icmp eq i32 %437, 0
  %441 = or i1 %439, %440
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %14, align 1
  %443 = and i32 %437, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  %448 = xor i32 %437, %436
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %26, align 1
  %452 = zext i1 %440 to i8
  store i8 %452, i8* %29, align 1
  %453 = lshr i32 %437, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %32, align 1
  %455 = lshr i32 %436, 31
  %456 = xor i32 %453, %455
  %457 = add nuw nsw i32 %456, %453
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %38, align 1
  %460 = add i64 %362, 14
  store i64 %460, i64* %3, align 8
  store i32 %437, i32* %435, align 4
  %461 = load i64, i64* %3, align 8
  %462 = add i64 %461, -100
  store i64 %462, i64* %3, align 8
  br label %block_.L_40072c

block_.L_400795:                                  ; preds = %block_.L_40072c
  %463 = load i64, i64* %6, align 8
  %464 = add i64 %463, 32
  store i64 %464, i64* %6, align 8
  %465 = icmp ugt i64 %463, -33
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = trunc i64 %464 to i32
  %468 = and i32 %467, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i64 %464, %463
  %474 = lshr i64 %473, 4
  %475 = trunc i64 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %26, align 1
  %477 = icmp eq i64 %464, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %29, align 1
  %479 = lshr i64 %464, 63
  %480 = trunc i64 %479 to i8
  store i8 %480, i8* %32, align 1
  %481 = lshr i64 %463, 63
  %482 = xor i64 %479, %481
  %483 = add nuw nsw i64 %482, %479
  %484 = icmp eq i64 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %38, align 1
  %486 = add i64 %328, 5
  store i64 %486, i64* %3, align 8
  %487 = add i64 %463, 40
  %488 = inttoptr i64 %464 to i64*
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %RBP.i, align 8
  store i64 %487, i64* %6, align 8
  %490 = add i64 %328, 6
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %487 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %3, align 8
  %493 = add i64 %463, 48
  store i64 %493, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7d0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2000
  %10 = icmp ult i32 %8, 2000
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4006f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7d0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2000
  %10 = icmp ult i32 %8, 2000
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4006e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.random_double(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_4006ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400697(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400725(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
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
define %struct.Memory* @routine_jmpq_.L_4006fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400795(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400782(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400740(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400787(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40072c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
