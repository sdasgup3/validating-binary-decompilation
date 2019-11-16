; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @write_and_store_CBP_block_bit(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -232
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 224
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i1181 = bitcast %union.anon* %39 to i8*
  store i8 1, i8* %AL.i1181, align 1
  %RDI.i1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1178, align 8
  %42 = add i64 %10, 16
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1175 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1175, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1172 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -20
  %54 = load i32, i32* %EDX.i1172, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1169 = bitcast %union.anon* %58 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i32, i32* %ECX.i1169, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -20
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -1
  %72 = icmp eq i32 %70, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %26, align 1
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %29, align 1
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %32, align 1
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %38, align 1
  %92 = add i64 %65, -137
  %93 = load i8, i8* %AL.i1181, align 1
  %94 = add i64 %67, 10
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i8*
  store i8 %93, i8* %95, align 1
  %96 = load i64, i64* %3, align 8
  %97 = load i8, i8* %29, align 1
  %98 = icmp ne i8 %97, 0
  %.v125 = select i1 %98, i64 73, i64 6
  %99 = add i64 %96, %.v125
  store i64 %99, i64* %3, align 8
  %cmpBr_413145 = icmp eq i8 %97, 1
  br i1 %cmpBr_413145, label %block_.L_41318e, label %block_41314b

block_41314b:                                     ; preds = %entry
  store i8 1, i8* %AL.i1181, align 1
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -20
  %102 = add i64 %99, 6
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, -2
  %106 = icmp ult i32 %104, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i32 %105, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %26, align 1
  %117 = icmp eq i32 %105, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %29, align 1
  %119 = lshr i32 %105, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %32, align 1
  %121 = lshr i32 %104, 31
  %122 = xor i32 %119, %121
  %123 = add nuw nsw i32 %122, %121
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %38, align 1
  %126 = add i64 %100, -137
  %127 = add i64 %99, 12
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i8*
  store i8 1, i8* %128, align 1
  %129 = load i64, i64* %3, align 8
  %130 = load i8, i8* %29, align 1
  %131 = icmp ne i8 %130, 0
  %.v126 = select i1 %131, i64 55, i64 6
  %132 = add i64 %129, %.v126
  store i64 %132, i64* %3, align 8
  %cmpBr_413157 = icmp eq i8 %130, 1
  br i1 %cmpBr_413157, label %block_.L_41318e, label %block_41315d

block_41315d:                                     ; preds = %block_41314b
  store i8 1, i8* %AL.i1181, align 1
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -20
  %135 = add i64 %132, 6
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -3
  %139 = icmp ult i32 %137, 3
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1
  %146 = xor i32 %138, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %26, align 1
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %29, align 1
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %32, align 1
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %38, align 1
  %159 = add i64 %133, -137
  %160 = add i64 %132, 12
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i8*
  store i8 1, i8* %161, align 1
  %162 = load i64, i64* %3, align 8
  %163 = load i8, i8* %29, align 1
  %164 = icmp ne i8 %163, 0
  %.v127 = select i1 %164, i64 37, i64 6
  %165 = add i64 %162, %.v127
  store i64 %165, i64* %3, align 8
  %cmpBr_413169 = icmp eq i8 %163, 1
  br i1 %cmpBr_413169, label %block_.L_41318e, label %block_41316f

block_41316f:                                     ; preds = %block_41315d
  store i8 1, i8* %AL.i1181, align 1
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -20
  %168 = add i64 %165, 6
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, -4
  %172 = icmp ult i32 %170, 4
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = and i32 %171, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  %179 = xor i32 %171, %170
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %26, align 1
  %183 = icmp eq i32 %171, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %29, align 1
  %185 = lshr i32 %171, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %32, align 1
  %187 = lshr i32 %170, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %38, align 1
  %192 = add i64 %166, -137
  %193 = add i64 %165, 12
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i8*
  store i8 1, i8* %194, align 1
  %195 = load i64, i64* %3, align 8
  %196 = load i8, i8* %29, align 1
  %197 = icmp ne i8 %196, 0
  %.v128 = select i1 %197, i64 19, i64 6
  %198 = add i64 %195, %.v128
  store i64 %198, i64* %3, align 8
  %cmpBr_41317b = icmp eq i8 %196, 1
  br i1 %cmpBr_41317b, label %block_.L_41318e, label %block_413181

block_413181:                                     ; preds = %block_41316f
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -20
  %201 = add i64 %198, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, -5
  %205 = icmp ult i32 %203, 5
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %14, align 1
  %207 = and i32 %204, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %21, align 1
  %212 = xor i32 %204, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %26, align 1
  %216 = icmp eq i32 %204, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %29, align 1
  %218 = lshr i32 %204, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %32, align 1
  %220 = lshr i32 %203, 31
  %221 = xor i32 %218, %220
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %38, align 1
  store i8 %217, i8* %AL.i1181, align 1
  %225 = add i64 %199, -137
  %226 = add i64 %198, 13
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i8*
  store i8 %217, i8* %227, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41318e

block_.L_41318e:                                  ; preds = %block_413181, %block_41316f, %block_41315d, %block_41314b, %entry
  %228 = phi i64 [ %.pre, %block_413181 ], [ %198, %block_41316f ], [ %165, %block_41315d ], [ %132, %block_41314b ], [ %99, %entry ]
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -137
  %231 = add i64 %228, 6
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i8*
  %233 = load i8, i8* %232, align 1
  %RCX.i1127 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %CL.i1123 = bitcast %union.anon* %58 to i8*
  %DL.i1124 = bitcast %union.anon* %51 to i8*
  store i8 0, i8* %DL.i1124, align 1
  %234 = and i8 %233, 1
  store i8 %234, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %235 = zext i8 %234 to i32
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = xor i8 %237, 1
  store i8 %238, i8* %21, align 1
  %239 = xor i8 %234, 1
  store i8 %239, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %240 = zext i8 %234 to i64
  store i64 %240, i64* %RCX.i1127, align 8
  %241 = add i64 %229, -28
  %242 = zext i8 %234 to i32
  %243 = add i64 %228, 18
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %244, align 4
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -20
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %253 = zext i1 %251 to i32
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1
  %257 = xor i8 %252, 1
  store i8 %257, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %258 = zext i1 %251 to i64
  store i64 %258, i64* %RCX.i1127, align 8
  %259 = add i64 %245, -32
  %260 = zext i1 %251 to i32
  %261 = add i64 %247, 15
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %262, align 4
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -20
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 4
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %268, -7
  %270 = icmp ult i32 %268, 7
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %14, align 1
  %272 = and i32 %269, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i32 %269, %268
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %26, align 1
  %281 = icmp eq i32 %269, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %29, align 1
  %283 = lshr i32 %269, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %32, align 1
  %285 = lshr i32 %268, 31
  %286 = xor i32 %283, %285
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %38, align 1
  %290 = add i64 %263, -138
  %291 = load i8, i8* %DL.i1124, align 1
  %292 = add i64 %265, 10
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i8*
  store i8 %291, i8* %293, align 1
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, 30
  %296 = add i64 %294, 6
  %297 = load i8, i8* %29, align 1
  %298 = icmp eq i8 %297, 0
  %299 = select i1 %298, i64 %295, i64 %296
  store i64 %299, i64* %3, align 8
  br i1 %298, label %block_.L_4131d7, label %block_4131bf

block_4131bf:                                     ; preds = %block_.L_41318e
  %RAX.i1095 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %300 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %300, i64* %RAX.i1095, align 8
  %301 = add i64 %300, 84
  %302 = add i64 %299, 12
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i64
  %307 = xor i64 %306, 255
  %308 = trunc i64 %307 to i8
  store i8 %308, i8* %CL.i1123, align 1
  store i8 0, i8* %14, align 1
  %309 = trunc i64 %307 to i32
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %21, align 1
  store i8 0, i8* %29, align 1
  store i8 1, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -138
  %316 = add i64 %299, 24
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i8*
  store i8 %308, i8* %317, align 1
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_4131d7

block_.L_4131d7:                                  ; preds = %block_4131bf, %block_.L_41318e
  %318 = phi i64 [ %.pre57, %block_4131bf ], [ %295, %block_.L_41318e ]
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -138
  %321 = add i64 %318, 6
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i8*
  %323 = load i8, i8* %322, align 1
  store i8 0, i8* %DL.i1124, align 1
  %324 = and i8 %323, 1
  store i8 %324, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %325 = zext i8 %324 to i32
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  %329 = xor i8 %324, 1
  store i8 %329, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %330 = zext i8 %324 to i64
  store i64 %330, i64* %RCX.i1127, align 8
  %331 = add i64 %319, -36
  %332 = zext i8 %324 to i32
  %333 = add i64 %318, 18
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %334, align 4
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -20
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 4
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = add i32 %340, -7
  %342 = icmp ult i32 %340, 7
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = and i32 %341, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %21, align 1
  %349 = xor i32 %341, %340
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %26, align 1
  %353 = icmp eq i32 %341, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %29, align 1
  %355 = lshr i32 %341, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %32, align 1
  %357 = lshr i32 %340, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %38, align 1
  %362 = add i64 %335, -139
  %363 = load i8, i8* %DL.i1124, align 1
  %364 = add i64 %337, 10
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i8*
  store i8 %363, i8* %365, align 1
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 27
  %368 = add i64 %366, 6
  %369 = load i8, i8* %29, align 1
  %370 = icmp eq i8 %369, 0
  %371 = select i1 %370, i64 %367, i64 %368
  store i64 %371, i64* %3, align 8
  br i1 %370, label %block_.L_41320e, label %block_4131f9

block_4131f9:                                     ; preds = %block_.L_4131d7
  %RAX.i1061 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %372 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %372, i64* %RAX.i1061, align 8
  %373 = add i64 %372, 84
  %374 = add i64 %371, 12
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  store i8 0, i8* %14, align 1
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %382 = icmp eq i32 %376, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %29, align 1
  %384 = lshr i32 %376, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %386 = xor i1 %382, true
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %CL.i1123, align 1
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -139
  %390 = add i64 %371, 21
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i8*
  store i8 %387, i8* %391, align 1
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_41320e

block_.L_41320e:                                  ; preds = %block_4131f9, %block_.L_4131d7
  %392 = phi i64 [ %.pre58, %block_4131f9 ], [ %367, %block_.L_4131d7 ]
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -139
  %395 = add i64 %392, 6
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i8*
  %397 = load i8, i8* %396, align 1
  store i8 1, i8* %CL.i1123, align 1
  %398 = and i8 %397, 1
  store i8 %398, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %399 = zext i8 %398 to i32
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = xor i8 %401, 1
  store i8 %402, i8* %21, align 1
  %403 = xor i8 %398, 1
  store i8 %403, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %RDX.i1045 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %404 = zext i8 %398 to i64
  store i64 %404, i64* %RDX.i1045, align 8
  %405 = add i64 %393, -40
  %406 = zext i8 %398 to i32
  %407 = add i64 %392, 16
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %405 to i32*
  store i32 %406, i32* %408, align 4
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -20
  %411 = load i64, i64* %3, align 8
  %412 = add i64 %411, 4
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = add i32 %414, -6
  %416 = icmp ult i32 %414, 6
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %14, align 1
  %418 = and i32 %415, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %21, align 1
  %423 = xor i32 %415, %414
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %26, align 1
  %427 = icmp eq i32 %415, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %29, align 1
  %429 = lshr i32 %415, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %32, align 1
  %431 = lshr i32 %414, 31
  %432 = xor i32 %429, %431
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %38, align 1
  %436 = add i64 %409, -140
  %437 = load i8, i8* %CL.i1123, align 1
  %438 = add i64 %411, 10
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i8*
  store i8 %437, i8* %439, align 1
  %440 = load i64, i64* %3, align 8
  %441 = load i8, i8* %29, align 1
  %442 = icmp ne i8 %441, 0
  %.v129 = select i1 %442, i64 37, i64 6
  %443 = add i64 %440, %.v129
  store i64 %443, i64* %3, align 8
  %cmpBr_413228 = icmp eq i8 %441, 1
  br i1 %cmpBr_413228, label %block_.L_41324d, label %block_41322e

block_41322e:                                     ; preds = %block_.L_41320e
  store i8 1, i8* %AL.i1181, align 1
  %444 = load i64, i64* %RBP.i, align 8
  %445 = add i64 %444, -20
  %446 = add i64 %443, 6
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, -8
  %450 = icmp ult i32 %448, 8
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %14, align 1
  %452 = and i32 %449, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %21, align 1
  %457 = xor i32 %449, %448
  %458 = lshr i32 %457, 4
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %26, align 1
  %461 = icmp eq i32 %449, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %29, align 1
  %463 = lshr i32 %449, 31
  %464 = trunc i32 %463 to i8
  store i8 %464, i8* %32, align 1
  %465 = lshr i32 %448, 31
  %466 = xor i32 %463, %465
  %467 = add nuw nsw i32 %466, %465
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1
  %470 = add i64 %444, -140
  %471 = add i64 %443, 12
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i8*
  store i8 1, i8* %472, align 1
  %473 = load i64, i64* %3, align 8
  %474 = load i8, i8* %29, align 1
  %475 = icmp ne i8 %474, 0
  %.v130 = select i1 %475, i64 19, i64 6
  %476 = add i64 %473, %.v130
  store i64 %476, i64* %3, align 8
  %cmpBr_41323a = icmp eq i8 %474, 1
  br i1 %cmpBr_41323a, label %block_.L_41324d, label %block_413240

block_413240:                                     ; preds = %block_41322e
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -20
  %479 = add i64 %476, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, -9
  %483 = icmp ult i32 %481, 9
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = and i32 %482, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %21, align 1
  %490 = xor i32 %482, %481
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %26, align 1
  %494 = icmp eq i32 %482, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %29, align 1
  %496 = lshr i32 %482, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %32, align 1
  %498 = lshr i32 %481, 31
  %499 = xor i32 %496, %498
  %500 = add nuw nsw i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %38, align 1
  store i8 %495, i8* %AL.i1181, align 1
  %503 = add i64 %477, -140
  %504 = add i64 %476, 13
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i8*
  store i8 %495, i8* %505, align 1
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_41324d

block_.L_41324d:                                  ; preds = %block_413240, %block_41322e, %block_.L_41320e
  %506 = phi i64 [ %.pre59, %block_413240 ], [ %476, %block_41322e ], [ %443, %block_.L_41320e ]
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -140
  %509 = add i64 %506, 6
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i8*
  %511 = load i8, i8* %510, align 1
  store i8 0, i8* %DL.i1124, align 1
  %512 = and i8 %511, 1
  store i8 %512, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %513 = zext i8 %512 to i32
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i8 %512, 1
  store i8 %517, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %518 = zext i8 %512 to i64
  store i64 %518, i64* %RCX.i1127, align 8
  %519 = add i64 %507, -44
  %520 = zext i8 %512 to i32
  %521 = add i64 %506, 18
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %519 to i32*
  store i32 %520, i32* %522, align 4
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -44
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 4
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527, align 4
  store i8 0, i8* %14, align 1
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %534 = icmp eq i32 %528, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i32 %528, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %538 = add i64 %523, -141
  %539 = load i8, i8* %DL.i1124, align 1
  %540 = add i64 %525, 10
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %538 to i8*
  store i8 %539, i8* %541, align 1
  %542 = load i64, i64* %3, align 8
  %543 = load i8, i8* %29, align 1
  %544 = icmp ne i8 %543, 0
  %.v131 = select i1 %544, i64 30, i64 6
  %545 = add i64 %542, %.v131
  store i64 %545, i64* %3, align 8
  %cmpBr_413269 = icmp eq i8 %543, 1
  br i1 %cmpBr_413269, label %block_.L_413287, label %block_41326f

block_41326f:                                     ; preds = %block_.L_41324d
  %RAX.i995 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %546 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %546, i64* %RAX.i995, align 8
  %547 = add i64 %546, 84
  %548 = add i64 %545, 12
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = icmp ne i32 %550, 0
  %552 = zext i1 %551 to i64
  %553 = xor i64 %552, 255
  %554 = trunc i64 %553 to i8
  store i8 %554, i8* %CL.i1123, align 1
  store i8 0, i8* %14, align 1
  %555 = trunc i64 %553 to i32
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  store i8 0, i8* %29, align 1
  store i8 1, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -141
  %562 = add i64 %545, 24
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i8*
  store i8 %554, i8* %563, align 1
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_413287

block_.L_413287:                                  ; preds = %block_41326f, %block_.L_41324d
  %564 = phi i64 [ %.pre60, %block_41326f ], [ %545, %block_.L_41324d ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -141
  %567 = add i64 %564, 6
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i8*
  %569 = load i8, i8* %568, align 1
  store i8 0, i8* %DL.i1124, align 1
  %570 = and i8 %569, 1
  store i8 %570, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %571 = zext i8 %570 to i32
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  %575 = xor i8 %570, 1
  store i8 %575, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %576 = zext i8 %570 to i64
  store i64 %576, i64* %RCX.i1127, align 8
  %577 = add i64 %565, -48
  %578 = zext i8 %570 to i32
  %579 = add i64 %564, 18
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %577 to i32*
  store i32 %578, i32* %580, align 4
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -44
  %583 = load i64, i64* %3, align 8
  %584 = add i64 %583, 4
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585, align 4
  store i8 0, i8* %14, align 1
  %587 = and i32 %586, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %592 = icmp eq i32 %586, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %29, align 1
  %594 = lshr i32 %586, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %596 = add i64 %581, -142
  %597 = load i8, i8* %DL.i1124, align 1
  %598 = add i64 %583, 10
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %596 to i8*
  store i8 %597, i8* %599, align 1
  %600 = load i64, i64* %3, align 8
  %601 = load i8, i8* %29, align 1
  %602 = icmp ne i8 %601, 0
  %.v132 = select i1 %602, i64 27, i64 6
  %603 = add i64 %600, %.v132
  store i64 %603, i64* %3, align 8
  %cmpBr_4132a3 = icmp eq i8 %601, 1
  br i1 %cmpBr_4132a3, label %block_.L_4132be, label %block_4132a9

block_4132a9:                                     ; preds = %block_.L_413287
  %RAX.i962 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %604 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %604, i64* %RAX.i962, align 8
  %605 = add i64 %604, 84
  %606 = add i64 %603, 12
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  store i8 0, i8* %14, align 1
  %609 = and i32 %608, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %614 = icmp eq i32 %608, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %29, align 1
  %616 = lshr i32 %608, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %618 = xor i1 %614, true
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %CL.i1123, align 1
  %620 = load i64, i64* %RBP.i, align 8
  %621 = add i64 %620, -142
  %622 = add i64 %603, 21
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i8*
  store i8 %619, i8* %623, align 1
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4132be

block_.L_4132be:                                  ; preds = %block_4132a9, %block_.L_413287
  %624 = phi i64 [ %.pre61, %block_4132a9 ], [ %603, %block_.L_413287 ]
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -142
  %627 = add i64 %624, 6
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i8*
  %629 = load i8, i8* %628, align 1
  %630 = and i8 %629, 1
  store i8 %630, i8* %AL.i1181, align 1
  store i8 0, i8* %14, align 1
  %631 = zext i8 %630 to i32
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  %635 = xor i8 %630, 1
  store i8 %635, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %636 = zext i8 %630 to i64
  store i64 %636, i64* %RCX.i1127, align 8
  %637 = add i64 %625, -52
  %638 = zext i8 %630 to i32
  %639 = add i64 %624, 14
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %640, align 4
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -28
  %643 = load i64, i64* %3, align 8
  %644 = add i64 %643, 4
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645, align 4
  store i8 0, i8* %14, align 1
  %647 = and i32 %646, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %652 = icmp eq i32 %646, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %29, align 1
  %654 = lshr i32 %646, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %652, i64 10, i64 30
  %656 = add i64 %643, %.v93
  store i64 %656, i64* %3, align 8
  br i1 %652, label %block_4132d6, label %block_.L_4132ea

block_4132d6:                                     ; preds = %block_.L_4132be
  %657 = add i64 %641, -36
  %658 = add i64 %656, 4
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  store i8 0, i8* %14, align 1
  %661 = and i32 %660, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %666 = icmp eq i32 %660, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i32 %660, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v123 = select i1 %666, i64 10, i64 20
  %670 = add i64 %656, %.v123
  store i64 %670, i64* %3, align 8
  br i1 %666, label %block_4132e0, label %block_.L_4132ea

block_4132e0:                                     ; preds = %block_4132d6
  %671 = add i64 %641, -40
  %672 = add i64 %670, 4
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  store i8 0, i8* %14, align 1
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %680 = icmp eq i32 %674, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = lshr i32 %674, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v124 = select i1 %680, i64 32, i64 10
  %684 = add i64 %670, %.v124
  store i64 %684, i64* %3, align 8
  br i1 %680, label %block_.L_413300, label %block_.L_4132ea

block_.L_4132ea:                                  ; preds = %block_4132d6, %block_.L_4132be, %block_4132e0
  %685 = phi i64 [ %684, %block_4132e0 ], [ %670, %block_4132d6 ], [ %656, %block_.L_4132be ]
  %RAX.i934 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %686 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %686, i64* %RAX.i934, align 8
  %687 = add i64 %686, 76
  %688 = add i64 %685, 11
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RCX.i1127, align 8
  %692 = add i64 %641, -148
  %693 = add i64 %685, 17
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  store i32 %690, i32* %694, align 4
  %695 = load i64, i64* %3, align 8
  %696 = add i64 %695, 18
  br label %block_.L_41330d

block_.L_413300:                                  ; preds = %block_4132e0
  %RAX.i925 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 0, i64* %RAX.i925, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %697 = add i64 %641, -148
  %698 = add i64 %684, 8
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  store i32 0, i32* %699, align 4
  %700 = load i64, i64* %3, align 8
  %701 = add i64 %700, 5
  store i64 %701, i64* %3, align 8
  br label %block_.L_41330d

block_.L_41330d:                                  ; preds = %block_.L_413300, %block_.L_4132ea
  %RAX.i917.pre-phi = phi i64* [ %RAX.i925, %block_.L_413300 ], [ %RAX.i934, %block_.L_4132ea ]
  %storemerge = phi i64 [ %701, %block_.L_413300 ], [ %696, %block_.L_4132ea ]
  %EAX.i914.pre-phi = bitcast %union.anon* %39 to i32*
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -148
  %704 = add i64 %storemerge, 6
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RAX.i917.pre-phi, align 8
  %708 = add i64 %702, -56
  %709 = add i64 %storemerge, 9
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  store i32 %706, i32* %710, align 4
  %711 = load i64, i64* %RBP.i, align 8
  %712 = add i64 %711, -28
  %713 = load i64, i64* %3, align 8
  %714 = add i64 %713, 4
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %712 to i32*
  %716 = load i32, i32* %715, align 4
  store i8 0, i8* %14, align 1
  %717 = and i32 %716, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %722 = icmp eq i32 %716, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %29, align 1
  %724 = lshr i32 %716, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v94 = select i1 %722, i64 10, i64 30
  %726 = add i64 %713, %.v94
  store i64 %726, i64* %3, align 8
  br i1 %722, label %block_413320, label %block_.L_413334

block_413320:                                     ; preds = %block_.L_41330d
  %727 = add i64 %711, -36
  %728 = add i64 %726, 4
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i8 0, i8* %14, align 1
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %736 = icmp eq i32 %730, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i32 %730, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %736, i64 10, i64 20
  %740 = add i64 %726, %.v121
  store i64 %740, i64* %3, align 8
  br i1 %736, label %block_41332a, label %block_.L_413334

block_41332a:                                     ; preds = %block_413320
  %741 = add i64 %711, -40
  %742 = add i64 %740, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  store i8 0, i8* %14, align 1
  %745 = and i32 %744, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %750 = icmp eq i32 %744, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %29, align 1
  %752 = lshr i32 %744, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v122 = select i1 %750, i64 32, i64 10
  %754 = add i64 %740, %.v122
  store i64 %754, i64* %3, align 8
  br i1 %750, label %block_.L_41334a, label %block_.L_413334

block_.L_413334:                                  ; preds = %block_413320, %block_.L_41330d, %block_41332a
  %755 = phi i64 [ %754, %block_41332a ], [ %740, %block_413320 ], [ %726, %block_.L_41330d ]
  %756 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %756, i64* %RAX.i917.pre-phi, align 8
  %757 = add i64 %756, 72
  %758 = add i64 %755, 11
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RCX.i1127, align 8
  %762 = add i64 %711, -152
  %763 = add i64 %755, 17
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  store i32 %760, i32* %764, align 4
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 18
  br label %block_.L_413357

block_.L_41334a:                                  ; preds = %block_41332a
  store i64 0, i64* %RAX.i917.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %767 = add i64 %711, -152
  %768 = add i64 %754, 8
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  store i32 0, i32* %769, align 4
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 5
  store i64 %771, i64* %3, align 8
  br label %block_.L_413357

block_.L_413357:                                  ; preds = %block_.L_41334a, %block_.L_413334
  %storemerge47 = phi i64 [ %766, %block_.L_413334 ], [ %771, %block_.L_41334a ]
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -152
  %774 = add i64 %storemerge47, 6
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RAX.i917.pre-phi, align 8
  %778 = add i64 %772, -60
  %779 = add i64 %storemerge47, 9
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  store i32 %776, i32* %780, align 4
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -32
  %783 = load i64, i64* %3, align 8
  %784 = add i64 %783, 4
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785, align 4
  store i8 0, i8* %14, align 1
  %787 = and i32 %786, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %792 = icmp eq i32 %786, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %29, align 1
  %794 = lshr i32 %786, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %792, i64 23, i64 10
  %796 = add i64 %783, %.v95
  store i64 %796, i64* %3, align 8
  br i1 %792, label %block_.L_413377, label %block_41336a

block_41336a:                                     ; preds = %block_.L_413357
  store i64 0, i64* %RAX.i917.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %797 = add i64 %781, -156
  %798 = add i64 %796, 8
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  store i32 0, i32* %799, align 4
  %800 = load i64, i64* %3, align 8
  %801 = add i64 %800, 142
  store i64 %801, i64* %3, align 8
  br label %block_.L_413400

block_.L_413377:                                  ; preds = %block_.L_413357
  %802 = add i64 %781, -28
  %803 = add i64 %796, 4
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  store i8 0, i8* %14, align 1
  %806 = and i32 %805, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %811 = icmp eq i32 %805, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %29, align 1
  %813 = lshr i32 %805, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v118 = select i1 %811, i64 26, i64 10
  %815 = add i64 %796, %.v118
  store i64 %815, i64* %3, align 8
  br i1 %811, label %block_.L_413391, label %block_413381

block_413381:                                     ; preds = %block_.L_413377
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %816 = add i64 %781, -160
  %817 = add i64 %815, 11
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  store i32 1, i32* %818, align 4
  %819 = load i64, i64* %3, align 8
  %820 = add i64 %819, 104
  store i64 %820, i64* %3, align 8
  br label %block_.L_4133f4

block_.L_413391:                                  ; preds = %block_.L_413377
  %821 = add i64 %781, -48
  %822 = add i64 %815, 4
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  store i8 0, i8* %14, align 1
  %825 = and i32 %824, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %830 = icmp eq i32 %824, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  %832 = lshr i32 %824, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %830, i64 26, i64 10
  %834 = add i64 %815, %.v119
  store i64 %834, i64* %3, align 8
  br i1 %830, label %block_.L_4133ab, label %block_41339b

block_41339b:                                     ; preds = %block_.L_413391
  store i64 17, i64* %RAX.i917.pre-phi, align 8
  %835 = add i64 %781, -164
  %836 = add i64 %834, 11
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  store i32 17, i32* %837, align 4
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 66
  store i64 %839, i64* %3, align 8
  br label %block_.L_4133e8

block_.L_4133ab:                                  ; preds = %block_.L_413391
  %840 = add i64 %781, -52
  %841 = add i64 %834, 4
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  store i8 0, i8* %14, align 1
  %844 = and i32 %843, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %849 = icmp eq i32 %843, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %29, align 1
  %851 = lshr i32 %843, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %849, i64 26, i64 10
  %853 = add i64 %834, %.v120
  %854 = add i64 %853, 5
  store i64 %854, i64* %3, align 8
  br i1 %849, label %block_.L_4133c5, label %block_4133b5

block_4133b5:                                     ; preds = %block_.L_4133ab
  store i64 18, i64* %RAX.i917.pre-phi, align 8
  %855 = add i64 %781, -168
  %856 = add i64 %853, 11
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  store i32 18, i32* %857, align 4
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, 28
  store i64 %859, i64* %3, align 8
  br label %block_.L_4133dc

block_.L_4133c5:                                  ; preds = %block_.L_4133ab
  store i64 23, i64* %RAX.i917.pre-phi, align 8
  store i64 19, i64* %RCX.i1127, align 8
  %860 = add i64 %781, -36
  %861 = add i64 %853, 14
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  store i8 0, i8* %14, align 1
  %864 = and i32 %863, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %869 = icmp eq i32 %863, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %29, align 1
  %871 = lshr i32 %863, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %873 = select i1 %869, i64 23, i64 19
  store i64 %873, i64* %RAX.i917.pre-phi, align 8
  %874 = add i64 %781, -168
  %875 = trunc i64 %873 to i32
  %876 = add i64 %853, 23
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %874 to i32*
  store i32 %875, i32* %877, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_4133dc

block_.L_4133dc:                                  ; preds = %block_.L_4133c5, %block_4133b5
  %878 = phi i64 [ %.pre62, %block_.L_4133c5 ], [ %859, %block_4133b5 ]
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -168
  %881 = add i64 %878, 6
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RAX.i917.pre-phi, align 8
  %885 = add i64 %879, -164
  %886 = add i64 %878, 12
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  store i32 %883, i32* %887, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4133e8

block_.L_4133e8:                                  ; preds = %block_.L_4133dc, %block_41339b
  %888 = phi i64 [ %.pre63, %block_.L_4133dc ], [ %839, %block_41339b ]
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -164
  %891 = add i64 %888, 6
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX.i917.pre-phi, align 8
  %895 = add i64 %889, -160
  %896 = add i64 %888, 12
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  store i32 %893, i32* %897, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4133f4

block_.L_4133f4:                                  ; preds = %block_.L_4133e8, %block_413381
  %898 = phi i64 [ %.pre64, %block_.L_4133e8 ], [ %820, %block_413381 ]
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -160
  %901 = add i64 %898, 6
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX.i917.pre-phi, align 8
  %905 = add i64 %899, -156
  %906 = add i64 %898, 12
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  store i32 %903, i32* %907, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_413400

block_.L_413400:                                  ; preds = %block_.L_4133f4, %block_41336a
  %908 = phi i64 [ %.pre65, %block_.L_4133f4 ], [ %801, %block_41336a ]
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -156
  %911 = add i64 %908, 6
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i917.pre-phi, align 8
  store i64 0, i64* %RCX.i1127, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RDX.i1045, align 8
  %915 = add i64 %909, -64
  %916 = add i64 %908, 16
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  store i32 %913, i32* %917, align 4
  %918 = load i64, i64* %3, align 8
  %919 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %919, i64* %RSI.i1175, align 8
  %920 = add i64 %919, 80
  %921 = add i64 %918, 12
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  store i8 0, i8* %14, align 1
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %929 = icmp eq i32 %923, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %29, align 1
  %931 = lshr i32 %923, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %933 = load i32, i32* %EDX.i1172, align 4
  %934 = zext i32 %933 to i64
  %935 = load i64, i64* %RCX.i1127, align 8
  %936 = select i1 %929, i64 %935, i64 %934
  %937 = and i64 %936, 4294967295
  store i64 %937, i64* %RCX.i1127, align 8
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -68
  %940 = trunc i64 %936 to i32
  %941 = add i64 %918, 18
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %939 to i32*
  store i32 %940, i32* %942, align 4
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -68
  %945 = load i64, i64* %3, align 8
  %946 = add i64 %945, 3
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %944 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i917.pre-phi, align 8
  %950 = add i64 %943, -72
  %951 = add i64 %945, 6
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  store i32 %948, i32* %952, align 4
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -68
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 3
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RAX.i917.pre-phi, align 8
  %960 = add i64 %953, -76
  %961 = add i64 %955, 6
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  store i32 %958, i32* %962, align 4
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -84
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 7
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i32*
  store i32 0, i32* %967, align 4
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -88
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 7
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %969 to i32*
  store i32 0, i32* %972, align 4
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -28
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, 4
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %974 to i32*
  %978 = load i32, i32* %977, align 4
  store i8 0, i8* %14, align 1
  %979 = and i32 %978, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %984 = icmp eq i32 %978, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %29, align 1
  %986 = lshr i32 %978, 31
  %987 = trunc i32 %986 to i8
  store i8 %987, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %984, i64 10, i64 20
  %988 = add i64 %975, %.v96
  store i64 %988, i64* %3, align 8
  br i1 %984, label %block_413446, label %block_.L_413450

block_413446:                                     ; preds = %block_.L_413400
  %989 = add i64 %973, -32
  %990 = add i64 %988, 4
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  store i8 0, i8* %14, align 1
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %998 = icmp eq i32 %992, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %29, align 1
  %1000 = lshr i32 %992, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v113 = select i1 %998, i64 148, i64 10
  %1002 = add i64 %988, %.v113
  store i64 %1002, i64* %3, align 8
  br i1 %998, label %block_.L_4134da, label %block_.L_413450

block_.L_413450:                                  ; preds = %block_.L_413400, %block_413446
  %1003 = phi i64 [ %1002, %block_413446 ], [ %988, %block_.L_413400 ]
  store i64 4294967295, i64* %RCX.i1127, align 8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %1004, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %R9.i767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1005 = add i64 %973, -112
  store i64 %1005, i64* %R9.i767, align 8
  %1006 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1006, i64* %RAX.i917.pre-phi, align 8
  %1007 = add i64 %1006, 12
  %1008 = add i64 %1003, 23
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RDI.i1178, align 8
  %1012 = add i64 %973, -60
  %1013 = add i64 %1003, 26
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RSI.i1175, align 8
  %1017 = add i64 %973, -56
  %1018 = add i64 %1003, 29
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = zext i32 %1020 to i64
  store i64 %1021, i64* %RDX.i1045, align 8
  %1022 = add i64 %1003, 228832
  %1023 = add i64 %1003, 34
  %1024 = load i64, i64* %6, align 8
  %1025 = add i64 %1024, -8
  %1026 = inttoptr i64 %1025 to i64*
  store i64 %1023, i64* %1026, align 8
  store i64 %1025, i64* %6, align 8
  store i64 %1022, i64* %3, align 8
  %call2_41346d = tail call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* nonnull %0, i64 %1022, %struct.Memory* %2)
  %1027 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1127, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 4294967295, i64* %1004, align 8
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -136
  store i64 %1029, i64* %R9.i767, align 8
  %1030 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1030, i64* %RAX.i917.pre-phi, align 8
  %1031 = add i64 %1030, 12
  %1032 = add i64 %1027, 26
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %RDI.i1178, align 8
  %1036 = add i64 %1028, -60
  %1037 = add i64 %1027, 29
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RSI.i1175, align 8
  %1041 = add i64 %1028, -56
  %1042 = add i64 %1027, 32
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RDX.i1045, align 8
  %1046 = add i64 %1027, 228798
  %1047 = add i64 %1027, 37
  %1048 = load i64, i64* %6, align 8
  %1049 = add i64 %1048, -8
  %1050 = inttoptr i64 %1049 to i64*
  store i64 %1047, i64* %1050, align 8
  store i64 %1049, i64* %6, align 8
  store i64 %1046, i64* %3, align 8
  %call2_413492 = tail call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* nonnull %0, i64 %1046, %struct.Memory* %call2_41346d)
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -28
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, 4
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055, align 4
  store i8 0, i8* %14, align 1
  %1057 = and i32 %1056, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1062 = icmp eq i32 %1056, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %29, align 1
  %1064 = lshr i32 %1056, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v97 = select i1 %1062, i64 62, i64 10
  %1066 = add i64 %1053, %.v97
  store i64 %1066, i64* %3, align 8
  br i1 %1062, label %block_.L_4134d5, label %block_4134a1

block_4134a1:                                     ; preds = %block_.L_413450
  %1067 = add i64 %1051, -112
  %1068 = add i64 %1066, 4
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  store i8 0, i8* %14, align 1
  %1071 = and i32 %1070, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1076 = icmp eq i32 %1070, 0
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %29, align 1
  %1078 = lshr i32 %1070, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v98 = select i1 %1076, i64 22, i64 10
  %1080 = add i64 %1066, %.v98
  store i64 %1080, i64* %3, align 8
  br i1 %1076, label %block_.L_4134b7, label %block_4134ab

block_4134ab:                                     ; preds = %block_4134a1
  %1081 = add i64 %1051, -100
  %1082 = add i64 %1080, 3
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = shl i32 %1084, 2
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RAX.i917.pre-phi, align 8
  %1087 = lshr i32 %1084, 30
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %14, align 1
  %1090 = and i32 %1085, 252
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1095 = icmp eq i32 %1085, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %29, align 1
  %1097 = lshr i32 %1084, 29
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1100 = add i64 %1051, -104
  %1101 = add i64 %1080, 9
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = add i32 %1103, %1085
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX.i917.pre-phi, align 8
  %1106 = icmp ult i32 %1104, %1085
  %1107 = icmp ult i32 %1104, %1103
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i32 %1104, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i32 %1103, %1085
  %1116 = xor i32 %1115, %1104
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = icmp eq i32 %1104, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %29, align 1
  %1122 = lshr i32 %1104, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %32, align 1
  %1124 = lshr i32 %1084, 29
  %1125 = and i32 %1124, 1
  %1126 = lshr i32 %1103, 31
  %1127 = xor i32 %1122, %1125
  %1128 = xor i32 %1122, %1126
  %1129 = add nuw nsw i32 %1127, %1128
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %1132 = add i64 %1051, -84
  %1133 = add i64 %1080, 12
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  store i32 %1104, i32* %1134, align 4
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4134b7

block_.L_4134b7:                                  ; preds = %block_4134ab, %block_4134a1
  %1135 = phi i64 [ %.pre70, %block_4134ab ], [ %1080, %block_4134a1 ]
  %1136 = phi i64 [ %.pre69, %block_4134ab ], [ %1051, %block_4134a1 ]
  %1137 = add i64 %1136, -136
  %1138 = add i64 %1135, 7
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  store i8 0, i8* %14, align 1
  %1141 = and i32 %1140, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1146 = icmp eq i32 %1140, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %29, align 1
  %1148 = lshr i32 %1140, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %1146, i64 25, i64 13
  %1150 = add i64 %1135, %.v99
  store i64 %1150, i64* %3, align 8
  br i1 %1146, label %block_.L_4134d0, label %block_4134c4

block_4134c4:                                     ; preds = %block_.L_4134b7
  %1151 = add i64 %1136, -124
  %1152 = add i64 %1150, 3
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = shl i32 %1154, 2
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX.i917.pre-phi, align 8
  %1157 = lshr i32 %1154, 30
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %14, align 1
  %1160 = and i32 %1155, 252
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1165 = icmp eq i32 %1155, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %29, align 1
  %1167 = lshr i32 %1154, 29
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1170 = add i64 %1136, -128
  %1171 = add i64 %1150, 9
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, %1155
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RAX.i917.pre-phi, align 8
  %1176 = icmp ult i32 %1174, %1155
  %1177 = icmp ult i32 %1174, %1173
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1
  %1180 = and i32 %1174, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %21, align 1
  %1185 = xor i32 %1173, %1155
  %1186 = xor i32 %1185, %1174
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %26, align 1
  %1190 = icmp eq i32 %1174, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1174, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  %1194 = lshr i32 %1154, 29
  %1195 = and i32 %1194, 1
  %1196 = lshr i32 %1173, 31
  %1197 = xor i32 %1192, %1195
  %1198 = xor i32 %1192, %1196
  %1199 = add nuw nsw i32 %1197, %1198
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %38, align 1
  %1202 = add i64 %1136, -88
  %1203 = add i64 %1150, 12
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  store i32 %1174, i32* %1204, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_4134d0

block_.L_4134d0:                                  ; preds = %block_4134c4, %block_.L_4134b7
  %1205 = phi i64 [ %.pre71, %block_4134c4 ], [ %1150, %block_.L_4134b7 ]
  %1206 = add i64 %1205, 5
  store i64 %1206, i64* %3, align 8
  br label %block_.L_4134d5

block_.L_4134d5:                                  ; preds = %block_.L_4134d0, %block_.L_413450
  %1207 = phi i64 [ %1206, %block_.L_4134d0 ], [ %1066, %block_.L_413450 ]
  %1208 = add i64 %1207, 153
  br label %block_.L_41356e

block_.L_4134da:                                  ; preds = %block_413446
  store i64 4294967295, i64* %RCX.i1127, align 8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %1209, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %R9.i695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1210 = add i64 %973, -112
  store i64 %1210, i64* %R9.i695, align 8
  %1211 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1211, i64* %RAX.i917.pre-phi, align 8
  %1212 = add i64 %1211, 12
  %1213 = add i64 %1002, 23
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RDI.i1178, align 8
  %1217 = add i64 %973, -60
  %1218 = add i64 %1002, 26
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RSI.i1175, align 8
  %1222 = add i64 %973, -56
  %1223 = add i64 %1002, 29
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = zext i32 %1225 to i64
  store i64 %1226, i64* %RDX.i1045, align 8
  %1227 = add i64 %1002, 228870
  %1228 = add i64 %1002, 34
  %1229 = load i64, i64* %6, align 8
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1228, i64* %1231, align 8
  store i64 %1230, i64* %6, align 8
  store i64 %1227, i64* %3, align 8
  %call2_4134f7 = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %1227, %struct.Memory* %2)
  %1232 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1127, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 4294967295, i64* %1209, align 8
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -136
  store i64 %1234, i64* %R9.i695, align 8
  %1235 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1235, i64* %RAX.i917.pre-phi, align 8
  %1236 = add i64 %1235, 12
  %1237 = add i64 %1232, 26
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDI.i1178, align 8
  %1241 = add i64 %1233, -60
  %1242 = add i64 %1232, 29
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RSI.i1175, align 8
  %1246 = add i64 %1233, -56
  %1247 = add i64 %1232, 32
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RDX.i1045, align 8
  %1251 = add i64 %1232, 228836
  %1252 = add i64 %1232, 37
  %1253 = load i64, i64* %6, align 8
  %1254 = add i64 %1253, -8
  %1255 = inttoptr i64 %1254 to i64*
  store i64 %1252, i64* %1255, align 8
  store i64 %1254, i64* %6, align 8
  store i64 %1251, i64* %3, align 8
  %call2_41351c = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %1251, %struct.Memory* %call2_4134f7)
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -36
  %1258 = load i64, i64* %3, align 8
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260, align 4
  store i8 0, i8* %14, align 1
  %1262 = and i32 %1261, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1267 = icmp eq i32 %1261, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %29, align 1
  %1269 = lshr i32 %1261, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v114 = select i1 %1267, i64 10, i64 20
  %1271 = add i64 %1258, %.v114
  store i64 %1271, i64* %3, align 8
  br i1 %1267, label %block_41352b, label %block_.L_413535

block_41352b:                                     ; preds = %block_.L_4134da
  %1272 = add i64 %1256, -40
  %1273 = add i64 %1271, 4
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  store i8 0, i8* %14, align 1
  %1276 = and i32 %1275, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1281 = icmp eq i32 %1275, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %29, align 1
  %1283 = lshr i32 %1275, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v117 = select i1 %1281, i64 62, i64 10
  %1285 = add i64 %1271, %.v117
  store i64 %1285, i64* %3, align 8
  br i1 %1281, label %block_.L_413569, label %block_.L_413535

block_.L_413535:                                  ; preds = %block_.L_4134da, %block_41352b
  %1286 = phi i64 [ %1285, %block_41352b ], [ %1271, %block_.L_4134da ]
  %1287 = add i64 %1256, -112
  %1288 = add i64 %1286, 4
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  store i8 0, i8* %14, align 1
  %1291 = and i32 %1290, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1296 = icmp eq i32 %1290, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %29, align 1
  %1298 = lshr i32 %1290, 31
  %1299 = trunc i32 %1298 to i8
  store i8 %1299, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %1296, i64 22, i64 10
  %1300 = add i64 %1286, %.v115
  store i64 %1300, i64* %3, align 8
  br i1 %1296, label %block_.L_41354b, label %block_41353f

block_41353f:                                     ; preds = %block_.L_413535
  %1301 = add i64 %1256, -100
  %1302 = add i64 %1300, 3
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = shl i32 %1304, 1
  %1306 = icmp slt i32 %1304, 0
  %1307 = icmp slt i32 %1305, 0
  %1308 = xor i1 %1306, %1307
  %1309 = zext i32 %1305 to i64
  store i64 %1309, i64* %RAX.i917.pre-phi, align 8
  %.lobit55 = lshr i32 %1304, 31
  %1310 = trunc i32 %.lobit55 to i8
  store i8 %1310, i8* %14, align 1
  %1311 = and i32 %1305, 254
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1316 = icmp eq i32 %1305, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i32 %1304, 30
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %32, align 1
  %1321 = zext i1 %1308 to i8
  store i8 %1321, i8* %38, align 1
  %1322 = add i64 %1256, -104
  %1323 = add i64 %1300, 8
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = add i32 %1325, %1305
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX.i917.pre-phi, align 8
  %1328 = icmp ult i32 %1326, %1305
  %1329 = icmp ult i32 %1326, %1325
  %1330 = or i1 %1328, %1329
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %14, align 1
  %1332 = and i32 %1326, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %21, align 1
  %1337 = xor i32 %1325, %1305
  %1338 = xor i32 %1337, %1326
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %26, align 1
  %1342 = icmp eq i32 %1326, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %29, align 1
  %1344 = lshr i32 %1326, 31
  %1345 = trunc i32 %1344 to i8
  store i8 %1345, i8* %32, align 1
  %1346 = lshr i32 %1304, 30
  %1347 = and i32 %1346, 1
  %1348 = lshr i32 %1325, 31
  %1349 = xor i32 %1344, %1347
  %1350 = xor i32 %1344, %1348
  %1351 = add nuw nsw i32 %1349, %1350
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %38, align 1
  %1354 = add i64 %1256, -84
  %1355 = add i64 %1300, 11
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  store i32 %1326, i32* %1356, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_41354b

block_.L_41354b:                                  ; preds = %block_41353f, %block_.L_413535
  %1357 = phi i64 [ %.pre67, %block_41353f ], [ %1300, %block_.L_413535 ]
  %1358 = phi i64 [ %.pre66, %block_41353f ], [ %1256, %block_.L_413535 ]
  %1359 = add i64 %1358, -136
  %1360 = add i64 %1357, 7
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  store i8 0, i8* %14, align 1
  %1363 = and i32 %1362, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1368 = icmp eq i32 %1362, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %29, align 1
  %1370 = lshr i32 %1362, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %1368, i64 25, i64 13
  %1372 = add i64 %1357, %.v116
  store i64 %1372, i64* %3, align 8
  br i1 %1368, label %block_.L_413564, label %block_413558

block_413558:                                     ; preds = %block_.L_41354b
  %1373 = add i64 %1358, -124
  %1374 = add i64 %1372, 3
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = shl i32 %1376, 1
  %1378 = icmp slt i32 %1376, 0
  %1379 = icmp slt i32 %1377, 0
  %1380 = xor i1 %1378, %1379
  %1381 = zext i32 %1377 to i64
  store i64 %1381, i64* %RAX.i917.pre-phi, align 8
  %.lobit56 = lshr i32 %1376, 31
  %1382 = trunc i32 %.lobit56 to i8
  store i8 %1382, i8* %14, align 1
  %1383 = and i32 %1377, 254
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1388 = icmp eq i32 %1377, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %29, align 1
  %1390 = lshr i32 %1376, 30
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  store i8 %1392, i8* %32, align 1
  %1393 = zext i1 %1380 to i8
  store i8 %1393, i8* %38, align 1
  %1394 = add i64 %1358, -128
  %1395 = add i64 %1372, 8
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = add i32 %1397, %1377
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RAX.i917.pre-phi, align 8
  %1400 = icmp ult i32 %1398, %1377
  %1401 = icmp ult i32 %1398, %1397
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = and i32 %1398, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i32 %1397, %1377
  %1410 = xor i32 %1409, %1398
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %26, align 1
  %1414 = icmp eq i32 %1398, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %29, align 1
  %1416 = lshr i32 %1398, 31
  %1417 = trunc i32 %1416 to i8
  store i8 %1417, i8* %32, align 1
  %1418 = lshr i32 %1376, 30
  %1419 = and i32 %1418, 1
  %1420 = lshr i32 %1397, 31
  %1421 = xor i32 %1416, %1419
  %1422 = xor i32 %1416, %1420
  %1423 = add nuw nsw i32 %1421, %1422
  %1424 = icmp eq i32 %1423, 2
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %38, align 1
  %1426 = add i64 %1358, -88
  %1427 = add i64 %1372, 11
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i32*
  store i32 %1398, i32* %1428, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_413564

block_.L_413564:                                  ; preds = %block_413558, %block_.L_41354b
  %1429 = phi i64 [ %.pre68, %block_413558 ], [ %1372, %block_.L_41354b ]
  %1430 = add i64 %1429, 5
  store i64 %1430, i64* %3, align 8
  br label %block_.L_413569

block_.L_413569:                                  ; preds = %block_.L_413564, %block_41352b
  %1431 = phi i64 [ %1430, %block_.L_413564 ], [ %1285, %block_41352b ]
  %1432 = add i64 %1431, 5
  store i64 %1432, i64* %3, align 8
  br label %block_.L_41356e

block_.L_41356e:                                  ; preds = %block_.L_413569, %block_.L_4134d5
  %storemerge48 = phi i64 [ %1208, %block_.L_4134d5 ], [ %1432, %block_.L_413569 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_413492, %block_.L_4134d5 ], [ %call2_41351c, %block_.L_413569 ]
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -32
  %1435 = add i64 %storemerge48, 4
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  store i8 0, i8* %14, align 1
  %1438 = and i32 %1437, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1443 = icmp eq i32 %1437, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %29, align 1
  %1445 = lshr i32 %1437, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %1443, i64 23, i64 10
  %1447 = add i64 %storemerge48, %.v92
  store i64 %1447, i64* %3, align 8
  br i1 %1443, label %block_.L_413585, label %block_413578

block_413578:                                     ; preds = %block_.L_41356e
  store i64 0, i64* %RAX.i917.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1448 = add i64 %1433, -172
  %1449 = add i64 %1447, 8
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  store i32 0, i32* %1450, align 4
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 189
  store i64 %1452, i64* %3, align 8
  br label %block_.L_41363d

block_.L_413585:                                  ; preds = %block_.L_41356e
  %1453 = add i64 %1433, -28
  %1454 = add i64 %1447, 4
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  store i8 0, i8* %14, align 1
  %1457 = and i32 %1456, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1462 = icmp eq i32 %1456, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %29, align 1
  %1464 = lshr i32 %1456, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %1462, i64 33, i64 10
  %1466 = add i64 %1447, %.v91
  store i64 %1466, i64* %3, align 8
  br i1 %1462, label %block_.L_4135a6, label %block_41358f

block_41358f:                                     ; preds = %block_.L_413585
  %1467 = add i64 %1433, -56
  %1468 = add i64 %1466, 3
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i32*
  %1470 = load i32, i32* %1469, align 4
  %1471 = shl i32 %1470, 2
  %1472 = or i32 %1471, 1
  %1473 = zext i32 %1472 to i64
  store i64 %1473, i64* %RAX.i917.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %1474 = and i32 %1472, 253
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1479 = lshr i32 %1470, 29
  %1480 = and i32 %1479, 1
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %32, align 1
  %1482 = lshr i32 %1470, 29
  %1483 = and i32 %1482, 1
  %1484 = xor i32 %1480, %1483
  %1485 = add nuw nsw i32 %1484, %1480
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %38, align 1
  %1488 = add i64 %1433, -60
  %1489 = add i64 %1466, 12
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = add i32 %1491, %1472
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RAX.i917.pre-phi, align 8
  %1494 = icmp ult i32 %1492, %1472
  %1495 = icmp ult i32 %1492, %1491
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = and i32 %1492, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %21, align 1
  %1503 = xor i32 %1491, %1471
  %1504 = xor i32 %1503, %1492
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %26, align 1
  %1508 = icmp eq i32 %1492, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %29, align 1
  %1510 = lshr i32 %1492, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %32, align 1
  %1512 = lshr i32 %1491, 31
  %1513 = xor i32 %1510, %1480
  %1514 = xor i32 %1510, %1512
  %1515 = add nuw nsw i32 %1513, %1514
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %38, align 1
  %1518 = add i64 %1433, -176
  %1519 = add i64 %1466, 18
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  store i32 %1492, i32* %1520, align 4
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 144
  store i64 %1522, i64* %3, align 8
  br label %block_.L_413631

block_.L_4135a6:                                  ; preds = %block_.L_413585
  %1523 = add i64 %1433, -48
  %1524 = add i64 %1466, 4
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  store i8 0, i8* %14, align 1
  %1527 = and i32 %1526, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527)
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1532 = icmp eq i32 %1526, 0
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %29, align 1
  %1534 = lshr i32 %1526, 31
  %1535 = trunc i32 %1534 to i8
  store i8 %1535, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %1532, i64 26, i64 10
  %1536 = add i64 %1466, %.v90
  store i64 %1536, i64* %3, align 8
  br i1 %1532, label %block_.L_4135c0, label %block_4135b0

block_4135b0:                                     ; preds = %block_.L_4135a6
  store i64 17, i64* %RAX.i917.pre-phi, align 8
  %1537 = add i64 %1433, -180
  %1538 = add i64 %1536, 11
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  store i32 17, i32* %1539, align 4
  %1540 = load i64, i64* %3, align 8
  %1541 = add i64 %1540, 106
  store i64 %1541, i64* %3, align 8
  br label %block_.L_413625

block_.L_4135c0:                                  ; preds = %block_.L_4135a6
  %1542 = add i64 %1433, -52
  %1543 = add i64 %1536, 4
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  store i8 0, i8* %14, align 1
  %1546 = and i32 %1545, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1551 = icmp eq i32 %1545, 0
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %29, align 1
  %1553 = lshr i32 %1545, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %1551, i64 26, i64 10
  %1555 = add i64 %1536, %.v89
  store i64 %1555, i64* %3, align 8
  br i1 %1551, label %block_.L_4135da, label %block_4135ca

block_4135ca:                                     ; preds = %block_.L_4135c0
  store i64 18, i64* %RAX.i917.pre-phi, align 8
  %1556 = add i64 %1433, -184
  %1557 = add i64 %1555, 11
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  store i32 18, i32* %1558, align 4
  %1559 = load i64, i64* %3, align 8
  %1560 = add i64 %1559, 68
  store i64 %1560, i64* %3, align 8
  br label %block_.L_413619

block_.L_4135da:                                  ; preds = %block_.L_4135c0
  %1561 = add i64 %1433, -36
  %1562 = add i64 %1555, 4
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  store i8 0, i8* %14, align 1
  %1565 = and i32 %1564, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1570 = icmp eq i32 %1564, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %29, align 1
  %1572 = lshr i32 %1564, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %1570, i64 33, i64 10
  %1574 = add i64 %1555, %.v
  %1575 = add i64 %1433, -56
  %1576 = add i64 %1574, 3
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = shl i32 %1578, 1
  %1580 = icmp slt i32 %1578, 0
  %1581 = icmp slt i32 %1579, 0
  %1582 = xor i1 %1580, %1581
  %1583 = zext i32 %1579 to i64
  store i64 %1583, i64* %RAX.i917.pre-phi, align 8
  %.lobit54 = lshr i32 %1578, 31
  %1584 = trunc i32 %.lobit54 to i8
  store i8 %1584, i8* %14, align 1
  %1585 = and i32 %1579, 254
  %1586 = tail call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1590 = icmp eq i32 %1579, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %29, align 1
  %1592 = lshr i32 %1578, 30
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  store i8 %1594, i8* %32, align 1
  %1595 = zext i1 %1582 to i8
  store i8 %1595, i8* %38, align 1
  %1596 = add i64 %1574, 8
  store i64 %1596, i64* %3, align 8
  br i1 %1570, label %block_.L_4135fb, label %block_4135e4

block_4135e4:                                     ; preds = %block_.L_4135da
  %1597 = add i32 %1579, 19
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i917.pre-phi, align 8
  %1599 = icmp ugt i32 %1579, -20
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %14, align 1
  %1601 = and i32 %1597, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %21, align 1
  %1606 = xor i32 %1579, 16
  %1607 = xor i32 %1606, %1597
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1611 = lshr i32 %1597, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %32, align 1
  %1613 = lshr i32 %1578, 30
  %1614 = and i32 %1613, 1
  %1615 = xor i32 %1611, %1614
  %1616 = add nuw nsw i32 %1615, %1611
  %1617 = icmp eq i32 %1616, 2
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %38, align 1
  %1619 = add i64 %1433, -60
  %1620 = add i64 %1574, 11
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, %1597
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i917.pre-phi, align 8
  %1625 = icmp ult i32 %1623, %1597
  %1626 = icmp ult i32 %1623, %1622
  %1627 = or i1 %1625, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1623, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1622, %1597
  %1635 = xor i32 %1634, %1623
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %26, align 1
  %1639 = icmp eq i32 %1623, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %29, align 1
  %1641 = lshr i32 %1623, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %32, align 1
  %1643 = lshr i32 %1622, 31
  %1644 = xor i32 %1641, %1611
  %1645 = xor i32 %1641, %1643
  %1646 = add nuw nsw i32 %1644, %1645
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %38, align 1
  %1649 = add i64 %1433, -188
  %1650 = add i64 %1574, 17
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  store i32 %1623, i32* %1651, align 4
  %1652 = load i64, i64* %3, align 8
  %1653 = add i64 %1652, 23
  store i64 %1653, i64* %3, align 8
  br label %block_.L_41360d

block_.L_4135fb:                                  ; preds = %block_.L_4135da
  %1654 = add i32 %1579, 23
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i917.pre-phi, align 8
  %1656 = icmp ugt i32 %1579, -24
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %14, align 1
  %1658 = and i32 %1654, 255
  %1659 = tail call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  store i8 %1662, i8* %21, align 1
  %1663 = xor i32 %1579, 16
  %1664 = xor i32 %1663, %1654
  %1665 = lshr i32 %1664, 4
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  store i8 %1667, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1668 = lshr i32 %1654, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %32, align 1
  %1670 = lshr i32 %1578, 30
  %1671 = and i32 %1670, 1
  %1672 = xor i32 %1668, %1671
  %1673 = add nuw nsw i32 %1672, %1668
  %1674 = icmp eq i32 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %38, align 1
  %1676 = add i64 %1433, -60
  %1677 = add i64 %1574, 11
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = add i32 %1679, %1654
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RAX.i917.pre-phi, align 8
  %1682 = icmp ult i32 %1680, %1654
  %1683 = icmp ult i32 %1680, %1679
  %1684 = or i1 %1682, %1683
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %14, align 1
  %1686 = and i32 %1680, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %21, align 1
  %1691 = xor i32 %1679, %1654
  %1692 = xor i32 %1691, %1680
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %26, align 1
  %1696 = icmp eq i32 %1680, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %29, align 1
  %1698 = lshr i32 %1680, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %32, align 1
  %1700 = lshr i32 %1679, 31
  %1701 = xor i32 %1698, %1668
  %1702 = xor i32 %1698, %1700
  %1703 = add nuw nsw i32 %1701, %1702
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %38, align 1
  %1706 = add i64 %1433, -188
  %1707 = add i64 %1574, 17
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  store i32 %1680, i32* %1708, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_41360d

block_.L_41360d:                                  ; preds = %block_.L_4135fb, %block_4135e4
  %1709 = phi i64 [ %.pre72, %block_.L_4135fb ], [ %1653, %block_4135e4 ]
  %1710 = load i64, i64* %RBP.i, align 8
  %1711 = add i64 %1710, -188
  %1712 = add i64 %1709, 6
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RAX.i917.pre-phi, align 8
  %1716 = add i64 %1710, -184
  %1717 = add i64 %1709, 12
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i32*
  store i32 %1714, i32* %1718, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_413619

block_.L_413619:                                  ; preds = %block_.L_41360d, %block_4135ca
  %1719 = phi i64 [ %.pre73, %block_.L_41360d ], [ %1560, %block_4135ca ]
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -184
  %1722 = add i64 %1719, 6
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RAX.i917.pre-phi, align 8
  %1726 = add i64 %1720, -180
  %1727 = add i64 %1719, 12
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  store i32 %1724, i32* %1728, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_413625

block_.L_413625:                                  ; preds = %block_.L_413619, %block_4135b0
  %1729 = phi i64 [ %.pre74, %block_.L_413619 ], [ %1541, %block_4135b0 ]
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -180
  %1732 = add i64 %1729, 6
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = zext i32 %1734 to i64
  store i64 %1735, i64* %RAX.i917.pre-phi, align 8
  %1736 = add i64 %1730, -176
  %1737 = add i64 %1729, 12
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  store i32 %1734, i32* %1738, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_413631

block_.L_413631:                                  ; preds = %block_.L_413625, %block_41358f
  %1739 = phi i64 [ %.pre75, %block_.L_413625 ], [ %1522, %block_41358f ]
  %1740 = load i64, i64* %RBP.i, align 8
  %1741 = add i64 %1740, -176
  %1742 = add i64 %1739, 6
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RAX.i917.pre-phi, align 8
  %1746 = add i64 %1740, -172
  %1747 = add i64 %1739, 12
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  store i32 %1744, i32* %1748, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_41363d

block_.L_41363d:                                  ; preds = %block_.L_413631, %block_413578
  %1749 = phi i64 [ %.pre76, %block_.L_413631 ], [ %1452, %block_413578 ]
  %1750 = load i64, i64* %RBP.i, align 8
  %1751 = add i64 %1750, -172
  %1752 = add i64 %1749, 6
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RAX.i917.pre-phi, align 8
  %1756 = add i64 %1750, -64
  %1757 = add i64 %1749, 9
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  store i32 %1754, i32* %1758, align 4
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -24
  %1761 = load i64, i64* %3, align 8
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1760 to i32*
  %1764 = load i32, i32* %1763, align 4
  store i8 0, i8* %14, align 1
  %1765 = and i32 %1764, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1770 = icmp eq i32 %1764, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %29, align 1
  %1772 = lshr i32 %1764, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %1770, i64 359, i64 10
  %1774 = add i64 %1761, %.v100
  store i64 %1774, i64* %3, align 8
  br i1 %1770, label %block_.L_4137ad, label %block_413650

block_413650:                                     ; preds = %block_.L_41363d
  %1775 = add i64 %1759, -20
  %1776 = add i64 %1774, 4
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, -2
  %1780 = icmp ult i32 %1778, 2
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %14, align 1
  %1782 = and i32 %1779, 255
  %1783 = tail call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %21, align 1
  %1787 = xor i32 %1779, %1778
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  store i8 %1790, i8* %26, align 1
  %1791 = icmp eq i32 %1779, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %29, align 1
  %1793 = lshr i32 %1779, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %32, align 1
  %1795 = lshr i32 %1778, 31
  %1796 = xor i32 %1793, %1795
  %1797 = add nuw nsw i32 %1796, %1795
  %1798 = icmp eq i32 %1797, 2
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %38, align 1
  %.v101 = select i1 %1791, i64 10, i64 145
  %1800 = add i64 %1774, %.v101
  store i64 %1800, i64* %3, align 8
  br i1 %1791, label %block_41365a, label %block_.L_4136e1

block_41365a:                                     ; preds = %block_413650
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %1801 = add i64 %1759, -64
  %1802 = add i64 %1800, 8
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i32*
  %1804 = load i32, i32* %1803, align 4
  %1805 = zext i32 %1804 to i64
  store i64 %1805, i64* %RCX.i1127, align 8
  store i64 1, i64* %RDX.i1045, align 8
  %1806 = add i64 %1800, 12
  store i64 %1806, i64* %3, align 8
  %1807 = trunc i32 %1804 to i5
  switch i5 %1807, label %1808 [
    i5 0, label %routine_shll__cl___edx.exit507
    i5 1, label %1817
  ]

; <label>:1808:                                   ; preds = %block_41365a
  %1809 = and i32 %1804, 31
  %1810 = zext i32 %1809 to i64
  %1811 = add nuw nsw i64 %1810, 4294967295
  %1812 = and i64 %1811, 4294967295
  %1813 = shl i64 1, %1812
  %1814 = trunc i64 %1813 to i32
  %1815 = icmp slt i32 %1814, 0
  %1816 = shl i32 %1814, 1
  br label %1817

; <label>:1817:                                   ; preds = %block_41365a, %1808
  %1818 = phi i1 [ %1815, %1808 ], [ false, %block_41365a ]
  %1819 = phi i32 [ %1816, %1808 ], [ 2, %block_41365a ]
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RDX.i1045, align 8
  %1821 = zext i1 %1818 to i8
  store i8 %1821, i8* %14, align 1
  %1822 = and i32 %1819, 254
  %1823 = tail call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  store i8 %1826, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1827 = icmp eq i32 %1819, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %29, align 1
  %1829 = lshr i32 %1819, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___edx.exit507

routine_shll__cl___edx.exit507:                   ; preds = %1817, %block_41365a
  %1831 = phi i32 [ %1819, %1817 ], [ 1, %block_41365a ]
  %1832 = sext i32 %1831 to i64
  store i64 %1832, i64* %RSI.i1175, align 8
  %1833 = add i64 %1759, -8
  %1834 = add i64 %1800, 19
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i64*
  %1836 = load i64, i64* %1835, align 8
  store i64 %1836, i64* %RDI.i1178, align 8
  %1837 = add i64 %1836, 504
  %1838 = add i64 %1800, 26
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  %1841 = or i64 %1840, %1832
  store i64 %1841, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %1842 = trunc i64 %1841 to i32
  %1843 = and i32 %1842, 255
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %21, align 1
  %1848 = icmp eq i64 %1841, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %29, align 1
  %1850 = lshr i64 %1841, 63
  %1851 = trunc i64 %1850 to i8
  store i8 %1851, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1852 = add i64 %1800, 33
  store i64 %1852, i64* %3, align 8
  store i64 %1841, i64* %1839, align 8
  %1853 = load i64, i64* %RBP.i, align 8
  %1854 = add i64 %1853, -64
  %1855 = load i64, i64* %3, align 8
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1854 to i32*
  %1858 = load i32, i32* %1857, align 4
  %1859 = add i32 %1858, 1
  %1860 = zext i32 %1859 to i64
  %1861 = icmp eq i32 %1858, -1
  %1862 = icmp eq i32 %1859, 0
  %1863 = or i1 %1861, %1862
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %14, align 1
  %1865 = and i32 %1859, 255
  %1866 = tail call i32 @llvm.ctpop.i32(i32 %1865)
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  store i8 %1869, i8* %21, align 1
  %1870 = xor i32 %1859, %1858
  %1871 = lshr i32 %1870, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %26, align 1
  %1874 = zext i1 %1862 to i8
  store i8 %1874, i8* %29, align 1
  %1875 = lshr i32 %1859, 31
  %1876 = trunc i32 %1875 to i8
  store i8 %1876, i8* %32, align 1
  %1877 = lshr i32 %1858, 31
  %1878 = xor i32 %1875, %1877
  %1879 = add nuw nsw i32 %1878, %1875
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %38, align 1
  store i64 %1860, i64* %RCX.i1127, align 8
  %1882 = load i32, i32* %EAX.i914.pre-phi, align 4
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RDX.i1045, align 8
  %1884 = add i64 %1855, 12
  store i64 %1884, i64* %3, align 8
  %1885 = trunc i32 %1859 to i5
  switch i5 %1885, label %1891 [
    i5 0, label %routine_shll__cl___edx.exit480
    i5 1, label %1886
  ]

; <label>:1886:                                   ; preds = %routine_shll__cl___edx.exit507
  %1887 = shl i32 %1882, 1
  %1888 = icmp slt i32 %1882, 0
  %1889 = icmp slt i32 %1887, 0
  %1890 = xor i1 %1888, %1889
  br label %1900

; <label>:1891:                                   ; preds = %routine_shll__cl___edx.exit507
  %1892 = and i32 %1859, 31
  %1893 = zext i32 %1892 to i64
  %1894 = add nuw nsw i64 %1893, 4294967295
  %1895 = and i64 %1894, 4294967295
  %1896 = shl i64 %1883, %1895
  %1897 = trunc i64 %1896 to i32
  %1898 = icmp slt i32 %1897, 0
  %1899 = shl i32 %1897, 1
  br label %1900

; <label>:1900:                                   ; preds = %1891, %1886
  %1901 = phi i1 [ %1888, %1886 ], [ %1898, %1891 ]
  %1902 = phi i1 [ %1890, %1886 ], [ false, %1891 ]
  %1903 = phi i32 [ %1887, %1886 ], [ %1899, %1891 ]
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RDX.i1045, align 8
  %1905 = zext i1 %1901 to i8
  store i8 %1905, i8* %14, align 1
  %1906 = and i32 %1903, 254
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1911 = icmp eq i32 %1903, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %29, align 1
  %1913 = lshr i32 %1903, 31
  %1914 = trunc i32 %1913 to i8
  store i8 %1914, i8* %32, align 1
  %1915 = zext i1 %1902 to i8
  store i8 %1915, i8* %38, align 1
  br label %routine_shll__cl___edx.exit480

routine_shll__cl___edx.exit480:                   ; preds = %1900, %routine_shll__cl___edx.exit507
  %1916 = phi i32 [ %1903, %1900 ], [ %1882, %routine_shll__cl___edx.exit507 ]
  %1917 = sext i32 %1916 to i64
  store i64 %1917, i64* %RSI.i1175, align 8
  %1918 = add i64 %1853, -8
  %1919 = add i64 %1855, 19
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i64*
  %1921 = load i64, i64* %1920, align 8
  store i64 %1921, i64* %RDI.i1178, align 8
  %1922 = add i64 %1921, 504
  %1923 = add i64 %1855, 26
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i64*
  %1925 = load i64, i64* %1924, align 8
  %1926 = or i64 %1925, %1917
  store i64 %1926, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %1927 = trunc i64 %1926 to i32
  %1928 = and i32 %1927, 255
  %1929 = tail call i32 @llvm.ctpop.i32(i32 %1928)
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = xor i8 %1931, 1
  store i8 %1932, i8* %21, align 1
  %1933 = icmp eq i64 %1926, 0
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %29, align 1
  %1935 = lshr i64 %1926, 63
  %1936 = trunc i64 %1935 to i8
  store i8 %1936, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1937 = add i64 %1855, 33
  store i64 %1937, i64* %3, align 8
  store i64 %1926, i64* %1924, align 8
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -64
  %1940 = load i64, i64* %3, align 8
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = add i32 %1943, 4
  %1945 = zext i32 %1944 to i64
  %1946 = icmp ugt i32 %1943, -5
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %14, align 1
  %1948 = and i32 %1944, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i32 %1944, %1943
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %26, align 1
  %1957 = icmp eq i32 %1944, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %29, align 1
  %1959 = lshr i32 %1944, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %32, align 1
  %1961 = lshr i32 %1943, 31
  %1962 = xor i32 %1959, %1961
  %1963 = add nuw nsw i32 %1962, %1959
  %1964 = icmp eq i32 %1963, 2
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %38, align 1
  store i64 %1945, i64* %RCX.i1127, align 8
  %1966 = load i32, i32* %EAX.i914.pre-phi, align 4
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RDX.i1045, align 8
  %1968 = add i64 %1940, 12
  store i64 %1968, i64* %3, align 8
  %1969 = trunc i32 %1944 to i5
  switch i5 %1969, label %1975 [
    i5 0, label %routine_shll__cl___edx.exit453
    i5 1, label %1970
  ]

; <label>:1970:                                   ; preds = %routine_shll__cl___edx.exit480
  %1971 = shl i32 %1966, 1
  %1972 = icmp slt i32 %1966, 0
  %1973 = icmp slt i32 %1971, 0
  %1974 = xor i1 %1972, %1973
  br label %1984

; <label>:1975:                                   ; preds = %routine_shll__cl___edx.exit480
  %1976 = and i32 %1944, 31
  %1977 = zext i32 %1976 to i64
  %1978 = add nuw nsw i64 %1977, 4294967295
  %1979 = and i64 %1978, 4294967295
  %1980 = shl i64 %1967, %1979
  %1981 = trunc i64 %1980 to i32
  %1982 = icmp slt i32 %1981, 0
  %1983 = shl i32 %1981, 1
  br label %1984

; <label>:1984:                                   ; preds = %1975, %1970
  %1985 = phi i1 [ %1972, %1970 ], [ %1982, %1975 ]
  %1986 = phi i1 [ %1974, %1970 ], [ false, %1975 ]
  %1987 = phi i32 [ %1971, %1970 ], [ %1983, %1975 ]
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %RDX.i1045, align 8
  %1989 = zext i1 %1985 to i8
  store i8 %1989, i8* %14, align 1
  %1990 = and i32 %1987, 254
  %1991 = tail call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  store i8 %1994, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1995 = icmp eq i32 %1987, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %29, align 1
  %1997 = lshr i32 %1987, 31
  %1998 = trunc i32 %1997 to i8
  store i8 %1998, i8* %32, align 1
  %1999 = zext i1 %1986 to i8
  store i8 %1999, i8* %38, align 1
  br label %routine_shll__cl___edx.exit453

routine_shll__cl___edx.exit453:                   ; preds = %1984, %routine_shll__cl___edx.exit480
  %2000 = phi i32 [ %1987, %1984 ], [ %1966, %routine_shll__cl___edx.exit480 ]
  %2001 = sext i32 %2000 to i64
  store i64 %2001, i64* %RSI.i1175, align 8
  %2002 = add i64 %1938, -8
  %2003 = add i64 %1940, 19
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i64*
  %2005 = load i64, i64* %2004, align 8
  store i64 %2005, i64* %RDI.i1178, align 8
  %2006 = add i64 %2005, 504
  %2007 = add i64 %1940, 26
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i64*
  %2009 = load i64, i64* %2008, align 8
  %2010 = or i64 %2009, %2001
  store i64 %2010, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2011 = trunc i64 %2010 to i32
  %2012 = and i32 %2011, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = icmp eq i64 %2010, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %29, align 1
  %2019 = lshr i64 %2010, 63
  %2020 = trunc i64 %2019 to i8
  store i8 %2020, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2021 = add i64 %1940, 33
  store i64 %2021, i64* %3, align 8
  store i64 %2010, i64* %2008, align 8
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -64
  %2024 = load i64, i64* %3, align 8
  %2025 = add i64 %2024, 3
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2023 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = add i32 %2027, 5
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RDX.i1045, align 8
  %2030 = icmp ugt i32 %2027, -6
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %14, align 1
  %2032 = and i32 %2028, 255
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %21, align 1
  %2037 = xor i32 %2028, %2027
  %2038 = lshr i32 %2037, 4
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  store i8 %2040, i8* %26, align 1
  %2041 = icmp eq i32 %2028, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %29, align 1
  %2043 = lshr i32 %2028, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %32, align 1
  %2045 = lshr i32 %2027, 31
  %2046 = xor i32 %2043, %2045
  %2047 = add nuw nsw i32 %2046, %2043
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %38, align 1
  store i64 %2029, i64* %RCX.i1127, align 8
  %2050 = load i64, i64* %RAX.i917.pre-phi, align 8
  %2051 = add i64 %2024, 10
  store i64 %2051, i64* %3, align 8
  %2052 = trunc i32 %2028 to i5
  %2053 = trunc i64 %2050 to i32
  switch i5 %2052, label %2059 [
    i5 0, label %routine_shll__cl___eax.exit429
    i5 1, label %2054
  ]

; <label>:2054:                                   ; preds = %routine_shll__cl___edx.exit453
  %2055 = shl i32 %2053, 1
  %2056 = icmp slt i32 %2053, 0
  %2057 = icmp slt i32 %2055, 0
  %2058 = xor i1 %2056, %2057
  br label %2069

; <label>:2059:                                   ; preds = %routine_shll__cl___edx.exit453
  %2060 = and i32 %2028, 31
  %2061 = zext i32 %2060 to i64
  %2062 = add nuw nsw i64 %2061, 4294967295
  %2063 = and i64 %2050, 4294967295
  %2064 = and i64 %2062, 4294967295
  %2065 = shl i64 %2063, %2064
  %2066 = trunc i64 %2065 to i32
  %2067 = icmp slt i32 %2066, 0
  %2068 = shl i32 %2066, 1
  br label %2069

; <label>:2069:                                   ; preds = %2059, %2054
  %2070 = phi i1 [ %2056, %2054 ], [ %2067, %2059 ]
  %2071 = phi i1 [ %2058, %2054 ], [ false, %2059 ]
  %2072 = phi i32 [ %2055, %2054 ], [ %2068, %2059 ]
  %2073 = zext i32 %2072 to i64
  store i64 %2073, i64* %RAX.i917.pre-phi, align 8
  %2074 = zext i1 %2070 to i8
  store i8 %2074, i8* %14, align 1
  %2075 = and i32 %2072, 254
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2080 = icmp eq i32 %2072, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %29, align 1
  %2082 = lshr i32 %2072, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %32, align 1
  %2084 = zext i1 %2071 to i8
  store i8 %2084, i8* %38, align 1
  br label %routine_shll__cl___eax.exit429

routine_shll__cl___eax.exit429:                   ; preds = %2069, %routine_shll__cl___edx.exit453
  %2085 = phi i32 [ %2072, %2069 ], [ %2053, %routine_shll__cl___edx.exit453 ]
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RSI.i1175, align 8
  %2087 = add i64 %2022, -8
  %2088 = add i64 %2024, 17
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i64*
  %2090 = load i64, i64* %2089, align 8
  store i64 %2090, i64* %RDI.i1178, align 8
  %2091 = add i64 %2090, 504
  %2092 = add i64 %2024, 24
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i64*
  %2094 = load i64, i64* %2093, align 8
  %2095 = or i64 %2094, %2086
  store i64 %2095, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2096 = trunc i64 %2095 to i32
  %2097 = and i32 %2096, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = icmp eq i64 %2095, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %29, align 1
  %2104 = lshr i64 %2095, 63
  %2105 = trunc i64 %2104 to i8
  store i8 %2105, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2106 = add i64 %2024, 31
  store i64 %2106, i64* %3, align 8
  store i64 %2095, i64* %2093, align 8
  %2107 = load i64, i64* %3, align 8
  %2108 = add i64 %2107, 204
  br label %block_.L_4137a8

block_.L_4136e1:                                  ; preds = %block_413650
  %2109 = add i64 %1800, 4
  store i64 %2109, i64* %3, align 8
  %2110 = load i32, i32* %1777, align 4
  %2111 = add i32 %2110, -3
  %2112 = icmp ult i32 %2110, 3
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %14, align 1
  %2114 = and i32 %2111, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  %2119 = xor i32 %2111, %2110
  %2120 = lshr i32 %2119, 4
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  store i8 %2122, i8* %26, align 1
  %2123 = icmp eq i32 %2111, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %29, align 1
  %2125 = lshr i32 %2111, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1
  %2127 = lshr i32 %2110, 31
  %2128 = xor i32 %2125, %2127
  %2129 = add nuw nsw i32 %2128, %2127
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1
  %.v102 = select i1 %2123, i64 10, i64 79
  %2132 = add i64 %1800, %.v102
  store i64 %2132, i64* %3, align 8
  br i1 %2123, label %block_4136eb, label %block_.L_413730

block_4136eb:                                     ; preds = %block_.L_4136e1
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %2133 = add i64 %1759, -64
  %2134 = add i64 %2132, 8
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = zext i32 %2136 to i64
  store i64 %2137, i64* %RCX.i1127, align 8
  store i64 1, i64* %RDX.i1045, align 8
  %2138 = add i64 %2132, 12
  store i64 %2138, i64* %3, align 8
  %2139 = trunc i32 %2136 to i5
  switch i5 %2139, label %2140 [
    i5 0, label %routine_shll__cl___edx.exit401
    i5 1, label %2149
  ]

; <label>:2140:                                   ; preds = %block_4136eb
  %2141 = and i32 %2136, 31
  %2142 = zext i32 %2141 to i64
  %2143 = add nuw nsw i64 %2142, 4294967295
  %2144 = and i64 %2143, 4294967295
  %2145 = shl i64 1, %2144
  %2146 = trunc i64 %2145 to i32
  %2147 = icmp slt i32 %2146, 0
  %2148 = shl i32 %2146, 1
  br label %2149

; <label>:2149:                                   ; preds = %block_4136eb, %2140
  %2150 = phi i1 [ %2147, %2140 ], [ false, %block_4136eb ]
  %2151 = phi i32 [ %2148, %2140 ], [ 2, %block_4136eb ]
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RDX.i1045, align 8
  %2153 = zext i1 %2150 to i8
  store i8 %2153, i8* %14, align 1
  %2154 = and i32 %2151, 254
  %2155 = tail call i32 @llvm.ctpop.i32(i32 %2154)
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = xor i8 %2157, 1
  store i8 %2158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2159 = icmp eq i32 %2151, 0
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %29, align 1
  %2161 = lshr i32 %2151, 31
  %2162 = trunc i32 %2161 to i8
  store i8 %2162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___edx.exit401

routine_shll__cl___edx.exit401:                   ; preds = %2149, %block_4136eb
  %2163 = phi i32 [ %2151, %2149 ], [ 1, %block_4136eb ]
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RSI.i1175, align 8
  %2165 = add i64 %1759, -8
  %2166 = add i64 %2132, 19
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RDI.i1178, align 8
  %2169 = add i64 %2168, 504
  %2170 = add i64 %2132, 26
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  %2172 = load i64, i64* %2171, align 8
  %2173 = or i64 %2172, %2164
  store i64 %2173, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2174 = trunc i64 %2173 to i32
  %2175 = and i32 %2174, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  %2180 = icmp eq i64 %2173, 0
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %29, align 1
  %2182 = lshr i64 %2173, 63
  %2183 = trunc i64 %2182 to i8
  store i8 %2183, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2184 = add i64 %2132, 33
  store i64 %2184, i64* %3, align 8
  store i64 %2173, i64* %2171, align 8
  %2185 = load i64, i64* %RBP.i, align 8
  %2186 = add i64 %2185, -64
  %2187 = load i64, i64* %3, align 8
  %2188 = add i64 %2187, 3
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2186 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = add i32 %2190, 1
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDX.i1045, align 8
  %2193 = icmp eq i32 %2190, -1
  %2194 = icmp eq i32 %2191, 0
  %2195 = or i1 %2193, %2194
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %14, align 1
  %2197 = and i32 %2191, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %21, align 1
  %2202 = xor i32 %2191, %2190
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %26, align 1
  %2206 = zext i1 %2194 to i8
  store i8 %2206, i8* %29, align 1
  %2207 = lshr i32 %2191, 31
  %2208 = trunc i32 %2207 to i8
  store i8 %2208, i8* %32, align 1
  %2209 = lshr i32 %2190, 31
  %2210 = xor i32 %2207, %2209
  %2211 = add nuw nsw i32 %2210, %2207
  %2212 = icmp eq i32 %2211, 2
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %38, align 1
  store i64 %2192, i64* %RCX.i1127, align 8
  %2214 = load i64, i64* %RAX.i917.pre-phi, align 8
  %2215 = add i64 %2187, 10
  store i64 %2215, i64* %3, align 8
  %2216 = trunc i32 %2191 to i5
  %2217 = trunc i64 %2214 to i32
  switch i5 %2216, label %2223 [
    i5 0, label %routine_shll__cl___eax.exit377
    i5 1, label %2218
  ]

; <label>:2218:                                   ; preds = %routine_shll__cl___edx.exit401
  %2219 = shl i32 %2217, 1
  %2220 = icmp slt i32 %2217, 0
  %2221 = icmp slt i32 %2219, 0
  %2222 = xor i1 %2220, %2221
  br label %2233

; <label>:2223:                                   ; preds = %routine_shll__cl___edx.exit401
  %2224 = and i32 %2191, 31
  %2225 = zext i32 %2224 to i64
  %2226 = add nuw nsw i64 %2225, 4294967295
  %2227 = and i64 %2214, 4294967295
  %2228 = and i64 %2226, 4294967295
  %2229 = shl i64 %2227, %2228
  %2230 = trunc i64 %2229 to i32
  %2231 = icmp slt i32 %2230, 0
  %2232 = shl i32 %2230, 1
  br label %2233

; <label>:2233:                                   ; preds = %2223, %2218
  %2234 = phi i1 [ %2220, %2218 ], [ %2231, %2223 ]
  %2235 = phi i1 [ %2222, %2218 ], [ false, %2223 ]
  %2236 = phi i32 [ %2219, %2218 ], [ %2232, %2223 ]
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RAX.i917.pre-phi, align 8
  %2238 = zext i1 %2234 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = and i32 %2236, 254
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2244 = icmp eq i32 %2236, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %29, align 1
  %2246 = lshr i32 %2236, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %32, align 1
  %2248 = zext i1 %2235 to i8
  store i8 %2248, i8* %38, align 1
  br label %routine_shll__cl___eax.exit377

routine_shll__cl___eax.exit377:                   ; preds = %2233, %routine_shll__cl___edx.exit401
  %2249 = phi i32 [ %2236, %2233 ], [ %2217, %routine_shll__cl___edx.exit401 ]
  %2250 = sext i32 %2249 to i64
  store i64 %2250, i64* %RSI.i1175, align 8
  %2251 = add i64 %2185, -8
  %2252 = add i64 %2187, 17
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i64*
  %2254 = load i64, i64* %2253, align 8
  store i64 %2254, i64* %RDI.i1178, align 8
  %2255 = add i64 %2254, 504
  %2256 = add i64 %2187, 24
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i64*
  %2258 = load i64, i64* %2257, align 8
  %2259 = or i64 %2258, %2250
  store i64 %2259, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2260 = trunc i64 %2259 to i32
  %2261 = and i32 %2260, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %21, align 1
  %2266 = icmp eq i64 %2259, 0
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %29, align 1
  %2268 = lshr i64 %2259, 63
  %2269 = trunc i64 %2268 to i8
  store i8 %2269, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2270 = add i64 %2187, 31
  store i64 %2270, i64* %3, align 8
  store i64 %2259, i64* %2257, align 8
  %2271 = load i64, i64* %3, align 8
  %2272 = add i64 %2271, 120
  br label %block_.L_4137a3

block_.L_413730:                                  ; preds = %block_.L_4136e1
  %2273 = add i64 %2132, 4
  store i64 %2273, i64* %3, align 8
  %2274 = load i32, i32* %1777, align 4
  %2275 = add i32 %2274, -4
  %2276 = icmp ult i32 %2274, 4
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %14, align 1
  %2278 = and i32 %2275, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %21, align 1
  %2283 = xor i32 %2275, %2274
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %26, align 1
  %2287 = icmp eq i32 %2275, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %29, align 1
  %2289 = lshr i32 %2275, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %32, align 1
  %2291 = lshr i32 %2274, 31
  %2292 = xor i32 %2289, %2291
  %2293 = add nuw nsw i32 %2292, %2291
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %38, align 1
  %.v103 = select i1 %2287, i64 10, i64 79
  %2296 = add i64 %2132, %.v103
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %2297 = add i64 %1759, -64
  %2298 = add i64 %2296, 8
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i1127, align 8
  %2302 = trunc i32 %2300 to i8
  br i1 %2287, label %block_41373a, label %block_.L_41377f

block_41373a:                                     ; preds = %block_.L_413730
  store i64 1, i64* %RDX.i1045, align 8
  %2303 = add i64 %2296, 12
  store i64 %2303, i64* %3, align 8
  %2304 = trunc i32 %2300 to i5
  switch i5 %2304, label %2305 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %2314
  ]

; <label>:2305:                                   ; preds = %block_41373a
  %2306 = and i8 %2302, 31
  %2307 = zext i8 %2306 to i64
  %2308 = add nuw nsw i64 %2307, 4294967295
  %2309 = and i64 %2308, 4294967295
  %2310 = shl i64 1, %2309
  %2311 = trunc i64 %2310 to i32
  %2312 = icmp slt i32 %2311, 0
  %2313 = shl i32 %2311, 1
  br label %2314

; <label>:2314:                                   ; preds = %block_41373a, %2305
  %2315 = phi i1 [ %2312, %2305 ], [ false, %block_41373a ]
  %2316 = phi i32 [ %2313, %2305 ], [ 2, %block_41373a ]
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RDX.i1045, align 8
  %2318 = zext i1 %2315 to i8
  store i8 %2318, i8* %14, align 1
  %2319 = and i32 %2316, 254
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2324 = icmp eq i32 %2316, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %29, align 1
  %2326 = lshr i32 %2316, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %2314, %block_41373a
  %2328 = phi i32 [ %2316, %2314 ], [ 1, %block_41373a ]
  %2329 = sext i32 %2328 to i64
  store i64 %2329, i64* %RSI.i1175, align 8
  %2330 = add i64 %1759, -8
  %2331 = add i64 %2296, 19
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i64*
  %2333 = load i64, i64* %2332, align 8
  store i64 %2333, i64* %RDI.i1178, align 8
  %2334 = add i64 %2333, 504
  %2335 = add i64 %2296, 26
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  %2338 = or i64 %2337, %2329
  store i64 %2338, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2339 = trunc i64 %2338 to i32
  %2340 = and i32 %2339, 255
  %2341 = tail call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  store i8 %2344, i8* %21, align 1
  %2345 = icmp eq i64 %2338, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %29, align 1
  %2347 = lshr i64 %2338, 63
  %2348 = trunc i64 %2347 to i8
  store i8 %2348, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2349 = add i64 %2296, 33
  store i64 %2349, i64* %3, align 8
  store i64 %2338, i64* %2336, align 8
  %2350 = load i64, i64* %RBP.i, align 8
  %2351 = add i64 %2350, -64
  %2352 = load i64, i64* %3, align 8
  %2353 = add i64 %2352, 3
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2351 to i32*
  %2355 = load i32, i32* %2354, align 4
  %2356 = add i32 %2355, 4
  %2357 = zext i32 %2356 to i64
  store i64 %2357, i64* %RDX.i1045, align 8
  %2358 = icmp ugt i32 %2355, -5
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %14, align 1
  %2360 = and i32 %2356, 255
  %2361 = tail call i32 @llvm.ctpop.i32(i32 %2360)
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  store i8 %2364, i8* %21, align 1
  %2365 = xor i32 %2356, %2355
  %2366 = lshr i32 %2365, 4
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  store i8 %2368, i8* %26, align 1
  %2369 = icmp eq i32 %2356, 0
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %29, align 1
  %2371 = lshr i32 %2356, 31
  %2372 = trunc i32 %2371 to i8
  store i8 %2372, i8* %32, align 1
  %2373 = lshr i32 %2355, 31
  %2374 = xor i32 %2371, %2373
  %2375 = add nuw nsw i32 %2374, %2371
  %2376 = icmp eq i32 %2375, 2
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %38, align 1
  store i64 %2357, i64* %RCX.i1127, align 8
  %2378 = load i64, i64* %RAX.i917.pre-phi, align 8
  %2379 = add i64 %2352, 10
  store i64 %2379, i64* %3, align 8
  %2380 = trunc i32 %2356 to i5
  %2381 = trunc i64 %2378 to i32
  switch i5 %2380, label %2387 [
    i5 0, label %routine_shll__cl___eax.exit327
    i5 1, label %2382
  ]

; <label>:2382:                                   ; preds = %routine_shll__cl___edx.exit
  %2383 = shl i32 %2381, 1
  %2384 = icmp slt i32 %2381, 0
  %2385 = icmp slt i32 %2383, 0
  %2386 = xor i1 %2384, %2385
  br label %2397

; <label>:2387:                                   ; preds = %routine_shll__cl___edx.exit
  %2388 = and i32 %2356, 31
  %2389 = zext i32 %2388 to i64
  %2390 = add nuw nsw i64 %2389, 4294967295
  %2391 = and i64 %2378, 4294967295
  %2392 = and i64 %2390, 4294967295
  %2393 = shl i64 %2391, %2392
  %2394 = trunc i64 %2393 to i32
  %2395 = icmp slt i32 %2394, 0
  %2396 = shl i32 %2394, 1
  br label %2397

; <label>:2397:                                   ; preds = %2387, %2382
  %2398 = phi i1 [ %2384, %2382 ], [ %2395, %2387 ]
  %2399 = phi i1 [ %2386, %2382 ], [ false, %2387 ]
  %2400 = phi i32 [ %2383, %2382 ], [ %2396, %2387 ]
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RAX.i917.pre-phi, align 8
  %2402 = zext i1 %2398 to i8
  store i8 %2402, i8* %14, align 1
  %2403 = and i32 %2400, 254
  %2404 = tail call i32 @llvm.ctpop.i32(i32 %2403)
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  store i8 %2407, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2408 = icmp eq i32 %2400, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %29, align 1
  %2410 = lshr i32 %2400, 31
  %2411 = trunc i32 %2410 to i8
  store i8 %2411, i8* %32, align 1
  %2412 = zext i1 %2399 to i8
  store i8 %2412, i8* %38, align 1
  br label %routine_shll__cl___eax.exit327

routine_shll__cl___eax.exit327:                   ; preds = %2397, %routine_shll__cl___edx.exit
  %2413 = phi i32 [ %2400, %2397 ], [ %2381, %routine_shll__cl___edx.exit ]
  %2414 = sext i32 %2413 to i64
  store i64 %2414, i64* %RSI.i1175, align 8
  %2415 = add i64 %2350, -8
  %2416 = add i64 %2352, 17
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i64*
  %2418 = load i64, i64* %2417, align 8
  store i64 %2418, i64* %RDI.i1178, align 8
  %2419 = add i64 %2418, 504
  %2420 = add i64 %2352, 24
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i64*
  %2422 = load i64, i64* %2421, align 8
  %2423 = or i64 %2422, %2414
  store i64 %2423, i64* %RSI.i1175, align 8
  store i8 0, i8* %14, align 1
  %2424 = trunc i64 %2423 to i32
  %2425 = and i32 %2424, 255
  %2426 = tail call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  store i8 %2429, i8* %21, align 1
  %2430 = icmp eq i64 %2423, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %29, align 1
  %2432 = lshr i64 %2423, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2434 = add i64 %2352, 31
  store i64 %2434, i64* %3, align 8
  store i64 %2423, i64* %2421, align 8
  %2435 = load i64, i64* %3, align 8
  %2436 = add i64 %2435, 36
  store i64 %2436, i64* %3, align 8
  br label %block_.L_41379e

block_.L_41377f:                                  ; preds = %block_.L_413730
  %2437 = add i64 %2296, 10
  store i64 %2437, i64* %3, align 8
  %2438 = trunc i32 %2300 to i5
  switch i5 %2438, label %2439 [
    i5 0, label %routine_shll__cl___eax.exit305
    i5 1, label %2448
  ]

; <label>:2439:                                   ; preds = %block_.L_41377f
  %2440 = and i8 %2302, 31
  %2441 = zext i8 %2440 to i64
  %2442 = add nuw nsw i64 %2441, 4294967295
  %2443 = and i64 %2442, 4294967295
  %2444 = shl i64 1, %2443
  %2445 = trunc i64 %2444 to i32
  %2446 = icmp slt i32 %2445, 0
  %2447 = shl i32 %2445, 1
  br label %2448

; <label>:2448:                                   ; preds = %block_.L_41377f, %2439
  %2449 = phi i1 [ %2446, %2439 ], [ false, %block_.L_41377f ]
  %2450 = phi i32 [ %2447, %2439 ], [ 2, %block_.L_41377f ]
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RAX.i917.pre-phi, align 8
  %2452 = zext i1 %2449 to i8
  store i8 %2452, i8* %14, align 1
  %2453 = and i32 %2450, 254
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2458 = icmp eq i32 %2450, 0
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %29, align 1
  %2460 = lshr i32 %2450, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit305

routine_shll__cl___eax.exit305:                   ; preds = %2448, %block_.L_41377f
  %2462 = phi i32 [ %2450, %2448 ], [ 1, %block_.L_41377f ]
  %2463 = sext i32 %2462 to i64
  store i64 %2463, i64* %RDX.i1045, align 8
  %2464 = add i64 %1759, -8
  %2465 = add i64 %2296, 17
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i64*
  %2467 = load i64, i64* %2466, align 8
  store i64 %2467, i64* %RSI.i1175, align 8
  %2468 = add i64 %2467, 504
  %2469 = add i64 %2296, 24
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i64*
  %2471 = load i64, i64* %2470, align 8
  %2472 = or i64 %2471, %2463
  store i64 %2472, i64* %RDX.i1045, align 8
  store i8 0, i8* %14, align 1
  %2473 = trunc i64 %2472 to i32
  %2474 = and i32 %2473, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  %2479 = icmp eq i64 %2472, 0
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %29, align 1
  %2481 = lshr i64 %2472, 63
  %2482 = trunc i64 %2481 to i8
  store i8 %2482, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2483 = add i64 %2296, 31
  store i64 %2483, i64* %3, align 8
  store i64 %2472, i64* %2470, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_41379e

block_.L_41379e:                                  ; preds = %routine_shll__cl___eax.exit305, %routine_shll__cl___eax.exit327
  %2484 = phi i64 [ %.pre77, %routine_shll__cl___eax.exit305 ], [ %2436, %routine_shll__cl___eax.exit327 ]
  %2485 = add i64 %2484, 5
  store i64 %2485, i64* %3, align 8
  br label %block_.L_4137a3

block_.L_4137a3:                                  ; preds = %block_.L_41379e, %routine_shll__cl___eax.exit377
  %storemerge52 = phi i64 [ %2272, %routine_shll__cl___eax.exit377 ], [ %2485, %block_.L_41379e ]
  %2486 = add i64 %storemerge52, 5
  store i64 %2486, i64* %3, align 8
  br label %block_.L_4137a8

block_.L_4137a8:                                  ; preds = %block_.L_4137a3, %routine_shll__cl___eax.exit429
  %storemerge49 = phi i64 [ %2108, %routine_shll__cl___eax.exit429 ], [ %2486, %block_.L_4137a3 ]
  %2487 = add i64 %storemerge49, 5
  store i64 %2487, i64* %3, align 8
  %.pre78 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4137ad

block_.L_4137ad:                                  ; preds = %block_.L_4137a8, %block_.L_41363d
  %2488 = phi i64 [ %2487, %block_.L_4137a8 ], [ %1774, %block_.L_41363d ]
  %2489 = phi i64 [ %.pre78, %block_.L_4137a8 ], [ %1759, %block_.L_41363d ]
  %2490 = add i64 %2489, -32
  %2491 = add i64 %2488, 4
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  store i8 0, i8* %14, align 1
  %2494 = and i32 %2493, 255
  %2495 = tail call i32 @llvm.ctpop.i32(i32 %2494)
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  %2498 = xor i8 %2497, 1
  store i8 %2498, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2499 = icmp eq i32 %2493, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %29, align 1
  %2501 = lshr i32 %2493, 31
  %2502 = trunc i32 %2501 to i8
  store i8 %2502, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v104 = select i1 %2499, i64 23, i64 10
  %2503 = add i64 %2488, %.v104
  store i64 %2503, i64* %3, align 8
  br i1 %2499, label %block_.L_4137c4, label %block_4137b7

block_4137b7:                                     ; preds = %block_.L_4137ad
  store i64 0, i64* %RAX.i917.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2504 = add i64 %2489, -192
  %2505 = add i64 %2503, 8
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  store i32 0, i32* %2506, align 4
  %2507 = load i64, i64* %3, align 8
  %2508 = add i64 %2507, 142
  store i64 %2508, i64* %3, align 8
  br label %block_.L_41384d

block_.L_4137c4:                                  ; preds = %block_.L_4137ad
  %2509 = add i64 %2489, -28
  %2510 = add i64 %2503, 4
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  store i8 0, i8* %14, align 1
  %2513 = and i32 %2512, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2518 = icmp eq i32 %2512, 0
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %29, align 1
  %2520 = lshr i32 %2512, 31
  %2521 = trunc i32 %2520 to i8
  store i8 %2521, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v110 = select i1 %2518, i64 26, i64 10
  %2522 = add i64 %2503, %.v110
  store i64 %2522, i64* %3, align 8
  br i1 %2518, label %block_.L_4137de, label %block_4137ce

block_4137ce:                                     ; preds = %block_.L_4137c4
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %2523 = add i64 %2489, -196
  %2524 = add i64 %2522, 11
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  store i32 1, i32* %2525, align 4
  %2526 = load i64, i64* %3, align 8
  %2527 = add i64 %2526, 104
  store i64 %2527, i64* %3, align 8
  br label %block_.L_413841

block_.L_4137de:                                  ; preds = %block_.L_4137c4
  %2528 = add i64 %2489, -48
  %2529 = add i64 %2522, 4
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  store i8 0, i8* %14, align 1
  %2532 = and i32 %2531, 255
  %2533 = tail call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  store i8 %2536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2537 = icmp eq i32 %2531, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %29, align 1
  %2539 = lshr i32 %2531, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v111 = select i1 %2537, i64 26, i64 10
  %2541 = add i64 %2522, %.v111
  store i64 %2541, i64* %3, align 8
  br i1 %2537, label %block_.L_4137f8, label %block_4137e8

block_4137e8:                                     ; preds = %block_.L_4137de
  store i64 17, i64* %RAX.i917.pre-phi, align 8
  %2542 = add i64 %2489, -200
  %2543 = add i64 %2541, 11
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  store i32 17, i32* %2544, align 4
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 66
  store i64 %2546, i64* %3, align 8
  br label %block_.L_413835

block_.L_4137f8:                                  ; preds = %block_.L_4137de
  %2547 = add i64 %2489, -52
  %2548 = add i64 %2541, 4
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i32*
  %2550 = load i32, i32* %2549, align 4
  store i8 0, i8* %14, align 1
  %2551 = and i32 %2550, 255
  %2552 = tail call i32 @llvm.ctpop.i32(i32 %2551)
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  store i8 %2555, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2556 = icmp eq i32 %2550, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %29, align 1
  %2558 = lshr i32 %2550, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %2556, i64 26, i64 10
  %2560 = add i64 %2541, %.v112
  %2561 = add i64 %2560, 5
  store i64 %2561, i64* %3, align 8
  br i1 %2556, label %block_.L_413812, label %block_413802

block_413802:                                     ; preds = %block_.L_4137f8
  store i64 18, i64* %RAX.i917.pre-phi, align 8
  %2562 = add i64 %2489, -204
  %2563 = add i64 %2560, 11
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i32*
  store i32 18, i32* %2564, align 4
  %2565 = load i64, i64* %3, align 8
  %2566 = add i64 %2565, 28
  store i64 %2566, i64* %3, align 8
  br label %block_.L_413829

block_.L_413812:                                  ; preds = %block_.L_4137f8
  store i64 23, i64* %RAX.i917.pre-phi, align 8
  store i64 19, i64* %RCX.i1127, align 8
  %2567 = add i64 %2489, -36
  %2568 = add i64 %2560, 14
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  store i8 0, i8* %14, align 1
  %2571 = and i32 %2570, 255
  %2572 = tail call i32 @llvm.ctpop.i32(i32 %2571)
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = xor i8 %2574, 1
  store i8 %2575, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2576 = icmp eq i32 %2570, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %29, align 1
  %2578 = lshr i32 %2570, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2580 = select i1 %2576, i64 23, i64 19
  store i64 %2580, i64* %RAX.i917.pre-phi, align 8
  %2581 = add i64 %2489, -204
  %2582 = trunc i64 %2580 to i32
  %2583 = add i64 %2560, 23
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2581 to i32*
  store i32 %2582, i32* %2584, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_413829

block_.L_413829:                                  ; preds = %block_.L_413812, %block_413802
  %2585 = phi i64 [ %.pre79, %block_.L_413812 ], [ %2566, %block_413802 ]
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -204
  %2588 = add i64 %2585, 6
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i32*
  %2590 = load i32, i32* %2589, align 4
  %2591 = zext i32 %2590 to i64
  store i64 %2591, i64* %RAX.i917.pre-phi, align 8
  %2592 = add i64 %2586, -200
  %2593 = add i64 %2585, 12
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i32*
  store i32 %2590, i32* %2594, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_413835

block_.L_413835:                                  ; preds = %block_.L_413829, %block_4137e8
  %2595 = phi i64 [ %.pre80, %block_.L_413829 ], [ %2546, %block_4137e8 ]
  %2596 = load i64, i64* %RBP.i, align 8
  %2597 = add i64 %2596, -200
  %2598 = add i64 %2595, 6
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i917.pre-phi, align 8
  %2602 = add i64 %2596, -196
  %2603 = add i64 %2595, 12
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  store i32 %2600, i32* %2604, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_413841

block_.L_413841:                                  ; preds = %block_.L_413835, %block_4137ce
  %2605 = phi i64 [ %.pre81, %block_.L_413835 ], [ %2527, %block_4137ce ]
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -196
  %2608 = add i64 %2605, 6
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i917.pre-phi, align 8
  %2612 = add i64 %2606, -192
  %2613 = add i64 %2605, 12
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  store i32 %2610, i32* %2614, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_41384d

block_.L_41384d:                                  ; preds = %block_.L_413841, %block_4137b7
  %2615 = phi i64 [ %.pre82, %block_.L_413841 ], [ %2508, %block_4137b7 ]
  %2616 = load i64, i64* %RBP.i, align 8
  %2617 = add i64 %2616, -192
  %2618 = add i64 %2615, 6
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RAX.i917.pre-phi, align 8
  %2622 = add i64 %2616, -64
  %2623 = add i64 %2615, 9
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  store i32 %2620, i32* %2624, align 4
  %2625 = load i64, i64* %RBP.i, align 8
  %2626 = add i64 %2625, -20
  %2627 = load i64, i64* %3, align 8
  %2628 = add i64 %2627, 4
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2626 to i32*
  %2630 = load i32, i32* %2629, align 4
  %2631 = add i32 %2630, -2
  %2632 = icmp ult i32 %2630, 2
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %14, align 1
  %2634 = and i32 %2631, 255
  %2635 = tail call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  store i8 %2638, i8* %21, align 1
  %2639 = xor i32 %2631, %2630
  %2640 = lshr i32 %2639, 4
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  store i8 %2642, i8* %26, align 1
  %2643 = icmp eq i32 %2631, 0
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %29, align 1
  %2645 = lshr i32 %2631, 31
  %2646 = trunc i32 %2645 to i8
  store i8 %2646, i8* %32, align 1
  %2647 = lshr i32 %2630, 31
  %2648 = xor i32 %2645, %2647
  %2649 = add nuw nsw i32 %2648, %2647
  %2650 = icmp eq i32 %2649, 2
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %38, align 1
  %.v105 = select i1 %2643, i64 415, i64 10
  %2652 = add i64 %2627, %.v105
  store i64 %2652, i64* %3, align 8
  br i1 %2643, label %block_.L_4139f5, label %block_413860

block_413860:                                     ; preds = %block_.L_41384d
  %2653 = add i64 %2625, -136
  %2654 = add i64 %2652, 7
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  store i8 0, i8* %14, align 1
  %2657 = and i32 %2656, 255
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2662 = icmp eq i32 %2656, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %29, align 1
  %2664 = lshr i32 %2656, 31
  %2665 = trunc i32 %2664 to i8
  store i8 %2665, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %2662, i64 164, i64 13
  %2666 = add i64 %2652, %.v106
  store i64 %2666, i64* %3, align 8
  br i1 %2662, label %block_.L_413904, label %block_41386d

block_41386d:                                     ; preds = %block_413860
  %2667 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2667, i64* %RAX.i917.pre-phi, align 8
  %2668 = add i64 %2667, 14168
  %2669 = add i64 %2666, 15
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i64*
  %2671 = load i64, i64* %2670, align 8
  store i64 %2671, i64* %RAX.i917.pre-phi, align 8
  %2672 = add i64 %2625, -132
  %2673 = add i64 %2666, 22
  store i64 %2673, i64* %3, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  %2676 = sext i32 %2675 to i64
  %2677 = mul nsw i64 %2676, 632
  store i64 %2677, i64* %RCX.i1127, align 8
  %2678 = lshr i64 %2677, 63
  %2679 = add i64 %2677, %2671
  store i64 %2679, i64* %RAX.i917.pre-phi, align 8
  %2680 = icmp ult i64 %2679, %2671
  %2681 = icmp ult i64 %2679, %2677
  %2682 = or i1 %2680, %2681
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %14, align 1
  %2684 = trunc i64 %2679 to i32
  %2685 = and i32 %2684, 255
  %2686 = tail call i32 @llvm.ctpop.i32(i32 %2685)
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  %2689 = xor i8 %2688, 1
  store i8 %2689, i8* %21, align 1
  %2690 = xor i64 %2677, %2671
  %2691 = xor i64 %2690, %2679
  %2692 = lshr i64 %2691, 4
  %2693 = trunc i64 %2692 to i8
  %2694 = and i8 %2693, 1
  store i8 %2694, i8* %26, align 1
  %2695 = icmp eq i64 %2679, 0
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %29, align 1
  %2697 = lshr i64 %2679, 63
  %2698 = trunc i64 %2697 to i8
  store i8 %2698, i8* %32, align 1
  %2699 = lshr i64 %2671, 63
  %2700 = xor i64 %2697, %2699
  %2701 = xor i64 %2697, %2678
  %2702 = add nuw nsw i64 %2700, %2701
  %2703 = icmp eq i64 %2702, 2
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %38, align 1
  %2705 = add i64 %2679, 72
  %2706 = add i64 %2666, 36
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = add i32 %2708, -14
  %2710 = icmp ult i32 %2708, 14
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %14, align 1
  %2712 = and i32 %2709, 255
  %2713 = tail call i32 @llvm.ctpop.i32(i32 %2712)
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %21, align 1
  %2717 = xor i32 %2709, %2708
  %2718 = lshr i32 %2717, 4
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  store i8 %2720, i8* %26, align 1
  %2721 = icmp eq i32 %2709, 0
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %29, align 1
  %2723 = lshr i32 %2709, 31
  %2724 = trunc i32 %2723 to i8
  store i8 %2724, i8* %32, align 1
  %2725 = lshr i32 %2708, 31
  %2726 = xor i32 %2723, %2725
  %2727 = add nuw nsw i32 %2726, %2725
  %2728 = icmp eq i32 %2727, 2
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %38, align 1
  %.v107 = select i1 %2721, i64 42, i64 54
  %2730 = add i64 %2666, %.v107
  store i64 %2730, i64* %3, align 8
  br i1 %2721, label %block_413897, label %block_.L_4138a3

block_413897:                                     ; preds = %block_41386d
  %2731 = load i64, i64* %RBP.i, align 8
  %2732 = add i64 %2731, -72
  %2733 = add i64 %2730, 7
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  store i32 1, i32* %2734, align 4
  %2735 = load i64, i64* %3, align 8
  %2736 = add i64 %2735, 97
  store i64 %2736, i64* %3, align 8
  br label %block_.L_4138ff

block_.L_4138a3:                                  ; preds = %block_41386d
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %2737 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2737, i64* %RCX.i1127, align 8
  %2738 = add i64 %2737, 14168
  %2739 = add i64 %2730, 20
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i64*
  %2741 = load i64, i64* %2740, align 8
  store i64 %2741, i64* %RCX.i1127, align 8
  %2742 = load i64, i64* %RBP.i, align 8
  %2743 = add i64 %2742, -132
  %2744 = add i64 %2730, 27
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = sext i32 %2746 to i64
  %2748 = mul nsw i64 %2747, 632
  store i64 %2748, i64* %RDX.i1045, align 8
  %2749 = lshr i64 %2748, 63
  %2750 = add i64 %2748, %2741
  store i64 %2750, i64* %RCX.i1127, align 8
  %2751 = icmp ult i64 %2750, %2741
  %2752 = icmp ult i64 %2750, %2748
  %2753 = or i1 %2751, %2752
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %14, align 1
  %2755 = trunc i64 %2750 to i32
  %2756 = and i32 %2755, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %21, align 1
  %2761 = xor i64 %2748, %2741
  %2762 = xor i64 %2761, %2750
  %2763 = lshr i64 %2762, 4
  %2764 = trunc i64 %2763 to i8
  %2765 = and i8 %2764, 1
  store i8 %2765, i8* %26, align 1
  %2766 = icmp eq i64 %2750, 0
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %29, align 1
  %2768 = lshr i64 %2750, 63
  %2769 = trunc i64 %2768 to i8
  store i8 %2769, i8* %32, align 1
  %2770 = lshr i64 %2741, 63
  %2771 = xor i64 %2768, %2770
  %2772 = xor i64 %2768, %2749
  %2773 = add nuw nsw i64 %2771, %2772
  %2774 = icmp eq i64 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %38, align 1
  %2776 = add i64 %2750, 504
  %2777 = add i64 %2730, 44
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i64*
  %2779 = load i64, i64* %2778, align 8
  store i64 %2779, i64* %RCX.i1127, align 8
  %2780 = add i64 %2742, -64
  %2781 = add i64 %2730, 47
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RSI.i1175, align 8
  %2785 = add i64 %2742, -88
  %2786 = add i64 %2730, 50
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = add i32 %2788, %2783
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RSI.i1175, align 8
  %2791 = icmp ult i32 %2789, %2783
  %2792 = icmp ult i32 %2789, %2788
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %14, align 1
  %2795 = and i32 %2789, 255
  %2796 = tail call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  store i8 %2799, i8* %21, align 1
  %2800 = xor i32 %2788, %2783
  %2801 = xor i32 %2800, %2789
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %26, align 1
  %2805 = icmp eq i32 %2789, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %29, align 1
  %2807 = lshr i32 %2789, 31
  %2808 = trunc i32 %2807 to i8
  store i8 %2808, i8* %32, align 1
  %2809 = lshr i32 %2783, 31
  %2810 = lshr i32 %2788, 31
  %2811 = xor i32 %2807, %2809
  %2812 = xor i32 %2807, %2810
  %2813 = add nuw nsw i32 %2811, %2812
  %2814 = icmp eq i32 %2813, 2
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %38, align 1
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -216
  %2818 = add i64 %2730, 57
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i64*
  store i64 %2779, i64* %2819, align 8
  %ESI.i164 = bitcast %union.anon* %44 to i32*
  %2820 = load i32, i32* %ESI.i164, align 4
  %2821 = zext i32 %2820 to i64
  %2822 = load i64, i64* %3, align 8
  store i64 %2821, i64* %RCX.i1127, align 8
  %2823 = load i64, i64* %RAX.i917.pre-phi, align 8
  %2824 = add i64 %2822, 4
  store i64 %2824, i64* %3, align 8
  %2825 = trunc i32 %2820 to i5
  %2826 = trunc i64 %2823 to i32
  switch i5 %2825, label %2832 [
    i5 0, label %routine_shll__cl___eax.exit162
    i5 1, label %2827
  ]

; <label>:2827:                                   ; preds = %block_.L_4138a3
  %2828 = shl i32 %2826, 1
  %2829 = icmp slt i32 %2826, 0
  %2830 = icmp slt i32 %2828, 0
  %2831 = xor i1 %2829, %2830
  br label %2842

; <label>:2832:                                   ; preds = %block_.L_4138a3
  %2833 = and i32 %2820, 31
  %2834 = zext i32 %2833 to i64
  %2835 = add nuw nsw i64 %2834, 4294967295
  %2836 = and i64 %2823, 4294967295
  %2837 = and i64 %2835, 4294967295
  %2838 = shl i64 %2836, %2837
  %2839 = trunc i64 %2838 to i32
  %2840 = icmp slt i32 %2839, 0
  %2841 = shl i32 %2839, 1
  br label %2842

; <label>:2842:                                   ; preds = %2832, %2827
  %2843 = phi i1 [ %2829, %2827 ], [ %2840, %2832 ]
  %2844 = phi i1 [ %2831, %2827 ], [ false, %2832 ]
  %2845 = phi i32 [ %2828, %2827 ], [ %2841, %2832 ]
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i917.pre-phi, align 8
  %2847 = zext i1 %2843 to i8
  store i8 %2847, i8* %14, align 1
  %2848 = and i32 %2845, 254
  %2849 = tail call i32 @llvm.ctpop.i32(i32 %2848)
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  store i8 %2852, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2853 = icmp eq i32 %2845, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %29, align 1
  %2855 = lshr i32 %2845, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %32, align 1
  %2857 = zext i1 %2844 to i8
  store i8 %2857, i8* %38, align 1
  br label %routine_shll__cl___eax.exit162

routine_shll__cl___eax.exit162:                   ; preds = %2842, %block_.L_4138a3
  %2858 = phi i32 [ %2845, %2842 ], [ %2826, %block_.L_4138a3 ]
  %2859 = sext i32 %2858 to i64
  store i64 %2859, i64* %RDX.i1045, align 8
  %2860 = load i64, i64* %RBP.i, align 8
  %2861 = add i64 %2860, -216
  %2862 = add i64 %2822, 14
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i64*
  %2864 = load i64, i64* %2863, align 8
  %2865 = and i64 %2859, %2864
  store i64 %2865, i64* %RDI.i1178, align 8
  store i8 0, i8* %14, align 1
  %2866 = trunc i64 %2865 to i32
  %2867 = and i32 %2866, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %21, align 1
  %2872 = icmp eq i64 %2865, 0
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %29, align 1
  %2874 = lshr i64 %2865, 63
  %2875 = trunc i64 %2874 to i8
  store i8 %2875, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2876 = add i64 %2860, -64
  %2877 = add i64 %2822, 20
  store i64 %2877, i64* %3, align 8
  %2878 = inttoptr i64 %2876 to i32*
  %2879 = load i32, i32* %2878, align 4
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RAX.i917.pre-phi, align 8
  %2881 = add i64 %2860, -88
  %2882 = add i64 %2822, 23
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = add i32 %2884, %2879
  %2886 = zext i32 %2885 to i64
  %2887 = icmp ult i32 %2885, %2879
  %2888 = icmp ult i32 %2885, %2884
  %2889 = or i1 %2887, %2888
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %14, align 1
  %2891 = and i32 %2885, 255
  %2892 = tail call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  store i8 %2895, i8* %21, align 1
  %2896 = xor i32 %2884, %2879
  %2897 = xor i32 %2896, %2885
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %26, align 1
  %2901 = icmp eq i32 %2885, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %29, align 1
  %2903 = lshr i32 %2885, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %32, align 1
  %2905 = lshr i32 %2879, 31
  %2906 = lshr i32 %2884, 31
  %2907 = xor i32 %2903, %2905
  %2908 = xor i32 %2903, %2906
  %2909 = add nuw nsw i32 %2907, %2908
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %38, align 1
  store i64 %2886, i64* %RAX.i917.pre-phi, align 8
  store i64 %2886, i64* %RCX.i1127, align 8
  %2912 = add i64 %2822, 30
  store i64 %2912, i64* %3, align 8
  %2913 = trunc i32 %2885 to i6
  switch i6 %2913, label %2914 [
    i6 0, label %routine_shrq__cl___rdi.exit137
    i6 1, label %2919
  ]

; <label>:2914:                                   ; preds = %routine_shll__cl___eax.exit162
  %2915 = and i32 %2885, 63
  %2916 = zext i32 %2915 to i64
  %2917 = add nsw i64 %2916, -1
  %2918 = lshr i64 %2865, %2917
  br label %2919

; <label>:2919:                                   ; preds = %routine_shll__cl___eax.exit162, %2914
  %2920 = phi i64 [ %2918, %2914 ], [ %2865, %routine_shll__cl___eax.exit162 ]
  %2921 = phi i8 [ 0, %2914 ], [ %2875, %routine_shll__cl___eax.exit162 ]
  %2922 = trunc i64 %2920 to i8
  %2923 = and i8 %2922, 1
  %2924 = lshr i64 %2920, 1
  store i64 %2924, i64* %RDI.i1178, align 8
  store i8 %2923, i8* %14, align 1
  %2925 = trunc i64 %2924 to i32
  %2926 = and i32 %2925, 255
  %2927 = tail call i32 @llvm.ctpop.i32(i32 %2926)
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  %2930 = xor i8 %2929, 1
  store i8 %2930, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2931 = icmp eq i64 %2924, 0
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %2921, i8* %38, align 1
  br label %routine_shrq__cl___rdi.exit137

routine_shrq__cl___rdi.exit137:                   ; preds = %2919, %routine_shll__cl___eax.exit162
  %2933 = phi i32 [ %2925, %2919 ], [ %2866, %routine_shll__cl___eax.exit162 ]
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RAX.i917.pre-phi, align 8
  %2935 = add i64 %2860, -72
  %2936 = add i64 %2822, 35
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i32*
  store i32 %2933, i32* %2937, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_4138ff

block_.L_4138ff:                                  ; preds = %routine_shrq__cl___rdi.exit137, %block_413897
  %2938 = phi i64 [ %.pre83, %routine_shrq__cl___rdi.exit137 ], [ %2736, %block_413897 ]
  %2939 = add i64 %2938, 5
  store i64 %2939, i64* %3, align 8
  %.pre84 = load i64, i64* %RBP.i, align 8
  br label %block_.L_413904

block_.L_413904:                                  ; preds = %block_.L_4138ff, %block_413860
  %2940 = phi i64 [ %2939, %block_.L_4138ff ], [ %2666, %block_413860 ]
  %2941 = phi i64 [ %.pre84, %block_.L_4138ff ], [ %2625, %block_413860 ]
  %2942 = add i64 %2941, -112
  %2943 = add i64 %2940, 4
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  store i8 0, i8* %14, align 1
  %2946 = and i32 %2945, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2951 = icmp eq i32 %2945, 0
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %29, align 1
  %2953 = lshr i32 %2945, 31
  %2954 = trunc i32 %2953 to i8
  store i8 %2954, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %2951, i64 155, i64 10
  %2955 = add i64 %2940, %.v108
  store i64 %2955, i64* %3, align 8
  br i1 %2951, label %block_.L_41399f, label %block_41390e

block_41390e:                                     ; preds = %block_.L_413904
  %2956 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2956, i64* %RAX.i917.pre-phi, align 8
  %2957 = add i64 %2956, 14168
  %2958 = add i64 %2955, 15
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i64*
  %2960 = load i64, i64* %2959, align 8
  store i64 %2960, i64* %RAX.i917.pre-phi, align 8
  %2961 = add i64 %2941, -108
  %2962 = add i64 %2955, 19
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = sext i32 %2964 to i64
  %2966 = mul nsw i64 %2965, 632
  store i64 %2966, i64* %RCX.i1127, align 8
  %2967 = lshr i64 %2966, 63
  %2968 = add i64 %2966, %2960
  store i64 %2968, i64* %RAX.i917.pre-phi, align 8
  %2969 = icmp ult i64 %2968, %2960
  %2970 = icmp ult i64 %2968, %2966
  %2971 = or i1 %2969, %2970
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %14, align 1
  %2973 = trunc i64 %2968 to i32
  %2974 = and i32 %2973, 255
  %2975 = tail call i32 @llvm.ctpop.i32(i32 %2974)
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = xor i8 %2977, 1
  store i8 %2978, i8* %21, align 1
  %2979 = xor i64 %2966, %2960
  %2980 = xor i64 %2979, %2968
  %2981 = lshr i64 %2980, 4
  %2982 = trunc i64 %2981 to i8
  %2983 = and i8 %2982, 1
  store i8 %2983, i8* %26, align 1
  %2984 = icmp eq i64 %2968, 0
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %29, align 1
  %2986 = lshr i64 %2968, 63
  %2987 = trunc i64 %2986 to i8
  store i8 %2987, i8* %32, align 1
  %2988 = lshr i64 %2960, 63
  %2989 = xor i64 %2986, %2988
  %2990 = xor i64 %2986, %2967
  %2991 = add nuw nsw i64 %2989, %2990
  %2992 = icmp eq i64 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %38, align 1
  %2994 = add i64 %2968, 72
  %2995 = add i64 %2955, 33
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i32*
  %2997 = load i32, i32* %2996, align 4
  %2998 = add i32 %2997, -14
  %2999 = icmp ult i32 %2997, 14
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %14, align 1
  %3001 = and i32 %2998, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  %3006 = xor i32 %2998, %2997
  %3007 = lshr i32 %3006, 4
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  store i8 %3009, i8* %26, align 1
  %3010 = icmp eq i32 %2998, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %29, align 1
  %3012 = lshr i32 %2998, 31
  %3013 = trunc i32 %3012 to i8
  store i8 %3013, i8* %32, align 1
  %3014 = lshr i32 %2997, 31
  %3015 = xor i32 %3012, %3014
  %3016 = add nuw nsw i32 %3015, %3014
  %3017 = icmp eq i32 %3016, 2
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %38, align 1
  %.v109 = select i1 %3010, i64 39, i64 51
  %3019 = add i64 %2955, %.v109
  store i64 %3019, i64* %3, align 8
  br i1 %3010, label %block_413935, label %block_.L_413941

block_413935:                                     ; preds = %block_41390e
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -76
  %3022 = add i64 %3019, 7
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  store i32 1, i32* %3023, align 4
  %3024 = load i64, i64* %3, align 8
  %3025 = add i64 %3024, 94
  store i64 %3025, i64* %3, align 8
  br label %block_.L_41399a

block_.L_413941:                                  ; preds = %block_41390e
  store i64 1, i64* %RAX.i917.pre-phi, align 8
  %3026 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3026, i64* %RCX.i1127, align 8
  %3027 = add i64 %3026, 14168
  %3028 = add i64 %3019, 20
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i64*
  %3030 = load i64, i64* %3029, align 8
  store i64 %3030, i64* %RCX.i1127, align 8
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -108
  %3033 = add i64 %3019, 24
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  %3035 = load i32, i32* %3034, align 4
  %3036 = sext i32 %3035 to i64
  %3037 = mul nsw i64 %3036, 632
  store i64 %3037, i64* %RDX.i1045, align 8
  %3038 = lshr i64 %3037, 63
  %3039 = add i64 %3037, %3030
  store i64 %3039, i64* %RCX.i1127, align 8
  %3040 = icmp ult i64 %3039, %3030
  %3041 = icmp ult i64 %3039, %3037
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %14, align 1
  %3044 = trunc i64 %3039 to i32
  %3045 = and i32 %3044, 255
  %3046 = tail call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  store i8 %3049, i8* %21, align 1
  %3050 = xor i64 %3037, %3030
  %3051 = xor i64 %3050, %3039
  %3052 = lshr i64 %3051, 4
  %3053 = trunc i64 %3052 to i8
  %3054 = and i8 %3053, 1
  store i8 %3054, i8* %26, align 1
  %3055 = icmp eq i64 %3039, 0
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %29, align 1
  %3057 = lshr i64 %3039, 63
  %3058 = trunc i64 %3057 to i8
  store i8 %3058, i8* %32, align 1
  %3059 = lshr i64 %3030, 63
  %3060 = xor i64 %3057, %3059
  %3061 = xor i64 %3057, %3038
  %3062 = add nuw nsw i64 %3060, %3061
  %3063 = icmp eq i64 %3062, 2
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %38, align 1
  %3065 = add i64 %3039, 504
  %3066 = add i64 %3019, 41
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i64*
  %3068 = load i64, i64* %3067, align 8
  store i64 %3068, i64* %RCX.i1127, align 8
  %3069 = add i64 %3031, -64
  %3070 = add i64 %3019, 44
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i32*
  %3072 = load i32, i32* %3071, align 4
  %3073 = zext i32 %3072 to i64
  store i64 %3073, i64* %RSI.i1175, align 8
  %3074 = add i64 %3031, -84
  %3075 = add i64 %3019, 47
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = add i32 %3077, %3072
  %3079 = zext i32 %3078 to i64
  store i64 %3079, i64* %RSI.i1175, align 8
  %3080 = icmp ult i32 %3078, %3072
  %3081 = icmp ult i32 %3078, %3077
  %3082 = or i1 %3080, %3081
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %14, align 1
  %3084 = and i32 %3078, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %21, align 1
  %3089 = xor i32 %3077, %3072
  %3090 = xor i32 %3089, %3078
  %3091 = lshr i32 %3090, 4
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  store i8 %3093, i8* %26, align 1
  %3094 = icmp eq i32 %3078, 0
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %29, align 1
  %3096 = lshr i32 %3078, 31
  %3097 = trunc i32 %3096 to i8
  store i8 %3097, i8* %32, align 1
  %3098 = lshr i32 %3072, 31
  %3099 = lshr i32 %3077, 31
  %3100 = xor i32 %3096, %3098
  %3101 = xor i32 %3096, %3099
  %3102 = add nuw nsw i32 %3100, %3101
  %3103 = icmp eq i32 %3102, 2
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %38, align 1
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, -224
  %3107 = add i64 %3019, 54
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i64*
  store i64 %3068, i64* %3108, align 8
  %ESI.i = bitcast %union.anon* %44 to i32*
  %3109 = load i32, i32* %ESI.i, align 4
  %3110 = zext i32 %3109 to i64
  %3111 = load i64, i64* %3, align 8
  store i64 %3110, i64* %RCX.i1127, align 8
  %3112 = load i64, i64* %RAX.i917.pre-phi, align 8
  %3113 = add i64 %3111, 4
  store i64 %3113, i64* %3, align 8
  %3114 = trunc i32 %3109 to i5
  %3115 = trunc i64 %3112 to i32
  switch i5 %3114, label %3121 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %3116
  ]

; <label>:3116:                                   ; preds = %block_.L_413941
  %3117 = shl i32 %3115, 1
  %3118 = icmp slt i32 %3115, 0
  %3119 = icmp slt i32 %3117, 0
  %3120 = xor i1 %3118, %3119
  br label %3131

; <label>:3121:                                   ; preds = %block_.L_413941
  %3122 = and i32 %3109, 31
  %3123 = zext i32 %3122 to i64
  %3124 = add nuw nsw i64 %3123, 4294967295
  %3125 = and i64 %3112, 4294967295
  %3126 = and i64 %3124, 4294967295
  %3127 = shl i64 %3125, %3126
  %3128 = trunc i64 %3127 to i32
  %3129 = icmp slt i32 %3128, 0
  %3130 = shl i32 %3128, 1
  br label %3131

; <label>:3131:                                   ; preds = %3121, %3116
  %3132 = phi i1 [ %3118, %3116 ], [ %3129, %3121 ]
  %3133 = phi i1 [ %3120, %3116 ], [ false, %3121 ]
  %3134 = phi i32 [ %3117, %3116 ], [ %3130, %3121 ]
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i917.pre-phi, align 8
  %3136 = zext i1 %3132 to i8
  store i8 %3136, i8* %14, align 1
  %3137 = and i32 %3134, 254
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3142 = icmp eq i32 %3134, 0
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %29, align 1
  %3144 = lshr i32 %3134, 31
  %3145 = trunc i32 %3144 to i8
  store i8 %3145, i8* %32, align 1
  %3146 = zext i1 %3133 to i8
  store i8 %3146, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %3131, %block_.L_413941
  %3147 = phi i32 [ %3134, %3131 ], [ %3115, %block_.L_413941 ]
  %3148 = sext i32 %3147 to i64
  store i64 %3148, i64* %RDX.i1045, align 8
  %3149 = load i64, i64* %RBP.i, align 8
  %3150 = add i64 %3149, -224
  %3151 = add i64 %3111, 14
  store i64 %3151, i64* %3, align 8
  %3152 = inttoptr i64 %3150 to i64*
  %3153 = load i64, i64* %3152, align 8
  %3154 = and i64 %3148, %3153
  store i64 %3154, i64* %RDI.i1178, align 8
  store i8 0, i8* %14, align 1
  %3155 = trunc i64 %3154 to i32
  %3156 = and i32 %3155, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %21, align 1
  %3161 = icmp eq i64 %3154, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %29, align 1
  %3163 = lshr i64 %3154, 63
  %3164 = trunc i64 %3163 to i8
  store i8 %3164, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3165 = add i64 %3149, -64
  %3166 = add i64 %3111, 20
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3165 to i32*
  %3168 = load i32, i32* %3167, align 4
  %3169 = zext i32 %3168 to i64
  store i64 %3169, i64* %RAX.i917.pre-phi, align 8
  %3170 = add i64 %3149, -84
  %3171 = add i64 %3111, 23
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  %3174 = add i32 %3173, %3168
  %3175 = zext i32 %3174 to i64
  %3176 = icmp ult i32 %3174, %3168
  %3177 = icmp ult i32 %3174, %3173
  %3178 = or i1 %3176, %3177
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %14, align 1
  %3180 = and i32 %3174, 255
  %3181 = tail call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  store i8 %3184, i8* %21, align 1
  %3185 = xor i32 %3173, %3168
  %3186 = xor i32 %3185, %3174
  %3187 = lshr i32 %3186, 4
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %26, align 1
  %3190 = icmp eq i32 %3174, 0
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %29, align 1
  %3192 = lshr i32 %3174, 31
  %3193 = trunc i32 %3192 to i8
  store i8 %3193, i8* %32, align 1
  %3194 = lshr i32 %3168, 31
  %3195 = lshr i32 %3173, 31
  %3196 = xor i32 %3192, %3194
  %3197 = xor i32 %3192, %3195
  %3198 = add nuw nsw i32 %3196, %3197
  %3199 = icmp eq i32 %3198, 2
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %38, align 1
  store i64 %3175, i64* %RAX.i917.pre-phi, align 8
  store i64 %3175, i64* %RCX.i1127, align 8
  %3201 = add i64 %3111, 30
  store i64 %3201, i64* %3, align 8
  %3202 = trunc i32 %3174 to i6
  switch i6 %3202, label %3203 [
    i6 0, label %routine_shrq__cl___rdi.exit
    i6 1, label %3208
  ]

; <label>:3203:                                   ; preds = %routine_shll__cl___eax.exit
  %3204 = and i32 %3174, 63
  %3205 = zext i32 %3204 to i64
  %3206 = add nsw i64 %3205, -1
  %3207 = lshr i64 %3154, %3206
  br label %3208

; <label>:3208:                                   ; preds = %routine_shll__cl___eax.exit, %3203
  %3209 = phi i64 [ %3207, %3203 ], [ %3154, %routine_shll__cl___eax.exit ]
  %3210 = phi i8 [ 0, %3203 ], [ %3164, %routine_shll__cl___eax.exit ]
  %3211 = trunc i64 %3209 to i8
  %3212 = and i8 %3211, 1
  %3213 = lshr i64 %3209, 1
  store i64 %3213, i64* %RDI.i1178, align 8
  store i8 %3212, i8* %14, align 1
  %3214 = trunc i64 %3213 to i32
  %3215 = and i32 %3214, 255
  %3216 = tail call i32 @llvm.ctpop.i32(i32 %3215)
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  %3219 = xor i8 %3218, 1
  store i8 %3219, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3220 = icmp eq i64 %3213, 0
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %3210, i8* %38, align 1
  br label %routine_shrq__cl___rdi.exit

routine_shrq__cl___rdi.exit:                      ; preds = %3208, %routine_shll__cl___eax.exit
  %3222 = phi i32 [ %3214, %3208 ], [ %3155, %routine_shll__cl___eax.exit ]
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RAX.i917.pre-phi, align 8
  %3224 = add i64 %3149, -76
  %3225 = add i64 %3111, 35
  store i64 %3225, i64* %3, align 8
  %3226 = inttoptr i64 %3224 to i32*
  store i32 %3222, i32* %3226, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_41399a

block_.L_41399a:                                  ; preds = %routine_shrq__cl___rdi.exit, %block_413935
  %3227 = phi i64 [ %.pre85, %routine_shrq__cl___rdi.exit ], [ %3025, %block_413935 ]
  %3228 = add i64 %3227, 5
  store i64 %3228, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41399f

block_.L_41399f:                                  ; preds = %block_.L_41399a, %block_.L_413904
  %3229 = phi i64 [ %3228, %block_.L_41399a ], [ %2955, %block_.L_413904 ]
  %3230 = phi i64 [ %.pre86, %block_.L_41399a ], [ %2941, %block_.L_413904 ]
  %3231 = add i64 %3230, -72
  %3232 = add i64 %3229, 3
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i32*
  %3234 = load i32, i32* %3233, align 4
  %3235 = shl i32 %3234, 1
  %3236 = icmp slt i32 %3234, 0
  %3237 = icmp slt i32 %3235, 0
  %3238 = xor i1 %3236, %3237
  %3239 = zext i32 %3235 to i64
  store i64 %3239, i64* %RAX.i917.pre-phi, align 8
  %.lobit = lshr i32 %3234, 31
  %3240 = trunc i32 %.lobit to i8
  store i8 %3240, i8* %14, align 1
  %3241 = and i32 %3235, 254
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3246 = icmp eq i32 %3235, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %29, align 1
  %3248 = lshr i32 %3234, 30
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  store i8 %3250, i8* %32, align 1
  %3251 = zext i1 %3238 to i8
  store i8 %3251, i8* %38, align 1
  %3252 = add i64 %3230, -76
  %3253 = add i64 %3229, 8
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3252 to i32*
  %3255 = load i32, i32* %3254, align 4
  %3256 = add i32 %3255, %3235
  %3257 = zext i32 %3256 to i64
  store i64 %3257, i64* %RAX.i917.pre-phi, align 8
  %3258 = icmp ult i32 %3256, %3235
  %3259 = icmp ult i32 %3256, %3255
  %3260 = or i1 %3258, %3259
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %14, align 1
  %3262 = and i32 %3256, 255
  %3263 = tail call i32 @llvm.ctpop.i32(i32 %3262)
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = xor i8 %3265, 1
  store i8 %3266, i8* %21, align 1
  %3267 = xor i32 %3255, %3235
  %3268 = xor i32 %3267, %3256
  %3269 = lshr i32 %3268, 4
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  store i8 %3271, i8* %26, align 1
  %3272 = icmp eq i32 %3256, 0
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %29, align 1
  %3274 = lshr i32 %3256, 31
  %3275 = trunc i32 %3274 to i8
  store i8 %3275, i8* %32, align 1
  %3276 = lshr i32 %3234, 30
  %3277 = and i32 %3276, 1
  %3278 = lshr i32 %3255, 31
  %3279 = xor i32 %3274, %3277
  %3280 = xor i32 %3274, %3278
  %3281 = add nuw nsw i32 %3279, %3280
  %3282 = icmp eq i32 %3281, 2
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %38, align 1
  %3284 = add i64 %3230, -80
  %3285 = add i64 %3229, 11
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  store i32 %3256, i32* %3286, align 4
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -16
  %3289 = load i64, i64* %3, align 8
  %3290 = add i64 %3289, 4
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3288 to i64*
  %3292 = load i64, i64* %3291, align 8
  store i64 %3292, i64* %RDI.i1178, align 8
  %3293 = add i64 %3287, -24
  %3294 = add i64 %3289, 7
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RAX.i917.pre-phi, align 8
  %CX.i33 = bitcast %union.anon* %58 to i16*
  %3298 = trunc i32 %3296 to i16
  store i16 %3298, i16* %CX.i33, align 2
  %3299 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3299, i64* %RDX.i1045, align 8
  %3300 = add i64 %3299, 14160
  %3301 = add i64 %3289, 25
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i64*
  %3303 = load i64, i64* %3302, align 8
  store i64 %3303, i64* %RDX.i1045, align 8
  %3304 = add i64 %3303, 40
  %3305 = add i64 %3289, 29
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i64*
  %3307 = load i64, i64* %3306, align 8
  %3308 = add i64 %3307, 288
  store i64 %3308, i64* %RDX.i1045, align 8
  %3309 = icmp ugt i64 %3307, -289
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %14, align 1
  %3311 = trunc i64 %3308 to i32
  %3312 = and i32 %3311, 255
  %3313 = tail call i32 @llvm.ctpop.i32(i32 %3312)
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  %3316 = xor i8 %3315, 1
  store i8 %3316, i8* %21, align 1
  %3317 = xor i64 %3308, %3307
  %3318 = lshr i64 %3317, 4
  %3319 = trunc i64 %3318 to i8
  %3320 = and i8 %3319, 1
  store i8 %3320, i8* %26, align 1
  %3321 = icmp eq i64 %3308, 0
  %3322 = zext i1 %3321 to i8
  store i8 %3322, i8* %29, align 1
  %3323 = lshr i64 %3308, 63
  %3324 = trunc i64 %3323 to i8
  store i8 %3324, i8* %32, align 1
  %3325 = lshr i64 %3307, 63
  %3326 = xor i64 %3323, %3325
  %3327 = add nuw nsw i64 %3326, %3323
  %3328 = icmp eq i64 %3327, 2
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %38, align 1
  %3330 = add i64 %3287, -20
  %3331 = add i64 %3289, 40
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  %3334 = sext i32 %3333 to i64
  store i64 %3334, i64* %RSI.i1175, align 8
  %3335 = shl nsw i64 %3334, 2
  %3336 = add nsw i64 %3335, 4926096
  %3337 = add i64 %3289, 48
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3336 to i32*
  %3339 = load i32, i32* %3338, align 4
  %3340 = sext i32 %3339 to i64
  %3341 = shl nsw i64 %3340, 6
  store i64 %3341, i64* %RSI.i1175, align 8
  %3342 = add i64 %3341, %3308
  store i64 %3342, i64* %RDX.i1045, align 8
  %3343 = icmp ult i64 %3342, %3308
  %3344 = icmp ult i64 %3342, %3341
  %3345 = or i1 %3343, %3344
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %14, align 1
  %3347 = trunc i64 %3342 to i32
  %3348 = and i32 %3347, 255
  %3349 = tail call i32 @llvm.ctpop.i32(i32 %3348)
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = xor i8 %3351, 1
  store i8 %3352, i8* %21, align 1
  %3353 = xor i64 %3308, %3342
  %3354 = lshr i64 %3353, 4
  %3355 = trunc i64 %3354 to i8
  %3356 = and i8 %3355, 1
  store i8 %3356, i8* %26, align 1
  %3357 = icmp eq i64 %3342, 0
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %29, align 1
  %3359 = lshr i64 %3342, 63
  %3360 = trunc i64 %3359 to i8
  store i8 %3360, i8* %32, align 1
  %3361 = lshr i64 %3340, 57
  %3362 = and i64 %3361, 1
  %3363 = xor i64 %3359, %3323
  %3364 = xor i64 %3359, %3362
  %3365 = add nuw nsw i64 %3363, %3364
  %3366 = icmp eq i64 %3365, 2
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %38, align 1
  %3368 = load i64, i64* %RBP.i, align 8
  %3369 = add i64 %3368, -80
  %3370 = add i64 %3289, 59
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = sext i32 %3372 to i64
  %3374 = shl nsw i64 %3373, 4
  %3375 = add i64 %3374, %3342
  store i64 %3375, i64* %RDX.i1045, align 8
  %3376 = icmp ult i64 %3375, %3342
  %3377 = icmp ult i64 %3375, %3374
  %3378 = or i1 %3376, %3377
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %14, align 1
  %3380 = trunc i64 %3375 to i32
  %3381 = and i32 %3380, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i64 %3374, %3342
  %3387 = xor i64 %3386, %3375
  %3388 = lshr i64 %3387, 4
  %3389 = trunc i64 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = icmp eq i64 %3375, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %29, align 1
  %3393 = lshr i64 %3375, 63
  %3394 = trunc i64 %3393 to i8
  store i8 %3394, i8* %32, align 1
  %3395 = lshr i64 %3373, 59
  %3396 = and i64 %3395, 1
  %3397 = xor i64 %3393, %3359
  %3398 = xor i64 %3393, %3396
  %3399 = add nuw nsw i64 %3397, %3398
  %3400 = icmp eq i64 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %38, align 1
  %3402 = load i16, i16* %CX.i33, align 2
  %3403 = sext i16 %3402 to i64
  %3404 = and i64 %3403, 4294967295
  store i64 %3404, i64* %RSI.i1175, align 8
  %3405 = add i64 %3289, -73739
  %3406 = add i64 %3289, 74
  %3407 = load i64, i64* %6, align 8
  %3408 = add i64 %3407, -8
  %3409 = inttoptr i64 %3408 to i64*
  store i64 %3406, i64* %3409, align 8
  store i64 %3408, i64* %6, align 8
  store i64 %3405, i64* %3, align 8
  %call2_4139f0 = tail call %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* nonnull %0, i64 %3405, %struct.Memory* %MEMORY.22)
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_4139f5

block_.L_4139f5:                                  ; preds = %block_.L_41399f, %block_.L_41384d
  %3410 = phi i64 [ %2652, %block_.L_41384d ], [ %.pre87, %block_.L_41399f ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.22, %block_.L_41384d ], [ %call2_4139f0, %block_.L_41399f ]
  %3411 = load i64, i64* %6, align 8
  %3412 = add i64 %3411, 224
  store i64 %3412, i64* %6, align 8
  %3413 = icmp ugt i64 %3411, -225
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %14, align 1
  %3415 = trunc i64 %3412 to i32
  %3416 = and i32 %3415, 255
  %3417 = tail call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  store i8 %3420, i8* %21, align 1
  %3421 = xor i64 %3412, %3411
  %3422 = lshr i64 %3421, 4
  %3423 = trunc i64 %3422 to i8
  %3424 = and i8 %3423, 1
  store i8 %3424, i8* %26, align 1
  %3425 = icmp eq i64 %3412, 0
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %29, align 1
  %3427 = lshr i64 %3412, 63
  %3428 = trunc i64 %3427 to i8
  store i8 %3428, i8* %32, align 1
  %3429 = lshr i64 %3411, 63
  %3430 = xor i64 %3427, %3429
  %3431 = add nuw nsw i64 %3430, %3427
  %3432 = icmp eq i64 %3431, 2
  %3433 = zext i1 %3432 to i8
  store i8 %3433, i8* %38, align 1
  %3434 = add i64 %3410, 8
  store i64 %3434, i64* %3, align 8
  %3435 = add i64 %3411, 232
  %3436 = inttoptr i64 %3412 to i64*
  %3437 = load i64, i64* %3436, align 8
  store i64 %3437, i64* %RBP.i, align 8
  store i64 %3435, i64* %6, align 8
  %3438 = add i64 %3410, 9
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3435 to i64*
  %3440 = load i64, i64* %3439, align 8
  store i64 %3440, i64* %3, align 8
  %3441 = add i64 %3411, 240
  store i64 %3441, i64* %6, align 8
  ret %struct.Memory* %MEMORY.40
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
define %struct.Memory* @routine_subq__0xe0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -224
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 224
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -137
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41318e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_sete__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -137
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
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
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb__dl__MINUS0x8a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -138
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4131d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 84
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
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %CL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x8a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -138
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -138
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x8b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -139
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41320e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x8b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -139
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8b__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -139
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb__cl__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41324d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb__al__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movb_MINUS0x8c__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movb__dl__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413287(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x8e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4132be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x8e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jne_.L_4132ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_je_.L_413300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 76
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
define %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41330d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413334(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41334a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413357(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_413377(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413400(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413391(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4133f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_4133ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x11___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4133e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_4133c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x12___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4133dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x17___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x13___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x50__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413450(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4134da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_callq_.getLuma4x4Neighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4294967295, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x88__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4134d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_je_.L_4134b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
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
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_je_.L_4134d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4134d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41356e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_413569(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41354b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413564(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413569(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413585(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41363d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4135a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413631(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4135c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4135da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413619(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4135fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x13___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 19
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41360d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x17___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 23
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_4137ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4136e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 504
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = or i64 %9, %3
  store i64 %10, i64* %RSI, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i64 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i64 %10, 63
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 504
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_addl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -6
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
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
  store i64 %29, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4137a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413730(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4137a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41377f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41379e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orq_0x1f8__rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 504
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = or i64 %9, %3
  store i64 %10, i64* %RDX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i64 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i64 %10, 63
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x1f8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 504
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4137ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4137c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41384d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4137de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413841(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4137f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413835(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413812(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413829(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4139f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_413904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 632
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -14
  %10 = icmp ult i32 %8, 14
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
define %struct.Memory* @routine_jne_.L_4138a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4138ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
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
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x1f8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_addl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i64 %4, %3
  store i64 %7, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrq__cl___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i6
  switch i6 %8, label %12 [
    i6 0, label %_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i6 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = lshr i64 %4, 63
  %11 = trunc i64 %10 to i8
  br label %17

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 63
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = lshr i64 %4, %15
  br label %17

; <label>:17:                                     ; preds = %12, %9
  %18 = phi i64 [ %16, %12 ], [ %4, %9 ]
  %19 = phi i8 [ 0, %12 ], [ %11, %9 ]
  %20 = trunc i64 %18 to i8
  %21 = and i8 %20, 1
  %22 = lshr i64 %18, 1
  store i64 %22, i64* %RDI, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %25 = trunc i64 %22 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %24, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %33 = icmp eq i64 %22, 0
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %36, align 1
  br label %_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %17, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41399f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_jne_.L_413941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41399a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_addl_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_jmpq_.L_41399f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x120___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 288
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -289
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movslq_0x4b2a90___rsi_4____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4926096
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__cx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i16, i16* %CX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.biari_encode_symbol(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xe0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -225
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
