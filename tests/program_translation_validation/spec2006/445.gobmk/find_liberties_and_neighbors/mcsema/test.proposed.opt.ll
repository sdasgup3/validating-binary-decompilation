; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @find_liberties_and_neighbors(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i942 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 3, i64* %RCX.i942, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i, align 4
  %15 = add i64 %10, 21
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RDX.i937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 744
  store i64 %24, i64* %RDX.i937, align 8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = lshr i64 %24, 63
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i933 = getelementptr inbounds %union.anon, %union.anon* %32, i64 0, i32 0
  %33 = load i64, i64* %RAX.i944, align 8
  %34 = add i64 %24, %33
  store i64 %34, i64* %RSI.i933, align 8
  %35 = icmp ult i64 %34, %33
  %36 = icmp ult i64 %34, %24
  %37 = or i1 %35, %36
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %25, align 1
  %39 = trunc i64 %34 to i32
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.ctpop.i32(i32 %40)
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  store i8 %44, i8* %26, align 1
  %45 = xor i64 %24, %33
  %46 = xor i64 %45, %34
  %47 = lshr i64 %46, 4
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 1
  store i8 %49, i8* %27, align 1
  %50 = icmp eq i64 %34, 0
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %28, align 1
  %52 = lshr i64 %34, 63
  %53 = trunc i64 %52 to i8
  store i8 %53, i8* %30, align 1
  %54 = lshr i64 %33, 63
  %55 = xor i64 %52, %54
  %56 = xor i64 %52, %29
  %57 = add nuw nsw i64 %55, %56
  %58 = icmp eq i64 %57, 2
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %31, align 1
  %60 = load i64, i64* %RCX.i942, align 8
  %61 = inttoptr i64 %34 to i32*
  %62 = add i64 %19, 19
  store i64 %62, i64* %3, align 8
  %63 = trunc i64 %60 to i32
  %64 = load i32, i32* %61, align 4
  %65 = sub i32 %63, %64
  %ECX.i923 = bitcast %union.anon* %11 to i32*
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -12
  %68 = add i64 %19, 22
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  store i32 %65, i32* %69, align 4
  %70 = load i64, i64* %3, align 8
  %71 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %72 = add i32 %71, 1
  store i32 %72, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %73 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RCX.i942, align 8
  %76 = icmp eq i32 %73, -1
  %77 = icmp eq i32 %74, 0
  %78 = or i1 %76, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %25, align 1
  %80 = and i32 %74, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %26, align 1
  %85 = xor i32 %74, %73
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %27, align 1
  %89 = zext i1 %77 to i8
  store i8 %89, i8* %28, align 1
  %90 = lshr i32 %74, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %30, align 1
  %92 = lshr i32 %73, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %90
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %31, align 1
  store i32 %74, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -4
  %99 = add i64 %70, 38
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, 744
  store i64 %103, i64* %RDX.i937, align 8
  %104 = lshr i64 %103, 63
  %105 = load i64, i64* %RAX.i944, align 8
  %106 = add i64 %103, %105
  store i64 %106, i64* %RAX.i944, align 8
  %107 = icmp ult i64 %106, %105
  %108 = icmp ult i64 %106, %103
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %25, align 1
  %111 = trunc i64 %106 to i32
  %112 = and i32 %111, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %26, align 1
  %117 = xor i64 %103, %105
  %118 = xor i64 %117, %106
  %119 = lshr i64 %118, 4
  %120 = trunc i64 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i64 %106, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %28, align 1
  %124 = lshr i64 %106, 63
  %125 = trunc i64 %124 to i8
  store i8 %125, i8* %30, align 1
  %126 = lshr i64 %105, 63
  %127 = xor i64 %124, %126
  %128 = xor i64 %124, %104
  %129 = add nuw nsw i64 %127, %128
  %130 = icmp eq i64 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %31, align 1
  %132 = add i64 %106, 8
  %133 = add i64 %70, 51
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RCX.i942, align 8
  %137 = add i64 %97, -8
  %138 = add i64 %70, 54
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 %135, i32* %139, align 4
  %RDI.i722 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i715 = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %union.anon, %union.anon* %140, i64 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %SIL.i9 = bitcast %union.anon* %32 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4084b2

block_.L_4084b2:                                  ; preds = %block_.L_408b46, %entry
  %143 = phi i64 [ %3122, %block_.L_408b46 ], [ %.pre, %entry ]
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -8
  %146 = add i64 %143, 3
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 20
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX.i944, align 8
  %151 = icmp ugt i32 %148, -21
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %25, align 1
  %153 = and i32 %149, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %26, align 1
  %158 = xor i32 %148, 16
  %159 = xor i32 %158, %149
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %27, align 1
  %163 = icmp eq i32 %149, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %28, align 1
  %165 = lshr i32 %149, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %30, align 1
  %167 = lshr i32 %148, 31
  %168 = xor i32 %165, %167
  %169 = add nuw nsw i32 %168, %165
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %31, align 1
  %172 = sext i32 %149 to i64
  store i64 %172, i64* %RCX.i942, align 8
  %173 = add nsw i64 %172, 12099168
  %174 = add i64 %143, 17
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i8*
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i64
  store i64 %177, i64* %RAX.i944, align 8
  %178 = zext i8 %176 to i32
  store i8 0, i8* %25, align 1
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %26, align 1
  store i8 0, i8* %27, align 1
  %183 = icmp eq i8 %176, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %28, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v = select i1 %183, i64 26, i64 210
  %185 = add i64 %143, %.v
  store i64 %185, i64* %3, align 8
  br i1 %183, label %block_4084cc, label %block_.L_408584

block_4084cc:                                     ; preds = %block_.L_4084b2
  %186 = add i64 %185, 3
  store i64 %186, i64* %3, align 8
  %187 = load i32, i32* %147, align 4
  %188 = add i32 %187, 20
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i944, align 8
  %190 = icmp ugt i32 %187, -21
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %25, align 1
  %192 = and i32 %188, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %26, align 1
  %197 = xor i32 %187, 16
  %198 = xor i32 %197, %188
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %27, align 1
  %202 = icmp eq i32 %188, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %28, align 1
  %204 = lshr i32 %188, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %30, align 1
  %206 = lshr i32 %187, 31
  %207 = xor i32 %204, %206
  %208 = add nuw nsw i32 %207, %204
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %31, align 1
  %211 = sext i32 %188 to i64
  store i64 %211, i64* %RCX.i942, align 8
  %212 = shl nsw i64 %211, 2
  %213 = add nsw i64 %212, 11185584
  %214 = add i64 %185, 16
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i944, align 8
  %218 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %219 = sub i32 %216, %218
  %220 = icmp ult i32 %216, %218
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %25, align 1
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %26, align 1
  %227 = xor i32 %218, %216
  %228 = xor i32 %227, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %27, align 1
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %28, align 1
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %30, align 1
  %236 = lshr i32 %216, 31
  %237 = lshr i32 %218, 31
  %238 = xor i32 %237, %236
  %239 = xor i32 %234, %236
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %31, align 1
  %.v50 = select i1 %232, i64 184, i64 29
  %243 = add i64 %185, %.v50
  store i64 %243, i64* %3, align 8
  br i1 %232, label %block_.L_408584, label %block_4084e9

block_4084e9:                                     ; preds = %block_4084cc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %244 = add i64 %144, -4
  %245 = add i64 %243, 19
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %248, 744
  store i64 %249, i64* %RCX.i942, align 8
  %250 = lshr i64 %249, 63
  %251 = add i64 %249, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %251, i64* %RAX.i944, align 8
  %252 = icmp ult i64 %251, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %253 = icmp ult i64 %251, %249
  %254 = or i1 %252, %253
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %25, align 1
  %256 = trunc i64 %251 to i32
  %257 = and i32 %256, 248
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %26, align 1
  %262 = xor i64 %249, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %263 = xor i64 %262, %251
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %27, align 1
  %267 = icmp eq i64 %251, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %28, align 1
  %269 = lshr i64 %251, 63
  %270 = trunc i64 %269 to i8
  store i8 %270, i8* %30, align 1
  %271 = xor i64 %269, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %272 = xor i64 %269, %250
  %273 = add nuw nsw i64 %271, %272
  %274 = icmp eq i64 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %31, align 1
  %276 = add i64 %249, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %277 = add i64 %243, 33
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = add i32 %279, -20
  %281 = icmp ult i32 %279, 20
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %25, align 1
  %283 = and i32 %280, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %26, align 1
  %288 = xor i32 %279, 16
  %289 = xor i32 %288, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %27, align 1
  %293 = icmp eq i32 %280, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %28, align 1
  %295 = lshr i32 %280, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %30, align 1
  %297 = lshr i32 %279, 31
  %298 = xor i32 %295, %297
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %31, align 1
  %302 = icmp ne i8 %296, 0
  %303 = xor i1 %302, %300
  %.v51 = select i1 %303, i64 39, i64 94
  %304 = add i64 %243, %.v51
  store i64 %304, i64* %3, align 8
  br i1 %303, label %block_408510, label %block_.L_408547

block_408510:                                     ; preds = %block_4084e9
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -8
  %307 = add i64 %304, 13
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, 20
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RCX.i942, align 8
  %312 = icmp ugt i32 %309, -21
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %25, align 1
  %314 = and i32 %310, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %26, align 1
  %319 = xor i32 %309, 16
  %320 = xor i32 %319, %310
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %27, align 1
  %324 = icmp eq i32 %310, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %28, align 1
  %326 = lshr i32 %310, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %30, align 1
  %328 = lshr i32 %309, 31
  %329 = xor i32 %326, %328
  %330 = add nuw nsw i32 %329, %326
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %31, align 1
  %333 = add i64 %305, -4
  %334 = add i64 %304, 20
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = mul nsw i64 %337, 744
  store i64 %338, i64* %RDX.i937, align 8
  %339 = lshr i64 %338, 63
  %340 = add i64 %338, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %340, i64* %RSI.i933, align 8
  %341 = icmp ult i64 %340, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %342 = icmp ult i64 %340, %338
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %25, align 1
  %345 = trunc i64 %340 to i32
  %346 = and i32 %345, 248
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346)
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %26, align 1
  %351 = xor i64 %338, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %352 = xor i64 %351, %340
  %353 = lshr i64 %352, 4
  %354 = trunc i64 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %27, align 1
  %356 = icmp eq i64 %340, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %28, align 1
  %358 = lshr i64 %340, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %30, align 1
  %360 = xor i64 %358, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %361 = xor i64 %358, %339
  %362 = add nuw nsw i64 %360, %361
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %31, align 1
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -4
  %367 = add i64 %304, 37
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 744
  store i64 %371, i64* %RDX.i937, align 8
  %372 = lshr i64 %371, 63
  %373 = load i64, i64* %RAX.i944, align 8
  %374 = add i64 %371, %373
  store i64 %374, i64* %RAX.i944, align 8
  %375 = icmp ult i64 %374, %373
  %376 = icmp ult i64 %374, %371
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %25, align 1
  %379 = trunc i64 %374 to i32
  %380 = and i32 %379, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %26, align 1
  %385 = xor i64 %371, %373
  %386 = xor i64 %385, %374
  %387 = lshr i64 %386, 4
  %388 = trunc i64 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %27, align 1
  %390 = icmp eq i64 %374, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %28, align 1
  %392 = lshr i64 %374, 63
  %393 = trunc i64 %392 to i8
  store i8 %393, i8* %30, align 1
  %394 = lshr i64 %373, 63
  %395 = xor i64 %392, %394
  %396 = xor i64 %392, %372
  %397 = add nuw nsw i64 %395, %396
  %398 = icmp eq i64 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %31, align 1
  %400 = add i64 %374, 12
  %401 = add i64 %304, 51
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %RAX.i944, align 8
  %405 = load i64, i64* %RSI.i933, align 8
  %406 = shl nsw i64 %404, 2
  %407 = add i64 %405, 16
  %408 = add i64 %407, %406
  %409 = load i32, i32* %ECX.i923, align 4
  %410 = add i64 %304, 55
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %408 to i32*
  store i32 %409, i32* %411, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_408547

block_.L_408547:                                  ; preds = %block_4084e9, %block_408510
  %412 = phi i64 [ %304, %block_4084e9 ], [ %.pre24, %block_408510 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -4
  %415 = add i64 %412, 14
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = mul nsw i64 %418, 744
  store i64 %419, i64* %RCX.i942, align 8
  %420 = lshr i64 %419, 63
  %421 = add i64 %419, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %421, i64* %RAX.i944, align 8
  %422 = icmp ult i64 %421, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %423 = icmp ult i64 %421, %419
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %25, align 1
  %426 = trunc i64 %421 to i32
  %427 = and i32 %426, 248
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %26, align 1
  %432 = xor i64 %419, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %433 = xor i64 %432, %421
  %434 = lshr i64 %433, 4
  %435 = trunc i64 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %27, align 1
  %437 = icmp eq i64 %421, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %28, align 1
  %439 = lshr i64 %421, 63
  %440 = trunc i64 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = xor i64 %439, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %442 = xor i64 %439, %420
  %443 = add nuw nsw i64 %441, %442
  %444 = icmp eq i64 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %31, align 1
  %446 = add i64 %419, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %447 = add i64 %412, 27
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = add i32 %449, 1
  %451 = icmp eq i32 %449, -1
  %452 = icmp eq i32 %450, 0
  %453 = or i1 %451, %452
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %25, align 1
  %455 = and i32 %450, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %26, align 1
  %460 = xor i32 %450, %449
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %27, align 1
  %464 = zext i1 %452 to i8
  store i8 %464, i8* %28, align 1
  %465 = lshr i32 %450, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %30, align 1
  %467 = lshr i32 %449, 31
  %468 = xor i32 %465, %467
  %469 = add nuw nsw i32 %468, %465
  %470 = icmp eq i32 %469, 2
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %31, align 1
  %472 = add i64 %412, 33
  store i64 %472, i64* %3, align 8
  store i32 %450, i32* %448, align 4
  %473 = load i64, i64* %3, align 8
  %474 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDX.i937, align 8
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -8
  %478 = add i64 %473, 10
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, 20
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RSI.i933, align 8
  %483 = icmp ugt i32 %480, -21
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %25, align 1
  %485 = and i32 %481, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %26, align 1
  %490 = xor i32 %480, 16
  %491 = xor i32 %490, %481
  %492 = lshr i32 %491, 4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %27, align 1
  %495 = icmp eq i32 %481, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %28, align 1
  %497 = lshr i32 %481, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %30, align 1
  %499 = lshr i32 %480, 31
  %500 = xor i32 %497, %499
  %501 = add nuw nsw i32 %500, %497
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %31, align 1
  %504 = sext i32 %481 to i64
  store i64 %504, i64* %RAX.i944, align 8
  %505 = shl nsw i64 %504, 2
  %506 = add nsw i64 %505, 11185584
  %507 = add i64 %473, 23
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i32*
  store i32 %474, i32* %508, align 4
  %509 = load i64, i64* %3, align 8
  %510 = add i64 %509, 216
  br label %block_.L_408657

block_.L_408584:                                  ; preds = %block_.L_4084b2, %block_4084cc
  %511 = phi i64 [ %243, %block_4084cc ], [ %185, %block_.L_4084b2 ]
  %512 = add i64 %511, 3
  store i64 %512, i64* %3, align 8
  %513 = load i32, i32* %147, align 4
  %514 = add i32 %513, 20
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i944, align 8
  %516 = icmp ugt i32 %513, -21
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %25, align 1
  %518 = and i32 %514, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %26, align 1
  %523 = xor i32 %513, 16
  %524 = xor i32 %523, %514
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %27, align 1
  %528 = icmp eq i32 %514, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %28, align 1
  %530 = lshr i32 %514, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %30, align 1
  %532 = lshr i32 %513, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %530
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %31, align 1
  %537 = sext i32 %514 to i64
  store i64 %537, i64* %RCX.i942, align 8
  %538 = add nsw i64 %537, 12099168
  %539 = add i64 %511, 17
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i8*
  %541 = load i8, i8* %540, align 1
  %542 = zext i8 %541 to i64
  store i64 %542, i64* %RAX.i944, align 8
  %543 = zext i8 %541 to i32
  %544 = add i64 %144, -12
  %545 = add i64 %511, 20
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sub i32 %543, %547
  %549 = icmp ult i32 %543, %547
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %25, align 1
  %551 = and i32 %548, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %26, align 1
  %556 = xor i32 %547, %543
  %557 = xor i32 %556, %548
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %27, align 1
  %561 = icmp eq i32 %548, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %28, align 1
  %563 = lshr i32 %548, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %30, align 1
  %565 = lshr i32 %547, 31
  %566 = add nuw nsw i32 %563, %565
  %567 = icmp eq i32 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %31, align 1
  %.v32 = select i1 %561, i64 26, i64 206
  %569 = add i64 %511, %.v32
  store i64 %569, i64* %3, align 8
  br i1 %561, label %block_40859e, label %block_.L_408652

block_40859e:                                     ; preds = %block_.L_408584
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %570 = add i64 %569, 13
  store i64 %570, i64* %3, align 8
  %571 = load i32, i32* %147, align 4
  %572 = add i32 %571, 20
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RCX.i942, align 8
  %574 = icmp ugt i32 %571, -21
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %25, align 1
  %576 = and i32 %572, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %26, align 1
  %581 = xor i32 %571, 16
  %582 = xor i32 %581, %572
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %27, align 1
  %586 = icmp eq i32 %572, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %28, align 1
  %588 = lshr i32 %572, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %30, align 1
  %590 = lshr i32 %571, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %588
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %31, align 1
  %595 = sext i32 %572 to i64
  store i64 %595, i64* %RDX.i937, align 8
  %596 = shl nsw i64 %595, 2
  %597 = add nsw i64 %596, 11187184
  %598 = add i64 %569, 27
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sext i32 %600 to i64
  %602 = mul nsw i64 %601, 744
  store i64 %602, i64* %RDX.i937, align 8
  %603 = lshr i64 %602, 63
  %604 = add i64 %602, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %604, i64* %RAX.i944, align 8
  %605 = icmp ult i64 %604, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %606 = icmp ult i64 %604, %602
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %25, align 1
  %609 = trunc i64 %604 to i32
  %610 = and i32 %609, 248
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %26, align 1
  %615 = xor i64 %602, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %616 = xor i64 %615, %604
  %617 = lshr i64 %616, 4
  %618 = trunc i64 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %27, align 1
  %620 = icmp eq i64 %604, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %28, align 1
  %622 = lshr i64 %604, 63
  %623 = trunc i64 %622 to i8
  store i8 %623, i8* %30, align 1
  %624 = xor i64 %622, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %625 = xor i64 %622, %603
  %626 = add nuw nsw i64 %624, %625
  %627 = icmp eq i64 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %31, align 1
  %629 = add i64 %602, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %630 = add i64 %569, 43
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RCX.i942, align 8
  %634 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %635 = sub i32 %632, %634
  %636 = icmp ult i32 %632, %634
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %25, align 1
  %638 = and i32 %635, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %26, align 1
  %643 = xor i32 %634, %632
  %644 = xor i32 %643, %635
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %27, align 1
  %648 = icmp eq i32 %635, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %28, align 1
  %650 = lshr i32 %635, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %30, align 1
  %652 = lshr i32 %632, 31
  %653 = lshr i32 %634, 31
  %654 = xor i32 %653, %652
  %655 = xor i32 %650, %652
  %656 = add nuw nsw i32 %655, %654
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %31, align 1
  %.v49 = select i1 %648, i64 180, i64 56
  %659 = add i64 %569, %.v49
  store i64 %659, i64* %3, align 8
  br i1 %648, label %block_.L_408652, label %block_4085d6

block_4085d6:                                     ; preds = %block_40859e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -8
  %662 = add i64 %659, 13
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = add i32 %664, 20
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX.i942, align 8
  %667 = icmp ugt i32 %664, -21
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %25, align 1
  %669 = and i32 %665, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %26, align 1
  %674 = xor i32 %664, 16
  %675 = xor i32 %674, %665
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %27, align 1
  %679 = icmp eq i32 %665, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %28, align 1
  %681 = lshr i32 %665, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %30, align 1
  %683 = lshr i32 %664, 31
  %684 = xor i32 %681, %683
  %685 = add nuw nsw i32 %684, %681
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %31, align 1
  %688 = sext i32 %665 to i64
  store i64 %688, i64* %RDX.i937, align 8
  %689 = shl nsw i64 %688, 2
  %690 = add nsw i64 %689, 11187184
  %691 = add i64 %659, 26
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RCX.i942, align 8
  %695 = add i64 %660, -4
  %696 = add i64 %659, 30
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sext i32 %698 to i64
  %700 = mul nsw i64 %699, 744
  store i64 %700, i64* %RDX.i937, align 8
  %701 = lshr i64 %700, 63
  %702 = add i64 %700, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %702, i64* %RSI.i933, align 8
  %703 = icmp ult i64 %702, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %704 = icmp ult i64 %702, %700
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %25, align 1
  %707 = trunc i64 %702 to i32
  %708 = and i32 %707, 248
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %26, align 1
  %713 = xor i64 %700, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %714 = xor i64 %713, %702
  %715 = lshr i64 %714, 4
  %716 = trunc i64 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %27, align 1
  %718 = icmp eq i64 %702, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %28, align 1
  %720 = lshr i64 %702, 63
  %721 = trunc i64 %720 to i8
  store i8 %721, i8* %30, align 1
  %722 = xor i64 %720, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %723 = xor i64 %720, %701
  %724 = add nuw nsw i64 %722, %723
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %31, align 1
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -4
  %729 = add i64 %659, 47
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = sext i32 %731 to i64
  %733 = mul nsw i64 %732, 744
  store i64 %733, i64* %RDX.i937, align 8
  %734 = lshr i64 %733, 63
  %735 = load i64, i64* %RAX.i944, align 8
  %736 = add i64 %733, %735
  store i64 %736, i64* %RDI.i722, align 8
  %737 = icmp ult i64 %736, %735
  %738 = icmp ult i64 %736, %733
  %739 = or i1 %737, %738
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %25, align 1
  %741 = trunc i64 %736 to i32
  %742 = and i32 %741, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %26, align 1
  %747 = xor i64 %733, %735
  %748 = xor i64 %747, %736
  %749 = lshr i64 %748, 4
  %750 = trunc i64 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %27, align 1
  %752 = icmp eq i64 %736, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %28, align 1
  %754 = lshr i64 %736, 63
  %755 = trunc i64 %754 to i8
  store i8 %755, i8* %30, align 1
  %756 = lshr i64 %735, 63
  %757 = xor i64 %754, %756
  %758 = xor i64 %754, %734
  %759 = add nuw nsw i64 %757, %758
  %760 = icmp eq i64 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %31, align 1
  %762 = add i64 %736, 96
  %763 = add i64 %659, 64
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %141, align 8
  %767 = add i32 %765, 1
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %142, align 8
  %769 = icmp eq i32 %765, -1
  %770 = icmp eq i32 %767, 0
  %771 = or i1 %769, %770
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %25, align 1
  %773 = and i32 %767, 255
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %26, align 1
  %778 = xor i32 %767, %765
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  store i8 %781, i8* %27, align 1
  %782 = zext i1 %770 to i8
  store i8 %782, i8* %28, align 1
  %783 = lshr i32 %767, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %30, align 1
  %785 = lshr i32 %765, 31
  %786 = xor i32 %783, %785
  %787 = add nuw nsw i32 %786, %783
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %31, align 1
  %790 = add i64 %659, 75
  store i64 %790, i64* %3, align 8
  store i32 %767, i32* %764, align 4
  %791 = load i32, i32* %R8D.i715, align 4
  %792 = load i64, i64* %3, align 8
  %793 = sext i32 %791 to i64
  store i64 %793, i64* %RDX.i937, align 8
  %794 = load i64, i64* %RSI.i933, align 8
  %795 = shl nsw i64 %793, 2
  %796 = add nsw i64 %795, 100
  %797 = add i64 %796, %794
  %798 = load i32, i32* %ECX.i923, align 4
  %799 = add i64 %792, 7
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i32*
  store i32 %798, i32* %800, align 4
  %801 = load i64, i64* %3, align 8
  %802 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RCX.i942, align 8
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -8
  %806 = add i64 %801, 11
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, 20
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %141, align 8
  %811 = icmp ugt i32 %808, -21
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %25, align 1
  %813 = and i32 %809, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %26, align 1
  %818 = xor i32 %808, 16
  %819 = xor i32 %818, %809
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %27, align 1
  %823 = icmp eq i32 %809, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %28, align 1
  %825 = lshr i32 %809, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %30, align 1
  %827 = lshr i32 %808, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %825
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %31, align 1
  %832 = sext i32 %809 to i64
  store i64 %832, i64* %RDX.i937, align 8
  %833 = shl nsw i64 %832, 2
  %834 = add nsw i64 %833, 11187184
  %835 = add i64 %801, 26
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  %839 = mul nsw i64 %838, 744
  store i64 %839, i64* %RDX.i937, align 8
  %840 = lshr i64 %839, 63
  %841 = load i64, i64* %RAX.i944, align 8
  %842 = add i64 %839, %841
  store i64 %842, i64* %RAX.i944, align 8
  %843 = icmp ult i64 %842, %841
  %844 = icmp ult i64 %842, %839
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %25, align 1
  %847 = trunc i64 %842 to i32
  %848 = and i32 %847, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %26, align 1
  %853 = xor i64 %839, %841
  %854 = xor i64 %853, %842
  %855 = lshr i64 %854, 4
  %856 = trunc i64 %855 to i8
  %857 = and i8 %856, 1
  store i8 %857, i8* %27, align 1
  %858 = icmp eq i64 %842, 0
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %28, align 1
  %860 = lshr i64 %842, 63
  %861 = trunc i64 %860 to i8
  store i8 %861, i8* %30, align 1
  %862 = lshr i64 %841, 63
  %863 = xor i64 %860, %862
  %864 = xor i64 %860, %840
  %865 = add nuw nsw i64 %863, %864
  %866 = icmp eq i64 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %31, align 1
  %868 = add i64 %842, 740
  %869 = load i32, i32* %ECX.i923, align 4
  %870 = add i64 %801, 42
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %868 to i32*
  store i32 %869, i32* %871, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_408652

block_.L_408652:                                  ; preds = %block_.L_408584, %block_4085d6, %block_40859e
  %872 = phi i64 [ %.pre25, %block_4085d6 ], [ %659, %block_40859e ], [ %569, %block_.L_408584 ]
  %873 = add i64 %872, 5
  store i64 %873, i64* %3, align 8
  br label %block_.L_408657

block_.L_408657:                                  ; preds = %block_.L_408652, %block_.L_408547
  %storemerge = phi i64 [ %510, %block_.L_408547 ], [ %873, %block_.L_408652 ]
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -8
  %876 = add i64 %storemerge, 3
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, -1
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX.i944, align 8
  %881 = icmp eq i32 %878, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %25, align 1
  %883 = and i32 %879, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %26, align 1
  %888 = xor i32 %879, %878
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %27, align 1
  %892 = icmp eq i32 %879, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %28, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %30, align 1
  %896 = lshr i32 %878, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %31, align 1
  %901 = sext i32 %879 to i64
  store i64 %901, i64* %RCX.i942, align 8
  %902 = add nsw i64 %901, 12099168
  %903 = add i64 %storemerge, 17
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i8*
  %905 = load i8, i8* %904, align 1
  %906 = zext i8 %905 to i64
  store i64 %906, i64* %RAX.i944, align 8
  %907 = zext i8 %905 to i32
  store i8 0, i8* %25, align 1
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %26, align 1
  store i8 0, i8* %27, align 1
  %912 = icmp eq i8 %905, 0
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %28, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v33 = select i1 %912, i64 26, i64 210
  %914 = add i64 %storemerge, %.v33
  store i64 %914, i64* %3, align 8
  br i1 %912, label %block_408671, label %block_.L_408729

block_408671:                                     ; preds = %block_.L_408657
  %915 = add i64 %914, 3
  store i64 %915, i64* %3, align 8
  %916 = load i32, i32* %877, align 4
  %917 = add i32 %916, -1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i944, align 8
  %919 = icmp eq i32 %916, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %25, align 1
  %921 = and i32 %917, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %26, align 1
  %926 = xor i32 %917, %916
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %27, align 1
  %930 = icmp eq i32 %917, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %28, align 1
  %932 = lshr i32 %917, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %916, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %31, align 1
  %939 = sext i32 %917 to i64
  store i64 %939, i64* %RCX.i942, align 8
  %940 = shl nsw i64 %939, 2
  %941 = add nsw i64 %940, 11185584
  %942 = add i64 %914, 16
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX.i944, align 8
  %946 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %947 = sub i32 %944, %946
  %948 = icmp ult i32 %944, %946
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %25, align 1
  %950 = and i32 %947, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %26, align 1
  %955 = xor i32 %946, %944
  %956 = xor i32 %955, %947
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %27, align 1
  %960 = icmp eq i32 %947, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %28, align 1
  %962 = lshr i32 %947, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %30, align 1
  %964 = lshr i32 %944, 31
  %965 = lshr i32 %946, 31
  %966 = xor i32 %965, %964
  %967 = xor i32 %962, %964
  %968 = add nuw nsw i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %31, align 1
  %.v47 = select i1 %960, i64 184, i64 29
  %971 = add i64 %914, %.v47
  store i64 %971, i64* %3, align 8
  br i1 %960, label %block_.L_408729, label %block_40868e

block_40868e:                                     ; preds = %block_408671
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %972 = add i64 %874, -4
  %973 = add i64 %971, 19
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = sext i32 %975 to i64
  %977 = mul nsw i64 %976, 744
  store i64 %977, i64* %RCX.i942, align 8
  %978 = lshr i64 %977, 63
  %979 = add i64 %977, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %979, i64* %RAX.i944, align 8
  %980 = icmp ult i64 %979, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %981 = icmp ult i64 %979, %977
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %25, align 1
  %984 = trunc i64 %979 to i32
  %985 = and i32 %984, 248
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %26, align 1
  %990 = xor i64 %977, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %991 = xor i64 %990, %979
  %992 = lshr i64 %991, 4
  %993 = trunc i64 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %27, align 1
  %995 = icmp eq i64 %979, 0
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %28, align 1
  %997 = lshr i64 %979, 63
  %998 = trunc i64 %997 to i8
  store i8 %998, i8* %30, align 1
  %999 = xor i64 %997, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1000 = xor i64 %997, %978
  %1001 = add nuw nsw i64 %999, %1000
  %1002 = icmp eq i64 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %31, align 1
  %1004 = add i64 %977, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1005 = add i64 %971, 33
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = add i32 %1007, -20
  %1009 = icmp ult i32 %1007, 20
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %25, align 1
  %1011 = and i32 %1008, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %26, align 1
  %1016 = xor i32 %1007, 16
  %1017 = xor i32 %1016, %1008
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %27, align 1
  %1021 = icmp eq i32 %1008, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %28, align 1
  %1023 = lshr i32 %1008, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %30, align 1
  %1025 = lshr i32 %1007, 31
  %1026 = xor i32 %1023, %1025
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %31, align 1
  %1030 = icmp ne i8 %1024, 0
  %1031 = xor i1 %1030, %1028
  %.v48 = select i1 %1031, i64 39, i64 94
  %1032 = add i64 %971, %.v48
  store i64 %1032, i64* %3, align 8
  br i1 %1031, label %block_4086b5, label %block_.L_4086ec

block_4086b5:                                     ; preds = %block_40868e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1033 = load i64, i64* %RBP.i, align 8
  %1034 = add i64 %1033, -8
  %1035 = add i64 %1032, 13
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = add i32 %1037, -1
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RCX.i942, align 8
  %1040 = icmp eq i32 %1037, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %25, align 1
  %1042 = and i32 %1038, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %26, align 1
  %1047 = xor i32 %1038, %1037
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %27, align 1
  %1051 = icmp eq i32 %1038, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %28, align 1
  %1053 = lshr i32 %1038, 31
  %1054 = trunc i32 %1053 to i8
  store i8 %1054, i8* %30, align 1
  %1055 = lshr i32 %1037, 31
  %1056 = xor i32 %1053, %1055
  %1057 = add nuw nsw i32 %1056, %1055
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %31, align 1
  %1060 = add i64 %1033, -4
  %1061 = add i64 %1032, 20
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  %1065 = mul nsw i64 %1064, 744
  store i64 %1065, i64* %RDX.i937, align 8
  %1066 = lshr i64 %1065, 63
  %1067 = add i64 %1065, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1067, i64* %RSI.i933, align 8
  %1068 = icmp ult i64 %1067, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1069 = icmp ult i64 %1067, %1065
  %1070 = or i1 %1068, %1069
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %25, align 1
  %1072 = trunc i64 %1067 to i32
  %1073 = and i32 %1072, 248
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073)
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %26, align 1
  %1078 = xor i64 %1065, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1079 = xor i64 %1078, %1067
  %1080 = lshr i64 %1079, 4
  %1081 = trunc i64 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %27, align 1
  %1083 = icmp eq i64 %1067, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %28, align 1
  %1085 = lshr i64 %1067, 63
  %1086 = trunc i64 %1085 to i8
  store i8 %1086, i8* %30, align 1
  %1087 = xor i64 %1085, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1088 = xor i64 %1085, %1066
  %1089 = add nuw nsw i64 %1087, %1088
  %1090 = icmp eq i64 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %31, align 1
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -4
  %1094 = add i64 %1032, 37
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = mul nsw i64 %1097, 744
  store i64 %1098, i64* %RDX.i937, align 8
  %1099 = lshr i64 %1098, 63
  %1100 = load i64, i64* %RAX.i944, align 8
  %1101 = add i64 %1098, %1100
  store i64 %1101, i64* %RAX.i944, align 8
  %1102 = icmp ult i64 %1101, %1100
  %1103 = icmp ult i64 %1101, %1098
  %1104 = or i1 %1102, %1103
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %25, align 1
  %1106 = trunc i64 %1101 to i32
  %1107 = and i32 %1106, 255
  %1108 = tail call i32 @llvm.ctpop.i32(i32 %1107)
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  %1111 = xor i8 %1110, 1
  store i8 %1111, i8* %26, align 1
  %1112 = xor i64 %1098, %1100
  %1113 = xor i64 %1112, %1101
  %1114 = lshr i64 %1113, 4
  %1115 = trunc i64 %1114 to i8
  %1116 = and i8 %1115, 1
  store i8 %1116, i8* %27, align 1
  %1117 = icmp eq i64 %1101, 0
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %28, align 1
  %1119 = lshr i64 %1101, 63
  %1120 = trunc i64 %1119 to i8
  store i8 %1120, i8* %30, align 1
  %1121 = lshr i64 %1100, 63
  %1122 = xor i64 %1119, %1121
  %1123 = xor i64 %1119, %1099
  %1124 = add nuw nsw i64 %1122, %1123
  %1125 = icmp eq i64 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %31, align 1
  %1127 = add i64 %1101, 12
  %1128 = add i64 %1032, 51
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = sext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i944, align 8
  %1132 = load i64, i64* %RSI.i933, align 8
  %1133 = shl nsw i64 %1131, 2
  %1134 = add i64 %1132, 16
  %1135 = add i64 %1134, %1133
  %1136 = load i32, i32* %ECX.i923, align 4
  %1137 = add i64 %1032, 55
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1135 to i32*
  store i32 %1136, i32* %1138, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_4086ec

block_.L_4086ec:                                  ; preds = %block_40868e, %block_4086b5
  %1139 = phi i64 [ %1032, %block_40868e ], [ %.pre26, %block_4086b5 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1140 = load i64, i64* %RBP.i, align 8
  %1141 = add i64 %1140, -4
  %1142 = add i64 %1139, 14
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = mul nsw i64 %1145, 744
  store i64 %1146, i64* %RCX.i942, align 8
  %1147 = lshr i64 %1146, 63
  %1148 = add i64 %1146, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1148, i64* %RAX.i944, align 8
  %1149 = icmp ult i64 %1148, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1150 = icmp ult i64 %1148, %1146
  %1151 = or i1 %1149, %1150
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %25, align 1
  %1153 = trunc i64 %1148 to i32
  %1154 = and i32 %1153, 248
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %26, align 1
  %1159 = xor i64 %1146, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1160 = xor i64 %1159, %1148
  %1161 = lshr i64 %1160, 4
  %1162 = trunc i64 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %27, align 1
  %1164 = icmp eq i64 %1148, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %28, align 1
  %1166 = lshr i64 %1148, 63
  %1167 = trunc i64 %1166 to i8
  store i8 %1167, i8* %30, align 1
  %1168 = xor i64 %1166, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1169 = xor i64 %1166, %1147
  %1170 = add nuw nsw i64 %1168, %1169
  %1171 = icmp eq i64 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %31, align 1
  %1173 = add i64 %1146, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1174 = add i64 %1139, 27
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = add i32 %1176, 1
  %1178 = icmp eq i32 %1176, -1
  %1179 = icmp eq i32 %1177, 0
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %25, align 1
  %1182 = and i32 %1177, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %26, align 1
  %1187 = xor i32 %1177, %1176
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = zext i1 %1179 to i8
  store i8 %1191, i8* %28, align 1
  %1192 = lshr i32 %1177, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %30, align 1
  %1194 = lshr i32 %1176, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1192
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %31, align 1
  %1199 = add i64 %1139, 33
  store i64 %1199, i64* %3, align 8
  store i32 %1177, i32* %1175, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RDX.i937, align 8
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -8
  %1205 = add i64 %1200, 10
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i32*
  %1207 = load i32, i32* %1206, align 4
  %1208 = add i32 %1207, -1
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RSI.i933, align 8
  %1210 = icmp eq i32 %1207, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %25, align 1
  %1212 = and i32 %1208, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %26, align 1
  %1217 = xor i32 %1208, %1207
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %27, align 1
  %1221 = icmp eq i32 %1208, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %28, align 1
  %1223 = lshr i32 %1208, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %30, align 1
  %1225 = lshr i32 %1207, 31
  %1226 = xor i32 %1223, %1225
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %31, align 1
  %1230 = sext i32 %1208 to i64
  store i64 %1230, i64* %RAX.i944, align 8
  %1231 = shl nsw i64 %1230, 2
  %1232 = add nsw i64 %1231, 11185584
  %1233 = add i64 %1200, 23
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  store i32 %1201, i32* %1234, align 4
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 216
  br label %block_.L_4087fc

block_.L_408729:                                  ; preds = %block_.L_408657, %block_408671
  %1237 = phi i64 [ %971, %block_408671 ], [ %914, %block_.L_408657 ]
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %3, align 8
  %1239 = load i32, i32* %877, align 4
  %1240 = add i32 %1239, -1
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i944, align 8
  %1242 = icmp eq i32 %1239, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %25, align 1
  %1244 = and i32 %1240, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %26, align 1
  %1249 = xor i32 %1240, %1239
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %27, align 1
  %1253 = icmp eq i32 %1240, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %28, align 1
  %1255 = lshr i32 %1240, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %30, align 1
  %1257 = lshr i32 %1239, 31
  %1258 = xor i32 %1255, %1257
  %1259 = add nuw nsw i32 %1258, %1257
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %31, align 1
  %1262 = sext i32 %1240 to i64
  store i64 %1262, i64* %RCX.i942, align 8
  %1263 = add nsw i64 %1262, 12099168
  %1264 = add i64 %1237, 17
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i8*
  %1266 = load i8, i8* %1265, align 1
  %1267 = zext i8 %1266 to i64
  store i64 %1267, i64* %RAX.i944, align 8
  %1268 = zext i8 %1266 to i32
  %1269 = add i64 %874, -12
  %1270 = add i64 %1237, 20
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sub i32 %1268, %1272
  %1274 = icmp ult i32 %1268, %1272
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %25, align 1
  %1276 = and i32 %1273, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %26, align 1
  %1281 = xor i32 %1272, %1268
  %1282 = xor i32 %1281, %1273
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %27, align 1
  %1286 = icmp eq i32 %1273, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %28, align 1
  %1288 = lshr i32 %1273, 31
  %1289 = trunc i32 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1272, 31
  %1291 = add nuw nsw i32 %1288, %1290
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %31, align 1
  %.v34 = select i1 %1286, i64 26, i64 206
  %1294 = add i64 %1237, %.v34
  store i64 %1294, i64* %3, align 8
  br i1 %1286, label %block_408743, label %block_.L_4087f7

block_408743:                                     ; preds = %block_.L_408729
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1295 = add i64 %1294, 13
  store i64 %1295, i64* %3, align 8
  %1296 = load i32, i32* %877, align 4
  %1297 = add i32 %1296, -1
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i942, align 8
  %1299 = icmp eq i32 %1296, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %25, align 1
  %1301 = and i32 %1297, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %26, align 1
  %1306 = xor i32 %1297, %1296
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %27, align 1
  %1310 = icmp eq i32 %1297, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %28, align 1
  %1312 = lshr i32 %1297, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %30, align 1
  %1314 = lshr i32 %1296, 31
  %1315 = xor i32 %1312, %1314
  %1316 = add nuw nsw i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %31, align 1
  %1319 = sext i32 %1297 to i64
  store i64 %1319, i64* %RDX.i937, align 8
  %1320 = shl nsw i64 %1319, 2
  %1321 = add nsw i64 %1320, 11187184
  %1322 = add i64 %1294, 27
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = mul nsw i64 %1325, 744
  store i64 %1326, i64* %RDX.i937, align 8
  %1327 = lshr i64 %1326, 63
  %1328 = add i64 %1326, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1328, i64* %RAX.i944, align 8
  %1329 = icmp ult i64 %1328, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1330 = icmp ult i64 %1328, %1326
  %1331 = or i1 %1329, %1330
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %25, align 1
  %1333 = trunc i64 %1328 to i32
  %1334 = and i32 %1333, 248
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %26, align 1
  %1339 = xor i64 %1326, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1340 = xor i64 %1339, %1328
  %1341 = lshr i64 %1340, 4
  %1342 = trunc i64 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %27, align 1
  %1344 = icmp eq i64 %1328, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %28, align 1
  %1346 = lshr i64 %1328, 63
  %1347 = trunc i64 %1346 to i8
  store i8 %1347, i8* %30, align 1
  %1348 = xor i64 %1346, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1349 = xor i64 %1346, %1327
  %1350 = add nuw nsw i64 %1348, %1349
  %1351 = icmp eq i64 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %31, align 1
  %1353 = add i64 %1326, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1354 = add i64 %1294, 43
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RCX.i942, align 8
  %1358 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1359 = sub i32 %1356, %1358
  %1360 = icmp ult i32 %1356, %1358
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %25, align 1
  %1362 = and i32 %1359, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362)
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %26, align 1
  %1367 = xor i32 %1358, %1356
  %1368 = xor i32 %1367, %1359
  %1369 = lshr i32 %1368, 4
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  store i8 %1371, i8* %27, align 1
  %1372 = icmp eq i32 %1359, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %28, align 1
  %1374 = lshr i32 %1359, 31
  %1375 = trunc i32 %1374 to i8
  store i8 %1375, i8* %30, align 1
  %1376 = lshr i32 %1356, 31
  %1377 = lshr i32 %1358, 31
  %1378 = xor i32 %1377, %1376
  %1379 = xor i32 %1374, %1376
  %1380 = add nuw nsw i32 %1379, %1378
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %31, align 1
  %.v46 = select i1 %1372, i64 180, i64 56
  %1383 = add i64 %1294, %.v46
  store i64 %1383, i64* %3, align 8
  br i1 %1372, label %block_.L_4087f7, label %block_40877b

block_40877b:                                     ; preds = %block_408743
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -8
  %1386 = add i64 %1383, 13
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = add i32 %1388, -1
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RCX.i942, align 8
  %1391 = icmp eq i32 %1388, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %25, align 1
  %1393 = and i32 %1389, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %26, align 1
  %1398 = xor i32 %1389, %1388
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %27, align 1
  %1402 = icmp eq i32 %1389, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %28, align 1
  %1404 = lshr i32 %1389, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %30, align 1
  %1406 = lshr i32 %1388, 31
  %1407 = xor i32 %1404, %1406
  %1408 = add nuw nsw i32 %1407, %1406
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %31, align 1
  %1411 = sext i32 %1389 to i64
  store i64 %1411, i64* %RDX.i937, align 8
  %1412 = shl nsw i64 %1411, 2
  %1413 = add nsw i64 %1412, 11187184
  %1414 = add i64 %1383, 26
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RCX.i942, align 8
  %1418 = add i64 %1384, -4
  %1419 = add i64 %1383, 30
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = sext i32 %1421 to i64
  %1423 = mul nsw i64 %1422, 744
  store i64 %1423, i64* %RDX.i937, align 8
  %1424 = lshr i64 %1423, 63
  %1425 = add i64 %1423, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1425, i64* %RSI.i933, align 8
  %1426 = icmp ult i64 %1425, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1427 = icmp ult i64 %1425, %1423
  %1428 = or i1 %1426, %1427
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %25, align 1
  %1430 = trunc i64 %1425 to i32
  %1431 = and i32 %1430, 248
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %26, align 1
  %1436 = xor i64 %1423, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1437 = xor i64 %1436, %1425
  %1438 = lshr i64 %1437, 4
  %1439 = trunc i64 %1438 to i8
  %1440 = and i8 %1439, 1
  store i8 %1440, i8* %27, align 1
  %1441 = icmp eq i64 %1425, 0
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %28, align 1
  %1443 = lshr i64 %1425, 63
  %1444 = trunc i64 %1443 to i8
  store i8 %1444, i8* %30, align 1
  %1445 = xor i64 %1443, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1446 = xor i64 %1443, %1424
  %1447 = add nuw nsw i64 %1445, %1446
  %1448 = icmp eq i64 %1447, 2
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %31, align 1
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -4
  %1452 = add i64 %1383, 47
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = mul nsw i64 %1455, 744
  store i64 %1456, i64* %RDX.i937, align 8
  %1457 = lshr i64 %1456, 63
  %1458 = load i64, i64* %RAX.i944, align 8
  %1459 = add i64 %1456, %1458
  store i64 %1459, i64* %RDI.i722, align 8
  %1460 = icmp ult i64 %1459, %1458
  %1461 = icmp ult i64 %1459, %1456
  %1462 = or i1 %1460, %1461
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %25, align 1
  %1464 = trunc i64 %1459 to i32
  %1465 = and i32 %1464, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %26, align 1
  %1470 = xor i64 %1456, %1458
  %1471 = xor i64 %1470, %1459
  %1472 = lshr i64 %1471, 4
  %1473 = trunc i64 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %27, align 1
  %1475 = icmp eq i64 %1459, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %28, align 1
  %1477 = lshr i64 %1459, 63
  %1478 = trunc i64 %1477 to i8
  store i8 %1478, i8* %30, align 1
  %1479 = lshr i64 %1458, 63
  %1480 = xor i64 %1477, %1479
  %1481 = xor i64 %1477, %1457
  %1482 = add nuw nsw i64 %1480, %1481
  %1483 = icmp eq i64 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %31, align 1
  %1485 = add i64 %1459, 96
  %1486 = add i64 %1383, 64
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %141, align 8
  %1490 = add i32 %1488, 1
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %142, align 8
  %1492 = icmp eq i32 %1488, -1
  %1493 = icmp eq i32 %1490, 0
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %25, align 1
  %1496 = and i32 %1490, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %26, align 1
  %1501 = xor i32 %1490, %1488
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  store i8 %1504, i8* %27, align 1
  %1505 = zext i1 %1493 to i8
  store i8 %1505, i8* %28, align 1
  %1506 = lshr i32 %1490, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %30, align 1
  %1508 = lshr i32 %1488, 31
  %1509 = xor i32 %1506, %1508
  %1510 = add nuw nsw i32 %1509, %1506
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %31, align 1
  %1513 = add i64 %1383, 75
  store i64 %1513, i64* %3, align 8
  store i32 %1490, i32* %1487, align 4
  %1514 = load i32, i32* %R8D.i715, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = sext i32 %1514 to i64
  store i64 %1516, i64* %RDX.i937, align 8
  %1517 = load i64, i64* %RSI.i933, align 8
  %1518 = shl nsw i64 %1516, 2
  %1519 = add nsw i64 %1518, 100
  %1520 = add i64 %1519, %1517
  %1521 = load i32, i32* %ECX.i923, align 4
  %1522 = add i64 %1515, 7
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1520 to i32*
  store i32 %1521, i32* %1523, align 4
  %1524 = load i64, i64* %3, align 8
  %1525 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RCX.i942, align 8
  %1527 = load i64, i64* %RBP.i, align 8
  %1528 = add i64 %1527, -8
  %1529 = add i64 %1524, 11
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = add i32 %1531, -1
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %141, align 8
  %1534 = icmp eq i32 %1531, 0
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %25, align 1
  %1536 = and i32 %1532, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %26, align 1
  %1541 = xor i32 %1532, %1531
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  store i8 %1544, i8* %27, align 1
  %1545 = icmp eq i32 %1532, 0
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %28, align 1
  %1547 = lshr i32 %1532, 31
  %1548 = trunc i32 %1547 to i8
  store i8 %1548, i8* %30, align 1
  %1549 = lshr i32 %1531, 31
  %1550 = xor i32 %1547, %1549
  %1551 = add nuw nsw i32 %1550, %1549
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %31, align 1
  %1554 = sext i32 %1532 to i64
  store i64 %1554, i64* %RDX.i937, align 8
  %1555 = shl nsw i64 %1554, 2
  %1556 = add nsw i64 %1555, 11187184
  %1557 = add i64 %1524, 26
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = mul nsw i64 %1560, 744
  store i64 %1561, i64* %RDX.i937, align 8
  %1562 = lshr i64 %1561, 63
  %1563 = load i64, i64* %RAX.i944, align 8
  %1564 = add i64 %1561, %1563
  store i64 %1564, i64* %RAX.i944, align 8
  %1565 = icmp ult i64 %1564, %1563
  %1566 = icmp ult i64 %1564, %1561
  %1567 = or i1 %1565, %1566
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %25, align 1
  %1569 = trunc i64 %1564 to i32
  %1570 = and i32 %1569, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %26, align 1
  %1575 = xor i64 %1561, %1563
  %1576 = xor i64 %1575, %1564
  %1577 = lshr i64 %1576, 4
  %1578 = trunc i64 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %27, align 1
  %1580 = icmp eq i64 %1564, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %28, align 1
  %1582 = lshr i64 %1564, 63
  %1583 = trunc i64 %1582 to i8
  store i8 %1583, i8* %30, align 1
  %1584 = lshr i64 %1563, 63
  %1585 = xor i64 %1582, %1584
  %1586 = xor i64 %1582, %1562
  %1587 = add nuw nsw i64 %1585, %1586
  %1588 = icmp eq i64 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %31, align 1
  %1590 = add i64 %1564, 740
  %1591 = load i32, i32* %ECX.i923, align 4
  %1592 = add i64 %1524, 42
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1590 to i32*
  store i32 %1591, i32* %1593, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_4087f7

block_.L_4087f7:                                  ; preds = %block_.L_408729, %block_40877b, %block_408743
  %1594 = phi i64 [ %.pre27, %block_40877b ], [ %1383, %block_408743 ], [ %1294, %block_.L_408729 ]
  %1595 = add i64 %1594, 5
  store i64 %1595, i64* %3, align 8
  br label %block_.L_4087fc

block_.L_4087fc:                                  ; preds = %block_.L_4087f7, %block_.L_4086ec
  %storemerge21 = phi i64 [ %1236, %block_.L_4086ec ], [ %1595, %block_.L_4087f7 ]
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -8
  %1598 = add i64 %storemerge21, 3
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, -20
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RAX.i944, align 8
  %1603 = icmp ult i32 %1600, 20
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %25, align 1
  %1605 = and i32 %1601, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %26, align 1
  %1610 = xor i32 %1600, 16
  %1611 = xor i32 %1610, %1601
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %27, align 1
  %1615 = icmp eq i32 %1601, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %28, align 1
  %1617 = lshr i32 %1601, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %30, align 1
  %1619 = lshr i32 %1600, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %31, align 1
  %1624 = sext i32 %1601 to i64
  store i64 %1624, i64* %RCX.i942, align 8
  %1625 = add nsw i64 %1624, 12099168
  %1626 = add i64 %storemerge21, 17
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i8*
  %1628 = load i8, i8* %1627, align 1
  %1629 = zext i8 %1628 to i64
  store i64 %1629, i64* %RAX.i944, align 8
  %1630 = zext i8 %1628 to i32
  store i8 0, i8* %25, align 1
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %26, align 1
  store i8 0, i8* %27, align 1
  %1635 = icmp eq i8 %1628, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %28, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v35 = select i1 %1635, i64 26, i64 210
  %1637 = add i64 %storemerge21, %.v35
  store i64 %1637, i64* %3, align 8
  br i1 %1635, label %block_408816, label %block_.L_4088ce

block_408816:                                     ; preds = %block_.L_4087fc
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %3, align 8
  %1639 = load i32, i32* %1599, align 4
  %1640 = add i32 %1639, -20
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i944, align 8
  %1642 = icmp ult i32 %1639, 20
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %25, align 1
  %1644 = and i32 %1640, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %26, align 1
  %1649 = xor i32 %1639, 16
  %1650 = xor i32 %1649, %1640
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %27, align 1
  %1654 = icmp eq i32 %1640, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %28, align 1
  %1656 = lshr i32 %1640, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %30, align 1
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1658
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %31, align 1
  %1663 = sext i32 %1640 to i64
  store i64 %1663, i64* %RCX.i942, align 8
  %1664 = shl nsw i64 %1663, 2
  %1665 = add nsw i64 %1664, 11185584
  %1666 = add i64 %1637, 16
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  %1668 = load i32, i32* %1667, align 4
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RAX.i944, align 8
  %1670 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1671 = sub i32 %1668, %1670
  %1672 = icmp ult i32 %1668, %1670
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %25, align 1
  %1674 = and i32 %1671, 255
  %1675 = tail call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  store i8 %1678, i8* %26, align 1
  %1679 = xor i32 %1670, %1668
  %1680 = xor i32 %1679, %1671
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  store i8 %1683, i8* %27, align 1
  %1684 = icmp eq i32 %1671, 0
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %28, align 1
  %1686 = lshr i32 %1671, 31
  %1687 = trunc i32 %1686 to i8
  store i8 %1687, i8* %30, align 1
  %1688 = lshr i32 %1668, 31
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1689, %1688
  %1691 = xor i32 %1686, %1688
  %1692 = add nuw nsw i32 %1691, %1690
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %31, align 1
  %.v44 = select i1 %1684, i64 184, i64 29
  %1695 = add i64 %1637, %.v44
  store i64 %1695, i64* %3, align 8
  br i1 %1684, label %block_.L_4088ce, label %block_408833

block_408833:                                     ; preds = %block_408816
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1696 = add i64 %1596, -4
  %1697 = add i64 %1695, 19
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = sext i32 %1699 to i64
  %1701 = mul nsw i64 %1700, 744
  store i64 %1701, i64* %RCX.i942, align 8
  %1702 = lshr i64 %1701, 63
  %1703 = add i64 %1701, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1703, i64* %RAX.i944, align 8
  %1704 = icmp ult i64 %1703, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1705 = icmp ult i64 %1703, %1701
  %1706 = or i1 %1704, %1705
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %25, align 1
  %1708 = trunc i64 %1703 to i32
  %1709 = and i32 %1708, 248
  %1710 = tail call i32 @llvm.ctpop.i32(i32 %1709)
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = xor i8 %1712, 1
  store i8 %1713, i8* %26, align 1
  %1714 = xor i64 %1701, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1715 = xor i64 %1714, %1703
  %1716 = lshr i64 %1715, 4
  %1717 = trunc i64 %1716 to i8
  %1718 = and i8 %1717, 1
  store i8 %1718, i8* %27, align 1
  %1719 = icmp eq i64 %1703, 0
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %28, align 1
  %1721 = lshr i64 %1703, 63
  %1722 = trunc i64 %1721 to i8
  store i8 %1722, i8* %30, align 1
  %1723 = xor i64 %1721, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1724 = xor i64 %1721, %1702
  %1725 = add nuw nsw i64 %1723, %1724
  %1726 = icmp eq i64 %1725, 2
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %31, align 1
  %1728 = add i64 %1701, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1729 = add i64 %1695, 33
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = add i32 %1731, -20
  %1733 = icmp ult i32 %1731, 20
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %25, align 1
  %1735 = and i32 %1732, 255
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %26, align 1
  %1740 = xor i32 %1731, 16
  %1741 = xor i32 %1740, %1732
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  store i8 %1744, i8* %27, align 1
  %1745 = icmp eq i32 %1732, 0
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %28, align 1
  %1747 = lshr i32 %1732, 31
  %1748 = trunc i32 %1747 to i8
  store i8 %1748, i8* %30, align 1
  %1749 = lshr i32 %1731, 31
  %1750 = xor i32 %1747, %1749
  %1751 = add nuw nsw i32 %1750, %1749
  %1752 = icmp eq i32 %1751, 2
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %31, align 1
  %1754 = icmp ne i8 %1748, 0
  %1755 = xor i1 %1754, %1752
  %.v45 = select i1 %1755, i64 39, i64 94
  %1756 = add i64 %1695, %.v45
  store i64 %1756, i64* %3, align 8
  br i1 %1755, label %block_40885a, label %block_.L_408891

block_40885a:                                     ; preds = %block_408833
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -8
  %1759 = add i64 %1756, 13
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = add i32 %1761, -20
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RCX.i942, align 8
  %1764 = icmp ult i32 %1761, 20
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %25, align 1
  %1766 = and i32 %1762, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %26, align 1
  %1771 = xor i32 %1761, 16
  %1772 = xor i32 %1771, %1762
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %27, align 1
  %1776 = icmp eq i32 %1762, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %28, align 1
  %1778 = lshr i32 %1762, 31
  %1779 = trunc i32 %1778 to i8
  store i8 %1779, i8* %30, align 1
  %1780 = lshr i32 %1761, 31
  %1781 = xor i32 %1778, %1780
  %1782 = add nuw nsw i32 %1781, %1780
  %1783 = icmp eq i32 %1782, 2
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %31, align 1
  %1785 = add i64 %1757, -4
  %1786 = add i64 %1756, 20
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = sext i32 %1788 to i64
  %1790 = mul nsw i64 %1789, 744
  store i64 %1790, i64* %RDX.i937, align 8
  %1791 = lshr i64 %1790, 63
  %1792 = add i64 %1790, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1792, i64* %RSI.i933, align 8
  %1793 = icmp ult i64 %1792, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1794 = icmp ult i64 %1792, %1790
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %25, align 1
  %1797 = trunc i64 %1792 to i32
  %1798 = and i32 %1797, 248
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %26, align 1
  %1803 = xor i64 %1790, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1804 = xor i64 %1803, %1792
  %1805 = lshr i64 %1804, 4
  %1806 = trunc i64 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %27, align 1
  %1808 = icmp eq i64 %1792, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %28, align 1
  %1810 = lshr i64 %1792, 63
  %1811 = trunc i64 %1810 to i8
  store i8 %1811, i8* %30, align 1
  %1812 = xor i64 %1810, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1813 = xor i64 %1810, %1791
  %1814 = add nuw nsw i64 %1812, %1813
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %31, align 1
  %1817 = load i64, i64* %RBP.i, align 8
  %1818 = add i64 %1817, -4
  %1819 = add i64 %1756, 37
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = sext i32 %1821 to i64
  %1823 = mul nsw i64 %1822, 744
  store i64 %1823, i64* %RDX.i937, align 8
  %1824 = lshr i64 %1823, 63
  %1825 = load i64, i64* %RAX.i944, align 8
  %1826 = add i64 %1823, %1825
  store i64 %1826, i64* %RAX.i944, align 8
  %1827 = icmp ult i64 %1826, %1825
  %1828 = icmp ult i64 %1826, %1823
  %1829 = or i1 %1827, %1828
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %25, align 1
  %1831 = trunc i64 %1826 to i32
  %1832 = and i32 %1831, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %26, align 1
  %1837 = xor i64 %1823, %1825
  %1838 = xor i64 %1837, %1826
  %1839 = lshr i64 %1838, 4
  %1840 = trunc i64 %1839 to i8
  %1841 = and i8 %1840, 1
  store i8 %1841, i8* %27, align 1
  %1842 = icmp eq i64 %1826, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %28, align 1
  %1844 = lshr i64 %1826, 63
  %1845 = trunc i64 %1844 to i8
  store i8 %1845, i8* %30, align 1
  %1846 = lshr i64 %1825, 63
  %1847 = xor i64 %1844, %1846
  %1848 = xor i64 %1844, %1824
  %1849 = add nuw nsw i64 %1847, %1848
  %1850 = icmp eq i64 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %31, align 1
  %1852 = add i64 %1826, 12
  %1853 = add i64 %1756, 51
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = sext i32 %1855 to i64
  store i64 %1856, i64* %RAX.i944, align 8
  %1857 = load i64, i64* %RSI.i933, align 8
  %1858 = shl nsw i64 %1856, 2
  %1859 = add i64 %1857, 16
  %1860 = add i64 %1859, %1858
  %1861 = load i32, i32* %ECX.i923, align 4
  %1862 = add i64 %1756, 55
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1860 to i32*
  store i32 %1861, i32* %1863, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_408891

block_.L_408891:                                  ; preds = %block_408833, %block_40885a
  %1864 = phi i64 [ %1756, %block_408833 ], [ %.pre28, %block_40885a ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -4
  %1867 = add i64 %1864, 14
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  %1871 = mul nsw i64 %1870, 744
  store i64 %1871, i64* %RCX.i942, align 8
  %1872 = lshr i64 %1871, 63
  %1873 = add i64 %1871, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1873, i64* %RAX.i944, align 8
  %1874 = icmp ult i64 %1873, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1875 = icmp ult i64 %1873, %1871
  %1876 = or i1 %1874, %1875
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %25, align 1
  %1878 = trunc i64 %1873 to i32
  %1879 = and i32 %1878, 248
  %1880 = tail call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  store i8 %1883, i8* %26, align 1
  %1884 = xor i64 %1871, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1885 = xor i64 %1884, %1873
  %1886 = lshr i64 %1885, 4
  %1887 = trunc i64 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %27, align 1
  %1889 = icmp eq i64 %1873, 0
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %28, align 1
  %1891 = lshr i64 %1873, 63
  %1892 = trunc i64 %1891 to i8
  store i8 %1892, i8* %30, align 1
  %1893 = xor i64 %1891, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1894 = xor i64 %1891, %1872
  %1895 = add nuw nsw i64 %1893, %1894
  %1896 = icmp eq i64 %1895, 2
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %31, align 1
  %1898 = add i64 %1871, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1899 = add i64 %1864, 27
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, 1
  %1903 = icmp eq i32 %1901, -1
  %1904 = icmp eq i32 %1902, 0
  %1905 = or i1 %1903, %1904
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %25, align 1
  %1907 = and i32 %1902, 255
  %1908 = tail call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  store i8 %1911, i8* %26, align 1
  %1912 = xor i32 %1902, %1901
  %1913 = lshr i32 %1912, 4
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  store i8 %1915, i8* %27, align 1
  %1916 = zext i1 %1904 to i8
  store i8 %1916, i8* %28, align 1
  %1917 = lshr i32 %1902, 31
  %1918 = trunc i32 %1917 to i8
  store i8 %1918, i8* %30, align 1
  %1919 = lshr i32 %1901, 31
  %1920 = xor i32 %1917, %1919
  %1921 = add nuw nsw i32 %1920, %1917
  %1922 = icmp eq i32 %1921, 2
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %31, align 1
  %1924 = add i64 %1864, 33
  store i64 %1924, i64* %3, align 8
  store i32 %1902, i32* %1900, align 4
  %1925 = load i64, i64* %3, align 8
  %1926 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RDX.i937, align 8
  %1928 = load i64, i64* %RBP.i, align 8
  %1929 = add i64 %1928, -8
  %1930 = add i64 %1925, 10
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = add i32 %1932, -20
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RSI.i933, align 8
  %1935 = icmp ult i32 %1932, 20
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %25, align 1
  %1937 = and i32 %1933, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %26, align 1
  %1942 = xor i32 %1932, 16
  %1943 = xor i32 %1942, %1933
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %27, align 1
  %1947 = icmp eq i32 %1933, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %28, align 1
  %1949 = lshr i32 %1933, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %30, align 1
  %1951 = lshr i32 %1932, 31
  %1952 = xor i32 %1949, %1951
  %1953 = add nuw nsw i32 %1952, %1951
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %31, align 1
  %1956 = sext i32 %1933 to i64
  store i64 %1956, i64* %RAX.i944, align 8
  %1957 = shl nsw i64 %1956, 2
  %1958 = add nsw i64 %1957, 11185584
  %1959 = add i64 %1925, 23
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  store i32 %1926, i32* %1960, align 4
  %1961 = load i64, i64* %3, align 8
  %1962 = add i64 %1961, 216
  br label %block_.L_4089a1

block_.L_4088ce:                                  ; preds = %block_.L_4087fc, %block_408816
  %1963 = phi i64 [ %1695, %block_408816 ], [ %1637, %block_.L_4087fc ]
  %1964 = add i64 %1963, 3
  store i64 %1964, i64* %3, align 8
  %1965 = load i32, i32* %1599, align 4
  %1966 = add i32 %1965, -20
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RAX.i944, align 8
  %1968 = icmp ult i32 %1965, 20
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %25, align 1
  %1970 = and i32 %1966, 255
  %1971 = tail call i32 @llvm.ctpop.i32(i32 %1970)
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  store i8 %1974, i8* %26, align 1
  %1975 = xor i32 %1965, 16
  %1976 = xor i32 %1975, %1966
  %1977 = lshr i32 %1976, 4
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  store i8 %1979, i8* %27, align 1
  %1980 = icmp eq i32 %1966, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %28, align 1
  %1982 = lshr i32 %1966, 31
  %1983 = trunc i32 %1982 to i8
  store i8 %1983, i8* %30, align 1
  %1984 = lshr i32 %1965, 31
  %1985 = xor i32 %1982, %1984
  %1986 = add nuw nsw i32 %1985, %1984
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %31, align 1
  %1989 = sext i32 %1966 to i64
  store i64 %1989, i64* %RCX.i942, align 8
  %1990 = add nsw i64 %1989, 12099168
  %1991 = add i64 %1963, 17
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i8*
  %1993 = load i8, i8* %1992, align 1
  %1994 = zext i8 %1993 to i64
  store i64 %1994, i64* %RAX.i944, align 8
  %1995 = zext i8 %1993 to i32
  %1996 = add i64 %1596, -12
  %1997 = add i64 %1963, 20
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = sub i32 %1995, %1999
  %2001 = icmp ult i32 %1995, %1999
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %25, align 1
  %2003 = and i32 %2000, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %26, align 1
  %2008 = xor i32 %1999, %1995
  %2009 = xor i32 %2008, %2000
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %27, align 1
  %2013 = icmp eq i32 %2000, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %28, align 1
  %2015 = lshr i32 %2000, 31
  %2016 = trunc i32 %2015 to i8
  store i8 %2016, i8* %30, align 1
  %2017 = lshr i32 %1999, 31
  %2018 = add nuw nsw i32 %2015, %2017
  %2019 = icmp eq i32 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %31, align 1
  %.v36 = select i1 %2013, i64 26, i64 206
  %2021 = add i64 %1963, %.v36
  store i64 %2021, i64* %3, align 8
  br i1 %2013, label %block_4088e8, label %block_.L_40899c

block_4088e8:                                     ; preds = %block_.L_4088ce
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2022 = add i64 %2021, 13
  store i64 %2022, i64* %3, align 8
  %2023 = load i32, i32* %1599, align 4
  %2024 = add i32 %2023, -20
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i942, align 8
  %2026 = icmp ult i32 %2023, 20
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %25, align 1
  %2028 = and i32 %2024, 255
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %26, align 1
  %2033 = xor i32 %2023, 16
  %2034 = xor i32 %2033, %2024
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %27, align 1
  %2038 = icmp eq i32 %2024, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %28, align 1
  %2040 = lshr i32 %2024, 31
  %2041 = trunc i32 %2040 to i8
  store i8 %2041, i8* %30, align 1
  %2042 = lshr i32 %2023, 31
  %2043 = xor i32 %2040, %2042
  %2044 = add nuw nsw i32 %2043, %2042
  %2045 = icmp eq i32 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %31, align 1
  %2047 = sext i32 %2024 to i64
  store i64 %2047, i64* %RDX.i937, align 8
  %2048 = shl nsw i64 %2047, 2
  %2049 = add nsw i64 %2048, 11187184
  %2050 = add i64 %2021, 27
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = sext i32 %2052 to i64
  %2054 = mul nsw i64 %2053, 744
  store i64 %2054, i64* %RDX.i937, align 8
  %2055 = lshr i64 %2054, 63
  %2056 = add i64 %2054, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2056, i64* %RAX.i944, align 8
  %2057 = icmp ult i64 %2056, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2058 = icmp ult i64 %2056, %2054
  %2059 = or i1 %2057, %2058
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %25, align 1
  %2061 = trunc i64 %2056 to i32
  %2062 = and i32 %2061, 248
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %26, align 1
  %2067 = xor i64 %2054, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2068 = xor i64 %2067, %2056
  %2069 = lshr i64 %2068, 4
  %2070 = trunc i64 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %27, align 1
  %2072 = icmp eq i64 %2056, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %28, align 1
  %2074 = lshr i64 %2056, 63
  %2075 = trunc i64 %2074 to i8
  store i8 %2075, i8* %30, align 1
  %2076 = xor i64 %2074, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2077 = xor i64 %2074, %2055
  %2078 = add nuw nsw i64 %2076, %2077
  %2079 = icmp eq i64 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %31, align 1
  %2081 = add i64 %2054, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2082 = add i64 %2021, 43
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  %2084 = load i32, i32* %2083, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RCX.i942, align 8
  %2086 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2087 = sub i32 %2084, %2086
  %2088 = icmp ult i32 %2084, %2086
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %25, align 1
  %2090 = and i32 %2087, 255
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  store i8 %2094, i8* %26, align 1
  %2095 = xor i32 %2086, %2084
  %2096 = xor i32 %2095, %2087
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %27, align 1
  %2100 = icmp eq i32 %2087, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %28, align 1
  %2102 = lshr i32 %2087, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %30, align 1
  %2104 = lshr i32 %2084, 31
  %2105 = lshr i32 %2086, 31
  %2106 = xor i32 %2105, %2104
  %2107 = xor i32 %2102, %2104
  %2108 = add nuw nsw i32 %2107, %2106
  %2109 = icmp eq i32 %2108, 2
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %31, align 1
  %.v43 = select i1 %2100, i64 180, i64 56
  %2111 = add i64 %2021, %.v43
  store i64 %2111, i64* %3, align 8
  br i1 %2100, label %block_.L_40899c, label %block_408920

block_408920:                                     ; preds = %block_4088e8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -8
  %2114 = add i64 %2111, 13
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = add i32 %2116, -20
  %2118 = zext i32 %2117 to i64
  store i64 %2118, i64* %RCX.i942, align 8
  %2119 = icmp ult i32 %2116, 20
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %25, align 1
  %2121 = and i32 %2117, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %26, align 1
  %2126 = xor i32 %2116, 16
  %2127 = xor i32 %2126, %2117
  %2128 = lshr i32 %2127, 4
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %27, align 1
  %2131 = icmp eq i32 %2117, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %28, align 1
  %2133 = lshr i32 %2117, 31
  %2134 = trunc i32 %2133 to i8
  store i8 %2134, i8* %30, align 1
  %2135 = lshr i32 %2116, 31
  %2136 = xor i32 %2133, %2135
  %2137 = add nuw nsw i32 %2136, %2135
  %2138 = icmp eq i32 %2137, 2
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %31, align 1
  %2140 = sext i32 %2117 to i64
  store i64 %2140, i64* %RDX.i937, align 8
  %2141 = shl nsw i64 %2140, 2
  %2142 = add nsw i64 %2141, 11187184
  %2143 = add i64 %2111, 26
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2142 to i32*
  %2145 = load i32, i32* %2144, align 4
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RCX.i942, align 8
  %2147 = add i64 %2112, -4
  %2148 = add i64 %2111, 30
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = sext i32 %2150 to i64
  %2152 = mul nsw i64 %2151, 744
  store i64 %2152, i64* %RDX.i937, align 8
  %2153 = lshr i64 %2152, 63
  %2154 = add i64 %2152, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2154, i64* %RSI.i933, align 8
  %2155 = icmp ult i64 %2154, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2156 = icmp ult i64 %2154, %2152
  %2157 = or i1 %2155, %2156
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %25, align 1
  %2159 = trunc i64 %2154 to i32
  %2160 = and i32 %2159, 248
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %26, align 1
  %2165 = xor i64 %2152, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2166 = xor i64 %2165, %2154
  %2167 = lshr i64 %2166, 4
  %2168 = trunc i64 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %27, align 1
  %2170 = icmp eq i64 %2154, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %28, align 1
  %2172 = lshr i64 %2154, 63
  %2173 = trunc i64 %2172 to i8
  store i8 %2173, i8* %30, align 1
  %2174 = xor i64 %2172, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2175 = xor i64 %2172, %2153
  %2176 = add nuw nsw i64 %2174, %2175
  %2177 = icmp eq i64 %2176, 2
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %31, align 1
  %2179 = load i64, i64* %RBP.i, align 8
  %2180 = add i64 %2179, -4
  %2181 = add i64 %2111, 47
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = sext i32 %2183 to i64
  %2185 = mul nsw i64 %2184, 744
  store i64 %2185, i64* %RDX.i937, align 8
  %2186 = lshr i64 %2185, 63
  %2187 = load i64, i64* %RAX.i944, align 8
  %2188 = add i64 %2185, %2187
  store i64 %2188, i64* %RDI.i722, align 8
  %2189 = icmp ult i64 %2188, %2187
  %2190 = icmp ult i64 %2188, %2185
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %25, align 1
  %2193 = trunc i64 %2188 to i32
  %2194 = and i32 %2193, 255
  %2195 = tail call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  store i8 %2198, i8* %26, align 1
  %2199 = xor i64 %2185, %2187
  %2200 = xor i64 %2199, %2188
  %2201 = lshr i64 %2200, 4
  %2202 = trunc i64 %2201 to i8
  %2203 = and i8 %2202, 1
  store i8 %2203, i8* %27, align 1
  %2204 = icmp eq i64 %2188, 0
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %28, align 1
  %2206 = lshr i64 %2188, 63
  %2207 = trunc i64 %2206 to i8
  store i8 %2207, i8* %30, align 1
  %2208 = lshr i64 %2187, 63
  %2209 = xor i64 %2206, %2208
  %2210 = xor i64 %2206, %2186
  %2211 = add nuw nsw i64 %2209, %2210
  %2212 = icmp eq i64 %2211, 2
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %31, align 1
  %2214 = add i64 %2188, 96
  %2215 = add i64 %2111, 64
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i32*
  %2217 = load i32, i32* %2216, align 4
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %141, align 8
  %2219 = add i32 %2217, 1
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %142, align 8
  %2221 = icmp eq i32 %2217, -1
  %2222 = icmp eq i32 %2219, 0
  %2223 = or i1 %2221, %2222
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %25, align 1
  %2225 = and i32 %2219, 255
  %2226 = tail call i32 @llvm.ctpop.i32(i32 %2225)
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  store i8 %2229, i8* %26, align 1
  %2230 = xor i32 %2219, %2217
  %2231 = lshr i32 %2230, 4
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  store i8 %2233, i8* %27, align 1
  %2234 = zext i1 %2222 to i8
  store i8 %2234, i8* %28, align 1
  %2235 = lshr i32 %2219, 31
  %2236 = trunc i32 %2235 to i8
  store i8 %2236, i8* %30, align 1
  %2237 = lshr i32 %2217, 31
  %2238 = xor i32 %2235, %2237
  %2239 = add nuw nsw i32 %2238, %2235
  %2240 = icmp eq i32 %2239, 2
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %31, align 1
  %2242 = add i64 %2111, 75
  store i64 %2242, i64* %3, align 8
  store i32 %2219, i32* %2216, align 4
  %2243 = load i32, i32* %R8D.i715, align 4
  %2244 = load i64, i64* %3, align 8
  %2245 = sext i32 %2243 to i64
  store i64 %2245, i64* %RDX.i937, align 8
  %2246 = load i64, i64* %RSI.i933, align 8
  %2247 = shl nsw i64 %2245, 2
  %2248 = add nsw i64 %2247, 100
  %2249 = add i64 %2248, %2246
  %2250 = load i32, i32* %ECX.i923, align 4
  %2251 = add i64 %2244, 7
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2249 to i32*
  store i32 %2250, i32* %2252, align 4
  %2253 = load i64, i64* %3, align 8
  %2254 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RCX.i942, align 8
  %2256 = load i64, i64* %RBP.i, align 8
  %2257 = add i64 %2256, -8
  %2258 = add i64 %2253, 11
  store i64 %2258, i64* %3, align 8
  %2259 = inttoptr i64 %2257 to i32*
  %2260 = load i32, i32* %2259, align 4
  %2261 = add i32 %2260, -20
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %141, align 8
  %2263 = icmp ult i32 %2260, 20
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %25, align 1
  %2265 = and i32 %2261, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %26, align 1
  %2270 = xor i32 %2260, 16
  %2271 = xor i32 %2270, %2261
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %27, align 1
  %2275 = icmp eq i32 %2261, 0
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %28, align 1
  %2277 = lshr i32 %2261, 31
  %2278 = trunc i32 %2277 to i8
  store i8 %2278, i8* %30, align 1
  %2279 = lshr i32 %2260, 31
  %2280 = xor i32 %2277, %2279
  %2281 = add nuw nsw i32 %2280, %2279
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %31, align 1
  %2284 = sext i32 %2261 to i64
  store i64 %2284, i64* %RDX.i937, align 8
  %2285 = shl nsw i64 %2284, 2
  %2286 = add nsw i64 %2285, 11187184
  %2287 = add i64 %2253, 26
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = sext i32 %2289 to i64
  %2291 = mul nsw i64 %2290, 744
  store i64 %2291, i64* %RDX.i937, align 8
  %2292 = lshr i64 %2291, 63
  %2293 = load i64, i64* %RAX.i944, align 8
  %2294 = add i64 %2291, %2293
  store i64 %2294, i64* %RAX.i944, align 8
  %2295 = icmp ult i64 %2294, %2293
  %2296 = icmp ult i64 %2294, %2291
  %2297 = or i1 %2295, %2296
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %25, align 1
  %2299 = trunc i64 %2294 to i32
  %2300 = and i32 %2299, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %26, align 1
  %2305 = xor i64 %2291, %2293
  %2306 = xor i64 %2305, %2294
  %2307 = lshr i64 %2306, 4
  %2308 = trunc i64 %2307 to i8
  %2309 = and i8 %2308, 1
  store i8 %2309, i8* %27, align 1
  %2310 = icmp eq i64 %2294, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %28, align 1
  %2312 = lshr i64 %2294, 63
  %2313 = trunc i64 %2312 to i8
  store i8 %2313, i8* %30, align 1
  %2314 = lshr i64 %2293, 63
  %2315 = xor i64 %2312, %2314
  %2316 = xor i64 %2312, %2292
  %2317 = add nuw nsw i64 %2315, %2316
  %2318 = icmp eq i64 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %31, align 1
  %2320 = add i64 %2294, 740
  %2321 = load i32, i32* %ECX.i923, align 4
  %2322 = add i64 %2253, 42
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2320 to i32*
  store i32 %2321, i32* %2323, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_40899c

block_.L_40899c:                                  ; preds = %block_.L_4088ce, %block_408920, %block_4088e8
  %2324 = phi i64 [ %.pre29, %block_408920 ], [ %2111, %block_4088e8 ], [ %2021, %block_.L_4088ce ]
  %2325 = add i64 %2324, 5
  store i64 %2325, i64* %3, align 8
  br label %block_.L_4089a1

block_.L_4089a1:                                  ; preds = %block_.L_40899c, %block_.L_408891
  %storemerge22 = phi i64 [ %1962, %block_.L_408891 ], [ %2325, %block_.L_40899c ]
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -8
  %2328 = add i64 %storemerge22, 3
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = add i32 %2330, 1
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RAX.i944, align 8
  %2333 = icmp eq i32 %2330, -1
  %2334 = icmp eq i32 %2331, 0
  %2335 = or i1 %2333, %2334
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %25, align 1
  %2337 = and i32 %2331, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %26, align 1
  %2342 = xor i32 %2331, %2330
  %2343 = lshr i32 %2342, 4
  %2344 = trunc i32 %2343 to i8
  %2345 = and i8 %2344, 1
  store i8 %2345, i8* %27, align 1
  %2346 = zext i1 %2334 to i8
  store i8 %2346, i8* %28, align 1
  %2347 = lshr i32 %2331, 31
  %2348 = trunc i32 %2347 to i8
  store i8 %2348, i8* %30, align 1
  %2349 = lshr i32 %2330, 31
  %2350 = xor i32 %2347, %2349
  %2351 = add nuw nsw i32 %2350, %2347
  %2352 = icmp eq i32 %2351, 2
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %31, align 1
  %2354 = sext i32 %2331 to i64
  store i64 %2354, i64* %RCX.i942, align 8
  %2355 = add nsw i64 %2354, 12099168
  %2356 = add i64 %storemerge22, 17
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i8*
  %2358 = load i8, i8* %2357, align 1
  %2359 = zext i8 %2358 to i64
  store i64 %2359, i64* %RAX.i944, align 8
  %2360 = zext i8 %2358 to i32
  store i8 0, i8* %25, align 1
  %2361 = tail call i32 @llvm.ctpop.i32(i32 %2360)
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  store i8 %2364, i8* %26, align 1
  store i8 0, i8* %27, align 1
  %2365 = icmp eq i8 %2358, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %28, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v37 = select i1 %2365, i64 26, i64 210
  %2367 = add i64 %storemerge22, %.v37
  store i64 %2367, i64* %3, align 8
  br i1 %2365, label %block_4089bb, label %block_.L_408a73

block_4089bb:                                     ; preds = %block_.L_4089a1
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %3, align 8
  %2369 = load i32, i32* %2329, align 4
  %2370 = add i32 %2369, 1
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i944, align 8
  %2372 = icmp eq i32 %2369, -1
  %2373 = icmp eq i32 %2370, 0
  %2374 = or i1 %2372, %2373
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %25, align 1
  %2376 = and i32 %2370, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %26, align 1
  %2381 = xor i32 %2370, %2369
  %2382 = lshr i32 %2381, 4
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  store i8 %2384, i8* %27, align 1
  %2385 = zext i1 %2373 to i8
  store i8 %2385, i8* %28, align 1
  %2386 = lshr i32 %2370, 31
  %2387 = trunc i32 %2386 to i8
  store i8 %2387, i8* %30, align 1
  %2388 = lshr i32 %2369, 31
  %2389 = xor i32 %2386, %2388
  %2390 = add nuw nsw i32 %2389, %2386
  %2391 = icmp eq i32 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %31, align 1
  %2393 = sext i32 %2370 to i64
  store i64 %2393, i64* %RCX.i942, align 8
  %2394 = shl nsw i64 %2393, 2
  %2395 = add nsw i64 %2394, 11185584
  %2396 = add i64 %2367, 16
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RAX.i944, align 8
  %2400 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2401 = sub i32 %2398, %2400
  %2402 = icmp ult i32 %2398, %2400
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %25, align 1
  %2404 = and i32 %2401, 255
  %2405 = tail call i32 @llvm.ctpop.i32(i32 %2404)
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  %2408 = xor i8 %2407, 1
  store i8 %2408, i8* %26, align 1
  %2409 = xor i32 %2400, %2398
  %2410 = xor i32 %2409, %2401
  %2411 = lshr i32 %2410, 4
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  store i8 %2413, i8* %27, align 1
  %2414 = icmp eq i32 %2401, 0
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %28, align 1
  %2416 = lshr i32 %2401, 31
  %2417 = trunc i32 %2416 to i8
  store i8 %2417, i8* %30, align 1
  %2418 = lshr i32 %2398, 31
  %2419 = lshr i32 %2400, 31
  %2420 = xor i32 %2419, %2418
  %2421 = xor i32 %2416, %2418
  %2422 = add nuw nsw i32 %2421, %2420
  %2423 = icmp eq i32 %2422, 2
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %31, align 1
  %.v41 = select i1 %2414, i64 184, i64 29
  %2425 = add i64 %2367, %.v41
  store i64 %2425, i64* %3, align 8
  br i1 %2414, label %block_.L_408a73, label %block_4089d8

block_4089d8:                                     ; preds = %block_4089bb
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2426 = add i64 %2326, -4
  %2427 = add i64 %2425, 19
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i32*
  %2429 = load i32, i32* %2428, align 4
  %2430 = sext i32 %2429 to i64
  %2431 = mul nsw i64 %2430, 744
  store i64 %2431, i64* %RCX.i942, align 8
  %2432 = lshr i64 %2431, 63
  %2433 = add i64 %2431, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2433, i64* %RAX.i944, align 8
  %2434 = icmp ult i64 %2433, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2435 = icmp ult i64 %2433, %2431
  %2436 = or i1 %2434, %2435
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %25, align 1
  %2438 = trunc i64 %2433 to i32
  %2439 = and i32 %2438, 248
  %2440 = tail call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  store i8 %2443, i8* %26, align 1
  %2444 = xor i64 %2431, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2445 = xor i64 %2444, %2433
  %2446 = lshr i64 %2445, 4
  %2447 = trunc i64 %2446 to i8
  %2448 = and i8 %2447, 1
  store i8 %2448, i8* %27, align 1
  %2449 = icmp eq i64 %2433, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %28, align 1
  %2451 = lshr i64 %2433, 63
  %2452 = trunc i64 %2451 to i8
  store i8 %2452, i8* %30, align 1
  %2453 = xor i64 %2451, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2454 = xor i64 %2451, %2432
  %2455 = add nuw nsw i64 %2453, %2454
  %2456 = icmp eq i64 %2455, 2
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %31, align 1
  %2458 = add i64 %2431, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2459 = add i64 %2425, 33
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2458 to i32*
  %2461 = load i32, i32* %2460, align 4
  %2462 = add i32 %2461, -20
  %2463 = icmp ult i32 %2461, 20
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %25, align 1
  %2465 = and i32 %2462, 255
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  store i8 %2469, i8* %26, align 1
  %2470 = xor i32 %2461, 16
  %2471 = xor i32 %2470, %2462
  %2472 = lshr i32 %2471, 4
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  store i8 %2474, i8* %27, align 1
  %2475 = icmp eq i32 %2462, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %28, align 1
  %2477 = lshr i32 %2462, 31
  %2478 = trunc i32 %2477 to i8
  store i8 %2478, i8* %30, align 1
  %2479 = lshr i32 %2461, 31
  %2480 = xor i32 %2477, %2479
  %2481 = add nuw nsw i32 %2480, %2479
  %2482 = icmp eq i32 %2481, 2
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %31, align 1
  %2484 = icmp ne i8 %2478, 0
  %2485 = xor i1 %2484, %2482
  %.v42 = select i1 %2485, i64 39, i64 94
  %2486 = add i64 %2425, %.v42
  store i64 %2486, i64* %3, align 8
  br i1 %2485, label %block_4089ff, label %block_.L_408a36

block_4089ff:                                     ; preds = %block_4089d8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2487 = load i64, i64* %RBP.i, align 8
  %2488 = add i64 %2487, -8
  %2489 = add i64 %2486, 13
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = add i32 %2491, 1
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RCX.i942, align 8
  %2494 = icmp eq i32 %2491, -1
  %2495 = icmp eq i32 %2492, 0
  %2496 = or i1 %2494, %2495
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %25, align 1
  %2498 = and i32 %2492, 255
  %2499 = tail call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  store i8 %2502, i8* %26, align 1
  %2503 = xor i32 %2492, %2491
  %2504 = lshr i32 %2503, 4
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  store i8 %2506, i8* %27, align 1
  %2507 = zext i1 %2495 to i8
  store i8 %2507, i8* %28, align 1
  %2508 = lshr i32 %2492, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %30, align 1
  %2510 = lshr i32 %2491, 31
  %2511 = xor i32 %2508, %2510
  %2512 = add nuw nsw i32 %2511, %2508
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %31, align 1
  %2515 = add i64 %2487, -4
  %2516 = add i64 %2486, 20
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = sext i32 %2518 to i64
  %2520 = mul nsw i64 %2519, 744
  store i64 %2520, i64* %RDX.i937, align 8
  %2521 = lshr i64 %2520, 63
  %2522 = add i64 %2520, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2522, i64* %RSI.i933, align 8
  %2523 = icmp ult i64 %2522, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2524 = icmp ult i64 %2522, %2520
  %2525 = or i1 %2523, %2524
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %25, align 1
  %2527 = trunc i64 %2522 to i32
  %2528 = and i32 %2527, 248
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %26, align 1
  %2533 = xor i64 %2520, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2534 = xor i64 %2533, %2522
  %2535 = lshr i64 %2534, 4
  %2536 = trunc i64 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %27, align 1
  %2538 = icmp eq i64 %2522, 0
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %28, align 1
  %2540 = lshr i64 %2522, 63
  %2541 = trunc i64 %2540 to i8
  store i8 %2541, i8* %30, align 1
  %2542 = xor i64 %2540, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2543 = xor i64 %2540, %2521
  %2544 = add nuw nsw i64 %2542, %2543
  %2545 = icmp eq i64 %2544, 2
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %31, align 1
  %2547 = load i64, i64* %RBP.i, align 8
  %2548 = add i64 %2547, -4
  %2549 = add i64 %2486, 37
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = sext i32 %2551 to i64
  %2553 = mul nsw i64 %2552, 744
  store i64 %2553, i64* %RDX.i937, align 8
  %2554 = lshr i64 %2553, 63
  %2555 = load i64, i64* %RAX.i944, align 8
  %2556 = add i64 %2553, %2555
  store i64 %2556, i64* %RAX.i944, align 8
  %2557 = icmp ult i64 %2556, %2555
  %2558 = icmp ult i64 %2556, %2553
  %2559 = or i1 %2557, %2558
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %25, align 1
  %2561 = trunc i64 %2556 to i32
  %2562 = and i32 %2561, 255
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %26, align 1
  %2567 = xor i64 %2553, %2555
  %2568 = xor i64 %2567, %2556
  %2569 = lshr i64 %2568, 4
  %2570 = trunc i64 %2569 to i8
  %2571 = and i8 %2570, 1
  store i8 %2571, i8* %27, align 1
  %2572 = icmp eq i64 %2556, 0
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %28, align 1
  %2574 = lshr i64 %2556, 63
  %2575 = trunc i64 %2574 to i8
  store i8 %2575, i8* %30, align 1
  %2576 = lshr i64 %2555, 63
  %2577 = xor i64 %2574, %2576
  %2578 = xor i64 %2574, %2554
  %2579 = add nuw nsw i64 %2577, %2578
  %2580 = icmp eq i64 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %31, align 1
  %2582 = add i64 %2556, 12
  %2583 = add i64 %2486, 51
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = sext i32 %2585 to i64
  store i64 %2586, i64* %RAX.i944, align 8
  %2587 = load i64, i64* %RSI.i933, align 8
  %2588 = shl nsw i64 %2586, 2
  %2589 = add i64 %2587, 16
  %2590 = add i64 %2589, %2588
  %2591 = load i32, i32* %ECX.i923, align 4
  %2592 = add i64 %2486, 55
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2590 to i32*
  store i32 %2591, i32* %2593, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_408a36

block_.L_408a36:                                  ; preds = %block_4089d8, %block_4089ff
  %2594 = phi i64 [ %2486, %block_4089d8 ], [ %.pre30, %block_4089ff ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2595 = load i64, i64* %RBP.i, align 8
  %2596 = add i64 %2595, -4
  %2597 = add i64 %2594, 14
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = sext i32 %2599 to i64
  %2601 = mul nsw i64 %2600, 744
  store i64 %2601, i64* %RCX.i942, align 8
  %2602 = lshr i64 %2601, 63
  %2603 = add i64 %2601, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2603, i64* %RAX.i944, align 8
  %2604 = icmp ult i64 %2603, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2605 = icmp ult i64 %2603, %2601
  %2606 = or i1 %2604, %2605
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %25, align 1
  %2608 = trunc i64 %2603 to i32
  %2609 = and i32 %2608, 248
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %26, align 1
  %2614 = xor i64 %2601, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2615 = xor i64 %2614, %2603
  %2616 = lshr i64 %2615, 4
  %2617 = trunc i64 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %27, align 1
  %2619 = icmp eq i64 %2603, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %28, align 1
  %2621 = lshr i64 %2603, 63
  %2622 = trunc i64 %2621 to i8
  store i8 %2622, i8* %30, align 1
  %2623 = xor i64 %2621, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2624 = xor i64 %2621, %2602
  %2625 = add nuw nsw i64 %2623, %2624
  %2626 = icmp eq i64 %2625, 2
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %31, align 1
  %2628 = add i64 %2601, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2629 = add i64 %2594, 27
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = add i32 %2631, 1
  %2633 = icmp eq i32 %2631, -1
  %2634 = icmp eq i32 %2632, 0
  %2635 = or i1 %2633, %2634
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %25, align 1
  %2637 = and i32 %2632, 255
  %2638 = tail call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  store i8 %2641, i8* %26, align 1
  %2642 = xor i32 %2632, %2631
  %2643 = lshr i32 %2642, 4
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  store i8 %2645, i8* %27, align 1
  %2646 = zext i1 %2634 to i8
  store i8 %2646, i8* %28, align 1
  %2647 = lshr i32 %2632, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %30, align 1
  %2649 = lshr i32 %2631, 31
  %2650 = xor i32 %2647, %2649
  %2651 = add nuw nsw i32 %2650, %2647
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %31, align 1
  %2654 = add i64 %2594, 33
  store i64 %2654, i64* %3, align 8
  store i32 %2632, i32* %2630, align 4
  %2655 = load i64, i64* %3, align 8
  %2656 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RDX.i937, align 8
  %2658 = load i64, i64* %RBP.i, align 8
  %2659 = add i64 %2658, -8
  %2660 = add i64 %2655, 10
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = add i32 %2662, 1
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RSI.i933, align 8
  %2665 = icmp eq i32 %2662, -1
  %2666 = icmp eq i32 %2663, 0
  %2667 = or i1 %2665, %2666
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %25, align 1
  %2669 = and i32 %2663, 255
  %2670 = tail call i32 @llvm.ctpop.i32(i32 %2669)
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = xor i8 %2672, 1
  store i8 %2673, i8* %26, align 1
  %2674 = xor i32 %2663, %2662
  %2675 = lshr i32 %2674, 4
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  store i8 %2677, i8* %27, align 1
  %2678 = zext i1 %2666 to i8
  store i8 %2678, i8* %28, align 1
  %2679 = lshr i32 %2663, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %30, align 1
  %2681 = lshr i32 %2662, 31
  %2682 = xor i32 %2679, %2681
  %2683 = add nuw nsw i32 %2682, %2679
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %31, align 1
  %2686 = sext i32 %2663 to i64
  store i64 %2686, i64* %RAX.i944, align 8
  %2687 = shl nsw i64 %2686, 2
  %2688 = add nsw i64 %2687, 11185584
  %2689 = add i64 %2655, 23
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  store i32 %2656, i32* %2690, align 4
  %2691 = load i64, i64* %3, align 8
  %2692 = add i64 %2691, 216
  br label %block_.L_408b46

block_.L_408a73:                                  ; preds = %block_.L_4089a1, %block_4089bb
  %2693 = phi i64 [ %2425, %block_4089bb ], [ %2367, %block_.L_4089a1 ]
  %2694 = add i64 %2693, 3
  store i64 %2694, i64* %3, align 8
  %2695 = load i32, i32* %2329, align 4
  %2696 = add i32 %2695, 1
  %2697 = zext i32 %2696 to i64
  store i64 %2697, i64* %RAX.i944, align 8
  %2698 = icmp eq i32 %2695, -1
  %2699 = icmp eq i32 %2696, 0
  %2700 = or i1 %2698, %2699
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %25, align 1
  %2702 = and i32 %2696, 255
  %2703 = tail call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  store i8 %2706, i8* %26, align 1
  %2707 = xor i32 %2696, %2695
  %2708 = lshr i32 %2707, 4
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  store i8 %2710, i8* %27, align 1
  %2711 = zext i1 %2699 to i8
  store i8 %2711, i8* %28, align 1
  %2712 = lshr i32 %2696, 31
  %2713 = trunc i32 %2712 to i8
  store i8 %2713, i8* %30, align 1
  %2714 = lshr i32 %2695, 31
  %2715 = xor i32 %2712, %2714
  %2716 = add nuw nsw i32 %2715, %2712
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %31, align 1
  %2719 = sext i32 %2696 to i64
  store i64 %2719, i64* %RCX.i942, align 8
  %2720 = add nsw i64 %2719, 12099168
  %2721 = add i64 %2693, 17
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i8*
  %2723 = load i8, i8* %2722, align 1
  %2724 = zext i8 %2723 to i64
  store i64 %2724, i64* %RAX.i944, align 8
  %2725 = zext i8 %2723 to i32
  %2726 = add i64 %2326, -12
  %2727 = add i64 %2693, 20
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = sub i32 %2725, %2729
  %2731 = icmp ult i32 %2725, %2729
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %25, align 1
  %2733 = and i32 %2730, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %26, align 1
  %2738 = xor i32 %2729, %2725
  %2739 = xor i32 %2738, %2730
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  store i8 %2742, i8* %27, align 1
  %2743 = icmp eq i32 %2730, 0
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %28, align 1
  %2745 = lshr i32 %2730, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %30, align 1
  %2747 = lshr i32 %2729, 31
  %2748 = add nuw nsw i32 %2745, %2747
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %31, align 1
  %.v38 = select i1 %2743, i64 26, i64 206
  %2751 = add i64 %2693, %.v38
  store i64 %2751, i64* %3, align 8
  br i1 %2743, label %block_408a8d, label %block_.L_408b41

block_408a8d:                                     ; preds = %block_.L_408a73
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2752 = add i64 %2751, 13
  store i64 %2752, i64* %3, align 8
  %2753 = load i32, i32* %2329, align 4
  %2754 = add i32 %2753, 1
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i942, align 8
  %2756 = icmp eq i32 %2753, -1
  %2757 = icmp eq i32 %2754, 0
  %2758 = or i1 %2756, %2757
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %25, align 1
  %2760 = and i32 %2754, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %26, align 1
  %2765 = xor i32 %2754, %2753
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %27, align 1
  %2769 = zext i1 %2757 to i8
  store i8 %2769, i8* %28, align 1
  %2770 = lshr i32 %2754, 31
  %2771 = trunc i32 %2770 to i8
  store i8 %2771, i8* %30, align 1
  %2772 = lshr i32 %2753, 31
  %2773 = xor i32 %2770, %2772
  %2774 = add nuw nsw i32 %2773, %2770
  %2775 = icmp eq i32 %2774, 2
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %31, align 1
  %2777 = sext i32 %2754 to i64
  store i64 %2777, i64* %RDX.i937, align 8
  %2778 = shl nsw i64 %2777, 2
  %2779 = add nsw i64 %2778, 11187184
  %2780 = add i64 %2751, 27
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  %2782 = load i32, i32* %2781, align 4
  %2783 = sext i32 %2782 to i64
  %2784 = mul nsw i64 %2783, 744
  store i64 %2784, i64* %RDX.i937, align 8
  %2785 = lshr i64 %2784, 63
  %2786 = add i64 %2784, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2786, i64* %RAX.i944, align 8
  %2787 = icmp ult i64 %2786, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2788 = icmp ult i64 %2786, %2784
  %2789 = or i1 %2787, %2788
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %25, align 1
  %2791 = trunc i64 %2786 to i32
  %2792 = and i32 %2791, 248
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %26, align 1
  %2797 = xor i64 %2784, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2798 = xor i64 %2797, %2786
  %2799 = lshr i64 %2798, 4
  %2800 = trunc i64 %2799 to i8
  %2801 = and i8 %2800, 1
  store i8 %2801, i8* %27, align 1
  %2802 = icmp eq i64 %2786, 0
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %28, align 1
  %2804 = lshr i64 %2786, 63
  %2805 = trunc i64 %2804 to i8
  store i8 %2805, i8* %30, align 1
  %2806 = xor i64 %2804, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2807 = xor i64 %2804, %2785
  %2808 = add nuw nsw i64 %2806, %2807
  %2809 = icmp eq i64 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %31, align 1
  %2811 = add i64 %2784, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2812 = add i64 %2751, 43
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RCX.i942, align 8
  %2816 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2817 = sub i32 %2814, %2816
  %2818 = icmp ult i32 %2814, %2816
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %25, align 1
  %2820 = and i32 %2817, 255
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820)
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %26, align 1
  %2825 = xor i32 %2816, %2814
  %2826 = xor i32 %2825, %2817
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %27, align 1
  %2830 = icmp eq i32 %2817, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %28, align 1
  %2832 = lshr i32 %2817, 31
  %2833 = trunc i32 %2832 to i8
  store i8 %2833, i8* %30, align 1
  %2834 = lshr i32 %2814, 31
  %2835 = lshr i32 %2816, 31
  %2836 = xor i32 %2835, %2834
  %2837 = xor i32 %2832, %2834
  %2838 = add nuw nsw i32 %2837, %2836
  %2839 = icmp eq i32 %2838, 2
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %31, align 1
  %.v40 = select i1 %2830, i64 180, i64 56
  %2841 = add i64 %2751, %.v40
  store i64 %2841, i64* %3, align 8
  br i1 %2830, label %block_.L_408b41, label %block_408ac5

block_408ac5:                                     ; preds = %block_408a8d
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %2842 = load i64, i64* %RBP.i, align 8
  %2843 = add i64 %2842, -8
  %2844 = add i64 %2841, 13
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = add i32 %2846, 1
  %2848 = zext i32 %2847 to i64
  store i64 %2848, i64* %RCX.i942, align 8
  %2849 = icmp eq i32 %2846, -1
  %2850 = icmp eq i32 %2847, 0
  %2851 = or i1 %2849, %2850
  %2852 = zext i1 %2851 to i8
  store i8 %2852, i8* %25, align 1
  %2853 = and i32 %2847, 255
  %2854 = tail call i32 @llvm.ctpop.i32(i32 %2853)
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = xor i8 %2856, 1
  store i8 %2857, i8* %26, align 1
  %2858 = xor i32 %2847, %2846
  %2859 = lshr i32 %2858, 4
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  store i8 %2861, i8* %27, align 1
  %2862 = zext i1 %2850 to i8
  store i8 %2862, i8* %28, align 1
  %2863 = lshr i32 %2847, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %30, align 1
  %2865 = lshr i32 %2846, 31
  %2866 = xor i32 %2863, %2865
  %2867 = add nuw nsw i32 %2866, %2863
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %31, align 1
  %2870 = sext i32 %2847 to i64
  store i64 %2870, i64* %RDX.i937, align 8
  %2871 = shl nsw i64 %2870, 2
  %2872 = add nsw i64 %2871, 11187184
  %2873 = add i64 %2841, 26
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i32*
  %2875 = load i32, i32* %2874, align 4
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RCX.i942, align 8
  %2877 = add i64 %2842, -4
  %2878 = add i64 %2841, 30
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = sext i32 %2880 to i64
  %2882 = mul nsw i64 %2881, 744
  store i64 %2882, i64* %RDX.i937, align 8
  %2883 = lshr i64 %2882, 63
  %2884 = add i64 %2882, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2884, i64* %RSI.i933, align 8
  %2885 = icmp ult i64 %2884, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2886 = icmp ult i64 %2884, %2882
  %2887 = or i1 %2885, %2886
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %25, align 1
  %2889 = trunc i64 %2884 to i32
  %2890 = and i32 %2889, 248
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %26, align 1
  %2895 = xor i64 %2882, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2896 = xor i64 %2895, %2884
  %2897 = lshr i64 %2896, 4
  %2898 = trunc i64 %2897 to i8
  %2899 = and i8 %2898, 1
  store i8 %2899, i8* %27, align 1
  %2900 = icmp eq i64 %2884, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %28, align 1
  %2902 = lshr i64 %2884, 63
  %2903 = trunc i64 %2902 to i8
  store i8 %2903, i8* %30, align 1
  %2904 = xor i64 %2902, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2905 = xor i64 %2902, %2883
  %2906 = add nuw nsw i64 %2904, %2905
  %2907 = icmp eq i64 %2906, 2
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %31, align 1
  %2909 = load i64, i64* %RBP.i, align 8
  %2910 = add i64 %2909, -4
  %2911 = add i64 %2841, 47
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = sext i32 %2913 to i64
  %2915 = mul nsw i64 %2914, 744
  store i64 %2915, i64* %RDX.i937, align 8
  %2916 = lshr i64 %2915, 63
  %2917 = load i64, i64* %RAX.i944, align 8
  %2918 = add i64 %2915, %2917
  store i64 %2918, i64* %RDI.i722, align 8
  %2919 = icmp ult i64 %2918, %2917
  %2920 = icmp ult i64 %2918, %2915
  %2921 = or i1 %2919, %2920
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %25, align 1
  %2923 = trunc i64 %2918 to i32
  %2924 = and i32 %2923, 255
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %26, align 1
  %2929 = xor i64 %2915, %2917
  %2930 = xor i64 %2929, %2918
  %2931 = lshr i64 %2930, 4
  %2932 = trunc i64 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %27, align 1
  %2934 = icmp eq i64 %2918, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %28, align 1
  %2936 = lshr i64 %2918, 63
  %2937 = trunc i64 %2936 to i8
  store i8 %2937, i8* %30, align 1
  %2938 = lshr i64 %2917, 63
  %2939 = xor i64 %2936, %2938
  %2940 = xor i64 %2936, %2916
  %2941 = add nuw nsw i64 %2939, %2940
  %2942 = icmp eq i64 %2941, 2
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %31, align 1
  %2944 = add i64 %2918, 96
  %2945 = add i64 %2841, 64
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i32*
  %2947 = load i32, i32* %2946, align 4
  %2948 = zext i32 %2947 to i64
  store i64 %2948, i64* %141, align 8
  %2949 = add i32 %2947, 1
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %142, align 8
  %2951 = icmp eq i32 %2947, -1
  %2952 = icmp eq i32 %2949, 0
  %2953 = or i1 %2951, %2952
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %25, align 1
  %2955 = and i32 %2949, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %26, align 1
  %2960 = xor i32 %2949, %2947
  %2961 = lshr i32 %2960, 4
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %27, align 1
  %2964 = zext i1 %2952 to i8
  store i8 %2964, i8* %28, align 1
  %2965 = lshr i32 %2949, 31
  %2966 = trunc i32 %2965 to i8
  store i8 %2966, i8* %30, align 1
  %2967 = lshr i32 %2947, 31
  %2968 = xor i32 %2965, %2967
  %2969 = add nuw nsw i32 %2968, %2965
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %31, align 1
  %2972 = add i64 %2841, 75
  store i64 %2972, i64* %3, align 8
  store i32 %2949, i32* %2946, align 4
  %2973 = load i32, i32* %R8D.i715, align 4
  %2974 = load i64, i64* %3, align 8
  %2975 = sext i32 %2973 to i64
  store i64 %2975, i64* %RDX.i937, align 8
  %2976 = load i64, i64* %RSI.i933, align 8
  %2977 = shl nsw i64 %2975, 2
  %2978 = add nsw i64 %2977, 100
  %2979 = add i64 %2978, %2976
  %2980 = load i32, i32* %ECX.i923, align 4
  %2981 = add i64 %2974, 7
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2979 to i32*
  store i32 %2980, i32* %2982, align 4
  %2983 = load i64, i64* %3, align 8
  %2984 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RCX.i942, align 8
  %2986 = load i64, i64* %RBP.i, align 8
  %2987 = add i64 %2986, -8
  %2988 = add i64 %2983, 11
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i32*
  %2990 = load i32, i32* %2989, align 4
  %2991 = add i32 %2990, 1
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %141, align 8
  %2993 = icmp eq i32 %2990, -1
  %2994 = icmp eq i32 %2991, 0
  %2995 = or i1 %2993, %2994
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %25, align 1
  %2997 = and i32 %2991, 255
  %2998 = tail call i32 @llvm.ctpop.i32(i32 %2997)
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  %3001 = xor i8 %3000, 1
  store i8 %3001, i8* %26, align 1
  %3002 = xor i32 %2991, %2990
  %3003 = lshr i32 %3002, 4
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  store i8 %3005, i8* %27, align 1
  %3006 = zext i1 %2994 to i8
  store i8 %3006, i8* %28, align 1
  %3007 = lshr i32 %2991, 31
  %3008 = trunc i32 %3007 to i8
  store i8 %3008, i8* %30, align 1
  %3009 = lshr i32 %2990, 31
  %3010 = xor i32 %3007, %3009
  %3011 = add nuw nsw i32 %3010, %3007
  %3012 = icmp eq i32 %3011, 2
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %31, align 1
  %3014 = sext i32 %2991 to i64
  store i64 %3014, i64* %RDX.i937, align 8
  %3015 = shl nsw i64 %3014, 2
  %3016 = add nsw i64 %3015, 11187184
  %3017 = add i64 %2983, 26
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = sext i32 %3019 to i64
  %3021 = mul nsw i64 %3020, 744
  store i64 %3021, i64* %RDX.i937, align 8
  %3022 = lshr i64 %3021, 63
  %3023 = load i64, i64* %RAX.i944, align 8
  %3024 = add i64 %3021, %3023
  store i64 %3024, i64* %RAX.i944, align 8
  %3025 = icmp ult i64 %3024, %3023
  %3026 = icmp ult i64 %3024, %3021
  %3027 = or i1 %3025, %3026
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %25, align 1
  %3029 = trunc i64 %3024 to i32
  %3030 = and i32 %3029, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %26, align 1
  %3035 = xor i64 %3021, %3023
  %3036 = xor i64 %3035, %3024
  %3037 = lshr i64 %3036, 4
  %3038 = trunc i64 %3037 to i8
  %3039 = and i8 %3038, 1
  store i8 %3039, i8* %27, align 1
  %3040 = icmp eq i64 %3024, 0
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %28, align 1
  %3042 = lshr i64 %3024, 63
  %3043 = trunc i64 %3042 to i8
  store i8 %3043, i8* %30, align 1
  %3044 = lshr i64 %3023, 63
  %3045 = xor i64 %3042, %3044
  %3046 = xor i64 %3042, %3022
  %3047 = add nuw nsw i64 %3045, %3046
  %3048 = icmp eq i64 %3047, 2
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %31, align 1
  %3050 = add i64 %3024, 740
  %3051 = load i32, i32* %ECX.i923, align 4
  %3052 = add i64 %2983, 42
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3050 to i32*
  store i32 %3051, i32* %3053, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_408b41

block_.L_408b41:                                  ; preds = %block_.L_408a73, %block_408ac5, %block_408a8d
  %3054 = phi i64 [ %.pre31, %block_408ac5 ], [ %2841, %block_408a8d ], [ %2751, %block_.L_408a73 ]
  %3055 = add i64 %3054, 5
  store i64 %3055, i64* %3, align 8
  br label %block_.L_408b46

block_.L_408b46:                                  ; preds = %block_.L_408b41, %block_.L_408a36
  %storemerge23 = phi i64 [ %2692, %block_.L_408a36 ], [ %3055, %block_.L_408b41 ]
  %3056 = load i64, i64* %RBP.i, align 8
  %3057 = add i64 %3056, -8
  %3058 = add i64 %storemerge23, 4
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RAX.i944, align 8
  %3062 = shl nsw i64 %3061, 2
  %3063 = add nsw i64 %3062, 11188784
  %3064 = add i64 %storemerge23, 11
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RCX.i942, align 8
  %3068 = add i64 %storemerge23, 14
  store i64 %3068, i64* %3, align 8
  store i32 %3066, i32* %3059, align 4
  %3069 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i944, align 8
  %3070 = load i64, i64* %RBP.i, align 8
  %3071 = add i64 %3070, -8
  %3072 = add i64 %3069, 13
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3071 to i32*
  %3074 = load i32, i32* %3073, align 4
  %3075 = zext i32 %3074 to i64
  store i64 %3075, i64* %RCX.i942, align 8
  %3076 = add i64 %3070, -4
  %3077 = add i64 %3069, 17
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = sext i32 %3079 to i64
  %3081 = mul nsw i64 %3080, 744
  store i64 %3081, i64* %RDX.i937, align 8
  %3082 = lshr i64 %3081, 63
  %3083 = add i64 %3081, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3083, i64* %RAX.i944, align 8
  %3084 = icmp ult i64 %3083, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3085 = icmp ult i64 %3083, %3081
  %3086 = or i1 %3084, %3085
  %3087 = zext i1 %3086 to i8
  store i8 %3087, i8* %25, align 1
  %3088 = trunc i64 %3083 to i32
  %3089 = and i32 %3088, 248
  %3090 = tail call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  store i8 %3093, i8* %26, align 1
  %3094 = xor i64 %3081, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3095 = xor i64 %3094, %3083
  %3096 = lshr i64 %3095, 4
  %3097 = trunc i64 %3096 to i8
  %3098 = and i8 %3097, 1
  store i8 %3098, i8* %27, align 1
  %3099 = icmp eq i64 %3083, 0
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %28, align 1
  %3101 = lshr i64 %3083, 63
  %3102 = trunc i64 %3101 to i8
  store i8 %3102, i8* %30, align 1
  %3103 = xor i64 %3101, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3104 = xor i64 %3101, %3082
  %3105 = add nuw nsw i64 %3103, %3104
  %3106 = icmp eq i64 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %31, align 1
  %3108 = add i64 %3081, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  %3109 = add i64 %3069, 30
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 8
  %3112 = icmp eq i32 %3074, %3111
  %3113 = zext i1 %3112 to i8
  %3114 = xor i8 %3113, -1
  store i8 %3114, i8* %SIL.i9, align 1
  %3115 = and i8 %3114, 1
  store i8 0, i8* %25, align 1
  %3116 = zext i8 %3115 to i32
  %3117 = tail call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = xor i8 %3118, 1
  store i8 %3119, i8* %26, align 1
  %3120 = xor i8 %3115, 1
  store i8 %3120, i8* %28, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %27, align 1
  %3121 = icmp eq i8 %3120, 0
  %.v39 = select i1 %3121, i64 -1698, i64 48
  %3122 = add i64 %3069, %.v39
  store i64 %3122, i64* %3, align 8
  br i1 %3121, label %block_.L_4084b2, label %block_408b84

block_408b84:                                     ; preds = %block_.L_408b46
  %3123 = add i64 %3122, 1
  store i64 %3123, i64* %3, align 8
  %3124 = load i64, i64* %6, align 8
  %3125 = add i64 %3124, 8
  %3126 = inttoptr i64 %3124 to i64*
  %3127 = load i64, i64* %3126, align 8
  store i64 %3127, i64* %RBP.i, align 8
  store i64 %3125, i64* %6, align 8
  %3128 = add i64 %3122, 2
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3125 to i64*
  %3130 = load i64, i64* %3129, align 8
  store i64 %3130, i64* %3, align 8
  %3131 = add i64 %3124, 16
  store i64 %3131, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl___rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = sub i32 %8, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %8, %9
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
  %21 = xor i32 %9, %8
  %22 = xor i32 %21, %10
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %10, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %8, 31
  %34 = lshr i32 %9, 31
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
define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_408584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_408584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4084ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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
define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
define %struct.Memory* @routine_jge_.L_408547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -21
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
define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 16
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -21
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
define %struct.Memory* @routine_movslq__esi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_408657(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_jne_.L_408652(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_408652(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 96
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 100
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 20
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -21
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %5, 16
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 740
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_408729(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_408729(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_408693(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4086ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4087fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4087f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4087f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4088ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4088ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_408838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_408891(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4089a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40899c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40899c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -20
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ult i32 %5, 20
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %5, 16
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_jne_.L_408a73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_408a73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4089dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_408a36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_408b46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_408b41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_408b41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
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
define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %SIL, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_4084b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
