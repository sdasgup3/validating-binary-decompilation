; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4518_type = type <{ [8 x i8] }>
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
@G_0x6d4518 = local_unnamed_addr global %G_0x6d4518_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @copy_motion_vectors_MB(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -12
  %12 = add i64 %10, 10
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX.i1076 = bitcast %union.anon* %20 to i16*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4311db

block_.L_4311db:                                  ; preds = %block_.L_431947, %entry
  %21 = phi i64 [ %1965, %block_.L_431947 ], [ %.pre, %entry ]
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -4
  %24 = add i64 %21, 4
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %23 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, -4
  %28 = icmp ult i32 %26, 4
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %14, align 1
  %30 = and i32 %27, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %15, align 1
  %35 = xor i32 %27, %26
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  store i8 %38, i8* %16, align 1
  %39 = icmp eq i32 %27, 0
  %40 = zext i1 %39 to i8
  store i8 %40, i8* %17, align 1
  %41 = lshr i32 %27, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %18, align 1
  %43 = lshr i32 %26, 31
  %44 = xor i32 %41, %43
  %45 = add nuw nsw i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %19, align 1
  %48 = icmp ne i8 %42, 0
  %49 = xor i1 %48, %46
  %.v19 = select i1 %49, i64 10, i64 1919
  %50 = add i64 %21, %.v19
  store i64 %50, i64* %3, align 8
  br i1 %49, label %block_4311e5, label %block_.L_43195a

block_4311e5:                                     ; preds = %block_.L_4311db
  %51 = add i64 %22, -8
  %52 = add i64 %50, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i32*
  store i32 0, i32* %53, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_4311ec

block_.L_4311ec:                                  ; preds = %block_.L_431934, %block_4311e5
  %54 = phi i64 [ %1935, %block_.L_431934 ], [ %.pre13, %block_4311e5 ]
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -8
  %57 = add i64 %54, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, -4
  %61 = icmp ult i32 %59, 4
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %14, align 1
  %63 = and i32 %60, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63)
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %15, align 1
  %68 = xor i32 %60, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %16, align 1
  %72 = icmp eq i32 %60, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %17, align 1
  %74 = lshr i32 %60, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %18, align 1
  %76 = lshr i32 %59, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %19, align 1
  %81 = icmp ne i8 %75, 0
  %82 = xor i1 %81, %79
  %.v = select i1 %82, i64 10, i64 1883
  %83 = add i64 %54, %.v
  store i64 %83, i64* %3, align 8
  br i1 %82, label %block_4311f6, label %block_.L_431947

block_4311f6:                                     ; preds = %block_.L_4311ec
  %84 = add i64 %55, -12
  %85 = add i64 %83, 7
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  store i32 0, i32* %86, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_4311fd

block_.L_4311fd:                                  ; preds = %block_.L_431921, %block_4311f6
  %87 = phi i64 [ %1905, %block_.L_431921 ], [ %.pre14, %block_4311f6 ]
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -12
  %90 = add i64 %87, 3
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %RAX.i1120, align 8
  %94 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %94, i64* %RCX.i1118, align 8
  %95 = add i64 %94, 36
  %96 = add i64 %87, 14
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %92, %98
  %100 = icmp ult i32 %92, %98
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %14, align 1
  %102 = and i32 %99, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %15, align 1
  %107 = xor i32 %98, %92
  %108 = xor i32 %107, %99
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %16, align 1
  %112 = icmp eq i32 %99, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %17, align 1
  %114 = lshr i32 %99, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %18, align 1
  %116 = lshr i32 %92, 31
  %117 = lshr i32 %98, 31
  %118 = xor i32 %117, %116
  %119 = xor i32 %114, %116
  %120 = add nuw nsw i32 %119, %118
  %121 = icmp eq i32 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %19, align 1
  %123 = icmp ne i8 %115, 0
  %124 = xor i1 %123, %121
  %.v17 = select i1 %124, i64 20, i64 1847
  %125 = add i64 %87, %.v17
  store i64 %125, i64* %3, align 8
  br i1 %124, label %block_431211, label %block_.L_431934

block_431211:                                     ; preds = %block_.L_4311fd
  %126 = add i64 %88, -16
  %127 = add i64 %125, 7
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  store i32 0, i32* %128, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_431218

block_.L_431218:                                  ; preds = %block_.L_431763, %block_431211
  %129 = phi i64 [ %1875, %block_.L_431763 ], [ %.pre15, %block_431211 ]
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -16
  %132 = add i64 %129, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = add i32 %134, -9
  %136 = icmp ult i32 %134, 9
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %14, align 1
  %138 = and i32 %135, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %15, align 1
  %143 = xor i32 %135, %134
  %144 = lshr i32 %143, 4
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %16, align 1
  %147 = icmp eq i32 %135, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %17, align 1
  %149 = lshr i32 %135, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %18, align 1
  %151 = lshr i32 %134, 31
  %152 = xor i32 %149, %151
  %153 = add nuw nsw i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %19, align 1
  %156 = icmp ne i8 %150, 0
  %157 = xor i1 %156, %154
  %.v18 = select i1 %157, i64 10, i64 1801
  %158 = add i64 %129, %.v18
  store i64 %158, i64* %3, align 8
  br i1 %157, label %block_431222, label %block_.L_431921

block_431222:                                     ; preds = %block_.L_431218
  %159 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %159, i64* %RAX.i1120, align 8
  %160 = add i64 %159, 3240
  %161 = add i64 %158, 15
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RAX.i1120, align 8
  %164 = add i64 %130, -4
  %165 = add i64 %158, 19
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i1118, align 8
  %169 = shl nsw i64 %168, 3
  %170 = add i64 %169, %163
  %171 = add i64 %158, 23
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RAX.i1120, align 8
  %174 = add i64 %130, -8
  %175 = add i64 %158, 27
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RCX.i1118, align 8
  %179 = shl nsw i64 %178, 3
  %180 = add i64 %179, %173
  %181 = add i64 %158, 31
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i1120, align 8
  %184 = add i64 %158, 34
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i1120, align 8
  %187 = add i64 %130, -12
  %188 = add i64 %158, 38
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %RCX.i1118, align 8
  %192 = shl nsw i64 %191, 3
  %193 = add i64 %192, %186
  %194 = add i64 %158, 42
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX.i1120, align 8
  %197 = add i64 %158, 46
  store i64 %197, i64* %3, align 8
  %198 = load i32, i32* %133, align 4
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %RCX.i1118, align 8
  %200 = shl nsw i64 %199, 3
  %201 = add i64 %200, %196
  %202 = add i64 %158, 50
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX.i1120, align 8
  %205 = add i64 %158, 53
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i16*
  %207 = load i16, i16* %206, align 2
  store i16 %207, i16* %DX.i1076, align 2
  %208 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %208, i64* %RAX.i1120, align 8
  %209 = add i64 %208, 71928
  %210 = add i64 %158, 68
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RAX.i1120, align 8
  %213 = add i64 %158, 72
  store i64 %213, i64* %3, align 8
  %214 = load i32, i32* %166, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %RCX.i1118, align 8
  %216 = shl nsw i64 %215, 3
  %217 = add i64 %216, %212
  %218 = add i64 %158, 76
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RAX.i1120, align 8
  %221 = add i64 %158, 80
  store i64 %221, i64* %3, align 8
  %222 = load i32, i32* %176, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %RCX.i1118, align 8
  %224 = shl nsw i64 %223, 3
  %225 = add i64 %224, %220
  %226 = add i64 %158, 84
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX.i1120, align 8
  %229 = add i64 %158, 87
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX.i1120, align 8
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -12
  %234 = add i64 %158, 91
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RCX.i1118, align 8
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %231
  %240 = add i64 %158, 95
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RAX.i1120, align 8
  %243 = add i64 %232, -16
  %244 = add i64 %158, 99
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RCX.i1118, align 8
  %248 = shl nsw i64 %247, 3
  %249 = add i64 %248, %242
  %250 = add i64 %158, 103
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i16**
  %252 = load i16*, i16** %251, align 8
  %253 = add i64 %158, 106
  store i64 %253, i64* %3, align 8
  store i16 %207, i16* %252, align 2
  %254 = load i64, i64* %3, align 8
  %255 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %255, i64* %RAX.i1120, align 8
  %256 = add i64 %255, 3240
  %257 = add i64 %254, 15
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RAX.i1120, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -4
  %262 = add i64 %254, 19
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  store i64 %265, i64* %RCX.i1118, align 8
  %266 = shl nsw i64 %265, 3
  %267 = add i64 %266, %259
  %268 = add i64 %254, 23
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RAX.i1120, align 8
  %271 = add i64 %260, -8
  %272 = add i64 %254, 27
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RCX.i1118, align 8
  %276 = shl nsw i64 %275, 3
  %277 = add i64 %276, %270
  %278 = add i64 %254, 31
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i1120, align 8
  %281 = add i64 %254, 34
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX.i1120, align 8
  %284 = add i64 %260, -12
  %285 = add i64 %254, 38
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %RCX.i1118, align 8
  %289 = shl nsw i64 %288, 3
  %290 = add i64 %289, %283
  %291 = add i64 %254, 42
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RAX.i1120, align 8
  %294 = add i64 %260, -16
  %295 = add i64 %254, 46
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %RCX.i1118, align 8
  %299 = shl nsw i64 %298, 3
  %300 = add i64 %299, %293
  %301 = add i64 %254, 50
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %RAX.i1120, align 8
  %304 = add i64 %303, 2
  %305 = add i64 %254, 54
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i16*
  %307 = load i16, i16* %306, align 2
  store i16 %307, i16* %DX.i1076, align 2
  %308 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %308, i64* %RAX.i1120, align 8
  %309 = add i64 %308, 71928
  %310 = add i64 %254, 69
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RAX.i1120, align 8
  %313 = add i64 %254, 73
  store i64 %313, i64* %3, align 8
  %314 = load i32, i32* %263, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RCX.i1118, align 8
  %316 = shl nsw i64 %315, 3
  %317 = add i64 %316, %312
  %318 = add i64 %254, 77
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i64*
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %RAX.i1120, align 8
  %321 = add i64 %254, 81
  store i64 %321, i64* %3, align 8
  %322 = load i32, i32* %273, align 4
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %RCX.i1118, align 8
  %324 = shl nsw i64 %323, 3
  %325 = add i64 %324, %320
  %326 = add i64 %254, 85
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX.i1120, align 8
  %329 = add i64 %254, 88
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RAX.i1120, align 8
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -12
  %334 = add i64 %254, 92
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %RCX.i1118, align 8
  %338 = shl nsw i64 %337, 3
  %339 = add i64 %338, %331
  %340 = add i64 %254, 96
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RAX.i1120, align 8
  %343 = add i64 %332, -16
  %344 = add i64 %254, 100
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RCX.i1118, align 8
  %348 = shl nsw i64 %347, 3
  %349 = add i64 %348, %342
  %350 = add i64 %254, 104
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  %353 = add i64 %352, 2
  %354 = add i64 %254, 108
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i16*
  store i16 %307, i16* %355, align 2
  %356 = load i64, i64* %3, align 8
  %357 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %357, i64* %RAX.i1120, align 8
  %358 = add i64 %357, 3240
  %359 = add i64 %356, 15
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX.i1120, align 8
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -4
  %364 = add i64 %356, 19
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %RCX.i1118, align 8
  %368 = shl nsw i64 %367, 3
  %369 = add i64 %368, %361
  %370 = add i64 %356, 23
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RAX.i1120, align 8
  %373 = add i64 %362, -8
  %374 = add i64 %356, 27
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %RCX.i1118, align 8
  %378 = shl nsw i64 %377, 3
  %379 = add i64 %378, %372
  %380 = add i64 %356, 31
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RAX.i1120, align 8
  %383 = add i64 %382, 8
  %384 = add i64 %356, 35
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %RAX.i1120, align 8
  %387 = add i64 %362, -12
  %388 = add i64 %356, 39
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %RCX.i1118, align 8
  %392 = shl nsw i64 %391, 3
  %393 = add i64 %392, %386
  %394 = add i64 %356, 43
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i1120, align 8
  %397 = add i64 %362, -16
  %398 = add i64 %356, 47
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX.i1118, align 8
  %402 = shl nsw i64 %401, 3
  %403 = add i64 %402, %396
  %404 = add i64 %356, 51
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i1120, align 8
  %407 = add i64 %356, 54
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i16*
  %409 = load i16, i16* %408, align 2
  store i16 %409, i16* %DX.i1076, align 2
  %410 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %410, i64* %RAX.i1120, align 8
  %411 = add i64 %410, 71928
  %412 = add i64 %356, 69
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RAX.i1120, align 8
  %415 = add i64 %356, 73
  store i64 %415, i64* %3, align 8
  %416 = load i32, i32* %365, align 4
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %RCX.i1118, align 8
  %418 = shl nsw i64 %417, 3
  %419 = add i64 %418, %414
  %420 = add i64 %356, 77
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i1120, align 8
  %423 = add i64 %356, 81
  store i64 %423, i64* %3, align 8
  %424 = load i32, i32* %375, align 4
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RCX.i1118, align 8
  %426 = shl nsw i64 %425, 3
  %427 = add i64 %426, %422
  %428 = add i64 %356, 85
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX.i1120, align 8
  %431 = add i64 %430, 8
  %432 = add i64 %356, 89
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i64*
  %434 = load i64, i64* %433, align 8
  store i64 %434, i64* %RAX.i1120, align 8
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -12
  %437 = add i64 %356, 93
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  store i64 %440, i64* %RCX.i1118, align 8
  %441 = shl nsw i64 %440, 3
  %442 = add i64 %441, %434
  %443 = add i64 %356, 97
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX.i1120, align 8
  %446 = add i64 %435, -16
  %447 = add i64 %356, 101
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RCX.i1118, align 8
  %451 = shl nsw i64 %450, 3
  %452 = add i64 %451, %445
  %453 = add i64 %356, 105
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i16**
  %455 = load i16*, i16** %454, align 8
  %456 = add i64 %356, 108
  store i64 %456, i64* %3, align 8
  store i16 %409, i16* %455, align 2
  %457 = load i64, i64* %3, align 8
  %458 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %458, i64* %RAX.i1120, align 8
  %459 = add i64 %458, 3240
  %460 = add i64 %457, 15
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RAX.i1120, align 8
  %463 = load i64, i64* %RBP.i, align 8
  %464 = add i64 %463, -4
  %465 = add i64 %457, 19
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RCX.i1118, align 8
  %469 = shl nsw i64 %468, 3
  %470 = add i64 %469, %462
  %471 = add i64 %457, 23
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %RAX.i1120, align 8
  %474 = add i64 %463, -8
  %475 = add i64 %457, 27
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i1118, align 8
  %479 = shl nsw i64 %478, 3
  %480 = add i64 %479, %473
  %481 = add i64 %457, 31
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RAX.i1120, align 8
  %484 = add i64 %483, 8
  %485 = add i64 %457, 35
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RAX.i1120, align 8
  %488 = add i64 %463, -12
  %489 = add i64 %457, 39
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RCX.i1118, align 8
  %493 = shl nsw i64 %492, 3
  %494 = add i64 %493, %487
  %495 = add i64 %457, 43
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RAX.i1120, align 8
  %498 = add i64 %463, -16
  %499 = add i64 %457, 47
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RCX.i1118, align 8
  %503 = shl nsw i64 %502, 3
  %504 = add i64 %503, %497
  %505 = add i64 %457, 51
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RAX.i1120, align 8
  %508 = add i64 %507, 2
  %509 = add i64 %457, 55
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i16*
  %511 = load i16, i16* %510, align 2
  store i16 %511, i16* %DX.i1076, align 2
  %512 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %512, i64* %RAX.i1120, align 8
  %513 = add i64 %512, 71928
  %514 = add i64 %457, 70
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RAX.i1120, align 8
  %517 = add i64 %457, 74
  store i64 %517, i64* %3, align 8
  %518 = load i32, i32* %466, align 4
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %RCX.i1118, align 8
  %520 = shl nsw i64 %519, 3
  %521 = add i64 %520, %516
  %522 = add i64 %457, 78
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RAX.i1120, align 8
  %525 = add i64 %457, 82
  store i64 %525, i64* %3, align 8
  %526 = load i32, i32* %476, align 4
  %527 = sext i32 %526 to i64
  store i64 %527, i64* %RCX.i1118, align 8
  %528 = shl nsw i64 %527, 3
  %529 = add i64 %528, %524
  %530 = add i64 %457, 86
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i64*
  %532 = load i64, i64* %531, align 8
  store i64 %532, i64* %RAX.i1120, align 8
  %533 = add i64 %532, 8
  %534 = add i64 %457, 90
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RAX.i1120, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -12
  %539 = add i64 %457, 94
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RCX.i1118, align 8
  %543 = shl nsw i64 %542, 3
  %544 = add i64 %543, %536
  %545 = add i64 %457, 98
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RAX.i1120, align 8
  %548 = add i64 %537, -16
  %549 = add i64 %457, 102
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %RCX.i1118, align 8
  %553 = shl nsw i64 %552, 3
  %554 = add i64 %553, %547
  %555 = add i64 %457, 106
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  %558 = add i64 %557, 2
  %559 = add i64 %457, 110
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i16*
  store i16 %511, i16* %560, align 2
  %561 = load i64, i64* %3, align 8
  %562 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %562, i64* %RAX.i1120, align 8
  %563 = add i64 %562, 1256
  %564 = add i64 %561, 15
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  store i8 0, i8* %14, align 1
  %567 = and i32 %566, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %572 = icmp eq i32 %566, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %17, align 1
  %574 = lshr i32 %566, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %.v20 = select i1 %572, i64 913, i64 21
  %576 = add i64 %561, %.v20
  store i64 %576, i64* %3, align 8
  br i1 %572, label %block_.L_431763, label %block_4313e7

block_4313e7:                                     ; preds = %block_431222
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -12
  %579 = add i64 %576, 4
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, -1
  %583 = icmp eq i32 %581, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %14, align 1
  %585 = and i32 %582, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %15, align 1
  %590 = xor i32 %582, %581
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %16, align 1
  %594 = icmp eq i32 %582, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %17, align 1
  %596 = lshr i32 %582, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %18, align 1
  %598 = lshr i32 %581, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %19, align 1
  %.v21 = select i1 %594, i64 10, i64 892
  %603 = add i64 %576, %.v21
  store i64 %603, i64* %3, align 8
  br i1 %594, label %block_4313f1, label %block_.L_431763

block_4313f1:                                     ; preds = %block_4313e7
  %604 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %604, i64* %RAX.i1120, align 8
  %605 = add i64 %604, 24
  %606 = add i64 %603, 12
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = add i32 %608, -1
  %610 = icmp eq i32 %608, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %15, align 1
  %617 = xor i32 %609, %608
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %16, align 1
  %621 = icmp eq i32 %609, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %17, align 1
  %623 = lshr i32 %609, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %18, align 1
  %625 = lshr i32 %608, 31
  %626 = xor i32 %623, %625
  %627 = add nuw nsw i32 %626, %625
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %19, align 1
  %.v22 = select i1 %621, i64 18, i64 882
  %630 = add i64 %603, %.v22
  store i64 %630, i64* %3, align 8
  br i1 %621, label %block_431403, label %block_.L_431763

block_431403:                                     ; preds = %block_4313f1
  %631 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %631, i64* %RAX.i1120, align 8
  %632 = add i64 %631, 3248
  %633 = add i64 %630, 15
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RAX.i1120, align 8
  %636 = add i64 %577, -4
  %637 = add i64 %630, 19
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = sext i32 %639 to i64
  store i64 %640, i64* %RCX.i1118, align 8
  %641 = shl nsw i64 %640, 3
  %642 = add i64 %641, %635
  %643 = add i64 %630, 23
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RAX.i1120, align 8
  %646 = add i64 %577, -8
  %647 = add i64 %630, 27
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sext i32 %649 to i64
  store i64 %650, i64* %RCX.i1118, align 8
  %651 = shl nsw i64 %650, 3
  %652 = add i64 %651, %645
  %653 = add i64 %630, 31
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %RAX.i1120, align 8
  %656 = add i64 %630, 34
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %RAX.i1120, align 8
  %659 = add i64 %630, 38
  store i64 %659, i64* %3, align 8
  %660 = load i32, i32* %580, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RCX.i1118, align 8
  %662 = shl nsw i64 %661, 3
  %663 = add i64 %662, %658
  %664 = add i64 %630, 42
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RAX.i1120, align 8
  %667 = add i64 %577, -16
  %668 = add i64 %630, 46
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RCX.i1118, align 8
  %672 = shl nsw i64 %671, 3
  %673 = add i64 %672, %666
  %674 = add i64 %630, 50
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %RAX.i1120, align 8
  %677 = add i64 %630, 53
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i16*
  %679 = load i16, i16* %678, align 2
  store i16 %679, i16* %DX.i1076, align 2
  store i64 %604, i64* %RAX.i1120, align 8
  %680 = add i64 %604, 71936
  %681 = add i64 %630, 68
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RAX.i1120, align 8
  %684 = add i64 %630, 72
  store i64 %684, i64* %3, align 8
  %685 = load i32, i32* %638, align 4
  %686 = sext i32 %685 to i64
  store i64 %686, i64* %RCX.i1118, align 8
  %687 = shl nsw i64 %686, 3
  %688 = add i64 %687, %683
  %689 = add i64 %630, 76
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX.i1120, align 8
  %692 = add i64 %630, 80
  store i64 %692, i64* %3, align 8
  %693 = load i32, i32* %648, align 4
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %RCX.i1118, align 8
  %695 = shl nsw i64 %694, 3
  %696 = add i64 %695, %691
  %697 = add i64 %630, 84
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i1120, align 8
  %700 = add i64 %630, 87
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %RAX.i1120, align 8
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -12
  %705 = add i64 %630, 91
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %RCX.i1118, align 8
  %709 = shl nsw i64 %708, 3
  %710 = add i64 %709, %702
  %711 = add i64 %630, 95
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i1120, align 8
  %714 = add i64 %703, -16
  %715 = add i64 %630, 99
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  store i64 %718, i64* %RCX.i1118, align 8
  %719 = shl nsw i64 %718, 3
  %720 = add i64 %719, %713
  %721 = add i64 %630, 103
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i16**
  %723 = load i16*, i16** %722, align 8
  %724 = add i64 %630, 106
  store i64 %724, i64* %3, align 8
  store i16 %679, i16* %723, align 2
  %725 = load i64, i64* %3, align 8
  %726 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %726, i64* %RAX.i1120, align 8
  %727 = add i64 %726, 3248
  %728 = add i64 %725, 15
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RAX.i1120, align 8
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -4
  %733 = add i64 %725, 19
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RCX.i1118, align 8
  %737 = shl nsw i64 %736, 3
  %738 = add i64 %737, %730
  %739 = add i64 %725, 23
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX.i1120, align 8
  %742 = add i64 %731, -8
  %743 = add i64 %725, 27
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = sext i32 %745 to i64
  store i64 %746, i64* %RCX.i1118, align 8
  %747 = shl nsw i64 %746, 3
  %748 = add i64 %747, %741
  %749 = add i64 %725, 31
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RAX.i1120, align 8
  %752 = add i64 %725, 34
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RAX.i1120, align 8
  %755 = add i64 %731, -12
  %756 = add i64 %725, 38
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RCX.i1118, align 8
  %760 = shl nsw i64 %759, 3
  %761 = add i64 %760, %754
  %762 = add i64 %725, 42
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RAX.i1120, align 8
  %765 = add i64 %731, -16
  %766 = add i64 %725, 46
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %RCX.i1118, align 8
  %770 = shl nsw i64 %769, 3
  %771 = add i64 %770, %764
  %772 = add i64 %725, 50
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %RAX.i1120, align 8
  %775 = add i64 %774, 2
  %776 = add i64 %725, 54
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i16*
  %778 = load i16, i16* %777, align 2
  store i16 %778, i16* %DX.i1076, align 2
  %779 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %779, i64* %RAX.i1120, align 8
  %780 = add i64 %779, 71936
  %781 = add i64 %725, 69
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RAX.i1120, align 8
  %784 = add i64 %725, 73
  store i64 %784, i64* %3, align 8
  %785 = load i32, i32* %734, align 4
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RCX.i1118, align 8
  %787 = shl nsw i64 %786, 3
  %788 = add i64 %787, %783
  %789 = add i64 %725, 77
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i1120, align 8
  %792 = add i64 %725, 81
  store i64 %792, i64* %3, align 8
  %793 = load i32, i32* %744, align 4
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RCX.i1118, align 8
  %795 = shl nsw i64 %794, 3
  %796 = add i64 %795, %791
  %797 = add i64 %725, 85
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RAX.i1120, align 8
  %800 = add i64 %725, 88
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i1120, align 8
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -12
  %805 = add i64 %725, 92
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RCX.i1118, align 8
  %809 = shl nsw i64 %808, 3
  %810 = add i64 %809, %802
  %811 = add i64 %725, 96
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RAX.i1120, align 8
  %814 = add i64 %803, -16
  %815 = add i64 %725, 100
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = sext i32 %817 to i64
  store i64 %818, i64* %RCX.i1118, align 8
  %819 = shl nsw i64 %818, 3
  %820 = add i64 %819, %813
  %821 = add i64 %725, 104
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  %824 = add i64 %823, 2
  %825 = add i64 %725, 108
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i16*
  store i16 %778, i16* %826, align 2
  %827 = load i64, i64* %3, align 8
  %828 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %828, i64* %RAX.i1120, align 8
  %829 = add i64 %828, 3248
  %830 = add i64 %827, 15
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i64*
  %832 = load i64, i64* %831, align 8
  store i64 %832, i64* %RAX.i1120, align 8
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -4
  %835 = add i64 %827, 19
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  store i64 %838, i64* %RCX.i1118, align 8
  %839 = shl nsw i64 %838, 3
  %840 = add i64 %839, %832
  %841 = add i64 %827, 23
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i64*
  %843 = load i64, i64* %842, align 8
  store i64 %843, i64* %RAX.i1120, align 8
  %844 = add i64 %833, -8
  %845 = add i64 %827, 27
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RCX.i1118, align 8
  %849 = shl nsw i64 %848, 3
  %850 = add i64 %849, %843
  %851 = add i64 %827, 31
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RAX.i1120, align 8
  %854 = add i64 %853, 8
  %855 = add i64 %827, 35
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i1120, align 8
  %858 = add i64 %833, -12
  %859 = add i64 %827, 39
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i1118, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %863, %857
  %865 = add i64 %827, 43
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RAX.i1120, align 8
  %868 = add i64 %833, -16
  %869 = add i64 %827, 47
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = sext i32 %871 to i64
  store i64 %872, i64* %RCX.i1118, align 8
  %873 = shl nsw i64 %872, 3
  %874 = add i64 %873, %867
  %875 = add i64 %827, 51
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i1120, align 8
  %878 = add i64 %827, 54
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i16*
  %880 = load i16, i16* %879, align 2
  store i16 %880, i16* %DX.i1076, align 2
  %881 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %881, i64* %RAX.i1120, align 8
  %882 = add i64 %881, 71936
  %883 = add i64 %827, 69
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RAX.i1120, align 8
  %886 = add i64 %827, 73
  store i64 %886, i64* %3, align 8
  %887 = load i32, i32* %836, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RCX.i1118, align 8
  %889 = shl nsw i64 %888, 3
  %890 = add i64 %889, %885
  %891 = add i64 %827, 77
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %RAX.i1120, align 8
  %894 = add i64 %827, 81
  store i64 %894, i64* %3, align 8
  %895 = load i32, i32* %846, align 4
  %896 = sext i32 %895 to i64
  store i64 %896, i64* %RCX.i1118, align 8
  %897 = shl nsw i64 %896, 3
  %898 = add i64 %897, %893
  %899 = add i64 %827, 85
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i1120, align 8
  %902 = add i64 %901, 8
  %903 = add i64 %827, 89
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  store i64 %905, i64* %RAX.i1120, align 8
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -12
  %908 = add i64 %827, 93
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RCX.i1118, align 8
  %912 = shl nsw i64 %911, 3
  %913 = add i64 %912, %905
  %914 = add i64 %827, 97
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  store i64 %916, i64* %RAX.i1120, align 8
  %917 = add i64 %906, -16
  %918 = add i64 %827, 101
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RCX.i1118, align 8
  %922 = shl nsw i64 %921, 3
  %923 = add i64 %922, %916
  %924 = add i64 %827, 105
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i16**
  %926 = load i16*, i16** %925, align 8
  %927 = add i64 %827, 108
  store i64 %927, i64* %3, align 8
  store i16 %880, i16* %926, align 2
  %928 = load i64, i64* %3, align 8
  %929 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %929, i64* %RAX.i1120, align 8
  %930 = add i64 %929, 3248
  %931 = add i64 %928, 15
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %RAX.i1120, align 8
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -4
  %936 = add i64 %928, 19
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  store i64 %939, i64* %RCX.i1118, align 8
  %940 = shl nsw i64 %939, 3
  %941 = add i64 %940, %933
  %942 = add i64 %928, 23
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RAX.i1120, align 8
  %945 = add i64 %934, -8
  %946 = add i64 %928, 27
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = sext i32 %948 to i64
  store i64 %949, i64* %RCX.i1118, align 8
  %950 = shl nsw i64 %949, 3
  %951 = add i64 %950, %944
  %952 = add i64 %928, 31
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RAX.i1120, align 8
  %955 = add i64 %954, 8
  %956 = add i64 %928, 35
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RAX.i1120, align 8
  %959 = add i64 %934, -12
  %960 = add i64 %928, 39
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RCX.i1118, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %964, %958
  %966 = add i64 %928, 43
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RAX.i1120, align 8
  %969 = add i64 %934, -16
  %970 = add i64 %928, 47
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RCX.i1118, align 8
  %974 = shl nsw i64 %973, 3
  %975 = add i64 %974, %968
  %976 = add i64 %928, 51
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i1120, align 8
  %979 = add i64 %978, 2
  %980 = add i64 %928, 55
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i16*
  %982 = load i16, i16* %981, align 2
  store i16 %982, i16* %DX.i1076, align 2
  %983 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %983, i64* %RAX.i1120, align 8
  %984 = add i64 %983, 71936
  %985 = add i64 %928, 70
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %RAX.i1120, align 8
  %988 = add i64 %928, 74
  store i64 %988, i64* %3, align 8
  %989 = load i32, i32* %937, align 4
  %990 = sext i32 %989 to i64
  store i64 %990, i64* %RCX.i1118, align 8
  %991 = shl nsw i64 %990, 3
  %992 = add i64 %991, %987
  %993 = add i64 %928, 78
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RAX.i1120, align 8
  %996 = add i64 %928, 82
  store i64 %996, i64* %3, align 8
  %997 = load i32, i32* %947, align 4
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RCX.i1118, align 8
  %999 = shl nsw i64 %998, 3
  %1000 = add i64 %999, %995
  %1001 = add i64 %928, 86
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RAX.i1120, align 8
  %1004 = add i64 %1003, 8
  %1005 = add i64 %928, 90
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i64*
  %1007 = load i64, i64* %1006, align 8
  store i64 %1007, i64* %RAX.i1120, align 8
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -12
  %1010 = add i64 %928, 94
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = sext i32 %1012 to i64
  store i64 %1013, i64* %RCX.i1118, align 8
  %1014 = shl nsw i64 %1013, 3
  %1015 = add i64 %1014, %1007
  %1016 = add i64 %928, 98
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %RAX.i1120, align 8
  %1019 = add i64 %1008, -16
  %1020 = add i64 %928, 102
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RCX.i1118, align 8
  %1024 = shl nsw i64 %1023, 3
  %1025 = add i64 %1024, %1018
  %1026 = add i64 %928, 106
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  %1029 = add i64 %1028, 2
  %1030 = add i64 %928, 110
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i16*
  store i16 %982, i16* %1031, align 2
  %1032 = load i64, i64* %3, align 8
  %1033 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1033, i64* %RAX.i1120, align 8
  %1034 = add i64 %1033, 3256
  %1035 = add i64 %1032, 15
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %RAX.i1120, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -4
  %1040 = add i64 %1032, 19
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sext i32 %1042 to i64
  store i64 %1043, i64* %RCX.i1118, align 8
  %1044 = shl nsw i64 %1043, 3
  %1045 = add i64 %1044, %1037
  %1046 = add i64 %1032, 23
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RAX.i1120, align 8
  %1049 = add i64 %1038, -8
  %1050 = add i64 %1032, 27
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  store i64 %1053, i64* %RCX.i1118, align 8
  %1054 = shl nsw i64 %1053, 3
  %1055 = add i64 %1054, %1048
  %1056 = add i64 %1032, 31
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i64*
  %1058 = load i64, i64* %1057, align 8
  store i64 %1058, i64* %RAX.i1120, align 8
  %1059 = add i64 %1032, 34
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i64 %1061, i64* %RAX.i1120, align 8
  %1062 = add i64 %1038, -12
  %1063 = add i64 %1032, 38
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i1118, align 8
  %1067 = shl nsw i64 %1066, 3
  %1068 = add i64 %1067, %1061
  %1069 = add i64 %1032, 42
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RAX.i1120, align 8
  %1072 = add i64 %1038, -16
  %1073 = add i64 %1032, 46
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = sext i32 %1075 to i64
  store i64 %1076, i64* %RCX.i1118, align 8
  %1077 = shl nsw i64 %1076, 3
  %1078 = add i64 %1077, %1071
  %1079 = add i64 %1032, 50
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %RAX.i1120, align 8
  %1082 = add i64 %1032, 53
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i16*
  %1084 = load i16, i16* %1083, align 2
  store i16 %1084, i16* %DX.i1076, align 2
  %1085 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1085, i64* %RAX.i1120, align 8
  %1086 = add i64 %1085, 71944
  %1087 = add i64 %1032, 68
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i64*
  %1089 = load i64, i64* %1088, align 8
  store i64 %1089, i64* %RAX.i1120, align 8
  %1090 = add i64 %1032, 72
  store i64 %1090, i64* %3, align 8
  %1091 = load i32, i32* %1041, align 4
  %1092 = sext i32 %1091 to i64
  store i64 %1092, i64* %RCX.i1118, align 8
  %1093 = shl nsw i64 %1092, 3
  %1094 = add i64 %1093, %1089
  %1095 = add i64 %1032, 76
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i64*
  %1097 = load i64, i64* %1096, align 8
  store i64 %1097, i64* %RAX.i1120, align 8
  %1098 = add i64 %1032, 80
  store i64 %1098, i64* %3, align 8
  %1099 = load i32, i32* %1051, align 4
  %1100 = sext i32 %1099 to i64
  store i64 %1100, i64* %RCX.i1118, align 8
  %1101 = shl nsw i64 %1100, 3
  %1102 = add i64 %1101, %1097
  %1103 = add i64 %1032, 84
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %RAX.i1120, align 8
  %1106 = add i64 %1032, 87
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RAX.i1120, align 8
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -12
  %1111 = add i64 %1032, 91
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RCX.i1118, align 8
  %1115 = shl nsw i64 %1114, 3
  %1116 = add i64 %1115, %1108
  %1117 = add i64 %1032, 95
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RAX.i1120, align 8
  %1120 = add i64 %1109, -16
  %1121 = add i64 %1032, 99
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i1118, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1125, %1119
  %1127 = add i64 %1032, 103
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i16**
  %1129 = load i16*, i16** %1128, align 8
  %1130 = add i64 %1032, 106
  store i64 %1130, i64* %3, align 8
  store i16 %1084, i16* %1129, align 2
  %1131 = load i64, i64* %3, align 8
  %1132 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1132, i64* %RAX.i1120, align 8
  %1133 = add i64 %1132, 3256
  %1134 = add i64 %1131, 15
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  store i64 %1136, i64* %RAX.i1120, align 8
  %1137 = load i64, i64* %RBP.i, align 8
  %1138 = add i64 %1137, -4
  %1139 = add i64 %1131, 19
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RCX.i1118, align 8
  %1143 = shl nsw i64 %1142, 3
  %1144 = add i64 %1143, %1136
  %1145 = add i64 %1131, 23
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RAX.i1120, align 8
  %1148 = add i64 %1137, -8
  %1149 = add i64 %1131, 27
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i1118, align 8
  %1153 = shl nsw i64 %1152, 3
  %1154 = add i64 %1153, %1147
  %1155 = add i64 %1131, 31
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX.i1120, align 8
  %1158 = add i64 %1131, 34
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i64*
  %1160 = load i64, i64* %1159, align 8
  store i64 %1160, i64* %RAX.i1120, align 8
  %1161 = add i64 %1137, -12
  %1162 = add i64 %1131, 38
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RCX.i1118, align 8
  %1166 = shl nsw i64 %1165, 3
  %1167 = add i64 %1166, %1160
  %1168 = add i64 %1131, 42
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i1120, align 8
  %1171 = add i64 %1137, -16
  %1172 = add i64 %1131, 46
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = sext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i1118, align 8
  %1176 = shl nsw i64 %1175, 3
  %1177 = add i64 %1176, %1170
  %1178 = add i64 %1131, 50
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RAX.i1120, align 8
  %1181 = add i64 %1180, 2
  %1182 = add i64 %1131, 54
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i16*
  %1184 = load i16, i16* %1183, align 2
  store i16 %1184, i16* %DX.i1076, align 2
  %1185 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1185, i64* %RAX.i1120, align 8
  %1186 = add i64 %1185, 71944
  %1187 = add i64 %1131, 69
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RAX.i1120, align 8
  %1190 = add i64 %1131, 73
  store i64 %1190, i64* %3, align 8
  %1191 = load i32, i32* %1140, align 4
  %1192 = sext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i1118, align 8
  %1193 = shl nsw i64 %1192, 3
  %1194 = add i64 %1193, %1189
  %1195 = add i64 %1131, 77
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RAX.i1120, align 8
  %1198 = add i64 %1131, 81
  store i64 %1198, i64* %3, align 8
  %1199 = load i32, i32* %1150, align 4
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i1118, align 8
  %1201 = shl nsw i64 %1200, 3
  %1202 = add i64 %1201, %1197
  %1203 = add i64 %1131, 85
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %RAX.i1120, align 8
  %1206 = add i64 %1131, 88
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %RAX.i1120, align 8
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -12
  %1211 = add i64 %1131, 92
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = sext i32 %1213 to i64
  store i64 %1214, i64* %RCX.i1118, align 8
  %1215 = shl nsw i64 %1214, 3
  %1216 = add i64 %1215, %1208
  %1217 = add i64 %1131, 96
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %RAX.i1120, align 8
  %1220 = add i64 %1209, -16
  %1221 = add i64 %1131, 100
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = sext i32 %1223 to i64
  store i64 %1224, i64* %RCX.i1118, align 8
  %1225 = shl nsw i64 %1224, 3
  %1226 = add i64 %1225, %1219
  %1227 = add i64 %1131, 104
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  %1230 = add i64 %1229, 2
  %1231 = add i64 %1131, 108
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i16*
  store i16 %1184, i16* %1232, align 2
  %1233 = load i64, i64* %3, align 8
  %1234 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1234, i64* %RAX.i1120, align 8
  %1235 = add i64 %1234, 3256
  %1236 = add i64 %1233, 15
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i1120, align 8
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -4
  %1241 = add i64 %1233, 19
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = sext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i1118, align 8
  %1245 = shl nsw i64 %1244, 3
  %1246 = add i64 %1245, %1238
  %1247 = add i64 %1233, 23
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RAX.i1120, align 8
  %1250 = add i64 %1239, -8
  %1251 = add i64 %1233, 27
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  store i64 %1254, i64* %RCX.i1118, align 8
  %1255 = shl nsw i64 %1254, 3
  %1256 = add i64 %1255, %1249
  %1257 = add i64 %1233, 31
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i64*
  %1259 = load i64, i64* %1258, align 8
  store i64 %1259, i64* %RAX.i1120, align 8
  %1260 = add i64 %1259, 8
  %1261 = add i64 %1233, 35
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %RAX.i1120, align 8
  %1264 = add i64 %1239, -12
  %1265 = add i64 %1233, 39
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RCX.i1118, align 8
  %1269 = shl nsw i64 %1268, 3
  %1270 = add i64 %1269, %1263
  %1271 = add i64 %1233, 43
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i1120, align 8
  %1274 = add i64 %1239, -16
  %1275 = add i64 %1233, 47
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = sext i32 %1277 to i64
  store i64 %1278, i64* %RCX.i1118, align 8
  %1279 = shl nsw i64 %1278, 3
  %1280 = add i64 %1279, %1273
  %1281 = add i64 %1233, 51
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %RAX.i1120, align 8
  %1284 = add i64 %1233, 54
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i16*
  %1286 = load i16, i16* %1285, align 2
  store i16 %1286, i16* %DX.i1076, align 2
  %1287 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1287, i64* %RAX.i1120, align 8
  %1288 = add i64 %1287, 71944
  %1289 = add i64 %1233, 69
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i64*
  %1291 = load i64, i64* %1290, align 8
  store i64 %1291, i64* %RAX.i1120, align 8
  %1292 = add i64 %1233, 73
  store i64 %1292, i64* %3, align 8
  %1293 = load i32, i32* %1242, align 4
  %1294 = sext i32 %1293 to i64
  store i64 %1294, i64* %RCX.i1118, align 8
  %1295 = shl nsw i64 %1294, 3
  %1296 = add i64 %1295, %1291
  %1297 = add i64 %1233, 77
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i64*
  %1299 = load i64, i64* %1298, align 8
  store i64 %1299, i64* %RAX.i1120, align 8
  %1300 = add i64 %1233, 81
  store i64 %1300, i64* %3, align 8
  %1301 = load i32, i32* %1252, align 4
  %1302 = sext i32 %1301 to i64
  store i64 %1302, i64* %RCX.i1118, align 8
  %1303 = shl nsw i64 %1302, 3
  %1304 = add i64 %1303, %1299
  %1305 = add i64 %1233, 85
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RAX.i1120, align 8
  %1308 = add i64 %1307, 8
  %1309 = add i64 %1233, 89
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RAX.i1120, align 8
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -12
  %1314 = add i64 %1233, 93
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = sext i32 %1316 to i64
  store i64 %1317, i64* %RCX.i1118, align 8
  %1318 = shl nsw i64 %1317, 3
  %1319 = add i64 %1318, %1311
  %1320 = add i64 %1233, 97
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RAX.i1120, align 8
  %1323 = add i64 %1312, -16
  %1324 = add i64 %1233, 101
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = sext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i1118, align 8
  %1328 = shl nsw i64 %1327, 3
  %1329 = add i64 %1328, %1322
  %1330 = add i64 %1233, 105
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i16**
  %1332 = load i16*, i16** %1331, align 8
  %1333 = add i64 %1233, 108
  store i64 %1333, i64* %3, align 8
  store i16 %1286, i16* %1332, align 2
  %1334 = load i64, i64* %3, align 8
  %1335 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1335, i64* %RAX.i1120, align 8
  %1336 = add i64 %1335, 3256
  %1337 = add i64 %1334, 15
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RAX.i1120, align 8
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -4
  %1342 = add i64 %1334, 19
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = sext i32 %1344 to i64
  store i64 %1345, i64* %RCX.i1118, align 8
  %1346 = shl nsw i64 %1345, 3
  %1347 = add i64 %1346, %1339
  %1348 = add i64 %1334, 23
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i1120, align 8
  %1351 = add i64 %1340, -8
  %1352 = add i64 %1334, 27
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = sext i32 %1354 to i64
  store i64 %1355, i64* %RCX.i1118, align 8
  %1356 = shl nsw i64 %1355, 3
  %1357 = add i64 %1356, %1350
  %1358 = add i64 %1334, 31
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RAX.i1120, align 8
  %1361 = add i64 %1360, 8
  %1362 = add i64 %1334, 35
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %RAX.i1120, align 8
  %1365 = add i64 %1340, -12
  %1366 = add i64 %1334, 39
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = sext i32 %1368 to i64
  store i64 %1369, i64* %RCX.i1118, align 8
  %1370 = shl nsw i64 %1369, 3
  %1371 = add i64 %1370, %1364
  %1372 = add i64 %1334, 43
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RAX.i1120, align 8
  %1375 = add i64 %1340, -16
  %1376 = add i64 %1334, 47
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = sext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i1118, align 8
  %1380 = shl nsw i64 %1379, 3
  %1381 = add i64 %1380, %1374
  %1382 = add i64 %1334, 51
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RAX.i1120, align 8
  %1385 = add i64 %1384, 2
  %1386 = add i64 %1334, 55
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i16*
  %1388 = load i16, i16* %1387, align 2
  store i16 %1388, i16* %DX.i1076, align 2
  %1389 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1389, i64* %RAX.i1120, align 8
  %1390 = add i64 %1389, 71944
  %1391 = add i64 %1334, 70
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %RAX.i1120, align 8
  %1394 = add i64 %1334, 74
  store i64 %1394, i64* %3, align 8
  %1395 = load i32, i32* %1343, align 4
  %1396 = sext i32 %1395 to i64
  store i64 %1396, i64* %RCX.i1118, align 8
  %1397 = shl nsw i64 %1396, 3
  %1398 = add i64 %1397, %1393
  %1399 = add i64 %1334, 78
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i64*
  %1401 = load i64, i64* %1400, align 8
  store i64 %1401, i64* %RAX.i1120, align 8
  %1402 = add i64 %1334, 82
  store i64 %1402, i64* %3, align 8
  %1403 = load i32, i32* %1353, align 4
  %1404 = sext i32 %1403 to i64
  store i64 %1404, i64* %RCX.i1118, align 8
  %1405 = shl nsw i64 %1404, 3
  %1406 = add i64 %1405, %1401
  %1407 = add i64 %1334, 86
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i64*
  %1409 = load i64, i64* %1408, align 8
  store i64 %1409, i64* %RAX.i1120, align 8
  %1410 = add i64 %1409, 8
  %1411 = add i64 %1334, 90
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i64*
  %1413 = load i64, i64* %1412, align 8
  store i64 %1413, i64* %RAX.i1120, align 8
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -12
  %1416 = add i64 %1334, 94
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = sext i32 %1418 to i64
  store i64 %1419, i64* %RCX.i1118, align 8
  %1420 = shl nsw i64 %1419, 3
  %1421 = add i64 %1420, %1413
  %1422 = add i64 %1334, 98
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %RAX.i1120, align 8
  %1425 = add i64 %1414, -16
  %1426 = add i64 %1334, 102
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = sext i32 %1428 to i64
  store i64 %1429, i64* %RCX.i1118, align 8
  %1430 = shl nsw i64 %1429, 3
  %1431 = add i64 %1430, %1424
  %1432 = add i64 %1334, 106
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %RAX.i1120, align 8
  %1435 = add i64 %1434, 2
  %1436 = add i64 %1334, 110
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i16*
  store i16 %1388, i16* %1437, align 2
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_431763

block_.L_431763:                                  ; preds = %block_4313f1, %block_4313e7, %block_431403, %block_431222
  %1438 = phi i64 [ %.pre16, %block_431403 ], [ %630, %block_4313f1 ], [ %603, %block_4313e7 ], [ %576, %block_431222 ]
  %1439 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1439, i64* %RAX.i1120, align 8
  %1440 = add i64 %1439, 3232
  %1441 = add i64 %1438, 15
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i64*
  %1443 = load i64, i64* %1442, align 8
  store i64 %1443, i64* %RAX.i1120, align 8
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -4
  %1446 = add i64 %1438, 19
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = sext i32 %1448 to i64
  store i64 %1449, i64* %RCX.i1118, align 8
  %1450 = shl nsw i64 %1449, 3
  %1451 = add i64 %1450, %1443
  %1452 = add i64 %1438, 23
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RAX.i1120, align 8
  %1455 = add i64 %1444, -8
  %1456 = add i64 %1438, 27
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sext i32 %1458 to i64
  store i64 %1459, i64* %RCX.i1118, align 8
  %1460 = shl nsw i64 %1459, 3
  %1461 = add i64 %1460, %1454
  %1462 = add i64 %1438, 31
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %RAX.i1120, align 8
  %1465 = add i64 %1438, 34
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i64*
  %1467 = load i64, i64* %1466, align 8
  store i64 %1467, i64* %RAX.i1120, align 8
  %1468 = add i64 %1444, -12
  %1469 = add i64 %1438, 38
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RCX.i1118, align 8
  %1473 = shl nsw i64 %1472, 3
  %1474 = add i64 %1473, %1467
  %1475 = add i64 %1438, 42
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RAX.i1120, align 8
  %1478 = add i64 %1444, -16
  %1479 = add i64 %1438, 46
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RCX.i1118, align 8
  %1483 = shl nsw i64 %1482, 3
  %1484 = add i64 %1483, %1477
  %1485 = add i64 %1438, 50
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %RAX.i1120, align 8
  %1488 = add i64 %1438, 53
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i16*
  %1490 = load i16, i16* %1489, align 2
  store i16 %1490, i16* %DX.i1076, align 2
  %1491 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1491, i64* %RAX.i1120, align 8
  %1492 = add i64 %1491, 71920
  %1493 = add i64 %1438, 68
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %RAX.i1120, align 8
  %1496 = add i64 %1438, 72
  store i64 %1496, i64* %3, align 8
  %1497 = load i32, i32* %1447, align 4
  %1498 = sext i32 %1497 to i64
  store i64 %1498, i64* %RCX.i1118, align 8
  %1499 = shl nsw i64 %1498, 3
  %1500 = add i64 %1499, %1495
  %1501 = add i64 %1438, 76
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i64*
  %1503 = load i64, i64* %1502, align 8
  store i64 %1503, i64* %RAX.i1120, align 8
  %1504 = add i64 %1438, 80
  store i64 %1504, i64* %3, align 8
  %1505 = load i32, i32* %1457, align 4
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RCX.i1118, align 8
  %1507 = shl nsw i64 %1506, 3
  %1508 = add i64 %1507, %1503
  %1509 = add i64 %1438, 84
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RAX.i1120, align 8
  %1512 = add i64 %1438, 87
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i64*
  %1514 = load i64, i64* %1513, align 8
  store i64 %1514, i64* %RAX.i1120, align 8
  %1515 = load i64, i64* %RBP.i, align 8
  %1516 = add i64 %1515, -12
  %1517 = add i64 %1438, 91
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = sext i32 %1519 to i64
  store i64 %1520, i64* %RCX.i1118, align 8
  %1521 = shl nsw i64 %1520, 3
  %1522 = add i64 %1521, %1514
  %1523 = add i64 %1438, 95
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i64*
  %1525 = load i64, i64* %1524, align 8
  store i64 %1525, i64* %RAX.i1120, align 8
  %1526 = add i64 %1515, -16
  %1527 = add i64 %1438, 99
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = sext i32 %1529 to i64
  store i64 %1530, i64* %RCX.i1118, align 8
  %1531 = shl nsw i64 %1530, 3
  %1532 = add i64 %1531, %1525
  %1533 = add i64 %1438, 103
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i16**
  %1535 = load i16*, i16** %1534, align 8
  %1536 = add i64 %1438, 106
  store i64 %1536, i64* %3, align 8
  store i16 %1490, i16* %1535, align 2
  %1537 = load i64, i64* %3, align 8
  %1538 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1538, i64* %RAX.i1120, align 8
  %1539 = add i64 %1538, 3232
  %1540 = add i64 %1537, 15
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RAX.i1120, align 8
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -4
  %1545 = add i64 %1537, 19
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = sext i32 %1547 to i64
  store i64 %1548, i64* %RCX.i1118, align 8
  %1549 = shl nsw i64 %1548, 3
  %1550 = add i64 %1549, %1542
  %1551 = add i64 %1537, 23
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i64*
  %1553 = load i64, i64* %1552, align 8
  store i64 %1553, i64* %RAX.i1120, align 8
  %1554 = add i64 %1543, -8
  %1555 = add i64 %1537, 27
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = sext i32 %1557 to i64
  store i64 %1558, i64* %RCX.i1118, align 8
  %1559 = shl nsw i64 %1558, 3
  %1560 = add i64 %1559, %1553
  %1561 = add i64 %1537, 31
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i64*
  %1563 = load i64, i64* %1562, align 8
  store i64 %1563, i64* %RAX.i1120, align 8
  %1564 = add i64 %1537, 34
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i64*
  %1566 = load i64, i64* %1565, align 8
  store i64 %1566, i64* %RAX.i1120, align 8
  %1567 = add i64 %1543, -12
  %1568 = add i64 %1537, 38
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = sext i32 %1570 to i64
  store i64 %1571, i64* %RCX.i1118, align 8
  %1572 = shl nsw i64 %1571, 3
  %1573 = add i64 %1572, %1566
  %1574 = add i64 %1537, 42
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i64*
  %1576 = load i64, i64* %1575, align 8
  store i64 %1576, i64* %RAX.i1120, align 8
  %1577 = add i64 %1543, -16
  %1578 = add i64 %1537, 46
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = sext i32 %1580 to i64
  store i64 %1581, i64* %RCX.i1118, align 8
  %1582 = shl nsw i64 %1581, 3
  %1583 = add i64 %1582, %1576
  %1584 = add i64 %1537, 50
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i64*
  %1586 = load i64, i64* %1585, align 8
  store i64 %1586, i64* %RAX.i1120, align 8
  %1587 = add i64 %1586, 2
  %1588 = add i64 %1537, 54
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i16*
  %1590 = load i16, i16* %1589, align 2
  store i16 %1590, i16* %DX.i1076, align 2
  %1591 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1591, i64* %RAX.i1120, align 8
  %1592 = add i64 %1591, 71920
  %1593 = add i64 %1537, 69
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i64*
  %1595 = load i64, i64* %1594, align 8
  store i64 %1595, i64* %RAX.i1120, align 8
  %1596 = add i64 %1537, 73
  store i64 %1596, i64* %3, align 8
  %1597 = load i32, i32* %1546, align 4
  %1598 = sext i32 %1597 to i64
  store i64 %1598, i64* %RCX.i1118, align 8
  %1599 = shl nsw i64 %1598, 3
  %1600 = add i64 %1599, %1595
  %1601 = add i64 %1537, 77
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX.i1120, align 8
  %1604 = add i64 %1537, 81
  store i64 %1604, i64* %3, align 8
  %1605 = load i32, i32* %1556, align 4
  %1606 = sext i32 %1605 to i64
  store i64 %1606, i64* %RCX.i1118, align 8
  %1607 = shl nsw i64 %1606, 3
  %1608 = add i64 %1607, %1603
  %1609 = add i64 %1537, 85
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %RAX.i1120, align 8
  %1612 = add i64 %1537, 88
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  %1614 = load i64, i64* %1613, align 8
  store i64 %1614, i64* %RAX.i1120, align 8
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -12
  %1617 = add i64 %1537, 92
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = sext i32 %1619 to i64
  store i64 %1620, i64* %RCX.i1118, align 8
  %1621 = shl nsw i64 %1620, 3
  %1622 = add i64 %1621, %1614
  %1623 = add i64 %1537, 96
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %RAX.i1120, align 8
  %1626 = add i64 %1615, -16
  %1627 = add i64 %1537, 100
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i1118, align 8
  %1631 = shl nsw i64 %1630, 3
  %1632 = add i64 %1631, %1625
  %1633 = add i64 %1537, 104
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  %1636 = add i64 %1635, 2
  %1637 = add i64 %1537, 108
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i16*
  store i16 %1590, i16* %1638, align 2
  %1639 = load i64, i64* %3, align 8
  %1640 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1640, i64* %RAX.i1120, align 8
  %1641 = add i64 %1640, 3232
  %1642 = add i64 %1639, 15
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i64*
  %1644 = load i64, i64* %1643, align 8
  store i64 %1644, i64* %RAX.i1120, align 8
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -4
  %1647 = add i64 %1639, 19
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = sext i32 %1649 to i64
  store i64 %1650, i64* %RCX.i1118, align 8
  %1651 = shl nsw i64 %1650, 3
  %1652 = add i64 %1651, %1644
  %1653 = add i64 %1639, 23
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RAX.i1120, align 8
  %1656 = add i64 %1645, -8
  %1657 = add i64 %1639, 27
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = sext i32 %1659 to i64
  store i64 %1660, i64* %RCX.i1118, align 8
  %1661 = shl nsw i64 %1660, 3
  %1662 = add i64 %1661, %1655
  %1663 = add i64 %1639, 31
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i64*
  %1665 = load i64, i64* %1664, align 8
  store i64 %1665, i64* %RAX.i1120, align 8
  %1666 = add i64 %1665, 8
  %1667 = add i64 %1639, 35
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %RAX.i1120, align 8
  %1670 = add i64 %1645, -12
  %1671 = add i64 %1639, 39
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = sext i32 %1673 to i64
  store i64 %1674, i64* %RCX.i1118, align 8
  %1675 = shl nsw i64 %1674, 3
  %1676 = add i64 %1675, %1669
  %1677 = add i64 %1639, 43
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i64*
  %1679 = load i64, i64* %1678, align 8
  store i64 %1679, i64* %RAX.i1120, align 8
  %1680 = add i64 %1645, -16
  %1681 = add i64 %1639, 47
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = sext i32 %1683 to i64
  store i64 %1684, i64* %RCX.i1118, align 8
  %1685 = shl nsw i64 %1684, 3
  %1686 = add i64 %1685, %1679
  %1687 = add i64 %1639, 51
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RAX.i1120, align 8
  %1690 = add i64 %1639, 54
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i16*
  %1692 = load i16, i16* %1691, align 2
  store i16 %1692, i16* %DX.i1076, align 2
  %1693 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1693, i64* %RAX.i1120, align 8
  %1694 = add i64 %1693, 71920
  %1695 = add i64 %1639, 69
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i64*
  %1697 = load i64, i64* %1696, align 8
  store i64 %1697, i64* %RAX.i1120, align 8
  %1698 = add i64 %1639, 73
  store i64 %1698, i64* %3, align 8
  %1699 = load i32, i32* %1648, align 4
  %1700 = sext i32 %1699 to i64
  store i64 %1700, i64* %RCX.i1118, align 8
  %1701 = shl nsw i64 %1700, 3
  %1702 = add i64 %1701, %1697
  %1703 = add i64 %1639, 77
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i64*
  %1705 = load i64, i64* %1704, align 8
  store i64 %1705, i64* %RAX.i1120, align 8
  %1706 = add i64 %1639, 81
  store i64 %1706, i64* %3, align 8
  %1707 = load i32, i32* %1658, align 4
  %1708 = sext i32 %1707 to i64
  store i64 %1708, i64* %RCX.i1118, align 8
  %1709 = shl nsw i64 %1708, 3
  %1710 = add i64 %1709, %1705
  %1711 = add i64 %1639, 85
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i64*
  %1713 = load i64, i64* %1712, align 8
  store i64 %1713, i64* %RAX.i1120, align 8
  %1714 = add i64 %1713, 8
  %1715 = add i64 %1639, 89
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i64*
  %1717 = load i64, i64* %1716, align 8
  store i64 %1717, i64* %RAX.i1120, align 8
  %1718 = load i64, i64* %RBP.i, align 8
  %1719 = add i64 %1718, -12
  %1720 = add i64 %1639, 93
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = sext i32 %1722 to i64
  store i64 %1723, i64* %RCX.i1118, align 8
  %1724 = shl nsw i64 %1723, 3
  %1725 = add i64 %1724, %1717
  %1726 = add i64 %1639, 97
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %RAX.i1120, align 8
  %1729 = add i64 %1718, -16
  %1730 = add i64 %1639, 101
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = sext i32 %1732 to i64
  store i64 %1733, i64* %RCX.i1118, align 8
  %1734 = shl nsw i64 %1733, 3
  %1735 = add i64 %1734, %1728
  %1736 = add i64 %1639, 105
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i16**
  %1738 = load i16*, i16** %1737, align 8
  %1739 = add i64 %1639, 108
  store i64 %1739, i64* %3, align 8
  store i16 %1692, i16* %1738, align 2
  %1740 = load i64, i64* %3, align 8
  %1741 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1741, i64* %RAX.i1120, align 8
  %1742 = add i64 %1741, 3232
  %1743 = add i64 %1740, 15
  store i64 %1743, i64* %3, align 8
  %1744 = inttoptr i64 %1742 to i64*
  %1745 = load i64, i64* %1744, align 8
  store i64 %1745, i64* %RAX.i1120, align 8
  %1746 = load i64, i64* %RBP.i, align 8
  %1747 = add i64 %1746, -4
  %1748 = add i64 %1740, 19
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = sext i32 %1750 to i64
  store i64 %1751, i64* %RCX.i1118, align 8
  %1752 = shl nsw i64 %1751, 3
  %1753 = add i64 %1752, %1745
  %1754 = add i64 %1740, 23
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i64*
  %1756 = load i64, i64* %1755, align 8
  store i64 %1756, i64* %RAX.i1120, align 8
  %1757 = add i64 %1746, -8
  %1758 = add i64 %1740, 27
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = sext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i1118, align 8
  %1762 = shl nsw i64 %1761, 3
  %1763 = add i64 %1762, %1756
  %1764 = add i64 %1740, 31
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RAX.i1120, align 8
  %1767 = add i64 %1766, 8
  %1768 = add i64 %1740, 35
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i64*
  %1770 = load i64, i64* %1769, align 8
  store i64 %1770, i64* %RAX.i1120, align 8
  %1771 = add i64 %1746, -12
  %1772 = add i64 %1740, 39
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = sext i32 %1774 to i64
  store i64 %1775, i64* %RCX.i1118, align 8
  %1776 = shl nsw i64 %1775, 3
  %1777 = add i64 %1776, %1770
  %1778 = add i64 %1740, 43
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i64*
  %1780 = load i64, i64* %1779, align 8
  store i64 %1780, i64* %RAX.i1120, align 8
  %1781 = add i64 %1746, -16
  %1782 = add i64 %1740, 47
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = sext i32 %1784 to i64
  store i64 %1785, i64* %RCX.i1118, align 8
  %1786 = shl nsw i64 %1785, 3
  %1787 = add i64 %1786, %1780
  %1788 = add i64 %1740, 51
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %RAX.i1120, align 8
  %1791 = add i64 %1790, 2
  %1792 = add i64 %1740, 55
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i16*
  %1794 = load i16, i16* %1793, align 2
  store i16 %1794, i16* %DX.i1076, align 2
  %1795 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1795, i64* %RAX.i1120, align 8
  %1796 = add i64 %1795, 71920
  %1797 = add i64 %1740, 70
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i64*
  %1799 = load i64, i64* %1798, align 8
  store i64 %1799, i64* %RAX.i1120, align 8
  %1800 = add i64 %1740, 74
  store i64 %1800, i64* %3, align 8
  %1801 = load i32, i32* %1749, align 4
  %1802 = sext i32 %1801 to i64
  store i64 %1802, i64* %RCX.i1118, align 8
  %1803 = shl nsw i64 %1802, 3
  %1804 = add i64 %1803, %1799
  %1805 = add i64 %1740, 78
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %RAX.i1120, align 8
  %1808 = add i64 %1740, 82
  store i64 %1808, i64* %3, align 8
  %1809 = load i32, i32* %1759, align 4
  %1810 = sext i32 %1809 to i64
  store i64 %1810, i64* %RCX.i1118, align 8
  %1811 = shl nsw i64 %1810, 3
  %1812 = add i64 %1811, %1807
  %1813 = add i64 %1740, 86
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i64*
  %1815 = load i64, i64* %1814, align 8
  store i64 %1815, i64* %RAX.i1120, align 8
  %1816 = add i64 %1815, 8
  %1817 = add i64 %1740, 90
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i64*
  %1819 = load i64, i64* %1818, align 8
  store i64 %1819, i64* %RAX.i1120, align 8
  %1820 = load i64, i64* %RBP.i, align 8
  %1821 = add i64 %1820, -12
  %1822 = add i64 %1740, 94
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i32*
  %1824 = load i32, i32* %1823, align 4
  %1825 = sext i32 %1824 to i64
  store i64 %1825, i64* %RCX.i1118, align 8
  %1826 = shl nsw i64 %1825, 3
  %1827 = add i64 %1826, %1819
  %1828 = add i64 %1740, 98
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i64*
  %1830 = load i64, i64* %1829, align 8
  store i64 %1830, i64* %RAX.i1120, align 8
  %1831 = add i64 %1820, -16
  %1832 = add i64 %1740, 102
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = sext i32 %1834 to i64
  store i64 %1835, i64* %RCX.i1118, align 8
  %1836 = shl nsw i64 %1835, 3
  %1837 = add i64 %1836, %1830
  %1838 = add i64 %1740, 106
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RAX.i1120, align 8
  %1841 = add i64 %1840, 2
  %1842 = add i64 %1740, 110
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i16*
  store i16 %1794, i16* %1843, align 2
  %1844 = load i64, i64* %RBP.i, align 8
  %1845 = add i64 %1844, -16
  %1846 = load i64, i64* %3, align 8
  %1847 = add i64 %1846, 3
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, 1
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i1120, align 8
  %1852 = icmp eq i32 %1849, -1
  %1853 = icmp eq i32 %1850, 0
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %14, align 1
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %15, align 1
  %1861 = xor i32 %1850, %1849
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %16, align 1
  %1865 = zext i1 %1853 to i8
  store i8 %1865, i8* %17, align 1
  %1866 = lshr i32 %1850, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %18, align 1
  %1868 = lshr i32 %1849, 31
  %1869 = xor i32 %1866, %1868
  %1870 = add nuw nsw i32 %1869, %1866
  %1871 = icmp eq i32 %1870, 2
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %19, align 1
  %1873 = add i64 %1846, 9
  store i64 %1873, i64* %3, align 8
  store i32 %1850, i32* %1848, align 4
  %1874 = load i64, i64* %3, align 8
  %1875 = add i64 %1874, -1796
  store i64 %1875, i64* %3, align 8
  br label %block_.L_431218

block_.L_431921:                                  ; preds = %block_.L_431218
  %1876 = add i64 %130, -12
  %1877 = add i64 %158, 8
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = add i32 %1879, 1
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RAX.i1120, align 8
  %1882 = icmp eq i32 %1879, -1
  %1883 = icmp eq i32 %1880, 0
  %1884 = or i1 %1882, %1883
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1880, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %15, align 1
  %1891 = xor i32 %1880, %1879
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %16, align 1
  %1895 = zext i1 %1883 to i8
  store i8 %1895, i8* %17, align 1
  %1896 = lshr i32 %1880, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %18, align 1
  %1898 = lshr i32 %1879, 31
  %1899 = xor i32 %1896, %1898
  %1900 = add nuw nsw i32 %1899, %1896
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %19, align 1
  %1903 = add i64 %158, 14
  store i64 %1903, i64* %3, align 8
  store i32 %1880, i32* %1878, align 4
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, -1842
  store i64 %1905, i64* %3, align 8
  br label %block_.L_4311fd

block_.L_431934:                                  ; preds = %block_.L_4311fd
  %1906 = add i64 %88, -8
  %1907 = add i64 %125, 8
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = add i32 %1909, 1
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RAX.i1120, align 8
  %1912 = icmp eq i32 %1909, -1
  %1913 = icmp eq i32 %1910, 0
  %1914 = or i1 %1912, %1913
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = and i32 %1910, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %15, align 1
  %1921 = xor i32 %1910, %1909
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %16, align 1
  %1925 = zext i1 %1913 to i8
  store i8 %1925, i8* %17, align 1
  %1926 = lshr i32 %1910, 31
  %1927 = trunc i32 %1926 to i8
  store i8 %1927, i8* %18, align 1
  %1928 = lshr i32 %1909, 31
  %1929 = xor i32 %1926, %1928
  %1930 = add nuw nsw i32 %1929, %1926
  %1931 = icmp eq i32 %1930, 2
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %19, align 1
  %1933 = add i64 %125, 14
  store i64 %1933, i64* %3, align 8
  store i32 %1910, i32* %1908, align 4
  %1934 = load i64, i64* %3, align 8
  %1935 = add i64 %1934, -1878
  store i64 %1935, i64* %3, align 8
  br label %block_.L_4311ec

block_.L_431947:                                  ; preds = %block_.L_4311ec
  %1936 = add i64 %55, -4
  %1937 = add i64 %83, 8
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = add i32 %1939, 1
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RAX.i1120, align 8
  %1942 = icmp eq i32 %1939, -1
  %1943 = icmp eq i32 %1940, 0
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %14, align 1
  %1946 = and i32 %1940, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %15, align 1
  %1951 = xor i32 %1940, %1939
  %1952 = lshr i32 %1951, 4
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  store i8 %1954, i8* %16, align 1
  %1955 = zext i1 %1943 to i8
  store i8 %1955, i8* %17, align 1
  %1956 = lshr i32 %1940, 31
  %1957 = trunc i32 %1956 to i8
  store i8 %1957, i8* %18, align 1
  %1958 = lshr i32 %1939, 31
  %1959 = xor i32 %1956, %1958
  %1960 = add nuw nsw i32 %1959, %1956
  %1961 = icmp eq i32 %1960, 2
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %19, align 1
  %1963 = add i64 %83, 14
  store i64 %1963, i64* %3, align 8
  store i32 %1940, i32* %1938, align 4
  %1964 = load i64, i64* %3, align 8
  %1965 = add i64 %1964, -1914
  store i64 %1965, i64* %3, align 8
  br label %block_.L_4311db

block_.L_43195a:                                  ; preds = %block_.L_4311db
  %1966 = add i64 %50, 1
  store i64 %1966, i64* %3, align 8
  %1967 = load i64, i64* %6, align 8
  %1968 = add i64 %1967, 8
  %1969 = inttoptr i64 %1967 to i64*
  %1970 = load i64, i64* %1969, align 8
  store i64 %1970, i64* %RBP.i, align 8
  store i64 %1968, i64* %6, align 8
  %1971 = add i64 %50, 2
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1968 to i64*
  %1973 = load i64, i64* %1972, align 8
  store i64 %1973, i64* %3, align 8
  %1974 = add i64 %1967, 16
  store i64 %1974, i64* %6, align 8
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_43195a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_431947(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_jge_.L_431934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_431921(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4518___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xca8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movw___rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %DX, align 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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
define %struct.Memory* @routine_cmpl__0x0__0x4e8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1256
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
define %struct.Memory* @routine_je_.L_431763(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_431763(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq_0xcb0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71936
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xcb8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71944
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xca0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x118f0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71920
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_431218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431926(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4311fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4311ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43194c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4311db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
