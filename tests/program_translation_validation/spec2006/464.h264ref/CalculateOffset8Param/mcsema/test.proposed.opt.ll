; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @CalculateOffset8Param(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %11, i64* %RAX.i372, align 8
  %12 = add i64 %11, 3584
  %13 = add i64 %10, 18
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %30, align 1
  %.v = select i1 %24, i64 347, i64 24
  %31 = add i64 %10, %.v
  %32 = add i64 %7, -20
  %33 = add i64 %31, 7
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %32 to i32*
  store i32 0, i32* %34, align 4
  %RCX.i145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i96 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %RSI.i85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %EDX.i65 = bitcast %union.anon* %35 to i32*
  %.pre34 = load i64, i64* %3, align 8
  br i1 %24, label %block_.L_47bf53.preheader, label %block_.L_47be10.preheader

block_.L_47be10.preheader:                        ; preds = %entry
  br label %block_.L_47be10

block_.L_47bf53.preheader:                        ; preds = %entry
  br label %block_.L_47bf53

block_.L_47be10:                                  ; preds = %block_.L_47be10.preheader, %block_.L_47bf34
  %36 = phi i64 [ %641, %block_.L_47bf34 ], [ %.pre34, %block_.L_47be10.preheader ]
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -12
  %39 = add i64 %36, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %38 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, -13
  %43 = icmp ult i32 %41, 13
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %16, align 1
  %45 = and i32 %42, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45)
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  store i8 %49, i8* %22, align 1
  %50 = xor i32 %42, %41
  %51 = lshr i32 %50, 4
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, i8* %23, align 1
  %54 = icmp eq i32 %42, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %26, align 1
  %56 = lshr i32 %42, 31
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %29, align 1
  %58 = lshr i32 %41, 31
  %59 = xor i32 %56, %58
  %60 = add nuw nsw i32 %59, %58
  %61 = icmp eq i32 %60, 2
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %30, align 1
  %63 = icmp ne i8 %57, 0
  %64 = xor i1 %63, %61
  %.v47 = select i1 %64, i64 10, i64 311
  %65 = add i64 %36, %.v47
  store i64 %65, i64* %3, align 8
  br i1 %64, label %block_47be1a, label %block_.L_47bf47

block_47be1a:                                     ; preds = %block_.L_47be10
  %66 = add i64 %65, 3
  store i64 %66, i64* %3, align 8
  %67 = load i32, i32* %40, align 4
  %68 = add i32 %67, 16
  %69 = lshr i32 %68, 31
  %70 = add i32 %67, 6
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RAX.i372, align 8
  %72 = icmp ult i32 %68, 10
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %16, align 1
  %74 = and i32 %70, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %22, align 1
  %79 = xor i32 %70, %68
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %23, align 1
  %83 = icmp eq i32 %70, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %26, align 1
  %85 = lshr i32 %70, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %29, align 1
  %87 = xor i32 %85, %69
  %88 = add nuw nsw i32 %87, %69
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %30, align 1
  %91 = add i64 %37, -20
  %92 = add i64 %65, 12
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 %70, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -8
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 0, i32* %98, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_47be2d

block_.L_47be2d:                                  ; preds = %block_.L_47bf21, %block_47be1a
  %99 = phi i64 [ %611, %block_.L_47bf21 ], [ %.pre31, %block_47be1a ]
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -8
  %102 = add i64 %99, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, -8
  %106 = icmp ult i32 %104, 8
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %16, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %22, align 1
  %113 = xor i32 %105, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %23, align 1
  %117 = icmp eq i32 %105, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %26, align 1
  %119 = lshr i32 %105, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %29, align 1
  %121 = lshr i32 %104, 31
  %122 = xor i32 %119, %121
  %123 = add nuw nsw i32 %122, %121
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %30, align 1
  %126 = icmp ne i8 %120, 0
  %127 = xor i1 %126, %124
  %.v38 = select i1 %127, i64 10, i64 263
  %128 = add i64 %99, %.v38
  store i64 %128, i64* %3, align 8
  br i1 %127, label %block_47be37, label %block_.L_47bf34

block_47be37:                                     ; preds = %block_.L_47be2d
  %129 = add i64 %100, -4
  %130 = add i64 %128, 7
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 0, i32* %131, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_47be3e

block_.L_47be3e:                                  ; preds = %routine_shll__cl___edx.exit238, %block_47be37
  %132 = phi i64 [ %581, %routine_shll__cl___edx.exit238 ], [ %.pre32, %block_47be37 ]
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -4
  %135 = add i64 %132, 4
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -8
  %139 = icmp ult i32 %137, 8
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %16, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %22, align 1
  %146 = xor i32 %138, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %23, align 1
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %26, align 1
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %29, align 1
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %30, align 1
  %159 = icmp ne i8 %153, 0
  %160 = xor i1 %159, %157
  %.v39 = select i1 %160, i64 10, i64 227
  %161 = add i64 %132, %.v39
  store i64 %161, i64* %3, align 8
  br i1 %160, label %block_47be48, label %block_.L_47bf21

block_47be48:                                     ; preds = %block_.L_47be3e
  %162 = add i64 %161, 3
  store i64 %162, i64* %3, align 8
  %163 = load i32, i32* %136, align 4
  %164 = shl i32 %163, 3
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RAX.i372, align 8
  %166 = lshr i32 %163, 29
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %16, align 1
  %169 = and i32 %164, 248
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %174 = icmp eq i32 %164, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %26, align 1
  %176 = lshr i32 %163, 28
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %179 = add i64 %133, -8
  %180 = add i64 %161, 9
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, %164
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX.i372, align 8
  %185 = icmp ult i32 %183, %164
  %186 = icmp ult i32 %183, %182
  %187 = or i1 %185, %186
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %16, align 1
  %189 = and i32 %183, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %22, align 1
  %194 = xor i32 %182, %164
  %195 = xor i32 %194, %183
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %23, align 1
  %199 = icmp eq i32 %183, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %26, align 1
  %201 = lshr i32 %183, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i32 %163, 28
  %204 = and i32 %203, 1
  %205 = lshr i32 %182, 31
  %206 = xor i32 %201, %204
  %207 = xor i32 %201, %205
  %208 = add nuw nsw i32 %206, %207
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %30, align 1
  %211 = add i64 %133, -16
  %212 = add i64 %161, 12
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i32*
  store i32 %183, i32* %213, align 4
  %214 = load i64, i64* %3, align 8
  %215 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %215, i64* %RCX.i145, align 8
  %216 = add i64 %215, 24
  %217 = add i64 %214, 12
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %219, -2
  %221 = icmp ult i32 %219, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %16, align 1
  %223 = and i32 %220, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %22, align 1
  %228 = xor i32 %220, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %23, align 1
  %232 = icmp eq i32 %220, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %26, align 1
  %234 = lshr i32 %220, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %29, align 1
  %236 = lshr i32 %219, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %30, align 1
  %.v48 = select i1 %232, i64 18, i64 79
  %241 = add i64 %214, %.v48
  store i64 7156720, i64* %RAX.i372, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -16
  %244 = add i64 %241, 14
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RCX.i145, align 8
  %248 = shl nsw i64 %247, 1
  br i1 %232, label %block_47be66, label %block_.L_47bea3

block_47be66:                                     ; preds = %block_47be48
  %249 = add nsw i64 %248, 7394512
  %250 = add i64 %241, 22
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i16*
  %252 = load i16, i16* %251, align 2
  %253 = sext i16 %252 to i64
  %254 = and i64 %253, 4294967295
  store i64 %254, i64* %RDX.i96, align 8
  %255 = add i64 %242, -20
  %256 = add i64 %241, 25
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RCX.i145, align 8
  %260 = add i64 %241, 27
  store i64 %260, i64* %3, align 8
  %261 = trunc i32 %258 to i5
  switch i5 %261, label %265 [
    i5 0, label %routine_shll__cl___edx.exit315
    i5 1, label %262
  ]

; <label>:262:                                    ; preds = %block_47be66
  %263 = sext i16 %252 to i32
  %264 = icmp slt i16 %252, 0
  br label %273

; <label>:265:                                    ; preds = %block_47be66
  %266 = and i32 %258, 31
  %267 = zext i32 %266 to i64
  %268 = add nuw nsw i64 %267, 4294967295
  %269 = and i64 %268, 4294967295
  %270 = shl i64 %254, %269
  %271 = trunc i64 %270 to i32
  %272 = icmp slt i32 %271, 0
  br label %273

; <label>:273:                                    ; preds = %265, %262
  %274 = phi i1 [ %264, %262 ], [ %272, %265 ]
  %.in = phi i32 [ %263, %262 ], [ %271, %265 ]
  %275 = shl i32 %.in, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RDX.i96, align 8
  %277 = zext i1 %274 to i8
  store i8 %277, i8* %16, align 1
  %278 = and i32 %275, 254
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %283 = icmp eq i32 %275, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %26, align 1
  %285 = lshr i32 %.in, 30
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit315

routine_shll__cl___edx.exit315:                   ; preds = %273, %block_47be66
  %288 = add i64 %242, -12
  %289 = add i64 %241, 31
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = shl nsw i64 %292, 8
  store i64 %293, i64* %RSI.i85, align 8
  %294 = add nsw i64 %293, 7156720
  store i64 %294, i64* %RAX.i372, align 8
  %295 = icmp ugt i64 %293, -7156721
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %297 = lshr i64 %294, 63
  %298 = trunc i64 %297 to i8
  store i8 %298, i8* %29, align 1
  %299 = lshr i64 %292, 55
  %300 = and i64 %299, 1
  %301 = xor i64 %297, %300
  %302 = add nuw nsw i64 %297, %301
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %30, align 1
  %305 = add i64 %242, -8
  %306 = add i64 %241, 42
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = shl nsw i64 %309, 5
  store i64 %310, i64* %RSI.i85, align 8
  %311 = add nsw i64 %310, %294
  store i64 %311, i64* %RAX.i372, align 8
  %312 = icmp ult i64 %311, %294
  %313 = icmp ult i64 %311, %310
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %16, align 1
  %316 = trunc i64 %311 to i32
  %317 = and i32 %316, 240
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %22, align 1
  %322 = xor i64 %294, %311
  %323 = lshr exact i64 %322, 4
  %324 = trunc i64 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %326 = lshr i64 %311, 63
  %327 = trunc i64 %326 to i8
  store i8 %327, i8* %29, align 1
  %328 = lshr i64 %309, 58
  %329 = and i64 %328, 1
  %330 = xor i64 %326, %297
  %331 = xor i64 %326, %329
  %332 = add nuw nsw i64 %330, %331
  %333 = icmp eq i64 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %30, align 1
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -4
  %337 = add i64 %241, 53
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RSI.i85, align 8
  %341 = shl nsw i64 %340, 2
  %342 = add nsw i64 %341, %311
  %343 = load i32, i32* %EDX.i65, align 4
  %344 = add i64 %241, 56
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %342 to i32*
  store i32 %343, i32* %345, align 4
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 61
  store i64 %347, i64* %3, align 8
  br label %block_.L_47bedb

block_.L_47bea3:                                  ; preds = %block_47be48
  %348 = add nsw i64 %248, 7394640
  %349 = add i64 %241, 22
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i16*
  %351 = load i16, i16* %350, align 2
  %352 = sext i16 %351 to i64
  %353 = and i64 %352, 4294967295
  store i64 %353, i64* %RDX.i96, align 8
  %354 = add i64 %242, -20
  %355 = add i64 %241, 25
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RCX.i145, align 8
  %359 = add i64 %241, 27
  store i64 %359, i64* %3, align 8
  %360 = trunc i32 %357 to i5
  switch i5 %360, label %364 [
    i5 0, label %routine_shll__cl___edx.exit276
    i5 1, label %361
  ]

; <label>:361:                                    ; preds = %block_.L_47bea3
  %362 = sext i16 %351 to i32
  %363 = icmp slt i16 %351, 0
  br label %372

; <label>:364:                                    ; preds = %block_.L_47bea3
  %365 = and i32 %357, 31
  %366 = zext i32 %365 to i64
  %367 = add nuw nsw i64 %366, 4294967295
  %368 = and i64 %367, 4294967295
  %369 = shl i64 %353, %368
  %370 = trunc i64 %369 to i32
  %371 = icmp slt i32 %370, 0
  br label %372

; <label>:372:                                    ; preds = %364, %361
  %373 = phi i1 [ %363, %361 ], [ %371, %364 ]
  %.in41 = phi i32 [ %362, %361 ], [ %370, %364 ]
  %374 = shl i32 %.in41, 1
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RDX.i96, align 8
  %376 = zext i1 %373 to i8
  store i8 %376, i8* %16, align 1
  %377 = and i32 %374, 254
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %382 = icmp eq i32 %374, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %26, align 1
  %384 = lshr i32 %.in41, 30
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit276

routine_shll__cl___edx.exit276:                   ; preds = %372, %block_.L_47bea3
  %387 = add i64 %242, -12
  %388 = add i64 %241, 31
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = shl nsw i64 %391, 8
  store i64 %392, i64* %RSI.i85, align 8
  %393 = add nsw i64 %392, 7156720
  store i64 %393, i64* %RAX.i372, align 8
  %394 = icmp ugt i64 %392, -7156721
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %396 = lshr i64 %393, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %29, align 1
  %398 = lshr i64 %391, 55
  %399 = and i64 %398, 1
  %400 = xor i64 %396, %399
  %401 = add nuw nsw i64 %396, %400
  %402 = icmp eq i64 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %30, align 1
  %404 = add i64 %242, -8
  %405 = add i64 %241, 42
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = shl nsw i64 %408, 5
  store i64 %409, i64* %RSI.i85, align 8
  %410 = add nsw i64 %409, %393
  store i64 %410, i64* %RAX.i372, align 8
  %411 = icmp ult i64 %410, %393
  %412 = icmp ult i64 %410, %409
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %16, align 1
  %415 = trunc i64 %410 to i32
  %416 = and i32 %415, 240
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %22, align 1
  %421 = xor i64 %393, %410
  %422 = lshr exact i64 %421, 4
  %423 = trunc i64 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %425 = lshr i64 %410, 63
  %426 = trunc i64 %425 to i8
  store i8 %426, i8* %29, align 1
  %427 = lshr i64 %408, 58
  %428 = and i64 %427, 1
  %429 = xor i64 %425, %396
  %430 = xor i64 %425, %428
  %431 = add nuw nsw i64 %429, %430
  %432 = icmp eq i64 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %30, align 1
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -4
  %436 = add i64 %241, 53
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  store i64 %439, i64* %RSI.i85, align 8
  %440 = shl nsw i64 %439, 2
  %441 = add nsw i64 %440, %410
  %442 = load i32, i32* %EDX.i65, align 4
  %443 = add i64 %241, 56
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %441 to i32*
  store i32 %442, i32* %444, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_47bedb

block_.L_47bedb:                                  ; preds = %routine_shll__cl___edx.exit276, %routine_shll__cl___edx.exit315
  %445 = phi i64 [ %.pre33, %routine_shll__cl___edx.exit276 ], [ %347, %routine_shll__cl___edx.exit315 ]
  store i64 7474576, i64* %RAX.i372, align 8
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -16
  %448 = add i64 %445, 14
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  %450 = load i32, i32* %449, align 4
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %RCX.i145, align 8
  %452 = shl nsw i64 %451, 1
  %453 = add nsw i64 %452, 7394768
  %454 = add i64 %445, 22
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i16*
  %456 = load i16, i16* %455, align 2
  %457 = sext i16 %456 to i64
  %458 = and i64 %457, 4294967295
  store i64 %458, i64* %RDX.i96, align 8
  %459 = add i64 %446, -20
  %460 = add i64 %445, 25
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX.i145, align 8
  %464 = add i64 %445, 27
  store i64 %464, i64* %3, align 8
  %465 = trunc i32 %462 to i5
  switch i5 %465, label %469 [
    i5 0, label %routine_shll__cl___edx.exit238
    i5 1, label %466
  ]

; <label>:466:                                    ; preds = %block_.L_47bedb
  %467 = sext i16 %456 to i32
  %468 = icmp slt i16 %456, 0
  br label %477

; <label>:469:                                    ; preds = %block_.L_47bedb
  %470 = and i32 %462, 31
  %471 = zext i32 %470 to i64
  %472 = add nuw nsw i64 %471, 4294967295
  %473 = and i64 %472, 4294967295
  %474 = shl i64 %458, %473
  %475 = trunc i64 %474 to i32
  %476 = icmp slt i32 %475, 0
  br label %477

; <label>:477:                                    ; preds = %469, %466
  %478 = phi i1 [ %468, %466 ], [ %476, %469 ]
  %.in40 = phi i32 [ %467, %466 ], [ %475, %469 ]
  %479 = shl i32 %.in40, 1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RDX.i96, align 8
  %481 = zext i1 %478 to i8
  store i8 %481, i8* %16, align 1
  %482 = and i32 %479, 254
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %487 = icmp eq i32 %479, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %26, align 1
  %489 = lshr i32 %.in40, 30
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit238

routine_shll__cl___edx.exit238:                   ; preds = %477, %block_.L_47bedb
  %492 = add i64 %446, -12
  %493 = add i64 %445, 31
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  %497 = shl nsw i64 %496, 8
  store i64 %497, i64* %RSI.i85, align 8
  %498 = add nsw i64 %497, 7474576
  store i64 %498, i64* %RAX.i372, align 8
  %499 = icmp ugt i64 %497, -7474577
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %501 = lshr i64 %498, 63
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %29, align 1
  %503 = lshr i64 %496, 55
  %504 = and i64 %503, 1
  %505 = xor i64 %501, %504
  %506 = add nuw nsw i64 %501, %505
  %507 = icmp eq i64 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %30, align 1
  %509 = add i64 %446, -8
  %510 = add i64 %445, 42
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  %514 = shl nsw i64 %513, 5
  store i64 %514, i64* %RSI.i85, align 8
  %515 = add nsw i64 %514, %498
  store i64 %515, i64* %RAX.i372, align 8
  %516 = icmp ult i64 %515, %498
  %517 = icmp ult i64 %515, %514
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %16, align 1
  %520 = trunc i64 %515 to i32
  %521 = and i32 %520, 240
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %22, align 1
  %526 = xor i64 %498, %515
  %527 = lshr exact i64 %526, 4
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %530 = lshr i64 %515, 63
  %531 = trunc i64 %530 to i8
  store i8 %531, i8* %29, align 1
  %532 = lshr i64 %513, 58
  %533 = and i64 %532, 1
  %534 = xor i64 %530, %501
  %535 = xor i64 %530, %533
  %536 = add nuw nsw i64 %534, %535
  %537 = icmp eq i64 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %30, align 1
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -4
  %541 = add i64 %445, 53
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %RSI.i85, align 8
  %545 = shl nsw i64 %544, 2
  %546 = add nsw i64 %545, %515
  %547 = load i32, i32* %EDX.i65, align 4
  %548 = add i64 %445, 56
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %546 to i32*
  store i32 %547, i32* %549, align 4
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -4
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 3
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = add i32 %555, 1
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i372, align 8
  %558 = icmp eq i32 %555, -1
  %559 = icmp eq i32 %556, 0
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %16, align 1
  %562 = and i32 %556, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %22, align 1
  %567 = xor i32 %556, %555
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %23, align 1
  %571 = zext i1 %559 to i8
  store i8 %571, i8* %26, align 1
  %572 = lshr i32 %556, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %29, align 1
  %574 = lshr i32 %555, 31
  %575 = xor i32 %572, %574
  %576 = add nuw nsw i32 %575, %572
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %30, align 1
  %579 = add i64 %552, 9
  store i64 %579, i64* %3, align 8
  store i32 %556, i32* %554, align 4
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, -222
  store i64 %581, i64* %3, align 8
  br label %block_.L_47be3e

block_.L_47bf21:                                  ; preds = %block_.L_47be3e
  %582 = add i64 %133, -8
  %583 = add i64 %161, 8
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = add i32 %585, 1
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX.i372, align 8
  %588 = icmp eq i32 %585, -1
  %589 = icmp eq i32 %586, 0
  %590 = or i1 %588, %589
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %16, align 1
  %592 = and i32 %586, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %22, align 1
  %597 = xor i32 %586, %585
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %23, align 1
  %601 = zext i1 %589 to i8
  store i8 %601, i8* %26, align 1
  %602 = lshr i32 %586, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %29, align 1
  %604 = lshr i32 %585, 31
  %605 = xor i32 %602, %604
  %606 = add nuw nsw i32 %605, %602
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %30, align 1
  %609 = add i64 %161, 14
  store i64 %609, i64* %3, align 8
  store i32 %586, i32* %584, align 4
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, -258
  store i64 %611, i64* %3, align 8
  br label %block_.L_47be2d

block_.L_47bf34:                                  ; preds = %block_.L_47be2d
  %612 = add i64 %100, -12
  %613 = add i64 %128, 8
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %615, 1
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX.i372, align 8
  %618 = icmp eq i32 %615, -1
  %619 = icmp eq i32 %616, 0
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %16, align 1
  %622 = and i32 %616, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %22, align 1
  %627 = xor i32 %616, %615
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %23, align 1
  %631 = zext i1 %619 to i8
  store i8 %631, i8* %26, align 1
  %632 = lshr i32 %616, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %29, align 1
  %634 = lshr i32 %615, 31
  %635 = xor i32 %632, %634
  %636 = add nuw nsw i32 %635, %632
  %637 = icmp eq i32 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %30, align 1
  %639 = add i64 %128, 14
  store i64 %639, i64* %3, align 8
  store i32 %616, i32* %614, align 4
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, -306
  store i64 %641, i64* %3, align 8
  br label %block_.L_47be10

block_.L_47bf47:                                  ; preds = %block_.L_47be10
  %642 = add i64 %65, 328
  br label %block_.L_47c08f

block_.L_47bf53:                                  ; preds = %block_.L_47bf53.preheader, %block_.L_47c077
  %643 = phi i64 [ %1248, %block_.L_47c077 ], [ %.pre34, %block_.L_47bf53.preheader ]
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -12
  %646 = add i64 %643, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = add i32 %648, -13
  %650 = icmp ult i32 %648, 13
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %16, align 1
  %652 = and i32 %649, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %22, align 1
  %657 = xor i32 %649, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %23, align 1
  %661 = icmp eq i32 %649, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %26, align 1
  %663 = lshr i32 %649, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %29, align 1
  %665 = lshr i32 %648, 31
  %666 = xor i32 %663, %665
  %667 = add nuw nsw i32 %666, %665
  %668 = icmp eq i32 %667, 2
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %30, align 1
  %670 = icmp ne i8 %664, 0
  %671 = xor i1 %670, %668
  %.v49 = select i1 %671, i64 10, i64 311
  %672 = add i64 %643, %.v49
  store i64 %672, i64* %3, align 8
  br i1 %671, label %block_47bf5d, label %block_.L_47c08a

block_47bf5d:                                     ; preds = %block_.L_47bf53
  %673 = add i64 %672, 3
  store i64 %673, i64* %3, align 8
  %674 = load i32, i32* %647, align 4
  %675 = add i32 %674, 16
  %676 = lshr i32 %675, 31
  %677 = add i32 %674, 6
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RAX.i372, align 8
  %679 = icmp ult i32 %675, 10
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %16, align 1
  %681 = and i32 %677, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %22, align 1
  %686 = xor i32 %677, %675
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %23, align 1
  %690 = icmp eq i32 %677, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %26, align 1
  %692 = lshr i32 %677, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %29, align 1
  %694 = xor i32 %692, %676
  %695 = add nuw nsw i32 %694, %676
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %30, align 1
  %698 = add i64 %644, -20
  %699 = add i64 %672, 12
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  store i32 %677, i32* %700, align 4
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -8
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 7
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i32*
  store i32 0, i32* %705, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_47bf70

block_.L_47bf70:                                  ; preds = %block_.L_47c064, %block_47bf5d
  %706 = phi i64 [ %1218, %block_.L_47c064 ], [ %.pre35, %block_47bf5d ]
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -8
  %709 = add i64 %706, 4
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = add i32 %711, -8
  %713 = icmp ult i32 %711, 8
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %16, align 1
  %715 = and i32 %712, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %22, align 1
  %720 = xor i32 %712, %711
  %721 = lshr i32 %720, 4
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  store i8 %723, i8* %23, align 1
  %724 = icmp eq i32 %712, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %26, align 1
  %726 = lshr i32 %712, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %29, align 1
  %728 = lshr i32 %711, 31
  %729 = xor i32 %726, %728
  %730 = add nuw nsw i32 %729, %728
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %30, align 1
  %733 = icmp ne i8 %727, 0
  %734 = xor i1 %733, %731
  %.v42 = select i1 %734, i64 10, i64 263
  %735 = add i64 %706, %.v42
  store i64 %735, i64* %3, align 8
  br i1 %734, label %block_47bf7a, label %block_.L_47c077

block_47bf7a:                                     ; preds = %block_.L_47bf70
  %736 = add i64 %707, -4
  %737 = add i64 %735, 7
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  store i32 0, i32* %738, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_47bf81

block_.L_47bf81:                                  ; preds = %routine_shll__cl___edx.exit, %block_47bf7a
  %739 = phi i64 [ %1188, %routine_shll__cl___edx.exit ], [ %.pre36, %block_47bf7a ]
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -4
  %742 = add i64 %739, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, -8
  %746 = icmp ult i32 %744, 8
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %16, align 1
  %748 = and i32 %745, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %22, align 1
  %753 = xor i32 %745, %744
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %23, align 1
  %757 = icmp eq i32 %745, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %26, align 1
  %759 = lshr i32 %745, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %29, align 1
  %761 = lshr i32 %744, 31
  %762 = xor i32 %759, %761
  %763 = add nuw nsw i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %30, align 1
  %766 = icmp ne i8 %760, 0
  %767 = xor i1 %766, %764
  %.v43 = select i1 %767, i64 10, i64 227
  %768 = add i64 %739, %.v43
  store i64 %768, i64* %3, align 8
  br i1 %767, label %block_47bf8b, label %block_.L_47c064

block_47bf8b:                                     ; preds = %block_.L_47bf81
  %769 = add i64 %768, 3
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %743, align 4
  %771 = shl i32 %770, 3
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RAX.i372, align 8
  %773 = lshr i32 %770, 29
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  store i8 %775, i8* %16, align 1
  %776 = and i32 %771, 248
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %781 = icmp eq i32 %771, 0
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %26, align 1
  %783 = lshr i32 %770, 28
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %786 = add i64 %740, -8
  %787 = add i64 %768, 9
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = add i32 %789, %771
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i372, align 8
  %792 = icmp ult i32 %790, %771
  %793 = icmp ult i32 %790, %789
  %794 = or i1 %792, %793
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %16, align 1
  %796 = and i32 %790, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %22, align 1
  %801 = xor i32 %789, %771
  %802 = xor i32 %801, %790
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %23, align 1
  %806 = icmp eq i32 %790, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %26, align 1
  %808 = lshr i32 %790, 31
  %809 = trunc i32 %808 to i8
  store i8 %809, i8* %29, align 1
  %810 = lshr i32 %770, 28
  %811 = and i32 %810, 1
  %812 = lshr i32 %789, 31
  %813 = xor i32 %808, %811
  %814 = xor i32 %808, %812
  %815 = add nuw nsw i32 %813, %814
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = add i64 %740, -16
  %819 = add i64 %768, 12
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  store i32 %790, i32* %820, align 4
  %821 = load i64, i64* %3, align 8
  %822 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %822, i64* %RCX.i145, align 8
  %823 = add i64 %822, 24
  %824 = add i64 %821, 12
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = add i32 %826, -2
  %828 = icmp ult i32 %826, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %16, align 1
  %830 = and i32 %827, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %22, align 1
  %835 = xor i32 %827, %826
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %23, align 1
  %839 = icmp eq i32 %827, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %26, align 1
  %841 = lshr i32 %827, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %29, align 1
  %843 = lshr i32 %826, 31
  %844 = xor i32 %841, %843
  %845 = add nuw nsw i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %30, align 1
  %.v50 = select i1 %839, i64 18, i64 79
  %848 = add i64 %821, %.v50
  store i64 7156720, i64* %RAX.i372, align 8
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -16
  %851 = add i64 %848, 14
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = sext i32 %853 to i64
  store i64 %854, i64* %RCX.i145, align 8
  %855 = shl nsw i64 %854, 1
  br i1 %839, label %block_47bfa9, label %block_.L_47bfe6

block_47bfa9:                                     ; preds = %block_47bf8b
  %856 = add nsw i64 %855, 4953360
  %857 = add i64 %848, 22
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i16*
  %859 = load i16, i16* %858, align 2
  %860 = sext i16 %859 to i64
  %861 = and i64 %860, 4294967295
  store i64 %861, i64* %RDX.i96, align 8
  %862 = add i64 %849, -20
  %863 = add i64 %848, 25
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RCX.i145, align 8
  %867 = add i64 %848, 27
  store i64 %867, i64* %3, align 8
  %868 = trunc i32 %865 to i5
  switch i5 %868, label %872 [
    i5 0, label %routine_shll__cl___edx.exit129
    i5 1, label %869
  ]

; <label>:869:                                    ; preds = %block_47bfa9
  %870 = sext i16 %859 to i32
  %871 = icmp slt i16 %859, 0
  br label %880

; <label>:872:                                    ; preds = %block_47bfa9
  %873 = and i32 %865, 31
  %874 = zext i32 %873 to i64
  %875 = add nuw nsw i64 %874, 4294967295
  %876 = and i64 %875, 4294967295
  %877 = shl i64 %861, %876
  %878 = trunc i64 %877 to i32
  %879 = icmp slt i32 %878, 0
  br label %880

; <label>:880:                                    ; preds = %872, %869
  %881 = phi i1 [ %871, %869 ], [ %879, %872 ]
  %.in44 = phi i32 [ %870, %869 ], [ %878, %872 ]
  %882 = shl i32 %.in44, 1
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RDX.i96, align 8
  %884 = zext i1 %881 to i8
  store i8 %884, i8* %16, align 1
  %885 = and i32 %882, 254
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %890 = icmp eq i32 %882, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %26, align 1
  %892 = lshr i32 %.in44, 30
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit129

routine_shll__cl___edx.exit129:                   ; preds = %880, %block_47bfa9
  %895 = add i64 %849, -12
  %896 = add i64 %848, 31
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = sext i32 %898 to i64
  %900 = shl nsw i64 %899, 8
  store i64 %900, i64* %RSI.i85, align 8
  %901 = add nsw i64 %900, 7156720
  store i64 %901, i64* %RAX.i372, align 8
  %902 = icmp ugt i64 %900, -7156721
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %904 = lshr i64 %901, 63
  %905 = trunc i64 %904 to i8
  store i8 %905, i8* %29, align 1
  %906 = lshr i64 %899, 55
  %907 = and i64 %906, 1
  %908 = xor i64 %904, %907
  %909 = add nuw nsw i64 %904, %908
  %910 = icmp eq i64 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %30, align 1
  %912 = add i64 %849, -8
  %913 = add i64 %848, 42
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %915 to i64
  %917 = shl nsw i64 %916, 5
  store i64 %917, i64* %RSI.i85, align 8
  %918 = add nsw i64 %917, %901
  store i64 %918, i64* %RAX.i372, align 8
  %919 = icmp ult i64 %918, %901
  %920 = icmp ult i64 %918, %917
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %16, align 1
  %923 = trunc i64 %918 to i32
  %924 = and i32 %923, 240
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %22, align 1
  %929 = xor i64 %901, %918
  %930 = lshr exact i64 %929, 4
  %931 = trunc i64 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %933 = lshr i64 %918, 63
  %934 = trunc i64 %933 to i8
  store i8 %934, i8* %29, align 1
  %935 = lshr i64 %916, 58
  %936 = and i64 %935, 1
  %937 = xor i64 %933, %904
  %938 = xor i64 %933, %936
  %939 = add nuw nsw i64 %937, %938
  %940 = icmp eq i64 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %30, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -4
  %944 = add i64 %848, 53
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RSI.i85, align 8
  %948 = shl nsw i64 %947, 2
  %949 = add nsw i64 %948, %918
  %950 = load i32, i32* %EDX.i65, align 4
  %951 = add i64 %848, 56
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %949 to i32*
  store i32 %950, i32* %952, align 4
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 61
  store i64 %954, i64* %3, align 8
  br label %block_.L_47c01e

block_.L_47bfe6:                                  ; preds = %block_47bf8b
  %955 = add nsw i64 %855, 4953488
  %956 = add i64 %848, 22
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i16*
  %958 = load i16, i16* %957, align 2
  %959 = sext i16 %958 to i64
  %960 = and i64 %959, 4294967295
  store i64 %960, i64* %RDX.i96, align 8
  %961 = add i64 %849, -20
  %962 = add i64 %848, 25
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RCX.i145, align 8
  %966 = add i64 %848, 27
  store i64 %966, i64* %3, align 8
  %967 = trunc i32 %964 to i5
  switch i5 %967, label %971 [
    i5 0, label %routine_shll__cl___edx.exit90
    i5 1, label %968
  ]

; <label>:968:                                    ; preds = %block_.L_47bfe6
  %969 = sext i16 %958 to i32
  %970 = icmp slt i16 %958, 0
  br label %979

; <label>:971:                                    ; preds = %block_.L_47bfe6
  %972 = and i32 %964, 31
  %973 = zext i32 %972 to i64
  %974 = add nuw nsw i64 %973, 4294967295
  %975 = and i64 %974, 4294967295
  %976 = shl i64 %960, %975
  %977 = trunc i64 %976 to i32
  %978 = icmp slt i32 %977, 0
  br label %979

; <label>:979:                                    ; preds = %971, %968
  %980 = phi i1 [ %970, %968 ], [ %978, %971 ]
  %.in46 = phi i32 [ %969, %968 ], [ %977, %971 ]
  %981 = shl i32 %.in46, 1
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RDX.i96, align 8
  %983 = zext i1 %980 to i8
  store i8 %983, i8* %16, align 1
  %984 = and i32 %981, 254
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %989 = icmp eq i32 %981, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %26, align 1
  %991 = lshr i32 %.in46, 30
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit90

routine_shll__cl___edx.exit90:                    ; preds = %979, %block_.L_47bfe6
  %994 = add i64 %849, -12
  %995 = add i64 %848, 31
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  %999 = shl nsw i64 %998, 8
  store i64 %999, i64* %RSI.i85, align 8
  %1000 = add nsw i64 %999, 7156720
  store i64 %1000, i64* %RAX.i372, align 8
  %1001 = icmp ugt i64 %999, -7156721
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %1003 = lshr i64 %1000, 63
  %1004 = trunc i64 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i64 %998, 55
  %1006 = and i64 %1005, 1
  %1007 = xor i64 %1003, %1006
  %1008 = add nuw nsw i64 %1003, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %30, align 1
  %1011 = add i64 %849, -8
  %1012 = add i64 %848, 42
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = shl nsw i64 %1015, 5
  store i64 %1016, i64* %RSI.i85, align 8
  %1017 = add nsw i64 %1016, %1000
  store i64 %1017, i64* %RAX.i372, align 8
  %1018 = icmp ult i64 %1017, %1000
  %1019 = icmp ult i64 %1017, %1016
  %1020 = or i1 %1018, %1019
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %16, align 1
  %1022 = trunc i64 %1017 to i32
  %1023 = and i32 %1022, 240
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %22, align 1
  %1028 = xor i64 %1000, %1017
  %1029 = lshr exact i64 %1028, 4
  %1030 = trunc i64 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %1032 = lshr i64 %1017, 63
  %1033 = trunc i64 %1032 to i8
  store i8 %1033, i8* %29, align 1
  %1034 = lshr i64 %1015, 58
  %1035 = and i64 %1034, 1
  %1036 = xor i64 %1032, %1003
  %1037 = xor i64 %1032, %1035
  %1038 = add nuw nsw i64 %1036, %1037
  %1039 = icmp eq i64 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %30, align 1
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -4
  %1043 = add i64 %848, 53
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = sext i32 %1045 to i64
  store i64 %1046, i64* %RSI.i85, align 8
  %1047 = shl nsw i64 %1046, 2
  %1048 = add nsw i64 %1047, %1017
  %1049 = load i32, i32* %EDX.i65, align 4
  %1050 = add i64 %848, 56
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i32*
  store i32 %1049, i32* %1051, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_47c01e

block_.L_47c01e:                                  ; preds = %routine_shll__cl___edx.exit90, %routine_shll__cl___edx.exit129
  %1052 = phi i64 [ %.pre37, %routine_shll__cl___edx.exit90 ], [ %954, %routine_shll__cl___edx.exit129 ]
  store i64 7474576, i64* %RAX.i372, align 8
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -16
  %1055 = add i64 %1052, 14
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RCX.i145, align 8
  %1059 = shl nsw i64 %1058, 1
  %1060 = add nsw i64 %1059, 4953616
  %1061 = add i64 %1052, 22
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i16*
  %1063 = load i16, i16* %1062, align 2
  %1064 = sext i16 %1063 to i64
  %1065 = and i64 %1064, 4294967295
  store i64 %1065, i64* %RDX.i96, align 8
  %1066 = add i64 %1053, -20
  %1067 = add i64 %1052, 25
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RCX.i145, align 8
  %1071 = add i64 %1052, 27
  store i64 %1071, i64* %3, align 8
  %1072 = trunc i32 %1069 to i5
  switch i5 %1072, label %1076 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %1073
  ]

; <label>:1073:                                   ; preds = %block_.L_47c01e
  %1074 = sext i16 %1063 to i32
  %1075 = icmp slt i16 %1063, 0
  br label %1084

; <label>:1076:                                   ; preds = %block_.L_47c01e
  %1077 = and i32 %1069, 31
  %1078 = zext i32 %1077 to i64
  %1079 = add nuw nsw i64 %1078, 4294967295
  %1080 = and i64 %1079, 4294967295
  %1081 = shl i64 %1065, %1080
  %1082 = trunc i64 %1081 to i32
  %1083 = icmp slt i32 %1082, 0
  br label %1084

; <label>:1084:                                   ; preds = %1076, %1073
  %1085 = phi i1 [ %1075, %1073 ], [ %1083, %1076 ]
  %.in45 = phi i32 [ %1074, %1073 ], [ %1082, %1076 ]
  %1086 = shl i32 %.in45, 1
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RDX.i96, align 8
  %1088 = zext i1 %1085 to i8
  store i8 %1088, i8* %16, align 1
  %1089 = and i32 %1086, 254
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1094 = icmp eq i32 %1086, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %26, align 1
  %1096 = lshr i32 %.in45, 30
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %1084, %block_.L_47c01e
  %1099 = add i64 %1053, -12
  %1100 = add i64 %1052, 31
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = shl nsw i64 %1103, 8
  store i64 %1104, i64* %RSI.i85, align 8
  %1105 = add nsw i64 %1104, 7474576
  store i64 %1105, i64* %RAX.i372, align 8
  %1106 = icmp ugt i64 %1104, -7474577
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %1108 = lshr i64 %1105, 63
  %1109 = trunc i64 %1108 to i8
  store i8 %1109, i8* %29, align 1
  %1110 = lshr i64 %1103, 55
  %1111 = and i64 %1110, 1
  %1112 = xor i64 %1108, %1111
  %1113 = add nuw nsw i64 %1108, %1112
  %1114 = icmp eq i64 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %30, align 1
  %1116 = add i64 %1053, -8
  %1117 = add i64 %1052, 42
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = shl nsw i64 %1120, 5
  store i64 %1121, i64* %RSI.i85, align 8
  %1122 = add nsw i64 %1121, %1105
  store i64 %1122, i64* %RAX.i372, align 8
  %1123 = icmp ult i64 %1122, %1105
  %1124 = icmp ult i64 %1122, %1121
  %1125 = or i1 %1123, %1124
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %16, align 1
  %1127 = trunc i64 %1122 to i32
  %1128 = and i32 %1127, 240
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %22, align 1
  %1133 = xor i64 %1105, %1122
  %1134 = lshr exact i64 %1133, 4
  %1135 = trunc i64 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %23, align 1
  store i8 0, i8* %26, align 1
  %1137 = lshr i64 %1122, 63
  %1138 = trunc i64 %1137 to i8
  store i8 %1138, i8* %29, align 1
  %1139 = lshr i64 %1120, 58
  %1140 = and i64 %1139, 1
  %1141 = xor i64 %1137, %1108
  %1142 = xor i64 %1137, %1140
  %1143 = add nuw nsw i64 %1141, %1142
  %1144 = icmp eq i64 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %30, align 1
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -4
  %1148 = add i64 %1052, 53
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RSI.i85, align 8
  %1152 = shl nsw i64 %1151, 2
  %1153 = add nsw i64 %1152, %1122
  %1154 = load i32, i32* %EDX.i65, align 4
  %1155 = add i64 %1052, 56
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1153 to i32*
  store i32 %1154, i32* %1156, align 4
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -4
  %1159 = load i64, i64* %3, align 8
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1158 to i32*
  %1162 = load i32, i32* %1161, align 4
  %1163 = add i32 %1162, 1
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i372, align 8
  %1165 = icmp eq i32 %1162, -1
  %1166 = icmp eq i32 %1163, 0
  %1167 = or i1 %1165, %1166
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %16, align 1
  %1169 = and i32 %1163, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %22, align 1
  %1174 = xor i32 %1163, %1162
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %23, align 1
  %1178 = zext i1 %1166 to i8
  store i8 %1178, i8* %26, align 1
  %1179 = lshr i32 %1163, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %29, align 1
  %1181 = lshr i32 %1162, 31
  %1182 = xor i32 %1179, %1181
  %1183 = add nuw nsw i32 %1182, %1179
  %1184 = icmp eq i32 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %30, align 1
  %1186 = add i64 %1159, 9
  store i64 %1186, i64* %3, align 8
  store i32 %1163, i32* %1161, align 4
  %1187 = load i64, i64* %3, align 8
  %1188 = add i64 %1187, -222
  store i64 %1188, i64* %3, align 8
  br label %block_.L_47bf81

block_.L_47c064:                                  ; preds = %block_.L_47bf81
  %1189 = add i64 %740, -8
  %1190 = add i64 %768, 8
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = add i32 %1192, 1
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX.i372, align 8
  %1195 = icmp eq i32 %1192, -1
  %1196 = icmp eq i32 %1193, 0
  %1197 = or i1 %1195, %1196
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %16, align 1
  %1199 = and i32 %1193, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %22, align 1
  %1204 = xor i32 %1193, %1192
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %23, align 1
  %1208 = zext i1 %1196 to i8
  store i8 %1208, i8* %26, align 1
  %1209 = lshr i32 %1193, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %29, align 1
  %1211 = lshr i32 %1192, 31
  %1212 = xor i32 %1209, %1211
  %1213 = add nuw nsw i32 %1212, %1209
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %30, align 1
  %1216 = add i64 %768, 14
  store i64 %1216, i64* %3, align 8
  store i32 %1193, i32* %1191, align 4
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, -258
  store i64 %1218, i64* %3, align 8
  br label %block_.L_47bf70

block_.L_47c077:                                  ; preds = %block_.L_47bf70
  %1219 = add i64 %707, -12
  %1220 = add i64 %735, 8
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, 1
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX.i372, align 8
  %1225 = icmp eq i32 %1222, -1
  %1226 = icmp eq i32 %1223, 0
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %16, align 1
  %1229 = and i32 %1223, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %22, align 1
  %1234 = xor i32 %1223, %1222
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %23, align 1
  %1238 = zext i1 %1226 to i8
  store i8 %1238, i8* %26, align 1
  %1239 = lshr i32 %1223, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %29, align 1
  %1241 = lshr i32 %1222, 31
  %1242 = xor i32 %1239, %1241
  %1243 = add nuw nsw i32 %1242, %1239
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %30, align 1
  %1246 = add i64 %735, 14
  store i64 %1246, i64* %3, align 8
  store i32 %1223, i32* %1221, align 4
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, -306
  store i64 %1248, i64* %3, align 8
  br label %block_.L_47bf53

block_.L_47c08a:                                  ; preds = %block_.L_47bf53
  %1249 = add i64 %672, 5
  store i64 %1249, i64* %3, align 8
  br label %block_.L_47c08f

block_.L_47c08f:                                  ; preds = %block_.L_47c08a, %block_.L_47bf47
  %storemerge = phi i64 [ %642, %block_.L_47bf47 ], [ %1249, %block_.L_47c08a ]
  %1250 = add i64 %storemerge, 1
  store i64 %1250, i64* %3, align 8
  %1251 = load i64, i64* %6, align 8
  %1252 = add i64 %1251, 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RBP.i, align 8
  store i64 %1252, i64* %6, align 8
  %1255 = add i64 %storemerge, 2
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1252 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %3, align 8
  %1258 = add i64 %1251, 16
  store i64 %1258, i64* %6, align 8
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xe00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3584
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
define %struct.Memory* @routine_je_.L_47bf4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47bf47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -17
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 10
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
define %struct.Memory* @routine_jge_.L_47bf34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jge_.L_47bf21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_47bea3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d33f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7156720, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70d4d0___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7394512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 56
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
  %17 = lshr i64 %3, 55
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_47bedb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70d550___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7394640
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x720d90___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7474576, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70d5d0___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7394768
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47be3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bf26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47be2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bf39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_47be10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c08f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47c08a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47c077(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47c064(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47bfe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x4b9510___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953360
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c01e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b9590___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953488
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b9610___rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953616
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bf81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bf70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47c07c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bf53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
