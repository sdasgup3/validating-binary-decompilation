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
define %struct.Memory* @kernel_reg_detect(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i567, align 8
  %R10.i565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i565, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %24 to i32*
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI.i, align 4
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i557 = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX.i557, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i554 = getelementptr inbounds %union.anon, %union.anon* %38, i64 0, i32 0
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -24
  %41 = load i64, i64* %RCX.i554, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -32
  %47 = load i64, i64* %R8.i, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -40
  %53 = load i64, i64* %R9.i, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -48
  %59 = load i64, i64* %R10.i565, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -56
  %65 = load i64, i64* %RAX.i567, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -60
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %ECX.i524 = bitcast %union.anon* %38 to i32*
  %RDX.i474 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400b70

block_.L_400b70:                                  ; preds = %block_.L_400e6d, %entry
  %80 = phi i64 [ %1681, %block_.L_400e6d ], [ %.pre, %entry ]
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -60
  %83 = add i64 %80, 3
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX.i567, align 8
  %87 = add i64 %81, -4
  %88 = add i64 %80, 6
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %85, %90
  %92 = icmp ult i32 %85, %90
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %74, align 1
  %94 = and i32 %91, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %75, align 1
  %99 = xor i32 %90, %85
  %100 = xor i32 %99, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %76, align 1
  %104 = icmp eq i32 %91, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %77, align 1
  %106 = lshr i32 %91, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %78, align 1
  %108 = lshr i32 %85, 31
  %109 = lshr i32 %90, 31
  %110 = xor i32 %109, %108
  %111 = xor i32 %106, %108
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %79, align 1
  %115 = icmp ne i8 %107, 0
  %116 = xor i1 %115, %113
  %.v61 = select i1 %116, i64 12, i64 784
  %117 = add i64 %80, %.v61
  store i64 %117, i64* %3, align 8
  br i1 %116, label %block_400b7c, label %block_.L_400e80

block_400b7c:                                     ; preds = %block_.L_400b70
  %118 = add i64 %81, -68
  %119 = add i64 %117, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 0, i32* %120, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_400b83

block_.L_400b83:                                  ; preds = %block_.L_400c1e, %block_400b7c
  %121 = phi i64 [ %466, %block_.L_400c1e ], [ %.pre39, %block_400b7c ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -68
  %124 = add i64 %121, 3
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i567, align 8
  %128 = add i64 %122, -8
  %129 = add i64 %121, 6
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, -1
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX.i554, align 8
  %134 = lshr i32 %132, 31
  %135 = sub i32 %126, %132
  %136 = icmp ult i32 %126, %132
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %74, align 1
  %138 = and i32 %135, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %75, align 1
  %143 = xor i32 %132, %126
  %144 = xor i32 %143, %135
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %76, align 1
  %148 = icmp eq i32 %135, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %77, align 1
  %150 = lshr i32 %135, 31
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %78, align 1
  %152 = lshr i32 %126, 31
  %153 = xor i32 %134, %152
  %154 = xor i32 %150, %152
  %155 = add nuw nsw i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %79, align 1
  %158 = icmp ne i8 %151, 0
  %159 = xor i1 %158, %156
  %.demorgan = or i1 %148, %159
  %.v62 = select i1 %.demorgan, i64 17, i64 174
  %160 = add i64 %121, %.v62
  store i64 %160, i64* %3, align 8
  br i1 %.demorgan, label %block_400b94, label %block_.L_400c31

block_400b94:                                     ; preds = %block_.L_400b83
  %161 = add i64 %160, 3
  store i64 %161, i64* %3, align 8
  %162 = load i32, i32* %125, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX.i567, align 8
  %164 = add i64 %122, -64
  %165 = add i64 %160, 6
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %162, i32* %166, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_400b9a

block_.L_400b9a:                                  ; preds = %block_.L_400c0b, %block_400b94
  %167 = phi i64 [ %436, %block_.L_400c0b ], [ %.pre40, %block_400b94 ]
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -64
  %170 = add i64 %167, 3
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i567, align 8
  %174 = add i64 %168, -8
  %175 = add i64 %167, 6
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, -1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i554, align 8
  %180 = lshr i32 %178, 31
  %181 = sub i32 %172, %178
  %182 = icmp ult i32 %172, %178
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %74, align 1
  %184 = and i32 %181, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %75, align 1
  %189 = xor i32 %178, %172
  %190 = xor i32 %189, %181
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %76, align 1
  %194 = icmp eq i32 %181, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %77, align 1
  %196 = lshr i32 %181, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %78, align 1
  %198 = lshr i32 %172, 31
  %199 = xor i32 %180, %198
  %200 = xor i32 %196, %198
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %79, align 1
  %204 = icmp ne i8 %197, 0
  %205 = xor i1 %204, %202
  %.demorgan48 = or i1 %194, %205
  %.v50 = select i1 %.demorgan48, i64 17, i64 132
  %206 = add i64 %167, %.v50
  store i64 %206, i64* %3, align 8
  br i1 %.demorgan48, label %block_400bab, label %block_.L_400c1e

block_400bab:                                     ; preds = %block_.L_400b9a
  %207 = add i64 %168, -72
  %208 = add i64 %206, 7
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 0, i32* %209, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_400bb2

block_.L_400bb2:                                  ; preds = %block_400bc3, %block_400bab
  %210 = phi i64 [ %406, %block_400bc3 ], [ %.pre41, %block_400bab ]
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -72
  %213 = add i64 %210, 3
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i567, align 8
  %217 = add i64 %211, -12
  %218 = add i64 %210, 6
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i554, align 8
  %223 = lshr i32 %221, 31
  %224 = sub i32 %215, %221
  %225 = icmp ult i32 %215, %221
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %74, align 1
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %75, align 1
  %232 = xor i32 %221, %215
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %76, align 1
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %77, align 1
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %78, align 1
  %241 = lshr i32 %215, 31
  %242 = xor i32 %223, %241
  %243 = xor i32 %239, %241
  %244 = add nuw nsw i32 %243, %242
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %79, align 1
  %247 = icmp ne i8 %240, 0
  %248 = xor i1 %247, %245
  %.demorgan49 = or i1 %237, %248
  %.v = select i1 %.demorgan49, i64 17, i64 89
  %249 = add i64 %210, %.v
  store i64 %249, i64* %3, align 8
  br i1 %.demorgan49, label %block_400bc3, label %block_.L_400c0b

block_400bc3:                                     ; preds = %block_.L_400bb2
  %250 = add i64 %211, -24
  %251 = add i64 %249, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i567, align 8
  %254 = add i64 %211, -68
  %255 = add i64 %249, 8
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, 24
  store i64 %259, i64* %RCX.i554, align 8
  %260 = lshr i64 %259, 63
  %261 = add i64 %259, %253
  store i64 %261, i64* %RAX.i567, align 8
  %262 = icmp ult i64 %261, %253
  %263 = icmp ult i64 %261, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %74, align 1
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %75, align 1
  %272 = xor i64 %259, %253
  %273 = xor i64 %272, %261
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %76, align 1
  %277 = icmp eq i64 %261, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %77, align 1
  %279 = lshr i64 %261, 63
  %280 = trunc i64 %279 to i8
  store i8 %280, i8* %78, align 1
  %281 = lshr i64 %253, 63
  %282 = xor i64 %279, %281
  %283 = xor i64 %279, %260
  %284 = add nuw nsw i64 %282, %283
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %79, align 1
  %287 = add i64 %211, -64
  %288 = add i64 %249, 19
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX.i554, align 8
  %292 = shl nsw i64 %291, 2
  %293 = add i64 %292, %261
  %294 = add i64 %249, 22
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDX.i474, align 8
  %298 = add i64 %211, -48
  %299 = add i64 %249, 26
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RAX.i567, align 8
  %302 = add i64 %249, 30
  store i64 %302, i64* %3, align 8
  %303 = load i32, i32* %256, align 4
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %304, 1536
  store i64 %305, i64* %RCX.i554, align 8
  %306 = lshr i64 %305, 63
  %307 = add i64 %305, %301
  store i64 %307, i64* %RAX.i567, align 8
  %308 = icmp ult i64 %307, %301
  %309 = icmp ult i64 %307, %305
  %310 = or i1 %308, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %74, align 1
  %312 = trunc i64 %307 to i32
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %75, align 1
  %318 = xor i64 %301, %307
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %76, align 1
  %322 = icmp eq i64 %307, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %77, align 1
  %324 = lshr i64 %307, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %78, align 1
  %326 = lshr i64 %301, 63
  %327 = xor i64 %324, %326
  %328 = xor i64 %324, %306
  %329 = add nuw nsw i64 %327, %328
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %79, align 1
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -64
  %334 = add i64 %249, 44
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = shl nsw i64 %337, 8
  store i64 %338, i64* %RCX.i554, align 8
  %339 = add i64 %338, %307
  store i64 %339, i64* %RAX.i567, align 8
  %340 = icmp ult i64 %339, %307
  %341 = icmp ult i64 %339, %338
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %74, align 1
  %344 = trunc i64 %339 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %75, align 1
  %350 = xor i64 %307, %339
  %351 = lshr i64 %350, 4
  %352 = trunc i64 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %76, align 1
  %354 = icmp eq i64 %339, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %77, align 1
  %356 = lshr i64 %339, 63
  %357 = trunc i64 %356 to i8
  store i8 %357, i8* %78, align 1
  %358 = lshr i64 %337, 55
  %359 = and i64 %358, 1
  %360 = xor i64 %356, %324
  %361 = xor i64 %356, %359
  %362 = add nuw nsw i64 %360, %361
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %79, align 1
  %365 = add i64 %332, -72
  %366 = add i64 %249, 55
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i554, align 8
  %370 = shl nsw i64 %369, 2
  %371 = add i64 %370, %339
  %372 = load i32, i32* %EDX.i557, align 4
  %373 = add i64 %249, 58
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %371 to i32*
  store i32 %372, i32* %374, align 4
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -72
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 3
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, 1
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX.i567, align 8
  %383 = icmp eq i32 %380, -1
  %384 = icmp eq i32 %381, 0
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %74, align 1
  %387 = and i32 %381, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %75, align 1
  %392 = xor i32 %381, %380
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %76, align 1
  %396 = zext i1 %384 to i8
  store i8 %396, i8* %77, align 1
  %397 = lshr i32 %381, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %78, align 1
  %399 = lshr i32 %380, 31
  %400 = xor i32 %397, %399
  %401 = add nuw nsw i32 %400, %397
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %79, align 1
  %404 = add i64 %377, 9
  store i64 %404, i64* %3, align 8
  store i32 %381, i32* %379, align 4
  %405 = load i64, i64* %3, align 8
  %406 = add i64 %405, -84
  store i64 %406, i64* %3, align 8
  br label %block_.L_400bb2

block_.L_400c0b:                                  ; preds = %block_.L_400bb2
  %407 = add i64 %211, -64
  %408 = add i64 %249, 8
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, 1
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RAX.i567, align 8
  %413 = icmp eq i32 %410, -1
  %414 = icmp eq i32 %411, 0
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %74, align 1
  %417 = and i32 %411, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %75, align 1
  %422 = xor i32 %411, %410
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %76, align 1
  %426 = zext i1 %414 to i8
  store i8 %426, i8* %77, align 1
  %427 = lshr i32 %411, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %78, align 1
  %429 = lshr i32 %410, 31
  %430 = xor i32 %427, %429
  %431 = add nuw nsw i32 %430, %427
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %79, align 1
  %434 = add i64 %249, 14
  store i64 %434, i64* %3, align 8
  store i32 %411, i32* %409, align 4
  %435 = load i64, i64* %3, align 8
  %436 = add i64 %435, -127
  store i64 %436, i64* %3, align 8
  br label %block_.L_400b9a

block_.L_400c1e:                                  ; preds = %block_.L_400b9a
  %437 = add i64 %168, -68
  %438 = add i64 %206, 8
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = add i32 %440, 1
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RAX.i567, align 8
  %443 = icmp eq i32 %440, -1
  %444 = icmp eq i32 %441, 0
  %445 = or i1 %443, %444
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %74, align 1
  %447 = and i32 %441, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %75, align 1
  %452 = xor i32 %441, %440
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %76, align 1
  %456 = zext i1 %444 to i8
  store i8 %456, i8* %77, align 1
  %457 = lshr i32 %441, 31
  %458 = trunc i32 %457 to i8
  store i8 %458, i8* %78, align 1
  %459 = lshr i32 %440, 31
  %460 = xor i32 %457, %459
  %461 = add nuw nsw i32 %460, %457
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %79, align 1
  %464 = add i64 %206, 14
  store i64 %464, i64* %3, align 8
  store i32 %441, i32* %439, align 4
  %465 = load i64, i64* %3, align 8
  %466 = add i64 %465, -169
  store i64 %466, i64* %3, align 8
  br label %block_.L_400b83

block_.L_400c31:                                  ; preds = %block_.L_400b83
  %467 = add i64 %160, 7
  store i64 %467, i64* %3, align 8
  store i32 0, i32* %125, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_400c38

block_.L_400c38:                                  ; preds = %block_.L_400d82, %block_.L_400c31
  %468 = phi i64 [ %1205, %block_.L_400d82 ], [ %.pre42, %block_.L_400c31 ]
  %469 = load i64, i64* %RBP.i, align 8
  %470 = add i64 %469, -68
  %471 = add i64 %468, 3
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RAX.i567, align 8
  %475 = add i64 %469, -8
  %476 = add i64 %468, 6
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, -1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RCX.i554, align 8
  %481 = lshr i32 %479, 31
  %482 = sub i32 %473, %479
  %483 = icmp ult i32 %473, %479
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %74, align 1
  %485 = and i32 %482, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %75, align 1
  %490 = xor i32 %479, %473
  %491 = xor i32 %490, %482
  %492 = lshr i32 %491, 4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %76, align 1
  %495 = icmp eq i32 %482, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %77, align 1
  %497 = lshr i32 %482, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %78, align 1
  %499 = lshr i32 %473, 31
  %500 = xor i32 %481, %499
  %501 = xor i32 %497, %499
  %502 = add nuw nsw i32 %501, %500
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %79, align 1
  %505 = icmp ne i8 %498, 0
  %506 = xor i1 %505, %503
  %.demorgan51 = or i1 %495, %506
  %.v63 = select i1 %.demorgan51, i64 17, i64 349
  %507 = add i64 %468, %.v63
  store i64 %507, i64* %3, align 8
  br i1 %.demorgan51, label %block_400c49, label %block_.L_400d95

block_400c49:                                     ; preds = %block_.L_400c38
  %508 = add i64 %507, 3
  store i64 %508, i64* %3, align 8
  %509 = load i32, i32* %472, align 4
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RAX.i567, align 8
  %511 = add i64 %469, -64
  %512 = add i64 %507, 6
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  store i32 %509, i32* %513, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_400c4f

block_.L_400c4f:                                  ; preds = %block_.L_400d35, %block_400c49
  %514 = phi i64 [ %1175, %block_.L_400d35 ], [ %.pre43, %block_400c49 ]
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -64
  %517 = add i64 %514, 3
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i567, align 8
  %521 = add i64 %515, -8
  %522 = add i64 %514, 6
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = add i32 %524, -1
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RCX.i554, align 8
  %527 = lshr i32 %525, 31
  %528 = sub i32 %519, %525
  %529 = icmp ult i32 %519, %525
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %74, align 1
  %531 = and i32 %528, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %75, align 1
  %536 = xor i32 %525, %519
  %537 = xor i32 %536, %528
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %76, align 1
  %541 = icmp eq i32 %528, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %77, align 1
  %543 = lshr i32 %528, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %78, align 1
  %545 = lshr i32 %519, 31
  %546 = xor i32 %527, %545
  %547 = xor i32 %543, %545
  %548 = add nuw nsw i32 %547, %546
  %549 = icmp eq i32 %548, 2
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %79, align 1
  %551 = icmp ne i8 %544, 0
  %552 = xor i1 %551, %549
  %.demorgan52 = or i1 %541, %552
  %.v55 = select i1 %.demorgan52, i64 17, i64 307
  %553 = add i64 %514, %.v55
  store i64 %553, i64* %3, align 8
  br i1 %.demorgan52, label %block_400c60, label %block_.L_400d82

block_400c60:                                     ; preds = %block_.L_400c4f
  %554 = add i64 %515, -48
  %555 = add i64 %553, 4
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RAX.i567, align 8
  %558 = add i64 %515, -68
  %559 = add i64 %553, 8
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  %563 = mul nsw i64 %562, 1536
  store i64 %563, i64* %RCX.i554, align 8
  %564 = lshr i64 %563, 63
  %565 = add i64 %563, %557
  store i64 %565, i64* %RAX.i567, align 8
  %566 = icmp ult i64 %565, %557
  %567 = icmp ult i64 %565, %563
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %74, align 1
  %570 = trunc i64 %565 to i32
  %571 = and i32 %570, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %75, align 1
  %576 = xor i64 %557, %565
  %577 = lshr i64 %576, 4
  %578 = trunc i64 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %76, align 1
  %580 = icmp eq i64 %565, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %77, align 1
  %582 = lshr i64 %565, 63
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %78, align 1
  %584 = lshr i64 %557, 63
  %585 = xor i64 %582, %584
  %586 = xor i64 %582, %564
  %587 = add nuw nsw i64 %585, %586
  %588 = icmp eq i64 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %79, align 1
  %590 = add i64 %553, 22
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %518, align 4
  %592 = sext i32 %591 to i64
  %593 = shl nsw i64 %592, 8
  store i64 %593, i64* %RCX.i554, align 8
  %594 = add i64 %593, %565
  store i64 %594, i64* %RAX.i567, align 8
  %595 = icmp ult i64 %594, %565
  %596 = icmp ult i64 %594, %593
  %597 = or i1 %595, %596
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %74, align 1
  %599 = trunc i64 %594 to i32
  %600 = and i32 %599, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %75, align 1
  %605 = xor i64 %565, %594
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %76, align 1
  %609 = icmp eq i64 %594, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %77, align 1
  %611 = lshr i64 %594, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %78, align 1
  %613 = lshr i64 %592, 55
  %614 = and i64 %613, 1
  %615 = xor i64 %611, %582
  %616 = xor i64 %611, %614
  %617 = add nuw nsw i64 %615, %616
  %618 = icmp eq i64 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %79, align 1
  %620 = inttoptr i64 %594 to i32*
  %621 = add i64 %553, 31
  store i64 %621, i64* %3, align 8
  %622 = load i32, i32* %620, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RDX.i474, align 8
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -56
  %626 = add i64 %553, 35
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RAX.i567, align 8
  %629 = add i64 %624, -68
  %630 = add i64 %553, 39
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = mul nsw i64 %633, 1536
  store i64 %634, i64* %RCX.i554, align 8
  %635 = lshr i64 %634, 63
  %636 = add i64 %634, %628
  store i64 %636, i64* %RAX.i567, align 8
  %637 = icmp ult i64 %636, %628
  %638 = icmp ult i64 %636, %634
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %74, align 1
  %641 = trunc i64 %636 to i32
  %642 = and i32 %641, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %75, align 1
  %647 = xor i64 %628, %636
  %648 = lshr i64 %647, 4
  %649 = trunc i64 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %76, align 1
  %651 = icmp eq i64 %636, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %77, align 1
  %653 = lshr i64 %636, 63
  %654 = trunc i64 %653 to i8
  store i8 %654, i8* %78, align 1
  %655 = lshr i64 %628, 63
  %656 = xor i64 %653, %655
  %657 = xor i64 %653, %635
  %658 = add nuw nsw i64 %656, %657
  %659 = icmp eq i64 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %79, align 1
  %661 = add i64 %624, -64
  %662 = add i64 %553, 53
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = sext i32 %664 to i64
  %666 = shl nsw i64 %665, 8
  store i64 %666, i64* %RCX.i554, align 8
  %667 = add i64 %666, %636
  store i64 %667, i64* %RAX.i567, align 8
  %668 = icmp ult i64 %667, %636
  %669 = icmp ult i64 %667, %666
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %74, align 1
  %672 = trunc i64 %667 to i32
  %673 = and i32 %672, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %75, align 1
  %678 = xor i64 %636, %667
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %76, align 1
  %682 = icmp eq i64 %667, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %77, align 1
  %684 = lshr i64 %667, 63
  %685 = trunc i64 %684 to i8
  store i8 %685, i8* %78, align 1
  %686 = lshr i64 %665, 55
  %687 = and i64 %686, 1
  %688 = xor i64 %684, %653
  %689 = xor i64 %684, %687
  %690 = add nuw nsw i64 %688, %689
  %691 = icmp eq i64 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %79, align 1
  %693 = inttoptr i64 %667 to i32*
  %694 = load i32, i32* %EDX.i557, align 4
  %695 = add i64 %553, 62
  store i64 %695, i64* %3, align 8
  store i32 %694, i32* %693, align 4
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -72
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 7
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %697 to i32*
  store i32 1, i32* %700, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_400ca5

block_.L_400ca5:                                  ; preds = %block_400cb6, %block_400c60
  %701 = phi i64 [ %1063, %block_400cb6 ], [ %.pre44, %block_400c60 ]
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -72
  %704 = add i64 %701, 3
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RAX.i567, align 8
  %708 = add i64 %702, -12
  %709 = add i64 %701, 6
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = add i32 %711, -1
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RCX.i554, align 8
  %714 = lshr i32 %712, 31
  %715 = sub i32 %706, %712
  %716 = icmp ult i32 %706, %712
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %74, align 1
  %718 = and i32 %715, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %75, align 1
  %723 = xor i32 %712, %706
  %724 = xor i32 %723, %715
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %76, align 1
  %728 = icmp eq i32 %715, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %77, align 1
  %730 = lshr i32 %715, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %78, align 1
  %732 = lshr i32 %706, 31
  %733 = xor i32 %714, %732
  %734 = xor i32 %730, %732
  %735 = add nuw nsw i32 %734, %733
  %736 = icmp eq i32 %735, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %79, align 1
  %738 = icmp ne i8 %731, 0
  %739 = xor i1 %738, %736
  %.demorgan53 = or i1 %728, %739
  %.v54 = select i1 %.demorgan53, i64 17, i64 144
  %740 = add i64 %701, %.v54
  %741 = add i64 %702, -56
  %742 = add i64 %740, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i567, align 8
  %745 = add i64 %702, -68
  %746 = add i64 %740, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = sext i32 %748 to i64
  %750 = mul nsw i64 %749, 1536
  store i64 %750, i64* %RCX.i554, align 8
  %751 = lshr i64 %750, 63
  %752 = add i64 %750, %744
  store i64 %752, i64* %RAX.i567, align 8
  %753 = icmp ult i64 %752, %744
  %754 = icmp ult i64 %752, %750
  %755 = or i1 %753, %754
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %74, align 1
  %757 = trunc i64 %752 to i32
  %758 = and i32 %757, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %75, align 1
  %763 = xor i64 %744, %752
  %764 = lshr i64 %763, 4
  %765 = trunc i64 %764 to i8
  %766 = and i8 %765, 1
  store i8 %766, i8* %76, align 1
  %767 = icmp eq i64 %752, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %77, align 1
  %769 = lshr i64 %752, 63
  %770 = trunc i64 %769 to i8
  store i8 %770, i8* %78, align 1
  %771 = lshr i64 %744, 63
  %772 = xor i64 %769, %771
  %773 = xor i64 %769, %751
  %774 = add nuw nsw i64 %772, %773
  %775 = icmp eq i64 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %79, align 1
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -64
  %779 = add i64 %740, 22
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = sext i32 %781 to i64
  %783 = shl nsw i64 %782, 8
  store i64 %783, i64* %RCX.i554, align 8
  %784 = add i64 %740, 29
  store i64 %784, i64* %3, align 8
  %785 = add i64 %783, %752
  store i64 %785, i64* %RAX.i567, align 8
  %786 = icmp ult i64 %785, %752
  %787 = icmp ult i64 %785, %783
  %788 = or i1 %786, %787
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %74, align 1
  %790 = trunc i64 %785 to i32
  %791 = and i32 %790, 255
  %792 = tail call i32 @llvm.ctpop.i32(i32 %791)
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, i8* %75, align 1
  %796 = xor i64 %752, %785
  %797 = lshr i64 %796, 4
  %798 = trunc i64 %797 to i8
  %799 = and i8 %798, 1
  store i8 %799, i8* %76, align 1
  %800 = icmp eq i64 %785, 0
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %77, align 1
  %802 = lshr i64 %785, 63
  %803 = trunc i64 %802 to i8
  store i8 %803, i8* %78, align 1
  %804 = lshr i64 %782, 55
  %805 = and i64 %804, 1
  %806 = xor i64 %802, %769
  %807 = xor i64 %802, %805
  %808 = add nuw nsw i64 %806, %807
  %809 = icmp eq i64 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %79, align 1
  br i1 %.demorgan53, label %block_400cb6, label %block_.L_400d35

block_400cb6:                                     ; preds = %block_.L_400ca5
  %811 = add i64 %777, -72
  %812 = add i64 %740, 32
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = add i32 %814, -1
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RDX.i474, align 8
  %817 = icmp eq i32 %814, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %74, align 1
  %819 = and i32 %815, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %75, align 1
  %824 = xor i32 %815, %814
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %76, align 1
  %828 = icmp eq i32 %815, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %77, align 1
  %830 = lshr i32 %815, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %78, align 1
  %832 = lshr i32 %814, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %832
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %79, align 1
  %837 = sext i32 %815 to i64
  store i64 %837, i64* %RCX.i554, align 8
  %838 = shl nsw i64 %837, 2
  %839 = add i64 %785, %838
  %840 = add i64 %740, 41
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RDX.i474, align 8
  %844 = add i64 %777, -48
  %845 = add i64 %740, 45
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RAX.i567, align 8
  %848 = add i64 %777, -68
  %849 = add i64 %740, 49
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = sext i32 %851 to i64
  %853 = mul nsw i64 %852, 1536
  store i64 %853, i64* %RCX.i554, align 8
  %854 = lshr i64 %853, 63
  %855 = add i64 %853, %847
  store i64 %855, i64* %RAX.i567, align 8
  %856 = icmp ult i64 %855, %847
  %857 = icmp ult i64 %855, %853
  %858 = or i1 %856, %857
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %74, align 1
  %860 = trunc i64 %855 to i32
  %861 = and i32 %860, 255
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %75, align 1
  %866 = xor i64 %847, %855
  %867 = lshr i64 %866, 4
  %868 = trunc i64 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %76, align 1
  %870 = icmp eq i64 %855, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %77, align 1
  %872 = lshr i64 %855, 63
  %873 = trunc i64 %872 to i8
  store i8 %873, i8* %78, align 1
  %874 = lshr i64 %847, 63
  %875 = xor i64 %872, %874
  %876 = xor i64 %872, %854
  %877 = add nuw nsw i64 %875, %876
  %878 = icmp eq i64 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %79, align 1
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -64
  %882 = add i64 %740, 63
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = sext i32 %884 to i64
  %886 = shl nsw i64 %885, 8
  store i64 %886, i64* %RCX.i554, align 8
  %887 = add i64 %886, %855
  store i64 %887, i64* %RAX.i567, align 8
  %888 = icmp ult i64 %887, %855
  %889 = icmp ult i64 %887, %886
  %890 = or i1 %888, %889
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %74, align 1
  %892 = trunc i64 %887 to i32
  %893 = and i32 %892, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %75, align 1
  %898 = xor i64 %855, %887
  %899 = lshr i64 %898, 4
  %900 = trunc i64 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %76, align 1
  %902 = icmp eq i64 %887, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %77, align 1
  %904 = lshr i64 %887, 63
  %905 = trunc i64 %904 to i8
  store i8 %905, i8* %78, align 1
  %906 = lshr i64 %885, 55
  %907 = and i64 %906, 1
  %908 = xor i64 %904, %872
  %909 = xor i64 %904, %907
  %910 = add nuw nsw i64 %908, %909
  %911 = icmp eq i64 %910, 2
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %79, align 1
  %913 = add i64 %880, -72
  %914 = add i64 %740, 74
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = sext i32 %916 to i64
  store i64 %917, i64* %RCX.i554, align 8
  %918 = load i64, i64* %RDX.i474, align 8
  %919 = shl nsw i64 %917, 2
  %920 = add i64 %887, %919
  %921 = add i64 %740, 77
  store i64 %921, i64* %3, align 8
  %922 = trunc i64 %918 to i32
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i32 %924, %922
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDX.i474, align 8
  %927 = icmp ult i32 %925, %922
  %928 = icmp ult i32 %925, %924
  %929 = or i1 %927, %928
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %74, align 1
  %931 = and i32 %925, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %75, align 1
  %936 = xor i32 %924, %922
  %937 = xor i32 %936, %925
  %938 = lshr i32 %937, 4
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %76, align 1
  %941 = icmp eq i32 %925, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %77, align 1
  %943 = lshr i32 %925, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %78, align 1
  %945 = lshr i32 %922, 31
  %946 = lshr i32 %924, 31
  %947 = xor i32 %943, %945
  %948 = xor i32 %943, %946
  %949 = add nuw nsw i32 %947, %948
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %79, align 1
  %952 = load i64, i64* %RBP.i, align 8
  %953 = add i64 %952, -56
  %954 = add i64 %740, 81
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RAX.i567, align 8
  %957 = add i64 %952, -68
  %958 = add i64 %740, 85
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sext i32 %960 to i64
  %962 = mul nsw i64 %961, 1536
  store i64 %962, i64* %RCX.i554, align 8
  %963 = lshr i64 %962, 63
  %964 = add i64 %962, %956
  store i64 %964, i64* %RAX.i567, align 8
  %965 = icmp ult i64 %964, %956
  %966 = icmp ult i64 %964, %962
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %74, align 1
  %969 = trunc i64 %964 to i32
  %970 = and i32 %969, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %75, align 1
  %975 = xor i64 %956, %964
  %976 = lshr i64 %975, 4
  %977 = trunc i64 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %76, align 1
  %979 = icmp eq i64 %964, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %77, align 1
  %981 = lshr i64 %964, 63
  %982 = trunc i64 %981 to i8
  store i8 %982, i8* %78, align 1
  %983 = lshr i64 %956, 63
  %984 = xor i64 %981, %983
  %985 = xor i64 %981, %963
  %986 = add nuw nsw i64 %984, %985
  %987 = icmp eq i64 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %79, align 1
  %989 = add i64 %952, -64
  %990 = add i64 %740, 99
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = sext i32 %992 to i64
  %994 = shl nsw i64 %993, 8
  store i64 %994, i64* %RCX.i554, align 8
  %995 = add i64 %994, %964
  store i64 %995, i64* %RAX.i567, align 8
  %996 = icmp ult i64 %995, %964
  %997 = icmp ult i64 %995, %994
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %74, align 1
  %1000 = trunc i64 %995 to i32
  %1001 = and i32 %1000, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %75, align 1
  %1006 = xor i64 %964, %995
  %1007 = lshr i64 %1006, 4
  %1008 = trunc i64 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %76, align 1
  %1010 = icmp eq i64 %995, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %77, align 1
  %1012 = lshr i64 %995, 63
  %1013 = trunc i64 %1012 to i8
  store i8 %1013, i8* %78, align 1
  %1014 = lshr i64 %993, 55
  %1015 = and i64 %1014, 1
  %1016 = xor i64 %1012, %981
  %1017 = xor i64 %1012, %1015
  %1018 = add nuw nsw i64 %1016, %1017
  %1019 = icmp eq i64 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %79, align 1
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -72
  %1023 = add i64 %740, 110
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = sext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i554, align 8
  %1027 = shl nsw i64 %1026, 2
  %1028 = add i64 %1027, %995
  %1029 = load i32, i32* %EDX.i557, align 4
  %1030 = add i64 %740, 113
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1028 to i32*
  store i32 %1029, i32* %1031, align 4
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -72
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = add i32 %1037, 1
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RAX.i567, align 8
  %1040 = icmp eq i32 %1037, -1
  %1041 = icmp eq i32 %1038, 0
  %1042 = or i1 %1040, %1041
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %74, align 1
  %1044 = and i32 %1038, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %75, align 1
  %1049 = xor i32 %1038, %1037
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %76, align 1
  %1053 = zext i1 %1041 to i8
  store i8 %1053, i8* %77, align 1
  %1054 = lshr i32 %1038, 31
  %1055 = trunc i32 %1054 to i8
  store i8 %1055, i8* %78, align 1
  %1056 = lshr i32 %1037, 31
  %1057 = xor i32 %1054, %1056
  %1058 = add nuw nsw i32 %1057, %1054
  %1059 = icmp eq i32 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %79, align 1
  %1061 = add i64 %1034, 9
  store i64 %1061, i64* %3, align 8
  store i32 %1038, i32* %1036, align 4
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, -139
  store i64 %1063, i64* %3, align 8
  br label %block_.L_400ca5

block_.L_400d35:                                  ; preds = %block_.L_400ca5
  %1064 = add i64 %777, -12
  %1065 = add i64 %740, 32
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, -1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RDX.i474, align 8
  %1070 = icmp eq i32 %1067, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %74, align 1
  %1072 = and i32 %1068, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %75, align 1
  %1077 = xor i32 %1068, %1067
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %76, align 1
  %1081 = icmp eq i32 %1068, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %77, align 1
  %1083 = lshr i32 %1068, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %78, align 1
  %1085 = lshr i32 %1067, 31
  %1086 = xor i32 %1083, %1085
  %1087 = add nuw nsw i32 %1086, %1085
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %79, align 1
  %1090 = sext i32 %1068 to i64
  store i64 %1090, i64* %RCX.i554, align 8
  %1091 = shl nsw i64 %1090, 2
  %1092 = add i64 %785, %1091
  %1093 = add i64 %740, 41
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RDX.i474, align 8
  %1097 = add i64 %777, -32
  %1098 = add i64 %740, 45
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RAX.i567, align 8
  %1101 = add i64 %777, -68
  %1102 = add i64 %740, 49
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = mul nsw i64 %1105, 24
  store i64 %1106, i64* %RCX.i554, align 8
  %1107 = lshr i64 %1106, 63
  %1108 = add i64 %1106, %1100
  store i64 %1108, i64* %RAX.i567, align 8
  %1109 = icmp ult i64 %1108, %1100
  %1110 = icmp ult i64 %1108, %1106
  %1111 = or i1 %1109, %1110
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %74, align 1
  %1113 = trunc i64 %1108 to i32
  %1114 = and i32 %1113, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %75, align 1
  %1119 = xor i64 %1106, %1100
  %1120 = xor i64 %1119, %1108
  %1121 = lshr i64 %1120, 4
  %1122 = trunc i64 %1121 to i8
  %1123 = and i8 %1122, 1
  store i8 %1123, i8* %76, align 1
  %1124 = icmp eq i64 %1108, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %77, align 1
  %1126 = lshr i64 %1108, 63
  %1127 = trunc i64 %1126 to i8
  store i8 %1127, i8* %78, align 1
  %1128 = lshr i64 %1100, 63
  %1129 = xor i64 %1126, %1128
  %1130 = xor i64 %1126, %1107
  %1131 = add nuw nsw i64 %1129, %1130
  %1132 = icmp eq i64 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %79, align 1
  %1134 = load i64, i64* %RBP.i, align 8
  %1135 = add i64 %1134, -64
  %1136 = add i64 %740, 60
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RCX.i554, align 8
  %1140 = shl nsw i64 %1139, 2
  %1141 = add i64 %1140, %1108
  %1142 = add i64 %740, 63
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  store i32 %1095, i32* %1143, align 4
  %1144 = load i64, i64* %RBP.i, align 8
  %1145 = add i64 %1144, -64
  %1146 = load i64, i64* %3, align 8
  %1147 = add i64 %1146, 3
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1145 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = add i32 %1149, 1
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i567, align 8
  %1152 = icmp eq i32 %1149, -1
  %1153 = icmp eq i32 %1150, 0
  %1154 = or i1 %1152, %1153
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %74, align 1
  %1156 = and i32 %1150, 255
  %1157 = tail call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  store i8 %1160, i8* %75, align 1
  %1161 = xor i32 %1150, %1149
  %1162 = lshr i32 %1161, 4
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  store i8 %1164, i8* %76, align 1
  %1165 = zext i1 %1153 to i8
  store i8 %1165, i8* %77, align 1
  %1166 = lshr i32 %1150, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %78, align 1
  %1168 = lshr i32 %1149, 31
  %1169 = xor i32 %1166, %1168
  %1170 = add nuw nsw i32 %1169, %1166
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %79, align 1
  %1173 = add i64 %1146, 9
  store i64 %1173, i64* %3, align 8
  store i32 %1150, i32* %1148, align 4
  %1174 = load i64, i64* %3, align 8
  %1175 = add i64 %1174, -302
  store i64 %1175, i64* %3, align 8
  br label %block_.L_400c4f

block_.L_400d82:                                  ; preds = %block_.L_400c4f
  %1176 = add i64 %515, -68
  %1177 = add i64 %553, 8
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, 1
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RAX.i567, align 8
  %1182 = icmp eq i32 %1179, -1
  %1183 = icmp eq i32 %1180, 0
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %74, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %75, align 1
  %1191 = xor i32 %1180, %1179
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %76, align 1
  %1195 = zext i1 %1183 to i8
  store i8 %1195, i8* %77, align 1
  %1196 = lshr i32 %1180, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %78, align 1
  %1198 = lshr i32 %1179, 31
  %1199 = xor i32 %1196, %1198
  %1200 = add nuw nsw i32 %1199, %1196
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %79, align 1
  %1203 = add i64 %553, 14
  store i64 %1203, i64* %3, align 8
  store i32 %1180, i32* %1178, align 4
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, -344
  store i64 %1205, i64* %3, align 8
  br label %block_.L_400c38

block_.L_400d95:                                  ; preds = %block_.L_400c38
  %1206 = add i64 %469, -64
  %1207 = add i64 %507, 7
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  store i32 0, i32* %1208, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_400d9c

block_.L_400d9c:                                  ; preds = %block_400dad, %block_.L_400d95
  %1209 = phi i64 [ %1304, %block_400dad ], [ %.pre45, %block_.L_400d95 ]
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -64
  %1212 = add i64 %1209, 3
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i567, align 8
  %1216 = add i64 %1210, -8
  %1217 = add i64 %1209, 6
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = add i32 %1219, -1
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RCX.i554, align 8
  %1222 = lshr i32 %1220, 31
  %1223 = sub i32 %1214, %1220
  %1224 = icmp ult i32 %1214, %1220
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %74, align 1
  %1226 = and i32 %1223, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %75, align 1
  %1231 = xor i32 %1220, %1214
  %1232 = xor i32 %1231, %1223
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  store i8 %1235, i8* %76, align 1
  %1236 = icmp eq i32 %1223, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %77, align 1
  %1238 = lshr i32 %1223, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %78, align 1
  %1240 = lshr i32 %1214, 31
  %1241 = xor i32 %1222, %1240
  %1242 = xor i32 %1238, %1240
  %1243 = add nuw nsw i32 %1242, %1241
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %79, align 1
  %1246 = icmp ne i8 %1239, 0
  %1247 = xor i1 %1246, %1244
  %.demorgan56 = or i1 %1236, %1247
  %.v64 = select i1 %.demorgan56, i64 17, i64 53
  %1248 = add i64 %1209, %.v64
  store i64 %1248, i64* %3, align 8
  br i1 %.demorgan56, label %block_400dad, label %block_.L_400dd1

block_400dad:                                     ; preds = %block_.L_400d9c
  %1249 = add i64 %1210, -32
  %1250 = add i64 %1248, 4
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RAX.i567, align 8
  %1253 = add i64 %1248, 8
  store i64 %1253, i64* %3, align 8
  %1254 = load i32, i32* %1213, align 4
  %1255 = sext i32 %1254 to i64
  store i64 %1255, i64* %RCX.i554, align 8
  %1256 = shl nsw i64 %1255, 2
  %1257 = add i64 %1256, %1252
  %1258 = add i64 %1248, 11
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RDX.i474, align 8
  %1262 = add i64 %1210, -40
  %1263 = add i64 %1248, 15
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i64*
  %1265 = load i64, i64* %1264, align 8
  store i64 %1265, i64* %RAX.i567, align 8
  %1266 = add i64 %1248, 19
  store i64 %1266, i64* %3, align 8
  %1267 = load i32, i32* %1213, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RCX.i554, align 8
  %1269 = shl nsw i64 %1268, 2
  %1270 = add i64 %1269, %1265
  %1271 = add i64 %1248, 22
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  store i32 %1260, i32* %1272, align 4
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -64
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 3
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = add i32 %1278, 1
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i567, align 8
  %1281 = icmp eq i32 %1278, -1
  %1282 = icmp eq i32 %1279, 0
  %1283 = or i1 %1281, %1282
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %74, align 1
  %1285 = and i32 %1279, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %75, align 1
  %1290 = xor i32 %1279, %1278
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %76, align 1
  %1294 = zext i1 %1282 to i8
  store i8 %1294, i8* %77, align 1
  %1295 = lshr i32 %1279, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %78, align 1
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1295, %1297
  %1299 = add nuw nsw i32 %1298, %1295
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %79, align 1
  %1302 = add i64 %1275, 9
  store i64 %1302, i64* %3, align 8
  store i32 %1279, i32* %1277, align 4
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, -48
  store i64 %1304, i64* %3, align 8
  br label %block_.L_400d9c

block_.L_400dd1:                                  ; preds = %block_.L_400d9c
  %1305 = add i64 %1210, -68
  %1306 = add i64 %1248, 7
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  store i32 1, i32* %1307, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_400dd8

block_.L_400dd8:                                  ; preds = %block_.L_400e5a, %block_.L_400dd1
  %1308 = phi i64 [ %1651, %block_.L_400e5a ], [ %.pre46, %block_.L_400dd1 ]
  %1309 = load i64, i64* %RBP.i, align 8
  %1310 = add i64 %1309, -68
  %1311 = add i64 %1308, 3
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX.i567, align 8
  %1315 = add i64 %1309, -8
  %1316 = add i64 %1308, 6
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = add i32 %1318, -1
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RCX.i554, align 8
  %1321 = lshr i32 %1319, 31
  %1322 = sub i32 %1313, %1319
  %1323 = icmp ult i32 %1313, %1319
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %74, align 1
  %1325 = and i32 %1322, 255
  %1326 = tail call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %75, align 1
  %1330 = xor i32 %1319, %1313
  %1331 = xor i32 %1330, %1322
  %1332 = lshr i32 %1331, 4
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  store i8 %1334, i8* %76, align 1
  %1335 = icmp eq i32 %1322, 0
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %77, align 1
  %1337 = lshr i32 %1322, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %78, align 1
  %1339 = lshr i32 %1313, 31
  %1340 = xor i32 %1321, %1339
  %1341 = xor i32 %1337, %1339
  %1342 = add nuw nsw i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %79, align 1
  %1345 = icmp ne i8 %1338, 0
  %1346 = xor i1 %1345, %1343
  %.demorgan57 = or i1 %1335, %1346
  %.v60 = select i1 %.demorgan57, i64 17, i64 149
  %1347 = add i64 %1308, %.v60
  store i64 %1347, i64* %3, align 8
  br i1 %.demorgan57, label %block_400de9, label %block_.L_400e6d

block_400de9:                                     ; preds = %block_.L_400dd8
  %1348 = add i64 %1347, 3
  store i64 %1348, i64* %3, align 8
  %1349 = load i32, i32* %1312, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RAX.i567, align 8
  %1351 = add i64 %1309, -64
  %1352 = add i64 %1347, 6
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  store i32 %1349, i32* %1353, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_400def

block_.L_400def:                                  ; preds = %block_400e00, %block_400de9
  %1354 = phi i64 [ %1621, %block_400e00 ], [ %.pre47, %block_400de9 ]
  %1355 = load i64, i64* %RBP.i, align 8
  %1356 = add i64 %1355, -64
  %1357 = add i64 %1354, 3
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i567, align 8
  %1361 = add i64 %1355, -8
  %1362 = add i64 %1354, 6
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = add i32 %1364, -1
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i554, align 8
  %1367 = lshr i32 %1365, 31
  %1368 = sub i32 %1359, %1365
  %1369 = icmp ult i32 %1359, %1365
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %74, align 1
  %1371 = and i32 %1368, 255
  %1372 = tail call i32 @llvm.ctpop.i32(i32 %1371)
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %75, align 1
  %1376 = xor i32 %1365, %1359
  %1377 = xor i32 %1376, %1368
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %76, align 1
  %1381 = icmp eq i32 %1368, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %77, align 1
  %1383 = lshr i32 %1368, 31
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, i8* %78, align 1
  %1385 = lshr i32 %1359, 31
  %1386 = xor i32 %1367, %1385
  %1387 = xor i32 %1383, %1385
  %1388 = add nuw nsw i32 %1387, %1386
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %79, align 1
  %1391 = icmp ne i8 %1384, 0
  %1392 = xor i1 %1391, %1389
  %.demorgan58 = or i1 %1381, %1392
  %.v59 = select i1 %.demorgan58, i64 17, i64 107
  %1393 = add i64 %1354, %.v59
  store i64 %1393, i64* %3, align 8
  br i1 %.demorgan58, label %block_400e00, label %block_.L_400e5a

block_400e00:                                     ; preds = %block_.L_400def
  %1394 = add i64 %1355, -40
  %1395 = add i64 %1393, 4
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RAX.i567, align 8
  %1398 = add i64 %1355, -68
  %1399 = add i64 %1393, 7
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = add i32 %1401, -1
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RCX.i554, align 8
  %1404 = sext i32 %1402 to i64
  %1405 = mul nsw i64 %1404, 24
  store i64 %1405, i64* %RDX.i474, align 8
  %1406 = lshr i64 %1405, 63
  %1407 = add i64 %1405, %1397
  store i64 %1407, i64* %RAX.i567, align 8
  %1408 = icmp ult i64 %1407, %1397
  %1409 = icmp ult i64 %1407, %1405
  %1410 = or i1 %1408, %1409
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %74, align 1
  %1412 = trunc i64 %1407 to i32
  %1413 = and i32 %1412, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %75, align 1
  %1418 = xor i64 %1405, %1397
  %1419 = xor i64 %1418, %1407
  %1420 = lshr i64 %1419, 4
  %1421 = trunc i64 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %76, align 1
  %1423 = icmp eq i64 %1407, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %77, align 1
  %1425 = lshr i64 %1407, 63
  %1426 = trunc i64 %1425 to i8
  store i8 %1426, i8* %78, align 1
  %1427 = lshr i64 %1397, 63
  %1428 = xor i64 %1425, %1427
  %1429 = xor i64 %1425, %1406
  %1430 = add nuw nsw i64 %1428, %1429
  %1431 = icmp eq i64 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %79, align 1
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -64
  %1435 = add i64 %1393, 23
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = add i32 %1437, -1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i554, align 8
  %1440 = icmp eq i32 %1437, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %74, align 1
  %1442 = and i32 %1438, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %75, align 1
  %1447 = xor i32 %1438, %1437
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %76, align 1
  %1451 = icmp eq i32 %1438, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %77, align 1
  %1453 = lshr i32 %1438, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %78, align 1
  %1455 = lshr i32 %1437, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %79, align 1
  %1460 = sext i32 %1438 to i64
  store i64 %1460, i64* %RDX.i474, align 8
  %1461 = shl nsw i64 %1460, 2
  %1462 = add i64 %1407, %1461
  %1463 = add i64 %1393, 32
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i554, align 8
  %1467 = add i64 %1433, -32
  %1468 = add i64 %1393, 36
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RAX.i567, align 8
  %1471 = add i64 %1433, -68
  %1472 = add i64 %1393, 40
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sext i32 %1474 to i64
  %1476 = mul nsw i64 %1475, 24
  store i64 %1476, i64* %RDX.i474, align 8
  %1477 = lshr i64 %1476, 63
  %1478 = add i64 %1476, %1470
  store i64 %1478, i64* %RAX.i567, align 8
  %1479 = icmp ult i64 %1478, %1470
  %1480 = icmp ult i64 %1478, %1476
  %1481 = or i1 %1479, %1480
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %74, align 1
  %1483 = trunc i64 %1478 to i32
  %1484 = and i32 %1483, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %75, align 1
  %1489 = xor i64 %1476, %1470
  %1490 = xor i64 %1489, %1478
  %1491 = lshr i64 %1490, 4
  %1492 = trunc i64 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %76, align 1
  %1494 = icmp eq i64 %1478, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %77, align 1
  %1496 = lshr i64 %1478, 63
  %1497 = trunc i64 %1496 to i8
  store i8 %1497, i8* %78, align 1
  %1498 = lshr i64 %1470, 63
  %1499 = xor i64 %1496, %1498
  %1500 = xor i64 %1496, %1477
  %1501 = add nuw nsw i64 %1499, %1500
  %1502 = icmp eq i64 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %79, align 1
  %1504 = load i64, i64* %RBP.i, align 8
  %1505 = add i64 %1504, -64
  %1506 = add i64 %1393, 51
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RDX.i474, align 8
  %1510 = shl nsw i64 %1509, 2
  %1511 = add i64 %1478, %1510
  %1512 = add i64 %1393, 54
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = add i32 %1514, %1465
  %1516 = zext i32 %1515 to i64
  store i64 %1516, i64* %RCX.i554, align 8
  %1517 = icmp ult i32 %1515, %1465
  %1518 = icmp ult i32 %1515, %1514
  %1519 = or i1 %1517, %1518
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %74, align 1
  %1521 = and i32 %1515, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %75, align 1
  %1526 = xor i32 %1514, %1465
  %1527 = xor i32 %1526, %1515
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %76, align 1
  %1531 = icmp eq i32 %1515, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %77, align 1
  %1533 = lshr i32 %1515, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %78, align 1
  %1535 = lshr i32 %1465, 31
  %1536 = lshr i32 %1514, 31
  %1537 = xor i32 %1533, %1535
  %1538 = xor i32 %1533, %1536
  %1539 = add nuw nsw i32 %1537, %1538
  %1540 = icmp eq i32 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %79, align 1
  %1542 = add i64 %1504, -40
  %1543 = add i64 %1393, 58
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i64*
  %1545 = load i64, i64* %1544, align 8
  store i64 %1545, i64* %RAX.i567, align 8
  %1546 = add i64 %1504, -68
  %1547 = add i64 %1393, 62
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = sext i32 %1549 to i64
  %1551 = mul nsw i64 %1550, 24
  store i64 %1551, i64* %RDX.i474, align 8
  %1552 = lshr i64 %1551, 63
  %1553 = add i64 %1551, %1545
  store i64 %1553, i64* %RAX.i567, align 8
  %1554 = icmp ult i64 %1553, %1545
  %1555 = icmp ult i64 %1553, %1551
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %74, align 1
  %1558 = trunc i64 %1553 to i32
  %1559 = and i32 %1558, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %75, align 1
  %1564 = xor i64 %1551, %1545
  %1565 = xor i64 %1564, %1553
  %1566 = lshr i64 %1565, 4
  %1567 = trunc i64 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %76, align 1
  %1569 = icmp eq i64 %1553, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %77, align 1
  %1571 = lshr i64 %1553, 63
  %1572 = trunc i64 %1571 to i8
  store i8 %1572, i8* %78, align 1
  %1573 = lshr i64 %1545, 63
  %1574 = xor i64 %1571, %1573
  %1575 = xor i64 %1571, %1552
  %1576 = add nuw nsw i64 %1574, %1575
  %1577 = icmp eq i64 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %79, align 1
  %1579 = load i64, i64* %RBP.i, align 8
  %1580 = add i64 %1579, -64
  %1581 = add i64 %1393, 73
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = sext i32 %1583 to i64
  store i64 %1584, i64* %RDX.i474, align 8
  %1585 = shl nsw i64 %1584, 2
  %1586 = add i64 %1585, %1553
  %1587 = load i32, i32* %ECX.i524, align 4
  %1588 = add i64 %1393, 76
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1586 to i32*
  store i32 %1587, i32* %1589, align 4
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -64
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = add i32 %1595, 1
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RAX.i567, align 8
  %1598 = icmp eq i32 %1595, -1
  %1599 = icmp eq i32 %1596, 0
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %74, align 1
  %1602 = and i32 %1596, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %75, align 1
  %1607 = xor i32 %1596, %1595
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %76, align 1
  %1611 = zext i1 %1599 to i8
  store i8 %1611, i8* %77, align 1
  %1612 = lshr i32 %1596, 31
  %1613 = trunc i32 %1612 to i8
  store i8 %1613, i8* %78, align 1
  %1614 = lshr i32 %1595, 31
  %1615 = xor i32 %1612, %1614
  %1616 = add nuw nsw i32 %1615, %1612
  %1617 = icmp eq i32 %1616, 2
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %79, align 1
  %1619 = add i64 %1592, 9
  store i64 %1619, i64* %3, align 8
  store i32 %1596, i32* %1594, align 4
  %1620 = load i64, i64* %3, align 8
  %1621 = add i64 %1620, -102
  store i64 %1621, i64* %3, align 8
  br label %block_.L_400def

block_.L_400e5a:                                  ; preds = %block_.L_400def
  %1622 = add i64 %1355, -68
  %1623 = add i64 %1393, 8
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = add i32 %1625, 1
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RAX.i567, align 8
  %1628 = icmp eq i32 %1625, -1
  %1629 = icmp eq i32 %1626, 0
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %74, align 1
  %1632 = and i32 %1626, 255
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %75, align 1
  %1637 = xor i32 %1626, %1625
  %1638 = lshr i32 %1637, 4
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  store i8 %1640, i8* %76, align 1
  %1641 = zext i1 %1629 to i8
  store i8 %1641, i8* %77, align 1
  %1642 = lshr i32 %1626, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %78, align 1
  %1644 = lshr i32 %1625, 31
  %1645 = xor i32 %1642, %1644
  %1646 = add nuw nsw i32 %1645, %1642
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %79, align 1
  %1649 = add i64 %1393, 14
  store i64 %1649, i64* %3, align 8
  store i32 %1626, i32* %1624, align 4
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, -144
  store i64 %1651, i64* %3, align 8
  br label %block_.L_400dd8

block_.L_400e6d:                                  ; preds = %block_.L_400dd8
  %1652 = add i64 %1309, -60
  %1653 = add i64 %1347, 8
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = add i32 %1655, 1
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i567, align 8
  %1658 = icmp eq i32 %1655, -1
  %1659 = icmp eq i32 %1656, 0
  %1660 = or i1 %1658, %1659
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %74, align 1
  %1662 = and i32 %1656, 255
  %1663 = tail call i32 @llvm.ctpop.i32(i32 %1662)
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  store i8 %1666, i8* %75, align 1
  %1667 = xor i32 %1656, %1655
  %1668 = lshr i32 %1667, 4
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %76, align 1
  %1671 = zext i1 %1659 to i8
  store i8 %1671, i8* %77, align 1
  %1672 = lshr i32 %1656, 31
  %1673 = trunc i32 %1672 to i8
  store i8 %1673, i8* %78, align 1
  %1674 = lshr i32 %1655, 31
  %1675 = xor i32 %1672, %1674
  %1676 = add nuw nsw i32 %1675, %1672
  %1677 = icmp eq i32 %1676, 2
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %79, align 1
  %1679 = add i64 %1347, 14
  store i64 %1679, i64* %3, align 8
  store i32 %1656, i32* %1654, align 4
  %1680 = load i64, i64* %3, align 8
  %1681 = add i64 %1680, -779
  store i64 %1681, i64* %3, align 8
  br label %block_.L_400b70

block_.L_400e80:                                  ; preds = %block_.L_400b70
  %1682 = add i64 %117, 1
  store i64 %1682, i64* %3, align 8
  %1683 = load i64, i64* %6, align 8
  %1684 = add i64 %1683, 8
  %1685 = inttoptr i64 %1683 to i64*
  %1686 = load i64, i64* %1685, align 8
  store i64 %1686, i64* %RBP.i, align 8
  store i64 %1684, i64* %6, align 8
  %1687 = add i64 %117, 2
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1684 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %3, align 8
  %1690 = add i64 %1683, 16
  store i64 %1690, i64* %6, align 8
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jge_.L_400e80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jg_.L_400c31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jg_.L_400c1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jg_.L_400c0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_imulq__0x600___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 1536
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %18, align 1
  %19 = lshr i64 %11, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ca5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400dd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400def(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
