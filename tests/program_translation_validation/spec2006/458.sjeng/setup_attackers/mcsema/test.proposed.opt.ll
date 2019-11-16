; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x8a05b8_type = type <{ [4 x i8] }>
%G_0x8a05bc_type = type <{ [4 x i8] }>
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
@G_0x8a05b8 = local_unnamed_addr global %G_0x8a05b8_type zeroinitializer
@G_0x8a05bc = local_unnamed_addr global %G_0x8a05bc_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @setup_attackers(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RDI.i612 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*), align 8
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -20
  %20 = add i64 %16, 10
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %19 to i32*
  store i32 %17, i32* %21, align 4
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*), align 8
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI.i612, align 8
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -24
  %27 = add i64 %22, 10
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %26 to i32*
  store i32 %23, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -16
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i594 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %ECX.i431 = bitcast %union.anon* %40 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41bfc2

block_.L_41bfc2:                                  ; preds = %block_.L_41c11b, %entry
  %41 = phi i64 [ %628, %block_.L_41c11b ], [ %.pre, %entry ]
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -16
  %44 = add i64 %41, 4
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -4
  %48 = icmp ult i32 %46, 4
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %34, align 1
  %50 = and i32 %47, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50)
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %35, align 1
  %55 = xor i32 %47, %46
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %36, align 1
  %59 = icmp eq i32 %47, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %37, align 1
  %61 = lshr i32 %47, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %38, align 1
  %63 = lshr i32 %46, 31
  %64 = xor i32 %61, %63
  %65 = add nuw nsw i32 %64, %63
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %39, align 1
  %68 = icmp ne i8 %62, 0
  %69 = xor i1 %68, %66
  %.v174 = select i1 %69, i64 10, i64 374
  %70 = add i64 %41, %.v174
  store i64 %70, i64* %3, align 8
  br i1 %69, label %block_41bfcc, label %block_.L_41c138.loopexit

block_41bfcc:                                     ; preds = %block_.L_41bfc2
  %71 = add i64 %42, -4
  %72 = add i64 %70, 3
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RAX.i597, align 8
  %76 = add i64 %70, 7
  store i64 %76, i64* %3, align 8
  %77 = load i32, i32* %45, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RCX.i594, align 8
  %79 = shl nsw i64 %78, 2
  %80 = add nsw i64 %79, 4357536
  %81 = add i64 %70, 14
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %74
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RAX.i597, align 8
  %86 = icmp ult i32 %84, %74
  %87 = icmp ult i32 %84, %83
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %34, align 1
  %90 = and i32 %84, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %35, align 1
  %95 = xor i32 %83, %74
  %96 = xor i32 %95, %84
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %36, align 1
  %100 = icmp eq i32 %84, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %37, align 1
  %102 = lshr i32 %84, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %38, align 1
  %104 = lshr i32 %74, 31
  %105 = lshr i32 %83, 31
  %106 = xor i32 %102, %104
  %107 = xor i32 %102, %105
  %108 = add nuw nsw i32 %106, %107
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %42, -8
  %112 = add i64 %70, 17
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 %84, i32* %113, align 4
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -8
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %RCX.i594, align 8
  %121 = shl nsw i64 %120, 2
  %122 = add nsw i64 %121, 8807744
  %123 = add i64 %116, 11
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RAX.i597, align 8
  %127 = add i64 %114, -12
  %128 = add i64 %116, 14
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %125, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -12
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, -5
  %137 = icmp ult i32 %135, 5
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %34, align 1
  %139 = and i32 %136, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %35, align 1
  %144 = xor i32 %136, %135
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %36, align 1
  %148 = icmp eq i32 %136, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %37, align 1
  %150 = lshr i32 %136, 31
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %38, align 1
  %152 = lshr i32 %135, 31
  %153 = xor i32 %150, %152
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %39, align 1
  %.v185 = select i1 %148, i64 10, i64 52
  %157 = add i64 %132, %.v185
  store i64 %157, i64* %3, align 8
  br i1 %148, label %block_41bff5, label %block_.L_41c01f

block_41bff5:                                     ; preds = %block_41bfcc
  %158 = add i64 %157, 3
  store i64 %158, i64* %3, align 8
  %159 = load i32, i32* %134, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX.i597, align 8
  %161 = add i64 %130, -20
  %162 = add i64 %157, 7
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RCX.i594, align 8
  %166 = shl nsw i64 %165, 3
  %167 = add nsw i64 %166, 8940160
  %168 = add i64 %157, 14
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %159, i32* %169, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -8
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 3
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX.i597, align 8
  %177 = add i64 %170, -20
  %178 = add i64 %172, 7
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %RCX.i594, align 8
  %182 = shl nsw i64 %181, 3
  %183 = add nsw i64 %182, 8940164
  %184 = add i64 %172, 14
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  store i32 %175, i32* %185, align 4
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -20
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i64 %188, 6
  store i64 %192, i64* %3, align 8
  %193 = add i32 %191, 1
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RAX.i597, align 8
  %195 = icmp eq i32 %191, -1
  %196 = icmp eq i32 %193, 0
  %197 = or i1 %195, %196
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %34, align 1
  %199 = and i32 %193, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %35, align 1
  %204 = xor i32 %193, %191
  br label %block_.L_41c138.sink.split

block_.L_41c01f:                                  ; preds = %block_41bfcc
  %205 = add i64 %157, 4
  store i64 %205, i64* %3, align 8
  %206 = load i32, i32* %134, align 4
  %207 = add i32 %206, -6
  %208 = icmp ult i32 %206, 6
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %34, align 1
  %210 = and i32 %207, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %35, align 1
  %215 = xor i32 %207, %206
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %36, align 1
  %219 = icmp eq i32 %207, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %37, align 1
  %221 = lshr i32 %207, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %38, align 1
  %223 = lshr i32 %206, 31
  %224 = xor i32 %221, %223
  %225 = add nuw nsw i32 %224, %223
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %39, align 1
  %.v186 = select i1 %219, i64 10, i64 52
  %228 = add i64 %157, %.v186
  store i64 %228, i64* %3, align 8
  br i1 %219, label %block_41c029, label %block_.L_41c053

block_41c029:                                     ; preds = %block_.L_41c01f
  %229 = add i64 %228, 3
  store i64 %229, i64* %3, align 8
  %230 = load i32, i32* %134, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX.i597, align 8
  %232 = add i64 %130, -24
  %233 = add i64 %228, 7
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %RCX.i594, align 8
  %237 = shl nsw i64 %236, 3
  %238 = add nsw i64 %237, 8940288
  %239 = add i64 %228, 14
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  store i32 %230, i32* %240, align 8
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -8
  %243 = load i64, i64* %3, align 8
  %244 = add i64 %243, 3
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %242 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX.i597, align 8
  %248 = add i64 %241, -24
  %249 = add i64 %243, 7
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %RCX.i594, align 8
  %253 = shl nsw i64 %252, 3
  %254 = add nsw i64 %253, 8940292
  %255 = add i64 %243, 14
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %246, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -24
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 3
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i64 %259, 6
  store i64 %263, i64* %3, align 8
  %264 = add i32 %262, 1
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i597, align 8
  %266 = icmp eq i32 %262, -1
  %267 = icmp eq i32 %264, 0
  %268 = or i1 %266, %267
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %34, align 1
  %270 = and i32 %264, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %35, align 1
  %275 = xor i32 %264, %262
  br label %block_.L_41c138.sink.split

block_.L_41c053:                                  ; preds = %block_.L_41c01f
  %276 = add i64 %228, 5
  br label %block_.L_41c058

block_.L_41c058:                                  ; preds = %block_.L_41c0ed, %block_.L_41c053
  %277 = phi i64 [ %130, %block_.L_41c053 ], [ %.pre161, %block_.L_41c0ed ]
  %storemerge26 = phi i64 [ %276, %block_.L_41c053 ], [ %595, %block_.L_41c0ed ]
  %278 = add i64 %277, -12
  %279 = add i64 %storemerge26, 4
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  store i8 0, i8* %34, align 1
  %282 = and i32 %281, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282)
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %287 = icmp eq i32 %281, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %37, align 1
  %289 = lshr i32 %281, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %287, i64 195, i64 10
  %291 = add i64 %storemerge26, %.v173
  store i64 %291, i64* %3, align 8
  br i1 %287, label %block_.L_41c11b.loopexit, label %block_41c062

block_41c062:                                     ; preds = %block_.L_41c058
  %292 = add i64 %291, 4
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %280, align 4
  %294 = add i32 %293, -7
  %295 = icmp ult i32 %293, 7
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %34, align 1
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %35, align 1
  %302 = xor i32 %294, %293
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %36, align 1
  %306 = icmp eq i32 %294, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %37, align 1
  %308 = lshr i32 %294, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %38, align 1
  %310 = lshr i32 %293, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %310
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %39, align 1
  %.v172 = select i1 %306, i64 20, i64 10
  %315 = add i64 %291, %.v172
  store i64 %315, i64* %3, align 8
  br i1 %306, label %block_.L_41c076, label %block_41c06c

block_41c06c:                                     ; preds = %block_41c062
  %316 = add i64 %315, 4
  store i64 %316, i64* %3, align 8
  %317 = load i32, i32* %280, align 4
  %318 = add i32 %317, -9
  %319 = icmp ult i32 %317, 9
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %34, align 1
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %35, align 1
  %326 = xor i32 %318, %317
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %36, align 1
  %330 = icmp eq i32 %318, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %37, align 1
  %332 = lshr i32 %318, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %38, align 1
  %334 = lshr i32 %317, 31
  %335 = xor i32 %332, %334
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %39, align 1
  %.v171 = select i1 %330, i64 10, i64 52
  %339 = add i64 %315, %.v171
  store i64 %339, i64* %3, align 8
  br i1 %330, label %block_.L_41c076, label %block_.L_41c0a0

block_.L_41c076:                                  ; preds = %block_41c06c, %block_41c062
  %340 = phi i64 [ %339, %block_41c06c ], [ %315, %block_41c062 ]
  %341 = add i64 %340, 3
  store i64 %341, i64* %3, align 8
  %342 = load i32, i32* %280, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX.i597, align 8
  %344 = add i64 %277, -20
  %345 = add i64 %340, 7
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %RCX.i594, align 8
  %349 = shl nsw i64 %348, 3
  %350 = add nsw i64 %349, 8940160
  %351 = add i64 %340, 14
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  store i32 %342, i32* %352, align 8
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -8
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 3
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX.i597, align 8
  %360 = add i64 %353, -20
  %361 = add i64 %355, 7
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RCX.i594, align 8
  %365 = shl nsw i64 %364, 3
  %366 = add nsw i64 %365, 8940164
  %367 = add i64 %355, 14
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 %358, i32* %368, align 4
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -20
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 3
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i597, align 8
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %34, align 1
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %35, align 1
  %386 = xor i32 %375, %374
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %36, align 1
  %390 = zext i1 %378 to i8
  store i8 %390, i8* %37, align 1
  %391 = lshr i32 %375, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %38, align 1
  %393 = lshr i32 %374, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %391
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %39, align 1
  %398 = add i64 %371, 9
  store i64 %398, i64* %3, align 8
  store i32 %375, i32* %373, align 4
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 128
  br label %block_.L_41c11b.sink.split

block_.L_41c0a0:                                  ; preds = %block_41c06c
  %401 = add i64 %339, 4
  store i64 %401, i64* %3, align 8
  %402 = load i32, i32* %280, align 4
  %403 = add i32 %402, -8
  %404 = icmp ult i32 %402, 8
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %34, align 1
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %35, align 1
  %411 = xor i32 %403, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %36, align 1
  %415 = icmp eq i32 %403, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %37, align 1
  %417 = lshr i32 %403, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %38, align 1
  %419 = lshr i32 %402, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %39, align 1
  %.v170 = select i1 %415, i64 20, i64 10
  %424 = add i64 %339, %.v170
  store i64 %424, i64* %3, align 8
  br i1 %415, label %block_.L_41c0b4, label %block_41c0aa

block_41c0aa:                                     ; preds = %block_.L_41c0a0
  %425 = add i64 %424, 4
  store i64 %425, i64* %3, align 8
  %426 = load i32, i32* %280, align 4
  %427 = add i32 %426, -10
  %428 = icmp ult i32 %426, 10
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %34, align 1
  %430 = and i32 %427, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %35, align 1
  %435 = xor i32 %427, %426
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %36, align 1
  %439 = icmp eq i32 %427, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %37, align 1
  %441 = lshr i32 %427, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %38, align 1
  %443 = lshr i32 %426, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %39, align 1
  %.v169 = select i1 %439, i64 10, i64 52
  %448 = add i64 %424, %.v169
  store i64 %448, i64* %3, align 8
  br i1 %439, label %block_.L_41c0b4, label %block_.L_41c0de

block_.L_41c0b4:                                  ; preds = %block_41c0aa, %block_.L_41c0a0
  %449 = phi i64 [ %448, %block_41c0aa ], [ %424, %block_.L_41c0a0 ]
  %450 = add i64 %449, 3
  store i64 %450, i64* %3, align 8
  %451 = load i32, i32* %280, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RAX.i597, align 8
  %453 = add i64 %277, -24
  %454 = add i64 %449, 7
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = sext i32 %456 to i64
  store i64 %457, i64* %RCX.i594, align 8
  %458 = shl nsw i64 %457, 3
  %459 = add nsw i64 %458, 8940288
  %460 = add i64 %449, 14
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  store i32 %451, i32* %461, align 8
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -8
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 3
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX.i597, align 8
  %469 = add i64 %462, -24
  %470 = add i64 %464, 7
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RCX.i594, align 8
  %474 = shl nsw i64 %473, 3
  %475 = add nsw i64 %474, 8940292
  %476 = add i64 %464, 14
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 %467, i32* %477, align 4
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -24
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, 3
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = add i32 %483, 1
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RAX.i597, align 8
  %486 = icmp eq i32 %483, -1
  %487 = icmp eq i32 %484, 0
  %488 = or i1 %486, %487
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %34, align 1
  %490 = and i32 %484, 255
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  store i8 %494, i8* %35, align 1
  %495 = xor i32 %484, %483
  %496 = lshr i32 %495, 4
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %36, align 1
  %499 = zext i1 %487 to i8
  store i8 %499, i8* %37, align 1
  %500 = lshr i32 %484, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %38, align 1
  %502 = lshr i32 %483, 31
  %503 = xor i32 %500, %502
  %504 = add nuw nsw i32 %503, %500
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %39, align 1
  %507 = add i64 %480, 9
  store i64 %507, i64* %3, align 8
  store i32 %484, i32* %482, align 4
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 66
  br label %block_.L_41c11b.sink.split

block_.L_41c0de:                                  ; preds = %block_41c0aa
  %510 = add i64 %448, 4
  store i64 %510, i64* %3, align 8
  %511 = load i32, i32* %280, align 4
  %512 = add i32 %511, -13
  %513 = icmp ult i32 %511, 13
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %34, align 1
  %515 = and i32 %512, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %35, align 1
  %520 = xor i32 %512, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %36, align 1
  %524 = icmp eq i32 %512, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %37, align 1
  %526 = lshr i32 %512, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %38, align 1
  %528 = lshr i32 %511, 31
  %529 = xor i32 %526, %528
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %39, align 1
  %.v168 = select i1 %524, i64 15, i64 10
  %533 = add i64 %448, %.v168
  store i64 %533, i64* %3, align 8
  br i1 %524, label %block_.L_41c0ed, label %block_41c0e8

block_41c0e8:                                     ; preds = %block_.L_41c0de
  %534 = add i64 %533, 51
  br label %block_.L_41c11b.sink.split

block_.L_41c0ed:                                  ; preds = %block_.L_41c0de
  %535 = add i64 %277, -16
  %536 = add i64 %533, 14
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = sext i32 %538 to i64
  store i64 %539, i64* %RAX.i597, align 8
  %540 = shl nsw i64 %539, 2
  %541 = add nsw i64 %540, 4357536
  %542 = add i64 %533, 21
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RCX.i594, align 8
  %546 = add i64 %277, -8
  %547 = add i64 %533, 24
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = add i32 %549, %544
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RCX.i594, align 8
  %552 = icmp ult i32 %550, %544
  %553 = icmp ult i32 %550, %549
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %34, align 1
  %556 = and i32 %550, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %35, align 1
  %561 = xor i32 %549, %544
  %562 = xor i32 %561, %550
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %36, align 1
  %566 = icmp eq i32 %550, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %37, align 1
  %568 = lshr i32 %550, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %38, align 1
  %570 = lshr i32 %544, 31
  %571 = lshr i32 %549, 31
  %572 = xor i32 %568, %570
  %573 = xor i32 %568, %571
  %574 = add nuw nsw i32 %572, %573
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %39, align 1
  %577 = add i64 %533, 27
  store i64 %577, i64* %3, align 8
  store i32 %550, i32* %548, align 4
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -8
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, 4
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RAX.i597, align 8
  %585 = shl nsw i64 %584, 2
  %586 = add nsw i64 %585, 8807744
  %587 = add i64 %580, 11
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX.i594, align 8
  %591 = add i64 %578, -12
  %592 = add i64 %580, 14
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  store i32 %589, i32* %593, align 4
  %594 = load i64, i64* %3, align 8
  %595 = add i64 %594, -190
  %596 = add i64 %594, 5
  store i64 %596, i64* %3, align 8
  %.pre161 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c058

block_.L_41c11b.sink.split:                       ; preds = %block_.L_41c076, %block_.L_41c0b4, %block_41c0e8
  %.sink41 = phi i64 [ %534, %block_41c0e8 ], [ %509, %block_.L_41c0b4 ], [ %400, %block_.L_41c076 ]
  store i64 %.sink41, i64* %3, align 8
  %.pre162 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c11b

block_.L_41c11b.loopexit:                         ; preds = %block_.L_41c058
  br label %block_.L_41c11b

block_.L_41c11b:                                  ; preds = %block_.L_41c11b.loopexit, %block_.L_41c11b.sink.split
  %597 = phi i64 [ %.pre162, %block_.L_41c11b.sink.split ], [ %277, %block_.L_41c11b.loopexit ]
  %598 = phi i64 [ %.sink41, %block_.L_41c11b.sink.split ], [ %291, %block_.L_41c11b.loopexit ]
  %599 = add i64 %597, -16
  %600 = add i64 %598, 18
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = add i32 %602, 1
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RAX.i597, align 8
  %605 = icmp eq i32 %602, -1
  %606 = icmp eq i32 %603, 0
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %34, align 1
  %609 = and i32 %603, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %35, align 1
  %614 = xor i32 %603, %602
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %36, align 1
  %618 = zext i1 %606 to i8
  store i8 %618, i8* %37, align 1
  %619 = lshr i32 %603, 31
  %620 = trunc i32 %619 to i8
  store i8 %620, i8* %38, align 1
  %621 = lshr i32 %602, 31
  %622 = xor i32 %619, %621
  %623 = add nuw nsw i32 %622, %619
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %39, align 1
  %626 = add i64 %598, 24
  store i64 %626, i64* %3, align 8
  store i32 %603, i32* %601, align 4
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, -369
  store i64 %628, i64* %3, align 8
  br label %block_.L_41bfc2

block_.L_41c138.sink.split:                       ; preds = %block_41bff5, %block_41c029
  %629 = phi i64 [ %192, %block_41bff5 ], [ %263, %block_41c029 ]
  %630 = phi i32 [ %193, %block_41bff5 ], [ %264, %block_41c029 ]
  %631 = phi i64 [ %186, %block_41bff5 ], [ %257, %block_41c029 ]
  %.sink63 = phi i32 [ %204, %block_41bff5 ], [ %275, %block_41c029 ]
  %.sink38 = phi i32 [ %191, %block_41bff5 ], [ %262, %block_41c029 ]
  %.sink33 = phi i64 [ -20, %block_41bff5 ], [ -24, %block_41c029 ]
  %.sink28 = phi i64 [ 286, %block_41bff5 ], [ 234, %block_41c029 ]
  %632 = lshr i32 %.sink63, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %36, align 1
  %635 = icmp eq i32 %630, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %37, align 1
  %637 = lshr i32 %630, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %38, align 1
  %639 = lshr i32 %.sink38, 31
  %640 = xor i32 %639, %637
  %641 = add nuw nsw i32 %640, %637
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %39, align 1
  %644 = add i64 %631, %.sink33
  %645 = add i64 %629, 3
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  store i32 %630, i32* %646, align 4
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, %.sink28
  store i64 %648, i64* %3, align 8
  %.pre148 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c138

block_.L_41c138.loopexit:                         ; preds = %block_.L_41bfc2
  br label %block_.L_41c138

block_.L_41c138:                                  ; preds = %block_.L_41c138.loopexit, %block_.L_41c138.sink.split
  %649 = phi i64 [ %648, %block_.L_41c138.sink.split ], [ %70, %block_.L_41c138.loopexit ]
  %650 = phi i64 [ %.pre148, %block_.L_41c138.sink.split ], [ %42, %block_.L_41c138.loopexit ]
  %651 = add i64 %650, -16
  %652 = add i64 %649, 7
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  store i32 0, i32* %653, align 4
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %656 = bitcast %union.anon* %655 to i32*
  %657 = getelementptr inbounds %union.anon, %union.anon* %655, i64 0, i32 0
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_41c13f

block_.L_41c13f:                                  ; preds = %block_.L_41c338, %block_.L_41c138
  %658 = phi i64 [ %.pre149, %block_.L_41c138 ], [ %1494, %block_.L_41c338 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_.L_41c138 ], [ %MEMORY.8, %block_.L_41c338 ]
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -16
  %661 = add i64 %658, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = add i32 %663, -4
  %665 = icmp ult i32 %663, 4
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %34, align 1
  %667 = and i32 %664, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %35, align 1
  %672 = xor i32 %664, %663
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %36, align 1
  %676 = icmp eq i32 %664, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %37, align 1
  %678 = lshr i32 %664, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %38, align 1
  %680 = lshr i32 %663, 31
  %681 = xor i32 %678, %680
  %682 = add nuw nsw i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %685 = icmp ne i8 %679, 0
  %686 = xor i1 %685, %683
  %.v175 = select i1 %686, i64 10, i64 544
  %687 = add i64 %658, %.v175
  store i64 %687, i64* %3, align 8
  br i1 %686, label %block_41c149, label %block_.L_41c35f.loopexit

block_41c149:                                     ; preds = %block_.L_41c13f
  %688 = add i64 %659, -4
  %689 = add i64 %687, 3
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RAX.i597, align 8
  %693 = add i64 %687, 7
  store i64 %693, i64* %3, align 8
  %694 = load i32, i32* %662, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RCX.i594, align 8
  %696 = shl nsw i64 %695, 2
  %697 = add nsw i64 %696, 4357552
  %698 = add i64 %687, 14
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = add i32 %700, %691
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i597, align 8
  %703 = icmp ult i32 %701, %691
  %704 = icmp ult i32 %701, %700
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %34, align 1
  %707 = and i32 %701, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %35, align 1
  %712 = xor i32 %700, %691
  %713 = xor i32 %712, %701
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %36, align 1
  %717 = icmp eq i32 %701, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %37, align 1
  %719 = lshr i32 %701, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %38, align 1
  %721 = lshr i32 %691, 31
  %722 = lshr i32 %700, 31
  %723 = xor i32 %719, %721
  %724 = xor i32 %719, %722
  %725 = add nuw nsw i32 %723, %724
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %728 = add i64 %659, -8
  %729 = add i64 %687, 17
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  store i32 %701, i32* %730, align 4
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -8
  %733 = load i64, i64* %3, align 8
  %734 = add i64 %733, 4
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %732 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sext i32 %736 to i64
  store i64 %737, i64* %RCX.i594, align 8
  %738 = shl nsw i64 %737, 2
  %739 = add nsw i64 %738, 8807744
  %740 = add i64 %733, 11
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RAX.i597, align 8
  %744 = add i64 %731, -12
  %745 = add i64 %733, 14
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  store i32 %742, i32* %746, align 4
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -12
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 4
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, -1
  %754 = icmp eq i32 %752, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %34, align 1
  %756 = and i32 %753, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %35, align 1
  %761 = xor i32 %753, %752
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %36, align 1
  %765 = icmp eq i32 %753, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %37, align 1
  %767 = lshr i32 %753, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %38, align 1
  %769 = lshr i32 %752, 31
  %770 = xor i32 %767, %769
  %771 = add nuw nsw i32 %770, %769
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %39, align 1
  %.v179 = select i1 %765, i64 10, i64 80
  %774 = add i64 %749, %.v179
  store i64 %774, i64* %3, align 8
  br i1 %765, label %block_41c172, label %block_.L_41c1b8

block_41c172:                                     ; preds = %block_41c149
  store i64 2, i64* %RAX.i597, align 8
  %775 = add i64 %747, -16
  %776 = add i64 %774, 8
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RCX.i594, align 8
  %780 = add i64 %747, -28
  %781 = add i64 %774, 11
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  store i32 2, i32* %782, align 4
  %783 = load i32, i32* %ECX.i431, align 4
  %784 = zext i32 %783 to i64
  %785 = load i64, i64* %3, align 8
  store i64 %784, i64* %RAX.i597, align 8
  %786 = sext i32 %783 to i64
  %787 = lshr i64 %786, 32
  store i64 %787, i64* %654, align 8
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -28
  %790 = add i64 %785, 6
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RCX.i594, align 8
  %794 = add i64 %785, 8
  store i64 %794, i64* %3, align 8
  %795 = sext i32 %792 to i64
  %796 = shl nuw i64 %787, 32
  %797 = or i64 %796, %784
  %798 = sdiv i64 %797, %795
  %799 = shl i64 %798, 32
  %800 = ashr exact i64 %799, 32
  %801 = icmp eq i64 %798, %800
  br i1 %801, label %804, label %802

; <label>:802:                                    ; preds = %block_41c172
  %803 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %794, %struct.Memory* %MEMORY.6)
  %.pre150 = load i32, i32* %656, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit361

; <label>:804:                                    ; preds = %block_41c172
  %805 = srem i64 %797, %795
  %806 = and i64 %798, 4294967295
  store i64 %806, i64* %RAX.i597, align 8
  %807 = and i64 %805, 4294967295
  store i64 %807, i64* %657, align 8
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %808 = trunc i64 %805 to i32
  br label %routine_idivl__ecx.exit361

routine_idivl__ecx.exit361:                       ; preds = %804, %802
  %809 = phi i64 [ %.pre151, %802 ], [ %794, %804 ]
  %810 = phi i32 [ %.pre150, %802 ], [ %808, %804 ]
  %811 = phi %struct.Memory* [ %803, %802 ], [ %MEMORY.6, %804 ]
  store i8 0, i8* %34, align 1
  %812 = and i32 %810, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %817 = icmp eq i32 %810, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %37, align 1
  %819 = lshr i32 %810, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %817, i64 51, i64 9
  %821 = add i64 %809, %.v184
  store i64 %821, i64* %3, align 8
  %.pre152 = load i64, i64* %RBP.i, align 8
  br i1 %817, label %block_.L_41c1b8, label %block_41c18e

block_41c18e:                                     ; preds = %routine_idivl__ecx.exit361
  %822 = add i64 %.pre152, -12
  %823 = add i64 %821, 3
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX.i597, align 8
  %827 = add i64 %.pre152, -20
  %828 = add i64 %821, 7
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %RCX.i594, align 8
  %832 = shl nsw i64 %831, 3
  %833 = add nsw i64 %832, 8940160
  %834 = add i64 %821, 14
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 %825, i32* %835, align 8
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -8
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 3
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i597, align 8
  %843 = add i64 %836, -20
  %844 = add i64 %838, 7
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i594, align 8
  %848 = shl nsw i64 %847, 3
  %849 = add nsw i64 %848, 8940164
  %850 = add i64 %838, 14
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  store i32 %841, i32* %851, align 4
  %852 = load i64, i64* %RBP.i, align 8
  %853 = add i64 %852, -20
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 3
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %853 to i32*
  %857 = load i32, i32* %856, align 4
  %858 = add i64 %854, 6
  store i64 %858, i64* %3, align 8
  %859 = add i32 %857, 1
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i597, align 8
  %861 = icmp eq i32 %857, -1
  %862 = icmp eq i32 %859, 0
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %34, align 1
  %865 = and i32 %859, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %35, align 1
  %870 = xor i32 %859, %857
  br label %block_.L_41c35f.sink.split

block_.L_41c1b8:                                  ; preds = %routine_idivl__ecx.exit361, %block_41c149
  %871 = phi i64 [ %774, %block_41c149 ], [ %821, %routine_idivl__ecx.exit361 ]
  %872 = phi i64 [ %747, %block_41c149 ], [ %.pre152, %routine_idivl__ecx.exit361 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_41c149 ], [ %811, %routine_idivl__ecx.exit361 ]
  %873 = add i64 %872, -12
  %874 = add i64 %871, 4
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = add i32 %876, -2
  %878 = icmp ult i32 %876, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %34, align 1
  %880 = and i32 %877, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %35, align 1
  %885 = xor i32 %877, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %36, align 1
  %889 = icmp eq i32 %877, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %37, align 1
  %891 = lshr i32 %877, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %38, align 1
  %893 = lshr i32 %876, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %39, align 1
  %.v180 = select i1 %889, i64 10, i64 80
  %898 = add i64 %871, %.v180
  store i64 %898, i64* %3, align 8
  br i1 %889, label %block_41c1c2, label %block_.L_41c208

block_41c1c2:                                     ; preds = %block_.L_41c1b8
  store i64 2, i64* %RAX.i597, align 8
  %899 = add i64 %872, -16
  %900 = add i64 %898, 8
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RCX.i594, align 8
  %904 = add i64 %872, -32
  %905 = add i64 %898, 11
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  store i32 2, i32* %906, align 4
  %907 = load i32, i32* %ECX.i431, align 4
  %908 = zext i32 %907 to i64
  %909 = load i64, i64* %3, align 8
  store i64 %908, i64* %RAX.i597, align 8
  %910 = sext i32 %907 to i64
  %911 = lshr i64 %910, 32
  store i64 %911, i64* %654, align 8
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -32
  %914 = add i64 %909, 6
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i594, align 8
  %918 = add i64 %909, 8
  store i64 %918, i64* %3, align 8
  %919 = sext i32 %916 to i64
  %920 = shl nuw i64 %911, 32
  %921 = or i64 %920, %908
  %922 = sdiv i64 %921, %919
  %923 = shl i64 %922, 32
  %924 = ashr exact i64 %923, 32
  %925 = icmp eq i64 %922, %924
  br i1 %925, label %928, label %926

; <label>:926:                                    ; preds = %block_41c1c2
  %927 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %918, %struct.Memory* %MEMORY.7)
  %.pre153 = load i32, i32* %656, align 4
  %.pre154 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:928:                                    ; preds = %block_41c1c2
  %929 = srem i64 %921, %919
  %930 = and i64 %922, 4294967295
  store i64 %930, i64* %RAX.i597, align 8
  %931 = and i64 %929, 4294967295
  store i64 %931, i64* %657, align 8
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %932 = trunc i64 %929 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %928, %926
  %933 = phi i64 [ %.pre154, %926 ], [ %918, %928 ]
  %934 = phi i32 [ %.pre153, %926 ], [ %932, %928 ]
  %935 = phi %struct.Memory* [ %927, %926 ], [ %MEMORY.7, %928 ]
  store i8 0, i8* %34, align 1
  %936 = and i32 %934, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %941 = icmp eq i32 %934, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %37, align 1
  %943 = lshr i32 %934, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %941, i64 9, i64 51
  %945 = add i64 %933, %.v183
  store i64 %945, i64* %3, align 8
  %946 = load i64, i64* %RBP.i, align 8
  br i1 %941, label %block_41c1de, label %block_.L_41c208

block_41c1de:                                     ; preds = %routine_idivl__ecx.exit
  %947 = add i64 %946, -12
  %948 = add i64 %945, 3
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i597, align 8
  %952 = add i64 %946, -24
  %953 = add i64 %945, 7
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = sext i32 %955 to i64
  store i64 %956, i64* %RCX.i594, align 8
  %957 = shl nsw i64 %956, 3
  %958 = add nsw i64 %957, 8940288
  %959 = add i64 %945, 14
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i32*
  store i32 %950, i32* %960, align 8
  %961 = load i64, i64* %RBP.i, align 8
  %962 = add i64 %961, -8
  %963 = load i64, i64* %3, align 8
  %964 = add i64 %963, 3
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %962 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX.i597, align 8
  %968 = add i64 %961, -24
  %969 = add i64 %963, 7
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RCX.i594, align 8
  %973 = shl nsw i64 %972, 3
  %974 = add nsw i64 %973, 8940292
  %975 = add i64 %963, 14
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  store i32 %966, i32* %976, align 4
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -24
  %979 = load i64, i64* %3, align 8
  %980 = add i64 %979, 3
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %978 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = add i64 %979, 6
  store i64 %983, i64* %3, align 8
  %984 = add i32 %982, 1
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i597, align 8
  %986 = icmp eq i32 %982, -1
  %987 = icmp eq i32 %984, 0
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %34, align 1
  %990 = and i32 %984, 255
  %991 = tail call i32 @llvm.ctpop.i32(i32 %990)
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  %994 = xor i8 %993, 1
  store i8 %994, i8* %35, align 1
  %995 = xor i32 %984, %982
  br label %block_.L_41c35f.sink.split

block_.L_41c208:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_41c1b8
  %996 = phi i64 [ %898, %block_.L_41c1b8 ], [ %945, %routine_idivl__ecx.exit ]
  %997 = phi i64 [ %872, %block_.L_41c1b8 ], [ %946, %routine_idivl__ecx.exit ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_41c1b8 ], [ %935, %routine_idivl__ecx.exit ]
  %998 = add i64 %997, -12
  %999 = add i64 %996, 4
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, -5
  %1003 = icmp ult i32 %1001, 5
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %34, align 1
  %1005 = and i32 %1002, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %35, align 1
  %1010 = xor i32 %1002, %1001
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %36, align 1
  %1014 = icmp eq i32 %1002, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %37, align 1
  %1016 = lshr i32 %1002, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %38, align 1
  %1018 = lshr i32 %1001, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %39, align 1
  %.v181 = select i1 %1014, i64 10, i64 52
  %1023 = add i64 %996, %.v181
  store i64 %1023, i64* %3, align 8
  br i1 %1014, label %block_41c212, label %block_.L_41c23c

block_41c212:                                     ; preds = %block_.L_41c208
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %3, align 8
  %1025 = load i32, i32* %1000, align 4
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX.i597, align 8
  %1027 = add i64 %997, -20
  %1028 = add i64 %1023, 7
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = sext i32 %1030 to i64
  store i64 %1031, i64* %RCX.i594, align 8
  %1032 = shl nsw i64 %1031, 3
  %1033 = add nsw i64 %1032, 8940160
  %1034 = add i64 %1023, 14
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 %1025, i32* %1035, align 8
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -8
  %1038 = load i64, i64* %3, align 8
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i597, align 8
  %1043 = add i64 %1036, -20
  %1044 = add i64 %1038, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = sext i32 %1046 to i64
  store i64 %1047, i64* %RCX.i594, align 8
  %1048 = shl nsw i64 %1047, 3
  %1049 = add nsw i64 %1048, 8940164
  %1050 = add i64 %1038, 14
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1041, i32* %1051, align 4
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -20
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i64 %1054, 6
  store i64 %1058, i64* %3, align 8
  %1059 = add i32 %1057, 1
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i597, align 8
  %1061 = icmp eq i32 %1057, -1
  %1062 = icmp eq i32 %1059, 0
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %34, align 1
  %1065 = and i32 %1059, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %35, align 1
  %1070 = xor i32 %1059, %1057
  br label %block_.L_41c35f.sink.split

block_.L_41c23c:                                  ; preds = %block_.L_41c208
  %1071 = add i64 %1023, 4
  store i64 %1071, i64* %3, align 8
  %1072 = load i32, i32* %1000, align 4
  %1073 = add i32 %1072, -6
  %1074 = icmp ult i32 %1072, 6
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %34, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %35, align 1
  %1081 = xor i32 %1073, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %36, align 1
  %1085 = icmp eq i32 %1073, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %37, align 1
  %1087 = lshr i32 %1073, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %38, align 1
  %1089 = lshr i32 %1072, 31
  %1090 = xor i32 %1087, %1089
  %1091 = add nuw nsw i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %39, align 1
  %.v182 = select i1 %1085, i64 10, i64 52
  %1094 = add i64 %1023, %.v182
  store i64 %1094, i64* %3, align 8
  br i1 %1085, label %block_41c246, label %block_.L_41c270

block_41c246:                                     ; preds = %block_.L_41c23c
  %1095 = add i64 %1094, 3
  store i64 %1095, i64* %3, align 8
  %1096 = load i32, i32* %1000, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RAX.i597, align 8
  %1098 = add i64 %997, -24
  %1099 = add i64 %1094, 7
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = sext i32 %1101 to i64
  store i64 %1102, i64* %RCX.i594, align 8
  %1103 = shl nsw i64 %1102, 3
  %1104 = add nsw i64 %1103, 8940288
  %1105 = add i64 %1094, 14
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  store i32 %1096, i32* %1106, align 8
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -8
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX.i597, align 8
  %1114 = add i64 %1107, -24
  %1115 = add i64 %1109, 7
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = sext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i594, align 8
  %1119 = shl nsw i64 %1118, 3
  %1120 = add nsw i64 %1119, 8940292
  %1121 = add i64 %1109, 14
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  store i32 %1112, i32* %1122, align 4
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -24
  %1125 = load i64, i64* %3, align 8
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1124 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i64 %1125, 6
  store i64 %1129, i64* %3, align 8
  %1130 = add i32 %1128, 1
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i597, align 8
  %1132 = icmp eq i32 %1128, -1
  %1133 = icmp eq i32 %1130, 0
  %1134 = or i1 %1132, %1133
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %34, align 1
  %1136 = and i32 %1130, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %35, align 1
  %1141 = xor i32 %1130, %1128
  br label %block_.L_41c35f.sink.split

block_.L_41c270:                                  ; preds = %block_.L_41c23c
  %1142 = add i64 %1094, 5
  br label %block_.L_41c275

block_.L_41c275:                                  ; preds = %block_.L_41c30a, %block_.L_41c270
  %1143 = phi i64 [ %997, %block_.L_41c270 ], [ %.pre159, %block_.L_41c30a ]
  %storemerge25 = phi i64 [ %1142, %block_.L_41c270 ], [ %1461, %block_.L_41c30a ]
  %1144 = add i64 %1143, -12
  %1145 = add i64 %storemerge25, 4
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  store i8 0, i8* %34, align 1
  %1148 = and i32 %1147, 255
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148)
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %1153 = icmp eq i32 %1147, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %37, align 1
  %1155 = lshr i32 %1147, 31
  %1156 = trunc i32 %1155 to i8
  store i8 %1156, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %1153, i64 195, i64 10
  %1157 = add i64 %storemerge25, %.v167
  store i64 %1157, i64* %3, align 8
  br i1 %1153, label %block_.L_41c338.loopexit, label %block_41c27f

block_41c27f:                                     ; preds = %block_.L_41c275
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %3, align 8
  %1159 = load i32, i32* %1146, align 4
  %1160 = add i32 %1159, -11
  %1161 = icmp ult i32 %1159, 11
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %34, align 1
  %1163 = and i32 %1160, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %35, align 1
  %1168 = xor i32 %1160, %1159
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %36, align 1
  %1172 = icmp eq i32 %1160, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %37, align 1
  %1174 = lshr i32 %1160, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %38, align 1
  %1176 = lshr i32 %1159, 31
  %1177 = xor i32 %1174, %1176
  %1178 = add nuw nsw i32 %1177, %1176
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %39, align 1
  %.v166 = select i1 %1172, i64 20, i64 10
  %1181 = add i64 %1157, %.v166
  store i64 %1181, i64* %3, align 8
  br i1 %1172, label %block_.L_41c293, label %block_41c289

block_41c289:                                     ; preds = %block_41c27f
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %3, align 8
  %1183 = load i32, i32* %1146, align 4
  %1184 = add i32 %1183, -9
  %1185 = icmp ult i32 %1183, 9
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %34, align 1
  %1187 = and i32 %1184, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %35, align 1
  %1192 = xor i32 %1184, %1183
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %36, align 1
  %1196 = icmp eq i32 %1184, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %37, align 1
  %1198 = lshr i32 %1184, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %38, align 1
  %1200 = lshr i32 %1183, 31
  %1201 = xor i32 %1198, %1200
  %1202 = add nuw nsw i32 %1201, %1200
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %39, align 1
  %.v165 = select i1 %1196, i64 10, i64 52
  %1205 = add i64 %1181, %.v165
  store i64 %1205, i64* %3, align 8
  br i1 %1196, label %block_.L_41c293, label %block_.L_41c2bd

block_.L_41c293:                                  ; preds = %block_41c289, %block_41c27f
  %1206 = phi i64 [ %1205, %block_41c289 ], [ %1181, %block_41c27f ]
  %1207 = add i64 %1206, 3
  store i64 %1207, i64* %3, align 8
  %1208 = load i32, i32* %1146, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RAX.i597, align 8
  %1210 = add i64 %1143, -20
  %1211 = add i64 %1206, 7
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = sext i32 %1213 to i64
  store i64 %1214, i64* %RCX.i594, align 8
  %1215 = shl nsw i64 %1214, 3
  %1216 = add nsw i64 %1215, 8940160
  %1217 = add i64 %1206, 14
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  store i32 %1208, i32* %1218, align 8
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -8
  %1221 = load i64, i64* %3, align 8
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1220 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX.i597, align 8
  %1226 = add i64 %1219, -20
  %1227 = add i64 %1221, 7
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = sext i32 %1229 to i64
  store i64 %1230, i64* %RCX.i594, align 8
  %1231 = shl nsw i64 %1230, 3
  %1232 = add nsw i64 %1231, 8940164
  %1233 = add i64 %1221, 14
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  store i32 %1224, i32* %1234, align 4
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -20
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1236 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = add i32 %1240, 1
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RAX.i597, align 8
  %1243 = icmp eq i32 %1240, -1
  %1244 = icmp eq i32 %1241, 0
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %34, align 1
  %1247 = and i32 %1241, 255
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %35, align 1
  %1252 = xor i32 %1241, %1240
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %36, align 1
  %1256 = zext i1 %1244 to i8
  store i8 %1256, i8* %37, align 1
  %1257 = lshr i32 %1241, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %38, align 1
  %1259 = lshr i32 %1240, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1257
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = add i64 %1237, 9
  store i64 %1264, i64* %3, align 8
  store i32 %1241, i32* %1239, align 4
  %1265 = load i64, i64* %3, align 8
  %1266 = add i64 %1265, 128
  br label %block_.L_41c338.sink.split

block_.L_41c2bd:                                  ; preds = %block_41c289
  %1267 = add i64 %1205, 4
  store i64 %1267, i64* %3, align 8
  %1268 = load i32, i32* %1146, align 4
  %1269 = add i32 %1268, -12
  %1270 = icmp ult i32 %1268, 12
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %34, align 1
  %1272 = and i32 %1269, 255
  %1273 = tail call i32 @llvm.ctpop.i32(i32 %1272)
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %35, align 1
  %1277 = xor i32 %1269, %1268
  %1278 = lshr i32 %1277, 4
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  store i8 %1280, i8* %36, align 1
  %1281 = icmp eq i32 %1269, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %37, align 1
  %1283 = lshr i32 %1269, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %38, align 1
  %1285 = lshr i32 %1268, 31
  %1286 = xor i32 %1283, %1285
  %1287 = add nuw nsw i32 %1286, %1285
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1
  %.v164 = select i1 %1281, i64 20, i64 10
  %1290 = add i64 %1205, %.v164
  store i64 %1290, i64* %3, align 8
  br i1 %1281, label %block_.L_41c2d1, label %block_41c2c7

block_41c2c7:                                     ; preds = %block_.L_41c2bd
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %3, align 8
  %1292 = load i32, i32* %1146, align 4
  %1293 = add i32 %1292, -10
  %1294 = icmp ult i32 %1292, 10
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %34, align 1
  %1296 = and i32 %1293, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %35, align 1
  %1301 = xor i32 %1293, %1292
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %36, align 1
  %1305 = icmp eq i32 %1293, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %37, align 1
  %1307 = lshr i32 %1293, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %38, align 1
  %1309 = lshr i32 %1292, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %39, align 1
  %.v163 = select i1 %1305, i64 10, i64 52
  %1314 = add i64 %1290, %.v163
  store i64 %1314, i64* %3, align 8
  br i1 %1305, label %block_.L_41c2d1, label %block_.L_41c2fb

block_.L_41c2d1:                                  ; preds = %block_41c2c7, %block_.L_41c2bd
  %1315 = phi i64 [ %1314, %block_41c2c7 ], [ %1290, %block_.L_41c2bd ]
  %1316 = add i64 %1315, 3
  store i64 %1316, i64* %3, align 8
  %1317 = load i32, i32* %1146, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i597, align 8
  %1319 = add i64 %1143, -24
  %1320 = add i64 %1315, 7
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  %1323 = sext i32 %1322 to i64
  store i64 %1323, i64* %RCX.i594, align 8
  %1324 = shl nsw i64 %1323, 3
  %1325 = add nsw i64 %1324, 8940288
  %1326 = add i64 %1315, 14
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  store i32 %1317, i32* %1327, align 8
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -8
  %1330 = load i64, i64* %3, align 8
  %1331 = add i64 %1330, 3
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1329 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RAX.i597, align 8
  %1335 = add i64 %1328, -24
  %1336 = add i64 %1330, 7
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i594, align 8
  %1340 = shl nsw i64 %1339, 3
  %1341 = add nsw i64 %1340, 8940292
  %1342 = add i64 %1330, 14
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  store i32 %1333, i32* %1343, align 4
  %1344 = load i64, i64* %RBP.i, align 8
  %1345 = add i64 %1344, -24
  %1346 = load i64, i64* %3, align 8
  %1347 = add i64 %1346, 3
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = add i32 %1349, 1
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i597, align 8
  %1352 = icmp eq i32 %1349, -1
  %1353 = icmp eq i32 %1350, 0
  %1354 = or i1 %1352, %1353
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %34, align 1
  %1356 = and i32 %1350, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %35, align 1
  %1361 = xor i32 %1350, %1349
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %36, align 1
  %1365 = zext i1 %1353 to i8
  store i8 %1365, i8* %37, align 1
  %1366 = lshr i32 %1350, 31
  %1367 = trunc i32 %1366 to i8
  store i8 %1367, i8* %38, align 1
  %1368 = lshr i32 %1349, 31
  %1369 = xor i32 %1366, %1368
  %1370 = add nuw nsw i32 %1369, %1366
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %39, align 1
  %1373 = add i64 %1346, 9
  store i64 %1373, i64* %3, align 8
  store i32 %1350, i32* %1348, align 4
  %1374 = load i64, i64* %3, align 8
  %1375 = add i64 %1374, 66
  br label %block_.L_41c338.sink.split

block_.L_41c2fb:                                  ; preds = %block_41c2c7
  %1376 = add i64 %1314, 4
  store i64 %1376, i64* %3, align 8
  %1377 = load i32, i32* %1146, align 4
  %1378 = add i32 %1377, -13
  %1379 = icmp ult i32 %1377, 13
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %34, align 1
  %1381 = and i32 %1378, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %35, align 1
  %1386 = xor i32 %1378, %1377
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %36, align 1
  %1390 = icmp eq i32 %1378, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %37, align 1
  %1392 = lshr i32 %1378, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %38, align 1
  %1394 = lshr i32 %1377, 31
  %1395 = xor i32 %1392, %1394
  %1396 = add nuw nsw i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %39, align 1
  %.v = select i1 %1390, i64 15, i64 10
  %1399 = add i64 %1314, %.v
  store i64 %1399, i64* %3, align 8
  br i1 %1390, label %block_.L_41c30a, label %block_41c305

block_41c305:                                     ; preds = %block_.L_41c2fb
  %1400 = add i64 %1399, 51
  br label %block_.L_41c338.sink.split

block_.L_41c30a:                                  ; preds = %block_.L_41c2fb
  %1401 = add i64 %1143, -16
  %1402 = add i64 %1399, 14
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RAX.i597, align 8
  %1406 = shl nsw i64 %1405, 2
  %1407 = add nsw i64 %1406, 4357552
  %1408 = add i64 %1399, 21
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i594, align 8
  %1412 = add i64 %1143, -8
  %1413 = add i64 %1399, 24
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = add i32 %1415, %1410
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RCX.i594, align 8
  %1418 = icmp ult i32 %1416, %1410
  %1419 = icmp ult i32 %1416, %1415
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %34, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %35, align 1
  %1427 = xor i32 %1415, %1410
  %1428 = xor i32 %1427, %1416
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  store i8 %1431, i8* %36, align 1
  %1432 = icmp eq i32 %1416, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %37, align 1
  %1434 = lshr i32 %1416, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %38, align 1
  %1436 = lshr i32 %1410, 31
  %1437 = lshr i32 %1415, 31
  %1438 = xor i32 %1434, %1436
  %1439 = xor i32 %1434, %1437
  %1440 = add nuw nsw i32 %1438, %1439
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %39, align 1
  %1443 = add i64 %1399, 27
  store i64 %1443, i64* %3, align 8
  store i32 %1416, i32* %1414, align 4
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -8
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1445 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = sext i32 %1449 to i64
  store i64 %1450, i64* %RAX.i597, align 8
  %1451 = shl nsw i64 %1450, 2
  %1452 = add nsw i64 %1451, 8807744
  %1453 = add i64 %1446, 11
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RCX.i594, align 8
  %1457 = add i64 %1444, -12
  %1458 = add i64 %1446, 14
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  store i32 %1455, i32* %1459, align 4
  %1460 = load i64, i64* %3, align 8
  %1461 = add i64 %1460, -190
  %1462 = add i64 %1460, 5
  store i64 %1462, i64* %3, align 8
  %.pre159 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c275

block_.L_41c338.sink.split:                       ; preds = %block_.L_41c293, %block_.L_41c2d1, %block_41c305
  %.sink56 = phi i64 [ %1400, %block_41c305 ], [ %1375, %block_.L_41c2d1 ], [ %1266, %block_.L_41c293 ]
  store i64 %.sink56, i64* %3, align 8
  %.pre160 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c338

block_.L_41c338.loopexit:                         ; preds = %block_.L_41c275
  br label %block_.L_41c338

block_.L_41c338:                                  ; preds = %block_.L_41c338.loopexit, %block_.L_41c338.sink.split
  %1463 = phi i64 [ %.pre160, %block_.L_41c338.sink.split ], [ %1143, %block_.L_41c338.loopexit ]
  %1464 = phi i64 [ %.sink56, %block_.L_41c338.sink.split ], [ %1157, %block_.L_41c338.loopexit ]
  %1465 = add i64 %1463, -16
  %1466 = add i64 %1464, 28
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = add i32 %1468, 1
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %RAX.i597, align 8
  %1471 = icmp eq i32 %1468, -1
  %1472 = icmp eq i32 %1469, 0
  %1473 = or i1 %1471, %1472
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %34, align 1
  %1475 = and i32 %1469, 255
  %1476 = tail call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %35, align 1
  %1480 = xor i32 %1469, %1468
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %36, align 1
  %1484 = zext i1 %1472 to i8
  store i8 %1484, i8* %37, align 1
  %1485 = lshr i32 %1469, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %38, align 1
  %1487 = lshr i32 %1468, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1485
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %39, align 1
  %1492 = add i64 %1464, 34
  store i64 %1492, i64* %3, align 8
  store i32 %1469, i32* %1467, align 4
  %1493 = load i64, i64* %3, align 8
  %1494 = add i64 %1493, -539
  store i64 %1494, i64* %3, align 8
  br label %block_.L_41c13f

block_.L_41c35f.sink.split:                       ; preds = %block_41c18e, %block_41c1de, %block_41c212, %block_41c246
  %1495 = phi i64 [ %858, %block_41c18e ], [ %983, %block_41c1de ], [ %1058, %block_41c212 ], [ %1129, %block_41c246 ]
  %1496 = phi i32 [ %859, %block_41c18e ], [ %984, %block_41c1de ], [ %1059, %block_41c212 ], [ %1130, %block_41c246 ]
  %1497 = phi i64 [ %852, %block_41c18e ], [ %977, %block_41c1de ], [ %1052, %block_41c212 ], [ %1123, %block_41c246 ]
  %.sink70 = phi i32 [ %870, %block_41c18e ], [ %995, %block_41c1de ], [ %1070, %block_41c212 ], [ %1141, %block_41c246 ]
  %.sink53 = phi i32 [ %857, %block_41c18e ], [ %982, %block_41c1de ], [ %1057, %block_41c212 ], [ %1128, %block_41c246 ]
  %.sink48 = phi i64 [ -20, %block_41c18e ], [ -24, %block_41c1de ], [ -20, %block_41c212 ], [ -24, %block_41c246 ]
  %.sink43 = phi i64 [ 428, %block_41c18e ], [ 348, %block_41c1de ], [ 296, %block_41c212 ], [ 244, %block_41c246 ]
  %MEMORY.13.ph = phi %struct.Memory* [ %811, %block_41c18e ], [ %935, %block_41c1de ], [ %MEMORY.8, %block_41c212 ], [ %MEMORY.8, %block_41c246 ]
  %1498 = lshr i32 %.sink70, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %36, align 1
  %1501 = icmp eq i32 %1496, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %37, align 1
  %1503 = lshr i32 %1496, 31
  %1504 = trunc i32 %1503 to i8
  store i8 %1504, i8* %38, align 1
  %1505 = lshr i32 %.sink53, 31
  %1506 = xor i32 %1505, %1503
  %1507 = add nuw nsw i32 %1506, %1503
  %1508 = icmp eq i32 %1507, 2
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %39, align 1
  %1510 = add i64 %1497, %.sink48
  %1511 = add i64 %1495, 3
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  store i32 %1496, i32* %1512, align 4
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, %.sink43
  store i64 %1514, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41c35f

block_.L_41c35f.loopexit:                         ; preds = %block_.L_41c13f
  br label %block_.L_41c35f

block_.L_41c35f:                                  ; preds = %block_.L_41c35f.loopexit, %block_.L_41c35f.sink.split
  %1515 = phi i64 [ %1514, %block_.L_41c35f.sink.split ], [ %687, %block_.L_41c35f.loopexit ]
  %1516 = phi i64 [ %.pre156, %block_.L_41c35f.sink.split ], [ %659, %block_.L_41c35f.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.13.ph, %block_.L_41c35f.sink.split ], [ %MEMORY.6, %block_.L_41c35f.loopexit ]
  %1517 = add i64 %1516, -16
  %1518 = add i64 %1515, 7
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  store i32 0, i32* %1519, align 4
  %RCX.i97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_41c366

block_.L_41c366:                                  ; preds = %block_.L_41c3f7, %block_.L_41c35f
  %1520 = phi i64 [ %1811, %block_.L_41c3f7 ], [ %.pre157, %block_.L_41c35f ]
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -16
  %1523 = add i64 %1520, 4
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = add i32 %1525, -8
  %1527 = icmp ult i32 %1525, 8
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %34, align 1
  %1529 = and i32 %1526, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %35, align 1
  %1534 = xor i32 %1526, %1525
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %36, align 1
  %1538 = icmp eq i32 %1526, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %37, align 1
  %1540 = lshr i32 %1526, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %38, align 1
  %1542 = lshr i32 %1525, 31
  %1543 = xor i32 %1540, %1542
  %1544 = add nuw nsw i32 %1543, %1542
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %39, align 1
  %1547 = icmp ne i8 %1541, 0
  %1548 = xor i1 %1547, %1545
  %.v176 = select i1 %1548, i64 10, i64 164
  %1549 = add i64 %1520, %.v176
  store i64 %1549, i64* %3, align 8
  br i1 %1548, label %block_41c370, label %block_.L_41c40a

block_41c370:                                     ; preds = %block_.L_41c366
  %1550 = add i64 %1521, -4
  %1551 = add i64 %1549, 3
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i597, align 8
  %1555 = add i64 %1549, 7
  store i64 %1555, i64* %3, align 8
  %1556 = load i32, i32* %1524, align 4
  %1557 = sext i32 %1556 to i64
  store i64 %1557, i64* %RCX.i97, align 8
  %1558 = shl nsw i64 %1557, 2
  %1559 = add nsw i64 %1558, 4357568
  %1560 = add i64 %1549, 14
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = add i32 %1562, %1553
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RAX.i597, align 8
  %1565 = icmp ult i32 %1563, %1553
  %1566 = icmp ult i32 %1563, %1562
  %1567 = or i1 %1565, %1566
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %34, align 1
  %1569 = and i32 %1563, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %35, align 1
  %1574 = xor i32 %1562, %1553
  %1575 = xor i32 %1574, %1563
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %36, align 1
  %1579 = icmp eq i32 %1563, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %37, align 1
  %1581 = lshr i32 %1563, 31
  %1582 = trunc i32 %1581 to i8
  store i8 %1582, i8* %38, align 1
  %1583 = lshr i32 %1553, 31
  %1584 = lshr i32 %1562, 31
  %1585 = xor i32 %1581, %1583
  %1586 = xor i32 %1581, %1584
  %1587 = add nuw nsw i32 %1585, %1586
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %39, align 1
  %1590 = add i64 %1521, -8
  %1591 = add i64 %1549, 17
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i32*
  store i32 %1563, i32* %1592, align 4
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -8
  %1595 = load i64, i64* %3, align 8
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1594 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = sext i32 %1598 to i64
  store i64 %1599, i64* %RCX.i97, align 8
  %1600 = shl nsw i64 %1599, 2
  %1601 = add nsw i64 %1600, 8807744
  %1602 = add i64 %1595, 11
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RAX.i597, align 8
  %1606 = add i64 %1593, -12
  %1607 = add i64 %1595, 14
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  store i32 %1604, i32* %1608, align 4
  %1609 = load i64, i64* %RBP.i, align 8
  %1610 = add i64 %1609, -12
  %1611 = load i64, i64* %3, align 8
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1610 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = add i32 %1614, -3
  %1616 = icmp ult i32 %1614, 3
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %34, align 1
  %1618 = and i32 %1615, 255
  %1619 = tail call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  store i8 %1622, i8* %35, align 1
  %1623 = xor i32 %1615, %1614
  %1624 = lshr i32 %1623, 4
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  store i8 %1626, i8* %36, align 1
  %1627 = icmp eq i32 %1615, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %37, align 1
  %1629 = lshr i32 %1615, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %38, align 1
  %1631 = lshr i32 %1614, 31
  %1632 = xor i32 %1629, %1631
  %1633 = add nuw nsw i32 %1632, %1631
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %39, align 1
  %.v177 = select i1 %1627, i64 10, i64 52
  %1636 = add i64 %1611, %.v177
  store i64 %1636, i64* %3, align 8
  br i1 %1627, label %block_41c399, label %block_.L_41c3c3

block_41c399:                                     ; preds = %block_41c370
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %3, align 8
  %1638 = load i32, i32* %1613, align 4
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i597, align 8
  %1640 = add i64 %1609, -20
  %1641 = add i64 %1636, 7
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  %1644 = sext i32 %1643 to i64
  store i64 %1644, i64* %RCX.i97, align 8
  %1645 = shl nsw i64 %1644, 3
  %1646 = add nsw i64 %1645, 8940160
  %1647 = add i64 %1636, 14
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  store i32 %1638, i32* %1648, align 8
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -8
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i597, align 8
  %1656 = add i64 %1649, -20
  %1657 = add i64 %1651, 7
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = sext i32 %1659 to i64
  store i64 %1660, i64* %RCX.i97, align 8
  %1661 = shl nsw i64 %1660, 3
  %1662 = add nsw i64 %1661, 8940164
  %1663 = add i64 %1651, 14
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  store i32 %1654, i32* %1664, align 4
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -20
  %1667 = load i64, i64* %3, align 8
  %1668 = add i64 %1667, 3
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = add i32 %1670, 1
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i597, align 8
  %1673 = icmp eq i32 %1670, -1
  %1674 = icmp eq i32 %1671, 0
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %34, align 1
  %1677 = and i32 %1671, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %35, align 1
  %1682 = xor i32 %1671, %1670
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %36, align 1
  %1686 = zext i1 %1674 to i8
  store i8 %1686, i8* %37, align 1
  %1687 = lshr i32 %1671, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %38, align 1
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1687, %1689
  %1691 = add nuw nsw i32 %1690, %1687
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %39, align 1
  %1694 = add i64 %1667, 9
  store i64 %1694, i64* %3, align 8
  store i32 %1671, i32* %1669, align 4
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, 57
  br label %block_.L_41c3f7

block_.L_41c3c3:                                  ; preds = %block_41c370
  %1697 = add i64 %1636, 4
  store i64 %1697, i64* %3, align 8
  %1698 = load i32, i32* %1613, align 4
  %1699 = add i32 %1698, -4
  %1700 = icmp ult i32 %1698, 4
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %34, align 1
  %1702 = and i32 %1699, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %35, align 1
  %1707 = xor i32 %1699, %1698
  %1708 = lshr i32 %1707, 4
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  store i8 %1710, i8* %36, align 1
  %1711 = icmp eq i32 %1699, 0
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %37, align 1
  %1713 = lshr i32 %1699, 31
  %1714 = trunc i32 %1713 to i8
  store i8 %1714, i8* %38, align 1
  %1715 = lshr i32 %1698, 31
  %1716 = xor i32 %1713, %1715
  %1717 = add nuw nsw i32 %1716, %1715
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %39, align 1
  %.v178 = select i1 %1711, i64 10, i64 47
  %1720 = add i64 %1636, %.v178
  store i64 %1720, i64* %3, align 8
  br i1 %1711, label %block_41c3cd, label %block_.L_41c3f2

block_41c3cd:                                     ; preds = %block_.L_41c3c3
  %1721 = add i64 %1720, 3
  store i64 %1721, i64* %3, align 8
  %1722 = load i32, i32* %1613, align 4
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RAX.i597, align 8
  %1724 = add i64 %1609, -24
  %1725 = add i64 %1720, 7
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  store i64 %1728, i64* %RCX.i97, align 8
  %1729 = shl nsw i64 %1728, 3
  %1730 = add nsw i64 %1729, 8940288
  %1731 = add i64 %1720, 14
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  store i32 %1722, i32* %1732, align 8
  %1733 = load i64, i64* %RBP.i, align 8
  %1734 = add i64 %1733, -8
  %1735 = load i64, i64* %3, align 8
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RAX.i597, align 8
  %1740 = add i64 %1733, -24
  %1741 = add i64 %1735, 7
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i32*
  %1743 = load i32, i32* %1742, align 4
  %1744 = sext i32 %1743 to i64
  store i64 %1744, i64* %RCX.i97, align 8
  %1745 = shl nsw i64 %1744, 3
  %1746 = add nsw i64 %1745, 8940292
  %1747 = add i64 %1735, 14
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  store i32 %1738, i32* %1748, align 4
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -24
  %1751 = load i64, i64* %3, align 8
  %1752 = add i64 %1751, 3
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = add i32 %1754, 1
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RAX.i597, align 8
  %1757 = icmp eq i32 %1754, -1
  %1758 = icmp eq i32 %1755, 0
  %1759 = or i1 %1757, %1758
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %34, align 1
  %1761 = and i32 %1755, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %35, align 1
  %1766 = xor i32 %1755, %1754
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %36, align 1
  %1770 = zext i1 %1758 to i8
  store i8 %1770, i8* %37, align 1
  %1771 = lshr i32 %1755, 31
  %1772 = trunc i32 %1771 to i8
  store i8 %1772, i8* %38, align 1
  %1773 = lshr i32 %1754, 31
  %1774 = xor i32 %1771, %1773
  %1775 = add nuw nsw i32 %1774, %1771
  %1776 = icmp eq i32 %1775, 2
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %39, align 1
  %1778 = add i64 %1751, 9
  store i64 %1778, i64* %3, align 8
  store i32 %1755, i32* %1753, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_41c3f2

block_.L_41c3f2:                                  ; preds = %block_.L_41c3c3, %block_41c3cd
  %1779 = phi i64 [ %.pre158, %block_41c3cd ], [ %1720, %block_.L_41c3c3 ]
  %1780 = add i64 %1779, 5
  store i64 %1780, i64* %3, align 8
  br label %block_.L_41c3f7

block_.L_41c3f7:                                  ; preds = %block_.L_41c3f2, %block_41c399
  %storemerge = phi i64 [ %1696, %block_41c399 ], [ %1780, %block_.L_41c3f2 ]
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -16
  %1783 = add i64 %storemerge, 8
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = add i32 %1785, 1
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX.i597, align 8
  %1788 = icmp eq i32 %1785, -1
  %1789 = icmp eq i32 %1786, 0
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %34, align 1
  %1792 = and i32 %1786, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %35, align 1
  %1797 = xor i32 %1786, %1785
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %36, align 1
  %1801 = zext i1 %1789 to i8
  store i8 %1801, i8* %37, align 1
  %1802 = lshr i32 %1786, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %38, align 1
  %1804 = lshr i32 %1785, 31
  %1805 = xor i32 %1802, %1804
  %1806 = add nuw nsw i32 %1805, %1802
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %39, align 1
  %1809 = add i64 %storemerge, 14
  store i64 %1809, i64* %3, align 8
  store i32 %1786, i32* %1784, align 4
  %1810 = load i64, i64* %3, align 8
  %1811 = add i64 %1810, -159
  store i64 %1811, i64* %3, align 8
  br label %block_.L_41c366

block_.L_41c40a:                                  ; preds = %block_.L_41c366
  %1812 = add i64 %1521, -20
  %1813 = add i64 %1549, 3
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i597, align 8
  store i32 %1815, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*), align 8
  %1817 = add i64 %1521, -24
  %1818 = add i64 %1549, 13
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RAX.i597, align 8
  store i32 %1820, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*), align 8
  %1822 = add i64 %1549, 21
  store i64 %1822, i64* %3, align 8
  %1823 = load i64, i64* %6, align 8
  %1824 = add i64 %1823, 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RBP.i, align 8
  store i64 %1824, i64* %6, align 8
  %1827 = add i64 %1549, 22
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1824 to i64*
  %1829 = load i64, i64* %1828, align 8
  store i64 %1829, i64* %3, align 8
  %1830 = add i64 %1823, 16
  store i64 %1830, i64* %6, align 8
  ret %struct.Memory* %MEMORY.13
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
define %struct.Memory* @routine_movl_0x8a05b8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a05bc___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jge_.L_41c138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x427da0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4357536
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_41c01f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x886a80___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8940160
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 8
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
define %struct.Memory* @routine_movl__eax__0x886a84___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8940164
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_41c138(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jne_.L_41c053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x886b00___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8940288
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x886b04___rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8940292
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_41c058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_41c11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_je_.L_41c076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_jne_.L_41c0a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_je_.L_41c0b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jne_.L_41c0de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_je_.L_41c0ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c0f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c0f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x427da0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4357536
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_41c120(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c125(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c12a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bfc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41c35f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x427db0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4357552
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_41c1b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41c1b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c35f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_41c208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_41c23c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41c270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c275(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41c338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xb__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
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
define %struct.Memory* @routine_je_.L_41c293(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41c2bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_je_.L_41c2d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41c2fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41c30a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c30f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x427db0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4357552
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c33d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c342(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c347(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c34c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c351(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c13f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_41c40a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x427dc0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4357568
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_41c3c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c3f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_41c3f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41c3fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41c366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8a05b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8a05b8_type* @G_0x8a05b8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8a05bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8a05bc_type* @G_0x8a05bc to i32*), align 8
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
