; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @incremental_order_moves(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %R14.i1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i1484, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %RBX.i1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %15 = load i64, i64* %RBX.i1482, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %7, -40
  store i64 %21, i64* %6, align 8
  %22 = icmp ult i64 %18, 16
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, 16
  %33 = xor i64 %32, %21
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %21, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %18, 63
  %45 = xor i64 %41, %44
  %46 = add nuw nsw i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  %RAX.i1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, 48
  %52 = add i64 %20, 8
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RAX.i1477, align 8
  %R10.i1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %55 = add i64 %50, 40
  %56 = add i64 %20, 12
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %R10.i1475, align 8
  %R11.i1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %59 = add i64 %50, 32
  %60 = add i64 %20, 16
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %R11.i1472, align 8
  %63 = add i64 %50, 24
  %64 = add i64 %20, 20
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RBX.i1482, align 8
  %67 = add i64 %50, 16
  %68 = add i64 %20, 24
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %R14.i1484, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1462 = bitcast %union.anon* %71 to i32*
  %72 = add i64 %50, -20
  %73 = load i32, i32* %EDI.i1462, align 4
  %74 = add i64 %20, 27
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1459 = bitcast %union.anon* %76 to i32*
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -24
  %79 = load i32, i32* %ESI.i1459, align 4
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %82, align 4
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1456 = bitcast %union.anon* %83 to i32*
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -28
  %86 = load i32, i32* %EDX.i1456, align 4
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 3
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %89, align 4
  %RCX.i1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -40
  %92 = load i64, i64* %RCX.i1453, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -48
  %98 = load i64, i64* %R8.i, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -56
  %104 = load i64, i64* %R9.i, align 8
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -64
  %110 = load i64, i64* %R14.i1484, align 8
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -72
  %116 = load i64, i64* %RBX.i1482, align 8
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -80
  %122 = load i64, i64* %R11.i1472, align 8
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -88
  %128 = load i64, i64* %R10.i1475, align 8
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %127 to i64*
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -96
  %134 = load i64, i64* %RAX.i1477, align 8
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 4
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %137, align 8
  %RDX.i1434 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %138 = load i64, i64* %3, align 8
  %139 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %140 = add i32 %139, 1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RDX.i1434, align 8
  %142 = icmp eq i32 %139, -1
  %143 = icmp eq i32 %140, 0
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %24, align 1
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %31, align 1
  %151 = xor i32 %140, %139
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %37, align 1
  %155 = zext i1 %143 to i8
  store i8 %155, i8* %40, align 1
  %156 = lshr i32 %140, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %43, align 1
  %158 = lshr i32 %139, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %156
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %49, align 1
  store i32 %140, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -20
  %165 = add i64 %138, 20
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, 20
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDX.i1434, align 8
  %170 = icmp ugt i32 %167, -21
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %24, align 1
  %172 = and i32 %168, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %31, align 1
  %177 = xor i32 %167, 16
  %178 = xor i32 %177, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %37, align 1
  %182 = icmp eq i32 %168, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %40, align 1
  %184 = lshr i32 %168, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %43, align 1
  %186 = lshr i32 %167, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %49, align 1
  %191 = sext i32 %168 to i64
  store i64 %191, i64* %RAX.i1477, align 8
  %192 = add nsw i64 %191, 12099168
  %193 = add i64 %138, 34
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i8*
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  store i64 %196, i64* %RDX.i1434, align 8
  %197 = zext i8 %195 to i32
  %198 = add nsw i32 %197, -3
  %199 = icmp ult i8 %195, 3
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %24, align 1
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %31, align 1
  %206 = xor i32 %198, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %37, align 1
  %210 = icmp eq i32 %198, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %40, align 1
  %212 = lshr i32 %198, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v = select i1 %210, i64 43, i64 59
  %214 = add i64 %138, %.v
  store i64 %214, i64* %3, align 8
  br i1 %210, label %block_416083, label %block_.L_416093

block_416083:                                     ; preds = %entry
  %215 = add i64 %163, -40
  %216 = add i64 %214, 4
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX.i1477, align 8
  %219 = add i64 %214, 6
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %221, 1
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX.i1453, align 8
  %224 = icmp eq i32 %221, -1
  %225 = icmp eq i32 %222, 0
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %24, align 1
  %228 = and i32 %222, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %31, align 1
  %233 = xor i32 %222, %221
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %37, align 1
  %237 = zext i1 %225 to i8
  store i8 %237, i8* %40, align 1
  %238 = lshr i32 %222, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %43, align 1
  %240 = lshr i32 %221, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %49, align 1
  %245 = add i64 %214, 11
  store i64 %245, i64* %3, align 8
  store i32 %222, i32* %220, align 4
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 622
  br label %block_.L_4162fc

block_.L_416093:                                  ; preds = %entry
  %248 = add i64 %214, 3
  store i64 %248, i64* %3, align 8
  %249 = load i32, i32* %166, align 4
  %250 = add i32 %249, 20
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX.i1477, align 8
  %252 = icmp ugt i32 %249, -21
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %24, align 1
  %254 = and i32 %250, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %31, align 1
  %259 = xor i32 %249, 16
  %260 = xor i32 %259, %250
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %37, align 1
  %264 = icmp eq i32 %250, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %40, align 1
  %266 = lshr i32 %250, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %43, align 1
  %268 = lshr i32 %249, 31
  %269 = xor i32 %266, %268
  %270 = add nuw nsw i32 %269, %266
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %49, align 1
  %273 = sext i32 %250 to i64
  store i64 %273, i64* %RCX.i1453, align 8
  %274 = add nsw i64 %273, 12099168
  %275 = add i64 %214, 17
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i8*
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i64
  store i64 %278, i64* %RAX.i1477, align 8
  %279 = zext i8 %277 to i32
  store i8 0, i8* %24, align 1
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %284 = icmp eq i8 %277, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v89 = select i1 %284, i64 26, i64 42
  %286 = add i64 %214, %.v89
  store i64 %286, i64* %3, align 8
  br i1 %284, label %block_4160ad, label %block_.L_4160bd

block_4160ad:                                     ; preds = %block_.L_416093
  %287 = add i64 %163, -96
  %288 = add i64 %286, 4
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RAX.i1477, align 8
  %291 = add i64 %286, 6
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, 1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RCX.i1453, align 8
  %296 = icmp eq i32 %293, -1
  %297 = icmp eq i32 %294, 0
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %24, align 1
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %31, align 1
  %305 = xor i32 %294, %293
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %37, align 1
  %309 = zext i1 %297 to i8
  store i8 %309, i8* %40, align 1
  %310 = lshr i32 %294, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %43, align 1
  %312 = lshr i32 %293, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %49, align 1
  %317 = add i64 %286, 11
  store i64 %317, i64* %3, align 8
  store i32 %294, i32* %292, align 4
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 575
  br label %block_.L_4162f7

block_.L_4160bd:                                  ; preds = %block_.L_416093
  %320 = add i64 %286, 3
  store i64 %320, i64* %3, align 8
  %321 = load i32, i32* %166, align 4
  %322 = add i32 %321, 20
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i1477, align 8
  %324 = icmp ugt i32 %321, -21
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %24, align 1
  %326 = and i32 %322, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %31, align 1
  %331 = xor i32 %321, 16
  %332 = xor i32 %331, %322
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %37, align 1
  %336 = icmp eq i32 %322, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %40, align 1
  %338 = lshr i32 %322, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %43, align 1
  %340 = lshr i32 %321, 31
  %341 = xor i32 %338, %340
  %342 = add nuw nsw i32 %341, %338
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %49, align 1
  %345 = sext i32 %322 to i64
  store i64 %345, i64* %RCX.i1453, align 8
  %346 = shl nsw i64 %345, 2
  %347 = add nsw i64 %346, 11187184
  %348 = add i64 %286, 16
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RAX.i1477, align 8
  %352 = add i64 %163, -100
  %353 = add i64 %286, 19
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  store i32 %350, i32* %354, align 4
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -28
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 4
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RCX.i1453, align 8
  %362 = shl nsw i64 %361, 2
  %363 = add nsw i64 %362, 11187184
  %364 = add i64 %357, 11
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i1477, align 8
  %368 = add i64 %355, -100
  %369 = add i64 %357, 14
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = sub i32 %366, %371
  %373 = icmp ult i32 %366, %371
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %24, align 1
  %375 = and i32 %372, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %31, align 1
  %380 = xor i32 %371, %366
  %381 = xor i32 %380, %372
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %37, align 1
  %385 = icmp eq i32 %372, 0
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %40, align 1
  %387 = lshr i32 %372, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %43, align 1
  %389 = lshr i32 %366, 31
  %390 = lshr i32 %371, 31
  %391 = xor i32 %390, %389
  %392 = xor i32 %387, %389
  %393 = add nuw nsw i32 %392, %391
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %49, align 1
  %.v90 = select i1 %385, i64 20, i64 31
  %396 = add i64 %357, %.v90
  store i64 %396, i64* %3, align 8
  br i1 %385, label %block_4160e4, label %block_.L_4160ef

block_4160e4:                                     ; preds = %block_.L_4160bd
  %397 = add i64 %355, -48
  %398 = add i64 %396, 4
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RAX.i1477, align 8
  %401 = add i64 %396, 6
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = add i32 %403, 1
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RCX.i1453, align 8
  %406 = icmp eq i32 %403, -1
  %407 = icmp eq i32 %404, 0
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %24, align 1
  %410 = and i32 %404, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %31, align 1
  %415 = xor i32 %404, %403
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %37, align 1
  %419 = zext i1 %407 to i8
  store i8 %419, i8* %40, align 1
  %420 = lshr i32 %404, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %43, align 1
  %422 = lshr i32 %403, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %420
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %49, align 1
  %427 = add i64 %396, 11
  store i64 %427, i64* %3, align 8
  store i32 %404, i32* %402, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4160ef

block_.L_4160ef:                                  ; preds = %block_.L_4160bd, %block_4160e4
  %428 = phi i64 [ %.pre61, %block_4160e4 ], [ %396, %block_.L_4160bd ]
  %429 = phi i64 [ %.pre, %block_4160e4 ], [ %355, %block_.L_4160bd ]
  %430 = add i64 %429, -20
  %431 = add i64 %428, 3
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, 20
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i1477, align 8
  %436 = icmp ugt i32 %433, -21
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %24, align 1
  %438 = and i32 %434, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %31, align 1
  %443 = xor i32 %433, 16
  %444 = xor i32 %443, %434
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %37, align 1
  %448 = icmp eq i32 %434, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %40, align 1
  %450 = lshr i32 %434, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %43, align 1
  %452 = lshr i32 %433, 31
  %453 = xor i32 %450, %452
  %454 = add nuw nsw i32 %453, %450
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %49, align 1
  %457 = sext i32 %434 to i64
  store i64 %457, i64* %RCX.i1453, align 8
  %458 = add nsw i64 %457, 12099168
  %459 = add i64 %428, 17
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i8*
  %461 = load i8, i8* %460, align 1
  %462 = zext i8 %461 to i64
  store i64 %462, i64* %RAX.i1477, align 8
  %463 = zext i8 %461 to i32
  %464 = add i64 %429, -24
  %465 = add i64 %428, 20
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %463, %467
  %469 = icmp ult i32 %463, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %24, align 1
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %31, align 1
  %476 = xor i32 %467, %463
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %37, align 1
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %40, align 1
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %43, align 1
  %485 = lshr i32 %467, 31
  %486 = add nuw nsw i32 %483, %485
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %49, align 1
  %.v91 = select i1 %481, i64 26, i64 111
  %489 = add i64 %428, %.v91
  %490 = add i64 %489, 10
  store i64 %490, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  br i1 %481, label %block_416109, label %block_.L_41615e

block_416109:                                     ; preds = %block_.L_4160ef
  %491 = add i64 %429, -56
  %492 = add i64 %489, 14
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %RCX.i1453, align 8
  %495 = add i64 %489, 16
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, 1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RDX.i1434, align 8
  %500 = icmp eq i32 %497, -1
  %501 = icmp eq i32 %498, 0
  %502 = or i1 %500, %501
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %24, align 1
  %504 = and i32 %498, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %31, align 1
  %509 = xor i32 %498, %497
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %37, align 1
  %513 = zext i1 %501 to i8
  store i8 %513, i8* %40, align 1
  %514 = lshr i32 %498, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %43, align 1
  %516 = lshr i32 %497, 31
  %517 = xor i32 %514, %516
  %518 = add nuw nsw i32 %517, %514
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %49, align 1
  %521 = add i64 %489, 21
  store i64 %521, i64* %3, align 8
  store i32 %498, i32* %496, align 4
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -100
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, 4
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = sext i32 %527 to i64
  %529 = mul nsw i64 %528, 744
  store i64 %529, i64* %RCX.i1453, align 8
  %530 = lshr i64 %529, 63
  %531 = load i64, i64* %RAX.i1477, align 8
  %532 = add i64 %529, %531
  store i64 %532, i64* %RAX.i1477, align 8
  %533 = icmp ult i64 %532, %531
  %534 = icmp ult i64 %532, %529
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %24, align 1
  %537 = trunc i64 %532 to i32
  %538 = and i32 %537, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %31, align 1
  %543 = xor i64 %529, %531
  %544 = xor i64 %543, %532
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %37, align 1
  %548 = icmp eq i64 %532, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %40, align 1
  %550 = lshr i64 %532, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %43, align 1
  %552 = lshr i64 %531, 63
  %553 = xor i64 %550, %552
  %554 = xor i64 %550, %530
  %555 = add nuw nsw i64 %553, %554
  %556 = icmp eq i64 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %49, align 1
  %558 = add i64 %532, 12
  %559 = add i64 %524, 18
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, -1
  %563 = icmp eq i32 %561, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %24, align 1
  %565 = and i32 %562, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %31, align 1
  %570 = xor i32 %562, %561
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %37, align 1
  %574 = icmp eq i32 %562, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %40, align 1
  %576 = lshr i32 %562, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %43, align 1
  %578 = lshr i32 %561, 31
  %579 = xor i32 %576, %578
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %49, align 1
  %.v127 = select i1 %574, i64 24, i64 59
  %583 = add i64 %524, %.v127
  store i64 %583, i64* %3, align 8
  br i1 %574, label %block_416136, label %block_.L_416159

block_416136:                                     ; preds = %block_416109
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -100
  %586 = add i64 %583, 14
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = mul nsw i64 %589, 744
  store i64 %590, i64* %RCX.i1453, align 8
  %591 = lshr i64 %590, 63
  %592 = add i64 %590, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %592, i64* %RAX.i1477, align 8
  %593 = icmp ult i64 %592, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %594 = icmp ult i64 %592, %590
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %24, align 1
  %597 = trunc i64 %592 to i32
  %598 = and i32 %597, 248
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %31, align 1
  %603 = xor i64 %590, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %604 = xor i64 %603, %592
  %605 = lshr i64 %604, 4
  %606 = trunc i64 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %37, align 1
  %608 = icmp eq i64 %592, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %40, align 1
  %610 = lshr i64 %592, 63
  %611 = trunc i64 %610 to i8
  store i8 %611, i8* %43, align 1
  %612 = xor i64 %610, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %613 = xor i64 %610, %591
  %614 = add nuw nsw i64 %612, %613
  %615 = icmp eq i64 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %49, align 1
  %617 = add i64 %590, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %618 = add i64 %583, 27
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RDX.i1434, align 8
  %622 = add i64 %584, -88
  %623 = add i64 %583, 31
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i64*
  %625 = load i64, i64* %624, align 8
  store i64 %625, i64* %RAX.i1477, align 8
  %626 = add i64 %583, 33
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = add i32 %628, %620
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RDX.i1434, align 8
  %631 = icmp ult i32 %629, %620
  %632 = icmp ult i32 %629, %628
  %633 = or i1 %631, %632
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %24, align 1
  %635 = and i32 %629, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %31, align 1
  %640 = xor i32 %628, %620
  %641 = xor i32 %640, %629
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %37, align 1
  %645 = icmp eq i32 %629, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %40, align 1
  %647 = lshr i32 %629, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %43, align 1
  %649 = lshr i32 %620, 31
  %650 = lshr i32 %628, 31
  %651 = xor i32 %647, %649
  %652 = xor i32 %647, %650
  %653 = add nuw nsw i32 %651, %652
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %49, align 1
  %656 = add i64 %583, 35
  store i64 %656, i64* %3, align 8
  store i32 %629, i32* %627, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_416159

block_.L_416159:                                  ; preds = %block_416109, %block_416136
  %657 = phi i64 [ %.pre62, %block_416136 ], [ %583, %block_416109 ]
  %658 = add i64 %657, 409
  br label %block_.L_4162f2

block_.L_41615e:                                  ; preds = %block_.L_4160ef
  %659 = add i64 %429, -64
  %660 = add i64 %489, 14
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RCX.i1453, align 8
  %663 = add i64 %489, 16
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = add i32 %665, 1
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RDX.i1434, align 8
  %668 = icmp eq i32 %665, -1
  %669 = icmp eq i32 %666, 0
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %24, align 1
  %672 = and i32 %666, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %31, align 1
  %677 = xor i32 %666, %665
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %37, align 1
  %681 = zext i1 %669 to i8
  store i8 %681, i8* %40, align 1
  %682 = lshr i32 %666, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %43, align 1
  %684 = lshr i32 %665, 31
  %685 = xor i32 %682, %684
  %686 = add nuw nsw i32 %685, %682
  %687 = icmp eq i32 %686, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %49, align 1
  %689 = add i64 %489, 21
  store i64 %689, i64* %3, align 8
  store i32 %666, i32* %664, align 4
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -100
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  %697 = mul nsw i64 %696, 744
  store i64 %697, i64* %RCX.i1453, align 8
  %698 = lshr i64 %697, 63
  %699 = load i64, i64* %RAX.i1477, align 8
  %700 = add i64 %697, %699
  store i64 %700, i64* %RAX.i1477, align 8
  %701 = icmp ult i64 %700, %699
  %702 = icmp ult i64 %700, %697
  %703 = or i1 %701, %702
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %24, align 1
  %705 = trunc i64 %700 to i32
  %706 = and i32 %705, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %31, align 1
  %711 = xor i64 %697, %699
  %712 = xor i64 %711, %700
  %713 = lshr i64 %712, 4
  %714 = trunc i64 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %37, align 1
  %716 = icmp eq i64 %700, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %40, align 1
  %718 = lshr i64 %700, 63
  %719 = trunc i64 %718 to i8
  store i8 %719, i8* %43, align 1
  %720 = lshr i64 %699, 63
  %721 = xor i64 %718, %720
  %722 = xor i64 %718, %698
  %723 = add nuw nsw i64 %721, %722
  %724 = icmp eq i64 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %49, align 1
  %726 = add i64 %700, 12
  %727 = add i64 %692, 18
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = add i32 %729, -1
  %731 = icmp eq i32 %729, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %24, align 1
  %733 = and i32 %730, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %31, align 1
  %738 = xor i32 %730, %729
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %37, align 1
  %742 = icmp eq i32 %730, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %40, align 1
  %744 = lshr i32 %730, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %43, align 1
  %746 = lshr i32 %729, 31
  %747 = xor i32 %744, %746
  %748 = add nuw nsw i32 %747, %746
  %749 = icmp eq i32 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %49, align 1
  %.v92 = select i1 %742, i64 24, i64 205
  %751 = add i64 %692, %.v92
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -100
  %754 = add i64 %751, 14
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sext i32 %756 to i64
  %758 = mul nsw i64 %757, 744
  store i64 %758, i64* %RCX.i1453, align 8
  %759 = lshr i64 %758, 63
  %760 = add i64 %751, 24
  store i64 %760, i64* %3, align 8
  %761 = add i64 %758, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %761, i64* %RAX.i1477, align 8
  %762 = icmp ult i64 %761, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %763 = icmp ult i64 %761, %758
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %24, align 1
  %766 = trunc i64 %761 to i32
  %767 = and i32 %766, 248
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %31, align 1
  %772 = xor i64 %758, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %773 = xor i64 %772, %761
  %774 = lshr i64 %773, 4
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %37, align 1
  %777 = icmp eq i64 %761, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %40, align 1
  %779 = lshr i64 %761, 63
  %780 = trunc i64 %779 to i8
  store i8 %780, i8* %43, align 1
  %781 = xor i64 %779, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %782 = xor i64 %779, %759
  %783 = add nuw nsw i64 %781, %782
  %784 = icmp eq i64 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %49, align 1
  br i1 %742, label %block_41618b, label %block_.L_416240

block_41618b:                                     ; preds = %block_.L_41615e
  %786 = add i64 %758, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %787 = add i64 %751, 27
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RDX.i1434, align 8
  %791 = add i64 %752, -72
  %792 = add i64 %751, 31
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %RAX.i1477, align 8
  %795 = add i64 %751, 33
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = add i32 %797, %789
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RDX.i1434, align 8
  %800 = icmp ult i32 %798, %789
  %801 = icmp ult i32 %798, %797
  %802 = or i1 %800, %801
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %24, align 1
  %804 = and i32 %798, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %31, align 1
  %809 = xor i32 %797, %789
  %810 = xor i32 %809, %798
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %37, align 1
  %814 = icmp eq i32 %798, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %40, align 1
  %816 = lshr i32 %798, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %43, align 1
  %818 = lshr i32 %789, 31
  %819 = lshr i32 %797, 31
  %820 = xor i32 %816, %818
  %821 = xor i32 %816, %819
  %822 = add nuw nsw i32 %820, %821
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %49, align 1
  %825 = add i64 %751, 35
  store i64 %825, i64* %3, align 8
  store i32 %798, i32* %796, align 4
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -104
  %828 = load i64, i64* %3, align 8
  %829 = add i64 %828, 7
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %827 to i32*
  store i32 0, i32* %830, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4161b5

block_.L_4161b5:                                  ; preds = %block_.L_416228, %block_41618b
  %831 = phi i64 [ %1084, %block_.L_416228 ], [ %.pre63, %block_41618b ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %832 = load i64, i64* %RBP.i, align 8
  %833 = add i64 %832, -104
  %834 = add i64 %831, 13
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RCX.i1453, align 8
  %838 = add i64 %832, -100
  %839 = add i64 %831, 17
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sext i32 %841 to i64
  %843 = mul nsw i64 %842, 744
  store i64 %843, i64* %RDX.i1434, align 8
  %844 = lshr i64 %843, 63
  %845 = add i64 %843, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %845, i64* %RAX.i1477, align 8
  %846 = icmp ult i64 %845, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %847 = icmp ult i64 %845, %843
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %24, align 1
  %850 = trunc i64 %845 to i32
  %851 = and i32 %850, 248
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %31, align 1
  %856 = xor i64 %843, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %857 = xor i64 %856, %845
  %858 = lshr i64 %857, 4
  %859 = trunc i64 %858 to i8
  %860 = and i8 %859, 1
  store i8 %860, i8* %37, align 1
  %861 = icmp eq i64 %845, 0
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %40, align 1
  %863 = lshr i64 %845, 63
  %864 = trunc i64 %863 to i8
  store i8 %864, i8* %43, align 1
  %865 = xor i64 %863, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %866 = xor i64 %863, %844
  %867 = add nuw nsw i64 %865, %866
  %868 = icmp eq i64 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %49, align 1
  %870 = add i64 %843, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %871 = add i64 %831, 30
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 8
  %874 = sub i32 %836, %873
  %875 = icmp ult i32 %836, %873
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %24, align 1
  %877 = and i32 %874, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %31, align 1
  %882 = xor i32 %873, %836
  %883 = xor i32 %882, %874
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %37, align 1
  %887 = icmp eq i32 %874, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %40, align 1
  %889 = lshr i32 %874, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %43, align 1
  %891 = lshr i32 %836, 31
  %892 = lshr i32 %873, 31
  %893 = xor i32 %892, %891
  %894 = xor i32 %889, %891
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %49, align 1
  %898 = icmp ne i8 %890, 0
  %899 = xor i1 %898, %896
  %.v125 = select i1 %899, i64 36, i64 134
  %900 = add i64 %831, %.v125
  store i64 %900, i64* %3, align 8
  br i1 %899, label %block_4161d9, label %block_.L_41623b

block_4161d9:                                     ; preds = %block_.L_4161b5
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -100
  %903 = add i64 %900, 14
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = sext i32 %905 to i64
  %907 = mul nsw i64 %906, 744
  store i64 %907, i64* %RCX.i1453, align 8
  %908 = lshr i64 %907, 63
  %909 = add i64 %907, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %909, i64* %RDX.i1434, align 8
  %910 = icmp ult i64 %909, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %911 = icmp ult i64 %909, %907
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %24, align 1
  %914 = trunc i64 %909 to i32
  %915 = and i32 %914, 248
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %31, align 1
  %920 = xor i64 %907, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %921 = xor i64 %920, %909
  %922 = lshr i64 %921, 4
  %923 = trunc i64 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %37, align 1
  %925 = icmp eq i64 %909, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %40, align 1
  %927 = lshr i64 %909, 63
  %928 = trunc i64 %927 to i8
  store i8 %928, i8* %43, align 1
  %929 = xor i64 %927, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %930 = xor i64 %927, %908
  %931 = add nuw nsw i64 %929, %930
  %932 = icmp eq i64 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %49, align 1
  %934 = add i64 %901, -104
  %935 = add i64 %900, 31
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RCX.i1453, align 8
  %939 = shl nsw i64 %938, 2
  %940 = add i64 %907, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %941 = add i64 %940, %939
  %942 = add i64 %900, 36
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  %946 = mul nsw i64 %945, 744
  store i64 %946, i64* %RCX.i1453, align 8
  %947 = lshr i64 %946, 63
  %948 = load i64, i64* %RAX.i1477, align 8
  %949 = add i64 %946, %948
  store i64 %949, i64* %RAX.i1477, align 8
  %950 = icmp ult i64 %949, %948
  %951 = icmp ult i64 %949, %946
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %24, align 1
  %954 = trunc i64 %949 to i32
  %955 = and i32 %954, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %31, align 1
  %960 = xor i64 %946, %948
  %961 = xor i64 %960, %949
  %962 = lshr i64 %961, 4
  %963 = trunc i64 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %37, align 1
  %965 = icmp eq i64 %949, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %40, align 1
  %967 = lshr i64 %949, 63
  %968 = trunc i64 %967 to i8
  store i8 %968, i8* %43, align 1
  %969 = lshr i64 %948, 63
  %970 = xor i64 %967, %969
  %971 = xor i64 %967, %947
  %972 = add nuw nsw i64 %970, %971
  %973 = icmp eq i64 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %49, align 1
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -112
  %977 = add i64 %900, 50
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  store i64 %949, i64* %978, align 8
  %979 = load i64, i64* %RBP.i, align 8
  %980 = add i64 %979, -112
  %981 = load i64, i64* %3, align 8
  %982 = add i64 %981, 4
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %980 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RAX.i1477, align 8
  %985 = add i64 %984, 12
  %986 = add i64 %981, 8
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = add i32 %988, -1
  %990 = icmp eq i32 %988, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %24, align 1
  %992 = and i32 %989, 255
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %31, align 1
  %997 = xor i32 %989, %988
  %998 = lshr i32 %997, 4
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  store i8 %1000, i8* %37, align 1
  %1001 = icmp eq i32 %989, 0
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %40, align 1
  %1003 = lshr i32 %989, 31
  %1004 = trunc i32 %1003 to i8
  store i8 %1004, i8* %43, align 1
  %1005 = lshr i32 %988, 31
  %1006 = xor i32 %1003, %1005
  %1007 = add nuw nsw i32 %1006, %1005
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %49, align 1
  %.v126 = select i1 %1001, i64 14, i64 29
  %1010 = add i64 %981, %.v126
  store i64 %1010, i64* %3, align 8
  br i1 %1001, label %block_416219, label %block_.L_416228

block_416219:                                     ; preds = %block_4161d9
  %1011 = add i64 %1010, 4
  store i64 %1011, i64* %3, align 8
  %1012 = load i64, i64* %983, align 8
  store i64 %1012, i64* %RAX.i1477, align 8
  %1013 = add i64 %1012, 4
  %1014 = add i64 %1010, 7
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RCX.i1453, align 8
  %1018 = add i64 %979, -88
  %1019 = add i64 %1010, 11
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RAX.i1477, align 8
  %1022 = add i64 %1010, 13
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, %1016
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i1453, align 8
  %1027 = icmp ult i32 %1025, %1016
  %1028 = icmp ult i32 %1025, %1024
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %24, align 1
  %1031 = and i32 %1025, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %31, align 1
  %1036 = xor i32 %1024, %1016
  %1037 = xor i32 %1036, %1025
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %37, align 1
  %1041 = icmp eq i32 %1025, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %40, align 1
  %1043 = lshr i32 %1025, 31
  %1044 = trunc i32 %1043 to i8
  store i8 %1044, i8* %43, align 1
  %1045 = lshr i32 %1016, 31
  %1046 = lshr i32 %1024, 31
  %1047 = xor i32 %1043, %1045
  %1048 = xor i32 %1043, %1046
  %1049 = add nuw nsw i32 %1047, %1048
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %49, align 1
  %1052 = add i64 %1010, 15
  store i64 %1052, i64* %3, align 8
  store i32 %1025, i32* %1023, align 4
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416228

block_.L_416228:                                  ; preds = %block_4161d9, %block_416219
  %1053 = phi i64 [ %.pre65, %block_416219 ], [ %979, %block_4161d9 ]
  %1054 = phi i64 [ %.pre64, %block_416219 ], [ %1010, %block_4161d9 ]
  %1055 = add i64 %1053, -104
  %1056 = add i64 %1054, 8
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = add i32 %1058, 1
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i1477, align 8
  %1061 = icmp eq i32 %1058, -1
  %1062 = icmp eq i32 %1059, 0
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %24, align 1
  %1065 = and i32 %1059, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %31, align 1
  %1070 = xor i32 %1059, %1058
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %37, align 1
  %1074 = zext i1 %1062 to i8
  store i8 %1074, i8* %40, align 1
  %1075 = lshr i32 %1059, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %43, align 1
  %1077 = lshr i32 %1058, 31
  %1078 = xor i32 %1075, %1077
  %1079 = add nuw nsw i32 %1078, %1075
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %49, align 1
  %1082 = add i64 %1054, 14
  store i64 %1082, i64* %3, align 8
  store i32 %1059, i32* %1057, align 4
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, -129
  store i64 %1084, i64* %3, align 8
  br label %block_.L_4161b5

block_.L_41623b:                                  ; preds = %block_.L_4161b5
  %1085 = add i64 %900, 178
  br label %block_.L_4162ed

block_.L_416240:                                  ; preds = %block_.L_41615e
  %1086 = add i64 %758, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1087 = add i64 %751, 28
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, -2
  %1091 = icmp ult i32 %1089, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %24, align 1
  %1093 = and i32 %1090, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %31, align 1
  %1098 = xor i32 %1090, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %37, align 1
  %1102 = icmp eq i32 %1090, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %40, align 1
  %1104 = lshr i32 %1090, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %43, align 1
  %1106 = lshr i32 %1089, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %49, align 1
  %.v93 = select i1 %1102, i64 34, i64 168
  %1111 = add i64 %751, %.v93
  store i64 %1111, i64* %3, align 8
  br i1 %1102, label %block_416262, label %block_.L_4162e8

block_416262:                                     ; preds = %block_.L_416240
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %1112 = add i64 %752, -20
  %1113 = add i64 %1111, 13
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = add i32 %1115, 20
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RCX.i1453, align 8
  %1118 = icmp ugt i32 %1115, -21
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %24, align 1
  %1120 = and i32 %1116, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %31, align 1
  %1125 = xor i32 %1115, 16
  %1126 = xor i32 %1125, %1116
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %37, align 1
  %1130 = icmp eq i32 %1116, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %40, align 1
  %1132 = lshr i32 %1116, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %43, align 1
  %1134 = lshr i32 %1115, 31
  %1135 = xor i32 %1132, %1134
  %1136 = add nuw nsw i32 %1135, %1132
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %49, align 1
  %1139 = sext i32 %1116 to i64
  store i64 %1139, i64* %RDX.i1434, align 8
  %1140 = shl nsw i64 %1139, 2
  %1141 = add nsw i64 %1140, 11187184
  %1142 = add i64 %1111, 27
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = mul nsw i64 %1145, 744
  store i64 %1146, i64* %RDX.i1434, align 8
  %1147 = lshr i64 %1146, 63
  %1148 = add i64 %1146, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1148, i64* %RAX.i1477, align 8
  %1149 = icmp ult i64 %1148, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1150 = icmp ult i64 %1148, %1146
  %1151 = or i1 %1149, %1150
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %24, align 1
  %1153 = trunc i64 %1148 to i32
  %1154 = and i32 %1153, 248
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %31, align 1
  %1159 = xor i64 %1146, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1160 = xor i64 %1159, %1148
  %1161 = lshr i64 %1160, 4
  %1162 = trunc i64 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %37, align 1
  %1164 = icmp eq i64 %1148, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %40, align 1
  %1166 = lshr i64 %1148, 63
  %1167 = trunc i64 %1166 to i8
  store i8 %1167, i8* %43, align 1
  %1168 = xor i64 %1166, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1169 = xor i64 %1166, %1147
  %1170 = add nuw nsw i64 %1168, %1169
  %1171 = icmp eq i64 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %49, align 1
  %1173 = add i64 %1146, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1174 = add i64 %1111, 43
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RCX.i1453, align 8
  %1178 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1179 = sub i32 %1176, %1178
  %1180 = icmp ult i32 %1176, %1178
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %24, align 1
  %1182 = and i32 %1179, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %31, align 1
  %1187 = xor i32 %1178, %1176
  %1188 = xor i32 %1187, %1179
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %37, align 1
  %1192 = icmp eq i32 %1179, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %40, align 1
  %1194 = lshr i32 %1179, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %43, align 1
  %1196 = lshr i32 %1176, 31
  %1197 = lshr i32 %1178, 31
  %1198 = xor i32 %1197, %1196
  %1199 = xor i32 %1194, %1196
  %1200 = add nuw nsw i32 %1199, %1198
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %49, align 1
  %.v124 = select i1 %1192, i64 134, i64 56
  %1203 = add i64 %1111, %.v124
  store i64 %1203, i64* %3, align 8
  br i1 %1192, label %block_.L_4162e8, label %block_41629a

block_41629a:                                     ; preds = %block_416262
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -100
  %1206 = add i64 %1203, 14
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = sext i32 %1208 to i64
  %1210 = mul nsw i64 %1209, 744
  store i64 %1210, i64* %RCX.i1453, align 8
  %1211 = lshr i64 %1210, 63
  %1212 = add i64 %1210, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1212, i64* %RDX.i1434, align 8
  %1213 = icmp ult i64 %1212, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1214 = icmp ult i64 %1212, %1210
  %1215 = or i1 %1213, %1214
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %24, align 1
  %1217 = trunc i64 %1212 to i32
  %1218 = and i32 %1217, 248
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %31, align 1
  %1223 = xor i64 %1210, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1224 = xor i64 %1223, %1212
  %1225 = lshr i64 %1224, 4
  %1226 = trunc i64 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %37, align 1
  %1228 = icmp eq i64 %1212, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %40, align 1
  %1230 = lshr i64 %1212, 63
  %1231 = trunc i64 %1230 to i8
  store i8 %1231, i8* %43, align 1
  %1232 = xor i64 %1230, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1233 = xor i64 %1230, %1211
  %1234 = add nuw nsw i64 %1232, %1233
  %1235 = icmp eq i64 %1234, 2
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %49, align 1
  %RSI.i1106 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %1237 = add i64 %1210, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %1238 = add i64 %1203, 30
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RSI.i1106, align 8
  %1242 = add i64 %1204, -80
  %1243 = add i64 %1203, 34
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RCX.i1453, align 8
  %1246 = add i64 %1203, 36
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = add i32 %1248, %1240
  %1250 = icmp ult i32 %1249, %1240
  %1251 = icmp ult i32 %1249, %1248
  %1252 = or i1 %1250, %1251
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %24, align 1
  %1254 = and i32 %1249, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %31, align 1
  %1259 = xor i32 %1248, %1240
  %1260 = xor i32 %1259, %1249
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  store i8 %1263, i8* %37, align 1
  %1264 = icmp eq i32 %1249, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %40, align 1
  %1266 = lshr i32 %1249, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %43, align 1
  %1268 = lshr i32 %1240, 31
  %1269 = lshr i32 %1248, 31
  %1270 = xor i32 %1266, %1268
  %1271 = xor i32 %1266, %1269
  %1272 = add nuw nsw i32 %1270, %1271
  %1273 = icmp eq i32 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %49, align 1
  %1275 = add i64 %1203, 38
  store i64 %1275, i64* %3, align 8
  store i32 %1249, i32* %1247, align 4
  %1276 = load i64, i64* %3, align 8
  %1277 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1278 = zext i32 %1277 to i64
  store i64 %1278, i64* %RSI.i1106, align 8
  %RDI.i1091 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -20
  %1281 = add i64 %1276, 10
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = add i32 %1283, 20
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RDI.i1091, align 8
  %1286 = icmp ugt i32 %1283, -21
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %24, align 1
  %1288 = and i32 %1284, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %31, align 1
  %1293 = xor i32 %1283, 16
  %1294 = xor i32 %1293, %1284
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %37, align 1
  %1298 = icmp eq i32 %1284, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %40, align 1
  %1300 = lshr i32 %1284, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %43, align 1
  %1302 = lshr i32 %1283, 31
  %1303 = xor i32 %1300, %1302
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %49, align 1
  %1307 = sext i32 %1284 to i64
  store i64 %1307, i64* %RCX.i1453, align 8
  %1308 = shl nsw i64 %1307, 2
  %1309 = add nsw i64 %1308, 11187184
  %1310 = add i64 %1276, 24
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = sext i32 %1312 to i64
  %1314 = mul nsw i64 %1313, 744
  store i64 %1314, i64* %RCX.i1453, align 8
  %1315 = lshr i64 %1314, 63
  %1316 = load i64, i64* %RAX.i1477, align 8
  %1317 = add i64 %1314, %1316
  store i64 %1317, i64* %RAX.i1477, align 8
  %1318 = icmp ult i64 %1317, %1316
  %1319 = icmp ult i64 %1317, %1314
  %1320 = or i1 %1318, %1319
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %24, align 1
  %1322 = trunc i64 %1317 to i32
  %1323 = and i32 %1322, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %31, align 1
  %1328 = xor i64 %1314, %1316
  %1329 = xor i64 %1328, %1317
  %1330 = lshr i64 %1329, 4
  %1331 = trunc i64 %1330 to i8
  %1332 = and i8 %1331, 1
  store i8 %1332, i8* %37, align 1
  %1333 = icmp eq i64 %1317, 0
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %40, align 1
  %1335 = lshr i64 %1317, 63
  %1336 = trunc i64 %1335 to i8
  store i8 %1336, i8* %43, align 1
  %1337 = lshr i64 %1316, 63
  %1338 = xor i64 %1335, %1337
  %1339 = xor i64 %1335, %1315
  %1340 = add nuw nsw i64 %1338, %1339
  %1341 = icmp eq i64 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %49, align 1
  %1343 = add i64 %1317, 740
  %1344 = load i32, i32* %ESI.i1459, align 4
  %1345 = add i64 %1276, 40
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1343 to i32*
  store i32 %1344, i32* %1346, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_4162e8

block_.L_4162e8:                                  ; preds = %block_.L_416240, %block_41629a, %block_416262
  %1347 = phi i64 [ %.pre66, %block_41629a ], [ %1203, %block_416262 ], [ %1111, %block_.L_416240 ]
  %1348 = add i64 %1347, 5
  store i64 %1348, i64* %3, align 8
  br label %block_.L_4162ed

block_.L_4162ed:                                  ; preds = %block_.L_4162e8, %block_.L_41623b
  %storemerge54 = phi i64 [ %1085, %block_.L_41623b ], [ %1348, %block_.L_4162e8 ]
  %1349 = add i64 %storemerge54, 5
  store i64 %1349, i64* %3, align 8
  br label %block_.L_4162f2

block_.L_4162f2:                                  ; preds = %block_.L_4162ed, %block_.L_416159
  %storemerge53 = phi i64 [ %658, %block_.L_416159 ], [ %1349, %block_.L_4162ed ]
  %1350 = add i64 %storemerge53, 5
  store i64 %1350, i64* %3, align 8
  br label %block_.L_4162f7

block_.L_4162f7:                                  ; preds = %block_.L_4162f2, %block_4160ad
  %storemerge52 = phi i64 [ %319, %block_4160ad ], [ %1350, %block_.L_4162f2 ]
  %1351 = add i64 %storemerge52, 5
  store i64 %1351, i64* %3, align 8
  br label %block_.L_4162fc

block_.L_4162fc:                                  ; preds = %block_.L_4162f7, %block_416083
  %storemerge = phi i64 [ %247, %block_416083 ], [ %1351, %block_.L_4162f7 ]
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -20
  %1354 = add i64 %storemerge, 3
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = add i32 %1356, -1
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RAX.i1477, align 8
  %1359 = icmp eq i32 %1356, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %24, align 1
  %1361 = and i32 %1357, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %31, align 1
  %1366 = xor i32 %1357, %1356
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %37, align 1
  %1370 = icmp eq i32 %1357, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %40, align 1
  %1372 = lshr i32 %1357, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %43, align 1
  %1374 = lshr i32 %1356, 31
  %1375 = xor i32 %1372, %1374
  %1376 = add nuw nsw i32 %1375, %1374
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %49, align 1
  %1379 = sext i32 %1357 to i64
  store i64 %1379, i64* %RCX.i1453, align 8
  %1380 = add nsw i64 %1379, 12099168
  %1381 = add i64 %storemerge, 17
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i8*
  %1383 = load i8, i8* %1382, align 1
  %1384 = zext i8 %1383 to i64
  store i64 %1384, i64* %RAX.i1477, align 8
  %1385 = zext i8 %1383 to i32
  %1386 = add nsw i32 %1385, -3
  %1387 = icmp ult i8 %1383, 3
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %24, align 1
  %1389 = and i32 %1386, 255
  %1390 = tail call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  store i8 %1393, i8* %31, align 1
  %1394 = xor i32 %1386, %1385
  %1395 = lshr i32 %1394, 4
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  store i8 %1397, i8* %37, align 1
  %1398 = icmp eq i32 %1386, 0
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %40, align 1
  %1400 = lshr i32 %1386, 31
  %1401 = trunc i32 %1400 to i8
  store i8 %1401, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v94 = select i1 %1398, i64 26, i64 42
  %1402 = add i64 %storemerge, %.v94
  store i64 %1402, i64* %3, align 8
  br i1 %1398, label %block_416316, label %block_.L_416326

block_416316:                                     ; preds = %block_.L_4162fc
  %1403 = add i64 %1352, -40
  %1404 = add i64 %1402, 4
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RAX.i1477, align 8
  %1407 = add i64 %1402, 6
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, 1
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i1453, align 8
  %1412 = icmp eq i32 %1409, -1
  %1413 = icmp eq i32 %1410, 0
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %24, align 1
  %1416 = and i32 %1410, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %31, align 1
  %1421 = xor i32 %1410, %1409
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %37, align 1
  %1425 = zext i1 %1413 to i8
  store i8 %1425, i8* %40, align 1
  %1426 = lshr i32 %1410, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %43, align 1
  %1428 = lshr i32 %1409, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1426
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %49, align 1
  %1433 = add i64 %1402, 11
  store i64 %1433, i64* %3, align 8
  store i32 %1410, i32* %1408, align 4
  %1434 = load i64, i64* %3, align 8
  %1435 = add i64 %1434, 622
  br label %block_.L_41658f

block_.L_416326:                                  ; preds = %block_.L_4162fc
  %1436 = add i64 %1402, 3
  store i64 %1436, i64* %3, align 8
  %1437 = load i32, i32* %1355, align 4
  %1438 = add i32 %1437, -1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i1477, align 8
  %1440 = icmp eq i32 %1437, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %24, align 1
  %1442 = and i32 %1438, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %31, align 1
  %1447 = xor i32 %1438, %1437
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %37, align 1
  %1451 = icmp eq i32 %1438, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %40, align 1
  %1453 = lshr i32 %1438, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %43, align 1
  %1455 = lshr i32 %1437, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %49, align 1
  %1460 = sext i32 %1438 to i64
  store i64 %1460, i64* %RCX.i1453, align 8
  %1461 = add nsw i64 %1460, 12099168
  %1462 = add i64 %1402, 17
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i8*
  %1464 = load i8, i8* %1463, align 1
  %1465 = zext i8 %1464 to i64
  store i64 %1465, i64* %RAX.i1477, align 8
  %1466 = zext i8 %1464 to i32
  store i8 0, i8* %24, align 1
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %1471 = icmp eq i8 %1464, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v95 = select i1 %1471, i64 26, i64 42
  %1473 = add i64 %1402, %.v95
  store i64 %1473, i64* %3, align 8
  br i1 %1471, label %block_416340, label %block_.L_416350

block_416340:                                     ; preds = %block_.L_416326
  %1474 = add i64 %1352, -96
  %1475 = add i64 %1473, 4
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RAX.i1477, align 8
  %1478 = add i64 %1473, 6
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = add i32 %1480, 1
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RCX.i1453, align 8
  %1483 = icmp eq i32 %1480, -1
  %1484 = icmp eq i32 %1481, 0
  %1485 = or i1 %1483, %1484
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %24, align 1
  %1487 = and i32 %1481, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %31, align 1
  %1492 = xor i32 %1481, %1480
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %37, align 1
  %1496 = zext i1 %1484 to i8
  store i8 %1496, i8* %40, align 1
  %1497 = lshr i32 %1481, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %43, align 1
  %1499 = lshr i32 %1480, 31
  %1500 = xor i32 %1497, %1499
  %1501 = add nuw nsw i32 %1500, %1497
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %49, align 1
  %1504 = add i64 %1473, 11
  store i64 %1504, i64* %3, align 8
  store i32 %1481, i32* %1479, align 4
  %1505 = load i64, i64* %3, align 8
  %1506 = add i64 %1505, 575
  br label %block_.L_41658a

block_.L_416350:                                  ; preds = %block_.L_416326
  %1507 = add i64 %1473, 3
  store i64 %1507, i64* %3, align 8
  %1508 = load i32, i32* %1355, align 4
  %1509 = add i32 %1508, -1
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i1477, align 8
  %1511 = icmp eq i32 %1508, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %24, align 1
  %1513 = and i32 %1509, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %31, align 1
  %1518 = xor i32 %1509, %1508
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %37, align 1
  %1522 = icmp eq i32 %1509, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %40, align 1
  %1524 = lshr i32 %1509, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %43, align 1
  %1526 = lshr i32 %1508, 31
  %1527 = xor i32 %1524, %1526
  %1528 = add nuw nsw i32 %1527, %1526
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %49, align 1
  %1531 = sext i32 %1509 to i64
  store i64 %1531, i64* %RCX.i1453, align 8
  %1532 = shl nsw i64 %1531, 2
  %1533 = add nsw i64 %1532, 11187184
  %1534 = add i64 %1473, 16
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i1477, align 8
  %1538 = add i64 %1352, -116
  %1539 = add i64 %1473, 19
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  store i32 %1536, i32* %1540, align 4
  %1541 = load i64, i64* %RBP.i, align 8
  %1542 = add i64 %1541, -28
  %1543 = load i64, i64* %3, align 8
  %1544 = add i64 %1543, 4
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1542 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = sext i32 %1546 to i64
  store i64 %1547, i64* %RCX.i1453, align 8
  %1548 = shl nsw i64 %1547, 2
  %1549 = add nsw i64 %1548, 11187184
  %1550 = add i64 %1543, 11
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RAX.i1477, align 8
  %1554 = add i64 %1541, -116
  %1555 = add i64 %1543, 14
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = sub i32 %1552, %1557
  %1559 = icmp ult i32 %1552, %1557
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %24, align 1
  %1561 = and i32 %1558, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %31, align 1
  %1566 = xor i32 %1557, %1552
  %1567 = xor i32 %1566, %1558
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %37, align 1
  %1571 = icmp eq i32 %1558, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %40, align 1
  %1573 = lshr i32 %1558, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %43, align 1
  %1575 = lshr i32 %1552, 31
  %1576 = lshr i32 %1557, 31
  %1577 = xor i32 %1576, %1575
  %1578 = xor i32 %1573, %1575
  %1579 = add nuw nsw i32 %1578, %1577
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %49, align 1
  %.v96 = select i1 %1571, i64 20, i64 31
  %1582 = add i64 %1543, %.v96
  store i64 %1582, i64* %3, align 8
  br i1 %1571, label %block_416377, label %block_.L_416382

block_416377:                                     ; preds = %block_.L_416350
  %1583 = add i64 %1541, -48
  %1584 = add i64 %1582, 4
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i64*
  %1586 = load i64, i64* %1585, align 8
  store i64 %1586, i64* %RAX.i1477, align 8
  %1587 = add i64 %1582, 6
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = add i32 %1589, 1
  %1591 = zext i32 %1590 to i64
  store i64 %1591, i64* %RCX.i1453, align 8
  %1592 = icmp eq i32 %1589, -1
  %1593 = icmp eq i32 %1590, 0
  %1594 = or i1 %1592, %1593
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %24, align 1
  %1596 = and i32 %1590, 255
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %31, align 1
  %1601 = xor i32 %1590, %1589
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %37, align 1
  %1605 = zext i1 %1593 to i8
  store i8 %1605, i8* %40, align 1
  %1606 = lshr i32 %1590, 31
  %1607 = trunc i32 %1606 to i8
  store i8 %1607, i8* %43, align 1
  %1608 = lshr i32 %1589, 31
  %1609 = xor i32 %1606, %1608
  %1610 = add nuw nsw i32 %1609, %1606
  %1611 = icmp eq i32 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %49, align 1
  %1613 = add i64 %1582, 11
  store i64 %1613, i64* %3, align 8
  store i32 %1590, i32* %1588, align 4
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_416382

block_.L_416382:                                  ; preds = %block_.L_416350, %block_416377
  %1614 = phi i64 [ %.pre68, %block_416377 ], [ %1582, %block_.L_416350 ]
  %1615 = phi i64 [ %.pre67, %block_416377 ], [ %1541, %block_.L_416350 ]
  %1616 = add i64 %1615, -20
  %1617 = add i64 %1614, 3
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = add i32 %1619, -1
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RAX.i1477, align 8
  %1622 = icmp eq i32 %1619, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %24, align 1
  %1624 = and i32 %1620, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %31, align 1
  %1629 = xor i32 %1620, %1619
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %37, align 1
  %1633 = icmp eq i32 %1620, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %40, align 1
  %1635 = lshr i32 %1620, 31
  %1636 = trunc i32 %1635 to i8
  store i8 %1636, i8* %43, align 1
  %1637 = lshr i32 %1619, 31
  %1638 = xor i32 %1635, %1637
  %1639 = add nuw nsw i32 %1638, %1637
  %1640 = icmp eq i32 %1639, 2
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %49, align 1
  %1642 = sext i32 %1620 to i64
  store i64 %1642, i64* %RCX.i1453, align 8
  %1643 = add nsw i64 %1642, 12099168
  %1644 = add i64 %1614, 17
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i8*
  %1646 = load i8, i8* %1645, align 1
  %1647 = zext i8 %1646 to i64
  store i64 %1647, i64* %RAX.i1477, align 8
  %1648 = zext i8 %1646 to i32
  %1649 = add i64 %1615, -24
  %1650 = add i64 %1614, 20
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = sub i32 %1648, %1652
  %1654 = icmp ult i32 %1648, %1652
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %24, align 1
  %1656 = and i32 %1653, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %31, align 1
  %1661 = xor i32 %1652, %1648
  %1662 = xor i32 %1661, %1653
  %1663 = lshr i32 %1662, 4
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %37, align 1
  %1666 = icmp eq i32 %1653, 0
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %40, align 1
  %1668 = lshr i32 %1653, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %43, align 1
  %1670 = lshr i32 %1652, 31
  %1671 = add nuw nsw i32 %1668, %1670
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %49, align 1
  %.v97 = select i1 %1666, i64 26, i64 111
  %1674 = add i64 %1614, %.v97
  %1675 = add i64 %1674, 10
  store i64 %1675, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  br i1 %1666, label %block_41639c, label %block_.L_4163f1

block_41639c:                                     ; preds = %block_.L_416382
  %1676 = add i64 %1615, -56
  %1677 = add i64 %1674, 14
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i64*
  %1679 = load i64, i64* %1678, align 8
  store i64 %1679, i64* %RCX.i1453, align 8
  %1680 = add i64 %1674, 16
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = add i32 %1682, 1
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RDX.i1434, align 8
  %1685 = icmp eq i32 %1682, -1
  %1686 = icmp eq i32 %1683, 0
  %1687 = or i1 %1685, %1686
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %24, align 1
  %1689 = and i32 %1683, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %31, align 1
  %1694 = xor i32 %1683, %1682
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %37, align 1
  %1698 = zext i1 %1686 to i8
  store i8 %1698, i8* %40, align 1
  %1699 = lshr i32 %1683, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %43, align 1
  %1701 = lshr i32 %1682, 31
  %1702 = xor i32 %1699, %1701
  %1703 = add nuw nsw i32 %1702, %1699
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %49, align 1
  %1706 = add i64 %1674, 21
  store i64 %1706, i64* %3, align 8
  store i32 %1683, i32* %1681, align 4
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -116
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1708 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = sext i32 %1712 to i64
  %1714 = mul nsw i64 %1713, 744
  store i64 %1714, i64* %RCX.i1453, align 8
  %1715 = lshr i64 %1714, 63
  %1716 = load i64, i64* %RAX.i1477, align 8
  %1717 = add i64 %1714, %1716
  store i64 %1717, i64* %RAX.i1477, align 8
  %1718 = icmp ult i64 %1717, %1716
  %1719 = icmp ult i64 %1717, %1714
  %1720 = or i1 %1718, %1719
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %24, align 1
  %1722 = trunc i64 %1717 to i32
  %1723 = and i32 %1722, 255
  %1724 = tail call i32 @llvm.ctpop.i32(i32 %1723)
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  store i8 %1727, i8* %31, align 1
  %1728 = xor i64 %1714, %1716
  %1729 = xor i64 %1728, %1717
  %1730 = lshr i64 %1729, 4
  %1731 = trunc i64 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %37, align 1
  %1733 = icmp eq i64 %1717, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %40, align 1
  %1735 = lshr i64 %1717, 63
  %1736 = trunc i64 %1735 to i8
  store i8 %1736, i8* %43, align 1
  %1737 = lshr i64 %1716, 63
  %1738 = xor i64 %1735, %1737
  %1739 = xor i64 %1735, %1715
  %1740 = add nuw nsw i64 %1738, %1739
  %1741 = icmp eq i64 %1740, 2
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %49, align 1
  %1743 = add i64 %1717, 12
  %1744 = add i64 %1709, 18
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = add i32 %1746, -1
  %1748 = icmp eq i32 %1746, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %24, align 1
  %1750 = and i32 %1747, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %31, align 1
  %1755 = xor i32 %1747, %1746
  %1756 = lshr i32 %1755, 4
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  store i8 %1758, i8* %37, align 1
  %1759 = icmp eq i32 %1747, 0
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %40, align 1
  %1761 = lshr i32 %1747, 31
  %1762 = trunc i32 %1761 to i8
  store i8 %1762, i8* %43, align 1
  %1763 = lshr i32 %1746, 31
  %1764 = xor i32 %1761, %1763
  %1765 = add nuw nsw i32 %1764, %1763
  %1766 = icmp eq i32 %1765, 2
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %49, align 1
  %.v123 = select i1 %1759, i64 24, i64 59
  %1768 = add i64 %1709, %.v123
  store i64 %1768, i64* %3, align 8
  br i1 %1759, label %block_4163c9, label %block_.L_4163ec

block_4163c9:                                     ; preds = %block_41639c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -116
  %1771 = add i64 %1768, 14
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = sext i32 %1773 to i64
  %1775 = mul nsw i64 %1774, 744
  store i64 %1775, i64* %RCX.i1453, align 8
  %1776 = lshr i64 %1775, 63
  %1777 = add i64 %1775, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1777, i64* %RAX.i1477, align 8
  %1778 = icmp ult i64 %1777, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1779 = icmp ult i64 %1777, %1775
  %1780 = or i1 %1778, %1779
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %24, align 1
  %1782 = trunc i64 %1777 to i32
  %1783 = and i32 %1782, 248
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %31, align 1
  %1788 = xor i64 %1775, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1789 = xor i64 %1788, %1777
  %1790 = lshr i64 %1789, 4
  %1791 = trunc i64 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %37, align 1
  %1793 = icmp eq i64 %1777, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %40, align 1
  %1795 = lshr i64 %1777, 63
  %1796 = trunc i64 %1795 to i8
  store i8 %1796, i8* %43, align 1
  %1797 = xor i64 %1795, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1798 = xor i64 %1795, %1776
  %1799 = add nuw nsw i64 %1797, %1798
  %1800 = icmp eq i64 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %49, align 1
  %1802 = add i64 %1775, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %1803 = add i64 %1768, 27
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RDX.i1434, align 8
  %1807 = add i64 %1769, -88
  %1808 = add i64 %1768, 31
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1807 to i64*
  %1810 = load i64, i64* %1809, align 8
  store i64 %1810, i64* %RAX.i1477, align 8
  %1811 = add i64 %1768, 33
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = add i32 %1813, %1805
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RDX.i1434, align 8
  %1816 = icmp ult i32 %1814, %1805
  %1817 = icmp ult i32 %1814, %1813
  %1818 = or i1 %1816, %1817
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %24, align 1
  %1820 = and i32 %1814, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %31, align 1
  %1825 = xor i32 %1813, %1805
  %1826 = xor i32 %1825, %1814
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %37, align 1
  %1830 = icmp eq i32 %1814, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %40, align 1
  %1832 = lshr i32 %1814, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %43, align 1
  %1834 = lshr i32 %1805, 31
  %1835 = lshr i32 %1813, 31
  %1836 = xor i32 %1832, %1834
  %1837 = xor i32 %1832, %1835
  %1838 = add nuw nsw i32 %1836, %1837
  %1839 = icmp eq i32 %1838, 2
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %49, align 1
  %1841 = add i64 %1768, 35
  store i64 %1841, i64* %3, align 8
  store i32 %1814, i32* %1812, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4163ec

block_.L_4163ec:                                  ; preds = %block_41639c, %block_4163c9
  %1842 = phi i64 [ %.pre69, %block_4163c9 ], [ %1768, %block_41639c ]
  %1843 = add i64 %1842, 409
  br label %block_.L_416585

block_.L_4163f1:                                  ; preds = %block_.L_416382
  %1844 = add i64 %1615, -64
  %1845 = add i64 %1674, 14
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RCX.i1453, align 8
  %1848 = add i64 %1674, 16
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = add i32 %1850, 1
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RDX.i1434, align 8
  %1853 = icmp eq i32 %1850, -1
  %1854 = icmp eq i32 %1851, 0
  %1855 = or i1 %1853, %1854
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %24, align 1
  %1857 = and i32 %1851, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %31, align 1
  %1862 = xor i32 %1851, %1850
  %1863 = lshr i32 %1862, 4
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %37, align 1
  %1866 = zext i1 %1854 to i8
  store i8 %1866, i8* %40, align 1
  %1867 = lshr i32 %1851, 31
  %1868 = trunc i32 %1867 to i8
  store i8 %1868, i8* %43, align 1
  %1869 = lshr i32 %1850, 31
  %1870 = xor i32 %1867, %1869
  %1871 = add nuw nsw i32 %1870, %1867
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %49, align 1
  %1874 = add i64 %1674, 21
  store i64 %1874, i64* %3, align 8
  store i32 %1851, i32* %1849, align 4
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -116
  %1877 = load i64, i64* %3, align 8
  %1878 = add i64 %1877, 4
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1876 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = mul nsw i64 %1881, 744
  store i64 %1882, i64* %RCX.i1453, align 8
  %1883 = lshr i64 %1882, 63
  %1884 = load i64, i64* %RAX.i1477, align 8
  %1885 = add i64 %1882, %1884
  store i64 %1885, i64* %RAX.i1477, align 8
  %1886 = icmp ult i64 %1885, %1884
  %1887 = icmp ult i64 %1885, %1882
  %1888 = or i1 %1886, %1887
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %24, align 1
  %1890 = trunc i64 %1885 to i32
  %1891 = and i32 %1890, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %31, align 1
  %1896 = xor i64 %1882, %1884
  %1897 = xor i64 %1896, %1885
  %1898 = lshr i64 %1897, 4
  %1899 = trunc i64 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %37, align 1
  %1901 = icmp eq i64 %1885, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %40, align 1
  %1903 = lshr i64 %1885, 63
  %1904 = trunc i64 %1903 to i8
  store i8 %1904, i8* %43, align 1
  %1905 = lshr i64 %1884, 63
  %1906 = xor i64 %1903, %1905
  %1907 = xor i64 %1903, %1883
  %1908 = add nuw nsw i64 %1906, %1907
  %1909 = icmp eq i64 %1908, 2
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %49, align 1
  %1911 = add i64 %1885, 12
  %1912 = add i64 %1877, 18
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = add i32 %1914, -1
  %1916 = icmp eq i32 %1914, 0
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %24, align 1
  %1918 = and i32 %1915, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918)
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %31, align 1
  %1923 = xor i32 %1915, %1914
  %1924 = lshr i32 %1923, 4
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  store i8 %1926, i8* %37, align 1
  %1927 = icmp eq i32 %1915, 0
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %40, align 1
  %1929 = lshr i32 %1915, 31
  %1930 = trunc i32 %1929 to i8
  store i8 %1930, i8* %43, align 1
  %1931 = lshr i32 %1914, 31
  %1932 = xor i32 %1929, %1931
  %1933 = add nuw nsw i32 %1932, %1931
  %1934 = icmp eq i32 %1933, 2
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %49, align 1
  %.v98 = select i1 %1927, i64 24, i64 205
  %1936 = add i64 %1877, %.v98
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -116
  %1939 = add i64 %1936, 14
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = sext i32 %1941 to i64
  %1943 = mul nsw i64 %1942, 744
  store i64 %1943, i64* %RCX.i1453, align 8
  %1944 = lshr i64 %1943, 63
  %1945 = add i64 %1936, 24
  store i64 %1945, i64* %3, align 8
  %1946 = add i64 %1943, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1946, i64* %RAX.i1477, align 8
  %1947 = icmp ult i64 %1946, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1948 = icmp ult i64 %1946, %1943
  %1949 = or i1 %1947, %1948
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %24, align 1
  %1951 = trunc i64 %1946 to i32
  %1952 = and i32 %1951, 248
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %31, align 1
  %1957 = xor i64 %1943, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1958 = xor i64 %1957, %1946
  %1959 = lshr i64 %1958, 4
  %1960 = trunc i64 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %37, align 1
  %1962 = icmp eq i64 %1946, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %40, align 1
  %1964 = lshr i64 %1946, 63
  %1965 = trunc i64 %1964 to i8
  store i8 %1965, i8* %43, align 1
  %1966 = xor i64 %1964, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1967 = xor i64 %1964, %1944
  %1968 = add nuw nsw i64 %1966, %1967
  %1969 = icmp eq i64 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %49, align 1
  br i1 %1927, label %block_41641e, label %block_.L_4164d3

block_41641e:                                     ; preds = %block_.L_4163f1
  %1971 = add i64 %1943, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %1972 = add i64 %1936, 27
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RDX.i1434, align 8
  %1976 = add i64 %1937, -72
  %1977 = add i64 %1936, 31
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i64*
  %1979 = load i64, i64* %1978, align 8
  store i64 %1979, i64* %RAX.i1477, align 8
  %1980 = add i64 %1936, 33
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = add i32 %1982, %1974
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RDX.i1434, align 8
  %1985 = icmp ult i32 %1983, %1974
  %1986 = icmp ult i32 %1983, %1982
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %24, align 1
  %1989 = and i32 %1983, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %31, align 1
  %1994 = xor i32 %1982, %1974
  %1995 = xor i32 %1994, %1983
  %1996 = lshr i32 %1995, 4
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  store i8 %1998, i8* %37, align 1
  %1999 = icmp eq i32 %1983, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %40, align 1
  %2001 = lshr i32 %1983, 31
  %2002 = trunc i32 %2001 to i8
  store i8 %2002, i8* %43, align 1
  %2003 = lshr i32 %1974, 31
  %2004 = lshr i32 %1982, 31
  %2005 = xor i32 %2001, %2003
  %2006 = xor i32 %2001, %2004
  %2007 = add nuw nsw i32 %2005, %2006
  %2008 = icmp eq i32 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %49, align 1
  %2010 = add i64 %1936, 35
  store i64 %2010, i64* %3, align 8
  store i32 %1983, i32* %1981, align 4
  %2011 = load i64, i64* %RBP.i, align 8
  %2012 = add i64 %2011, -120
  %2013 = load i64, i64* %3, align 8
  %2014 = add i64 %2013, 7
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2012 to i32*
  store i32 0, i32* %2015, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_416448

block_.L_416448:                                  ; preds = %block_.L_4164bb, %block_41641e
  %2016 = phi i64 [ %2269, %block_.L_4164bb ], [ %.pre70, %block_41641e ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %2017 = load i64, i64* %RBP.i, align 8
  %2018 = add i64 %2017, -120
  %2019 = add i64 %2016, 13
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i1453, align 8
  %2023 = add i64 %2017, -116
  %2024 = add i64 %2016, 17
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = sext i32 %2026 to i64
  %2028 = mul nsw i64 %2027, 744
  store i64 %2028, i64* %RDX.i1434, align 8
  %2029 = lshr i64 %2028, 63
  %2030 = add i64 %2028, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2030, i64* %RAX.i1477, align 8
  %2031 = icmp ult i64 %2030, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2032 = icmp ult i64 %2030, %2028
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %24, align 1
  %2035 = trunc i64 %2030 to i32
  %2036 = and i32 %2035, 248
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %31, align 1
  %2041 = xor i64 %2028, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2042 = xor i64 %2041, %2030
  %2043 = lshr i64 %2042, 4
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %37, align 1
  %2046 = icmp eq i64 %2030, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %40, align 1
  %2048 = lshr i64 %2030, 63
  %2049 = trunc i64 %2048 to i8
  store i8 %2049, i8* %43, align 1
  %2050 = xor i64 %2048, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2051 = xor i64 %2048, %2029
  %2052 = add nuw nsw i64 %2050, %2051
  %2053 = icmp eq i64 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %49, align 1
  %2055 = add i64 %2028, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %2056 = add i64 %2016, 30
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 8
  %2059 = sub i32 %2021, %2058
  %2060 = icmp ult i32 %2021, %2058
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %24, align 1
  %2062 = and i32 %2059, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %31, align 1
  %2067 = xor i32 %2058, %2021
  %2068 = xor i32 %2067, %2059
  %2069 = lshr i32 %2068, 4
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %37, align 1
  %2072 = icmp eq i32 %2059, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %40, align 1
  %2074 = lshr i32 %2059, 31
  %2075 = trunc i32 %2074 to i8
  store i8 %2075, i8* %43, align 1
  %2076 = lshr i32 %2021, 31
  %2077 = lshr i32 %2058, 31
  %2078 = xor i32 %2077, %2076
  %2079 = xor i32 %2074, %2076
  %2080 = add nuw nsw i32 %2079, %2078
  %2081 = icmp eq i32 %2080, 2
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %49, align 1
  %2083 = icmp ne i8 %2075, 0
  %2084 = xor i1 %2083, %2081
  %.v121 = select i1 %2084, i64 36, i64 134
  %2085 = add i64 %2016, %.v121
  store i64 %2085, i64* %3, align 8
  br i1 %2084, label %block_41646c, label %block_.L_4164ce

block_41646c:                                     ; preds = %block_.L_416448
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %2086 = load i64, i64* %RBP.i, align 8
  %2087 = add i64 %2086, -116
  %2088 = add i64 %2085, 14
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = sext i32 %2090 to i64
  %2092 = mul nsw i64 %2091, 744
  store i64 %2092, i64* %RCX.i1453, align 8
  %2093 = lshr i64 %2092, 63
  %2094 = add i64 %2092, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2094, i64* %RDX.i1434, align 8
  %2095 = icmp ult i64 %2094, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2096 = icmp ult i64 %2094, %2092
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %24, align 1
  %2099 = trunc i64 %2094 to i32
  %2100 = and i32 %2099, 248
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %31, align 1
  %2105 = xor i64 %2092, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2106 = xor i64 %2105, %2094
  %2107 = lshr i64 %2106, 4
  %2108 = trunc i64 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %37, align 1
  %2110 = icmp eq i64 %2094, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %40, align 1
  %2112 = lshr i64 %2094, 63
  %2113 = trunc i64 %2112 to i8
  store i8 %2113, i8* %43, align 1
  %2114 = xor i64 %2112, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2115 = xor i64 %2112, %2093
  %2116 = add nuw nsw i64 %2114, %2115
  %2117 = icmp eq i64 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %49, align 1
  %2119 = add i64 %2086, -120
  %2120 = add i64 %2085, 31
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = sext i32 %2122 to i64
  store i64 %2123, i64* %RCX.i1453, align 8
  %2124 = shl nsw i64 %2123, 2
  %2125 = add i64 %2092, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %2126 = add i64 %2125, %2124
  %2127 = add i64 %2085, 36
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sext i32 %2129 to i64
  %2131 = mul nsw i64 %2130, 744
  store i64 %2131, i64* %RCX.i1453, align 8
  %2132 = lshr i64 %2131, 63
  %2133 = load i64, i64* %RAX.i1477, align 8
  %2134 = add i64 %2131, %2133
  store i64 %2134, i64* %RAX.i1477, align 8
  %2135 = icmp ult i64 %2134, %2133
  %2136 = icmp ult i64 %2134, %2131
  %2137 = or i1 %2135, %2136
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %24, align 1
  %2139 = trunc i64 %2134 to i32
  %2140 = and i32 %2139, 255
  %2141 = tail call i32 @llvm.ctpop.i32(i32 %2140)
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  store i8 %2144, i8* %31, align 1
  %2145 = xor i64 %2131, %2133
  %2146 = xor i64 %2145, %2134
  %2147 = lshr i64 %2146, 4
  %2148 = trunc i64 %2147 to i8
  %2149 = and i8 %2148, 1
  store i8 %2149, i8* %37, align 1
  %2150 = icmp eq i64 %2134, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %40, align 1
  %2152 = lshr i64 %2134, 63
  %2153 = trunc i64 %2152 to i8
  store i8 %2153, i8* %43, align 1
  %2154 = lshr i64 %2133, 63
  %2155 = xor i64 %2152, %2154
  %2156 = xor i64 %2152, %2132
  %2157 = add nuw nsw i64 %2155, %2156
  %2158 = icmp eq i64 %2157, 2
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %49, align 1
  %2160 = load i64, i64* %RBP.i, align 8
  %2161 = add i64 %2160, -128
  %2162 = add i64 %2085, 50
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  store i64 %2134, i64* %2163, align 8
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, -128
  %2166 = load i64, i64* %3, align 8
  %2167 = add i64 %2166, 4
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2165 to i64*
  %2169 = load i64, i64* %2168, align 8
  store i64 %2169, i64* %RAX.i1477, align 8
  %2170 = add i64 %2169, 12
  %2171 = add i64 %2166, 8
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = add i32 %2173, -1
  %2175 = icmp eq i32 %2173, 0
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %24, align 1
  %2177 = and i32 %2174, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %31, align 1
  %2182 = xor i32 %2174, %2173
  %2183 = lshr i32 %2182, 4
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  store i8 %2185, i8* %37, align 1
  %2186 = icmp eq i32 %2174, 0
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %40, align 1
  %2188 = lshr i32 %2174, 31
  %2189 = trunc i32 %2188 to i8
  store i8 %2189, i8* %43, align 1
  %2190 = lshr i32 %2173, 31
  %2191 = xor i32 %2188, %2190
  %2192 = add nuw nsw i32 %2191, %2190
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %49, align 1
  %.v122 = select i1 %2186, i64 14, i64 29
  %2195 = add i64 %2166, %.v122
  store i64 %2195, i64* %3, align 8
  br i1 %2186, label %block_4164ac, label %block_.L_4164bb

block_4164ac:                                     ; preds = %block_41646c
  %2196 = add i64 %2195, 4
  store i64 %2196, i64* %3, align 8
  %2197 = load i64, i64* %2168, align 8
  store i64 %2197, i64* %RAX.i1477, align 8
  %2198 = add i64 %2197, 4
  %2199 = add i64 %2195, 7
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  %2202 = zext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i1453, align 8
  %2203 = add i64 %2164, -88
  %2204 = add i64 %2195, 11
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i64*
  %2206 = load i64, i64* %2205, align 8
  store i64 %2206, i64* %RAX.i1477, align 8
  %2207 = add i64 %2195, 13
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  %2209 = load i32, i32* %2208, align 4
  %2210 = add i32 %2209, %2201
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RCX.i1453, align 8
  %2212 = icmp ult i32 %2210, %2201
  %2213 = icmp ult i32 %2210, %2209
  %2214 = or i1 %2212, %2213
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %24, align 1
  %2216 = and i32 %2210, 255
  %2217 = tail call i32 @llvm.ctpop.i32(i32 %2216)
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  %2220 = xor i8 %2219, 1
  store i8 %2220, i8* %31, align 1
  %2221 = xor i32 %2209, %2201
  %2222 = xor i32 %2221, %2210
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %37, align 1
  %2226 = icmp eq i32 %2210, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %40, align 1
  %2228 = lshr i32 %2210, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %43, align 1
  %2230 = lshr i32 %2201, 31
  %2231 = lshr i32 %2209, 31
  %2232 = xor i32 %2228, %2230
  %2233 = xor i32 %2228, %2231
  %2234 = add nuw nsw i32 %2232, %2233
  %2235 = icmp eq i32 %2234, 2
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %49, align 1
  %2237 = add i64 %2195, 15
  store i64 %2237, i64* %3, align 8
  store i32 %2210, i32* %2208, align 4
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4164bb

block_.L_4164bb:                                  ; preds = %block_41646c, %block_4164ac
  %2238 = phi i64 [ %.pre72, %block_4164ac ], [ %2164, %block_41646c ]
  %2239 = phi i64 [ %.pre71, %block_4164ac ], [ %2195, %block_41646c ]
  %2240 = add i64 %2238, -120
  %2241 = add i64 %2239, 8
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, 1
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RAX.i1477, align 8
  %2246 = icmp eq i32 %2243, -1
  %2247 = icmp eq i32 %2244, 0
  %2248 = or i1 %2246, %2247
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %24, align 1
  %2250 = and i32 %2244, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %31, align 1
  %2255 = xor i32 %2244, %2243
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  store i8 %2258, i8* %37, align 1
  %2259 = zext i1 %2247 to i8
  store i8 %2259, i8* %40, align 1
  %2260 = lshr i32 %2244, 31
  %2261 = trunc i32 %2260 to i8
  store i8 %2261, i8* %43, align 1
  %2262 = lshr i32 %2243, 31
  %2263 = xor i32 %2260, %2262
  %2264 = add nuw nsw i32 %2263, %2260
  %2265 = icmp eq i32 %2264, 2
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %49, align 1
  %2267 = add i64 %2239, 14
  store i64 %2267, i64* %3, align 8
  store i32 %2244, i32* %2242, align 4
  %2268 = load i64, i64* %3, align 8
  %2269 = add i64 %2268, -129
  store i64 %2269, i64* %3, align 8
  br label %block_.L_416448

block_.L_4164ce:                                  ; preds = %block_.L_416448
  %2270 = add i64 %2085, 178
  br label %block_.L_416580

block_.L_4164d3:                                  ; preds = %block_.L_4163f1
  %2271 = add i64 %1943, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2272 = add i64 %1936, 28
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = add i32 %2274, -2
  %2276 = icmp ult i32 %2274, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %24, align 1
  %2278 = and i32 %2275, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %31, align 1
  %2283 = xor i32 %2275, %2274
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %37, align 1
  %2287 = icmp eq i32 %2275, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %40, align 1
  %2289 = lshr i32 %2275, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %43, align 1
  %2291 = lshr i32 %2274, 31
  %2292 = xor i32 %2289, %2291
  %2293 = add nuw nsw i32 %2292, %2291
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %49, align 1
  %.v99 = select i1 %2287, i64 34, i64 168
  %2296 = add i64 %1936, %.v99
  store i64 %2296, i64* %3, align 8
  br i1 %2287, label %block_4164f5, label %block_.L_41657b

block_4164f5:                                     ; preds = %block_.L_4164d3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %2297 = add i64 %1937, -20
  %2298 = add i64 %2296, 13
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = add i32 %2300, -1
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %RCX.i1453, align 8
  %2303 = icmp eq i32 %2300, 0
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %24, align 1
  %2305 = and i32 %2301, 255
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %31, align 1
  %2310 = xor i32 %2301, %2300
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %37, align 1
  %2314 = icmp eq i32 %2301, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %40, align 1
  %2316 = lshr i32 %2301, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %43, align 1
  %2318 = lshr i32 %2300, 31
  %2319 = xor i32 %2316, %2318
  %2320 = add nuw nsw i32 %2319, %2318
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %49, align 1
  %2323 = sext i32 %2301 to i64
  store i64 %2323, i64* %RDX.i1434, align 8
  %2324 = shl nsw i64 %2323, 2
  %2325 = add nsw i64 %2324, 11187184
  %2326 = add i64 %2296, 27
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  %2329 = sext i32 %2328 to i64
  %2330 = mul nsw i64 %2329, 744
  store i64 %2330, i64* %RDX.i1434, align 8
  %2331 = lshr i64 %2330, 63
  %2332 = add i64 %2330, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2332, i64* %RAX.i1477, align 8
  %2333 = icmp ult i64 %2332, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2334 = icmp ult i64 %2332, %2330
  %2335 = or i1 %2333, %2334
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %24, align 1
  %2337 = trunc i64 %2332 to i32
  %2338 = and i32 %2337, 248
  %2339 = tail call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  store i8 %2342, i8* %31, align 1
  %2343 = xor i64 %2330, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2344 = xor i64 %2343, %2332
  %2345 = lshr i64 %2344, 4
  %2346 = trunc i64 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %37, align 1
  %2348 = icmp eq i64 %2332, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %40, align 1
  %2350 = lshr i64 %2332, 63
  %2351 = trunc i64 %2350 to i8
  store i8 %2351, i8* %43, align 1
  %2352 = xor i64 %2350, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2353 = xor i64 %2350, %2331
  %2354 = add nuw nsw i64 %2352, %2353
  %2355 = icmp eq i64 %2354, 2
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %49, align 1
  %2357 = add i64 %2330, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2358 = add i64 %2296, 43
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %RCX.i1453, align 8
  %2362 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2363 = sub i32 %2360, %2362
  %2364 = icmp ult i32 %2360, %2362
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %24, align 1
  %2366 = and i32 %2363, 255
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %31, align 1
  %2371 = xor i32 %2362, %2360
  %2372 = xor i32 %2371, %2363
  %2373 = lshr i32 %2372, 4
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  store i8 %2375, i8* %37, align 1
  %2376 = icmp eq i32 %2363, 0
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %40, align 1
  %2378 = lshr i32 %2363, 31
  %2379 = trunc i32 %2378 to i8
  store i8 %2379, i8* %43, align 1
  %2380 = lshr i32 %2360, 31
  %2381 = lshr i32 %2362, 31
  %2382 = xor i32 %2381, %2380
  %2383 = xor i32 %2378, %2380
  %2384 = add nuw nsw i32 %2383, %2382
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %49, align 1
  %.v120 = select i1 %2376, i64 134, i64 56
  %2387 = add i64 %2296, %.v120
  store i64 %2387, i64* %3, align 8
  br i1 %2376, label %block_.L_41657b, label %block_41652d

block_41652d:                                     ; preds = %block_4164f5
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = add i64 %2388, -116
  %2390 = add i64 %2387, 14
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i32*
  %2392 = load i32, i32* %2391, align 4
  %2393 = sext i32 %2392 to i64
  %2394 = mul nsw i64 %2393, 744
  store i64 %2394, i64* %RCX.i1453, align 8
  %2395 = lshr i64 %2394, 63
  %2396 = add i64 %2394, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2396, i64* %RDX.i1434, align 8
  %2397 = icmp ult i64 %2396, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2398 = icmp ult i64 %2396, %2394
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %24, align 1
  %2401 = trunc i64 %2396 to i32
  %2402 = and i32 %2401, 248
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %31, align 1
  %2407 = xor i64 %2394, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2408 = xor i64 %2407, %2396
  %2409 = lshr i64 %2408, 4
  %2410 = trunc i64 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %37, align 1
  %2412 = icmp eq i64 %2396, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %40, align 1
  %2414 = lshr i64 %2396, 63
  %2415 = trunc i64 %2414 to i8
  store i8 %2415, i8* %43, align 1
  %2416 = xor i64 %2414, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2417 = xor i64 %2414, %2395
  %2418 = add nuw nsw i64 %2416, %2417
  %2419 = icmp eq i64 %2418, 2
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %49, align 1
  %RSI.i748 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %2421 = add i64 %2394, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %2422 = add i64 %2387, 30
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  %2424 = load i32, i32* %2423, align 4
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RSI.i748, align 8
  %2426 = add i64 %2388, -80
  %2427 = add i64 %2387, 34
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i64*
  %2429 = load i64, i64* %2428, align 8
  store i64 %2429, i64* %RCX.i1453, align 8
  %2430 = add i64 %2387, 36
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  %2432 = load i32, i32* %2431, align 4
  %2433 = add i32 %2432, %2424
  %2434 = icmp ult i32 %2433, %2424
  %2435 = icmp ult i32 %2433, %2432
  %2436 = or i1 %2434, %2435
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %24, align 1
  %2438 = and i32 %2433, 255
  %2439 = tail call i32 @llvm.ctpop.i32(i32 %2438)
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = xor i8 %2441, 1
  store i8 %2442, i8* %31, align 1
  %2443 = xor i32 %2432, %2424
  %2444 = xor i32 %2443, %2433
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  store i8 %2447, i8* %37, align 1
  %2448 = icmp eq i32 %2433, 0
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %40, align 1
  %2450 = lshr i32 %2433, 31
  %2451 = trunc i32 %2450 to i8
  store i8 %2451, i8* %43, align 1
  %2452 = lshr i32 %2424, 31
  %2453 = lshr i32 %2432, 31
  %2454 = xor i32 %2450, %2452
  %2455 = xor i32 %2450, %2453
  %2456 = add nuw nsw i32 %2454, %2455
  %2457 = icmp eq i32 %2456, 2
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %49, align 1
  %2459 = add i64 %2387, 38
  store i64 %2459, i64* %3, align 8
  store i32 %2433, i32* %2431, align 4
  %2460 = load i64, i64* %3, align 8
  %2461 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2462 = zext i32 %2461 to i64
  store i64 %2462, i64* %RSI.i748, align 8
  %RDI.i733 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -20
  %2465 = add i64 %2460, 10
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = add i32 %2467, -1
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RDI.i733, align 8
  %2470 = icmp eq i32 %2467, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %24, align 1
  %2472 = and i32 %2468, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %31, align 1
  %2477 = xor i32 %2468, %2467
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  store i8 %2480, i8* %37, align 1
  %2481 = icmp eq i32 %2468, 0
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %40, align 1
  %2483 = lshr i32 %2468, 31
  %2484 = trunc i32 %2483 to i8
  store i8 %2484, i8* %43, align 1
  %2485 = lshr i32 %2467, 31
  %2486 = xor i32 %2483, %2485
  %2487 = add nuw nsw i32 %2486, %2485
  %2488 = icmp eq i32 %2487, 2
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %49, align 1
  %2490 = sext i32 %2468 to i64
  store i64 %2490, i64* %RCX.i1453, align 8
  %2491 = shl nsw i64 %2490, 2
  %2492 = add nsw i64 %2491, 11187184
  %2493 = add i64 %2460, 24
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = sext i32 %2495 to i64
  %2497 = mul nsw i64 %2496, 744
  store i64 %2497, i64* %RCX.i1453, align 8
  %2498 = lshr i64 %2497, 63
  %2499 = load i64, i64* %RAX.i1477, align 8
  %2500 = add i64 %2497, %2499
  store i64 %2500, i64* %RAX.i1477, align 8
  %2501 = icmp ult i64 %2500, %2499
  %2502 = icmp ult i64 %2500, %2497
  %2503 = or i1 %2501, %2502
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %24, align 1
  %2505 = trunc i64 %2500 to i32
  %2506 = and i32 %2505, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %31, align 1
  %2511 = xor i64 %2497, %2499
  %2512 = xor i64 %2511, %2500
  %2513 = lshr i64 %2512, 4
  %2514 = trunc i64 %2513 to i8
  %2515 = and i8 %2514, 1
  store i8 %2515, i8* %37, align 1
  %2516 = icmp eq i64 %2500, 0
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %40, align 1
  %2518 = lshr i64 %2500, 63
  %2519 = trunc i64 %2518 to i8
  store i8 %2519, i8* %43, align 1
  %2520 = lshr i64 %2499, 63
  %2521 = xor i64 %2518, %2520
  %2522 = xor i64 %2518, %2498
  %2523 = add nuw nsw i64 %2521, %2522
  %2524 = icmp eq i64 %2523, 2
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %49, align 1
  %2526 = add i64 %2500, 740
  %2527 = load i32, i32* %ESI.i1459, align 4
  %2528 = add i64 %2460, 40
  store i64 %2528, i64* %3, align 8
  %2529 = inttoptr i64 %2526 to i32*
  store i32 %2527, i32* %2529, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_41657b

block_.L_41657b:                                  ; preds = %block_.L_4164d3, %block_41652d, %block_4164f5
  %2530 = phi i64 [ %.pre73, %block_41652d ], [ %2387, %block_4164f5 ], [ %2296, %block_.L_4164d3 ]
  %2531 = add i64 %2530, 5
  store i64 %2531, i64* %3, align 8
  br label %block_.L_416580

block_.L_416580:                                  ; preds = %block_.L_41657b, %block_.L_4164ce
  %storemerge51 = phi i64 [ %2270, %block_.L_4164ce ], [ %2531, %block_.L_41657b ]
  %2532 = add i64 %storemerge51, 5
  store i64 %2532, i64* %3, align 8
  br label %block_.L_416585

block_.L_416585:                                  ; preds = %block_.L_416580, %block_.L_4163ec
  %storemerge50 = phi i64 [ %1843, %block_.L_4163ec ], [ %2532, %block_.L_416580 ]
  %2533 = add i64 %storemerge50, 5
  store i64 %2533, i64* %3, align 8
  br label %block_.L_41658a

block_.L_41658a:                                  ; preds = %block_.L_416585, %block_416340
  %storemerge49 = phi i64 [ %1506, %block_416340 ], [ %2533, %block_.L_416585 ]
  %2534 = add i64 %storemerge49, 5
  store i64 %2534, i64* %3, align 8
  br label %block_.L_41658f

block_.L_41658f:                                  ; preds = %block_.L_41658a, %block_416316
  %storemerge40 = phi i64 [ %1435, %block_416316 ], [ %2534, %block_.L_41658a ]
  %2535 = load i64, i64* %RBP.i, align 8
  %2536 = add i64 %2535, -20
  %2537 = add i64 %storemerge40, 3
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i32 %2539, -20
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RAX.i1477, align 8
  %2542 = icmp ult i32 %2539, 20
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %24, align 1
  %2544 = and i32 %2540, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %31, align 1
  %2549 = xor i32 %2539, 16
  %2550 = xor i32 %2549, %2540
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  store i8 %2553, i8* %37, align 1
  %2554 = icmp eq i32 %2540, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %40, align 1
  %2556 = lshr i32 %2540, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %43, align 1
  %2558 = lshr i32 %2539, 31
  %2559 = xor i32 %2556, %2558
  %2560 = add nuw nsw i32 %2559, %2558
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %49, align 1
  %2563 = sext i32 %2540 to i64
  store i64 %2563, i64* %RCX.i1453, align 8
  %2564 = add nsw i64 %2563, 12099168
  %2565 = add i64 %storemerge40, 17
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i8*
  %2567 = load i8, i8* %2566, align 1
  %2568 = zext i8 %2567 to i64
  store i64 %2568, i64* %RAX.i1477, align 8
  %2569 = zext i8 %2567 to i32
  %2570 = add nsw i32 %2569, -3
  %2571 = icmp ult i8 %2567, 3
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %24, align 1
  %2573 = and i32 %2570, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %31, align 1
  %2578 = xor i32 %2570, %2569
  %2579 = lshr i32 %2578, 4
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %37, align 1
  %2582 = icmp eq i32 %2570, 0
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %40, align 1
  %2584 = lshr i32 %2570, 31
  %2585 = trunc i32 %2584 to i8
  store i8 %2585, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v100 = select i1 %2582, i64 26, i64 42
  %2586 = add i64 %storemerge40, %.v100
  store i64 %2586, i64* %3, align 8
  br i1 %2582, label %block_4165a9, label %block_.L_4165b9

block_4165a9:                                     ; preds = %block_.L_41658f
  %2587 = add i64 %2535, -40
  %2588 = add i64 %2586, 4
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i1477, align 8
  %2591 = add i64 %2586, 6
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i32*
  %2593 = load i32, i32* %2592, align 4
  %2594 = add i32 %2593, 1
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RCX.i1453, align 8
  %2596 = icmp eq i32 %2593, -1
  %2597 = icmp eq i32 %2594, 0
  %2598 = or i1 %2596, %2597
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %24, align 1
  %2600 = and i32 %2594, 255
  %2601 = tail call i32 @llvm.ctpop.i32(i32 %2600)
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = xor i8 %2603, 1
  store i8 %2604, i8* %31, align 1
  %2605 = xor i32 %2594, %2593
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  store i8 %2608, i8* %37, align 1
  %2609 = zext i1 %2597 to i8
  store i8 %2609, i8* %40, align 1
  %2610 = lshr i32 %2594, 31
  %2611 = trunc i32 %2610 to i8
  store i8 %2611, i8* %43, align 1
  %2612 = lshr i32 %2593, 31
  %2613 = xor i32 %2610, %2612
  %2614 = add nuw nsw i32 %2613, %2610
  %2615 = icmp eq i32 %2614, 2
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %49, align 1
  %2617 = add i64 %2586, 11
  store i64 %2617, i64* %3, align 8
  store i32 %2594, i32* %2592, align 4
  %2618 = load i64, i64* %3, align 8
  %2619 = add i64 %2618, 676
  br label %block_.L_416858

block_.L_4165b9:                                  ; preds = %block_.L_41658f
  %2620 = add i64 %2586, 3
  store i64 %2620, i64* %3, align 8
  %2621 = load i32, i32* %2538, align 4
  %2622 = add i32 %2621, -20
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RAX.i1477, align 8
  %2624 = icmp ult i32 %2621, 20
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %24, align 1
  %2626 = and i32 %2622, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %31, align 1
  %2631 = xor i32 %2621, 16
  %2632 = xor i32 %2631, %2622
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %37, align 1
  %2636 = icmp eq i32 %2622, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %40, align 1
  %2638 = lshr i32 %2622, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %43, align 1
  %2640 = lshr i32 %2621, 31
  %2641 = xor i32 %2638, %2640
  %2642 = add nuw nsw i32 %2641, %2640
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %49, align 1
  %2645 = sext i32 %2622 to i64
  store i64 %2645, i64* %RCX.i1453, align 8
  %2646 = add nsw i64 %2645, 12099168
  %2647 = add i64 %2586, 17
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i8*
  %2649 = load i8, i8* %2648, align 1
  %2650 = zext i8 %2649 to i64
  store i64 %2650, i64* %RAX.i1477, align 8
  %2651 = zext i8 %2649 to i32
  store i8 0, i8* %24, align 1
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %2656 = icmp eq i8 %2649, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v101 = select i1 %2656, i64 26, i64 42
  %2658 = add i64 %2586, %.v101
  store i64 %2658, i64* %3, align 8
  br i1 %2656, label %block_4165d3, label %block_.L_4165e3

block_4165d3:                                     ; preds = %block_.L_4165b9
  %2659 = add i64 %2535, -96
  %2660 = add i64 %2658, 4
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RAX.i1477, align 8
  %2663 = add i64 %2658, 6
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = add i32 %2665, 1
  %2667 = zext i32 %2666 to i64
  store i64 %2667, i64* %RCX.i1453, align 8
  %2668 = icmp eq i32 %2665, -1
  %2669 = icmp eq i32 %2666, 0
  %2670 = or i1 %2668, %2669
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %24, align 1
  %2672 = and i32 %2666, 255
  %2673 = tail call i32 @llvm.ctpop.i32(i32 %2672)
  %2674 = trunc i32 %2673 to i8
  %2675 = and i8 %2674, 1
  %2676 = xor i8 %2675, 1
  store i8 %2676, i8* %31, align 1
  %2677 = xor i32 %2666, %2665
  %2678 = lshr i32 %2677, 4
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  store i8 %2680, i8* %37, align 1
  %2681 = zext i1 %2669 to i8
  store i8 %2681, i8* %40, align 1
  %2682 = lshr i32 %2666, 31
  %2683 = trunc i32 %2682 to i8
  store i8 %2683, i8* %43, align 1
  %2684 = lshr i32 %2665, 31
  %2685 = xor i32 %2682, %2684
  %2686 = add nuw nsw i32 %2685, %2682
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %49, align 1
  %2689 = add i64 %2658, 11
  store i64 %2689, i64* %3, align 8
  store i32 %2666, i32* %2664, align 4
  %2690 = load i64, i64* %3, align 8
  %2691 = add i64 %2690, 629
  br label %block_.L_416853

block_.L_4165e3:                                  ; preds = %block_.L_4165b9
  %2692 = add i64 %2658, 3
  store i64 %2692, i64* %3, align 8
  %2693 = load i32, i32* %2538, align 4
  %2694 = add i32 %2693, -20
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i1477, align 8
  %2696 = icmp ult i32 %2693, 20
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %24, align 1
  %2698 = and i32 %2694, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %31, align 1
  %2703 = xor i32 %2693, 16
  %2704 = xor i32 %2703, %2694
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  store i8 %2707, i8* %37, align 1
  %2708 = icmp eq i32 %2694, 0
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %40, align 1
  %2710 = lshr i32 %2694, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %43, align 1
  %2712 = lshr i32 %2693, 31
  %2713 = xor i32 %2710, %2712
  %2714 = add nuw nsw i32 %2713, %2712
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %49, align 1
  %2717 = sext i32 %2694 to i64
  store i64 %2717, i64* %RCX.i1453, align 8
  %2718 = shl nsw i64 %2717, 2
  %2719 = add nsw i64 %2718, 11187184
  %2720 = add i64 %2658, 16
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %RAX.i1477, align 8
  %2724 = add i64 %2535, -132
  %2725 = add i64 %2658, 22
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  store i32 %2722, i32* %2726, align 4
  %2727 = load i64, i64* %RBP.i, align 8
  %2728 = add i64 %2727, -28
  %2729 = load i64, i64* %3, align 8
  %2730 = add i64 %2729, 4
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2728 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2732 to i64
  store i64 %2733, i64* %RCX.i1453, align 8
  %2734 = shl nsw i64 %2733, 2
  %2735 = add nsw i64 %2734, 11187184
  %2736 = add i64 %2729, 11
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RAX.i1477, align 8
  %2740 = add i64 %2727, -132
  %2741 = add i64 %2729, 17
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = sub i32 %2738, %2743
  %2745 = icmp ult i32 %2738, %2743
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %24, align 1
  %2747 = and i32 %2744, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %31, align 1
  %2752 = xor i32 %2743, %2738
  %2753 = xor i32 %2752, %2744
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %37, align 1
  %2757 = icmp eq i32 %2744, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %40, align 1
  %2759 = lshr i32 %2744, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %43, align 1
  %2761 = lshr i32 %2738, 31
  %2762 = lshr i32 %2743, 31
  %2763 = xor i32 %2762, %2761
  %2764 = xor i32 %2759, %2761
  %2765 = add nuw nsw i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %49, align 1
  %.v102 = select i1 %2757, i64 23, i64 34
  %2768 = add i64 %2729, %.v102
  store i64 %2768, i64* %3, align 8
  br i1 %2757, label %block_416610, label %block_.L_41661b

block_416610:                                     ; preds = %block_.L_4165e3
  %2769 = add i64 %2727, -48
  %2770 = add i64 %2768, 4
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i64*
  %2772 = load i64, i64* %2771, align 8
  store i64 %2772, i64* %RAX.i1477, align 8
  %2773 = add i64 %2768, 6
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = add i32 %2775, 1
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RCX.i1453, align 8
  %2778 = icmp eq i32 %2775, -1
  %2779 = icmp eq i32 %2776, 0
  %2780 = or i1 %2778, %2779
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %24, align 1
  %2782 = and i32 %2776, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %31, align 1
  %2787 = xor i32 %2776, %2775
  %2788 = lshr i32 %2787, 4
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  store i8 %2790, i8* %37, align 1
  %2791 = zext i1 %2779 to i8
  store i8 %2791, i8* %40, align 1
  %2792 = lshr i32 %2776, 31
  %2793 = trunc i32 %2792 to i8
  store i8 %2793, i8* %43, align 1
  %2794 = lshr i32 %2775, 31
  %2795 = xor i32 %2792, %2794
  %2796 = add nuw nsw i32 %2795, %2792
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %49, align 1
  %2799 = add i64 %2768, 11
  store i64 %2799, i64* %3, align 8
  store i32 %2776, i32* %2774, align 4
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_41661b

block_.L_41661b:                                  ; preds = %block_.L_4165e3, %block_416610
  %2800 = phi i64 [ %.pre75, %block_416610 ], [ %2768, %block_.L_4165e3 ]
  %2801 = phi i64 [ %.pre74, %block_416610 ], [ %2727, %block_.L_4165e3 ]
  %2802 = add i64 %2801, -20
  %2803 = add i64 %2800, 3
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = add i32 %2805, -20
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RAX.i1477, align 8
  %2808 = icmp ult i32 %2805, 20
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %24, align 1
  %2810 = and i32 %2806, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %31, align 1
  %2815 = xor i32 %2805, 16
  %2816 = xor i32 %2815, %2806
  %2817 = lshr i32 %2816, 4
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %37, align 1
  %2820 = icmp eq i32 %2806, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %40, align 1
  %2822 = lshr i32 %2806, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %43, align 1
  %2824 = lshr i32 %2805, 31
  %2825 = xor i32 %2822, %2824
  %2826 = add nuw nsw i32 %2825, %2824
  %2827 = icmp eq i32 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %49, align 1
  %2829 = sext i32 %2806 to i64
  store i64 %2829, i64* %RCX.i1453, align 8
  %2830 = add nsw i64 %2829, 12099168
  %2831 = add i64 %2800, 17
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i8*
  %2833 = load i8, i8* %2832, align 1
  %2834 = zext i8 %2833 to i64
  store i64 %2834, i64* %RAX.i1477, align 8
  %2835 = zext i8 %2833 to i32
  %2836 = add i64 %2801, -24
  %2837 = add i64 %2800, 20
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = sub i32 %2835, %2839
  %2841 = icmp ult i32 %2835, %2839
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %24, align 1
  %2843 = and i32 %2840, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843)
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %31, align 1
  %2848 = xor i32 %2839, %2835
  %2849 = xor i32 %2848, %2840
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %37, align 1
  %2853 = icmp eq i32 %2840, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %40, align 1
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %43, align 1
  %2857 = lshr i32 %2839, 31
  %2858 = add nuw nsw i32 %2855, %2857
  %2859 = icmp eq i32 %2858, 2
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %49, align 1
  %.v103 = select i1 %2853, i64 26, i64 117
  %2861 = add i64 %2800, %.v103
  %2862 = add i64 %2861, 10
  store i64 %2862, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  br i1 %2853, label %block_416635, label %block_.L_416690

block_416635:                                     ; preds = %block_.L_41661b
  %2863 = add i64 %2801, -56
  %2864 = add i64 %2861, 14
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i64*
  %2866 = load i64, i64* %2865, align 8
  store i64 %2866, i64* %RCX.i1453, align 8
  %2867 = add i64 %2861, 16
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = add i32 %2869, 1
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RDX.i1434, align 8
  %2872 = icmp eq i32 %2869, -1
  %2873 = icmp eq i32 %2870, 0
  %2874 = or i1 %2872, %2873
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %24, align 1
  %2876 = and i32 %2870, 255
  %2877 = tail call i32 @llvm.ctpop.i32(i32 %2876)
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  %2880 = xor i8 %2879, 1
  store i8 %2880, i8* %31, align 1
  %2881 = xor i32 %2870, %2869
  %2882 = lshr i32 %2881, 4
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %37, align 1
  %2885 = zext i1 %2873 to i8
  store i8 %2885, i8* %40, align 1
  %2886 = lshr i32 %2870, 31
  %2887 = trunc i32 %2886 to i8
  store i8 %2887, i8* %43, align 1
  %2888 = lshr i32 %2869, 31
  %2889 = xor i32 %2886, %2888
  %2890 = add nuw nsw i32 %2889, %2886
  %2891 = icmp eq i32 %2890, 2
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %49, align 1
  %2893 = add i64 %2861, 21
  store i64 %2893, i64* %3, align 8
  store i32 %2870, i32* %2868, align 4
  %2894 = load i64, i64* %RBP.i, align 8
  %2895 = add i64 %2894, -132
  %2896 = load i64, i64* %3, align 8
  %2897 = add i64 %2896, 7
  store i64 %2897, i64* %3, align 8
  %2898 = inttoptr i64 %2895 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = sext i32 %2899 to i64
  %2901 = mul nsw i64 %2900, 744
  store i64 %2901, i64* %RCX.i1453, align 8
  %2902 = lshr i64 %2901, 63
  %2903 = load i64, i64* %RAX.i1477, align 8
  %2904 = add i64 %2901, %2903
  store i64 %2904, i64* %RAX.i1477, align 8
  %2905 = icmp ult i64 %2904, %2903
  %2906 = icmp ult i64 %2904, %2901
  %2907 = or i1 %2905, %2906
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %24, align 1
  %2909 = trunc i64 %2904 to i32
  %2910 = and i32 %2909, 255
  %2911 = tail call i32 @llvm.ctpop.i32(i32 %2910)
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = xor i8 %2913, 1
  store i8 %2914, i8* %31, align 1
  %2915 = xor i64 %2901, %2903
  %2916 = xor i64 %2915, %2904
  %2917 = lshr i64 %2916, 4
  %2918 = trunc i64 %2917 to i8
  %2919 = and i8 %2918, 1
  store i8 %2919, i8* %37, align 1
  %2920 = icmp eq i64 %2904, 0
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %40, align 1
  %2922 = lshr i64 %2904, 63
  %2923 = trunc i64 %2922 to i8
  store i8 %2923, i8* %43, align 1
  %2924 = lshr i64 %2903, 63
  %2925 = xor i64 %2922, %2924
  %2926 = xor i64 %2922, %2902
  %2927 = add nuw nsw i64 %2925, %2926
  %2928 = icmp eq i64 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %49, align 1
  %2930 = add i64 %2904, 12
  %2931 = add i64 %2896, 21
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = add i32 %2933, -1
  %2935 = icmp eq i32 %2933, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %24, align 1
  %2937 = and i32 %2934, 255
  %2938 = tail call i32 @llvm.ctpop.i32(i32 %2937)
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  %2941 = xor i8 %2940, 1
  store i8 %2941, i8* %31, align 1
  %2942 = xor i32 %2934, %2933
  %2943 = lshr i32 %2942, 4
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  store i8 %2945, i8* %37, align 1
  %2946 = icmp eq i32 %2934, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %40, align 1
  %2948 = lshr i32 %2934, 31
  %2949 = trunc i32 %2948 to i8
  store i8 %2949, i8* %43, align 1
  %2950 = lshr i32 %2933, 31
  %2951 = xor i32 %2948, %2950
  %2952 = add nuw nsw i32 %2951, %2950
  %2953 = icmp eq i32 %2952, 2
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %49, align 1
  %.v119 = select i1 %2946, i64 27, i64 65
  %2955 = add i64 %2896, %.v119
  store i64 %2955, i64* %3, align 8
  br i1 %2946, label %block_416665, label %block_.L_41668b

block_416665:                                     ; preds = %block_416635
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %2956 = load i64, i64* %RBP.i, align 8
  %2957 = add i64 %2956, -132
  %2958 = add i64 %2955, 17
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = sext i32 %2960 to i64
  %2962 = mul nsw i64 %2961, 744
  store i64 %2962, i64* %RCX.i1453, align 8
  %2963 = lshr i64 %2962, 63
  %2964 = add i64 %2962, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2964, i64* %RAX.i1477, align 8
  %2965 = icmp ult i64 %2964, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2966 = icmp ult i64 %2964, %2962
  %2967 = or i1 %2965, %2966
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %24, align 1
  %2969 = trunc i64 %2964 to i32
  %2970 = and i32 %2969, 248
  %2971 = tail call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  store i8 %2974, i8* %31, align 1
  %2975 = xor i64 %2962, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2976 = xor i64 %2975, %2964
  %2977 = lshr i64 %2976, 4
  %2978 = trunc i64 %2977 to i8
  %2979 = and i8 %2978, 1
  store i8 %2979, i8* %37, align 1
  %2980 = icmp eq i64 %2964, 0
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %40, align 1
  %2982 = lshr i64 %2964, 63
  %2983 = trunc i64 %2982 to i8
  store i8 %2983, i8* %43, align 1
  %2984 = xor i64 %2982, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2985 = xor i64 %2982, %2963
  %2986 = add nuw nsw i64 %2984, %2985
  %2987 = icmp eq i64 %2986, 2
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %49, align 1
  %2989 = add i64 %2962, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %2990 = add i64 %2955, 30
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  %2993 = zext i32 %2992 to i64
  store i64 %2993, i64* %RDX.i1434, align 8
  %2994 = add i64 %2956, -88
  %2995 = add i64 %2955, 34
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i64*
  %2997 = load i64, i64* %2996, align 8
  store i64 %2997, i64* %RAX.i1477, align 8
  %2998 = add i64 %2955, 36
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2997 to i32*
  %3000 = load i32, i32* %2999, align 4
  %3001 = add i32 %3000, %2992
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RDX.i1434, align 8
  %3003 = icmp ult i32 %3001, %2992
  %3004 = icmp ult i32 %3001, %3000
  %3005 = or i1 %3003, %3004
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %24, align 1
  %3007 = and i32 %3001, 255
  %3008 = tail call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  store i8 %3011, i8* %31, align 1
  %3012 = xor i32 %3000, %2992
  %3013 = xor i32 %3012, %3001
  %3014 = lshr i32 %3013, 4
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  store i8 %3016, i8* %37, align 1
  %3017 = icmp eq i32 %3001, 0
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %40, align 1
  %3019 = lshr i32 %3001, 31
  %3020 = trunc i32 %3019 to i8
  store i8 %3020, i8* %43, align 1
  %3021 = lshr i32 %2992, 31
  %3022 = lshr i32 %3000, 31
  %3023 = xor i32 %3019, %3021
  %3024 = xor i32 %3019, %3022
  %3025 = add nuw nsw i32 %3023, %3024
  %3026 = icmp eq i32 %3025, 2
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %49, align 1
  %3028 = add i64 %2955, 38
  store i64 %3028, i64* %3, align 8
  store i32 %3001, i32* %2999, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_41668b

block_.L_41668b:                                  ; preds = %block_416635, %block_416665
  %3029 = phi i64 [ %.pre76, %block_416665 ], [ %2955, %block_416635 ]
  %3030 = add i64 %3029, 451
  br label %block_.L_41684e

block_.L_416690:                                  ; preds = %block_.L_41661b
  %3031 = add i64 %2801, -64
  %3032 = add i64 %2861, 14
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %RCX.i1453, align 8
  %3035 = add i64 %2861, 16
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = add i32 %3037, 1
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RDX.i1434, align 8
  %3040 = icmp eq i32 %3037, -1
  %3041 = icmp eq i32 %3038, 0
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %24, align 1
  %3044 = and i32 %3038, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %31, align 1
  %3049 = xor i32 %3038, %3037
  %3050 = lshr i32 %3049, 4
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  store i8 %3052, i8* %37, align 1
  %3053 = zext i1 %3041 to i8
  store i8 %3053, i8* %40, align 1
  %3054 = lshr i32 %3038, 31
  %3055 = trunc i32 %3054 to i8
  store i8 %3055, i8* %43, align 1
  %3056 = lshr i32 %3037, 31
  %3057 = xor i32 %3054, %3056
  %3058 = add nuw nsw i32 %3057, %3054
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %49, align 1
  %3061 = add i64 %2861, 21
  store i64 %3061, i64* %3, align 8
  store i32 %3038, i32* %3036, align 4
  %3062 = load i64, i64* %RBP.i, align 8
  %3063 = add i64 %3062, -132
  %3064 = load i64, i64* %3, align 8
  %3065 = add i64 %3064, 7
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3063 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = sext i32 %3067 to i64
  %3069 = mul nsw i64 %3068, 744
  store i64 %3069, i64* %RCX.i1453, align 8
  %3070 = lshr i64 %3069, 63
  %3071 = load i64, i64* %RAX.i1477, align 8
  %3072 = add i64 %3069, %3071
  store i64 %3072, i64* %RAX.i1477, align 8
  %3073 = icmp ult i64 %3072, %3071
  %3074 = icmp ult i64 %3072, %3069
  %3075 = or i1 %3073, %3074
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %24, align 1
  %3077 = trunc i64 %3072 to i32
  %3078 = and i32 %3077, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %31, align 1
  %3083 = xor i64 %3069, %3071
  %3084 = xor i64 %3083, %3072
  %3085 = lshr i64 %3084, 4
  %3086 = trunc i64 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %37, align 1
  %3088 = icmp eq i64 %3072, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %40, align 1
  %3090 = lshr i64 %3072, 63
  %3091 = trunc i64 %3090 to i8
  store i8 %3091, i8* %43, align 1
  %3092 = lshr i64 %3071, 63
  %3093 = xor i64 %3090, %3092
  %3094 = xor i64 %3090, %3070
  %3095 = add nuw nsw i64 %3093, %3094
  %3096 = icmp eq i64 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %49, align 1
  %3098 = add i64 %3072, 12
  %3099 = add i64 %3064, 21
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i32*
  %3101 = load i32, i32* %3100, align 4
  %3102 = add i32 %3101, -1
  %3103 = icmp eq i32 %3101, 0
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %24, align 1
  %3105 = and i32 %3102, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %31, align 1
  %3110 = xor i32 %3102, %3101
  %3111 = lshr i32 %3110, 4
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  store i8 %3113, i8* %37, align 1
  %3114 = icmp eq i32 %3102, 0
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %40, align 1
  %3116 = lshr i32 %3102, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %43, align 1
  %3118 = lshr i32 %3101, 31
  %3119 = xor i32 %3116, %3118
  %3120 = add nuw nsw i32 %3119, %3118
  %3121 = icmp eq i32 %3120, 2
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %49, align 1
  %.v104 = select i1 %3114, i64 27, i64 241
  %3123 = add i64 %3064, %.v104
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %3124 = load i64, i64* %RBP.i, align 8
  %3125 = add i64 %3124, -132
  %3126 = add i64 %3123, 17
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3125 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = sext i32 %3128 to i64
  %3130 = mul nsw i64 %3129, 744
  store i64 %3130, i64* %RCX.i1453, align 8
  %3131 = lshr i64 %3130, 63
  %3132 = add i64 %3123, 27
  store i64 %3132, i64* %3, align 8
  %3133 = add i64 %3130, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3133, i64* %RAX.i1477, align 8
  %3134 = icmp ult i64 %3133, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3135 = icmp ult i64 %3133, %3130
  %3136 = or i1 %3134, %3135
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %24, align 1
  %3138 = trunc i64 %3133 to i32
  %3139 = and i32 %3138, 248
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %31, align 1
  %3144 = xor i64 %3130, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3145 = xor i64 %3144, %3133
  %3146 = lshr i64 %3145, 4
  %3147 = trunc i64 %3146 to i8
  %3148 = and i8 %3147, 1
  store i8 %3148, i8* %37, align 1
  %3149 = icmp eq i64 %3133, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %40, align 1
  %3151 = lshr i64 %3133, 63
  %3152 = trunc i64 %3151 to i8
  store i8 %3152, i8* %43, align 1
  %3153 = xor i64 %3151, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3154 = xor i64 %3151, %3131
  %3155 = add nuw nsw i64 %3153, %3154
  %3156 = icmp eq i64 %3155, 2
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %49, align 1
  br i1 %3114, label %block_4166c0, label %block_.L_416796

block_4166c0:                                     ; preds = %block_.L_416690
  %3158 = add i64 %3130, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %3159 = add i64 %3123, 30
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3158 to i32*
  %3161 = load i32, i32* %3160, align 4
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RDX.i1434, align 8
  %3163 = add i64 %3124, -72
  %3164 = add i64 %3123, 34
  store i64 %3164, i64* %3, align 8
  %3165 = inttoptr i64 %3163 to i64*
  %3166 = load i64, i64* %3165, align 8
  store i64 %3166, i64* %RAX.i1477, align 8
  %3167 = add i64 %3123, 36
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i32*
  %3169 = load i32, i32* %3168, align 4
  %3170 = add i32 %3169, %3161
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %RDX.i1434, align 8
  %3172 = icmp ult i32 %3170, %3161
  %3173 = icmp ult i32 %3170, %3169
  %3174 = or i1 %3172, %3173
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %24, align 1
  %3176 = and i32 %3170, 255
  %3177 = tail call i32 @llvm.ctpop.i32(i32 %3176)
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  %3180 = xor i8 %3179, 1
  store i8 %3180, i8* %31, align 1
  %3181 = xor i32 %3169, %3161
  %3182 = xor i32 %3181, %3170
  %3183 = lshr i32 %3182, 4
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  store i8 %3185, i8* %37, align 1
  %3186 = icmp eq i32 %3170, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %40, align 1
  %3188 = lshr i32 %3170, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %43, align 1
  %3190 = lshr i32 %3161, 31
  %3191 = lshr i32 %3169, 31
  %3192 = xor i32 %3188, %3190
  %3193 = xor i32 %3188, %3191
  %3194 = add nuw nsw i32 %3192, %3193
  %3195 = icmp eq i32 %3194, 2
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %49, align 1
  %3197 = add i64 %3123, 38
  store i64 %3197, i64* %3, align 8
  store i32 %3170, i32* %3168, align 4
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -136
  %3200 = load i64, i64* %3, align 8
  %3201 = add i64 %3200, 10
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3199 to i32*
  store i32 0, i32* %3202, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_4166f0

block_.L_4166f0:                                  ; preds = %block_.L_416778, %block_4166c0
  %3203 = phi i64 [ %3456, %block_.L_416778 ], [ %.pre77, %block_4166c0 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %3204 = load i64, i64* %RBP.i, align 8
  %3205 = add i64 %3204, -136
  %3206 = add i64 %3203, 16
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i32*
  %3208 = load i32, i32* %3207, align 4
  %3209 = zext i32 %3208 to i64
  store i64 %3209, i64* %RCX.i1453, align 8
  %3210 = add i64 %3204, -132
  %3211 = add i64 %3203, 23
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3210 to i32*
  %3213 = load i32, i32* %3212, align 4
  %3214 = sext i32 %3213 to i64
  %3215 = mul nsw i64 %3214, 744
  store i64 %3215, i64* %RDX.i1434, align 8
  %3216 = lshr i64 %3215, 63
  %3217 = add i64 %3215, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3217, i64* %RAX.i1477, align 8
  %3218 = icmp ult i64 %3217, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3219 = icmp ult i64 %3217, %3215
  %3220 = or i1 %3218, %3219
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %24, align 1
  %3222 = trunc i64 %3217 to i32
  %3223 = and i32 %3222, 248
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %31, align 1
  %3228 = xor i64 %3215, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3229 = xor i64 %3228, %3217
  %3230 = lshr i64 %3229, 4
  %3231 = trunc i64 %3230 to i8
  %3232 = and i8 %3231, 1
  store i8 %3232, i8* %37, align 1
  %3233 = icmp eq i64 %3217, 0
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %40, align 1
  %3235 = lshr i64 %3217, 63
  %3236 = trunc i64 %3235 to i8
  store i8 %3236, i8* %43, align 1
  %3237 = xor i64 %3235, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3238 = xor i64 %3235, %3216
  %3239 = add nuw nsw i64 %3237, %3238
  %3240 = icmp eq i64 %3239, 2
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %49, align 1
  %3242 = add i64 %3215, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %3243 = add i64 %3203, 36
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i32*
  %3245 = load i32, i32* %3244, align 8
  %3246 = sub i32 %3208, %3245
  %3247 = icmp ult i32 %3208, %3245
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %24, align 1
  %3249 = and i32 %3246, 255
  %3250 = tail call i32 @llvm.ctpop.i32(i32 %3249)
  %3251 = trunc i32 %3250 to i8
  %3252 = and i8 %3251, 1
  %3253 = xor i8 %3252, 1
  store i8 %3253, i8* %31, align 1
  %3254 = xor i32 %3245, %3208
  %3255 = xor i32 %3254, %3246
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  store i8 %3258, i8* %37, align 1
  %3259 = icmp eq i32 %3246, 0
  %3260 = zext i1 %3259 to i8
  store i8 %3260, i8* %40, align 1
  %3261 = lshr i32 %3246, 31
  %3262 = trunc i32 %3261 to i8
  store i8 %3262, i8* %43, align 1
  %3263 = lshr i32 %3208, 31
  %3264 = lshr i32 %3245, 31
  %3265 = xor i32 %3264, %3263
  %3266 = xor i32 %3261, %3263
  %3267 = add nuw nsw i32 %3266, %3265
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %49, align 1
  %3270 = icmp ne i8 %3262, 0
  %3271 = xor i1 %3270, %3268
  %.v117 = select i1 %3271, i64 42, i64 161
  %3272 = add i64 %3203, %.v117
  store i64 %3272, i64* %3, align 8
  br i1 %3271, label %block_41671a, label %block_.L_416791

block_41671a:                                     ; preds = %block_.L_4166f0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %3273 = load i64, i64* %RBP.i, align 8
  %3274 = add i64 %3273, -132
  %3275 = add i64 %3272, 17
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = sext i32 %3277 to i64
  %3279 = mul nsw i64 %3278, 744
  store i64 %3279, i64* %RCX.i1453, align 8
  %3280 = lshr i64 %3279, 63
  %3281 = add i64 %3279, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3281, i64* %RDX.i1434, align 8
  %3282 = icmp ult i64 %3281, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3283 = icmp ult i64 %3281, %3279
  %3284 = or i1 %3282, %3283
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %24, align 1
  %3286 = trunc i64 %3281 to i32
  %3287 = and i32 %3286, 248
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %31, align 1
  %3292 = xor i64 %3279, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3293 = xor i64 %3292, %3281
  %3294 = lshr i64 %3293, 4
  %3295 = trunc i64 %3294 to i8
  %3296 = and i8 %3295, 1
  store i8 %3296, i8* %37, align 1
  %3297 = icmp eq i64 %3281, 0
  %3298 = zext i1 %3297 to i8
  store i8 %3298, i8* %40, align 1
  %3299 = lshr i64 %3281, 63
  %3300 = trunc i64 %3299 to i8
  store i8 %3300, i8* %43, align 1
  %3301 = xor i64 %3299, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3302 = xor i64 %3299, %3280
  %3303 = add nuw nsw i64 %3301, %3302
  %3304 = icmp eq i64 %3303, 2
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %49, align 1
  %3306 = add i64 %3273, -136
  %3307 = add i64 %3272, 37
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = sext i32 %3309 to i64
  store i64 %3310, i64* %RCX.i1453, align 8
  %3311 = shl nsw i64 %3310, 2
  %3312 = add i64 %3279, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %3313 = add i64 %3312, %3311
  %3314 = add i64 %3272, 42
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to i32*
  %3316 = load i32, i32* %3315, align 4
  %3317 = sext i32 %3316 to i64
  %3318 = mul nsw i64 %3317, 744
  store i64 %3318, i64* %RCX.i1453, align 8
  %3319 = lshr i64 %3318, 63
  %3320 = load i64, i64* %RAX.i1477, align 8
  %3321 = add i64 %3318, %3320
  store i64 %3321, i64* %RAX.i1477, align 8
  %3322 = icmp ult i64 %3321, %3320
  %3323 = icmp ult i64 %3321, %3318
  %3324 = or i1 %3322, %3323
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %24, align 1
  %3326 = trunc i64 %3321 to i32
  %3327 = and i32 %3326, 255
  %3328 = tail call i32 @llvm.ctpop.i32(i32 %3327)
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = xor i8 %3330, 1
  store i8 %3331, i8* %31, align 1
  %3332 = xor i64 %3318, %3320
  %3333 = xor i64 %3332, %3321
  %3334 = lshr i64 %3333, 4
  %3335 = trunc i64 %3334 to i8
  %3336 = and i8 %3335, 1
  store i8 %3336, i8* %37, align 1
  %3337 = icmp eq i64 %3321, 0
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %40, align 1
  %3339 = lshr i64 %3321, 63
  %3340 = trunc i64 %3339 to i8
  store i8 %3340, i8* %43, align 1
  %3341 = lshr i64 %3320, 63
  %3342 = xor i64 %3339, %3341
  %3343 = xor i64 %3339, %3319
  %3344 = add nuw nsw i64 %3342, %3343
  %3345 = icmp eq i64 %3344, 2
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %49, align 1
  %3347 = load i64, i64* %RBP.i, align 8
  %3348 = add i64 %3347, -144
  %3349 = add i64 %3272, 59
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i64*
  store i64 %3321, i64* %3350, align 8
  %3351 = load i64, i64* %RBP.i, align 8
  %3352 = add i64 %3351, -144
  %3353 = load i64, i64* %3, align 8
  %3354 = add i64 %3353, 7
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3352 to i64*
  %3356 = load i64, i64* %3355, align 8
  store i64 %3356, i64* %RAX.i1477, align 8
  %3357 = add i64 %3356, 12
  %3358 = add i64 %3353, 11
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = add i32 %3360, -1
  %3362 = icmp eq i32 %3360, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %24, align 1
  %3364 = and i32 %3361, 255
  %3365 = tail call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %31, align 1
  %3369 = xor i32 %3361, %3360
  %3370 = lshr i32 %3369, 4
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  store i8 %3372, i8* %37, align 1
  %3373 = icmp eq i32 %3361, 0
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %40, align 1
  %3375 = lshr i32 %3361, 31
  %3376 = trunc i32 %3375 to i8
  store i8 %3376, i8* %43, align 1
  %3377 = lshr i32 %3360, 31
  %3378 = xor i32 %3375, %3377
  %3379 = add nuw nsw i32 %3378, %3377
  %3380 = icmp eq i32 %3379, 2
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %49, align 1
  %.v118 = select i1 %3373, i64 17, i64 35
  %3382 = add i64 %3353, %.v118
  store i64 %3382, i64* %3, align 8
  br i1 %3373, label %block_416766, label %block_.L_416778

block_416766:                                     ; preds = %block_41671a
  %3383 = add i64 %3382, 7
  store i64 %3383, i64* %3, align 8
  %3384 = load i64, i64* %3355, align 8
  store i64 %3384, i64* %RAX.i1477, align 8
  %3385 = add i64 %3384, 4
  %3386 = add i64 %3382, 10
  store i64 %3386, i64* %3, align 8
  %3387 = inttoptr i64 %3385 to i32*
  %3388 = load i32, i32* %3387, align 4
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RCX.i1453, align 8
  %3390 = add i64 %3351, -88
  %3391 = add i64 %3382, 14
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  store i64 %3393, i64* %RAX.i1477, align 8
  %3394 = add i64 %3382, 16
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = add i32 %3396, %3388
  %3398 = zext i32 %3397 to i64
  store i64 %3398, i64* %RCX.i1453, align 8
  %3399 = icmp ult i32 %3397, %3388
  %3400 = icmp ult i32 %3397, %3396
  %3401 = or i1 %3399, %3400
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %24, align 1
  %3403 = and i32 %3397, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %31, align 1
  %3408 = xor i32 %3396, %3388
  %3409 = xor i32 %3408, %3397
  %3410 = lshr i32 %3409, 4
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  store i8 %3412, i8* %37, align 1
  %3413 = icmp eq i32 %3397, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %40, align 1
  %3415 = lshr i32 %3397, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %43, align 1
  %3417 = lshr i32 %3388, 31
  %3418 = lshr i32 %3396, 31
  %3419 = xor i32 %3415, %3417
  %3420 = xor i32 %3415, %3418
  %3421 = add nuw nsw i32 %3419, %3420
  %3422 = icmp eq i32 %3421, 2
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %49, align 1
  %3424 = add i64 %3382, 18
  store i64 %3424, i64* %3, align 8
  store i32 %3397, i32* %3395, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416778

block_.L_416778:                                  ; preds = %block_41671a, %block_416766
  %3425 = phi i64 [ %.pre79, %block_416766 ], [ %3351, %block_41671a ]
  %3426 = phi i64 [ %.pre78, %block_416766 ], [ %3382, %block_41671a ]
  %3427 = add i64 %3425, -136
  %3428 = add i64 %3426, 11
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i32*
  %3430 = load i32, i32* %3429, align 4
  %3431 = add i32 %3430, 1
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RAX.i1477, align 8
  %3433 = icmp eq i32 %3430, -1
  %3434 = icmp eq i32 %3431, 0
  %3435 = or i1 %3433, %3434
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %24, align 1
  %3437 = and i32 %3431, 255
  %3438 = tail call i32 @llvm.ctpop.i32(i32 %3437)
  %3439 = trunc i32 %3438 to i8
  %3440 = and i8 %3439, 1
  %3441 = xor i8 %3440, 1
  store i8 %3441, i8* %31, align 1
  %3442 = xor i32 %3431, %3430
  %3443 = lshr i32 %3442, 4
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  store i8 %3445, i8* %37, align 1
  %3446 = zext i1 %3434 to i8
  store i8 %3446, i8* %40, align 1
  %3447 = lshr i32 %3431, 31
  %3448 = trunc i32 %3447 to i8
  store i8 %3448, i8* %43, align 1
  %3449 = lshr i32 %3430, 31
  %3450 = xor i32 %3447, %3449
  %3451 = add nuw nsw i32 %3450, %3447
  %3452 = icmp eq i32 %3451, 2
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %49, align 1
  %3454 = add i64 %3426, 20
  store i64 %3454, i64* %3, align 8
  store i32 %3431, i32* %3429, align 4
  %3455 = load i64, i64* %3, align 8
  %3456 = add i64 %3455, -156
  store i64 %3456, i64* %3, align 8
  br label %block_.L_4166f0

block_.L_416791:                                  ; preds = %block_.L_4166f0
  %3457 = add i64 %3272, 184
  br label %block_.L_416849

block_.L_416796:                                  ; preds = %block_.L_416690
  %3458 = add i64 %3130, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3459 = add i64 %3123, 31
  store i64 %3459, i64* %3, align 8
  %3460 = inttoptr i64 %3458 to i32*
  %3461 = load i32, i32* %3460, align 4
  %3462 = add i32 %3461, -2
  %3463 = icmp ult i32 %3461, 2
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %24, align 1
  %3465 = and i32 %3462, 255
  %3466 = tail call i32 @llvm.ctpop.i32(i32 %3465)
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  %3469 = xor i8 %3468, 1
  store i8 %3469, i8* %31, align 1
  %3470 = xor i32 %3462, %3461
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  store i8 %3473, i8* %37, align 1
  %3474 = icmp eq i32 %3462, 0
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %40, align 1
  %3476 = lshr i32 %3462, 31
  %3477 = trunc i32 %3476 to i8
  store i8 %3477, i8* %43, align 1
  %3478 = lshr i32 %3461, 31
  %3479 = xor i32 %3476, %3478
  %3480 = add nuw nsw i32 %3479, %3478
  %3481 = icmp eq i32 %3480, 2
  %3482 = zext i1 %3481 to i8
  store i8 %3482, i8* %49, align 1
  %.v105 = select i1 %3474, i64 37, i64 174
  %3483 = add i64 %3123, %.v105
  store i64 %3483, i64* %3, align 8
  br i1 %3474, label %block_4167bb, label %block_.L_416844

block_4167bb:                                     ; preds = %block_.L_416796
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %3484 = add i64 %3124, -20
  %3485 = add i64 %3483, 13
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i32*
  %3487 = load i32, i32* %3486, align 4
  %3488 = add i32 %3487, -20
  %3489 = zext i32 %3488 to i64
  store i64 %3489, i64* %RCX.i1453, align 8
  %3490 = icmp ult i32 %3487, 20
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %24, align 1
  %3492 = and i32 %3488, 255
  %3493 = tail call i32 @llvm.ctpop.i32(i32 %3492)
  %3494 = trunc i32 %3493 to i8
  %3495 = and i8 %3494, 1
  %3496 = xor i8 %3495, 1
  store i8 %3496, i8* %31, align 1
  %3497 = xor i32 %3487, 16
  %3498 = xor i32 %3497, %3488
  %3499 = lshr i32 %3498, 4
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  store i8 %3501, i8* %37, align 1
  %3502 = icmp eq i32 %3488, 0
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %40, align 1
  %3504 = lshr i32 %3488, 31
  %3505 = trunc i32 %3504 to i8
  store i8 %3505, i8* %43, align 1
  %3506 = lshr i32 %3487, 31
  %3507 = xor i32 %3504, %3506
  %3508 = add nuw nsw i32 %3507, %3506
  %3509 = icmp eq i32 %3508, 2
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %49, align 1
  %3511 = sext i32 %3488 to i64
  store i64 %3511, i64* %RDX.i1434, align 8
  %3512 = shl nsw i64 %3511, 2
  %3513 = add nsw i64 %3512, 11187184
  %3514 = add i64 %3483, 27
  store i64 %3514, i64* %3, align 8
  %3515 = inttoptr i64 %3513 to i32*
  %3516 = load i32, i32* %3515, align 4
  %3517 = sext i32 %3516 to i64
  %3518 = mul nsw i64 %3517, 744
  store i64 %3518, i64* %RDX.i1434, align 8
  %3519 = lshr i64 %3518, 63
  %3520 = add i64 %3518, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3520, i64* %RAX.i1477, align 8
  %3521 = icmp ult i64 %3520, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3522 = icmp ult i64 %3520, %3518
  %3523 = or i1 %3521, %3522
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %24, align 1
  %3525 = trunc i64 %3520 to i32
  %3526 = and i32 %3525, 248
  %3527 = tail call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  store i8 %3530, i8* %31, align 1
  %3531 = xor i64 %3518, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3532 = xor i64 %3531, %3520
  %3533 = lshr i64 %3532, 4
  %3534 = trunc i64 %3533 to i8
  %3535 = and i8 %3534, 1
  store i8 %3535, i8* %37, align 1
  %3536 = icmp eq i64 %3520, 0
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %40, align 1
  %3538 = lshr i64 %3520, 63
  %3539 = trunc i64 %3538 to i8
  store i8 %3539, i8* %43, align 1
  %3540 = xor i64 %3538, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3541 = xor i64 %3538, %3519
  %3542 = add nuw nsw i64 %3540, %3541
  %3543 = icmp eq i64 %3542, 2
  %3544 = zext i1 %3543 to i8
  store i8 %3544, i8* %49, align 1
  %3545 = add i64 %3518, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3546 = add i64 %3483, 43
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  %3548 = load i32, i32* %3547, align 4
  %3549 = zext i32 %3548 to i64
  store i64 %3549, i64* %RCX.i1453, align 8
  %3550 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3551 = sub i32 %3548, %3550
  %3552 = icmp ult i32 %3548, %3550
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %24, align 1
  %3554 = and i32 %3551, 255
  %3555 = tail call i32 @llvm.ctpop.i32(i32 %3554)
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  %3558 = xor i8 %3557, 1
  store i8 %3558, i8* %31, align 1
  %3559 = xor i32 %3550, %3548
  %3560 = xor i32 %3559, %3551
  %3561 = lshr i32 %3560, 4
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  store i8 %3563, i8* %37, align 1
  %3564 = icmp eq i32 %3551, 0
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %40, align 1
  %3566 = lshr i32 %3551, 31
  %3567 = trunc i32 %3566 to i8
  store i8 %3567, i8* %43, align 1
  %3568 = lshr i32 %3548, 31
  %3569 = lshr i32 %3550, 31
  %3570 = xor i32 %3569, %3568
  %3571 = xor i32 %3566, %3568
  %3572 = add nuw nsw i32 %3571, %3570
  %3573 = icmp eq i32 %3572, 2
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %49, align 1
  %.v116 = select i1 %3564, i64 137, i64 56
  %3575 = add i64 %3483, %.v116
  store i64 %3575, i64* %3, align 8
  br i1 %3564, label %block_.L_416844, label %block_4167f3

block_4167f3:                                     ; preds = %block_4167bb
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %3576 = load i64, i64* %RBP.i, align 8
  %3577 = add i64 %3576, -132
  %3578 = add i64 %3575, 17
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i32*
  %3580 = load i32, i32* %3579, align 4
  %3581 = sext i32 %3580 to i64
  %3582 = mul nsw i64 %3581, 744
  store i64 %3582, i64* %RCX.i1453, align 8
  %3583 = lshr i64 %3582, 63
  %3584 = add i64 %3582, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3584, i64* %RDX.i1434, align 8
  %3585 = icmp ult i64 %3584, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3586 = icmp ult i64 %3584, %3582
  %3587 = or i1 %3585, %3586
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %24, align 1
  %3589 = trunc i64 %3584 to i32
  %3590 = and i32 %3589, 248
  %3591 = tail call i32 @llvm.ctpop.i32(i32 %3590)
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  store i8 %3594, i8* %31, align 1
  %3595 = xor i64 %3582, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3596 = xor i64 %3595, %3584
  %3597 = lshr i64 %3596, 4
  %3598 = trunc i64 %3597 to i8
  %3599 = and i8 %3598, 1
  store i8 %3599, i8* %37, align 1
  %3600 = icmp eq i64 %3584, 0
  %3601 = zext i1 %3600 to i8
  store i8 %3601, i8* %40, align 1
  %3602 = lshr i64 %3584, 63
  %3603 = trunc i64 %3602 to i8
  store i8 %3603, i8* %43, align 1
  %3604 = xor i64 %3602, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3605 = xor i64 %3602, %3583
  %3606 = add nuw nsw i64 %3604, %3605
  %3607 = icmp eq i64 %3606, 2
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %49, align 1
  %RSI.i390 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %3609 = add i64 %3582, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %3610 = add i64 %3575, 33
  store i64 %3610, i64* %3, align 8
  %3611 = inttoptr i64 %3609 to i32*
  %3612 = load i32, i32* %3611, align 4
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RSI.i390, align 8
  %3614 = add i64 %3576, -80
  %3615 = add i64 %3575, 37
  store i64 %3615, i64* %3, align 8
  %3616 = inttoptr i64 %3614 to i64*
  %3617 = load i64, i64* %3616, align 8
  store i64 %3617, i64* %RCX.i1453, align 8
  %3618 = add i64 %3575, 39
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = add i32 %3620, %3612
  %3622 = icmp ult i32 %3621, %3612
  %3623 = icmp ult i32 %3621, %3620
  %3624 = or i1 %3622, %3623
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %24, align 1
  %3626 = and i32 %3621, 255
  %3627 = tail call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  store i8 %3630, i8* %31, align 1
  %3631 = xor i32 %3620, %3612
  %3632 = xor i32 %3631, %3621
  %3633 = lshr i32 %3632, 4
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  store i8 %3635, i8* %37, align 1
  %3636 = icmp eq i32 %3621, 0
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %40, align 1
  %3638 = lshr i32 %3621, 31
  %3639 = trunc i32 %3638 to i8
  store i8 %3639, i8* %43, align 1
  %3640 = lshr i32 %3612, 31
  %3641 = lshr i32 %3620, 31
  %3642 = xor i32 %3638, %3640
  %3643 = xor i32 %3638, %3641
  %3644 = add nuw nsw i32 %3642, %3643
  %3645 = icmp eq i32 %3644, 2
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %49, align 1
  %3647 = add i64 %3575, 41
  store i64 %3647, i64* %3, align 8
  store i32 %3621, i32* %3619, align 4
  %3648 = load i64, i64* %3, align 8
  %3649 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RSI.i390, align 8
  %RDI.i375 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %3651 = load i64, i64* %RBP.i, align 8
  %3652 = add i64 %3651, -20
  %3653 = add i64 %3648, 10
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i32*
  %3655 = load i32, i32* %3654, align 4
  %3656 = add i32 %3655, -20
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RDI.i375, align 8
  %3658 = icmp ult i32 %3655, 20
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %24, align 1
  %3660 = and i32 %3656, 255
  %3661 = tail call i32 @llvm.ctpop.i32(i32 %3660)
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = xor i8 %3663, 1
  store i8 %3664, i8* %31, align 1
  %3665 = xor i32 %3655, 16
  %3666 = xor i32 %3665, %3656
  %3667 = lshr i32 %3666, 4
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  store i8 %3669, i8* %37, align 1
  %3670 = icmp eq i32 %3656, 0
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %40, align 1
  %3672 = lshr i32 %3656, 31
  %3673 = trunc i32 %3672 to i8
  store i8 %3673, i8* %43, align 1
  %3674 = lshr i32 %3655, 31
  %3675 = xor i32 %3672, %3674
  %3676 = add nuw nsw i32 %3675, %3674
  %3677 = icmp eq i32 %3676, 2
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %49, align 1
  %3679 = sext i32 %3656 to i64
  store i64 %3679, i64* %RCX.i1453, align 8
  %3680 = shl nsw i64 %3679, 2
  %3681 = add nsw i64 %3680, 11187184
  %3682 = add i64 %3648, 24
  store i64 %3682, i64* %3, align 8
  %3683 = inttoptr i64 %3681 to i32*
  %3684 = load i32, i32* %3683, align 4
  %3685 = sext i32 %3684 to i64
  %3686 = mul nsw i64 %3685, 744
  store i64 %3686, i64* %RCX.i1453, align 8
  %3687 = lshr i64 %3686, 63
  %3688 = load i64, i64* %RAX.i1477, align 8
  %3689 = add i64 %3686, %3688
  store i64 %3689, i64* %RAX.i1477, align 8
  %3690 = icmp ult i64 %3689, %3688
  %3691 = icmp ult i64 %3689, %3686
  %3692 = or i1 %3690, %3691
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %24, align 1
  %3694 = trunc i64 %3689 to i32
  %3695 = and i32 %3694, 255
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %31, align 1
  %3700 = xor i64 %3686, %3688
  %3701 = xor i64 %3700, %3689
  %3702 = lshr i64 %3701, 4
  %3703 = trunc i64 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %37, align 1
  %3705 = icmp eq i64 %3689, 0
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %40, align 1
  %3707 = lshr i64 %3689, 63
  %3708 = trunc i64 %3707 to i8
  store i8 %3708, i8* %43, align 1
  %3709 = lshr i64 %3688, 63
  %3710 = xor i64 %3707, %3709
  %3711 = xor i64 %3707, %3687
  %3712 = add nuw nsw i64 %3710, %3711
  %3713 = icmp eq i64 %3712, 2
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %49, align 1
  %3715 = add i64 %3689, 740
  %3716 = load i32, i32* %ESI.i1459, align 4
  %3717 = add i64 %3648, 40
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3715 to i32*
  store i32 %3716, i32* %3718, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_416844

block_.L_416844:                                  ; preds = %block_.L_416796, %block_4167f3, %block_4167bb
  %3719 = phi i64 [ %.pre80, %block_4167f3 ], [ %3575, %block_4167bb ], [ %3483, %block_.L_416796 ]
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %3, align 8
  br label %block_.L_416849

block_.L_416849:                                  ; preds = %block_.L_416844, %block_.L_416791
  %storemerge48 = phi i64 [ %3457, %block_.L_416791 ], [ %3720, %block_.L_416844 ]
  %3721 = add i64 %storemerge48, 5
  store i64 %3721, i64* %3, align 8
  br label %block_.L_41684e

block_.L_41684e:                                  ; preds = %block_.L_416849, %block_.L_41668b
  %storemerge47 = phi i64 [ %3030, %block_.L_41668b ], [ %3721, %block_.L_416849 ]
  %3722 = add i64 %storemerge47, 5
  store i64 %3722, i64* %3, align 8
  br label %block_.L_416853

block_.L_416853:                                  ; preds = %block_.L_41684e, %block_4165d3
  %storemerge46 = phi i64 [ %2691, %block_4165d3 ], [ %3722, %block_.L_41684e ]
  %3723 = add i64 %storemerge46, 5
  store i64 %3723, i64* %3, align 8
  br label %block_.L_416858

block_.L_416858:                                  ; preds = %block_.L_416853, %block_4165a9
  %storemerge41 = phi i64 [ %2619, %block_4165a9 ], [ %3723, %block_.L_416853 ]
  %3724 = load i64, i64* %RBP.i, align 8
  %3725 = add i64 %3724, -20
  %3726 = add i64 %storemerge41, 3
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  %3728 = load i32, i32* %3727, align 4
  %3729 = add i32 %3728, 1
  %3730 = zext i32 %3729 to i64
  store i64 %3730, i64* %RAX.i1477, align 8
  %3731 = icmp eq i32 %3728, -1
  %3732 = icmp eq i32 %3729, 0
  %3733 = or i1 %3731, %3732
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %24, align 1
  %3735 = and i32 %3729, 255
  %3736 = tail call i32 @llvm.ctpop.i32(i32 %3735)
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  %3739 = xor i8 %3738, 1
  store i8 %3739, i8* %31, align 1
  %3740 = xor i32 %3729, %3728
  %3741 = lshr i32 %3740, 4
  %3742 = trunc i32 %3741 to i8
  %3743 = and i8 %3742, 1
  store i8 %3743, i8* %37, align 1
  %3744 = zext i1 %3732 to i8
  store i8 %3744, i8* %40, align 1
  %3745 = lshr i32 %3729, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %43, align 1
  %3747 = lshr i32 %3728, 31
  %3748 = xor i32 %3745, %3747
  %3749 = add nuw nsw i32 %3748, %3745
  %3750 = icmp eq i32 %3749, 2
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %49, align 1
  %3752 = sext i32 %3729 to i64
  store i64 %3752, i64* %RCX.i1453, align 8
  %3753 = add nsw i64 %3752, 12099168
  %3754 = add i64 %storemerge41, 17
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i8*
  %3756 = load i8, i8* %3755, align 1
  %3757 = zext i8 %3756 to i64
  store i64 %3757, i64* %RAX.i1477, align 8
  %3758 = zext i8 %3756 to i32
  %3759 = add nsw i32 %3758, -3
  %3760 = icmp ult i8 %3756, 3
  %3761 = zext i1 %3760 to i8
  store i8 %3761, i8* %24, align 1
  %3762 = and i32 %3759, 255
  %3763 = tail call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  store i8 %3766, i8* %31, align 1
  %3767 = xor i32 %3759, %3758
  %3768 = lshr i32 %3767, 4
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  store i8 %3770, i8* %37, align 1
  %3771 = icmp eq i32 %3759, 0
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %40, align 1
  %3773 = lshr i32 %3759, 31
  %3774 = trunc i32 %3773 to i8
  store i8 %3774, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v106 = select i1 %3771, i64 26, i64 42
  %3775 = add i64 %storemerge41, %.v106
  store i64 %3775, i64* %3, align 8
  br i1 %3771, label %block_416872, label %block_.L_416882

block_416872:                                     ; preds = %block_.L_416858
  %3776 = add i64 %3724, -40
  %3777 = add i64 %3775, 4
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3776 to i64*
  %3779 = load i64, i64* %3778, align 8
  store i64 %3779, i64* %RAX.i1477, align 8
  %3780 = add i64 %3775, 6
  store i64 %3780, i64* %3, align 8
  %3781 = inttoptr i64 %3779 to i32*
  %3782 = load i32, i32* %3781, align 4
  %3783 = add i32 %3782, 1
  %3784 = zext i32 %3783 to i64
  store i64 %3784, i64* %RCX.i1453, align 8
  %3785 = icmp eq i32 %3782, -1
  %3786 = icmp eq i32 %3783, 0
  %3787 = or i1 %3785, %3786
  %3788 = zext i1 %3787 to i8
  store i8 %3788, i8* %24, align 1
  %3789 = and i32 %3783, 255
  %3790 = tail call i32 @llvm.ctpop.i32(i32 %3789)
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  %3793 = xor i8 %3792, 1
  store i8 %3793, i8* %31, align 1
  %3794 = xor i32 %3783, %3782
  %3795 = lshr i32 %3794, 4
  %3796 = trunc i32 %3795 to i8
  %3797 = and i8 %3796, 1
  store i8 %3797, i8* %37, align 1
  %3798 = zext i1 %3786 to i8
  store i8 %3798, i8* %40, align 1
  %3799 = lshr i32 %3783, 31
  %3800 = trunc i32 %3799 to i8
  store i8 %3800, i8* %43, align 1
  %3801 = lshr i32 %3782, 31
  %3802 = xor i32 %3799, %3801
  %3803 = add nuw nsw i32 %3802, %3799
  %3804 = icmp eq i32 %3803, 2
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %49, align 1
  %3806 = add i64 %3775, 11
  store i64 %3806, i64* %3, align 8
  store i32 %3783, i32* %3781, align 4
  %3807 = load i64, i64* %3, align 8
  %3808 = add i64 %3807, 676
  br label %block_.L_416b21

block_.L_416882:                                  ; preds = %block_.L_416858
  %3809 = add i64 %3775, 3
  store i64 %3809, i64* %3, align 8
  %3810 = load i32, i32* %3727, align 4
  %3811 = add i32 %3810, 1
  %3812 = zext i32 %3811 to i64
  store i64 %3812, i64* %RAX.i1477, align 8
  %3813 = icmp eq i32 %3810, -1
  %3814 = icmp eq i32 %3811, 0
  %3815 = or i1 %3813, %3814
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %24, align 1
  %3817 = and i32 %3811, 255
  %3818 = tail call i32 @llvm.ctpop.i32(i32 %3817)
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  store i8 %3821, i8* %31, align 1
  %3822 = xor i32 %3811, %3810
  %3823 = lshr i32 %3822, 4
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  store i8 %3825, i8* %37, align 1
  %3826 = zext i1 %3814 to i8
  store i8 %3826, i8* %40, align 1
  %3827 = lshr i32 %3811, 31
  %3828 = trunc i32 %3827 to i8
  store i8 %3828, i8* %43, align 1
  %3829 = lshr i32 %3810, 31
  %3830 = xor i32 %3827, %3829
  %3831 = add nuw nsw i32 %3830, %3827
  %3832 = icmp eq i32 %3831, 2
  %3833 = zext i1 %3832 to i8
  store i8 %3833, i8* %49, align 1
  %3834 = sext i32 %3811 to i64
  store i64 %3834, i64* %RCX.i1453, align 8
  %3835 = add nsw i64 %3834, 12099168
  %3836 = add i64 %3775, 17
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3835 to i8*
  %3838 = load i8, i8* %3837, align 1
  %3839 = zext i8 %3838 to i64
  store i64 %3839, i64* %RAX.i1477, align 8
  %3840 = zext i8 %3838 to i32
  store i8 0, i8* %24, align 1
  %3841 = tail call i32 @llvm.ctpop.i32(i32 %3840)
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  store i8 %3844, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %3845 = icmp eq i8 %3838, 0
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v107 = select i1 %3845, i64 26, i64 42
  %3847 = add i64 %3775, %.v107
  store i64 %3847, i64* %3, align 8
  br i1 %3845, label %block_41689c, label %block_.L_4168ac

block_41689c:                                     ; preds = %block_.L_416882
  %3848 = add i64 %3724, -96
  %3849 = add i64 %3847, 4
  store i64 %3849, i64* %3, align 8
  %3850 = inttoptr i64 %3848 to i64*
  %3851 = load i64, i64* %3850, align 8
  store i64 %3851, i64* %RAX.i1477, align 8
  %3852 = add i64 %3847, 6
  store i64 %3852, i64* %3, align 8
  %3853 = inttoptr i64 %3851 to i32*
  %3854 = load i32, i32* %3853, align 4
  %3855 = add i32 %3854, 1
  %3856 = zext i32 %3855 to i64
  store i64 %3856, i64* %RCX.i1453, align 8
  %3857 = icmp eq i32 %3854, -1
  %3858 = icmp eq i32 %3855, 0
  %3859 = or i1 %3857, %3858
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %24, align 1
  %3861 = and i32 %3855, 255
  %3862 = tail call i32 @llvm.ctpop.i32(i32 %3861)
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = xor i8 %3864, 1
  store i8 %3865, i8* %31, align 1
  %3866 = xor i32 %3855, %3854
  %3867 = lshr i32 %3866, 4
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  store i8 %3869, i8* %37, align 1
  %3870 = zext i1 %3858 to i8
  store i8 %3870, i8* %40, align 1
  %3871 = lshr i32 %3855, 31
  %3872 = trunc i32 %3871 to i8
  store i8 %3872, i8* %43, align 1
  %3873 = lshr i32 %3854, 31
  %3874 = xor i32 %3871, %3873
  %3875 = add nuw nsw i32 %3874, %3871
  %3876 = icmp eq i32 %3875, 2
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %49, align 1
  %3878 = add i64 %3847, 11
  store i64 %3878, i64* %3, align 8
  store i32 %3855, i32* %3853, align 4
  %3879 = load i64, i64* %3, align 8
  %3880 = add i64 %3879, 629
  br label %block_.L_416b1c

block_.L_4168ac:                                  ; preds = %block_.L_416882
  %3881 = add i64 %3847, 3
  store i64 %3881, i64* %3, align 8
  %3882 = load i32, i32* %3727, align 4
  %3883 = add i32 %3882, 1
  %3884 = zext i32 %3883 to i64
  store i64 %3884, i64* %RAX.i1477, align 8
  %3885 = icmp eq i32 %3882, -1
  %3886 = icmp eq i32 %3883, 0
  %3887 = or i1 %3885, %3886
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %24, align 1
  %3889 = and i32 %3883, 255
  %3890 = tail call i32 @llvm.ctpop.i32(i32 %3889)
  %3891 = trunc i32 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = xor i8 %3892, 1
  store i8 %3893, i8* %31, align 1
  %3894 = xor i32 %3883, %3882
  %3895 = lshr i32 %3894, 4
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  store i8 %3897, i8* %37, align 1
  %3898 = zext i1 %3886 to i8
  store i8 %3898, i8* %40, align 1
  %3899 = lshr i32 %3883, 31
  %3900 = trunc i32 %3899 to i8
  store i8 %3900, i8* %43, align 1
  %3901 = lshr i32 %3882, 31
  %3902 = xor i32 %3899, %3901
  %3903 = add nuw nsw i32 %3902, %3899
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %49, align 1
  %3906 = sext i32 %3883 to i64
  store i64 %3906, i64* %RCX.i1453, align 8
  %3907 = shl nsw i64 %3906, 2
  %3908 = add nsw i64 %3907, 11187184
  %3909 = add i64 %3847, 16
  store i64 %3909, i64* %3, align 8
  %3910 = inttoptr i64 %3908 to i32*
  %3911 = load i32, i32* %3910, align 4
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RAX.i1477, align 8
  %3913 = add i64 %3724, -148
  %3914 = add i64 %3847, 22
  store i64 %3914, i64* %3, align 8
  %3915 = inttoptr i64 %3913 to i32*
  store i32 %3911, i32* %3915, align 4
  %3916 = load i64, i64* %RBP.i, align 8
  %3917 = add i64 %3916, -28
  %3918 = load i64, i64* %3, align 8
  %3919 = add i64 %3918, 4
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3917 to i32*
  %3921 = load i32, i32* %3920, align 4
  %3922 = sext i32 %3921 to i64
  store i64 %3922, i64* %RCX.i1453, align 8
  %3923 = shl nsw i64 %3922, 2
  %3924 = add nsw i64 %3923, 11187184
  %3925 = add i64 %3918, 11
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RAX.i1477, align 8
  %3929 = add i64 %3916, -148
  %3930 = add i64 %3918, 17
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = sub i32 %3927, %3932
  %3934 = icmp ult i32 %3927, %3932
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %24, align 1
  %3936 = and i32 %3933, 255
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %31, align 1
  %3941 = xor i32 %3932, %3927
  %3942 = xor i32 %3941, %3933
  %3943 = lshr i32 %3942, 4
  %3944 = trunc i32 %3943 to i8
  %3945 = and i8 %3944, 1
  store i8 %3945, i8* %37, align 1
  %3946 = icmp eq i32 %3933, 0
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %40, align 1
  %3948 = lshr i32 %3933, 31
  %3949 = trunc i32 %3948 to i8
  store i8 %3949, i8* %43, align 1
  %3950 = lshr i32 %3927, 31
  %3951 = lshr i32 %3932, 31
  %3952 = xor i32 %3951, %3950
  %3953 = xor i32 %3948, %3950
  %3954 = add nuw nsw i32 %3953, %3952
  %3955 = icmp eq i32 %3954, 2
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %49, align 1
  %.v108 = select i1 %3946, i64 23, i64 34
  %3957 = add i64 %3918, %.v108
  store i64 %3957, i64* %3, align 8
  br i1 %3946, label %block_4168d9, label %block_.L_4168e4

block_4168d9:                                     ; preds = %block_.L_4168ac
  %3958 = add i64 %3916, -48
  %3959 = add i64 %3957, 4
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i64*
  %3961 = load i64, i64* %3960, align 8
  store i64 %3961, i64* %RAX.i1477, align 8
  %3962 = add i64 %3957, 6
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i32*
  %3964 = load i32, i32* %3963, align 4
  %3965 = add i32 %3964, 1
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RCX.i1453, align 8
  %3967 = icmp eq i32 %3964, -1
  %3968 = icmp eq i32 %3965, 0
  %3969 = or i1 %3967, %3968
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %24, align 1
  %3971 = and i32 %3965, 255
  %3972 = tail call i32 @llvm.ctpop.i32(i32 %3971)
  %3973 = trunc i32 %3972 to i8
  %3974 = and i8 %3973, 1
  %3975 = xor i8 %3974, 1
  store i8 %3975, i8* %31, align 1
  %3976 = xor i32 %3965, %3964
  %3977 = lshr i32 %3976, 4
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  store i8 %3979, i8* %37, align 1
  %3980 = zext i1 %3968 to i8
  store i8 %3980, i8* %40, align 1
  %3981 = lshr i32 %3965, 31
  %3982 = trunc i32 %3981 to i8
  store i8 %3982, i8* %43, align 1
  %3983 = lshr i32 %3964, 31
  %3984 = xor i32 %3981, %3983
  %3985 = add nuw nsw i32 %3984, %3981
  %3986 = icmp eq i32 %3985, 2
  %3987 = zext i1 %3986 to i8
  store i8 %3987, i8* %49, align 1
  %3988 = add i64 %3957, 11
  store i64 %3988, i64* %3, align 8
  store i32 %3965, i32* %3963, align 4
  %.pre81 = load i64, i64* %RBP.i, align 8
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4168e4

block_.L_4168e4:                                  ; preds = %block_.L_4168ac, %block_4168d9
  %3989 = phi i64 [ %.pre82, %block_4168d9 ], [ %3957, %block_.L_4168ac ]
  %3990 = phi i64 [ %.pre81, %block_4168d9 ], [ %3916, %block_.L_4168ac ]
  %3991 = add i64 %3990, -20
  %3992 = add i64 %3989, 3
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = add i32 %3994, 1
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %RAX.i1477, align 8
  %3997 = icmp eq i32 %3994, -1
  %3998 = icmp eq i32 %3995, 0
  %3999 = or i1 %3997, %3998
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %24, align 1
  %4001 = and i32 %3995, 255
  %4002 = tail call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  store i8 %4005, i8* %31, align 1
  %4006 = xor i32 %3995, %3994
  %4007 = lshr i32 %4006, 4
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  store i8 %4009, i8* %37, align 1
  %4010 = zext i1 %3998 to i8
  store i8 %4010, i8* %40, align 1
  %4011 = lshr i32 %3995, 31
  %4012 = trunc i32 %4011 to i8
  store i8 %4012, i8* %43, align 1
  %4013 = lshr i32 %3994, 31
  %4014 = xor i32 %4011, %4013
  %4015 = add nuw nsw i32 %4014, %4011
  %4016 = icmp eq i32 %4015, 2
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %49, align 1
  %4018 = sext i32 %3995 to i64
  store i64 %4018, i64* %RCX.i1453, align 8
  %4019 = add nsw i64 %4018, 12099168
  %4020 = add i64 %3989, 17
  store i64 %4020, i64* %3, align 8
  %4021 = inttoptr i64 %4019 to i8*
  %4022 = load i8, i8* %4021, align 1
  %4023 = zext i8 %4022 to i64
  store i64 %4023, i64* %RAX.i1477, align 8
  %4024 = zext i8 %4022 to i32
  %4025 = add i64 %3990, -24
  %4026 = add i64 %3989, 20
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = sub i32 %4024, %4028
  %4030 = icmp ult i32 %4024, %4028
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %24, align 1
  %4032 = and i32 %4029, 255
  %4033 = tail call i32 @llvm.ctpop.i32(i32 %4032)
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  %4036 = xor i8 %4035, 1
  store i8 %4036, i8* %31, align 1
  %4037 = xor i32 %4028, %4024
  %4038 = xor i32 %4037, %4029
  %4039 = lshr i32 %4038, 4
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  store i8 %4041, i8* %37, align 1
  %4042 = icmp eq i32 %4029, 0
  %4043 = zext i1 %4042 to i8
  store i8 %4043, i8* %40, align 1
  %4044 = lshr i32 %4029, 31
  %4045 = trunc i32 %4044 to i8
  store i8 %4045, i8* %43, align 1
  %4046 = lshr i32 %4028, 31
  %4047 = add nuw nsw i32 %4044, %4046
  %4048 = icmp eq i32 %4047, 2
  %4049 = zext i1 %4048 to i8
  store i8 %4049, i8* %49, align 1
  %.v109 = select i1 %4042, i64 26, i64 117
  %4050 = add i64 %3989, %.v109
  %4051 = add i64 %4050, 10
  store i64 %4051, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  br i1 %4042, label %block_4168fe, label %block_.L_416959

block_4168fe:                                     ; preds = %block_.L_4168e4
  %4052 = add i64 %3990, -56
  %4053 = add i64 %4050, 14
  store i64 %4053, i64* %3, align 8
  %4054 = inttoptr i64 %4052 to i64*
  %4055 = load i64, i64* %4054, align 8
  store i64 %4055, i64* %RCX.i1453, align 8
  %4056 = add i64 %4050, 16
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4055 to i32*
  %4058 = load i32, i32* %4057, align 4
  %4059 = add i32 %4058, 1
  %4060 = zext i32 %4059 to i64
  store i64 %4060, i64* %RDX.i1434, align 8
  %4061 = icmp eq i32 %4058, -1
  %4062 = icmp eq i32 %4059, 0
  %4063 = or i1 %4061, %4062
  %4064 = zext i1 %4063 to i8
  store i8 %4064, i8* %24, align 1
  %4065 = and i32 %4059, 255
  %4066 = tail call i32 @llvm.ctpop.i32(i32 %4065)
  %4067 = trunc i32 %4066 to i8
  %4068 = and i8 %4067, 1
  %4069 = xor i8 %4068, 1
  store i8 %4069, i8* %31, align 1
  %4070 = xor i32 %4059, %4058
  %4071 = lshr i32 %4070, 4
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  store i8 %4073, i8* %37, align 1
  %4074 = zext i1 %4062 to i8
  store i8 %4074, i8* %40, align 1
  %4075 = lshr i32 %4059, 31
  %4076 = trunc i32 %4075 to i8
  store i8 %4076, i8* %43, align 1
  %4077 = lshr i32 %4058, 31
  %4078 = xor i32 %4075, %4077
  %4079 = add nuw nsw i32 %4078, %4075
  %4080 = icmp eq i32 %4079, 2
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %49, align 1
  %4082 = add i64 %4050, 21
  store i64 %4082, i64* %3, align 8
  store i32 %4059, i32* %4057, align 4
  %4083 = load i64, i64* %RBP.i, align 8
  %4084 = add i64 %4083, -148
  %4085 = load i64, i64* %3, align 8
  %4086 = add i64 %4085, 7
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4084 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = sext i32 %4088 to i64
  %4090 = mul nsw i64 %4089, 744
  store i64 %4090, i64* %RCX.i1453, align 8
  %4091 = lshr i64 %4090, 63
  %4092 = load i64, i64* %RAX.i1477, align 8
  %4093 = add i64 %4090, %4092
  store i64 %4093, i64* %RAX.i1477, align 8
  %4094 = icmp ult i64 %4093, %4092
  %4095 = icmp ult i64 %4093, %4090
  %4096 = or i1 %4094, %4095
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %24, align 1
  %4098 = trunc i64 %4093 to i32
  %4099 = and i32 %4098, 255
  %4100 = tail call i32 @llvm.ctpop.i32(i32 %4099)
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  %4103 = xor i8 %4102, 1
  store i8 %4103, i8* %31, align 1
  %4104 = xor i64 %4090, %4092
  %4105 = xor i64 %4104, %4093
  %4106 = lshr i64 %4105, 4
  %4107 = trunc i64 %4106 to i8
  %4108 = and i8 %4107, 1
  store i8 %4108, i8* %37, align 1
  %4109 = icmp eq i64 %4093, 0
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %40, align 1
  %4111 = lshr i64 %4093, 63
  %4112 = trunc i64 %4111 to i8
  store i8 %4112, i8* %43, align 1
  %4113 = lshr i64 %4092, 63
  %4114 = xor i64 %4111, %4113
  %4115 = xor i64 %4111, %4091
  %4116 = add nuw nsw i64 %4114, %4115
  %4117 = icmp eq i64 %4116, 2
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %49, align 1
  %4119 = add i64 %4093, 12
  %4120 = add i64 %4085, 21
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i32*
  %4122 = load i32, i32* %4121, align 4
  %4123 = add i32 %4122, -1
  %4124 = icmp eq i32 %4122, 0
  %4125 = zext i1 %4124 to i8
  store i8 %4125, i8* %24, align 1
  %4126 = and i32 %4123, 255
  %4127 = tail call i32 @llvm.ctpop.i32(i32 %4126)
  %4128 = trunc i32 %4127 to i8
  %4129 = and i8 %4128, 1
  %4130 = xor i8 %4129, 1
  store i8 %4130, i8* %31, align 1
  %4131 = xor i32 %4123, %4122
  %4132 = lshr i32 %4131, 4
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  store i8 %4134, i8* %37, align 1
  %4135 = icmp eq i32 %4123, 0
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %40, align 1
  %4137 = lshr i32 %4123, 31
  %4138 = trunc i32 %4137 to i8
  store i8 %4138, i8* %43, align 1
  %4139 = lshr i32 %4122, 31
  %4140 = xor i32 %4137, %4139
  %4141 = add nuw nsw i32 %4140, %4139
  %4142 = icmp eq i32 %4141, 2
  %4143 = zext i1 %4142 to i8
  store i8 %4143, i8* %49, align 1
  %.v115 = select i1 %4135, i64 27, i64 65
  %4144 = add i64 %4085, %.v115
  store i64 %4144, i64* %3, align 8
  br i1 %4135, label %block_41692e, label %block_.L_416954

block_41692e:                                     ; preds = %block_4168fe
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4145 = load i64, i64* %RBP.i, align 8
  %4146 = add i64 %4145, -148
  %4147 = add i64 %4144, 17
  store i64 %4147, i64* %3, align 8
  %4148 = inttoptr i64 %4146 to i32*
  %4149 = load i32, i32* %4148, align 4
  %4150 = sext i32 %4149 to i64
  %4151 = mul nsw i64 %4150, 744
  store i64 %4151, i64* %RCX.i1453, align 8
  %4152 = lshr i64 %4151, 63
  %4153 = add i64 %4151, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4153, i64* %RAX.i1477, align 8
  %4154 = icmp ult i64 %4153, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4155 = icmp ult i64 %4153, %4151
  %4156 = or i1 %4154, %4155
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %24, align 1
  %4158 = trunc i64 %4153 to i32
  %4159 = and i32 %4158, 248
  %4160 = tail call i32 @llvm.ctpop.i32(i32 %4159)
  %4161 = trunc i32 %4160 to i8
  %4162 = and i8 %4161, 1
  %4163 = xor i8 %4162, 1
  store i8 %4163, i8* %31, align 1
  %4164 = xor i64 %4151, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4165 = xor i64 %4164, %4153
  %4166 = lshr i64 %4165, 4
  %4167 = trunc i64 %4166 to i8
  %4168 = and i8 %4167, 1
  store i8 %4168, i8* %37, align 1
  %4169 = icmp eq i64 %4153, 0
  %4170 = zext i1 %4169 to i8
  store i8 %4170, i8* %40, align 1
  %4171 = lshr i64 %4153, 63
  %4172 = trunc i64 %4171 to i8
  store i8 %4172, i8* %43, align 1
  %4173 = xor i64 %4171, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4174 = xor i64 %4171, %4152
  %4175 = add nuw nsw i64 %4173, %4174
  %4176 = icmp eq i64 %4175, 2
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %49, align 1
  %4178 = add i64 %4151, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %4179 = add i64 %4144, 30
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RDX.i1434, align 8
  %4183 = add i64 %4145, -88
  %4184 = add i64 %4144, 34
  store i64 %4184, i64* %3, align 8
  %4185 = inttoptr i64 %4183 to i64*
  %4186 = load i64, i64* %4185, align 8
  store i64 %4186, i64* %RAX.i1477, align 8
  %4187 = add i64 %4144, 36
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to i32*
  %4189 = load i32, i32* %4188, align 4
  %4190 = add i32 %4189, %4181
  %4191 = zext i32 %4190 to i64
  store i64 %4191, i64* %RDX.i1434, align 8
  %4192 = icmp ult i32 %4190, %4181
  %4193 = icmp ult i32 %4190, %4189
  %4194 = or i1 %4192, %4193
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %24, align 1
  %4196 = and i32 %4190, 255
  %4197 = tail call i32 @llvm.ctpop.i32(i32 %4196)
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = xor i8 %4199, 1
  store i8 %4200, i8* %31, align 1
  %4201 = xor i32 %4189, %4181
  %4202 = xor i32 %4201, %4190
  %4203 = lshr i32 %4202, 4
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  store i8 %4205, i8* %37, align 1
  %4206 = icmp eq i32 %4190, 0
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %40, align 1
  %4208 = lshr i32 %4190, 31
  %4209 = trunc i32 %4208 to i8
  store i8 %4209, i8* %43, align 1
  %4210 = lshr i32 %4181, 31
  %4211 = lshr i32 %4189, 31
  %4212 = xor i32 %4208, %4210
  %4213 = xor i32 %4208, %4211
  %4214 = add nuw nsw i32 %4212, %4213
  %4215 = icmp eq i32 %4214, 2
  %4216 = zext i1 %4215 to i8
  store i8 %4216, i8* %49, align 1
  %4217 = add i64 %4144, 38
  store i64 %4217, i64* %3, align 8
  store i32 %4190, i32* %4188, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_416954

block_.L_416954:                                  ; preds = %block_4168fe, %block_41692e
  %4218 = phi i64 [ %.pre83, %block_41692e ], [ %4144, %block_4168fe ]
  %4219 = add i64 %4218, 451
  br label %block_.L_416b17

block_.L_416959:                                  ; preds = %block_.L_4168e4
  %4220 = add i64 %3990, -64
  %4221 = add i64 %4050, 14
  store i64 %4221, i64* %3, align 8
  %4222 = inttoptr i64 %4220 to i64*
  %4223 = load i64, i64* %4222, align 8
  store i64 %4223, i64* %RCX.i1453, align 8
  %4224 = add i64 %4050, 16
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = add i32 %4226, 1
  %4228 = zext i32 %4227 to i64
  store i64 %4228, i64* %RDX.i1434, align 8
  %4229 = icmp eq i32 %4226, -1
  %4230 = icmp eq i32 %4227, 0
  %4231 = or i1 %4229, %4230
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %24, align 1
  %4233 = and i32 %4227, 255
  %4234 = tail call i32 @llvm.ctpop.i32(i32 %4233)
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = xor i8 %4236, 1
  store i8 %4237, i8* %31, align 1
  %4238 = xor i32 %4227, %4226
  %4239 = lshr i32 %4238, 4
  %4240 = trunc i32 %4239 to i8
  %4241 = and i8 %4240, 1
  store i8 %4241, i8* %37, align 1
  %4242 = zext i1 %4230 to i8
  store i8 %4242, i8* %40, align 1
  %4243 = lshr i32 %4227, 31
  %4244 = trunc i32 %4243 to i8
  store i8 %4244, i8* %43, align 1
  %4245 = lshr i32 %4226, 31
  %4246 = xor i32 %4243, %4245
  %4247 = add nuw nsw i32 %4246, %4243
  %4248 = icmp eq i32 %4247, 2
  %4249 = zext i1 %4248 to i8
  store i8 %4249, i8* %49, align 1
  %4250 = add i64 %4050, 21
  store i64 %4250, i64* %3, align 8
  store i32 %4227, i32* %4225, align 4
  %4251 = load i64, i64* %RBP.i, align 8
  %4252 = add i64 %4251, -148
  %4253 = load i64, i64* %3, align 8
  %4254 = add i64 %4253, 7
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4252 to i32*
  %4256 = load i32, i32* %4255, align 4
  %4257 = sext i32 %4256 to i64
  %4258 = mul nsw i64 %4257, 744
  store i64 %4258, i64* %RCX.i1453, align 8
  %4259 = lshr i64 %4258, 63
  %4260 = load i64, i64* %RAX.i1477, align 8
  %4261 = add i64 %4258, %4260
  store i64 %4261, i64* %RAX.i1477, align 8
  %4262 = icmp ult i64 %4261, %4260
  %4263 = icmp ult i64 %4261, %4258
  %4264 = or i1 %4262, %4263
  %4265 = zext i1 %4264 to i8
  store i8 %4265, i8* %24, align 1
  %4266 = trunc i64 %4261 to i32
  %4267 = and i32 %4266, 255
  %4268 = tail call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  store i8 %4271, i8* %31, align 1
  %4272 = xor i64 %4258, %4260
  %4273 = xor i64 %4272, %4261
  %4274 = lshr i64 %4273, 4
  %4275 = trunc i64 %4274 to i8
  %4276 = and i8 %4275, 1
  store i8 %4276, i8* %37, align 1
  %4277 = icmp eq i64 %4261, 0
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %40, align 1
  %4279 = lshr i64 %4261, 63
  %4280 = trunc i64 %4279 to i8
  store i8 %4280, i8* %43, align 1
  %4281 = lshr i64 %4260, 63
  %4282 = xor i64 %4279, %4281
  %4283 = xor i64 %4279, %4259
  %4284 = add nuw nsw i64 %4282, %4283
  %4285 = icmp eq i64 %4284, 2
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %49, align 1
  %4287 = add i64 %4261, 12
  %4288 = add i64 %4253, 21
  store i64 %4288, i64* %3, align 8
  %4289 = inttoptr i64 %4287 to i32*
  %4290 = load i32, i32* %4289, align 4
  %4291 = add i32 %4290, -1
  %4292 = icmp eq i32 %4290, 0
  %4293 = zext i1 %4292 to i8
  store i8 %4293, i8* %24, align 1
  %4294 = and i32 %4291, 255
  %4295 = tail call i32 @llvm.ctpop.i32(i32 %4294)
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  %4298 = xor i8 %4297, 1
  store i8 %4298, i8* %31, align 1
  %4299 = xor i32 %4291, %4290
  %4300 = lshr i32 %4299, 4
  %4301 = trunc i32 %4300 to i8
  %4302 = and i8 %4301, 1
  store i8 %4302, i8* %37, align 1
  %4303 = icmp eq i32 %4291, 0
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %40, align 1
  %4305 = lshr i32 %4291, 31
  %4306 = trunc i32 %4305 to i8
  store i8 %4306, i8* %43, align 1
  %4307 = lshr i32 %4290, 31
  %4308 = xor i32 %4305, %4307
  %4309 = add nuw nsw i32 %4308, %4307
  %4310 = icmp eq i32 %4309, 2
  %4311 = zext i1 %4310 to i8
  store i8 %4311, i8* %49, align 1
  %.v110 = select i1 %4303, i64 27, i64 241
  %4312 = add i64 %4253, %.v110
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4313 = load i64, i64* %RBP.i, align 8
  %4314 = add i64 %4313, -148
  %4315 = add i64 %4312, 17
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4314 to i32*
  %4317 = load i32, i32* %4316, align 4
  %4318 = sext i32 %4317 to i64
  %4319 = mul nsw i64 %4318, 744
  store i64 %4319, i64* %RCX.i1453, align 8
  %4320 = lshr i64 %4319, 63
  %4321 = add i64 %4312, 27
  store i64 %4321, i64* %3, align 8
  %4322 = add i64 %4319, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4322, i64* %RAX.i1477, align 8
  %4323 = icmp ult i64 %4322, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4324 = icmp ult i64 %4322, %4319
  %4325 = or i1 %4323, %4324
  %4326 = zext i1 %4325 to i8
  store i8 %4326, i8* %24, align 1
  %4327 = trunc i64 %4322 to i32
  %4328 = and i32 %4327, 248
  %4329 = tail call i32 @llvm.ctpop.i32(i32 %4328)
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = xor i8 %4331, 1
  store i8 %4332, i8* %31, align 1
  %4333 = xor i64 %4319, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4334 = xor i64 %4333, %4322
  %4335 = lshr i64 %4334, 4
  %4336 = trunc i64 %4335 to i8
  %4337 = and i8 %4336, 1
  store i8 %4337, i8* %37, align 1
  %4338 = icmp eq i64 %4322, 0
  %4339 = zext i1 %4338 to i8
  store i8 %4339, i8* %40, align 1
  %4340 = lshr i64 %4322, 63
  %4341 = trunc i64 %4340 to i8
  store i8 %4341, i8* %43, align 1
  %4342 = xor i64 %4340, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4343 = xor i64 %4340, %4320
  %4344 = add nuw nsw i64 %4342, %4343
  %4345 = icmp eq i64 %4344, 2
  %4346 = zext i1 %4345 to i8
  store i8 %4346, i8* %49, align 1
  br i1 %4303, label %block_416989, label %block_.L_416a5f

block_416989:                                     ; preds = %block_.L_416959
  %4347 = add i64 %4319, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %4348 = add i64 %4312, 30
  store i64 %4348, i64* %3, align 8
  %4349 = inttoptr i64 %4347 to i32*
  %4350 = load i32, i32* %4349, align 4
  %4351 = zext i32 %4350 to i64
  store i64 %4351, i64* %RDX.i1434, align 8
  %4352 = add i64 %4313, -72
  %4353 = add i64 %4312, 34
  store i64 %4353, i64* %3, align 8
  %4354 = inttoptr i64 %4352 to i64*
  %4355 = load i64, i64* %4354, align 8
  store i64 %4355, i64* %RAX.i1477, align 8
  %4356 = add i64 %4312, 36
  store i64 %4356, i64* %3, align 8
  %4357 = inttoptr i64 %4355 to i32*
  %4358 = load i32, i32* %4357, align 4
  %4359 = add i32 %4358, %4350
  %4360 = zext i32 %4359 to i64
  store i64 %4360, i64* %RDX.i1434, align 8
  %4361 = icmp ult i32 %4359, %4350
  %4362 = icmp ult i32 %4359, %4358
  %4363 = or i1 %4361, %4362
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %24, align 1
  %4365 = and i32 %4359, 255
  %4366 = tail call i32 @llvm.ctpop.i32(i32 %4365)
  %4367 = trunc i32 %4366 to i8
  %4368 = and i8 %4367, 1
  %4369 = xor i8 %4368, 1
  store i8 %4369, i8* %31, align 1
  %4370 = xor i32 %4358, %4350
  %4371 = xor i32 %4370, %4359
  %4372 = lshr i32 %4371, 4
  %4373 = trunc i32 %4372 to i8
  %4374 = and i8 %4373, 1
  store i8 %4374, i8* %37, align 1
  %4375 = icmp eq i32 %4359, 0
  %4376 = zext i1 %4375 to i8
  store i8 %4376, i8* %40, align 1
  %4377 = lshr i32 %4359, 31
  %4378 = trunc i32 %4377 to i8
  store i8 %4378, i8* %43, align 1
  %4379 = lshr i32 %4350, 31
  %4380 = lshr i32 %4358, 31
  %4381 = xor i32 %4377, %4379
  %4382 = xor i32 %4377, %4380
  %4383 = add nuw nsw i32 %4381, %4382
  %4384 = icmp eq i32 %4383, 2
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %49, align 1
  %4386 = add i64 %4312, 38
  store i64 %4386, i64* %3, align 8
  store i32 %4359, i32* %4357, align 4
  %4387 = load i64, i64* %RBP.i, align 8
  %4388 = add i64 %4387, -152
  %4389 = load i64, i64* %3, align 8
  %4390 = add i64 %4389, 10
  store i64 %4390, i64* %3, align 8
  %4391 = inttoptr i64 %4388 to i32*
  store i32 0, i32* %4391, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4169b9

block_.L_4169b9:                                  ; preds = %block_.L_416a41, %block_416989
  %4392 = phi i64 [ %4645, %block_.L_416a41 ], [ %.pre84, %block_416989 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4393 = load i64, i64* %RBP.i, align 8
  %4394 = add i64 %4393, -152
  %4395 = add i64 %4392, 16
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %RCX.i1453, align 8
  %4399 = add i64 %4393, -148
  %4400 = add i64 %4392, 23
  store i64 %4400, i64* %3, align 8
  %4401 = inttoptr i64 %4399 to i32*
  %4402 = load i32, i32* %4401, align 4
  %4403 = sext i32 %4402 to i64
  %4404 = mul nsw i64 %4403, 744
  store i64 %4404, i64* %RDX.i1434, align 8
  %4405 = lshr i64 %4404, 63
  %4406 = add i64 %4404, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4406, i64* %RAX.i1477, align 8
  %4407 = icmp ult i64 %4406, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4408 = icmp ult i64 %4406, %4404
  %4409 = or i1 %4407, %4408
  %4410 = zext i1 %4409 to i8
  store i8 %4410, i8* %24, align 1
  %4411 = trunc i64 %4406 to i32
  %4412 = and i32 %4411, 248
  %4413 = tail call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  store i8 %4416, i8* %31, align 1
  %4417 = xor i64 %4404, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4418 = xor i64 %4417, %4406
  %4419 = lshr i64 %4418, 4
  %4420 = trunc i64 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %37, align 1
  %4422 = icmp eq i64 %4406, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %40, align 1
  %4424 = lshr i64 %4406, 63
  %4425 = trunc i64 %4424 to i8
  store i8 %4425, i8* %43, align 1
  %4426 = xor i64 %4424, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4427 = xor i64 %4424, %4405
  %4428 = add nuw nsw i64 %4426, %4427
  %4429 = icmp eq i64 %4428, 2
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %49, align 1
  %4431 = add i64 %4404, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %4432 = add i64 %4392, 36
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i32*
  %4434 = load i32, i32* %4433, align 8
  %4435 = sub i32 %4397, %4434
  %4436 = icmp ult i32 %4397, %4434
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %24, align 1
  %4438 = and i32 %4435, 255
  %4439 = tail call i32 @llvm.ctpop.i32(i32 %4438)
  %4440 = trunc i32 %4439 to i8
  %4441 = and i8 %4440, 1
  %4442 = xor i8 %4441, 1
  store i8 %4442, i8* %31, align 1
  %4443 = xor i32 %4434, %4397
  %4444 = xor i32 %4443, %4435
  %4445 = lshr i32 %4444, 4
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  store i8 %4447, i8* %37, align 1
  %4448 = icmp eq i32 %4435, 0
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %40, align 1
  %4450 = lshr i32 %4435, 31
  %4451 = trunc i32 %4450 to i8
  store i8 %4451, i8* %43, align 1
  %4452 = lshr i32 %4397, 31
  %4453 = lshr i32 %4434, 31
  %4454 = xor i32 %4453, %4452
  %4455 = xor i32 %4450, %4452
  %4456 = add nuw nsw i32 %4455, %4454
  %4457 = icmp eq i32 %4456, 2
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %49, align 1
  %4459 = icmp ne i8 %4451, 0
  %4460 = xor i1 %4459, %4457
  %.v113 = select i1 %4460, i64 42, i64 161
  %4461 = add i64 %4392, %.v113
  store i64 %4461, i64* %3, align 8
  br i1 %4460, label %block_4169e3, label %block_.L_416a5a

block_4169e3:                                     ; preds = %block_.L_4169b9
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4462 = load i64, i64* %RBP.i, align 8
  %4463 = add i64 %4462, -148
  %4464 = add i64 %4461, 17
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i32*
  %4466 = load i32, i32* %4465, align 4
  %4467 = sext i32 %4466 to i64
  %4468 = mul nsw i64 %4467, 744
  store i64 %4468, i64* %RCX.i1453, align 8
  %4469 = lshr i64 %4468, 63
  %4470 = add i64 %4468, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4470, i64* %RDX.i1434, align 8
  %4471 = icmp ult i64 %4470, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4472 = icmp ult i64 %4470, %4468
  %4473 = or i1 %4471, %4472
  %4474 = zext i1 %4473 to i8
  store i8 %4474, i8* %24, align 1
  %4475 = trunc i64 %4470 to i32
  %4476 = and i32 %4475, 248
  %4477 = tail call i32 @llvm.ctpop.i32(i32 %4476)
  %4478 = trunc i32 %4477 to i8
  %4479 = and i8 %4478, 1
  %4480 = xor i8 %4479, 1
  store i8 %4480, i8* %31, align 1
  %4481 = xor i64 %4468, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4482 = xor i64 %4481, %4470
  %4483 = lshr i64 %4482, 4
  %4484 = trunc i64 %4483 to i8
  %4485 = and i8 %4484, 1
  store i8 %4485, i8* %37, align 1
  %4486 = icmp eq i64 %4470, 0
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %40, align 1
  %4488 = lshr i64 %4470, 63
  %4489 = trunc i64 %4488 to i8
  store i8 %4489, i8* %43, align 1
  %4490 = xor i64 %4488, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4491 = xor i64 %4488, %4469
  %4492 = add nuw nsw i64 %4490, %4491
  %4493 = icmp eq i64 %4492, 2
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %49, align 1
  %4495 = add i64 %4462, -152
  %4496 = add i64 %4461, 37
  store i64 %4496, i64* %3, align 8
  %4497 = inttoptr i64 %4495 to i32*
  %4498 = load i32, i32* %4497, align 4
  %4499 = sext i32 %4498 to i64
  store i64 %4499, i64* %RCX.i1453, align 8
  %4500 = shl nsw i64 %4499, 2
  %4501 = add i64 %4468, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %4502 = add i64 %4501, %4500
  %4503 = add i64 %4461, 42
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = sext i32 %4505 to i64
  %4507 = mul nsw i64 %4506, 744
  store i64 %4507, i64* %RCX.i1453, align 8
  %4508 = lshr i64 %4507, 63
  %4509 = load i64, i64* %RAX.i1477, align 8
  %4510 = add i64 %4507, %4509
  store i64 %4510, i64* %RAX.i1477, align 8
  %4511 = icmp ult i64 %4510, %4509
  %4512 = icmp ult i64 %4510, %4507
  %4513 = or i1 %4511, %4512
  %4514 = zext i1 %4513 to i8
  store i8 %4514, i8* %24, align 1
  %4515 = trunc i64 %4510 to i32
  %4516 = and i32 %4515, 255
  %4517 = tail call i32 @llvm.ctpop.i32(i32 %4516)
  %4518 = trunc i32 %4517 to i8
  %4519 = and i8 %4518, 1
  %4520 = xor i8 %4519, 1
  store i8 %4520, i8* %31, align 1
  %4521 = xor i64 %4507, %4509
  %4522 = xor i64 %4521, %4510
  %4523 = lshr i64 %4522, 4
  %4524 = trunc i64 %4523 to i8
  %4525 = and i8 %4524, 1
  store i8 %4525, i8* %37, align 1
  %4526 = icmp eq i64 %4510, 0
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %40, align 1
  %4528 = lshr i64 %4510, 63
  %4529 = trunc i64 %4528 to i8
  store i8 %4529, i8* %43, align 1
  %4530 = lshr i64 %4509, 63
  %4531 = xor i64 %4528, %4530
  %4532 = xor i64 %4528, %4508
  %4533 = add nuw nsw i64 %4531, %4532
  %4534 = icmp eq i64 %4533, 2
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %49, align 1
  %4536 = load i64, i64* %RBP.i, align 8
  %4537 = add i64 %4536, -160
  %4538 = add i64 %4461, 59
  store i64 %4538, i64* %3, align 8
  %4539 = inttoptr i64 %4537 to i64*
  store i64 %4510, i64* %4539, align 8
  %4540 = load i64, i64* %RBP.i, align 8
  %4541 = add i64 %4540, -160
  %4542 = load i64, i64* %3, align 8
  %4543 = add i64 %4542, 7
  store i64 %4543, i64* %3, align 8
  %4544 = inttoptr i64 %4541 to i64*
  %4545 = load i64, i64* %4544, align 8
  store i64 %4545, i64* %RAX.i1477, align 8
  %4546 = add i64 %4545, 12
  %4547 = add i64 %4542, 11
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4546 to i32*
  %4549 = load i32, i32* %4548, align 4
  %4550 = add i32 %4549, -1
  %4551 = icmp eq i32 %4549, 0
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %24, align 1
  %4553 = and i32 %4550, 255
  %4554 = tail call i32 @llvm.ctpop.i32(i32 %4553)
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = xor i8 %4556, 1
  store i8 %4557, i8* %31, align 1
  %4558 = xor i32 %4550, %4549
  %4559 = lshr i32 %4558, 4
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  store i8 %4561, i8* %37, align 1
  %4562 = icmp eq i32 %4550, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %40, align 1
  %4564 = lshr i32 %4550, 31
  %4565 = trunc i32 %4564 to i8
  store i8 %4565, i8* %43, align 1
  %4566 = lshr i32 %4549, 31
  %4567 = xor i32 %4564, %4566
  %4568 = add nuw nsw i32 %4567, %4566
  %4569 = icmp eq i32 %4568, 2
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %49, align 1
  %.v114 = select i1 %4562, i64 17, i64 35
  %4571 = add i64 %4542, %.v114
  store i64 %4571, i64* %3, align 8
  br i1 %4562, label %block_416a2f, label %block_.L_416a41

block_416a2f:                                     ; preds = %block_4169e3
  %4572 = add i64 %4571, 7
  store i64 %4572, i64* %3, align 8
  %4573 = load i64, i64* %4544, align 8
  store i64 %4573, i64* %RAX.i1477, align 8
  %4574 = add i64 %4573, 4
  %4575 = add i64 %4571, 10
  store i64 %4575, i64* %3, align 8
  %4576 = inttoptr i64 %4574 to i32*
  %4577 = load i32, i32* %4576, align 4
  %4578 = zext i32 %4577 to i64
  store i64 %4578, i64* %RCX.i1453, align 8
  %4579 = add i64 %4540, -88
  %4580 = add i64 %4571, 14
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4579 to i64*
  %4582 = load i64, i64* %4581, align 8
  store i64 %4582, i64* %RAX.i1477, align 8
  %4583 = add i64 %4571, 16
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4582 to i32*
  %4585 = load i32, i32* %4584, align 4
  %4586 = add i32 %4585, %4577
  %4587 = zext i32 %4586 to i64
  store i64 %4587, i64* %RCX.i1453, align 8
  %4588 = icmp ult i32 %4586, %4577
  %4589 = icmp ult i32 %4586, %4585
  %4590 = or i1 %4588, %4589
  %4591 = zext i1 %4590 to i8
  store i8 %4591, i8* %24, align 1
  %4592 = and i32 %4586, 255
  %4593 = tail call i32 @llvm.ctpop.i32(i32 %4592)
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  %4596 = xor i8 %4595, 1
  store i8 %4596, i8* %31, align 1
  %4597 = xor i32 %4585, %4577
  %4598 = xor i32 %4597, %4586
  %4599 = lshr i32 %4598, 4
  %4600 = trunc i32 %4599 to i8
  %4601 = and i8 %4600, 1
  store i8 %4601, i8* %37, align 1
  %4602 = icmp eq i32 %4586, 0
  %4603 = zext i1 %4602 to i8
  store i8 %4603, i8* %40, align 1
  %4604 = lshr i32 %4586, 31
  %4605 = trunc i32 %4604 to i8
  store i8 %4605, i8* %43, align 1
  %4606 = lshr i32 %4577, 31
  %4607 = lshr i32 %4585, 31
  %4608 = xor i32 %4604, %4606
  %4609 = xor i32 %4604, %4607
  %4610 = add nuw nsw i32 %4608, %4609
  %4611 = icmp eq i32 %4610, 2
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %49, align 1
  %4613 = add i64 %4571, 18
  store i64 %4613, i64* %3, align 8
  store i32 %4586, i32* %4584, align 4
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br label %block_.L_416a41

block_.L_416a41:                                  ; preds = %block_4169e3, %block_416a2f
  %4614 = phi i64 [ %.pre86, %block_416a2f ], [ %4540, %block_4169e3 ]
  %4615 = phi i64 [ %.pre85, %block_416a2f ], [ %4571, %block_4169e3 ]
  %4616 = add i64 %4614, -152
  %4617 = add i64 %4615, 11
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = add i32 %4619, 1
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RAX.i1477, align 8
  %4622 = icmp eq i32 %4619, -1
  %4623 = icmp eq i32 %4620, 0
  %4624 = or i1 %4622, %4623
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %24, align 1
  %4626 = and i32 %4620, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %31, align 1
  %4631 = xor i32 %4620, %4619
  %4632 = lshr i32 %4631, 4
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %37, align 1
  %4635 = zext i1 %4623 to i8
  store i8 %4635, i8* %40, align 1
  %4636 = lshr i32 %4620, 31
  %4637 = trunc i32 %4636 to i8
  store i8 %4637, i8* %43, align 1
  %4638 = lshr i32 %4619, 31
  %4639 = xor i32 %4636, %4638
  %4640 = add nuw nsw i32 %4639, %4636
  %4641 = icmp eq i32 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %49, align 1
  %4643 = add i64 %4615, 20
  store i64 %4643, i64* %3, align 8
  store i32 %4620, i32* %4618, align 4
  %4644 = load i64, i64* %3, align 8
  %4645 = add i64 %4644, -156
  store i64 %4645, i64* %3, align 8
  br label %block_.L_4169b9

block_.L_416a5a:                                  ; preds = %block_.L_4169b9
  %4646 = add i64 %4461, 184
  br label %block_.L_416b12

block_.L_416a5f:                                  ; preds = %block_.L_416959
  %4647 = add i64 %4319, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4648 = add i64 %4312, 31
  store i64 %4648, i64* %3, align 8
  %4649 = inttoptr i64 %4647 to i32*
  %4650 = load i32, i32* %4649, align 4
  %4651 = add i32 %4650, -2
  %4652 = icmp ult i32 %4650, 2
  %4653 = zext i1 %4652 to i8
  store i8 %4653, i8* %24, align 1
  %4654 = and i32 %4651, 255
  %4655 = tail call i32 @llvm.ctpop.i32(i32 %4654)
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  %4658 = xor i8 %4657, 1
  store i8 %4658, i8* %31, align 1
  %4659 = xor i32 %4651, %4650
  %4660 = lshr i32 %4659, 4
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  store i8 %4662, i8* %37, align 1
  %4663 = icmp eq i32 %4651, 0
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %40, align 1
  %4665 = lshr i32 %4651, 31
  %4666 = trunc i32 %4665 to i8
  store i8 %4666, i8* %43, align 1
  %4667 = lshr i32 %4650, 31
  %4668 = xor i32 %4665, %4667
  %4669 = add nuw nsw i32 %4668, %4667
  %4670 = icmp eq i32 %4669, 2
  %4671 = zext i1 %4670 to i8
  store i8 %4671, i8* %49, align 1
  %.v111 = select i1 %4663, i64 37, i64 174
  %4672 = add i64 %4312, %.v111
  store i64 %4672, i64* %3, align 8
  br i1 %4663, label %block_416a84, label %block_.L_416b0d

block_416a84:                                     ; preds = %block_.L_416a5f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4673 = add i64 %4313, -20
  %4674 = add i64 %4672, 13
  store i64 %4674, i64* %3, align 8
  %4675 = inttoptr i64 %4673 to i32*
  %4676 = load i32, i32* %4675, align 4
  %4677 = add i32 %4676, 1
  %4678 = zext i32 %4677 to i64
  store i64 %4678, i64* %RCX.i1453, align 8
  %4679 = icmp eq i32 %4676, -1
  %4680 = icmp eq i32 %4677, 0
  %4681 = or i1 %4679, %4680
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %24, align 1
  %4683 = and i32 %4677, 255
  %4684 = tail call i32 @llvm.ctpop.i32(i32 %4683)
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = xor i8 %4686, 1
  store i8 %4687, i8* %31, align 1
  %4688 = xor i32 %4677, %4676
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  store i8 %4691, i8* %37, align 1
  %4692 = zext i1 %4680 to i8
  store i8 %4692, i8* %40, align 1
  %4693 = lshr i32 %4677, 31
  %4694 = trunc i32 %4693 to i8
  store i8 %4694, i8* %43, align 1
  %4695 = lshr i32 %4676, 31
  %4696 = xor i32 %4693, %4695
  %4697 = add nuw nsw i32 %4696, %4693
  %4698 = icmp eq i32 %4697, 2
  %4699 = zext i1 %4698 to i8
  store i8 %4699, i8* %49, align 1
  %4700 = sext i32 %4677 to i64
  store i64 %4700, i64* %RDX.i1434, align 8
  %4701 = shl nsw i64 %4700, 2
  %4702 = add nsw i64 %4701, 11187184
  %4703 = add i64 %4672, 27
  store i64 %4703, i64* %3, align 8
  %4704 = inttoptr i64 %4702 to i32*
  %4705 = load i32, i32* %4704, align 4
  %4706 = sext i32 %4705 to i64
  %4707 = mul nsw i64 %4706, 744
  store i64 %4707, i64* %RDX.i1434, align 8
  %4708 = lshr i64 %4707, 63
  %4709 = add i64 %4707, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4709, i64* %RAX.i1477, align 8
  %4710 = icmp ult i64 %4709, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4711 = icmp ult i64 %4709, %4707
  %4712 = or i1 %4710, %4711
  %4713 = zext i1 %4712 to i8
  store i8 %4713, i8* %24, align 1
  %4714 = trunc i64 %4709 to i32
  %4715 = and i32 %4714, 248
  %4716 = tail call i32 @llvm.ctpop.i32(i32 %4715)
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = xor i8 %4718, 1
  store i8 %4719, i8* %31, align 1
  %4720 = xor i64 %4707, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4721 = xor i64 %4720, %4709
  %4722 = lshr i64 %4721, 4
  %4723 = trunc i64 %4722 to i8
  %4724 = and i8 %4723, 1
  store i8 %4724, i8* %37, align 1
  %4725 = icmp eq i64 %4709, 0
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %40, align 1
  %4727 = lshr i64 %4709, 63
  %4728 = trunc i64 %4727 to i8
  store i8 %4728, i8* %43, align 1
  %4729 = xor i64 %4727, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4730 = xor i64 %4727, %4708
  %4731 = add nuw nsw i64 %4729, %4730
  %4732 = icmp eq i64 %4731, 2
  %4733 = zext i1 %4732 to i8
  store i8 %4733, i8* %49, align 1
  %4734 = add i64 %4707, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %4735 = add i64 %4672, 43
  store i64 %4735, i64* %3, align 8
  %4736 = inttoptr i64 %4734 to i32*
  %4737 = load i32, i32* %4736, align 4
  %4738 = zext i32 %4737 to i64
  store i64 %4738, i64* %RCX.i1453, align 8
  %4739 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4740 = sub i32 %4737, %4739
  %4741 = icmp ult i32 %4737, %4739
  %4742 = zext i1 %4741 to i8
  store i8 %4742, i8* %24, align 1
  %4743 = and i32 %4740, 255
  %4744 = tail call i32 @llvm.ctpop.i32(i32 %4743)
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = xor i8 %4746, 1
  store i8 %4747, i8* %31, align 1
  %4748 = xor i32 %4739, %4737
  %4749 = xor i32 %4748, %4740
  %4750 = lshr i32 %4749, 4
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  store i8 %4752, i8* %37, align 1
  %4753 = icmp eq i32 %4740, 0
  %4754 = zext i1 %4753 to i8
  store i8 %4754, i8* %40, align 1
  %4755 = lshr i32 %4740, 31
  %4756 = trunc i32 %4755 to i8
  store i8 %4756, i8* %43, align 1
  %4757 = lshr i32 %4737, 31
  %4758 = lshr i32 %4739, 31
  %4759 = xor i32 %4758, %4757
  %4760 = xor i32 %4755, %4757
  %4761 = add nuw nsw i32 %4760, %4759
  %4762 = icmp eq i32 %4761, 2
  %4763 = zext i1 %4762 to i8
  store i8 %4763, i8* %49, align 1
  %.v112 = select i1 %4753, i64 137, i64 56
  %4764 = add i64 %4672, %.v112
  store i64 %4764, i64* %3, align 8
  br i1 %4753, label %block_.L_416b0d, label %block_416abc

block_416abc:                                     ; preds = %block_416a84
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1477, align 8
  %4765 = load i64, i64* %RBP.i, align 8
  %4766 = add i64 %4765, -148
  %4767 = add i64 %4764, 17
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4766 to i32*
  %4769 = load i32, i32* %4768, align 4
  %4770 = sext i32 %4769 to i64
  %4771 = mul nsw i64 %4770, 744
  store i64 %4771, i64* %RCX.i1453, align 8
  %4772 = lshr i64 %4771, 63
  %4773 = add i64 %4771, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4773, i64* %RDX.i1434, align 8
  %4774 = icmp ult i64 %4773, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4775 = icmp ult i64 %4773, %4771
  %4776 = or i1 %4774, %4775
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %24, align 1
  %4778 = trunc i64 %4773 to i32
  %4779 = and i32 %4778, 248
  %4780 = tail call i32 @llvm.ctpop.i32(i32 %4779)
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  %4783 = xor i8 %4782, 1
  store i8 %4783, i8* %31, align 1
  %4784 = xor i64 %4771, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4785 = xor i64 %4784, %4773
  %4786 = lshr i64 %4785, 4
  %4787 = trunc i64 %4786 to i8
  %4788 = and i8 %4787, 1
  store i8 %4788, i8* %37, align 1
  %4789 = icmp eq i64 %4773, 0
  %4790 = zext i1 %4789 to i8
  store i8 %4790, i8* %40, align 1
  %4791 = lshr i64 %4773, 63
  %4792 = trunc i64 %4791 to i8
  store i8 %4792, i8* %43, align 1
  %4793 = xor i64 %4791, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4794 = xor i64 %4791, %4772
  %4795 = add nuw nsw i64 %4793, %4794
  %4796 = icmp eq i64 %4795, 2
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %49, align 1
  %RSI.i35 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %4798 = add i64 %4771, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %4799 = add i64 %4764, 33
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = zext i32 %4801 to i64
  store i64 %4802, i64* %RSI.i35, align 8
  %4803 = add i64 %4765, -80
  %4804 = add i64 %4764, 37
  store i64 %4804, i64* %3, align 8
  %4805 = inttoptr i64 %4803 to i64*
  %4806 = load i64, i64* %4805, align 8
  store i64 %4806, i64* %RCX.i1453, align 8
  %4807 = add i64 %4764, 39
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  %4809 = load i32, i32* %4808, align 4
  %4810 = add i32 %4809, %4801
  %4811 = icmp ult i32 %4810, %4801
  %4812 = icmp ult i32 %4810, %4809
  %4813 = or i1 %4811, %4812
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %24, align 1
  %4815 = and i32 %4810, 255
  %4816 = tail call i32 @llvm.ctpop.i32(i32 %4815)
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  %4819 = xor i8 %4818, 1
  store i8 %4819, i8* %31, align 1
  %4820 = xor i32 %4809, %4801
  %4821 = xor i32 %4820, %4810
  %4822 = lshr i32 %4821, 4
  %4823 = trunc i32 %4822 to i8
  %4824 = and i8 %4823, 1
  store i8 %4824, i8* %37, align 1
  %4825 = icmp eq i32 %4810, 0
  %4826 = zext i1 %4825 to i8
  store i8 %4826, i8* %40, align 1
  %4827 = lshr i32 %4810, 31
  %4828 = trunc i32 %4827 to i8
  store i8 %4828, i8* %43, align 1
  %4829 = lshr i32 %4801, 31
  %4830 = lshr i32 %4809, 31
  %4831 = xor i32 %4827, %4829
  %4832 = xor i32 %4827, %4830
  %4833 = add nuw nsw i32 %4831, %4832
  %4834 = icmp eq i32 %4833, 2
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %49, align 1
  %4836 = add i64 %4764, 41
  store i64 %4836, i64* %3, align 8
  store i32 %4810, i32* %4808, align 4
  %4837 = load i64, i64* %3, align 8
  %4838 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RSI.i35, align 8
  %RDI.i22 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %4840 = load i64, i64* %RBP.i, align 8
  %4841 = add i64 %4840, -20
  %4842 = add i64 %4837, 10
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = add i32 %4844, 1
  %4846 = zext i32 %4845 to i64
  store i64 %4846, i64* %RDI.i22, align 8
  %4847 = icmp eq i32 %4844, -1
  %4848 = icmp eq i32 %4845, 0
  %4849 = or i1 %4847, %4848
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %24, align 1
  %4851 = and i32 %4845, 255
  %4852 = tail call i32 @llvm.ctpop.i32(i32 %4851)
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = xor i8 %4854, 1
  store i8 %4855, i8* %31, align 1
  %4856 = xor i32 %4845, %4844
  %4857 = lshr i32 %4856, 4
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  store i8 %4859, i8* %37, align 1
  %4860 = zext i1 %4848 to i8
  store i8 %4860, i8* %40, align 1
  %4861 = lshr i32 %4845, 31
  %4862 = trunc i32 %4861 to i8
  store i8 %4862, i8* %43, align 1
  %4863 = lshr i32 %4844, 31
  %4864 = xor i32 %4861, %4863
  %4865 = add nuw nsw i32 %4864, %4861
  %4866 = icmp eq i32 %4865, 2
  %4867 = zext i1 %4866 to i8
  store i8 %4867, i8* %49, align 1
  %4868 = sext i32 %4845 to i64
  store i64 %4868, i64* %RCX.i1453, align 8
  %4869 = shl nsw i64 %4868, 2
  %4870 = add nsw i64 %4869, 11187184
  %4871 = add i64 %4837, 24
  store i64 %4871, i64* %3, align 8
  %4872 = inttoptr i64 %4870 to i32*
  %4873 = load i32, i32* %4872, align 4
  %4874 = sext i32 %4873 to i64
  %4875 = mul nsw i64 %4874, 744
  store i64 %4875, i64* %RCX.i1453, align 8
  %4876 = lshr i64 %4875, 63
  %4877 = load i64, i64* %RAX.i1477, align 8
  %4878 = add i64 %4875, %4877
  store i64 %4878, i64* %RAX.i1477, align 8
  %4879 = icmp ult i64 %4878, %4877
  %4880 = icmp ult i64 %4878, %4875
  %4881 = or i1 %4879, %4880
  %4882 = zext i1 %4881 to i8
  store i8 %4882, i8* %24, align 1
  %4883 = trunc i64 %4878 to i32
  %4884 = and i32 %4883, 255
  %4885 = tail call i32 @llvm.ctpop.i32(i32 %4884)
  %4886 = trunc i32 %4885 to i8
  %4887 = and i8 %4886, 1
  %4888 = xor i8 %4887, 1
  store i8 %4888, i8* %31, align 1
  %4889 = xor i64 %4875, %4877
  %4890 = xor i64 %4889, %4878
  %4891 = lshr i64 %4890, 4
  %4892 = trunc i64 %4891 to i8
  %4893 = and i8 %4892, 1
  store i8 %4893, i8* %37, align 1
  %4894 = icmp eq i64 %4878, 0
  %4895 = zext i1 %4894 to i8
  store i8 %4895, i8* %40, align 1
  %4896 = lshr i64 %4878, 63
  %4897 = trunc i64 %4896 to i8
  store i8 %4897, i8* %43, align 1
  %4898 = lshr i64 %4877, 63
  %4899 = xor i64 %4896, %4898
  %4900 = xor i64 %4896, %4876
  %4901 = add nuw nsw i64 %4899, %4900
  %4902 = icmp eq i64 %4901, 2
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %49, align 1
  %4904 = add i64 %4878, 740
  %4905 = load i32, i32* %ESI.i1459, align 4
  %4906 = add i64 %4837, 40
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4904 to i32*
  store i32 %4905, i32* %4907, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_416b0d

block_.L_416b0d:                                  ; preds = %block_.L_416a5f, %block_416abc, %block_416a84
  %4908 = phi i64 [ %.pre87, %block_416abc ], [ %4764, %block_416a84 ], [ %4672, %block_.L_416a5f ]
  %4909 = add i64 %4908, 5
  store i64 %4909, i64* %3, align 8
  br label %block_.L_416b12

block_.L_416b12:                                  ; preds = %block_.L_416b0d, %block_.L_416a5a
  %storemerge45 = phi i64 [ %4646, %block_.L_416a5a ], [ %4909, %block_.L_416b0d ]
  %4910 = add i64 %storemerge45, 5
  store i64 %4910, i64* %3, align 8
  br label %block_.L_416b17

block_.L_416b17:                                  ; preds = %block_.L_416b12, %block_.L_416954
  %storemerge44 = phi i64 [ %4219, %block_.L_416954 ], [ %4910, %block_.L_416b12 ]
  %4911 = add i64 %storemerge44, 5
  store i64 %4911, i64* %3, align 8
  br label %block_.L_416b1c

block_.L_416b1c:                                  ; preds = %block_.L_416b17, %block_41689c
  %storemerge43 = phi i64 [ %3880, %block_41689c ], [ %4911, %block_.L_416b17 ]
  %4912 = add i64 %storemerge43, 5
  store i64 %4912, i64* %3, align 8
  br label %block_.L_416b21

block_.L_416b21:                                  ; preds = %block_.L_416b1c, %block_416872
  %storemerge42 = phi i64 [ %3808, %block_416872 ], [ %4912, %block_.L_416b1c ]
  %4913 = load i64, i64* %6, align 8
  %4914 = add i64 %4913, 16
  store i64 %4914, i64* %6, align 8
  %4915 = icmp ugt i64 %4913, -17
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %24, align 1
  %4917 = trunc i64 %4914 to i32
  %4918 = and i32 %4917, 255
  %4919 = tail call i32 @llvm.ctpop.i32(i32 %4918)
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = xor i8 %4921, 1
  store i8 %4922, i8* %31, align 1
  %4923 = xor i64 %4913, 16
  %4924 = xor i64 %4923, %4914
  %4925 = lshr i64 %4924, 4
  %4926 = trunc i64 %4925 to i8
  %4927 = and i8 %4926, 1
  store i8 %4927, i8* %37, align 1
  %4928 = icmp eq i64 %4914, 0
  %4929 = zext i1 %4928 to i8
  store i8 %4929, i8* %40, align 1
  %4930 = lshr i64 %4914, 63
  %4931 = trunc i64 %4930 to i8
  store i8 %4931, i8* %43, align 1
  %4932 = lshr i64 %4913, 63
  %4933 = xor i64 %4930, %4932
  %4934 = add nuw nsw i64 %4933, %4930
  %4935 = icmp eq i64 %4934, 2
  %4936 = zext i1 %4935 to i8
  store i8 %4936, i8* %49, align 1
  %4937 = add i64 %storemerge42, 5
  store i64 %4937, i64* %3, align 8
  %4938 = add i64 %4913, 24
  %4939 = inttoptr i64 %4914 to i64*
  %4940 = load i64, i64* %4939, align 8
  store i64 %4940, i64* %RBX.i1482, align 8
  store i64 %4938, i64* %6, align 8
  %4941 = add i64 %storemerge42, 7
  store i64 %4941, i64* %3, align 8
  %4942 = add i64 %4913, 32
  %4943 = inttoptr i64 %4938 to i64*
  %4944 = load i64, i64* %4943, align 8
  store i64 %4944, i64* %R14.i1484, align 8
  store i64 %4942, i64* %6, align 8
  %4945 = add i64 %storemerge42, 8
  store i64 %4945, i64* %3, align 8
  %4946 = add i64 %4913, 40
  %4947 = inttoptr i64 %4942 to i64*
  %4948 = load i64, i64* %4947, align 8
  store i64 %4948, i64* %RBP.i, align 8
  store i64 %4946, i64* %6, align 8
  %4949 = add i64 %storemerge42, 9
  store i64 %4949, i64* %3, align 8
  %4950 = inttoptr i64 %4946 to i64*
  %4951 = load i64, i64* %4950, align 8
  store i64 %4951, i64* %3, align 8
  %4952 = add i64 %4913, 48
  store i64 %4952, i64* %6, align 8
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da08___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x99da08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_416093(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4162fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4160bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4162f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jne_.L_4160ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jne_.L_41615e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
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
define %struct.Memory* @routine_movl__edx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_416159(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_jmpq_.L_4162f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416240(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 96
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
define %struct.Memory* @routine_jge_.L_41623b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416228(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41622d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4161b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4162ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4162e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4162e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 740
  %6 = load i32, i32* %ESI, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_416326(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41658f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41658a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -116
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
define %struct.Memory* @routine_jne_.L_416382(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4163f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jne_.L_4163ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416585(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4164d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jge_.L_4164ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x78__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4164bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4164c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41657b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41657b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_4165b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4165e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416853(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -132
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jne_.L_41661b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_416690(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41668b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41684e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416796(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_416791(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416778(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41677d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4166f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416849(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416844(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_416844(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_416882(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416b21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4168ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416b1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -148
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jne_.L_4168e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_416959(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_jne_.L_416954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416b17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_416a5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416a41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_416a46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4169b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_416b12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_416b0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_416b0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
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
