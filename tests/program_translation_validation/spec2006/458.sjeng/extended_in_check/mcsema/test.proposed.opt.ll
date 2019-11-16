; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d0_type = type <{ [4 x i8] }>
%G_0x86bd7c_type = type <{ [4 x i8] }>
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
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661d0 = local_unnamed_addr global %G_0x8661d0_type zeroinitializer
@G_0x86bd7c = local_unnamed_addr global %G_0x86bd7c_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4013e0.is_attacked(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @extended_in_check(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %19 = add i32 %18, -3
  %20 = icmp ult i32 %18, 3
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %12, align 1
  %22 = and i32 %19, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %13, align 1
  %27 = xor i32 %19, %18
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  store i8 %30, i8* %14, align 1
  %31 = icmp eq i32 %19, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %15, align 1
  %33 = lshr i32 %19, 31
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %16, align 1
  %35 = lshr i32 %18, 31
  %36 = xor i32 %33, %35
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %17, align 1
  %.v63 = select i1 %31, i64 21, i64 33
  %40 = add i64 %10, %.v63
  store i64 %40, i64* %3, align 8
  br i1 %31, label %block_40b216, label %block_.L_40b222

block_40b216:                                     ; preds = %entry
  %41 = add i64 %7, -12
  %42 = add i64 %40, 7
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1275
  store i64 %45, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b222:                                  ; preds = %entry
  %46 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %47 = add i32 %46, -1
  %48 = icmp eq i32 %46, 0
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %12, align 1
  %50 = and i32 %47, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50)
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %13, align 1
  %55 = xor i32 %47, %46
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %14, align 1
  %59 = icmp eq i32 %47, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %15, align 1
  %61 = lshr i32 %47, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %16, align 1
  %63 = lshr i32 %46, 31
  %64 = xor i32 %61, %63
  %65 = add nuw nsw i32 %64, %63
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %17, align 1
  %.v64 = select i1 %59, i64 14, i64 637
  %68 = add i64 %40, %.v64
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i237 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %70 = add i64 %68, 7
  store i64 %70, i64* %3, align 8
  br i1 %59, label %block_40b230, label %block_.L_40b49f

block_40b230:                                     ; preds = %block_.L_40b222
  %71 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %72 = add i32 %71, -12
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RAX.i237, align 8
  %74 = icmp ult i32 %71, 12
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %12, align 1
  %76 = and i32 %72, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %13, align 1
  %81 = xor i32 %72, %71
  %82 = lshr i32 %81, 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %14, align 1
  %85 = icmp eq i32 %72, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %15, align 1
  %87 = lshr i32 %72, 31
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %16, align 1
  %89 = lshr i32 %71, 31
  %90 = xor i32 %87, %89
  %91 = add nuw nsw i32 %90, %89
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %17, align 1
  %EAX.i465 = bitcast %union.anon* %69 to i32*
  %RCX.i466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %94 = sext i32 %72 to i64
  store i64 %94, i64* %RCX.i466, align 8
  %95 = shl nsw i64 %94, 2
  %96 = add nsw i64 %95, 8807744
  %97 = add i64 %68, 20
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX.i237, align 8
  %101 = add i64 %7, -16
  %102 = add i64 %68, 23
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 %99, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -8
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -8
  %111 = icmp ult i32 %109, 8
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %12, align 1
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %13, align 1
  %118 = xor i32 %110, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %14, align 1
  %122 = icmp eq i32 %110, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %15, align 1
  %124 = lshr i32 %110, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %16, align 1
  %126 = lshr i32 %109, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %17, align 1
  %.v86 = select i1 %122, i64 20, i64 10
  %131 = add i64 %106, %.v86
  store i64 %131, i64* %3, align 8
  br i1 %122, label %block_.L_40b25b, label %block_40b251

block_40b251:                                     ; preds = %block_40b230
  %132 = add i64 %131, 4
  store i64 %132, i64* %3, align 8
  %133 = load i32, i32* %108, align 4
  %134 = add i32 %133, -10
  %135 = icmp ult i32 %133, 10
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %12, align 1
  %137 = and i32 %134, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %13, align 1
  %142 = xor i32 %134, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %14, align 1
  %146 = icmp eq i32 %134, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %15, align 1
  %148 = lshr i32 %134, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %16, align 1
  %150 = lshr i32 %133, 31
  %151 = xor i32 %148, %150
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %17, align 1
  %.v87 = select i1 %146, i64 10, i64 22
  %155 = add i64 %131, %.v87
  store i64 %155, i64* %3, align 8
  br i1 %146, label %block_.L_40b25b, label %block_.L_40b267

block_.L_40b25b:                                  ; preds = %block_40b251, %block_40b230
  %156 = phi i64 [ %155, %block_40b251 ], [ %131, %block_40b230 ]
  %157 = add i64 %104, -4
  %158 = add i64 %156, 7
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  store i32 2, i32* %159, align 4
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, 1206
  store i64 %161, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b267:                                  ; preds = %block_40b251
  %162 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %163 = add i32 %162, -1
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX.i237, align 8
  %165 = icmp eq i32 %162, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %12, align 1
  %167 = and i32 %163, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %13, align 1
  %172 = xor i32 %163, %162
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %14, align 1
  %176 = icmp eq i32 %163, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %15, align 1
  %178 = lshr i32 %163, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %16, align 1
  %180 = lshr i32 %162, 31
  %181 = xor i32 %178, %180
  %182 = add nuw nsw i32 %181, %180
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %17, align 1
  %185 = sext i32 %163 to i64
  store i64 %185, i64* %RCX.i466, align 8
  %186 = shl nsw i64 %185, 2
  %187 = add nsw i64 %186, 8807744
  %188 = add i64 %155, 20
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX.i237, align 8
  %192 = add i64 %155, 23
  store i64 %192, i64* %3, align 8
  store i32 %190, i32* %108, align 4
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -8
  %195 = load i64, i64* %3, align 8
  %196 = add i64 %195, 4
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %198, -8
  %200 = icmp ult i32 %198, 8
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %12, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %13, align 1
  %207 = xor i32 %199, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %14, align 1
  %211 = icmp eq i32 %199, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %15, align 1
  %213 = lshr i32 %199, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %16, align 1
  %215 = lshr i32 %198, 31
  %216 = xor i32 %213, %215
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %17, align 1
  %.v88 = select i1 %211, i64 20, i64 10
  %220 = add i64 %195, %.v88
  store i64 %220, i64* %3, align 8
  br i1 %211, label %block_.L_40b292, label %block_40b288

block_40b288:                                     ; preds = %block_.L_40b267
  %221 = add i64 %220, 4
  store i64 %221, i64* %3, align 8
  %222 = load i32, i32* %197, align 4
  %223 = add i32 %222, -10
  %224 = icmp ult i32 %222, 10
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %12, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %13, align 1
  %231 = xor i32 %223, %222
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %14, align 1
  %235 = icmp eq i32 %223, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %15, align 1
  %237 = lshr i32 %223, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %16, align 1
  %239 = lshr i32 %222, 31
  %240 = xor i32 %237, %239
  %241 = add nuw nsw i32 %240, %239
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %17, align 1
  %.v89 = select i1 %235, i64 10, i64 22
  %244 = add i64 %220, %.v89
  store i64 %244, i64* %3, align 8
  br i1 %235, label %block_.L_40b292, label %block_.L_40b29e

block_.L_40b292:                                  ; preds = %block_40b288, %block_.L_40b267
  %245 = phi i64 [ %244, %block_40b288 ], [ %220, %block_.L_40b267 ]
  %246 = add i64 %193, -4
  %247 = add i64 %245, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  store i32 2, i32* %248, align 4
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 1151
  store i64 %250, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b29e:                                  ; preds = %block_40b288
  %251 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %252 = add i32 %251, 1
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX.i237, align 8
  %254 = icmp eq i32 %251, -1
  %255 = icmp eq i32 %252, 0
  %256 = or i1 %254, %255
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %12, align 1
  %258 = and i32 %252, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %13, align 1
  %263 = xor i32 %252, %251
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %14, align 1
  %267 = zext i1 %255 to i8
  store i8 %267, i8* %15, align 1
  %268 = lshr i32 %252, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %16, align 1
  %270 = lshr i32 %251, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %268
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %17, align 1
  %275 = sext i32 %252 to i64
  store i64 %275, i64* %RCX.i466, align 8
  %276 = shl nsw i64 %275, 2
  %277 = add nsw i64 %276, 8807744
  %278 = add i64 %244, 20
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i237, align 8
  %282 = add i64 %244, 23
  store i64 %282, i64* %3, align 8
  store i32 %280, i32* %197, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -8
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 4
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, -8
  %290 = icmp ult i32 %288, 8
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %12, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %13, align 1
  %297 = xor i32 %289, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %14, align 1
  %301 = icmp eq i32 %289, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %15, align 1
  %303 = lshr i32 %289, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %16, align 1
  %305 = lshr i32 %288, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %17, align 1
  %.v90 = select i1 %301, i64 20, i64 10
  %310 = add i64 %285, %.v90
  store i64 %310, i64* %3, align 8
  br i1 %301, label %block_.L_40b2c9, label %block_40b2bf

block_40b2bf:                                     ; preds = %block_.L_40b29e
  %311 = add i64 %310, 4
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %287, align 4
  %313 = add i32 %312, -10
  %314 = icmp ult i32 %312, 10
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %12, align 1
  %316 = and i32 %313, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %13, align 1
  %321 = xor i32 %313, %312
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %14, align 1
  %325 = icmp eq i32 %313, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %15, align 1
  %327 = lshr i32 %313, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %16, align 1
  %329 = lshr i32 %312, 31
  %330 = xor i32 %327, %329
  %331 = add nuw nsw i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %17, align 1
  %.v91 = select i1 %325, i64 10, i64 22
  %334 = add i64 %310, %.v91
  store i64 %334, i64* %3, align 8
  br i1 %325, label %block_.L_40b2c9, label %block_.L_40b2d5

block_.L_40b2c9:                                  ; preds = %block_40b2bf, %block_.L_40b29e
  %335 = phi i64 [ %334, %block_40b2bf ], [ %310, %block_.L_40b29e ]
  %336 = add i64 %283, -4
  %337 = add i64 %335, 7
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 2, i32* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = add i64 %339, 1096
  store i64 %340, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b2d5:                                  ; preds = %block_40b2bf
  %341 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %342 = add i32 %341, 12
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX.i237, align 8
  %344 = icmp ugt i32 %341, -13
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %12, align 1
  %346 = and i32 %342, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346)
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %13, align 1
  %351 = xor i32 %342, %341
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %14, align 1
  %355 = icmp eq i32 %342, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %15, align 1
  %357 = lshr i32 %342, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %16, align 1
  %359 = lshr i32 %341, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %357
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %17, align 1
  %364 = sext i32 %342 to i64
  store i64 %364, i64* %RCX.i466, align 8
  %365 = shl nsw i64 %364, 2
  %366 = add nsw i64 %365, 8807744
  %367 = add i64 %334, 20
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i237, align 8
  %371 = add i64 %334, 23
  store i64 %371, i64* %3, align 8
  store i32 %369, i32* %287, align 4
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -8
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, -8
  %379 = icmp ult i32 %377, 8
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %12, align 1
  %381 = and i32 %378, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %13, align 1
  %386 = xor i32 %378, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %14, align 1
  %390 = icmp eq i32 %378, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %15, align 1
  %392 = lshr i32 %378, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %16, align 1
  %394 = lshr i32 %377, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %17, align 1
  %.v92 = select i1 %390, i64 20, i64 10
  %399 = add i64 %374, %.v92
  store i64 %399, i64* %3, align 8
  br i1 %390, label %block_.L_40b300, label %block_40b2f6

block_40b2f6:                                     ; preds = %block_.L_40b2d5
  %400 = add i64 %399, 4
  store i64 %400, i64* %3, align 8
  %401 = load i32, i32* %376, align 4
  %402 = add i32 %401, -10
  %403 = icmp ult i32 %401, 10
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %12, align 1
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %13, align 1
  %410 = xor i32 %402, %401
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %14, align 1
  %414 = icmp eq i32 %402, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %15, align 1
  %416 = lshr i32 %402, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %16, align 1
  %418 = lshr i32 %401, 31
  %419 = xor i32 %416, %418
  %420 = add nuw nsw i32 %419, %418
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %17, align 1
  %.v93 = select i1 %414, i64 10, i64 22
  %423 = add i64 %399, %.v93
  store i64 %423, i64* %3, align 8
  br i1 %414, label %block_.L_40b300, label %block_.L_40b30c

block_.L_40b300:                                  ; preds = %block_40b2f6, %block_.L_40b2d5
  %424 = phi i64 [ %423, %block_40b2f6 ], [ %399, %block_.L_40b2d5 ]
  %425 = add i64 %372, -4
  %426 = add i64 %424, 7
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 2, i32* %427, align 4
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 1041
  store i64 %429, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b30c:                                  ; preds = %block_40b2f6
  %430 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %431 = add i32 %430, 13
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX.i237, align 8
  %433 = icmp ugt i32 %430, -14
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %12, align 1
  %435 = and i32 %431, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %13, align 1
  %440 = xor i32 %431, %430
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %14, align 1
  %444 = icmp eq i32 %431, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %15, align 1
  %446 = lshr i32 %431, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %16, align 1
  %448 = lshr i32 %430, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %446
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %17, align 1
  %453 = sext i32 %431 to i64
  store i64 %453, i64* %RCX.i466, align 8
  %454 = shl nsw i64 %453, 2
  %455 = add nsw i64 %454, 8807744
  %456 = add i64 %423, 20
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX.i237, align 8
  %460 = add i64 %423, 23
  store i64 %460, i64* %3, align 8
  store i32 %458, i32* %376, align 4
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -8
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 4
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, -12
  %468 = icmp ult i32 %466, 12
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %12, align 1
  %470 = and i32 %467, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %13, align 1
  %475 = xor i32 %467, %466
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %14, align 1
  %479 = icmp eq i32 %467, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %15, align 1
  %481 = lshr i32 %467, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %16, align 1
  %483 = lshr i32 %466, 31
  %484 = xor i32 %481, %483
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %17, align 1
  %.v94 = select i1 %479, i64 30, i64 10
  %488 = add i64 %463, %.v94
  store i64 %488, i64* %3, align 8
  br i1 %479, label %block_.L_40b341, label %block_40b32d

block_40b32d:                                     ; preds = %block_.L_40b30c
  %489 = add i64 %488, 4
  store i64 %489, i64* %3, align 8
  %490 = load i32, i32* %465, align 4
  %491 = add i32 %490, -10
  %492 = icmp ult i32 %490, 10
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %12, align 1
  %494 = and i32 %491, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %13, align 1
  %499 = xor i32 %491, %490
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %14, align 1
  %503 = icmp eq i32 %491, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %15, align 1
  %505 = lshr i32 %491, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %16, align 1
  %507 = lshr i32 %490, 31
  %508 = xor i32 %505, %507
  %509 = add nuw nsw i32 %508, %507
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %17, align 1
  %.v95 = select i1 %503, i64 20, i64 10
  %512 = add i64 %488, %.v95
  store i64 %512, i64* %3, align 8
  br i1 %503, label %block_.L_40b341, label %block_40b337

block_40b337:                                     ; preds = %block_40b32d
  %513 = add i64 %512, 4
  store i64 %513, i64* %3, align 8
  %514 = load i32, i32* %465, align 4
  %515 = add i32 %514, -2
  %516 = icmp ult i32 %514, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %12, align 1
  %518 = and i32 %515, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %13, align 1
  %523 = xor i32 %515, %514
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %14, align 1
  %527 = icmp eq i32 %515, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %15, align 1
  %529 = lshr i32 %515, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %16, align 1
  %531 = lshr i32 %514, 31
  %532 = xor i32 %529, %531
  %533 = add nuw nsw i32 %532, %531
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %17, align 1
  %.v96 = select i1 %527, i64 10, i64 22
  %536 = add i64 %512, %.v96
  store i64 %536, i64* %3, align 8
  br i1 %527, label %block_.L_40b341, label %block_.L_40b34d

block_.L_40b341:                                  ; preds = %block_40b337, %block_40b32d, %block_.L_40b30c
  %537 = phi i64 [ %536, %block_40b337 ], [ %512, %block_40b32d ], [ %488, %block_.L_40b30c ]
  %538 = add i64 %461, -4
  %539 = add i64 %537, 7
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  store i32 2, i32* %540, align 4
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 976
  store i64 %542, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b34d:                                  ; preds = %block_40b337
  %543 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %544 = add i32 %543, 11
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i237, align 8
  %546 = icmp ugt i32 %543, -12
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %12, align 1
  %548 = and i32 %544, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %13, align 1
  %553 = xor i32 %544, %543
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %14, align 1
  %557 = icmp eq i32 %544, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %15, align 1
  %559 = lshr i32 %544, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %16, align 1
  %561 = lshr i32 %543, 31
  %562 = xor i32 %559, %561
  %563 = add nuw nsw i32 %562, %559
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %17, align 1
  %566 = sext i32 %544 to i64
  store i64 %566, i64* %RCX.i466, align 8
  %567 = shl nsw i64 %566, 2
  %568 = add nsw i64 %567, 8807744
  %569 = add i64 %536, 20
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RAX.i237, align 8
  %573 = add i64 %536, 23
  store i64 %573, i64* %3, align 8
  store i32 %571, i32* %465, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -8
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = add i32 %579, -12
  %581 = icmp ult i32 %579, 12
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %12, align 1
  %583 = and i32 %580, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %13, align 1
  %588 = xor i32 %580, %579
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %14, align 1
  %592 = icmp eq i32 %580, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %15, align 1
  %594 = lshr i32 %580, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %16, align 1
  %596 = lshr i32 %579, 31
  %597 = xor i32 %594, %596
  %598 = add nuw nsw i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %17, align 1
  %.v97 = select i1 %592, i64 30, i64 10
  %601 = add i64 %576, %.v97
  store i64 %601, i64* %3, align 8
  br i1 %592, label %block_.L_40b382, label %block_40b36e

block_40b36e:                                     ; preds = %block_.L_40b34d
  %602 = add i64 %601, 4
  store i64 %602, i64* %3, align 8
  %603 = load i32, i32* %578, align 4
  %604 = add i32 %603, -10
  %605 = icmp ult i32 %603, 10
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %12, align 1
  %607 = and i32 %604, 255
  %608 = tail call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  store i8 %611, i8* %13, align 1
  %612 = xor i32 %604, %603
  %613 = lshr i32 %612, 4
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  store i8 %615, i8* %14, align 1
  %616 = icmp eq i32 %604, 0
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %15, align 1
  %618 = lshr i32 %604, 31
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %16, align 1
  %620 = lshr i32 %603, 31
  %621 = xor i32 %618, %620
  %622 = add nuw nsw i32 %621, %620
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %17, align 1
  %.v98 = select i1 %616, i64 20, i64 10
  %625 = add i64 %601, %.v98
  store i64 %625, i64* %3, align 8
  br i1 %616, label %block_.L_40b382, label %block_40b378

block_40b378:                                     ; preds = %block_40b36e
  %626 = add i64 %625, 4
  store i64 %626, i64* %3, align 8
  %627 = load i32, i32* %578, align 4
  %628 = add i32 %627, -2
  %629 = icmp ult i32 %627, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %12, align 1
  %631 = and i32 %628, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %13, align 1
  %636 = xor i32 %628, %627
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %14, align 1
  %640 = icmp eq i32 %628, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %15, align 1
  %642 = lshr i32 %628, 31
  %643 = trunc i32 %642 to i8
  store i8 %643, i8* %16, align 1
  %644 = lshr i32 %627, 31
  %645 = xor i32 %642, %644
  %646 = add nuw nsw i32 %645, %644
  %647 = icmp eq i32 %646, 2
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %17, align 1
  %.v99 = select i1 %640, i64 10, i64 22
  %649 = add i64 %625, %.v99
  store i64 %649, i64* %3, align 8
  br i1 %640, label %block_.L_40b382, label %block_.L_40b38e

block_.L_40b382:                                  ; preds = %block_40b378, %block_40b36e, %block_.L_40b34d
  %650 = phi i64 [ %649, %block_40b378 ], [ %625, %block_40b36e ], [ %601, %block_.L_40b34d ]
  %651 = add i64 %574, -4
  %652 = add i64 %650, 7
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  store i32 2, i32* %653, align 4
  %654 = load i64, i64* %3, align 8
  %655 = add i64 %654, 911
  store i64 %655, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b38e:                                  ; preds = %block_40b378
  %656 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %657 = add i32 %656, -11
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RAX.i237, align 8
  %659 = icmp ult i32 %656, 11
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %12, align 1
  %661 = and i32 %657, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %13, align 1
  %666 = xor i32 %657, %656
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %14, align 1
  %670 = icmp eq i32 %657, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %15, align 1
  %672 = lshr i32 %657, 31
  %673 = trunc i32 %672 to i8
  store i8 %673, i8* %16, align 1
  %674 = lshr i32 %656, 31
  %675 = xor i32 %672, %674
  %676 = add nuw nsw i32 %675, %674
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %17, align 1
  %679 = sext i32 %657 to i64
  store i64 %679, i64* %RCX.i466, align 8
  %680 = shl nsw i64 %679, 2
  %681 = add nsw i64 %680, 8807744
  %682 = add i64 %649, 20
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RAX.i237, align 8
  %686 = add i64 %649, 23
  store i64 %686, i64* %3, align 8
  store i32 %684, i32* %578, align 4
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -8
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 4
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = add i32 %692, -12
  %694 = icmp ult i32 %692, 12
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %12, align 1
  %696 = and i32 %693, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %13, align 1
  %701 = xor i32 %693, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %14, align 1
  %705 = icmp eq i32 %693, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %15, align 1
  %707 = lshr i32 %693, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %16, align 1
  %709 = lshr i32 %692, 31
  %710 = xor i32 %707, %709
  %711 = add nuw nsw i32 %710, %709
  %712 = icmp eq i32 %711, 2
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %17, align 1
  %.v100 = select i1 %705, i64 20, i64 10
  %714 = add i64 %689, %.v100
  store i64 %714, i64* %3, align 8
  br i1 %705, label %block_.L_40b3b9, label %block_40b3af

block_40b3af:                                     ; preds = %block_.L_40b38e
  %715 = add i64 %714, 4
  store i64 %715, i64* %3, align 8
  %716 = load i32, i32* %691, align 4
  %717 = add i32 %716, -10
  %718 = icmp ult i32 %716, 10
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %12, align 1
  %720 = and i32 %717, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %13, align 1
  %725 = xor i32 %717, %716
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %14, align 1
  %729 = icmp eq i32 %717, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %15, align 1
  %731 = lshr i32 %717, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %16, align 1
  %733 = lshr i32 %716, 31
  %734 = xor i32 %731, %733
  %735 = add nuw nsw i32 %734, %733
  %736 = icmp eq i32 %735, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %17, align 1
  %.v101 = select i1 %729, i64 10, i64 22
  %738 = add i64 %714, %.v101
  store i64 %738, i64* %3, align 8
  br i1 %729, label %block_.L_40b3b9, label %block_.L_40b3c5

block_.L_40b3b9:                                  ; preds = %block_40b3af, %block_.L_40b38e
  %739 = phi i64 [ %738, %block_40b3af ], [ %714, %block_.L_40b38e ]
  %740 = add i64 %687, -4
  %741 = add i64 %739, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  store i32 2, i32* %742, align 4
  %743 = load i64, i64* %3, align 8
  %744 = add i64 %743, 856
  store i64 %744, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b3c5:                                  ; preds = %block_40b3af
  %745 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %746 = add i32 %745, -13
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i237, align 8
  %748 = icmp ult i32 %745, 13
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %12, align 1
  %750 = and i32 %746, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %13, align 1
  %755 = xor i32 %746, %745
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %14, align 1
  %759 = icmp eq i32 %746, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %15, align 1
  %761 = lshr i32 %746, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %16, align 1
  %763 = lshr i32 %745, 31
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %763
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %17, align 1
  %768 = sext i32 %746 to i64
  store i64 %768, i64* %RCX.i466, align 8
  %769 = shl nsw i64 %768, 2
  %770 = add nsw i64 %769, 8807744
  %771 = add i64 %738, 20
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i237, align 8
  %775 = add i64 %738, 23
  store i64 %775, i64* %3, align 8
  store i32 %773, i32* %691, align 4
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -8
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, 4
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %777 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = add i32 %781, -12
  %783 = icmp ult i32 %781, 12
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %12, align 1
  %785 = and i32 %782, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %13, align 1
  %790 = xor i32 %782, %781
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %14, align 1
  %794 = icmp eq i32 %782, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %15, align 1
  %796 = lshr i32 %782, 31
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %16, align 1
  %798 = lshr i32 %781, 31
  %799 = xor i32 %796, %798
  %800 = add nuw nsw i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %17, align 1
  %.v102 = select i1 %794, i64 20, i64 10
  %803 = add i64 %778, %.v102
  store i64 %803, i64* %3, align 8
  br i1 %794, label %block_.L_40b3f0, label %block_40b3e6

block_40b3e6:                                     ; preds = %block_.L_40b3c5
  %804 = add i64 %803, 4
  store i64 %804, i64* %3, align 8
  %805 = load i32, i32* %780, align 4
  %806 = add i32 %805, -10
  %807 = icmp ult i32 %805, 10
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %12, align 1
  %809 = and i32 %806, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %13, align 1
  %814 = xor i32 %806, %805
  %815 = lshr i32 %814, 4
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  store i8 %817, i8* %14, align 1
  %818 = icmp eq i32 %806, 0
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %15, align 1
  %820 = lshr i32 %806, 31
  %821 = trunc i32 %820 to i8
  store i8 %821, i8* %16, align 1
  %822 = lshr i32 %805, 31
  %823 = xor i32 %820, %822
  %824 = add nuw nsw i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %17, align 1
  %.v103 = select i1 %818, i64 10, i64 22
  %827 = add i64 %803, %.v103
  store i64 %827, i64* %3, align 8
  br i1 %818, label %block_.L_40b3f0, label %block_.L_40b3fc

block_.L_40b3f0:                                  ; preds = %block_40b3e6, %block_.L_40b3c5
  %828 = phi i64 [ %827, %block_40b3e6 ], [ %803, %block_.L_40b3c5 ]
  %829 = add i64 %776, -4
  %830 = add i64 %828, 7
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  store i32 2, i32* %831, align 4
  %832 = load i64, i64* %3, align 8
  %833 = add i64 %832, 801
  store i64 %833, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b3fc:                                  ; preds = %block_40b3e6
  %834 = add i64 %827, 7
  store i64 %834, i64* %3, align 8
  store i32 0, i32* %780, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40b403

block_.L_40b403:                                  ; preds = %block_.L_40b43c, %block_.L_40b3fc
  %835 = phi i64 [ %962, %block_.L_40b43c ], [ %.pre, %block_.L_40b3fc ]
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -8
  %838 = add i64 %835, 4
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = add i32 %840, -8
  %842 = icmp ult i32 %840, 8
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %12, align 1
  %844 = and i32 %841, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %13, align 1
  %849 = xor i32 %841, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %14, align 1
  %853 = icmp eq i32 %841, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %15, align 1
  %855 = lshr i32 %841, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %16, align 1
  %857 = lshr i32 %840, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %857
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %17, align 1
  %862 = icmp ne i8 %856, 0
  %863 = xor i1 %862, %860
  %.v60 = select i1 %863, i64 10, i64 76
  %864 = add i64 %835, %.v60
  store i64 %864, i64* %3, align 8
  br i1 %863, label %block_40b40d, label %block_.L_40b44f

block_40b40d:                                     ; preds = %block_.L_40b403
  %865 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RAX.i237, align 8
  %867 = add i64 %864, 11
  store i64 %867, i64* %3, align 8
  %868 = load i32, i32* %839, align 4
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX.i466, align 8
  %870 = shl nsw i64 %869, 2
  %871 = add nsw i64 %870, 4357040
  %872 = add i64 %864, 18
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, %865
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RAX.i237, align 8
  %877 = icmp ult i32 %875, %865
  %878 = icmp ult i32 %875, %874
  %879 = or i1 %877, %878
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %12, align 1
  %881 = and i32 %875, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %13, align 1
  %886 = xor i32 %874, %865
  %887 = xor i32 %886, %875
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %14, align 1
  %891 = icmp eq i32 %875, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %15, align 1
  %893 = lshr i32 %875, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %16, align 1
  %895 = lshr i32 %865, 31
  %896 = lshr i32 %874, 31
  %897 = xor i32 %893, %895
  %898 = xor i32 %893, %896
  %899 = add nuw nsw i32 %897, %898
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %17, align 1
  %902 = sext i32 %875 to i64
  store i64 %902, i64* %RCX.i466, align 8
  %903 = shl nsw i64 %902, 2
  %904 = add nsw i64 %903, 8807744
  %905 = add i64 %864, 29
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = add i32 %907, -4
  %909 = icmp ult i32 %907, 4
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %12, align 1
  %911 = and i32 %908, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %13, align 1
  %916 = xor i32 %908, %907
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %14, align 1
  %920 = icmp eq i32 %908, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %15, align 1
  %922 = lshr i32 %908, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %16, align 1
  %924 = lshr i32 %907, 31
  %925 = xor i32 %922, %924
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %17, align 1
  %.v = select i1 %920, i64 35, i64 47
  %929 = add i64 %864, %.v
  store i64 %929, i64* %3, align 8
  br i1 %920, label %block_40b430, label %block_.L_40b43c

block_40b430:                                     ; preds = %block_40b40d
  %930 = add i64 %836, -4
  %931 = add i64 %929, 7
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  store i32 2, i32* %932, align 4
  %933 = load i64, i64* %3, align 8
  %934 = add i64 %933, 737
  store i64 %934, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b43c:                                  ; preds = %block_40b40d
  %935 = add i64 %929, 8
  store i64 %935, i64* %3, align 8
  %936 = load i32, i32* %839, align 4
  %937 = add i32 %936, 1
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RAX.i237, align 8
  %939 = icmp eq i32 %936, -1
  %940 = icmp eq i32 %937, 0
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %12, align 1
  %943 = and i32 %937, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %13, align 1
  %948 = xor i32 %937, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %14, align 1
  %952 = zext i1 %940 to i8
  store i8 %952, i8* %15, align 1
  %953 = lshr i32 %937, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %16, align 1
  %955 = lshr i32 %936, 31
  %956 = xor i32 %953, %955
  %957 = add nuw nsw i32 %956, %953
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %17, align 1
  %960 = add i64 %929, 14
  store i64 %960, i64* %3, align 8
  store i32 %937, i32* %839, align 4
  %961 = load i64, i64* %3, align 8
  %962 = add i64 %961, -71
  store i64 %962, i64* %3, align 8
  br label %block_.L_40b403

block_.L_40b44f:                                  ; preds = %block_.L_40b403
  %RSI.i256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i256, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RDI.i254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %963 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RDI.i254, align 8
  %965 = add i64 %864, -41071
  %966 = add i64 %864, 14
  %967 = load i64, i64* %6, align 8
  %968 = add i64 %967, -8
  %969 = inttoptr i64 %968 to i64*
  store i64 %966, i64* %969, align 8
  store i64 %968, i64* %6, align 8
  store i64 %965, i64* %3, align 8
  %call2_40b458 = tail call %struct.Memory* @sub_4013e0.is_attacked(%struct.State* nonnull %0, i64 %965, %struct.Memory* %2)
  %970 = load i32, i32* %EAX.i465, align 4
  %971 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %972 = and i32 %970, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %977 = icmp eq i32 %970, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %15, align 1
  %979 = lshr i32 %970, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v104 = select i1 %977, i64 61, i64 9
  %981 = add i64 %971, %.v104
  store i64 %981, i64* %3, align 8
  br i1 %977, label %block_.L_40b49a, label %block_40b466

block_40b466:                                     ; preds = %block_.L_40b44f
  %982 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %983 = add i32 %982, -2
  %984 = icmp ult i32 %982, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %12, align 1
  %986 = and i32 %983, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %13, align 1
  %991 = xor i32 %983, %982
  %992 = lshr i32 %991, 4
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %14, align 1
  %995 = icmp eq i32 %983, 0
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %15, align 1
  %997 = lshr i32 %983, 31
  %998 = trunc i32 %997 to i8
  store i8 %998, i8* %16, align 1
  %999 = lshr i32 %982, 31
  %1000 = xor i32 %997, %999
  %1001 = add nuw nsw i32 %1000, %999
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %17, align 1
  %.v105 = select i1 %995, i64 28, i64 14
  %1004 = add i64 %981, %.v105
  store i64 %1004, i64* %3, align 8
  br i1 %995, label %block_.L_40b482, label %block_40b474

block_40b474:                                     ; preds = %block_40b466
  %1005 = add i32 %982, -4
  %1006 = icmp ult i32 %982, 4
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %12, align 1
  %1008 = and i32 %1005, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %13, align 1
  %1013 = xor i32 %1005, %982
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %14, align 1
  %1017 = icmp eq i32 %1005, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %15, align 1
  %1019 = lshr i32 %1005, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %16, align 1
  %1021 = xor i32 %1019, %999
  %1022 = add nuw nsw i32 %1021, %999
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %17, align 1
  %.v106 = select i1 %1017, i64 14, i64 26
  %1025 = add i64 %1004, %.v106
  store i64 %1025, i64* %3, align 8
  br i1 %1017, label %block_.L_40b482, label %block_.L_40b48e

block_.L_40b482:                                  ; preds = %block_40b474, %block_40b466
  %1026 = phi i64 [ %1025, %block_40b474 ], [ %1004, %block_40b466 ]
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -4
  %1029 = add i64 %1026, 7
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  store i32 2, i32* %1030, align 4
  %1031 = load i64, i64* %3, align 8
  %1032 = add i64 %1031, 655
  store i64 %1032, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b48e:                                  ; preds = %block_40b474
  %1033 = load i64, i64* %RBP.i, align 8
  %1034 = add i64 %1033, -4
  %1035 = add i64 %1025, 7
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  store i32 1, i32* %1036, align 4
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, 643
  store i64 %1038, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b49a:                                  ; preds = %block_.L_40b44f
  %1039 = add i64 %981, 631
  br label %block_.L_40b711

block_.L_40b49f:                                  ; preds = %block_.L_40b222
  %1040 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1041 = add i32 %1040, -12
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i237, align 8
  %1043 = icmp ult i32 %1040, 12
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %12, align 1
  %1045 = and i32 %1041, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045)
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %13, align 1
  %1050 = xor i32 %1041, %1040
  %1051 = lshr i32 %1050, 4
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %14, align 1
  %1054 = icmp eq i32 %1041, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %15, align 1
  %1056 = lshr i32 %1041, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %16, align 1
  %1058 = lshr i32 %1040, 31
  %1059 = xor i32 %1056, %1058
  %1060 = add nuw nsw i32 %1059, %1058
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %17, align 1
  %EAX.i232 = bitcast %union.anon* %69 to i32*
  %RCX.i233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %1063 = sext i32 %1041 to i64
  store i64 %1063, i64* %RCX.i233, align 8
  %1064 = shl nsw i64 %1063, 2
  %1065 = add nsw i64 %1064, 8807744
  %1066 = add i64 %68, 20
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i237, align 8
  %1070 = add i64 %7, -16
  %1071 = add i64 %68, 23
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  store i32 %1068, i32* %1072, align 4
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -8
  %1075 = load i64, i64* %3, align 8
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1074 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = add i32 %1078, -7
  %1080 = icmp ult i32 %1078, 7
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %12, align 1
  %1082 = and i32 %1079, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %13, align 1
  %1087 = xor i32 %1079, %1078
  %1088 = lshr i32 %1087, 4
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %14, align 1
  %1091 = icmp eq i32 %1079, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %15, align 1
  %1093 = lshr i32 %1079, 31
  %1094 = trunc i32 %1093 to i8
  store i8 %1094, i8* %16, align 1
  %1095 = lshr i32 %1078, 31
  %1096 = xor i32 %1093, %1095
  %1097 = add nuw nsw i32 %1096, %1095
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %17, align 1
  %.v65 = select i1 %1091, i64 20, i64 10
  %1100 = add i64 %1075, %.v65
  store i64 %1100, i64* %3, align 8
  br i1 %1091, label %block_.L_40b4ca, label %block_40b4c0

block_40b4c0:                                     ; preds = %block_.L_40b49f
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %3, align 8
  %1102 = load i32, i32* %1077, align 4
  %1103 = add i32 %1102, -9
  %1104 = icmp ult i32 %1102, 9
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %12, align 1
  %1106 = and i32 %1103, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %13, align 1
  %1111 = xor i32 %1103, %1102
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %14, align 1
  %1115 = icmp eq i32 %1103, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %15, align 1
  %1117 = lshr i32 %1103, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %16, align 1
  %1119 = lshr i32 %1102, 31
  %1120 = xor i32 %1117, %1119
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %17, align 1
  %.v66 = select i1 %1115, i64 10, i64 22
  %1124 = add i64 %1100, %.v66
  store i64 %1124, i64* %3, align 8
  br i1 %1115, label %block_.L_40b4ca, label %block_.L_40b4d6

block_.L_40b4ca:                                  ; preds = %block_40b4c0, %block_.L_40b49f
  %1125 = phi i64 [ %1124, %block_40b4c0 ], [ %1100, %block_.L_40b49f ]
  %1126 = add i64 %1073, -4
  %1127 = add i64 %1125, 7
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  store i32 2, i32* %1128, align 4
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, 583
  store i64 %1130, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b4d6:                                  ; preds = %block_40b4c0
  %1131 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1132 = add i32 %1131, -1
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RAX.i237, align 8
  %1134 = icmp eq i32 %1131, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %12, align 1
  %1136 = and i32 %1132, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %13, align 1
  %1141 = xor i32 %1132, %1131
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %14, align 1
  %1145 = icmp eq i32 %1132, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %15, align 1
  %1147 = lshr i32 %1132, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %16, align 1
  %1149 = lshr i32 %1131, 31
  %1150 = xor i32 %1147, %1149
  %1151 = add nuw nsw i32 %1150, %1149
  %1152 = icmp eq i32 %1151, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %17, align 1
  %1154 = sext i32 %1132 to i64
  store i64 %1154, i64* %RCX.i233, align 8
  %1155 = shl nsw i64 %1154, 2
  %1156 = add nsw i64 %1155, 8807744
  %1157 = add i64 %1124, 20
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RAX.i237, align 8
  %1161 = add i64 %1124, 23
  store i64 %1161, i64* %3, align 8
  store i32 %1159, i32* %1077, align 4
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -8
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 4
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = add i32 %1167, -7
  %1169 = icmp ult i32 %1167, 7
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %12, align 1
  %1171 = and i32 %1168, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %13, align 1
  %1176 = xor i32 %1168, %1167
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %14, align 1
  %1180 = icmp eq i32 %1168, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %15, align 1
  %1182 = lshr i32 %1168, 31
  %1183 = trunc i32 %1182 to i8
  store i8 %1183, i8* %16, align 1
  %1184 = lshr i32 %1167, 31
  %1185 = xor i32 %1182, %1184
  %1186 = add nuw nsw i32 %1185, %1184
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %17, align 1
  %.v67 = select i1 %1180, i64 20, i64 10
  %1189 = add i64 %1164, %.v67
  store i64 %1189, i64* %3, align 8
  br i1 %1180, label %block_.L_40b501, label %block_40b4f7

block_40b4f7:                                     ; preds = %block_.L_40b4d6
  %1190 = add i64 %1189, 4
  store i64 %1190, i64* %3, align 8
  %1191 = load i32, i32* %1166, align 4
  %1192 = add i32 %1191, -9
  %1193 = icmp ult i32 %1191, 9
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %12, align 1
  %1195 = and i32 %1192, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %13, align 1
  %1200 = xor i32 %1192, %1191
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %14, align 1
  %1204 = icmp eq i32 %1192, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %15, align 1
  %1206 = lshr i32 %1192, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %16, align 1
  %1208 = lshr i32 %1191, 31
  %1209 = xor i32 %1206, %1208
  %1210 = add nuw nsw i32 %1209, %1208
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %17, align 1
  %.v68 = select i1 %1204, i64 10, i64 22
  %1213 = add i64 %1189, %.v68
  store i64 %1213, i64* %3, align 8
  br i1 %1204, label %block_.L_40b501, label %block_.L_40b50d

block_.L_40b501:                                  ; preds = %block_40b4f7, %block_.L_40b4d6
  %1214 = phi i64 [ %1213, %block_40b4f7 ], [ %1189, %block_.L_40b4d6 ]
  %1215 = add i64 %1162, -4
  %1216 = add i64 %1214, 7
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  store i32 2, i32* %1217, align 4
  %1218 = load i64, i64* %3, align 8
  %1219 = add i64 %1218, 528
  store i64 %1219, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b50d:                                  ; preds = %block_40b4f7
  %1220 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1221 = add i32 %1220, 1
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RAX.i237, align 8
  %1223 = icmp eq i32 %1220, -1
  %1224 = icmp eq i32 %1221, 0
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %12, align 1
  %1227 = and i32 %1221, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %13, align 1
  %1232 = xor i32 %1221, %1220
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %14, align 1
  %1236 = zext i1 %1224 to i8
  store i8 %1236, i8* %15, align 1
  %1237 = lshr i32 %1221, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %16, align 1
  %1239 = lshr i32 %1220, 31
  %1240 = xor i32 %1237, %1239
  %1241 = add nuw nsw i32 %1240, %1237
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %17, align 1
  %1244 = sext i32 %1221 to i64
  store i64 %1244, i64* %RCX.i233, align 8
  %1245 = shl nsw i64 %1244, 2
  %1246 = add nsw i64 %1245, 8807744
  %1247 = add i64 %1213, 20
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RAX.i237, align 8
  %1251 = add i64 %1213, 23
  store i64 %1251, i64* %3, align 8
  store i32 %1249, i32* %1166, align 4
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -8
  %1254 = load i64, i64* %3, align 8
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = add i32 %1257, -7
  %1259 = icmp ult i32 %1257, 7
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %12, align 1
  %1261 = and i32 %1258, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %13, align 1
  %1266 = xor i32 %1258, %1257
  %1267 = lshr i32 %1266, 4
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %14, align 1
  %1270 = icmp eq i32 %1258, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %15, align 1
  %1272 = lshr i32 %1258, 31
  %1273 = trunc i32 %1272 to i8
  store i8 %1273, i8* %16, align 1
  %1274 = lshr i32 %1257, 31
  %1275 = xor i32 %1272, %1274
  %1276 = add nuw nsw i32 %1275, %1274
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %17, align 1
  %.v69 = select i1 %1270, i64 20, i64 10
  %1279 = add i64 %1254, %.v69
  store i64 %1279, i64* %3, align 8
  br i1 %1270, label %block_.L_40b538, label %block_40b52e

block_40b52e:                                     ; preds = %block_.L_40b50d
  %1280 = add i64 %1279, 4
  store i64 %1280, i64* %3, align 8
  %1281 = load i32, i32* %1256, align 4
  %1282 = add i32 %1281, -9
  %1283 = icmp ult i32 %1281, 9
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %12, align 1
  %1285 = and i32 %1282, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %13, align 1
  %1290 = xor i32 %1282, %1281
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %14, align 1
  %1294 = icmp eq i32 %1282, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %15, align 1
  %1296 = lshr i32 %1282, 31
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %16, align 1
  %1298 = lshr i32 %1281, 31
  %1299 = xor i32 %1296, %1298
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %17, align 1
  %.v70 = select i1 %1294, i64 10, i64 22
  %1303 = add i64 %1279, %.v70
  store i64 %1303, i64* %3, align 8
  br i1 %1294, label %block_.L_40b538, label %block_.L_40b544

block_.L_40b538:                                  ; preds = %block_40b52e, %block_.L_40b50d
  %1304 = phi i64 [ %1303, %block_40b52e ], [ %1279, %block_.L_40b50d ]
  %1305 = add i64 %1252, -4
  %1306 = add i64 %1304, 7
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  store i32 2, i32* %1307, align 4
  %1308 = load i64, i64* %3, align 8
  %1309 = add i64 %1308, 473
  store i64 %1309, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b544:                                  ; preds = %block_40b52e
  %1310 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1311 = add i32 %1310, 12
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i237, align 8
  %1313 = icmp ugt i32 %1310, -13
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %12, align 1
  %1315 = and i32 %1311, 255
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  store i8 %1319, i8* %13, align 1
  %1320 = xor i32 %1311, %1310
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %14, align 1
  %1324 = icmp eq i32 %1311, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %15, align 1
  %1326 = lshr i32 %1311, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %16, align 1
  %1328 = lshr i32 %1310, 31
  %1329 = xor i32 %1326, %1328
  %1330 = add nuw nsw i32 %1329, %1326
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %17, align 1
  %1333 = sext i32 %1311 to i64
  store i64 %1333, i64* %RCX.i233, align 8
  %1334 = shl nsw i64 %1333, 2
  %1335 = add nsw i64 %1334, 8807744
  %1336 = add i64 %1303, 20
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i237, align 8
  %1340 = add i64 %1303, 23
  store i64 %1340, i64* %3, align 8
  store i32 %1338, i32* %1256, align 4
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -8
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, 4
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, -7
  %1348 = icmp ult i32 %1346, 7
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %12, align 1
  %1350 = and i32 %1347, 255
  %1351 = tail call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  store i8 %1354, i8* %13, align 1
  %1355 = xor i32 %1347, %1346
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %14, align 1
  %1359 = icmp eq i32 %1347, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %15, align 1
  %1361 = lshr i32 %1347, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %16, align 1
  %1363 = lshr i32 %1346, 31
  %1364 = xor i32 %1361, %1363
  %1365 = add nuw nsw i32 %1364, %1363
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %17, align 1
  %.v71 = select i1 %1359, i64 20, i64 10
  %1368 = add i64 %1343, %.v71
  store i64 %1368, i64* %3, align 8
  br i1 %1359, label %block_.L_40b56f, label %block_40b565

block_40b565:                                     ; preds = %block_.L_40b544
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %3, align 8
  %1370 = load i32, i32* %1345, align 4
  %1371 = add i32 %1370, -9
  %1372 = icmp ult i32 %1370, 9
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %12, align 1
  %1374 = and i32 %1371, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %13, align 1
  %1379 = xor i32 %1371, %1370
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %14, align 1
  %1383 = icmp eq i32 %1371, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %15, align 1
  %1385 = lshr i32 %1371, 31
  %1386 = trunc i32 %1385 to i8
  store i8 %1386, i8* %16, align 1
  %1387 = lshr i32 %1370, 31
  %1388 = xor i32 %1385, %1387
  %1389 = add nuw nsw i32 %1388, %1387
  %1390 = icmp eq i32 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %17, align 1
  %.v72 = select i1 %1383, i64 10, i64 22
  %1392 = add i64 %1368, %.v72
  store i64 %1392, i64* %3, align 8
  br i1 %1383, label %block_.L_40b56f, label %block_.L_40b57b

block_.L_40b56f:                                  ; preds = %block_40b565, %block_.L_40b544
  %1393 = phi i64 [ %1392, %block_40b565 ], [ %1368, %block_.L_40b544 ]
  %1394 = add i64 %1341, -4
  %1395 = add i64 %1393, 7
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  store i32 2, i32* %1396, align 4
  %1397 = load i64, i64* %3, align 8
  %1398 = add i64 %1397, 418
  store i64 %1398, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b57b:                                  ; preds = %block_40b565
  %1399 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1400 = add i32 %1399, -13
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RAX.i237, align 8
  %1402 = icmp ult i32 %1399, 13
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %12, align 1
  %1404 = and i32 %1400, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %13, align 1
  %1409 = xor i32 %1400, %1399
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %14, align 1
  %1413 = icmp eq i32 %1400, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %15, align 1
  %1415 = lshr i32 %1400, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %16, align 1
  %1417 = lshr i32 %1399, 31
  %1418 = xor i32 %1415, %1417
  %1419 = add nuw nsw i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %17, align 1
  %1422 = sext i32 %1400 to i64
  store i64 %1422, i64* %RCX.i233, align 8
  %1423 = shl nsw i64 %1422, 2
  %1424 = add nsw i64 %1423, 8807744
  %1425 = add i64 %1392, 20
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RAX.i237, align 8
  %1429 = add i64 %1392, 23
  store i64 %1429, i64* %3, align 8
  store i32 %1427, i32* %1345, align 4
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -8
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = add i32 %1435, -11
  %1437 = icmp ult i32 %1435, 11
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %12, align 1
  %1439 = and i32 %1436, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %13, align 1
  %1444 = xor i32 %1436, %1435
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %14, align 1
  %1448 = icmp eq i32 %1436, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %15, align 1
  %1450 = lshr i32 %1436, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %16, align 1
  %1452 = lshr i32 %1435, 31
  %1453 = xor i32 %1450, %1452
  %1454 = add nuw nsw i32 %1453, %1452
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %17, align 1
  %.v73 = select i1 %1448, i64 30, i64 10
  %1457 = add i64 %1432, %.v73
  store i64 %1457, i64* %3, align 8
  br i1 %1448, label %block_.L_40b5b0, label %block_40b59c

block_40b59c:                                     ; preds = %block_.L_40b57b
  %1458 = add i64 %1457, 4
  store i64 %1458, i64* %3, align 8
  %1459 = load i32, i32* %1434, align 4
  %1460 = add i32 %1459, -9
  %1461 = icmp ult i32 %1459, 9
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %12, align 1
  %1463 = and i32 %1460, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %13, align 1
  %1468 = xor i32 %1460, %1459
  %1469 = lshr i32 %1468, 4
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  store i8 %1471, i8* %14, align 1
  %1472 = icmp eq i32 %1460, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %15, align 1
  %1474 = lshr i32 %1460, 31
  %1475 = trunc i32 %1474 to i8
  store i8 %1475, i8* %16, align 1
  %1476 = lshr i32 %1459, 31
  %1477 = xor i32 %1474, %1476
  %1478 = add nuw nsw i32 %1477, %1476
  %1479 = icmp eq i32 %1478, 2
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %17, align 1
  %.v74 = select i1 %1472, i64 20, i64 10
  %1481 = add i64 %1457, %.v74
  store i64 %1481, i64* %3, align 8
  br i1 %1472, label %block_.L_40b5b0, label %block_40b5a6

block_40b5a6:                                     ; preds = %block_40b59c
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %3, align 8
  %1483 = load i32, i32* %1434, align 4
  %1484 = add i32 %1483, -1
  %1485 = icmp eq i32 %1483, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %12, align 1
  %1487 = and i32 %1484, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %13, align 1
  %1492 = xor i32 %1484, %1483
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %14, align 1
  %1496 = icmp eq i32 %1484, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %15, align 1
  %1498 = lshr i32 %1484, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %16, align 1
  %1500 = lshr i32 %1483, 31
  %1501 = xor i32 %1498, %1500
  %1502 = add nuw nsw i32 %1501, %1500
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %17, align 1
  %.v75 = select i1 %1496, i64 10, i64 22
  %1505 = add i64 %1481, %.v75
  store i64 %1505, i64* %3, align 8
  br i1 %1496, label %block_.L_40b5b0, label %block_.L_40b5bc

block_.L_40b5b0:                                  ; preds = %block_40b5a6, %block_40b59c, %block_.L_40b57b
  %1506 = phi i64 [ %1505, %block_40b5a6 ], [ %1481, %block_40b59c ], [ %1457, %block_.L_40b57b ]
  %1507 = add i64 %1430, -4
  %1508 = add i64 %1506, 7
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  store i32 2, i32* %1509, align 4
  %1510 = load i64, i64* %3, align 8
  %1511 = add i64 %1510, 353
  store i64 %1511, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b5bc:                                  ; preds = %block_40b5a6
  %1512 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1513 = add i32 %1512, -11
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i237, align 8
  %1515 = icmp ult i32 %1512, 11
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %12, align 1
  %1517 = and i32 %1513, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %13, align 1
  %1522 = xor i32 %1513, %1512
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %14, align 1
  %1526 = icmp eq i32 %1513, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %15, align 1
  %1528 = lshr i32 %1513, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %16, align 1
  %1530 = lshr i32 %1512, 31
  %1531 = xor i32 %1528, %1530
  %1532 = add nuw nsw i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %17, align 1
  %1535 = sext i32 %1513 to i64
  store i64 %1535, i64* %RCX.i233, align 8
  %1536 = shl nsw i64 %1535, 2
  %1537 = add nsw i64 %1536, 8807744
  %1538 = add i64 %1505, 20
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i237, align 8
  %1542 = add i64 %1505, 23
  store i64 %1542, i64* %3, align 8
  store i32 %1540, i32* %1434, align 4
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -8
  %1545 = load i64, i64* %3, align 8
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = add i32 %1548, -11
  %1550 = icmp ult i32 %1548, 11
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %12, align 1
  %1552 = and i32 %1549, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %13, align 1
  %1557 = xor i32 %1549, %1548
  %1558 = lshr i32 %1557, 4
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %14, align 1
  %1561 = icmp eq i32 %1549, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %15, align 1
  %1563 = lshr i32 %1549, 31
  %1564 = trunc i32 %1563 to i8
  store i8 %1564, i8* %16, align 1
  %1565 = lshr i32 %1548, 31
  %1566 = xor i32 %1563, %1565
  %1567 = add nuw nsw i32 %1566, %1565
  %1568 = icmp eq i32 %1567, 2
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %17, align 1
  %.v76 = select i1 %1561, i64 30, i64 10
  %1570 = add i64 %1545, %.v76
  store i64 %1570, i64* %3, align 8
  br i1 %1561, label %block_.L_40b5f1, label %block_40b5dd

block_40b5dd:                                     ; preds = %block_.L_40b5bc
  %1571 = add i64 %1570, 4
  store i64 %1571, i64* %3, align 8
  %1572 = load i32, i32* %1547, align 4
  %1573 = add i32 %1572, -9
  %1574 = icmp ult i32 %1572, 9
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %12, align 1
  %1576 = and i32 %1573, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %13, align 1
  %1581 = xor i32 %1573, %1572
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %14, align 1
  %1585 = icmp eq i32 %1573, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %15, align 1
  %1587 = lshr i32 %1573, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %16, align 1
  %1589 = lshr i32 %1572, 31
  %1590 = xor i32 %1587, %1589
  %1591 = add nuw nsw i32 %1590, %1589
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %17, align 1
  %.v77 = select i1 %1585, i64 20, i64 10
  %1594 = add i64 %1570, %.v77
  store i64 %1594, i64* %3, align 8
  br i1 %1585, label %block_.L_40b5f1, label %block_40b5e7

block_40b5e7:                                     ; preds = %block_40b5dd
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = load i32, i32* %1547, align 4
  %1597 = add i32 %1596, -1
  %1598 = icmp eq i32 %1596, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %12, align 1
  %1600 = and i32 %1597, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %13, align 1
  %1605 = xor i32 %1597, %1596
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  store i8 %1608, i8* %14, align 1
  %1609 = icmp eq i32 %1597, 0
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %15, align 1
  %1611 = lshr i32 %1597, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %16, align 1
  %1613 = lshr i32 %1596, 31
  %1614 = xor i32 %1611, %1613
  %1615 = add nuw nsw i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %17, align 1
  %.v78 = select i1 %1609, i64 10, i64 22
  %1618 = add i64 %1594, %.v78
  store i64 %1618, i64* %3, align 8
  br i1 %1609, label %block_.L_40b5f1, label %block_.L_40b5fd

block_.L_40b5f1:                                  ; preds = %block_40b5e7, %block_40b5dd, %block_.L_40b5bc
  %1619 = phi i64 [ %1618, %block_40b5e7 ], [ %1594, %block_40b5dd ], [ %1570, %block_.L_40b5bc ]
  %1620 = add i64 %1543, -4
  %1621 = add i64 %1619, 7
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  store i32 2, i32* %1622, align 4
  %1623 = load i64, i64* %3, align 8
  %1624 = add i64 %1623, 288
  store i64 %1624, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b5fd:                                  ; preds = %block_40b5e7
  %1625 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1626 = add i32 %1625, 11
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RAX.i237, align 8
  %1628 = icmp ugt i32 %1625, -12
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %12, align 1
  %1630 = and i32 %1626, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %13, align 1
  %1635 = xor i32 %1626, %1625
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %14, align 1
  %1639 = icmp eq i32 %1626, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %15, align 1
  %1641 = lshr i32 %1626, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %16, align 1
  %1643 = lshr i32 %1625, 31
  %1644 = xor i32 %1641, %1643
  %1645 = add nuw nsw i32 %1644, %1641
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %17, align 1
  %1648 = sext i32 %1626 to i64
  store i64 %1648, i64* %RCX.i233, align 8
  %1649 = shl nsw i64 %1648, 2
  %1650 = add nsw i64 %1649, 8807744
  %1651 = add i64 %1618, 20
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RAX.i237, align 8
  %1655 = add i64 %1618, 23
  store i64 %1655, i64* %3, align 8
  store i32 %1653, i32* %1547, align 4
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -8
  %1658 = load i64, i64* %3, align 8
  %1659 = add i64 %1658, 4
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1657 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = add i32 %1661, -11
  %1663 = icmp ult i32 %1661, 11
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %12, align 1
  %1665 = and i32 %1662, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %13, align 1
  %1670 = xor i32 %1662, %1661
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %14, align 1
  %1674 = icmp eq i32 %1662, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %15, align 1
  %1676 = lshr i32 %1662, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %16, align 1
  %1678 = lshr i32 %1661, 31
  %1679 = xor i32 %1676, %1678
  %1680 = add nuw nsw i32 %1679, %1678
  %1681 = icmp eq i32 %1680, 2
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %17, align 1
  %.v79 = select i1 %1674, i64 20, i64 10
  %1683 = add i64 %1658, %.v79
  store i64 %1683, i64* %3, align 8
  br i1 %1674, label %block_.L_40b628, label %block_40b61e

block_40b61e:                                     ; preds = %block_.L_40b5fd
  %1684 = add i64 %1683, 4
  store i64 %1684, i64* %3, align 8
  %1685 = load i32, i32* %1660, align 4
  %1686 = add i32 %1685, -9
  %1687 = icmp ult i32 %1685, 9
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %12, align 1
  %1689 = and i32 %1686, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %13, align 1
  %1694 = xor i32 %1686, %1685
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %14, align 1
  %1698 = icmp eq i32 %1686, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %15, align 1
  %1700 = lshr i32 %1686, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %16, align 1
  %1702 = lshr i32 %1685, 31
  %1703 = xor i32 %1700, %1702
  %1704 = add nuw nsw i32 %1703, %1702
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %17, align 1
  %.v80 = select i1 %1698, i64 10, i64 22
  %1707 = add i64 %1683, %.v80
  store i64 %1707, i64* %3, align 8
  br i1 %1698, label %block_.L_40b628, label %block_.L_40b634

block_.L_40b628:                                  ; preds = %block_40b61e, %block_.L_40b5fd
  %1708 = phi i64 [ %1707, %block_40b61e ], [ %1683, %block_.L_40b5fd ]
  %1709 = add i64 %1656, -4
  %1710 = add i64 %1708, 7
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  store i32 2, i32* %1711, align 4
  %1712 = load i64, i64* %3, align 8
  %1713 = add i64 %1712, 233
  store i64 %1713, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b634:                                  ; preds = %block_40b61e
  %1714 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1715 = add i32 %1714, 13
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RAX.i237, align 8
  %1717 = icmp ugt i32 %1714, -14
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %12, align 1
  %1719 = and i32 %1715, 255
  %1720 = tail call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %13, align 1
  %1724 = xor i32 %1715, %1714
  %1725 = lshr i32 %1724, 4
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  store i8 %1727, i8* %14, align 1
  %1728 = icmp eq i32 %1715, 0
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %15, align 1
  %1730 = lshr i32 %1715, 31
  %1731 = trunc i32 %1730 to i8
  store i8 %1731, i8* %16, align 1
  %1732 = lshr i32 %1714, 31
  %1733 = xor i32 %1730, %1732
  %1734 = add nuw nsw i32 %1733, %1730
  %1735 = icmp eq i32 %1734, 2
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %17, align 1
  %1737 = sext i32 %1715 to i64
  store i64 %1737, i64* %RCX.i233, align 8
  %1738 = shl nsw i64 %1737, 2
  %1739 = add nsw i64 %1738, 8807744
  %1740 = add i64 %1707, 20
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i32*
  %1742 = load i32, i32* %1741, align 4
  %1743 = zext i32 %1742 to i64
  store i64 %1743, i64* %RAX.i237, align 8
  %1744 = add i64 %1707, 23
  store i64 %1744, i64* %3, align 8
  store i32 %1742, i32* %1660, align 4
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -8
  %1747 = load i64, i64* %3, align 8
  %1748 = add i64 %1747, 4
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1746 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = add i32 %1750, -11
  %1752 = icmp ult i32 %1750, 11
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %12, align 1
  %1754 = and i32 %1751, 255
  %1755 = tail call i32 @llvm.ctpop.i32(i32 %1754)
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  %1758 = xor i8 %1757, 1
  store i8 %1758, i8* %13, align 1
  %1759 = xor i32 %1751, %1750
  %1760 = lshr i32 %1759, 4
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %14, align 1
  %1763 = icmp eq i32 %1751, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %15, align 1
  %1765 = lshr i32 %1751, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %16, align 1
  %1767 = lshr i32 %1750, 31
  %1768 = xor i32 %1765, %1767
  %1769 = add nuw nsw i32 %1768, %1767
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %17, align 1
  %.v81 = select i1 %1763, i64 20, i64 10
  %1772 = add i64 %1747, %.v81
  store i64 %1772, i64* %3, align 8
  br i1 %1763, label %block_.L_40b65f, label %block_40b655

block_40b655:                                     ; preds = %block_.L_40b634
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %3, align 8
  %1774 = load i32, i32* %1749, align 4
  %1775 = add i32 %1774, -9
  %1776 = icmp ult i32 %1774, 9
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %12, align 1
  %1778 = and i32 %1775, 255
  %1779 = tail call i32 @llvm.ctpop.i32(i32 %1778)
  %1780 = trunc i32 %1779 to i8
  %1781 = and i8 %1780, 1
  %1782 = xor i8 %1781, 1
  store i8 %1782, i8* %13, align 1
  %1783 = xor i32 %1775, %1774
  %1784 = lshr i32 %1783, 4
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  store i8 %1786, i8* %14, align 1
  %1787 = icmp eq i32 %1775, 0
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %15, align 1
  %1789 = lshr i32 %1775, 31
  %1790 = trunc i32 %1789 to i8
  store i8 %1790, i8* %16, align 1
  %1791 = lshr i32 %1774, 31
  %1792 = xor i32 %1789, %1791
  %1793 = add nuw nsw i32 %1792, %1791
  %1794 = icmp eq i32 %1793, 2
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %17, align 1
  %.v82 = select i1 %1787, i64 10, i64 22
  %1796 = add i64 %1772, %.v82
  store i64 %1796, i64* %3, align 8
  br i1 %1787, label %block_.L_40b65f, label %block_.L_40b66b

block_.L_40b65f:                                  ; preds = %block_40b655, %block_.L_40b634
  %1797 = phi i64 [ %1796, %block_40b655 ], [ %1772, %block_.L_40b634 ]
  %1798 = add i64 %1745, -4
  %1799 = add i64 %1797, 7
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  store i32 2, i32* %1800, align 4
  %1801 = load i64, i64* %3, align 8
  %1802 = add i64 %1801, 178
  store i64 %1802, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b66b:                                  ; preds = %block_40b655
  %1803 = add i64 %1796, 7
  store i64 %1803, i64* %3, align 8
  store i32 0, i32* %1749, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_40b672

block_.L_40b672:                                  ; preds = %block_.L_40b6ab, %block_.L_40b66b
  %1804 = phi i64 [ %1931, %block_.L_40b6ab ], [ %.pre58, %block_.L_40b66b ]
  %1805 = load i64, i64* %RBP.i, align 8
  %1806 = add i64 %1805, -8
  %1807 = add i64 %1804, 4
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = add i32 %1809, -8
  %1811 = icmp ult i32 %1809, 8
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %12, align 1
  %1813 = and i32 %1810, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %13, align 1
  %1818 = xor i32 %1810, %1809
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %14, align 1
  %1822 = icmp eq i32 %1810, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %15, align 1
  %1824 = lshr i32 %1810, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %16, align 1
  %1826 = lshr i32 %1809, 31
  %1827 = xor i32 %1824, %1826
  %1828 = add nuw nsw i32 %1827, %1826
  %1829 = icmp eq i32 %1828, 2
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %17, align 1
  %1831 = icmp ne i8 %1825, 0
  %1832 = xor i1 %1831, %1829
  %.v62 = select i1 %1832, i64 10, i64 76
  %1833 = add i64 %1804, %.v62
  store i64 %1833, i64* %3, align 8
  br i1 %1832, label %block_40b67c, label %block_.L_40b6be

block_40b67c:                                     ; preds = %block_.L_40b672
  %1834 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX.i237, align 8
  %1836 = add i64 %1833, 11
  store i64 %1836, i64* %3, align 8
  %1837 = load i32, i32* %1808, align 4
  %1838 = sext i32 %1837 to i64
  store i64 %1838, i64* %RCX.i233, align 8
  %1839 = shl nsw i64 %1838, 2
  %1840 = add nsw i64 %1839, 4357040
  %1841 = add i64 %1833, 18
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = add i32 %1843, %1834
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i237, align 8
  %1846 = icmp ult i32 %1844, %1834
  %1847 = icmp ult i32 %1844, %1843
  %1848 = or i1 %1846, %1847
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %12, align 1
  %1850 = and i32 %1844, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %13, align 1
  %1855 = xor i32 %1843, %1834
  %1856 = xor i32 %1855, %1844
  %1857 = lshr i32 %1856, 4
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %14, align 1
  %1860 = icmp eq i32 %1844, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %15, align 1
  %1862 = lshr i32 %1844, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %16, align 1
  %1864 = lshr i32 %1834, 31
  %1865 = lshr i32 %1843, 31
  %1866 = xor i32 %1862, %1864
  %1867 = xor i32 %1862, %1865
  %1868 = add nuw nsw i32 %1866, %1867
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %17, align 1
  %1871 = sext i32 %1844 to i64
  store i64 %1871, i64* %RCX.i233, align 8
  %1872 = shl nsw i64 %1871, 2
  %1873 = add nsw i64 %1872, 8807744
  %1874 = add i64 %1833, 29
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = add i32 %1876, -3
  %1878 = icmp ult i32 %1876, 3
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %12, align 1
  %1880 = and i32 %1877, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %13, align 1
  %1885 = xor i32 %1877, %1876
  %1886 = lshr i32 %1885, 4
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %14, align 1
  %1889 = icmp eq i32 %1877, 0
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %15, align 1
  %1891 = lshr i32 %1877, 31
  %1892 = trunc i32 %1891 to i8
  store i8 %1892, i8* %16, align 1
  %1893 = lshr i32 %1876, 31
  %1894 = xor i32 %1891, %1893
  %1895 = add nuw nsw i32 %1894, %1893
  %1896 = icmp eq i32 %1895, 2
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %17, align 1
  %.v61 = select i1 %1889, i64 35, i64 47
  %1898 = add i64 %1833, %.v61
  store i64 %1898, i64* %3, align 8
  br i1 %1889, label %block_40b69f, label %block_.L_40b6ab

block_40b69f:                                     ; preds = %block_40b67c
  %1899 = add i64 %1805, -4
  %1900 = add i64 %1898, 7
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  store i32 2, i32* %1901, align 4
  %1902 = load i64, i64* %3, align 8
  %1903 = add i64 %1902, 114
  store i64 %1903, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b6ab:                                  ; preds = %block_40b67c
  %1904 = add i64 %1898, 8
  store i64 %1904, i64* %3, align 8
  %1905 = load i32, i32* %1808, align 4
  %1906 = add i32 %1905, 1
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RAX.i237, align 8
  %1908 = icmp eq i32 %1905, -1
  %1909 = icmp eq i32 %1906, 0
  %1910 = or i1 %1908, %1909
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %12, align 1
  %1912 = and i32 %1906, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %13, align 1
  %1917 = xor i32 %1906, %1905
  %1918 = lshr i32 %1917, 4
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %14, align 1
  %1921 = zext i1 %1909 to i8
  store i8 %1921, i8* %15, align 1
  %1922 = lshr i32 %1906, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %16, align 1
  %1924 = lshr i32 %1905, 31
  %1925 = xor i32 %1922, %1924
  %1926 = add nuw nsw i32 %1925, %1922
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %17, align 1
  %1929 = add i64 %1898, 14
  store i64 %1929, i64* %3, align 8
  store i32 %1906, i32* %1808, align 4
  %1930 = load i64, i64* %3, align 8
  %1931 = add i64 %1930, -71
  store i64 %1931, i64* %3, align 8
  br label %block_.L_40b672

block_.L_40b6be:                                  ; preds = %block_.L_40b672
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 1, i64* %RSI.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %1932 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RDI.i, align 8
  %1934 = add i64 %1833, -41694
  %1935 = add i64 %1833, 17
  %1936 = load i64, i64* %6, align 8
  %1937 = add i64 %1936, -8
  %1938 = inttoptr i64 %1937 to i64*
  store i64 %1935, i64* %1938, align 8
  store i64 %1937, i64* %6, align 8
  store i64 %1934, i64* %3, align 8
  %call2_40b6ca = tail call %struct.Memory* @sub_4013e0.is_attacked(%struct.State* nonnull %0, i64 %1934, %struct.Memory* %2)
  %1939 = load i32, i32* %EAX.i232, align 4
  %1940 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1941 = and i32 %1939, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941)
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1946 = icmp eq i32 %1939, 0
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %15, align 1
  %1948 = lshr i32 %1939, 31
  %1949 = trunc i32 %1948 to i8
  store i8 %1949, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v83 = select i1 %1946, i64 61, i64 9
  %1950 = add i64 %1940, %.v83
  store i64 %1950, i64* %3, align 8
  br i1 %1946, label %block_.L_40b70c, label %block_40b6d8

block_40b6d8:                                     ; preds = %block_.L_40b6be
  %1951 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1952 = add i32 %1951, -2
  %1953 = icmp ult i32 %1951, 2
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %12, align 1
  %1955 = and i32 %1952, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %13, align 1
  %1960 = xor i32 %1952, %1951
  %1961 = lshr i32 %1960, 4
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %14, align 1
  %1964 = icmp eq i32 %1952, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %15, align 1
  %1966 = lshr i32 %1952, 31
  %1967 = trunc i32 %1966 to i8
  store i8 %1967, i8* %16, align 1
  %1968 = lshr i32 %1951, 31
  %1969 = xor i32 %1966, %1968
  %1970 = add nuw nsw i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %17, align 1
  %.v84 = select i1 %1964, i64 28, i64 14
  %1973 = add i64 %1950, %.v84
  store i64 %1973, i64* %3, align 8
  br i1 %1964, label %block_.L_40b6f4, label %block_40b6e6

block_40b6e6:                                     ; preds = %block_40b6d8
  %1974 = add i32 %1951, -4
  %1975 = icmp ult i32 %1951, 4
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %12, align 1
  %1977 = and i32 %1974, 255
  %1978 = tail call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  store i8 %1981, i8* %13, align 1
  %1982 = xor i32 %1974, %1951
  %1983 = lshr i32 %1982, 4
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %14, align 1
  %1986 = icmp eq i32 %1974, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %15, align 1
  %1988 = lshr i32 %1974, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %16, align 1
  %1990 = xor i32 %1988, %1968
  %1991 = add nuw nsw i32 %1990, %1968
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %17, align 1
  %.v85 = select i1 %1986, i64 14, i64 26
  %1994 = add i64 %1973, %.v85
  store i64 %1994, i64* %3, align 8
  br i1 %1986, label %block_.L_40b6f4, label %block_.L_40b700

block_.L_40b6f4:                                  ; preds = %block_40b6e6, %block_40b6d8
  %1995 = phi i64 [ %1994, %block_40b6e6 ], [ %1973, %block_40b6d8 ]
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -4
  %1998 = add i64 %1995, 7
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  store i32 2, i32* %1999, align 4
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, 29
  store i64 %2001, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b700:                                  ; preds = %block_40b6e6
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -4
  %2004 = add i64 %1994, 7
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  store i32 1, i32* %2005, align 4
  %2006 = load i64, i64* %3, align 8
  %2007 = add i64 %2006, 17
  store i64 %2007, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b70c:                                  ; preds = %block_.L_40b6be
  %2008 = add i64 %1950, 5
  store i64 %2008, i64* %3, align 8
  br label %block_.L_40b711

block_.L_40b711:                                  ; preds = %block_.L_40b70c, %block_.L_40b49a
  %storemerge = phi i64 [ %1039, %block_.L_40b49a ], [ %2008, %block_.L_40b70c ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_40b458, %block_.L_40b49a ], [ %call2_40b6ca, %block_.L_40b70c ]
  %2009 = load i64, i64* %RBP.i, align 8
  %2010 = add i64 %2009, -4
  %2011 = add i64 %storemerge, 7
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  store i32 0, i32* %2012, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b718:                                  ; preds = %block_.L_40b711, %block_.L_40b700, %block_.L_40b6f4, %block_40b69f, %block_.L_40b65f, %block_.L_40b628, %block_.L_40b5f1, %block_.L_40b5b0, %block_.L_40b56f, %block_.L_40b538, %block_.L_40b501, %block_.L_40b4ca, %block_.L_40b48e, %block_.L_40b482, %block_40b430, %block_.L_40b3f0, %block_.L_40b3b9, %block_.L_40b382, %block_.L_40b341, %block_.L_40b300, %block_.L_40b2c9, %block_.L_40b292, %block_.L_40b25b, %block_40b216
  %2013 = phi i64 [ %1130, %block_.L_40b4ca ], [ %1219, %block_.L_40b501 ], [ %1309, %block_.L_40b538 ], [ %1398, %block_.L_40b56f ], [ %1511, %block_.L_40b5b0 ], [ %1624, %block_.L_40b5f1 ], [ %1713, %block_.L_40b628 ], [ %1802, %block_.L_40b65f ], [ %.pre59, %block_.L_40b711 ], [ %2001, %block_.L_40b6f4 ], [ %2007, %block_.L_40b700 ], [ %1903, %block_40b69f ], [ %161, %block_.L_40b25b ], [ %250, %block_.L_40b292 ], [ %340, %block_.L_40b2c9 ], [ %429, %block_.L_40b300 ], [ %542, %block_.L_40b341 ], [ %655, %block_.L_40b382 ], [ %744, %block_.L_40b3b9 ], [ %833, %block_.L_40b3f0 ], [ %1032, %block_.L_40b482 ], [ %1038, %block_.L_40b48e ], [ %934, %block_40b430 ], [ %45, %block_40b216 ]
  %MEMORY.21 = phi %struct.Memory* [ %2, %block_.L_40b4ca ], [ %2, %block_.L_40b501 ], [ %2, %block_.L_40b538 ], [ %2, %block_.L_40b56f ], [ %2, %block_.L_40b5b0 ], [ %2, %block_.L_40b5f1 ], [ %2, %block_.L_40b628 ], [ %2, %block_.L_40b65f ], [ %MEMORY.20, %block_.L_40b711 ], [ %call2_40b6ca, %block_.L_40b6f4 ], [ %call2_40b6ca, %block_.L_40b700 ], [ %2, %block_40b69f ], [ %2, %block_.L_40b25b ], [ %2, %block_.L_40b292 ], [ %2, %block_.L_40b2c9 ], [ %2, %block_.L_40b300 ], [ %2, %block_.L_40b341 ], [ %2, %block_.L_40b382 ], [ %2, %block_.L_40b3b9 ], [ %2, %block_.L_40b3f0 ], [ %call2_40b458, %block_.L_40b482 ], [ %call2_40b458, %block_.L_40b48e ], [ %2, %block_40b430 ], [ %2, %block_40b216 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %2014 = load i64, i64* %RBP.i, align 8
  %2015 = add i64 %2014, -4
  %2016 = add i64 %2013, 3
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX.i, align 8
  %2020 = load i64, i64* %6, align 8
  %2021 = add i64 %2020, 16
  store i64 %2021, i64* %6, align 8
  %2022 = icmp ugt i64 %2020, -17
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %12, align 1
  %2024 = trunc i64 %2021 to i32
  %2025 = and i32 %2024, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %13, align 1
  %2030 = xor i64 %2020, 16
  %2031 = xor i64 %2030, %2021
  %2032 = lshr i64 %2031, 4
  %2033 = trunc i64 %2032 to i8
  %2034 = and i8 %2033, 1
  store i8 %2034, i8* %14, align 1
  %2035 = icmp eq i64 %2021, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %15, align 1
  %2037 = lshr i64 %2021, 63
  %2038 = trunc i64 %2037 to i8
  store i8 %2038, i8* %16, align 1
  %2039 = lshr i64 %2020, 63
  %2040 = xor i64 %2037, %2039
  %2041 = add nuw nsw i64 %2040, %2037
  %2042 = icmp eq i64 %2041, 2
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %17, align 1
  %2044 = add i64 %2013, 8
  store i64 %2044, i64* %3, align 8
  %2045 = add i64 %2020, 24
  %2046 = inttoptr i64 %2021 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %RBP.i, align 8
  store i64 %2045, i64* %6, align 8
  %2048 = add i64 %2013, 9
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2045 to i64*
  %2050 = load i64, i64* %2049, align 8
  store i64 %2050, i64* %3, align 8
  %2051 = add i64 %2020, 32
  store i64 %2051, i64* %6, align 8
  ret %struct.Memory* %MEMORY.21
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
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b222(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b49f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x86bd7c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_40b25b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_40b267(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_40b292(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b29e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b2c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b2d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -13
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
define %struct.Memory* @routine_je_.L_40b300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b30c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -14
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_40b341(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_40b34d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xb___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -12
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
define %struct.Memory* @routine_je_.L_40b382(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b38e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0xb___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -11
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 11
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
define %struct.Memory* @routine_je_.L_40b3b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b3c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0xd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 13
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
define %struct.Memory* @routine_je_.L_40b3f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b3fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b44f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x427bb0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4357040
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
define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %9, 4
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b43c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b441(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b403(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x86bd7c___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_attacked(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_40b49a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b482(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b48e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b711(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661d0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_40b4ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_40b4d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b50d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b538(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b544(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b56f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b57b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xb__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_40b5b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jne_.L_40b5bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b5f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b5fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b628(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b65f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b66b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40b6be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %9, 3
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b6ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b6b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b672(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661d0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b70c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b6f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b700(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -17
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
