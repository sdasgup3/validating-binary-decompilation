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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403f70.fallbackSimpleSort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fallbackQSort3(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -952
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 944
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %RDI.i979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i979, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i976, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i973 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i973, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i970 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i32, i32* %ECX.i970, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -68
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 0, i32* %68, align 4
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -52
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %RCX.i963 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -20
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %75 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RCX.i963, align 8
  %81 = add i64 %74, -52
  %82 = add i64 %76, 7
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %RSI.i976, align 8
  %86 = shl nsw i64 %85, 2
  %87 = add i64 %74, -480
  %88 = add i64 %87, %86
  %89 = add i64 %76, 14
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 %79, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -24
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RCX.i963, align 8
  %98 = add i64 %91, -52
  %99 = add i64 %93, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %RSI.i976, align 8
  %103 = shl nsw i64 %102, 2
  %104 = add i64 %91, -880
  %105 = add i64 %104, %103
  %106 = add i64 %93, 14
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  store i32 %96, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -52
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RCX.i963, align 8
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %14, align 1
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %21, align 1
  %125 = xor i32 %114, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %27, align 1
  %129 = zext i1 %117 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %33, align 1
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %39, align 1
  %137 = add i64 %110, 9
  store i64 %137, i64* %3, align 8
  store i32 %114, i32* %112, align 4
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i926 = getelementptr inbounds %union.anon, %union.anon* %138, i64 0, i32 0
  %EAX.i921 = bitcast %union.anon* %138 to i32*
  %RDX.i884 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4039fc

block_.L_4039fc:                                  ; preds = %block_.L_4039fc.backedge, %entry
  %139 = phi i64 [ %.pre, %entry ], [ %.sink33, %block_.L_4039fc.backedge ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.0.be, %block_.L_4039fc.backedge ]
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -52
  %142 = add i64 %139, 4
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  store i8 0, i8* %14, align 1
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %150 = icmp eq i32 %144, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %30, align 1
  %152 = lshr i32 %144, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %154 = icmp ne i8 %153, 0
  %155 = or i1 %150, %154
  %.v136 = select i1 %155, i64 1380, i64 10
  %156 = add i64 %139, %.v136
  store i64 %156, i64* %3, align 8
  br i1 %155, label %block_.L_403f60, label %block_403a06

block_403a06:                                     ; preds = %block_.L_4039fc
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = load i32, i32* %143, align 4
  %159 = add i32 %158, -100
  %160 = icmp ult i32 %158, 100
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  %167 = xor i32 %159, %158
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %27, align 1
  %171 = icmp eq i32 %159, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %30, align 1
  %173 = lshr i32 %159, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %33, align 1
  %175 = lshr i32 %158, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %39, align 1
  %180 = icmp ne i8 %174, 0
  %181 = xor i1 %180, %178
  %.v137 = select i1 %181, i64 20, i64 10
  %182 = add i64 %156, %.v137
  store i64 %182, i64* %3, align 8
  br i1 %181, label %block_.L_403a1a, label %block_403a10

block_403a10:                                     ; preds = %block_403a06
  store i64 1004, i64* %RDI.i979, align 8
  %183 = add i64 %182, 5392
  %184 = add i64 %182, 10
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %6, align 8
  store i64 %183, i64* %3, align 8
  %call2_403a15 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %183, %struct.Memory* %MEMORY.0)
  %.pre120 = load i64, i64* %RBP.i, align 8
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_403a1a

block_.L_403a1a:                                  ; preds = %block_403a10, %block_403a06
  %188 = phi i64 [ %.pre121, %block_403a10 ], [ %182, %block_403a06 ]
  %189 = phi i64 [ %.pre120, %block_403a10 ], [ %140, %block_403a06 ]
  %190 = add i64 %189, -52
  %191 = add i64 %188, 3
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, -1
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i926, align 8
  %196 = icmp ne i32 %193, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %14, align 1
  %198 = and i32 %194, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %21, align 1
  %203 = xor i32 %193, 16
  %204 = xor i32 %203, %194
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %27, align 1
  %208 = icmp eq i32 %194, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %30, align 1
  %210 = lshr i32 %194, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %33, align 1
  %212 = lshr i32 %193, 31
  %213 = xor i32 %210, %212
  %214 = xor i32 %210, 1
  %215 = add nuw nsw i32 %213, %214
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %39, align 1
  %218 = add i64 %188, 9
  store i64 %218, i64* %3, align 8
  store i32 %194, i32* %192, align 4
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -52
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RCX.i963, align 8
  %226 = shl nsw i64 %225, 2
  %227 = add i64 %219, -480
  %228 = add i64 %227, %226
  %229 = add i64 %221, 11
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX.i926, align 8
  %233 = add i64 %219, -56
  %234 = add i64 %221, 14
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 %231, i32* %235, align 4
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -52
  %238 = load i64, i64* %3, align 8
  %239 = add i64 %238, 4
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %237 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX.i963, align 8
  %243 = shl nsw i64 %242, 2
  %244 = add i64 %236, -880
  %245 = add i64 %244, %243
  %246 = add i64 %238, 11
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX.i926, align 8
  %250 = add i64 %236, -60
  %251 = add i64 %238, 14
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  store i32 %248, i32* %252, align 4
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -60
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 3
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX.i926, align 8
  %260 = add i64 %253, -56
  %261 = add i64 %255, 6
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = sub i32 %258, %263
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i926, align 8
  %266 = lshr i32 %264, 31
  %267 = add i32 %264, -10
  %268 = icmp ult i32 %264, 10
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %14, align 1
  %270 = and i32 %267, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %21, align 1
  %275 = xor i32 %267, %264
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %27, align 1
  %279 = icmp eq i32 %267, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %30, align 1
  %281 = lshr i32 %267, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %33, align 1
  %283 = xor i32 %281, %266
  %284 = add nuw nsw i32 %283, %266
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %39, align 1
  %287 = icmp ne i8 %282, 0
  %288 = xor i1 %287, %285
  %.v138 = select i1 %288, i64 15, i64 39
  %289 = add i64 %255, %.v138
  store i64 %289, i64* %3, align 8
  br i1 %288, label %block_403a4e, label %routine_divl__ecx.exit

block_403a4e:                                     ; preds = %block_.L_403a1a
  %290 = add i64 %253, -8
  %291 = add i64 %289, 4
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RDI.i979, align 8
  %294 = add i64 %253, -16
  %295 = add i64 %289, 8
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RSI.i976, align 8
  %298 = add i64 %289, 11
  store i64 %298, i64* %3, align 8
  %299 = load i32, i32* %262, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RDX.i884, align 8
  %301 = add i64 %289, 14
  store i64 %301, i64* %3, align 8
  %302 = load i32, i32* %257, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RCX.i963, align 8
  %304 = add i64 %289, 1314
  %305 = add i64 %289, 19
  %306 = load i64, i64* %6, align 8
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %305, i64* %308, align 8
  store i64 %307, i64* %6, align 8
  store i64 %304, i64* %3, align 8
  %call2_403a5c = tail call %struct.Memory* @sub_403f70.fallbackSimpleSort(%struct.State* nonnull %0, i64 %304, %struct.Memory* %MEMORY.0)
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, -101
  br label %block_.L_4039fc.backedge

block_.L_4039fc.backedge:                         ; preds = %block_403a4e, %block_403cd0, %block_.L_403f5b
  %.sink33 = phi i64 [ %310, %block_403a4e ], [ %1263, %block_403cd0 ], [ %2486, %block_.L_403f5b ]
  %MEMORY.0.be = phi %struct.Memory* [ %call2_403a5c, %block_403a4e ], [ %MEMORY.0, %block_403cd0 ], [ %MEMORY.0, %block_.L_403f5b ]
  store i64 %.sink33, i64* %3, align 8
  br label %block_.L_4039fc

routine_divl__ecx.exit:                           ; preds = %block_.L_403a1a
  store i64 3, i64* %RAX.i926, align 8
  %311 = add i64 %253, -68
  %312 = add i64 %289, 12
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = mul i32 %314, 7621
  %316 = add i32 %315, 1
  %317 = and i32 %316, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  %322 = and i32 %316, 32767
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RCX.i963, align 8
  store i8 0, i8* %14, align 1
  store i8 %321, i8* %21, align 1
  %324 = icmp eq i32 %322, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %326 = add i64 %289, 24
  store i64 %326, i64* %3, align 8
  store i32 %322, i32* %313, align 4
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -68
  %329 = load i64, i64* %3, align 8
  %330 = add i64 %329, 3
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RCX.i963, align 8
  %334 = add i64 %327, -928
  %335 = load i32, i32* %EAX.i921, align 4
  %336 = add i64 %329, 9
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %334 to i32*
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %ECX.i970, align 4
  %339 = zext i32 %338 to i64
  %340 = load i64, i64* %3, align 8
  store i64 %339, i64* %RAX.i926, align 8
  store i64 0, i64* %RDX.i884, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -928
  %343 = add i64 %340, 10
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RCX.i963, align 8
  %div = udiv i32 %338, %345
  %347 = zext i32 %div to i64
  %348 = urem i32 %338, %345
  %349 = zext i32 %348 to i64
  store i64 %347, i64* %RAX.i926, align 8
  store i64 %349, i64* %RDX.i884, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %350 = add i64 %341, -72
  %351 = add i64 %340, 15
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  store i32 %348, i32* %352, align 4
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -72
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 4
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i32*
  %358 = load i32, i32* %357, align 4
  store i8 0, i8* %14, align 1
  %359 = and i32 %358, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %364 = icmp eq i32 %358, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %30, align 1
  %366 = lshr i32 %358, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v135 = select i1 %364, i64 10, i64 38
  %368 = add i64 %355, %.v135
  store i64 %368, i64* %3, align 8
  br i1 %364, label %block_403aa0, label %block_.L_403abc

block_403aa0:                                     ; preds = %routine_divl__ecx.exit
  %369 = add i64 %353, -16
  %370 = add i64 %368, 4
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RAX.i926, align 8
  %373 = add i64 %353, -8
  %374 = add i64 %368, 8
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i64*
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %RCX.i963, align 8
  %377 = add i64 %353, -56
  %378 = add i64 %368, 12
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %RDX.i884, align 8
  %382 = shl nsw i64 %381, 2
  %383 = add i64 %382, %376
  %384 = add i64 %368, 15
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RSI.i976, align 8
  store i64 %387, i64* %RCX.i963, align 8
  %388 = shl nuw nsw i64 %387, 2
  %389 = add i64 %372, %388
  %390 = add i64 %368, 20
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RSI.i976, align 8
  %394 = add i64 %353, -64
  %395 = add i64 %368, 23
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  store i32 %392, i32* %396, align 4
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, 79
  br label %block_.L_403b06

block_.L_403abc:                                  ; preds = %routine_divl__ecx.exit
  %399 = add i64 %368, 4
  store i64 %399, i64* %3, align 8
  %400 = load i32, i32* %357, align 4
  %401 = add i32 %400, -1
  %402 = icmp eq i32 %400, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %14, align 1
  %404 = and i32 %401, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %21, align 1
  %409 = xor i32 %401, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %27, align 1
  %413 = icmp eq i32 %401, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %30, align 1
  %415 = lshr i32 %401, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %33, align 1
  %417 = lshr i32 %400, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %39, align 1
  %.v134 = select i1 %413, i64 10, i64 46
  %422 = add i64 %368, %.v134
  %423 = add i64 %353, -16
  %424 = add i64 %422, 4
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RAX.i926, align 8
  %427 = add i64 %353, -8
  %428 = add i64 %422, 8
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RCX.i963, align 8
  br i1 %413, label %block_403ac6, label %block_.L_403aea

block_403ac6:                                     ; preds = %block_.L_403abc
  %431 = add i64 %353, -56
  %432 = add i64 %422, 11
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RDX.i884, align 8
  %436 = add i64 %353, -60
  %437 = add i64 %422, 14
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = add i32 %439, %434
  %441 = zext i32 %440 to i64
  %442 = shl nuw i64 %441, 32
  %443 = ashr i64 %442, 33
  %444 = trunc i32 %440 to i8
  %445 = and i8 %444, 1
  %446 = trunc i64 %443 to i32
  %447 = and i64 %443, 4294967295
  store i64 %447, i64* %RDX.i884, align 8
  store i8 %445, i8* %14, align 1
  %448 = and i32 %446, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %453 = icmp eq i32 %446, 0
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %30, align 1
  %455 = lshr i64 %443, 31
  %456 = trunc i64 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %443, i64* %RSI.i976, align 8
  %458 = shl nsw i64 %443, 2
  %459 = add i64 %430, %458
  %460 = add i64 %422, 22
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RDX.i884, align 8
  store i64 %463, i64* %RCX.i963, align 8
  %464 = shl nuw nsw i64 %463, 2
  %465 = add i64 %426, %464
  %466 = add i64 %422, 27
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RDX.i884, align 8
  %470 = add i64 %353, -64
  %471 = add i64 %422, 30
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  store i32 %468, i32* %472, align 4
  %473 = load i64, i64* %3, align 8
  %474 = add i64 %473, 28
  store i64 %474, i64* %3, align 8
  br label %block_.L_403b01

block_.L_403aea:                                  ; preds = %block_.L_403abc
  %475 = add i64 %353, -60
  %476 = add i64 %422, 12
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  store i64 %479, i64* %RDX.i884, align 8
  %480 = shl nsw i64 %479, 2
  %481 = add i64 %480, %430
  %482 = add i64 %422, 15
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RSI.i976, align 8
  store i64 %485, i64* %RCX.i963, align 8
  %486 = shl nuw nsw i64 %485, 2
  %487 = add i64 %426, %486
  %488 = add i64 %422, 20
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RSI.i976, align 8
  %492 = add i64 %353, -64
  %493 = add i64 %422, 23
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  store i32 %490, i32* %494, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_403b01

block_.L_403b01:                                  ; preds = %block_.L_403aea, %block_403ac6
  %495 = phi i64 [ %.pre125, %block_.L_403aea ], [ %474, %block_403ac6 ]
  %496 = add i64 %495, 5
  store i64 %496, i64* %3, align 8
  br label %block_.L_403b06

block_.L_403b06:                                  ; preds = %block_.L_403b01, %block_403aa0
  %storemerge = phi i64 [ %398, %block_403aa0 ], [ %496, %block_.L_403b01 ]
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -56
  %499 = add i64 %storemerge, 3
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RAX.i926, align 8
  %503 = add i64 %497, -36
  %504 = add i64 %storemerge, 6
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  store i32 %501, i32* %505, align 4
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -28
  %508 = load i32, i32* %EAX.i921, align 4
  %509 = load i64, i64* %3, align 8
  %510 = add i64 %509, 3
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %507 to i32*
  store i32 %508, i32* %511, align 4
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -60
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 3
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i926, align 8
  %519 = add i64 %512, -40
  %520 = add i64 %514, 6
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  store i32 %517, i32* %521, align 4
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -32
  %524 = load i32, i32* %EAX.i921, align 4
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, 3
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %527, align 4
  br label %block_.L_403b18

block_.L_403b18:                                  ; preds = %block_.L_403c75, %block_.L_403b06
  br label %block_.L_403b1d

block_.L_403b1d:                                  ; preds = %block_.L_403b1d.backedge, %block_.L_403b18
  %.sink21 = phi i64 [ 5, %block_.L_403b18 ], [ %.sink21.be, %block_.L_403b1d.backedge ]
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, %.sink21
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -28
  %532 = add i64 %529, 3
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX.i926, align 8
  %536 = add i64 %530, -32
  %537 = add i64 %529, 6
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = sub i32 %534, %539
  %541 = icmp ult i32 %534, %539
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %14, align 1
  %543 = and i32 %540, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i32 %539, %534
  %549 = xor i32 %548, %540
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %27, align 1
  %553 = icmp eq i32 %540, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %30, align 1
  %555 = lshr i32 %540, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %33, align 1
  %557 = lshr i32 %534, 31
  %558 = lshr i32 %539, 31
  %559 = xor i32 %558, %557
  %560 = xor i32 %555, %557
  %561 = add nuw nsw i32 %560, %559
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %39, align 1
  %564 = icmp ne i8 %556, 0
  %565 = xor i1 %564, %562
  %566 = or i1 %553, %565
  %.v139 = select i1 %566, i64 17, i64 12
  %567 = add i64 %529, %.v139
  store i64 %567, i64* %3, align 8
  br i1 %566, label %block_.L_403b2e, label %block_403b29

block_403b29:                                     ; preds = %block_.L_403b1d
  %568 = add i64 %567, 149
  br label %block_.L_403bbe

block_.L_403b2e:                                  ; preds = %block_.L_403b1d
  %569 = add i64 %530, -16
  %570 = add i64 %567, 4
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i926, align 8
  %573 = add i64 %530, -8
  %574 = add i64 %567, 8
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RCX.i963, align 8
  %577 = add i64 %567, 12
  store i64 %577, i64* %3, align 8
  %578 = load i32, i32* %533, align 4
  %579 = sext i32 %578 to i64
  store i64 %579, i64* %RDX.i884, align 8
  %580 = shl nsw i64 %579, 2
  %581 = add i64 %580, %576
  %582 = add i64 %567, 15
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RSI.i976, align 8
  store i64 %585, i64* %RCX.i963, align 8
  %586 = shl nuw nsw i64 %585, 2
  %587 = add i64 %572, %586
  %588 = add i64 %567, 20
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RSI.i976, align 8
  %592 = add i64 %530, -64
  %593 = add i64 %567, 23
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sub i32 %590, %595
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RSI.i976, align 8
  %598 = icmp ult i32 %590, %595
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %14, align 1
  %600 = and i32 %596, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %21, align 1
  %605 = xor i32 %595, %590
  %606 = xor i32 %605, %596
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %27, align 1
  %610 = icmp eq i32 %596, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %30, align 1
  %612 = lshr i32 %596, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %33, align 1
  %614 = lshr i32 %590, 31
  %615 = lshr i32 %595, 31
  %616 = xor i32 %615, %614
  %617 = xor i32 %612, %614
  %618 = add nuw nsw i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %39, align 1
  %621 = add i64 %530, -44
  %622 = add i64 %567, 26
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  store i32 %596, i32* %623, align 4
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -44
  %626 = load i64, i64* %3, align 8
  %627 = add i64 %626, 4
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628, align 4
  store i8 0, i8* %14, align 1
  %630 = and i32 %629, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %635 = icmp eq i32 %629, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i32 %629, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v148 = select i1 %635, i64 10, i64 89
  %639 = add i64 %626, %.v148
  store i64 %639, i64* %3, align 8
  br i1 %635, label %block_403b52, label %block_.L_403ba1

block_403b52:                                     ; preds = %block_.L_403b2e
  %640 = add i64 %624, -8
  %641 = add i64 %639, 4
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX.i926, align 8
  %644 = add i64 %624, -28
  %645 = add i64 %639, 8
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RCX.i963, align 8
  %649 = shl nsw i64 %648, 2
  %650 = add i64 %649, %643
  %651 = add i64 %639, 11
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RDX.i884, align 8
  %655 = add i64 %624, -884
  %656 = add i64 %639, 17
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  store i32 %653, i32* %657, align 4
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -8
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RAX.i926, align 8
  %664 = add i64 %658, -36
  %665 = add i64 %660, 8
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  store i64 %668, i64* %RCX.i963, align 8
  %669 = shl nsw i64 %668, 2
  %670 = add i64 %669, %663
  %671 = add i64 %660, 11
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RDX.i884, align 8
  %675 = add i64 %660, 15
  store i64 %675, i64* %3, align 8
  %676 = load i64, i64* %662, align 8
  store i64 %676, i64* %RAX.i926, align 8
  %677 = add i64 %658, -28
  %678 = add i64 %660, 19
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = sext i32 %680 to i64
  store i64 %681, i64* %RCX.i963, align 8
  %682 = shl nsw i64 %681, 2
  %683 = add i64 %682, %676
  %684 = add i64 %660, 22
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  store i32 %673, i32* %685, align 4
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -884
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 6
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RDX.i884, align 8
  %693 = add i64 %686, -8
  %694 = add i64 %688, 10
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RAX.i926, align 8
  %697 = add i64 %686, -36
  %698 = add i64 %688, 14
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX.i963, align 8
  %702 = shl nsw i64 %701, 2
  %703 = add i64 %702, %696
  %704 = add i64 %688, 17
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  store i32 %691, i32* %705, align 4
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -36
  %708 = load i64, i64* %3, align 8
  %709 = add i64 %708, 3
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = add i32 %711, 1
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RDX.i884, align 8
  %714 = icmp eq i32 %711, -1
  %715 = icmp eq i32 %712, 0
  %716 = or i1 %714, %715
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %14, align 1
  %718 = and i32 %712, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %21, align 1
  %723 = xor i32 %712, %711
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %27, align 1
  %727 = zext i1 %715 to i8
  store i8 %727, i8* %30, align 1
  %728 = lshr i32 %712, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %33, align 1
  %730 = lshr i32 %711, 31
  %731 = xor i32 %728, %730
  %732 = add nuw nsw i32 %731, %728
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %39, align 1
  %735 = add i64 %708, 9
  store i64 %735, i64* %3, align 8
  store i32 %712, i32* %710, align 4
  %736 = load i64, i64* %RBP.i, align 8
  %737 = add i64 %736, -28
  %738 = load i64, i64* %3, align 8
  %739 = add i64 %738, 3
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %737 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = add i64 %738, 6
  store i64 %742, i64* %3, align 8
  %743 = add i32 %741, 1
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RDX.i884, align 8
  %745 = icmp eq i32 %741, -1
  %746 = icmp eq i32 %743, 0
  %747 = or i1 %745, %746
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %14, align 1
  %749 = and i32 %743, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  %754 = xor i32 %743, %741
  br label %block_.L_403b1d.backedge

block_.L_403b1d.backedge:                         ; preds = %block_403b52, %block_.L_403bb0
  %755 = phi i64 [ %742, %block_403b52 ], [ %792, %block_.L_403bb0 ]
  %756 = phi i32 [ %743, %block_403b52 ], [ %793, %block_.L_403bb0 ]
  %757 = phi i64 [ %736, %block_403b52 ], [ %624, %block_.L_403bb0 ]
  %.sink56 = phi i32 [ %754, %block_403b52 ], [ %804, %block_.L_403bb0 ]
  %.sink52 = phi i1 [ %746, %block_403b52 ], [ %796, %block_.L_403bb0 ]
  %.sink47 = phi i32 [ %741, %block_403b52 ], [ %791, %block_.L_403bb0 ]
  %.sink21.be = phi i64 [ -127, %block_403b52 ], [ -156, %block_.L_403bb0 ]
  %758 = lshr i32 %.sink56, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %27, align 1
  %761 = zext i1 %.sink52 to i8
  store i8 %761, i8* %30, align 1
  %762 = lshr i32 %756, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %33, align 1
  %764 = lshr i32 %.sink47, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %762
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %39, align 1
  %769 = add i64 %757, -28
  %770 = add i64 %755, 3
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  store i32 %756, i32* %771, align 4
  br label %block_.L_403b1d

block_.L_403ba1:                                  ; preds = %block_.L_403b2e
  %772 = add i64 %639, 4
  store i64 %772, i64* %3, align 8
  %773 = load i32, i32* %628, align 4
  store i8 0, i8* %14, align 1
  %774 = and i32 %773, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %779 = icmp eq i32 %773, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %30, align 1
  %781 = lshr i32 %773, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %783 = icmp ne i8 %782, 0
  %784 = or i1 %779, %783
  %.v149 = select i1 %784, i64 15, i64 10
  %785 = add i64 %639, %.v149
  store i64 %785, i64* %3, align 8
  br i1 %784, label %block_.L_403bb0, label %block_403bab

block_403bab:                                     ; preds = %block_.L_403ba1
  %786 = add i64 %785, 19
  %787 = add i64 %785, 5
  store i64 %787, i64* %3, align 8
  br label %block_.L_403bbe

block_.L_403bb0:                                  ; preds = %block_.L_403ba1
  %788 = add i64 %624, -28
  %789 = add i64 %785, 3
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = add i64 %785, 6
  store i64 %792, i64* %3, align 8
  %793 = add i32 %791, 1
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i926, align 8
  %795 = icmp eq i32 %791, -1
  %796 = icmp eq i32 %793, 0
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = and i32 %793, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i32 %793, %791
  br label %block_.L_403b1d.backedge

block_.L_403bbe:                                  ; preds = %block_403bab, %block_403b29
  %805 = phi i64 [ %530, %block_403b29 ], [ %624, %block_403bab ]
  %storemerge18 = phi i64 [ %568, %block_403b29 ], [ %786, %block_403bab ]
  %806 = add i64 %storemerge18, 5
  br label %block_.L_403bc3

block_.L_403bc3:                                  ; preds = %block_.L_403bc3.backedge, %block_.L_403bbe
  %807 = phi i64 [ %805, %block_.L_403bbe ], [ %.pre126, %block_.L_403bc3.backedge ]
  %.sink = phi i64 [ %806, %block_.L_403bbe ], [ %1046, %block_.L_403bc3.backedge ]
  %808 = add i64 %807, -28
  %809 = add i64 %.sink, 3
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RAX.i926, align 8
  %813 = add i64 %807, -32
  %814 = add i64 %.sink, 6
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sub i32 %811, %816
  %818 = icmp ult i32 %811, %816
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %14, align 1
  %820 = and i32 %817, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %21, align 1
  %825 = xor i32 %816, %811
  %826 = xor i32 %825, %817
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %27, align 1
  %830 = icmp eq i32 %817, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %30, align 1
  %832 = lshr i32 %817, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %33, align 1
  %834 = lshr i32 %811, 31
  %835 = lshr i32 %816, 31
  %836 = xor i32 %835, %834
  %837 = xor i32 %832, %834
  %838 = add nuw nsw i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %39, align 1
  %841 = icmp ne i8 %833, 0
  %842 = xor i1 %841, %839
  %843 = or i1 %830, %842
  %.v140 = select i1 %843, i64 17, i64 12
  %844 = add i64 %.sink, %.v140
  store i64 %844, i64* %3, align 8
  br i1 %843, label %block_.L_403bd4, label %block_403bcf

block_403bcf:                                     ; preds = %block_.L_403bc3
  %845 = add i64 %844, 149
  br label %block_.L_403c64

block_.L_403bd4:                                  ; preds = %block_.L_403bc3
  %846 = add i64 %807, -16
  %847 = add i64 %844, 4
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RAX.i926, align 8
  %850 = add i64 %807, -8
  %851 = add i64 %844, 8
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RCX.i963, align 8
  %854 = add i64 %844, 12
  store i64 %854, i64* %3, align 8
  %855 = load i32, i32* %815, align 4
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RDX.i884, align 8
  %857 = shl nsw i64 %856, 2
  %858 = add i64 %857, %853
  %859 = add i64 %844, 15
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RSI.i976, align 8
  store i64 %862, i64* %RCX.i963, align 8
  %863 = shl nuw nsw i64 %862, 2
  %864 = add i64 %849, %863
  %865 = add i64 %844, 20
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = zext i32 %867 to i64
  store i64 %868, i64* %RSI.i976, align 8
  %869 = add i64 %807, -64
  %870 = add i64 %844, 23
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = sub i32 %867, %872
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RSI.i976, align 8
  %875 = icmp ult i32 %867, %872
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %873, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %872, %867
  %883 = xor i32 %882, %873
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %27, align 1
  %887 = icmp eq i32 %873, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %30, align 1
  %889 = lshr i32 %873, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %33, align 1
  %891 = lshr i32 %867, 31
  %892 = lshr i32 %872, 31
  %893 = xor i32 %892, %891
  %894 = xor i32 %889, %891
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %39, align 1
  %898 = add i64 %807, -44
  %899 = add i64 %844, 26
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  store i32 %873, i32* %900, align 4
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -44
  %903 = load i64, i64* %3, align 8
  %904 = add i64 %903, 4
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %902 to i32*
  %906 = load i32, i32* %905, align 4
  store i8 0, i8* %14, align 1
  %907 = and i32 %906, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %912 = icmp eq i32 %906, 0
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %30, align 1
  %914 = lshr i32 %906, 31
  %915 = trunc i32 %914 to i8
  store i8 %915, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v147 = select i1 %912, i64 10, i64 89
  %916 = add i64 %903, %.v147
  store i64 %916, i64* %3, align 8
  br i1 %912, label %block_403bf8, label %block_.L_403c47

block_403bf8:                                     ; preds = %block_.L_403bd4
  %917 = add i64 %901, -8
  %918 = add i64 %916, 4
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RAX.i926, align 8
  %921 = add i64 %901, -32
  %922 = add i64 %916, 8
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = sext i32 %924 to i64
  store i64 %925, i64* %RCX.i963, align 8
  %926 = shl nsw i64 %925, 2
  %927 = add i64 %926, %920
  %928 = add i64 %916, 11
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i884, align 8
  %932 = add i64 %901, -888
  %933 = add i64 %916, 17
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  store i32 %930, i32* %934, align 4
  %935 = load i64, i64* %RBP.i, align 8
  %936 = add i64 %935, -8
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 4
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %936 to i64*
  %940 = load i64, i64* %939, align 8
  store i64 %940, i64* %RAX.i926, align 8
  %941 = add i64 %935, -40
  %942 = add i64 %937, 8
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX.i963, align 8
  %946 = shl nsw i64 %945, 2
  %947 = add i64 %946, %940
  %948 = add i64 %937, 11
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RDX.i884, align 8
  %952 = add i64 %937, 15
  store i64 %952, i64* %3, align 8
  %953 = load i64, i64* %939, align 8
  store i64 %953, i64* %RAX.i926, align 8
  %954 = add i64 %935, -32
  %955 = add i64 %937, 19
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RCX.i963, align 8
  %959 = shl nsw i64 %958, 2
  %960 = add i64 %959, %953
  %961 = add i64 %937, 22
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  store i32 %950, i32* %962, align 4
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -888
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 6
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RDX.i884, align 8
  %970 = add i64 %963, -8
  %971 = add i64 %965, 10
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i64*
  %973 = load i64, i64* %972, align 8
  store i64 %973, i64* %RAX.i926, align 8
  %974 = add i64 %963, -40
  %975 = add i64 %965, 14
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sext i32 %977 to i64
  store i64 %978, i64* %RCX.i963, align 8
  %979 = shl nsw i64 %978, 2
  %980 = add i64 %979, %973
  %981 = add i64 %965, 17
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  store i32 %968, i32* %982, align 4
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, -40
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 3
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %984 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = add i32 %988, -1
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RDX.i884, align 8
  %991 = icmp ne i32 %988, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %989, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %988, 16
  %999 = xor i32 %998, %989
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %27, align 1
  %1003 = icmp eq i32 %989, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %30, align 1
  %1005 = lshr i32 %989, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %33, align 1
  %1007 = lshr i32 %988, 31
  %1008 = xor i32 %1005, %1007
  %1009 = xor i32 %1005, 1
  %1010 = add nuw nsw i32 %1008, %1009
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %39, align 1
  %1013 = add i64 %985, 9
  store i64 %1013, i64* %3, align 8
  store i32 %989, i32* %987, align 4
  %1014 = load i64, i64* %3, align 8
  %.sink106.in.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_403bc3.backedge

block_.L_403bc3.backedge:                         ; preds = %block_.L_403c47, %block_403bf8
  %1015 = phi i64 [ %.sink106.in.pre, %block_403bf8 ], [ %901, %block_.L_403c47 ]
  %.sink108 = phi i64 [ %1014, %block_403bf8 ], [ %1059, %block_.L_403c47 ]
  %RDX.i856.sink103 = phi i64* [ %RDX.i884, %block_403bf8 ], [ %RAX.i926, %block_.L_403c47 ]
  %EDX.i973.sink64 = phi i32* [ %EDX.i973, %block_403bf8 ], [ %EAX.i921, %block_.L_403c47 ]
  %.sink58 = phi i64 [ -127, %block_403bf8 ], [ -156, %block_.L_403c47 ]
  %.sink106 = add i64 %1015, -32
  %1016 = add i64 %.sink108, 3
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %.sink106 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, -1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RDX.i856.sink103, align 8
  %1021 = icmp ne i32 %1018, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %14, align 1
  %1023 = and i32 %1019, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  %1028 = xor i32 %1018, 16
  %1029 = xor i32 %1028, %1019
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %27, align 1
  %1033 = icmp eq i32 %1019, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %30, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %33, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = xor i32 %1035, 1
  %1040 = add nuw nsw i32 %1038, %1039
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %39, align 1
  %1043 = load i32, i32* %EDX.i973.sink64, align 4
  %1044 = add i64 %.sink108, 9
  store i64 %1044, i64* %3, align 8
  store i32 %1043, i32* %1017, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, %.sink58
  %.pre126 = load i64, i64* %RBP.i, align 8
  br label %block_.L_403bc3

block_.L_403c47:                                  ; preds = %block_.L_403bd4
  %1047 = add i64 %916, 4
  store i64 %1047, i64* %3, align 8
  %1048 = load i32, i32* %905, align 4
  store i8 0, i8* %14, align 1
  %1049 = and i32 %1048, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1054 = icmp eq i32 %1048, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %30, align 1
  %1056 = lshr i32 %1048, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1058 = icmp ne i8 %1057, 0
  %.v = select i1 %1058, i64 6, i64 11
  %1059 = add i64 %1047, %.v
  store i64 %1059, i64* %3, align 8
  br i1 %1058, label %block_403c51, label %block_.L_403bc3.backedge

block_403c51:                                     ; preds = %block_.L_403c47
  %1060 = add i64 %1059, 19
  %1061 = add i64 %1059, 5
  store i64 %1061, i64* %3, align 8
  br label %block_.L_403c64

block_.L_403c64:                                  ; preds = %block_403c51, %block_403bcf
  %1062 = phi i64 [ %807, %block_403bcf ], [ %901, %block_403c51 ]
  %storemerge19 = phi i64 [ %845, %block_403bcf ], [ %1060, %block_403c51 ]
  %1063 = add i64 %1062, -28
  %1064 = add i64 %storemerge19, 3
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RAX.i926, align 8
  %1068 = add i64 %1062, -32
  %1069 = add i64 %storemerge19, 6
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = sub i32 %1066, %1071
  %1073 = icmp ult i32 %1066, %1071
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = and i32 %1072, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %21, align 1
  %1080 = xor i32 %1071, %1066
  %1081 = xor i32 %1080, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %27, align 1
  %1085 = icmp eq i32 %1072, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %30, align 1
  %1087 = lshr i32 %1072, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %33, align 1
  %1089 = lshr i32 %1066, 31
  %1090 = lshr i32 %1071, 31
  %1091 = xor i32 %1090, %1089
  %1092 = xor i32 %1087, %1089
  %1093 = add nuw nsw i32 %1092, %1091
  %1094 = icmp eq i32 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %39, align 1
  %1096 = icmp ne i8 %1088, 0
  %1097 = xor i1 %1096, %1094
  %1098 = or i1 %1085, %1097
  %.v133 = select i1 %1098, i64 17, i64 12
  %1099 = add i64 %storemerge19, %.v133
  store i64 %1099, i64* %3, align 8
  br i1 %1098, label %block_.L_403c75, label %block_403c70

block_403c70:                                     ; preds = %block_.L_403c64
  %1100 = add i64 %1062, -40
  %1101 = add i64 %1099, 87
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i926, align 8
  %1105 = add i64 %1062, -36
  %1106 = add i64 %1099, 90
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = sub i32 %1103, %1108
  %1110 = icmp ult i32 %1103, %1108
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %14, align 1
  %1112 = and i32 %1109, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112)
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %21, align 1
  %1117 = xor i32 %1108, %1103
  %1118 = xor i32 %1117, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %27, align 1
  %1122 = icmp eq i32 %1109, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1109, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  %1126 = lshr i32 %1103, 31
  %1127 = lshr i32 %1108, 31
  %1128 = xor i32 %1127, %1126
  %1129 = xor i32 %1124, %1126
  %1130 = add nuw nsw i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %39, align 1
  %1133 = icmp ne i8 %1125, 0
  %1134 = xor i1 %1133, %1131
  %.v141 = select i1 %1134, i64 96, i64 101
  %1135 = add i64 %1099, %.v141
  store i64 %1135, i64* %3, align 8
  br i1 %1134, label %block_403cd0, label %block_.L_403cd5

block_.L_403c75:                                  ; preds = %block_.L_403c64
  %1136 = add i64 %1062, -8
  %1137 = add i64 %1099, 4
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RAX.i926, align 8
  %1140 = add i64 %1099, 8
  store i64 %1140, i64* %3, align 8
  %1141 = load i32, i32* %1065, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RCX.i963, align 8
  %1143 = shl nsw i64 %1142, 2
  %1144 = add i64 %1143, %1139
  %1145 = add i64 %1099, 11
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RDX.i884, align 8
  %1149 = add i64 %1062, -892
  %1150 = add i64 %1099, 17
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  store i32 %1147, i32* %1151, align 4
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -8
  %1154 = load i64, i64* %3, align 8
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX.i926, align 8
  %1158 = add i64 %1152, -32
  %1159 = add i64 %1154, 8
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1161 to i64
  store i64 %1162, i64* %RCX.i963, align 8
  %1163 = shl nsw i64 %1162, 2
  %1164 = add i64 %1163, %1157
  %1165 = add i64 %1154, 11
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RDX.i884, align 8
  %1169 = add i64 %1154, 15
  store i64 %1169, i64* %3, align 8
  %1170 = load i64, i64* %1156, align 8
  store i64 %1170, i64* %RAX.i926, align 8
  %1171 = add i64 %1152, -28
  %1172 = add i64 %1154, 19
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = sext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i963, align 8
  %1176 = shl nsw i64 %1175, 2
  %1177 = add i64 %1176, %1170
  %1178 = add i64 %1154, 22
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  store i32 %1167, i32* %1179, align 4
  %1180 = load i64, i64* %RBP.i, align 8
  %1181 = add i64 %1180, -892
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, 6
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184, align 4
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RDX.i884, align 8
  %1187 = add i64 %1180, -8
  %1188 = add i64 %1182, 10
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %RAX.i926, align 8
  %1191 = add i64 %1180, -32
  %1192 = add i64 %1182, 14
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = sext i32 %1194 to i64
  store i64 %1195, i64* %RCX.i963, align 8
  %1196 = shl nsw i64 %1195, 2
  %1197 = add i64 %1196, %1190
  %1198 = add i64 %1182, 17
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  store i32 %1185, i32* %1199, align 4
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -28
  %1202 = load i64, i64* %3, align 8
  %1203 = add i64 %1202, 3
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = add i32 %1205, 1
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RDX.i884, align 8
  %1208 = icmp eq i32 %1205, -1
  %1209 = icmp eq i32 %1206, 0
  %1210 = or i1 %1208, %1209
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %14, align 1
  %1212 = and i32 %1206, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i32 %1206, %1205
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %27, align 1
  %1221 = zext i1 %1209 to i8
  store i8 %1221, i8* %30, align 1
  %1222 = lshr i32 %1206, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %33, align 1
  %1224 = lshr i32 %1205, 31
  %1225 = xor i32 %1222, %1224
  %1226 = add nuw nsw i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %39, align 1
  %1229 = add i64 %1202, 9
  store i64 %1229, i64* %3, align 8
  store i32 %1206, i32* %1204, align 4
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -32
  %1232 = load i64, i64* %3, align 8
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = add i32 %1235, -1
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RDX.i884, align 8
  %1238 = icmp ne i32 %1235, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %14, align 1
  %1240 = and i32 %1236, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %21, align 1
  %1245 = xor i32 %1235, 16
  %1246 = xor i32 %1245, %1236
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %27, align 1
  %1250 = icmp eq i32 %1236, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %30, align 1
  %1252 = lshr i32 %1236, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %33, align 1
  %1254 = lshr i32 %1235, 31
  %1255 = xor i32 %1252, %1254
  %1256 = xor i32 %1252, 1
  %1257 = add nuw nsw i32 %1255, %1256
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %39, align 1
  %1260 = add i64 %1232, 9
  store i64 %1260, i64* %3, align 8
  store i32 %1236, i32* %1234, align 4
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, -423
  store i64 %1262, i64* %3, align 8
  br label %block_.L_403b18

block_403cd0:                                     ; preds = %block_403c70
  %1263 = add i64 %1135, -724
  br label %block_.L_4039fc.backedge

block_.L_403cd5:                                  ; preds = %block_403c70
  %1264 = add i64 %1135, 3
  store i64 %1264, i64* %3, align 8
  %1265 = load i32, i32* %1107, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX.i926, align 8
  %1267 = add i64 %1062, -56
  %1268 = add i64 %1135, 6
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sub i32 %1265, %1270
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX.i926, align 8
  %1273 = icmp ult i32 %1265, %1270
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = and i32 %1271, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  %1280 = xor i32 %1270, %1265
  %1281 = xor i32 %1280, %1271
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %27, align 1
  %1285 = icmp eq i32 %1271, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %30, align 1
  %1287 = lshr i32 %1271, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %33, align 1
  %1289 = lshr i32 %1265, 31
  %1290 = lshr i32 %1270, 31
  %1291 = xor i32 %1290, %1289
  %1292 = xor i32 %1287, %1289
  %1293 = add nuw nsw i32 %1292, %1291
  %1294 = icmp eq i32 %1293, 2
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %39, align 1
  %1296 = add i64 %1135, 9
  store i64 %1296, i64* %3, align 8
  %1297 = load i32, i32* %1065, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i963, align 8
  %1299 = add i64 %1135, 12
  store i64 %1299, i64* %3, align 8
  %1300 = load i32, i32* %1107, align 4
  %1301 = sub i32 %1297, %1300
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RCX.i963, align 8
  %1303 = lshr i32 %1301, 31
  %1304 = sub i32 %1271, %1301
  %1305 = icmp ult i32 %1271, %1301
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1304, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  %1312 = xor i32 %1301, %1271
  %1313 = xor i32 %1312, %1304
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %27, align 1
  %1317 = icmp eq i32 %1304, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %30, align 1
  %1319 = lshr i32 %1304, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %33, align 1
  %1321 = xor i32 %1303, %1287
  %1322 = xor i32 %1319, %1287
  %1323 = add nuw nsw i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %1326 = icmp ne i8 %1320, 0
  %1327 = xor i1 %1326, %1324
  %.v142 = select i1 %1327, i64 20, i64 37
  %1328 = add i64 %1135, %.v142
  store i64 %1328, i64* %3, align 8
  %1329 = load i64, i64* %RBP.i, align 8
  br i1 %1327, label %block_403ce9, label %block_.L_403cfa

block_403ce9:                                     ; preds = %block_.L_403cd5
  %1330 = add i64 %1329, -36
  %1331 = add i64 %1328, 3
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RAX.i926, align 8
  %1335 = add i64 %1329, -56
  %1336 = add i64 %1328, 6
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sub i32 %1333, %1338
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i926, align 8
  %1341 = icmp ult i32 %1333, %1338
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1339, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1338, %1333
  %1349 = xor i32 %1348, %1339
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %27, align 1
  %1353 = icmp eq i32 %1339, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %30, align 1
  %1355 = lshr i32 %1339, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %33, align 1
  %1357 = lshr i32 %1333, 31
  %1358 = lshr i32 %1338, 31
  %1359 = xor i32 %1358, %1357
  %1360 = xor i32 %1355, %1357
  %1361 = add nuw nsw i32 %1360, %1359
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %39, align 1
  %1364 = add i64 %1329, -932
  %1365 = add i64 %1328, 12
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  store i32 %1339, i32* %1366, align 4
  %1367 = load i64, i64* %3, align 8
  %1368 = add i64 %1367, 17
  store i64 %1368, i64* %3, align 8
  br label %block_.L_403d06

block_.L_403cfa:                                  ; preds = %block_.L_403cd5
  %1369 = add i64 %1329, -28
  %1370 = add i64 %1328, 3
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX.i926, align 8
  %1374 = add i64 %1329, -36
  %1375 = add i64 %1328, 6
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sub i32 %1372, %1377
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RAX.i926, align 8
  %1380 = icmp ult i32 %1372, %1377
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %14, align 1
  %1382 = and i32 %1378, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  %1387 = xor i32 %1377, %1372
  %1388 = xor i32 %1387, %1378
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = icmp eq i32 %1378, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %30, align 1
  %1394 = lshr i32 %1378, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %33, align 1
  %1396 = lshr i32 %1372, 31
  %1397 = lshr i32 %1377, 31
  %1398 = xor i32 %1397, %1396
  %1399 = xor i32 %1394, %1396
  %1400 = add nuw nsw i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %39, align 1
  %1403 = add i64 %1329, -932
  %1404 = add i64 %1328, 12
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  store i32 %1378, i32* %1405, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_403d06

block_.L_403d06:                                  ; preds = %block_.L_403cfa, %block_403ce9
  %1406 = phi i64 [ %.pre128, %block_.L_403cfa ], [ %1368, %block_403ce9 ]
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -932
  %1409 = add i64 %1406, 6
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RAX.i926, align 8
  %1413 = add i64 %1407, -44
  %1414 = add i64 %1406, 9
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  store i32 %1411, i32* %1415, align 4
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -56
  %1418 = load i64, i64* %3, align 8
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1417 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RAX.i926, align 8
  %1423 = add i64 %1416, -896
  %1424 = add i64 %1418, 9
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  store i32 %1421, i32* %1425, align 4
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -28
  %1428 = load i64, i64* %3, align 8
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1427 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RAX.i926, align 8
  %1433 = add i64 %1426, -44
  %1434 = add i64 %1428, 6
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = sub i32 %1431, %1436
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RAX.i926, align 8
  %1439 = icmp ult i32 %1431, %1436
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %14, align 1
  %1441 = and i32 %1437, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %21, align 1
  %1446 = xor i32 %1436, %1431
  %1447 = xor i32 %1446, %1437
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %27, align 1
  %1451 = icmp eq i32 %1437, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %30, align 1
  %1453 = lshr i32 %1437, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %33, align 1
  %1455 = lshr i32 %1431, 31
  %1456 = lshr i32 %1436, 31
  %1457 = xor i32 %1456, %1455
  %1458 = xor i32 %1453, %1455
  %1459 = add nuw nsw i32 %1458, %1457
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %39, align 1
  %1462 = add i64 %1426, -900
  %1463 = add i64 %1428, 12
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  store i32 %1437, i32* %1464, align 4
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -44
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1466 to i32*
  %1470 = load i32, i32* %1469, align 4
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i926, align 8
  %1472 = add i64 %1465, -904
  %1473 = add i64 %1467, 9
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to i32*
  store i32 %1470, i32* %1474, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_403d2d

block_.L_403d2d:                                  ; preds = %block_403d3a, %block_.L_403d06
  %1475 = phi i64 [ %1651, %block_403d3a ], [ %.pre129, %block_.L_403d06 ]
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -904
  %1478 = add i64 %1475, 7
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  store i8 0, i8* %14, align 1
  %1481 = and i32 %1480, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1486 = icmp eq i32 %1480, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %30, align 1
  %1488 = lshr i32 %1480, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1490 = icmp ne i8 %1489, 0
  %1491 = or i1 %1486, %1490
  %.v143 = select i1 %1491, i64 131, i64 13
  %1492 = add i64 %1475, %.v143
  store i64 %1492, i64* %3, align 8
  br i1 %1491, label %block_.L_403db0, label %block_403d3a

block_403d3a:                                     ; preds = %block_.L_403d2d
  %1493 = add i64 %1476, -8
  %1494 = add i64 %1492, 4
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RAX.i926, align 8
  %1497 = add i64 %1476, -896
  %1498 = add i64 %1492, 11
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i963, align 8
  %1502 = shl nsw i64 %1501, 2
  %1503 = add i64 %1502, %1496
  %1504 = add i64 %1492, 14
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RDX.i884, align 8
  %1508 = add i64 %1476, -908
  %1509 = add i64 %1492, 20
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  store i32 %1506, i32* %1510, align 4
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -8
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RAX.i926, align 8
  %1517 = add i64 %1511, -900
  %1518 = add i64 %1513, 11
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = sext i32 %1520 to i64
  store i64 %1521, i64* %RCX.i963, align 8
  %1522 = shl nsw i64 %1521, 2
  %1523 = add i64 %1522, %1516
  %1524 = add i64 %1513, 14
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RDX.i884, align 8
  %1528 = add i64 %1513, 18
  store i64 %1528, i64* %3, align 8
  %1529 = load i64, i64* %1515, align 8
  store i64 %1529, i64* %RAX.i926, align 8
  %1530 = add i64 %1511, -896
  %1531 = add i64 %1513, 25
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = sext i32 %1533 to i64
  store i64 %1534, i64* %RCX.i963, align 8
  %1535 = shl nsw i64 %1534, 2
  %1536 = add i64 %1535, %1529
  %1537 = add i64 %1513, 28
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  store i32 %1526, i32* %1538, align 4
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -908
  %1541 = load i64, i64* %3, align 8
  %1542 = add i64 %1541, 6
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1540 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = zext i32 %1544 to i64
  store i64 %1545, i64* %RDX.i884, align 8
  %1546 = add i64 %1539, -8
  %1547 = add i64 %1541, 10
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i64*
  %1549 = load i64, i64* %1548, align 8
  store i64 %1549, i64* %RAX.i926, align 8
  %1550 = add i64 %1539, -900
  %1551 = add i64 %1541, 17
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = sext i32 %1553 to i64
  store i64 %1554, i64* %RCX.i963, align 8
  %1555 = shl nsw i64 %1554, 2
  %1556 = add i64 %1555, %1549
  %1557 = add i64 %1541, 20
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  store i32 %1544, i32* %1558, align 4
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -896
  %1561 = load i64, i64* %3, align 8
  %1562 = add i64 %1561, 6
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1560 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = add i32 %1564, 1
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RDX.i884, align 8
  %1567 = icmp eq i32 %1564, -1
  %1568 = icmp eq i32 %1565, 0
  %1569 = or i1 %1567, %1568
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = and i32 %1565, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i32 %1565, %1564
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %27, align 1
  %1580 = zext i1 %1568 to i8
  store i8 %1580, i8* %30, align 1
  %1581 = lshr i32 %1565, 31
  %1582 = trunc i32 %1581 to i8
  store i8 %1582, i8* %33, align 1
  %1583 = lshr i32 %1564, 31
  %1584 = xor i32 %1581, %1583
  %1585 = add nuw nsw i32 %1584, %1581
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %39, align 1
  %1588 = add i64 %1561, 15
  store i64 %1588, i64* %3, align 8
  store i32 %1565, i32* %1563, align 4
  %1589 = load i64, i64* %RBP.i, align 8
  %1590 = add i64 %1589, -900
  %1591 = load i64, i64* %3, align 8
  %1592 = add i64 %1591, 6
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1590 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = add i32 %1594, 1
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RDX.i884, align 8
  %1597 = icmp eq i32 %1594, -1
  %1598 = icmp eq i32 %1595, 0
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %14, align 1
  %1601 = and i32 %1595, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %21, align 1
  %1606 = xor i32 %1595, %1594
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %27, align 1
  %1610 = zext i1 %1598 to i8
  store i8 %1610, i8* %30, align 1
  %1611 = lshr i32 %1595, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %33, align 1
  %1613 = lshr i32 %1594, 31
  %1614 = xor i32 %1611, %1613
  %1615 = add nuw nsw i32 %1614, %1611
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %39, align 1
  %1618 = add i64 %1591, 15
  store i64 %1618, i64* %3, align 8
  store i32 %1595, i32* %1593, align 4
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -904
  %1621 = load i64, i64* %3, align 8
  %1622 = add i64 %1621, 6
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = add i32 %1624, -1
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RDX.i884, align 8
  %1627 = icmp ne i32 %1624, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1625, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1624, 16
  %1635 = xor i32 %1634, %1625
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %27, align 1
  %1639 = icmp eq i32 %1625, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %30, align 1
  %1641 = lshr i32 %1625, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %33, align 1
  %1643 = lshr i32 %1624, 31
  %1644 = xor i32 %1641, %1643
  %1645 = xor i32 %1641, 1
  %1646 = add nuw nsw i32 %1644, %1645
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %39, align 1
  %1649 = add i64 %1621, 15
  store i64 %1649, i64* %3, align 8
  store i32 %1625, i32* %1623, align 4
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, -126
  store i64 %1651, i64* %3, align 8
  br label %block_.L_403d2d

block_.L_403db0:                                  ; preds = %block_.L_403d2d
  %1652 = add i64 %1476, -60
  %1653 = add i64 %1492, 3
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i926, align 8
  %1657 = add i64 %1476, -40
  %1658 = add i64 %1492, 6
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = sub i32 %1655, %1660
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RAX.i926, align 8
  %1663 = icmp ult i32 %1655, %1660
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %14, align 1
  %1665 = and i32 %1661, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %21, align 1
  %1670 = xor i32 %1660, %1655
  %1671 = xor i32 %1670, %1661
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %27, align 1
  %1675 = icmp eq i32 %1661, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %30, align 1
  %1677 = lshr i32 %1661, 31
  %1678 = trunc i32 %1677 to i8
  store i8 %1678, i8* %33, align 1
  %1679 = lshr i32 %1655, 31
  %1680 = lshr i32 %1660, 31
  %1681 = xor i32 %1680, %1679
  %1682 = xor i32 %1677, %1679
  %1683 = add nuw nsw i32 %1682, %1681
  %1684 = icmp eq i32 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %39, align 1
  %1686 = add i64 %1492, 9
  store i64 %1686, i64* %3, align 8
  %1687 = load i32, i32* %1659, align 4
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RCX.i963, align 8
  %1689 = add i64 %1476, -32
  %1690 = add i64 %1492, 12
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = sub i32 %1687, %1692
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RCX.i963, align 8
  %1695 = lshr i32 %1693, 31
  %1696 = sub i32 %1661, %1693
  %1697 = icmp ult i32 %1661, %1693
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %14, align 1
  %1699 = and i32 %1696, 255
  %1700 = tail call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  store i8 %1703, i8* %21, align 1
  %1704 = xor i32 %1693, %1661
  %1705 = xor i32 %1704, %1696
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %27, align 1
  %1709 = icmp eq i32 %1696, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %30, align 1
  %1711 = lshr i32 %1696, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %33, align 1
  %1713 = xor i32 %1695, %1677
  %1714 = xor i32 %1711, %1677
  %1715 = add nuw nsw i32 %1714, %1713
  %1716 = icmp eq i32 %1715, 2
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %39, align 1
  %1718 = icmp ne i8 %1712, 0
  %1719 = xor i1 %1718, %1716
  %.v144 = select i1 %1719, i64 20, i64 37
  %1720 = add i64 %1492, %.v144
  store i64 %1720, i64* %3, align 8
  %1721 = load i64, i64* %RBP.i, align 8
  br i1 %1719, label %block_403dc4, label %block_.L_403dd5

block_403dc4:                                     ; preds = %block_.L_403db0
  %1722 = add i64 %1721, -60
  %1723 = add i64 %1720, 3
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %RAX.i926, align 8
  %1727 = add i64 %1721, -40
  %1728 = add i64 %1720, 6
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = sub i32 %1725, %1730
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RAX.i926, align 8
  %1733 = icmp ult i32 %1725, %1730
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = and i32 %1731, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  %1740 = xor i32 %1730, %1725
  %1741 = xor i32 %1740, %1731
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  store i8 %1744, i8* %27, align 1
  %1745 = icmp eq i32 %1731, 0
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %30, align 1
  %1747 = lshr i32 %1731, 31
  %1748 = trunc i32 %1747 to i8
  store i8 %1748, i8* %33, align 1
  %1749 = lshr i32 %1725, 31
  %1750 = lshr i32 %1730, 31
  %1751 = xor i32 %1750, %1749
  %1752 = xor i32 %1747, %1749
  %1753 = add nuw nsw i32 %1752, %1751
  %1754 = icmp eq i32 %1753, 2
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %39, align 1
  %1756 = add i64 %1721, -936
  %1757 = add i64 %1720, 12
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  store i32 %1731, i32* %1758, align 4
  %1759 = load i64, i64* %3, align 8
  %1760 = add i64 %1759, 17
  store i64 %1760, i64* %3, align 8
  br label %block_.L_403de1

block_.L_403dd5:                                  ; preds = %block_.L_403db0
  %1761 = add i64 %1721, -40
  %1762 = add i64 %1720, 3
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RAX.i926, align 8
  %1766 = add i64 %1721, -32
  %1767 = add i64 %1720, 6
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = sub i32 %1764, %1769
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RAX.i926, align 8
  %1772 = icmp ult i32 %1764, %1769
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1770, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1769, %1764
  %1780 = xor i32 %1779, %1770
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %27, align 1
  %1784 = icmp eq i32 %1770, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %30, align 1
  %1786 = lshr i32 %1770, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %33, align 1
  %1788 = lshr i32 %1764, 31
  %1789 = lshr i32 %1769, 31
  %1790 = xor i32 %1789, %1788
  %1791 = xor i32 %1786, %1788
  %1792 = add nuw nsw i32 %1791, %1790
  %1793 = icmp eq i32 %1792, 2
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %39, align 1
  %1795 = add i64 %1721, -936
  %1796 = add i64 %1720, 12
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  store i32 %1770, i32* %1797, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_403de1

block_.L_403de1:                                  ; preds = %block_.L_403dd5, %block_403dc4
  %1798 = phi i64 [ %.pre130, %block_.L_403dd5 ], [ %1760, %block_403dc4 ]
  %1799 = load i64, i64* %RBP.i, align 8
  %1800 = add i64 %1799, -936
  %1801 = add i64 %1798, 6
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i926, align 8
  %1805 = add i64 %1799, -48
  %1806 = add i64 %1798, 9
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  store i32 %1803, i32* %1807, align 4
  %1808 = load i64, i64* %RBP.i, align 8
  %1809 = add i64 %1808, -28
  %1810 = load i64, i64* %3, align 8
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1809 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = zext i32 %1813 to i64
  store i64 %1814, i64* %RAX.i926, align 8
  %1815 = add i64 %1808, -912
  %1816 = add i64 %1810, 9
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  store i32 %1813, i32* %1817, align 4
  %1818 = load i64, i64* %RBP.i, align 8
  %1819 = add i64 %1818, -60
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RAX.i926, align 8
  %1825 = add i64 %1818, -48
  %1826 = add i64 %1820, 6
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = sub i32 %1823, %1828
  %1830 = lshr i32 %1829, 31
  %1831 = add i32 %1829, 1
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RAX.i926, align 8
  %1833 = icmp eq i32 %1829, -1
  %1834 = icmp eq i32 %1831, 0
  %1835 = or i1 %1833, %1834
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %14, align 1
  %1837 = and i32 %1831, 255
  %1838 = tail call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  store i8 %1841, i8* %21, align 1
  %1842 = xor i32 %1831, %1829
  %1843 = lshr i32 %1842, 4
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  store i8 %1845, i8* %27, align 1
  %1846 = zext i1 %1834 to i8
  store i8 %1846, i8* %30, align 1
  %1847 = lshr i32 %1831, 31
  %1848 = trunc i32 %1847 to i8
  store i8 %1848, i8* %33, align 1
  %1849 = xor i32 %1847, %1830
  %1850 = add nuw nsw i32 %1849, %1847
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %39, align 1
  %1853 = add i64 %1818, -916
  %1854 = add i64 %1820, 15
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i32*
  store i32 %1831, i32* %1855, align 4
  %1856 = load i64, i64* %RBP.i, align 8
  %1857 = add i64 %1856, -48
  %1858 = load i64, i64* %3, align 8
  %1859 = add i64 %1858, 3
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1857 to i32*
  %1861 = load i32, i32* %1860, align 4
  %1862 = zext i32 %1861 to i64
  store i64 %1862, i64* %RAX.i926, align 8
  %1863 = add i64 %1856, -920
  %1864 = add i64 %1858, 9
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  store i32 %1861, i32* %1865, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_403e0b

block_.L_403e0b:                                  ; preds = %block_403e18, %block_.L_403de1
  %1866 = phi i64 [ %2042, %block_403e18 ], [ %.pre131, %block_.L_403de1 ]
  %1867 = load i64, i64* %RBP.i, align 8
  %1868 = add i64 %1867, -920
  %1869 = add i64 %1866, 7
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  store i8 0, i8* %14, align 1
  %1872 = and i32 %1871, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872)
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1877 = icmp eq i32 %1871, 0
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %30, align 1
  %1879 = lshr i32 %1871, 31
  %1880 = trunc i32 %1879 to i8
  store i8 %1880, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1881 = icmp ne i8 %1880, 0
  %1882 = or i1 %1877, %1881
  %.v145 = select i1 %1882, i64 131, i64 13
  %1883 = add i64 %1866, %.v145
  store i64 %1883, i64* %3, align 8
  br i1 %1882, label %block_.L_403e8e, label %block_403e18

block_403e18:                                     ; preds = %block_.L_403e0b
  %1884 = add i64 %1867, -8
  %1885 = add i64 %1883, 4
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i64*
  %1887 = load i64, i64* %1886, align 8
  store i64 %1887, i64* %RAX.i926, align 8
  %1888 = add i64 %1867, -912
  %1889 = add i64 %1883, 11
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i32*
  %1891 = load i32, i32* %1890, align 4
  %1892 = sext i32 %1891 to i64
  store i64 %1892, i64* %RCX.i963, align 8
  %1893 = shl nsw i64 %1892, 2
  %1894 = add i64 %1893, %1887
  %1895 = add i64 %1883, 14
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RDX.i884, align 8
  %1899 = add i64 %1867, -924
  %1900 = add i64 %1883, 20
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  store i32 %1897, i32* %1901, align 4
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -8
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906, align 8
  store i64 %1907, i64* %RAX.i926, align 8
  %1908 = add i64 %1902, -916
  %1909 = add i64 %1904, 11
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = sext i32 %1911 to i64
  store i64 %1912, i64* %RCX.i963, align 8
  %1913 = shl nsw i64 %1912, 2
  %1914 = add i64 %1913, %1907
  %1915 = add i64 %1904, 14
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RDX.i884, align 8
  %1919 = add i64 %1904, 18
  store i64 %1919, i64* %3, align 8
  %1920 = load i64, i64* %1906, align 8
  store i64 %1920, i64* %RAX.i926, align 8
  %1921 = add i64 %1902, -912
  %1922 = add i64 %1904, 25
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = sext i32 %1924 to i64
  store i64 %1925, i64* %RCX.i963, align 8
  %1926 = shl nsw i64 %1925, 2
  %1927 = add i64 %1926, %1920
  %1928 = add i64 %1904, 28
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  store i32 %1917, i32* %1929, align 4
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -924
  %1932 = load i64, i64* %3, align 8
  %1933 = add i64 %1932, 6
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1931 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RDX.i884, align 8
  %1937 = add i64 %1930, -8
  %1938 = add i64 %1932, 10
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i64*
  %1940 = load i64, i64* %1939, align 8
  store i64 %1940, i64* %RAX.i926, align 8
  %1941 = add i64 %1930, -916
  %1942 = add i64 %1932, 17
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sext i32 %1944 to i64
  store i64 %1945, i64* %RCX.i963, align 8
  %1946 = shl nsw i64 %1945, 2
  %1947 = add i64 %1946, %1940
  %1948 = add i64 %1932, 20
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  store i32 %1935, i32* %1949, align 4
  %1950 = load i64, i64* %RBP.i, align 8
  %1951 = add i64 %1950, -912
  %1952 = load i64, i64* %3, align 8
  %1953 = add i64 %1952, 6
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1951 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = add i32 %1955, 1
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %RDX.i884, align 8
  %1958 = icmp eq i32 %1955, -1
  %1959 = icmp eq i32 %1956, 0
  %1960 = or i1 %1958, %1959
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %14, align 1
  %1962 = and i32 %1956, 255
  %1963 = tail call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  store i8 %1966, i8* %21, align 1
  %1967 = xor i32 %1956, %1955
  %1968 = lshr i32 %1967, 4
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  store i8 %1970, i8* %27, align 1
  %1971 = zext i1 %1959 to i8
  store i8 %1971, i8* %30, align 1
  %1972 = lshr i32 %1956, 31
  %1973 = trunc i32 %1972 to i8
  store i8 %1973, i8* %33, align 1
  %1974 = lshr i32 %1955, 31
  %1975 = xor i32 %1972, %1974
  %1976 = add nuw nsw i32 %1975, %1972
  %1977 = icmp eq i32 %1976, 2
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %39, align 1
  %1979 = add i64 %1952, 15
  store i64 %1979, i64* %3, align 8
  store i32 %1956, i32* %1954, align 4
  %1980 = load i64, i64* %RBP.i, align 8
  %1981 = add i64 %1980, -916
  %1982 = load i64, i64* %3, align 8
  %1983 = add i64 %1982, 6
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1981 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = add i32 %1985, 1
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RDX.i884, align 8
  %1988 = icmp eq i32 %1985, -1
  %1989 = icmp eq i32 %1986, 0
  %1990 = or i1 %1988, %1989
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1986, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1986, %1985
  %1998 = lshr i32 %1997, 4
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %27, align 1
  %2001 = zext i1 %1989 to i8
  store i8 %2001, i8* %30, align 1
  %2002 = lshr i32 %1986, 31
  %2003 = trunc i32 %2002 to i8
  store i8 %2003, i8* %33, align 1
  %2004 = lshr i32 %1985, 31
  %2005 = xor i32 %2002, %2004
  %2006 = add nuw nsw i32 %2005, %2002
  %2007 = icmp eq i32 %2006, 2
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %39, align 1
  %2009 = add i64 %1982, 15
  store i64 %2009, i64* %3, align 8
  store i32 %1986, i32* %1984, align 4
  %2010 = load i64, i64* %RBP.i, align 8
  %2011 = add i64 %2010, -920
  %2012 = load i64, i64* %3, align 8
  %2013 = add i64 %2012, 6
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2011 to i32*
  %2015 = load i32, i32* %2014, align 4
  %2016 = add i32 %2015, -1
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RDX.i884, align 8
  %2018 = icmp ne i32 %2015, 0
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %14, align 1
  %2020 = and i32 %2016, 255
  %2021 = tail call i32 @llvm.ctpop.i32(i32 %2020)
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  %2024 = xor i8 %2023, 1
  store i8 %2024, i8* %21, align 1
  %2025 = xor i32 %2015, 16
  %2026 = xor i32 %2025, %2016
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %27, align 1
  %2030 = icmp eq i32 %2016, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %30, align 1
  %2032 = lshr i32 %2016, 31
  %2033 = trunc i32 %2032 to i8
  store i8 %2033, i8* %33, align 1
  %2034 = lshr i32 %2015, 31
  %2035 = xor i32 %2032, %2034
  %2036 = xor i32 %2032, 1
  %2037 = add nuw nsw i32 %2035, %2036
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %39, align 1
  %2040 = add i64 %2012, 15
  store i64 %2040, i64* %3, align 8
  store i32 %2016, i32* %2014, align 4
  %2041 = load i64, i64* %3, align 8
  %2042 = add i64 %2041, -126
  store i64 %2042, i64* %3, align 8
  br label %block_.L_403e0b

block_.L_403e8e:                                  ; preds = %block_.L_403e0b
  %2043 = add i64 %1867, -56
  %2044 = add i64 %1883, 3
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %RAX.i926, align 8
  %2048 = add i64 %1867, -28
  %2049 = add i64 %1883, 6
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = add i32 %2051, %2046
  %2053 = zext i32 %2052 to i64
  store i64 %2053, i64* %RAX.i926, align 8
  %2054 = icmp ult i32 %2052, %2046
  %2055 = icmp ult i32 %2052, %2051
  %2056 = or i1 %2054, %2055
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %14, align 1
  %2058 = and i32 %2052, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %21, align 1
  %2063 = xor i32 %2051, %2046
  %2064 = xor i32 %2063, %2052
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %27, align 1
  %2068 = icmp eq i32 %2052, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %30, align 1
  %2070 = lshr i32 %2052, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %33, align 1
  %2072 = lshr i32 %2046, 31
  %2073 = lshr i32 %2051, 31
  %2074 = xor i32 %2070, %2072
  %2075 = xor i32 %2070, %2073
  %2076 = add nuw nsw i32 %2074, %2075
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %39, align 1
  %2079 = add i64 %1867, -36
  %2080 = add i64 %1883, 9
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  %2082 = load i32, i32* %2081, align 4
  %2083 = sub i32 %2052, %2082
  %2084 = icmp eq i32 %2083, 0
  %2085 = zext i1 %2084 to i8
  %2086 = lshr i32 %2083, 31
  %2087 = add i32 %2083, -1
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RAX.i926, align 8
  store i8 %2085, i8* %14, align 1
  %2089 = and i32 %2087, 255
  %2090 = tail call i32 @llvm.ctpop.i32(i32 %2089)
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  store i8 %2093, i8* %21, align 1
  %2094 = xor i32 %2087, %2083
  %2095 = lshr i32 %2094, 4
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  store i8 %2097, i8* %27, align 1
  %2098 = icmp eq i32 %2087, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = lshr i32 %2087, 31
  %2101 = trunc i32 %2100 to i8
  store i8 %2101, i8* %33, align 1
  %2102 = xor i32 %2100, %2086
  %2103 = add nuw nsw i32 %2102, %2086
  %2104 = icmp eq i32 %2103, 2
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %39, align 1
  %2106 = load i64, i64* %RBP.i, align 8
  %2107 = add i64 %2106, -44
  %2108 = add i64 %1883, 15
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i32*
  store i32 %2087, i32* %2109, align 4
  %2110 = load i64, i64* %RBP.i, align 8
  %2111 = add i64 %2110, -60
  %2112 = load i64, i64* %3, align 8
  %2113 = add i64 %2112, 3
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2111 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RAX.i926, align 8
  %2117 = add i64 %2110, -40
  %2118 = add i64 %2112, 6
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i32*
  %2120 = load i32, i32* %2119, align 4
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RCX.i963, align 8
  %2122 = add i64 %2110, -32
  %2123 = add i64 %2112, 9
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = sub i32 %2120, %2125
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RCX.i963, align 8
  %2128 = sub i32 %2115, %2126
  %2129 = lshr i32 %2128, 31
  %2130 = add i32 %2128, 1
  %2131 = zext i32 %2130 to i64
  store i64 %2131, i64* %RAX.i926, align 8
  %2132 = icmp eq i32 %2128, -1
  %2133 = icmp eq i32 %2130, 0
  %2134 = or i1 %2132, %2133
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %14, align 1
  %2136 = and i32 %2130, 255
  %2137 = tail call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  store i8 %2140, i8* %21, align 1
  %2141 = xor i32 %2130, %2128
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %27, align 1
  %2145 = zext i1 %2133 to i8
  store i8 %2145, i8* %30, align 1
  %2146 = lshr i32 %2130, 31
  %2147 = trunc i32 %2146 to i8
  store i8 %2147, i8* %33, align 1
  %2148 = xor i32 %2146, %2129
  %2149 = add nuw nsw i32 %2148, %2146
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %39, align 1
  %2152 = load i64, i64* %RBP.i, align 8
  %2153 = add i64 %2152, -48
  %2154 = add i64 %2112, 17
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  store i32 %2130, i32* %2155, align 4
  %2156 = load i64, i64* %RBP.i, align 8
  %2157 = add i64 %2156, -44
  %2158 = load i64, i64* %3, align 8
  %2159 = add i64 %2158, 3
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RAX.i926, align 8
  %2163 = add i64 %2156, -56
  %2164 = add i64 %2158, 6
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  %2166 = load i32, i32* %2165, align 4
  %2167 = sub i32 %2161, %2166
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RAX.i926, align 8
  %2169 = icmp ult i32 %2161, %2166
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %14, align 1
  %2171 = and i32 %2167, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %21, align 1
  %2176 = xor i32 %2166, %2161
  %2177 = xor i32 %2176, %2167
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %27, align 1
  %2181 = icmp eq i32 %2167, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %30, align 1
  %2183 = lshr i32 %2167, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %33, align 1
  %2185 = lshr i32 %2161, 31
  %2186 = lshr i32 %2166, 31
  %2187 = xor i32 %2186, %2185
  %2188 = xor i32 %2183, %2185
  %2189 = add nuw nsw i32 %2188, %2187
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %39, align 1
  %2192 = add i64 %2156, -60
  %2193 = add i64 %2158, 9
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i963, align 8
  %2197 = add i64 %2156, -48
  %2198 = add i64 %2158, 12
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = sub i32 %2195, %2200
  %2202 = zext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i963, align 8
  %2203 = lshr i32 %2201, 31
  %2204 = sub i32 %2167, %2201
  %2205 = icmp ult i32 %2167, %2201
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %14, align 1
  %2207 = and i32 %2204, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  %2212 = xor i32 %2201, %2167
  %2213 = xor i32 %2212, %2204
  %2214 = lshr i32 %2213, 4
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %27, align 1
  %2217 = icmp eq i32 %2204, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %30, align 1
  %2219 = lshr i32 %2204, 31
  %2220 = trunc i32 %2219 to i8
  store i8 %2220, i8* %33, align 1
  %2221 = xor i32 %2203, %2183
  %2222 = xor i32 %2219, %2183
  %2223 = add nuw nsw i32 %2222, %2221
  %2224 = icmp eq i32 %2223, 2
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %39, align 1
  %2226 = icmp ne i8 %2220, 0
  %2227 = xor i1 %2226, %2224
  %2228 = or i1 %2217, %2227
  %.v146 = select i1 %2228, i64 99, i64 20
  %2229 = add i64 %2158, %.v146
  store i64 %2229, i64* %3, align 8
  %2230 = load i64, i64* %RBP.i, align 8
  br i1 %2228, label %block_.L_403f11, label %block_403ec2

block_403ec2:                                     ; preds = %block_.L_403e8e
  %2231 = add i64 %2230, -56
  %2232 = add i64 %2229, 3
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i926, align 8
  %2236 = add i64 %2230, -52
  %2237 = add i64 %2229, 7
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i32*
  %2239 = load i32, i32* %2238, align 4
  %2240 = sext i32 %2239 to i64
  store i64 %2240, i64* %RCX.i963, align 8
  %2241 = shl nsw i64 %2240, 2
  %2242 = add i64 %2230, -480
  %2243 = add i64 %2242, %2241
  %2244 = add i64 %2229, 14
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  store i32 %2234, i32* %2245, align 4
  %2246 = load i64, i64* %RBP.i, align 8
  %2247 = add i64 %2246, -44
  %2248 = load i64, i64* %3, align 8
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RAX.i926, align 8
  %2253 = add i64 %2246, -52
  %2254 = add i64 %2248, 7
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i963, align 8
  %2258 = shl nsw i64 %2257, 2
  %2259 = add i64 %2246, -880
  %2260 = add i64 %2259, %2258
  %2261 = add i64 %2248, 14
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  store i32 %2251, i32* %2262, align 4
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -52
  %2265 = load i64, i64* %3, align 8
  %2266 = add i64 %2265, 3
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2264 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = add i32 %2268, 1
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RAX.i926, align 8
  %2271 = icmp eq i32 %2268, -1
  %2272 = icmp eq i32 %2269, 0
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = and i32 %2269, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %21, align 1
  %2280 = xor i32 %2269, %2268
  %2281 = lshr i32 %2280, 4
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  store i8 %2283, i8* %27, align 1
  %2284 = zext i1 %2272 to i8
  store i8 %2284, i8* %30, align 1
  %2285 = lshr i32 %2269, 31
  %2286 = trunc i32 %2285 to i8
  store i8 %2286, i8* %33, align 1
  %2287 = lshr i32 %2268, 31
  %2288 = xor i32 %2285, %2287
  %2289 = add nuw nsw i32 %2288, %2285
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %39, align 1
  %2292 = add i64 %2265, 9
  store i64 %2292, i64* %3, align 8
  store i32 %2269, i32* %2267, align 4
  %2293 = load i64, i64* %RBP.i, align 8
  %2294 = add i64 %2293, -48
  %2295 = load i64, i64* %3, align 8
  %2296 = add i64 %2295, 3
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2294 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RAX.i926, align 8
  %2300 = add i64 %2293, -52
  %2301 = add i64 %2295, 7
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RCX.i963, align 8
  %2305 = shl nsw i64 %2304, 2
  %2306 = add i64 %2293, -480
  %2307 = add i64 %2306, %2305
  %2308 = add i64 %2295, 14
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2307 to i32*
  store i32 %2298, i32* %2309, align 4
  %2310 = load i64, i64* %RBP.i, align 8
  %2311 = add i64 %2310, -60
  %2312 = load i64, i64* %3, align 8
  %2313 = add i64 %2312, 3
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2311 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RAX.i926, align 8
  %2317 = add i64 %2310, -52
  %2318 = add i64 %2312, 7
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = sext i32 %2320 to i64
  store i64 %2321, i64* %RCX.i963, align 8
  %2322 = shl nsw i64 %2321, 2
  %2323 = add i64 %2310, -880
  %2324 = add i64 %2323, %2322
  %2325 = add i64 %2312, 14
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  store i32 %2315, i32* %2326, align 4
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -52
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 3
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = add i32 %2332, 1
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RAX.i926, align 8
  %2335 = icmp eq i32 %2332, -1
  %2336 = icmp eq i32 %2333, 0
  %2337 = or i1 %2335, %2336
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2333, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2333, %2332
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %27, align 1
  %2348 = zext i1 %2336 to i8
  store i8 %2348, i8* %30, align 1
  %2349 = lshr i32 %2333, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %33, align 1
  %2351 = lshr i32 %2332, 31
  %2352 = xor i32 %2349, %2351
  %2353 = add nuw nsw i32 %2352, %2349
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %39, align 1
  %2356 = add i64 %2329, 9
  store i64 %2356, i64* %3, align 8
  store i32 %2333, i32* %2331, align 4
  %2357 = load i64, i64* %3, align 8
  %2358 = add i64 %2357, 79
  store i64 %2358, i64* %3, align 8
  br label %block_.L_403f5b

block_.L_403f11:                                  ; preds = %block_.L_403e8e
  %2359 = add i64 %2230, -48
  %2360 = add i64 %2229, 3
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RAX.i926, align 8
  %2364 = add i64 %2230, -52
  %2365 = add i64 %2229, 7
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = sext i32 %2367 to i64
  store i64 %2368, i64* %RCX.i963, align 8
  %2369 = shl nsw i64 %2368, 2
  %2370 = add i64 %2230, -480
  %2371 = add i64 %2370, %2369
  %2372 = add i64 %2229, 14
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  store i32 %2362, i32* %2373, align 4
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -60
  %2376 = load i64, i64* %3, align 8
  %2377 = add i64 %2376, 3
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2375 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = zext i32 %2379 to i64
  store i64 %2380, i64* %RAX.i926, align 8
  %2381 = add i64 %2374, -52
  %2382 = add i64 %2376, 7
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = sext i32 %2384 to i64
  store i64 %2385, i64* %RCX.i963, align 8
  %2386 = shl nsw i64 %2385, 2
  %2387 = add i64 %2374, -880
  %2388 = add i64 %2387, %2386
  %2389 = add i64 %2376, 14
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i32*
  store i32 %2379, i32* %2390, align 4
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -52
  %2393 = load i64, i64* %3, align 8
  %2394 = add i64 %2393, 3
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2392 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = add i32 %2396, 1
  %2398 = zext i32 %2397 to i64
  store i64 %2398, i64* %RAX.i926, align 8
  %2399 = icmp eq i32 %2396, -1
  %2400 = icmp eq i32 %2397, 0
  %2401 = or i1 %2399, %2400
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %14, align 1
  %2403 = and i32 %2397, 255
  %2404 = tail call i32 @llvm.ctpop.i32(i32 %2403)
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  store i8 %2407, i8* %21, align 1
  %2408 = xor i32 %2397, %2396
  %2409 = lshr i32 %2408, 4
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %27, align 1
  %2412 = zext i1 %2400 to i8
  store i8 %2412, i8* %30, align 1
  %2413 = lshr i32 %2397, 31
  %2414 = trunc i32 %2413 to i8
  store i8 %2414, i8* %33, align 1
  %2415 = lshr i32 %2396, 31
  %2416 = xor i32 %2413, %2415
  %2417 = add nuw nsw i32 %2416, %2413
  %2418 = icmp eq i32 %2417, 2
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %39, align 1
  %2420 = add i64 %2393, 9
  store i64 %2420, i64* %3, align 8
  store i32 %2397, i32* %2395, align 4
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -56
  %2423 = load i64, i64* %3, align 8
  %2424 = add i64 %2423, 3
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2422 to i32*
  %2426 = load i32, i32* %2425, align 4
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RAX.i926, align 8
  %2428 = add i64 %2421, -52
  %2429 = add i64 %2423, 7
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = sext i32 %2431 to i64
  store i64 %2432, i64* %RCX.i963, align 8
  %2433 = shl nsw i64 %2432, 2
  %2434 = add i64 %2421, -480
  %2435 = add i64 %2434, %2433
  %2436 = add i64 %2423, 14
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  store i32 %2426, i32* %2437, align 4
  %2438 = load i64, i64* %RBP.i, align 8
  %2439 = add i64 %2438, -44
  %2440 = load i64, i64* %3, align 8
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2439 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i926, align 8
  %2445 = add i64 %2438, -52
  %2446 = add i64 %2440, 7
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = sext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i963, align 8
  %2450 = shl nsw i64 %2449, 2
  %2451 = add i64 %2438, -880
  %2452 = add i64 %2451, %2450
  %2453 = add i64 %2440, 14
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i32*
  store i32 %2443, i32* %2454, align 4
  %2455 = load i64, i64* %RBP.i, align 8
  %2456 = add i64 %2455, -52
  %2457 = load i64, i64* %3, align 8
  %2458 = add i64 %2457, 3
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = add i32 %2460, 1
  %2462 = zext i32 %2461 to i64
  store i64 %2462, i64* %RAX.i926, align 8
  %2463 = icmp eq i32 %2460, -1
  %2464 = icmp eq i32 %2461, 0
  %2465 = or i1 %2463, %2464
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %14, align 1
  %2467 = and i32 %2461, 255
  %2468 = tail call i32 @llvm.ctpop.i32(i32 %2467)
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = xor i8 %2470, 1
  store i8 %2471, i8* %21, align 1
  %2472 = xor i32 %2461, %2460
  %2473 = lshr i32 %2472, 4
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  store i8 %2475, i8* %27, align 1
  %2476 = zext i1 %2464 to i8
  store i8 %2476, i8* %30, align 1
  %2477 = lshr i32 %2461, 31
  %2478 = trunc i32 %2477 to i8
  store i8 %2478, i8* %33, align 1
  %2479 = lshr i32 %2460, 31
  %2480 = xor i32 %2477, %2479
  %2481 = add nuw nsw i32 %2480, %2477
  %2482 = icmp eq i32 %2481, 2
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %39, align 1
  %2484 = add i64 %2457, 9
  store i64 %2484, i64* %3, align 8
  store i32 %2461, i32* %2459, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_403f5b

block_.L_403f5b:                                  ; preds = %block_.L_403f11, %block_403ec2
  %2485 = phi i64 [ %.pre132, %block_.L_403f11 ], [ %2358, %block_403ec2 ]
  %2486 = add i64 %2485, -1375
  br label %block_.L_4039fc.backedge

block_.L_403f60:                                  ; preds = %block_.L_4039fc
  %2487 = load i64, i64* %6, align 8
  %2488 = add i64 %2487, 944
  store i64 %2488, i64* %6, align 8
  %2489 = icmp ugt i64 %2487, -945
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %14, align 1
  %2491 = trunc i64 %2488 to i32
  %2492 = and i32 %2491, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %21, align 1
  %2497 = xor i64 %2487, 16
  %2498 = xor i64 %2497, %2488
  %2499 = lshr i64 %2498, 4
  %2500 = trunc i64 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %27, align 1
  %2502 = icmp eq i64 %2488, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %30, align 1
  %2504 = lshr i64 %2488, 63
  %2505 = trunc i64 %2504 to i8
  store i8 %2505, i8* %33, align 1
  %2506 = lshr i64 %2487, 63
  %2507 = xor i64 %2504, %2506
  %2508 = add nuw nsw i64 %2507, %2504
  %2509 = icmp eq i64 %2508, 2
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %39, align 1
  %2511 = add i64 %156, 8
  store i64 %2511, i64* %3, align 8
  %2512 = add i64 %2487, 952
  %2513 = inttoptr i64 %2488 to i64*
  %2514 = load i64, i64* %2513, align 8
  store i64 %2514, i64* %RBP.i, align 8
  store i64 %2512, i64* %6, align 8
  %2515 = add i64 %156, 9
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2512 to i64*
  %2517 = load i64, i64* %2516, align 8
  store i64 %2517, i64* %3, align 8
  %2518 = add i64 %2487, 960
  store i64 %2518, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x3b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -944
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 944
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -480
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__ecx__MINUS0x370__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -880
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jle_.L_403f60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
define %struct.Memory* @routine_jl_.L_403a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3ec___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1004, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl_MINUS0x1e0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -480
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x370__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -880
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -10
  %8 = icmp ult i32 %4, 10
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
define %struct.Memory* @routine_jge_.L_403a66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_callq_.fallbackSimpleSort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4039fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x1dc5__MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 7621
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 32731945762816
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x7fff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 32767
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %and.shrunk = trunc i64 %3 to i32
  %8 = and i32 %and.shrunk, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -928
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x3a0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jne_.L_403abc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jne_.L_403aea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_movl___rcx__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_403b1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jle_.L_403b2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403bbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_subl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_403ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__edx__MINUS0x374__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x374__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -884
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_403bb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_403bd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403c64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_403c47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__edx__MINUS0x378__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -888
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x378__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -888
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_403c56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jle_.L_403c75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x37c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -892
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x37c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -892
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_403cd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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
define %struct.Memory* @routine_jge_.L_403cfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403d06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -932
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -896
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl__eax__MINUS0x384__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -900
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -904
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
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
define %struct.Memory* @routine_jle_.L_403db0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x380__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -908
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x384__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -900
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -908
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x380__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -896
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x384__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -900
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x384__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -900
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x388__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -904
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403d2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_jge_.L_403dd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -936
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403de1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_MINUS0x3a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -936
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -920
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
define %struct.Memory* @routine_jle_.L_403e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x390__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -912
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x39c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -924
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x394__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -916
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x39c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -924
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x390__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -912
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x394__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -916
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x394__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x398__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -920
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403e0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_jle_.L_403f11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1e0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -480
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -880
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403f5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 944
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -945
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
