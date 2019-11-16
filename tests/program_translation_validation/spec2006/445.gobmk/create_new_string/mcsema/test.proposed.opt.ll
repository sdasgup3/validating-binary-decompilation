; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da00_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0x99da00_type = type <{ [8 x i8] }>
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
@G_0x99da00 = local_unnamed_addr global %G_0x99da00_type zeroinitializer
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0x99da00 = global %G__0x99da00_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @create_new_string(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1309 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 ptrtoint (%G__0x99da00_type* @G__0x99da00 to i64), i64* %RCX.i1309, align 8
  %RDX.i1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 3, i64* %RDX.i1307, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1304 = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i1304, align 4
  %15 = add i64 %10, 31
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RSI.i1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %RSI.i1301, align 8
  %RDI.i1299 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %24 = add nsw i64 %23, 12099168
  %25 = add i64 %19, 12
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %24 to i8*
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  store i64 %28, i64* %RDI.i1299, align 8
  %29 = add i64 %17, -12
  %30 = zext i8 %27 to i32
  %31 = add i64 %19, 15
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %RDX.i1307, align 8
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -12
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %3, align 8
  %38 = trunc i64 %33 to i32
  %39 = inttoptr i64 %35 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %38, %40
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %48 = add i64 %34, -16
  %49 = add i64 %36, 6
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  store i32 %41, i32* %50, align 4
  %51 = load i64, i64* %3, align 8
  %52 = load i64*, i64** bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64**), align 8
  %53 = load i64, i64* %RCX.i1309, align 8
  %54 = add i64 %51, 11
  store i64 %54, i64* %3, align 8
  store i64 %53, i64* %52, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %57 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %57, i64* %RCX.i1309, align 8
  %58 = add i64 %57, 16
  store i64 %58, i64* %RSI.i1301, align 8
  store i64 %58, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %59 = add i64 %57, 8
  %60 = add i64 %55, 33
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  store i32 %56, i32* %61, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RDX.i1307, align 8
  %65 = add i32 %63, 1
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RDI.i1299, align 8
  %67 = icmp eq i32 %63, -1
  %68 = icmp eq i32 %65, 0
  %69 = or i1 %67, %68
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %42, align 1
  %71 = and i32 %65, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %43, align 1
  %76 = xor i32 %65, %63
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %44, align 1
  %80 = zext i1 %68 to i8
  store i8 %80, i8* %45, align 1
  %81 = lshr i32 %65, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %46, align 1
  %83 = lshr i32 %63, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %81
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %47, align 1
  store i32 %65, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -8
  %90 = add i64 %62, 22
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 %63, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -8
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RDX.i1307, align 8
  %99 = add i64 %92, -4
  %100 = add i64 %94, 7
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %RCX.i1309, align 8
  %104 = shl nsw i64 %103, 2
  %105 = add nsw i64 %104, 11187184
  %106 = add i64 %94, 14
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  store i32 %97, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -4
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RDX.i1307, align 8
  %115 = add i64 %110, 7
  store i64 %115, i64* %3, align 8
  %116 = load i32, i32* %112, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %RCX.i1309, align 8
  %118 = shl nsw i64 %117, 2
  %119 = add nsw i64 %118, 11188784
  %120 = add i64 %110, 14
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 %113, i32* %121, align 4
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -12
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 3
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RDX.i1307, align 8
  %129 = add i64 %122, -8
  %130 = add i64 %124, 7
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 744
  store i64 %134, i64* %RCX.i1309, align 8
  %135 = lshr i64 %134, 63
  %136 = load i64, i64* %RAX.i1311, align 8
  %137 = add i64 %134, %136
  store i64 %137, i64* %RSI.i1301, align 8
  %138 = icmp ult i64 %137, %136
  %139 = icmp ult i64 %137, %134
  %140 = or i1 %138, %139
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %42, align 1
  %142 = trunc i64 %137 to i32
  %143 = and i32 %142, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %43, align 1
  %148 = xor i64 %134, %136
  %149 = xor i64 %148, %137
  %150 = lshr i64 %149, 4
  %151 = trunc i64 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %44, align 1
  %153 = icmp eq i64 %137, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %45, align 1
  %155 = lshr i64 %137, 63
  %156 = trunc i64 %155 to i8
  store i8 %156, i8* %46, align 1
  %157 = lshr i64 %136, 63
  %158 = xor i64 %155, %157
  %159 = xor i64 %155, %135
  %160 = add nuw nsw i64 %158, %159
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %47, align 1
  %163 = inttoptr i64 %137 to i32*
  %164 = add i64 %124, 22
  store i64 %164, i64* %3, align 8
  store i32 %127, i32* %163, align 4
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -8
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 4
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %171, 744
  store i64 %172, i64* %RCX.i1309, align 8
  %173 = lshr i64 %172, 63
  %174 = load i64, i64* %RAX.i1311, align 8
  %175 = add i64 %172, %174
  store i64 %175, i64* %RSI.i1301, align 8
  %176 = icmp ult i64 %175, %174
  %177 = icmp ult i64 %175, %172
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %42, align 1
  %180 = trunc i64 %175 to i32
  %181 = and i32 %180, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %43, align 1
  %186 = xor i64 %172, %174
  %187 = xor i64 %186, %175
  %188 = lshr i64 %187, 4
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %44, align 1
  %191 = icmp eq i64 %175, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %45, align 1
  %193 = lshr i64 %175, 63
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %46, align 1
  %195 = lshr i64 %174, 63
  %196 = xor i64 %193, %195
  %197 = xor i64 %193, %173
  %198 = add nuw nsw i64 %196, %197
  %199 = icmp eq i64 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %47, align 1
  %201 = add i64 %175, 4
  %202 = add i64 %167, 24
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 1, i32* %203, align 4
  %204 = load i64, i64* %RBP.i, align 8
  %205 = add i64 %204, -4
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 3
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %205 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RDX.i1307, align 8
  %211 = add i64 %204, -8
  %212 = add i64 %206, 7
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = mul nsw i64 %215, 744
  store i64 %216, i64* %RCX.i1309, align 8
  %217 = lshr i64 %216, 63
  %218 = load i64, i64* %RAX.i1311, align 8
  %219 = add i64 %216, %218
  store i64 %219, i64* %RSI.i1301, align 8
  %220 = icmp ult i64 %219, %218
  %221 = icmp ult i64 %219, %216
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %42, align 1
  %224 = trunc i64 %219 to i32
  %225 = and i32 %224, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %43, align 1
  %230 = xor i64 %216, %218
  %231 = xor i64 %230, %219
  %232 = lshr i64 %231, 4
  %233 = trunc i64 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %44, align 1
  %235 = icmp eq i64 %219, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %45, align 1
  %237 = lshr i64 %219, 63
  %238 = trunc i64 %237 to i8
  store i8 %238, i8* %46, align 1
  %239 = lshr i64 %218, 63
  %240 = xor i64 %237, %239
  %241 = xor i64 %237, %217
  %242 = add nuw nsw i64 %240, %241
  %243 = icmp eq i64 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %47, align 1
  %245 = add i64 %219, 8
  %246 = add i64 %206, 23
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  store i32 %209, i32* %247, align 4
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -8
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %250, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %254, 744
  store i64 %255, i64* %RCX.i1309, align 8
  %256 = lshr i64 %255, 63
  %257 = load i64, i64* %RAX.i1311, align 8
  %258 = add i64 %255, %257
  store i64 %258, i64* %RSI.i1301, align 8
  %259 = icmp ult i64 %258, %257
  %260 = icmp ult i64 %258, %255
  %261 = or i1 %259, %260
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %42, align 1
  %263 = trunc i64 %258 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %43, align 1
  %269 = xor i64 %255, %257
  %270 = xor i64 %269, %258
  %271 = lshr i64 %270, 4
  %272 = trunc i64 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %44, align 1
  %274 = icmp eq i64 %258, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %45, align 1
  %276 = lshr i64 %258, 63
  %277 = trunc i64 %276 to i8
  store i8 %277, i8* %46, align 1
  %278 = lshr i64 %257, 63
  %279 = xor i64 %276, %278
  %280 = xor i64 %276, %256
  %281 = add nuw nsw i64 %279, %280
  %282 = icmp eq i64 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %47, align 1
  %284 = add i64 %258, 12
  %285 = add i64 %250, 24
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  store i32 0, i32* %286, align 4
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -8
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 4
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = mul nsw i64 %293, 744
  store i64 %294, i64* %RCX.i1309, align 8
  %295 = lshr i64 %294, 63
  %296 = load i64, i64* %RAX.i1311, align 8
  %297 = add i64 %294, %296
  store i64 %297, i64* %RSI.i1301, align 8
  %298 = icmp ult i64 %297, %296
  %299 = icmp ult i64 %297, %294
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %42, align 1
  %302 = trunc i64 %297 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %43, align 1
  %308 = xor i64 %294, %296
  %309 = xor i64 %308, %297
  %310 = lshr i64 %309, 4
  %311 = trunc i64 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %44, align 1
  %313 = icmp eq i64 %297, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %45, align 1
  %315 = lshr i64 %297, 63
  %316 = trunc i64 %315 to i8
  store i8 %316, i8* %46, align 1
  %317 = lshr i64 %296, 63
  %318 = xor i64 %315, %317
  %319 = xor i64 %315, %295
  %320 = add nuw nsw i64 %318, %319
  %321 = icmp eq i64 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %47, align 1
  %323 = add i64 %297, 96
  %324 = add i64 %289, 24
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  store i32 0, i32* %325, align 4
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -8
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 4
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = mul nsw i64 %332, 744
  store i64 %333, i64* %RCX.i1309, align 8
  %334 = load i64, i64* %RAX.i1311, align 8
  %335 = add i64 %333, %334
  store i64 %335, i64* %RAX.i1311, align 8
  %336 = add i64 %335, 740
  %337 = add i64 %328, 24
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 0, i32* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %341 = add i32 %340, 1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RDX.i1307, align 8
  %343 = icmp eq i32 %340, -1
  %344 = icmp eq i32 %341, 0
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %42, align 1
  %347 = and i32 %341, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %43, align 1
  %352 = xor i32 %341, %340
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %44, align 1
  %356 = zext i1 %344 to i8
  store i8 %356, i8* %45, align 1
  %357 = lshr i32 %341, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %46, align 1
  %359 = lshr i32 %340, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %357
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %47, align 1
  store i32 %341, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -4
  %366 = add i64 %339, 20
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, 20
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RDX.i1307, align 8
  %371 = icmp ugt i32 %368, -21
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %42, align 1
  %373 = and i32 %369, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %43, align 1
  %378 = xor i32 %368, 16
  %379 = xor i32 %378, %369
  %380 = lshr i32 %379, 4
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %44, align 1
  %383 = icmp eq i32 %369, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %45, align 1
  %385 = lshr i32 %369, 31
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %46, align 1
  %387 = lshr i32 %368, 31
  %388 = xor i32 %385, %387
  %389 = add nuw nsw i32 %388, %385
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %47, align 1
  %392 = sext i32 %369 to i64
  store i64 %392, i64* %RAX.i1311, align 8
  %393 = add nsw i64 %392, 12099168
  %394 = add i64 %339, 34
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i8*
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i64
  store i64 %397, i64* %RDX.i1307, align 8
  %398 = zext i8 %396 to i32
  store i8 0, i8* %42, align 1
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %403 = icmp eq i8 %396, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %.v = select i1 %403, i64 43, i64 175
  %405 = add i64 %339, %.v
  store i64 %405, i64* %3, align 8
  br i1 %403, label %block_40a99b, label %block_.L_40aa1f

block_40a99b:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %406 = add i64 %364, -8
  %407 = add i64 %405, 19
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = mul nsw i64 %410, 744
  store i64 %411, i64* %RCX.i1309, align 8
  %412 = lshr i64 %411, 63
  %413 = add i64 %411, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %413, i64* %RAX.i1311, align 8
  %414 = icmp ult i64 %413, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %415 = icmp ult i64 %413, %411
  %416 = or i1 %414, %415
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %42, align 1
  %418 = trunc i64 %413 to i32
  %419 = and i32 %418, 248
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419)
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %43, align 1
  %424 = xor i64 %411, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %425 = xor i64 %424, %413
  %426 = lshr i64 %425, 4
  %427 = trunc i64 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %44, align 1
  %429 = icmp eq i64 %413, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %45, align 1
  %431 = lshr i64 %413, 63
  %432 = trunc i64 %431 to i8
  store i8 %432, i8* %46, align 1
  %433 = xor i64 %431, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %434 = xor i64 %431, %412
  %435 = add nuw nsw i64 %433, %434
  %436 = icmp eq i64 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %47, align 1
  %438 = add i64 %411, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %439 = add i64 %405, 33
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, -20
  %443 = icmp ult i32 %441, 20
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %42, align 1
  %445 = and i32 %442, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %43, align 1
  %450 = xor i32 %441, 16
  %451 = xor i32 %450, %442
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %44, align 1
  %455 = icmp eq i32 %442, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %45, align 1
  %457 = lshr i32 %442, 31
  %458 = trunc i32 %457 to i8
  store i8 %458, i8* %46, align 1
  %459 = lshr i32 %441, 31
  %460 = xor i32 %457, %459
  %461 = add nuw nsw i32 %460, %459
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %47, align 1
  %464 = icmp ne i8 %458, 0
  %465 = xor i1 %464, %462
  %.v41 = select i1 %465, i64 39, i64 94
  %466 = add i64 %405, %.v41
  store i64 %466, i64* %3, align 8
  br i1 %465, label %block_40a9c2, label %block_.L_40a9f9

block_40a9c2:                                     ; preds = %block_40a99b
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -4
  %469 = add i64 %466, 13
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, 20
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RCX.i1309, align 8
  %474 = icmp ugt i32 %471, -21
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %42, align 1
  %476 = and i32 %472, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %43, align 1
  %481 = xor i32 %471, 16
  %482 = xor i32 %481, %472
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %44, align 1
  %486 = icmp eq i32 %472, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %45, align 1
  %488 = lshr i32 %472, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %46, align 1
  %490 = lshr i32 %471, 31
  %491 = xor i32 %488, %490
  %492 = add nuw nsw i32 %491, %488
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %47, align 1
  %495 = add i64 %467, -8
  %496 = add i64 %466, 20
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  %500 = mul nsw i64 %499, 744
  store i64 %500, i64* %RDX.i1307, align 8
  %501 = lshr i64 %500, 63
  %502 = add i64 %500, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %502, i64* %RSI.i1301, align 8
  %503 = icmp ult i64 %502, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %504 = icmp ult i64 %502, %500
  %505 = or i1 %503, %504
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %42, align 1
  %507 = trunc i64 %502 to i32
  %508 = and i32 %507, 248
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %43, align 1
  %513 = xor i64 %500, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %514 = xor i64 %513, %502
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %44, align 1
  %518 = icmp eq i64 %502, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %45, align 1
  %520 = lshr i64 %502, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %46, align 1
  %522 = xor i64 %520, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %523 = xor i64 %520, %501
  %524 = add nuw nsw i64 %522, %523
  %525 = icmp eq i64 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %47, align 1
  %527 = load i64, i64* %RBP.i, align 8
  %528 = add i64 %527, -8
  %529 = add i64 %466, 37
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = mul nsw i64 %532, 744
  store i64 %533, i64* %RDX.i1307, align 8
  %534 = lshr i64 %533, 63
  %535 = load i64, i64* %RAX.i1311, align 8
  %536 = add i64 %533, %535
  store i64 %536, i64* %RAX.i1311, align 8
  %537 = icmp ult i64 %536, %535
  %538 = icmp ult i64 %536, %533
  %539 = or i1 %537, %538
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %42, align 1
  %541 = trunc i64 %536 to i32
  %542 = and i32 %541, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %43, align 1
  %547 = xor i64 %533, %535
  %548 = xor i64 %547, %536
  %549 = lshr i64 %548, 4
  %550 = trunc i64 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %44, align 1
  %552 = icmp eq i64 %536, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %45, align 1
  %554 = lshr i64 %536, 63
  %555 = trunc i64 %554 to i8
  store i8 %555, i8* %46, align 1
  %556 = lshr i64 %535, 63
  %557 = xor i64 %554, %556
  %558 = xor i64 %554, %534
  %559 = add nuw nsw i64 %557, %558
  %560 = icmp eq i64 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %47, align 1
  %562 = add i64 %536, 12
  %563 = add i64 %466, 51
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RAX.i1311, align 8
  %ECX.i1092 = bitcast %union.anon* %11 to i32*
  %567 = load i64, i64* %RSI.i1301, align 8
  %568 = shl nsw i64 %566, 2
  %569 = add i64 %567, 16
  %570 = add i64 %569, %568
  %571 = load i32, i32* %ECX.i1092, align 4
  %572 = add i64 %466, 55
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %570 to i32*
  store i32 %571, i32* %573, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40a9f9

block_.L_40a9f9:                                  ; preds = %block_40a99b, %block_40a9c2
  %574 = phi i64 [ %466, %block_40a99b ], [ %.pre, %block_40a9c2 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -8
  %577 = add i64 %574, 14
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = mul nsw i64 %580, 744
  store i64 %581, i64* %RCX.i1309, align 8
  %582 = lshr i64 %581, 63
  %583 = add i64 %581, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %583, i64* %RAX.i1311, align 8
  %584 = icmp ult i64 %583, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %585 = icmp ult i64 %583, %581
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %42, align 1
  %588 = trunc i64 %583 to i32
  %589 = and i32 %588, 248
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %43, align 1
  %594 = xor i64 %581, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %595 = xor i64 %594, %583
  %596 = lshr i64 %595, 4
  %597 = trunc i64 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %44, align 1
  %599 = icmp eq i64 %583, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %45, align 1
  %601 = lshr i64 %583, 63
  %602 = trunc i64 %601 to i8
  store i8 %602, i8* %46, align 1
  %603 = xor i64 %601, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %604 = xor i64 %601, %582
  %605 = add nuw nsw i64 %603, %604
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %47, align 1
  %608 = add i64 %581, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %609 = add i64 %574, 27
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = add i32 %611, 1
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RDX.i1307, align 8
  %614 = icmp eq i32 %611, -1
  %615 = icmp eq i32 %612, 0
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %42, align 1
  %618 = and i32 %612, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %43, align 1
  %623 = xor i32 %612, %611
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %44, align 1
  %627 = zext i1 %615 to i8
  store i8 %627, i8* %45, align 1
  %628 = lshr i32 %612, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %46, align 1
  %630 = lshr i32 %611, 31
  %631 = xor i32 %628, %630
  %632 = add nuw nsw i32 %631, %628
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %47, align 1
  %635 = add i64 %574, 33
  store i64 %635, i64* %3, align 8
  store i32 %612, i32* %610, align 4
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 380
  br label %block_.L_40ab96

block_.L_40aa1f:                                  ; preds = %entry
  %638 = add i64 %405, 3
  store i64 %638, i64* %3, align 8
  %639 = load i32, i32* %367, align 4
  %640 = add i32 %639, 20
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i1311, align 8
  %642 = icmp ugt i32 %639, -21
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %42, align 1
  %644 = and i32 %640, 255
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %43, align 1
  %649 = xor i32 %639, 16
  %650 = xor i32 %649, %640
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %44, align 1
  %654 = icmp eq i32 %640, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %45, align 1
  %656 = lshr i32 %640, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %46, align 1
  %658 = lshr i32 %639, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %656
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %47, align 1
  %663 = sext i32 %640 to i64
  store i64 %663, i64* %RCX.i1309, align 8
  %664 = add nsw i64 %663, 12099168
  %665 = add i64 %405, 17
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i8*
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i64
  store i64 %668, i64* %RAX.i1311, align 8
  %669 = zext i8 %667 to i32
  %670 = add i64 %364, -16
  %671 = add i64 %405, 20
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = sub i32 %669, %673
  %675 = icmp ult i32 %669, %673
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %42, align 1
  %677 = and i32 %674, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %43, align 1
  %682 = xor i32 %673, %669
  %683 = xor i32 %682, %674
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %44, align 1
  %687 = icmp eq i32 %674, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %45, align 1
  %689 = lshr i32 %674, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %46, align 1
  %691 = lshr i32 %673, 31
  %692 = add nuw nsw i32 %689, %691
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %47, align 1
  %.v27 = select i1 %687, i64 26, i64 370
  %695 = add i64 %405, %.v27
  store i64 %695, i64* %3, align 8
  br i1 %687, label %block_40aa39, label %block_.L_40ab91

block_40aa39:                                     ; preds = %block_.L_40aa1f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %696 = add i64 %695, 13
  store i64 %696, i64* %3, align 8
  %697 = load i32, i32* %367, align 4
  %698 = add i32 %697, 20
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RCX.i1309, align 8
  %700 = icmp ugt i32 %697, -21
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %42, align 1
  %702 = and i32 %698, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %43, align 1
  %707 = xor i32 %697, 16
  %708 = xor i32 %707, %698
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %44, align 1
  %712 = icmp eq i32 %698, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %45, align 1
  %714 = lshr i32 %698, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %46, align 1
  %716 = lshr i32 %697, 31
  %717 = xor i32 %714, %716
  %718 = add nuw nsw i32 %717, %714
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %47, align 1
  %ECX.i1048 = bitcast %union.anon* %11 to i32*
  %721 = sext i32 %698 to i64
  store i64 %721, i64* %RDX.i1307, align 8
  %722 = shl nsw i64 %721, 2
  %723 = add nsw i64 %722, 11187184
  %724 = add i64 %695, 27
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = sext i32 %726 to i64
  %728 = mul nsw i64 %727, 744
  store i64 %728, i64* %RDX.i1307, align 8
  %729 = lshr i64 %728, 63
  %730 = add i64 %728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %730, i64* %RAX.i1311, align 8
  %731 = icmp ult i64 %730, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %732 = icmp ult i64 %730, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %42, align 1
  %735 = trunc i64 %730 to i32
  %736 = and i32 %735, 248
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %43, align 1
  %741 = xor i64 %728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %742 = xor i64 %741, %730
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %44, align 1
  %746 = icmp eq i64 %730, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %45, align 1
  %748 = lshr i64 %730, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %46, align 1
  %750 = xor i64 %748, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %751 = xor i64 %748, %729
  %752 = add nuw nsw i64 %750, %751
  %753 = icmp eq i64 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %47, align 1
  %755 = add i64 %728, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %756 = add i64 %695, 43
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RCX.i1309, align 8
  %760 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %761 = sub i32 %758, %760
  %762 = icmp ult i32 %758, %760
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %42, align 1
  %764 = and i32 %761, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %43, align 1
  %769 = xor i32 %760, %758
  %770 = xor i32 %769, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %44, align 1
  %774 = icmp eq i32 %761, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %45, align 1
  %776 = lshr i32 %761, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %46, align 1
  %778 = lshr i32 %758, 31
  %779 = lshr i32 %760, 31
  %780 = xor i32 %779, %778
  %781 = xor i32 %776, %778
  %782 = add nuw nsw i32 %781, %780
  %783 = icmp eq i32 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %47, align 1
  %.v40 = select i1 %774, i64 344, i64 56
  %785 = add i64 %695, %.v40
  store i64 %785, i64* %3, align 8
  br i1 %774, label %block_.L_40ab91, label %block_40aa71

block_40aa71:                                     ; preds = %block_40aa39
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -4
  %788 = add i64 %785, 13
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, 20
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RCX.i1309, align 8
  %793 = icmp ugt i32 %790, -21
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %42, align 1
  %795 = and i32 %791, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %43, align 1
  %800 = xor i32 %790, 16
  %801 = xor i32 %800, %791
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %44, align 1
  %805 = icmp eq i32 %791, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %45, align 1
  %807 = lshr i32 %791, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %46, align 1
  %809 = lshr i32 %790, 31
  %810 = xor i32 %807, %809
  %811 = add nuw nsw i32 %810, %807
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %47, align 1
  %814 = sext i32 %791 to i64
  store i64 %814, i64* %RDX.i1307, align 8
  %815 = shl nsw i64 %814, 2
  %816 = add nsw i64 %815, 11187184
  %817 = add i64 %785, 26
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX.i1309, align 8
  %821 = add i64 %786, -20
  %822 = add i64 %785, 29
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  store i32 %819, i32* %823, align 4
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -4
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 3
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %825 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, 20
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RCX.i1309, align 8
  %832 = icmp ugt i32 %829, -21
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %42, align 1
  %834 = and i32 %830, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %43, align 1
  %839 = xor i32 %829, 16
  %840 = xor i32 %839, %830
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %44, align 1
  %844 = icmp eq i32 %830, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %45, align 1
  %846 = lshr i32 %830, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %46, align 1
  %848 = lshr i32 %829, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %846
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %47, align 1
  %853 = sext i32 %830 to i64
  store i64 %853, i64* %RDX.i1307, align 8
  %854 = shl nsw i64 %853, 2
  %855 = add nsw i64 %854, 11187184
  %856 = add i64 %826, 16
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RCX.i1309, align 8
  %860 = add i64 %824, -8
  %861 = add i64 %826, 20
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = sext i32 %863 to i64
  %865 = mul nsw i64 %864, 744
  store i64 %865, i64* %RDX.i1307, align 8
  %866 = lshr i64 %865, 63
  %867 = load i64, i64* %RAX.i1311, align 8
  %868 = add i64 %865, %867
  store i64 %868, i64* %RSI.i1301, align 8
  %869 = icmp ult i64 %868, %867
  %870 = icmp ult i64 %868, %865
  %871 = or i1 %869, %870
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %42, align 1
  %873 = trunc i64 %868 to i32
  %874 = and i32 %873, 255
  %875 = tail call i32 @llvm.ctpop.i32(i32 %874)
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = xor i8 %877, 1
  store i8 %878, i8* %43, align 1
  %879 = xor i64 %865, %867
  %880 = xor i64 %879, %868
  %881 = lshr i64 %880, 4
  %882 = trunc i64 %881 to i8
  %883 = and i8 %882, 1
  store i8 %883, i8* %44, align 1
  %884 = icmp eq i64 %868, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %45, align 1
  %886 = lshr i64 %868, 63
  %887 = trunc i64 %886 to i8
  store i8 %887, i8* %46, align 1
  %888 = lshr i64 %867, 63
  %889 = xor i64 %886, %888
  %890 = xor i64 %886, %866
  %891 = add nuw nsw i64 %889, %890
  %892 = icmp eq i64 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %47, align 1
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -8
  %896 = add i64 %826, 37
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = sext i32 %898 to i64
  %900 = mul nsw i64 %899, 744
  store i64 %900, i64* %RDX.i1307, align 8
  %901 = lshr i64 %900, 63
  %902 = add i64 %900, %867
  store i64 %902, i64* %RDI.i1299, align 8
  %903 = icmp ult i64 %902, %867
  %904 = icmp ult i64 %902, %900
  %905 = or i1 %903, %904
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %42, align 1
  %907 = trunc i64 %902 to i32
  %908 = and i32 %907, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %43, align 1
  %913 = xor i64 %900, %867
  %914 = xor i64 %913, %902
  %915 = lshr i64 %914, 4
  %916 = trunc i64 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %44, align 1
  %918 = icmp eq i64 %902, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %45, align 1
  %920 = lshr i64 %902, 63
  %921 = trunc i64 %920 to i8
  store i8 %921, i8* %46, align 1
  %922 = xor i64 %920, %888
  %923 = xor i64 %920, %901
  %924 = add nuw nsw i64 %922, %923
  %925 = icmp eq i64 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %47, align 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i983 = bitcast %union.anon* %927 to i32*
  %928 = getelementptr inbounds %union.anon, %union.anon* %927, i64 0, i32 0
  %929 = add i64 %902, 96
  %930 = add i64 %826, 54
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %928, align 8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %935 = add i32 %932, 1
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %934, align 8
  %937 = icmp eq i32 %932, -1
  %938 = icmp eq i32 %935, 0
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %42, align 1
  %941 = and i32 %935, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %43, align 1
  %946 = xor i32 %935, %932
  %947 = lshr i32 %946, 4
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  store i8 %949, i8* %44, align 1
  %950 = zext i1 %938 to i8
  store i8 %950, i8* %45, align 1
  %951 = lshr i32 %935, 31
  %952 = trunc i32 %951 to i8
  store i8 %952, i8* %46, align 1
  %953 = lshr i32 %932, 31
  %954 = xor i32 %951, %953
  %955 = add nuw nsw i32 %954, %951
  %956 = icmp eq i32 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %47, align 1
  %958 = add i64 %826, 65
  store i64 %958, i64* %3, align 8
  store i32 %935, i32* %931, align 4
  %959 = load i32, i32* %R8D.i983, align 4
  %960 = load i64, i64* %3, align 8
  %961 = sext i32 %959 to i64
  store i64 %961, i64* %RDX.i1307, align 8
  %962 = load i64, i64* %RSI.i1301, align 8
  %963 = shl nsw i64 %961, 2
  %964 = add nsw i64 %963, 100
  %965 = add i64 %964, %962
  %966 = load i32, i32* %ECX.i1048, align 4
  %967 = add i64 %960, 7
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i32*
  store i32 %966, i32* %968, align 4
  %969 = load i64, i64* %RBP.i, align 8
  %970 = add i64 %969, -20
  %971 = load i64, i64* %3, align 8
  %972 = add i64 %971, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sext i32 %974 to i64
  %976 = mul nsw i64 %975, 744
  %977 = load i64, i64* %RAX.i1311, align 8
  %978 = add i64 %976, %977
  %979 = lshr i64 %978, 63
  %980 = add i64 %978, 96
  store i64 %980, i64* %RSI.i1301, align 8
  %981 = icmp ugt i64 %978, -97
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %42, align 1
  %983 = trunc i64 %980 to i32
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %43, align 1
  %989 = xor i64 %980, %978
  %990 = lshr i64 %989, 4
  %991 = trunc i64 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %44, align 1
  %993 = icmp eq i64 %980, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %45, align 1
  %995 = lshr i64 %980, 63
  %996 = trunc i64 %995 to i8
  store i8 %996, i8* %46, align 1
  %997 = xor i64 %995, %979
  %998 = add nuw nsw i64 %997, %995
  %999 = icmp eq i64 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %47, align 1
  %1001 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1001, i64* %RDX.i1307, align 8
  %1002 = add i64 %971, 32
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i64*
  store i64 %980, i64* %1003, align 8
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -20
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = mul nsw i64 %1010, 744
  store i64 %1011, i64* %RDX.i1307, align 8
  %1012 = lshr i64 %1011, 63
  %1013 = load i64, i64* %RAX.i1311, align 8
  %1014 = add i64 %1011, %1013
  store i64 %1014, i64* %RSI.i1301, align 8
  %1015 = icmp ult i64 %1014, %1013
  %1016 = icmp ult i64 %1014, %1011
  %1017 = or i1 %1015, %1016
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %42, align 1
  %1019 = trunc i64 %1014 to i32
  %1020 = and i32 %1019, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %43, align 1
  %1025 = xor i64 %1011, %1013
  %1026 = xor i64 %1025, %1014
  %1027 = lshr i64 %1026, 4
  %1028 = trunc i64 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %44, align 1
  %1030 = icmp eq i64 %1014, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %45, align 1
  %1032 = lshr i64 %1014, 63
  %1033 = trunc i64 %1032 to i8
  store i8 %1033, i8* %46, align 1
  %1034 = lshr i64 %1013, 63
  %1035 = xor i64 %1032, %1034
  %1036 = xor i64 %1032, %1012
  %1037 = add nuw nsw i64 %1035, %1036
  %1038 = icmp eq i64 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %47, align 1
  %1040 = add i64 %1014, 96
  %1041 = add i64 %1006, 20
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RCX.i1309, align 8
  %1045 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1045, i64* %RDX.i1307, align 8
  %1046 = add i64 %1045, 16
  store i64 %1046, i64* %RSI.i1301, align 8
  %1047 = icmp ugt i64 %1045, -17
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %42, align 1
  %1049 = trunc i64 %1046 to i32
  %1050 = and i32 %1049, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %43, align 1
  %1055 = xor i64 %1045, 16
  %1056 = xor i64 %1055, %1046
  %1057 = lshr i64 %1056, 4
  %1058 = trunc i64 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %44, align 1
  %1060 = icmp eq i64 %1046, 0
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %45, align 1
  %1062 = lshr i64 %1046, 63
  %1063 = trunc i64 %1062 to i8
  store i8 %1063, i8* %46, align 1
  %1064 = lshr i64 %1045, 63
  %1065 = xor i64 %1062, %1064
  %1066 = add nuw nsw i64 %1065, %1062
  %1067 = icmp eq i64 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %47, align 1
  store i64 %1046, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %1069 = add i64 %1045, 8
  %1070 = add i64 %1006, 46
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 %1043, i32* %1071, align 4
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -4
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = sext i32 %1077 to i64
  store i64 %1078, i64* %RDX.i1307, align 8
  %1079 = shl nsw i64 %1078, 2
  %1080 = add nsw i64 %1079, 11187184
  %1081 = add i64 %1074, 11
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RCX.i1309, align 8
  %1085 = add i64 %1072, -20
  %1086 = add i64 %1074, 15
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = mul nsw i64 %1089, 744
  store i64 %1090, i64* %RDX.i1307, align 8
  %1091 = lshr i64 %1090, 63
  %1092 = load i64, i64* %RAX.i1311, align 8
  %1093 = add i64 %1090, %1092
  store i64 %1093, i64* %RSI.i1301, align 8
  %1094 = icmp ult i64 %1093, %1092
  %1095 = icmp ult i64 %1093, %1090
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %42, align 1
  %1098 = trunc i64 %1093 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %43, align 1
  %1104 = xor i64 %1090, %1092
  %1105 = xor i64 %1104, %1093
  %1106 = lshr i64 %1105, 4
  %1107 = trunc i64 %1106 to i8
  %1108 = and i8 %1107, 1
  store i8 %1108, i8* %44, align 1
  %1109 = icmp eq i64 %1093, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %45, align 1
  %1111 = lshr i64 %1093, 63
  %1112 = trunc i64 %1111 to i8
  store i8 %1112, i8* %46, align 1
  %1113 = lshr i64 %1092, 63
  %1114 = xor i64 %1111, %1113
  %1115 = xor i64 %1111, %1091
  %1116 = add nuw nsw i64 %1114, %1115
  %1117 = icmp eq i64 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %47, align 1
  %1119 = add i64 %1074, 32
  store i64 %1119, i64* %3, align 8
  %1120 = load i32, i32* %1087, align 4
  %1121 = sext i32 %1120 to i64
  %1122 = mul nsw i64 %1121, 744
  store i64 %1122, i64* %RDX.i1307, align 8
  %1123 = lshr i64 %1122, 63
  %1124 = add i64 %1122, %1092
  store i64 %1124, i64* %RDI.i1299, align 8
  %1125 = icmp ult i64 %1124, %1092
  %1126 = icmp ult i64 %1124, %1122
  %1127 = or i1 %1125, %1126
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %42, align 1
  %1129 = trunc i64 %1124 to i32
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %43, align 1
  %1135 = xor i64 %1122, %1092
  %1136 = xor i64 %1135, %1124
  %1137 = lshr i64 %1136, 4
  %1138 = trunc i64 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %44, align 1
  %1140 = icmp eq i64 %1124, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %45, align 1
  %1142 = lshr i64 %1124, 63
  %1143 = trunc i64 %1142 to i8
  store i8 %1143, i8* %46, align 1
  %1144 = xor i64 %1142, %1113
  %1145 = xor i64 %1142, %1123
  %1146 = add nuw nsw i64 %1144, %1145
  %1147 = icmp eq i64 %1146, 2
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %47, align 1
  %1149 = add i64 %1124, 96
  %1150 = add i64 %1074, 49
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %928, align 8
  %1154 = add i32 %1152, 1
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %934, align 8
  %1156 = icmp eq i32 %1152, -1
  %1157 = icmp eq i32 %1154, 0
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %42, align 1
  %1160 = and i32 %1154, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %43, align 1
  %1165 = xor i32 %1154, %1152
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %44, align 1
  %1169 = zext i1 %1157 to i8
  store i8 %1169, i8* %45, align 1
  %1170 = lshr i32 %1154, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %46, align 1
  %1172 = lshr i32 %1152, 31
  %1173 = xor i32 %1170, %1172
  %1174 = add nuw nsw i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %47, align 1
  %1177 = add i64 %1074, 60
  store i64 %1177, i64* %3, align 8
  store i32 %1154, i32* %1151, align 4
  %1178 = load i32, i32* %R8D.i983, align 4
  %1179 = load i64, i64* %3, align 8
  %1180 = sext i32 %1178 to i64
  store i64 %1180, i64* %RDX.i1307, align 8
  %1181 = load i64, i64* %RSI.i1301, align 8
  %1182 = shl nsw i64 %1180, 2
  %1183 = add nsw i64 %1182, 100
  %1184 = add i64 %1183, %1181
  %1185 = load i32, i32* %ECX.i1048, align 4
  %1186 = add i64 %1179, 7
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1184 to i32*
  store i32 %1185, i32* %1187, align 4
  %1188 = load i64, i64* %3, align 8
  %1189 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RCX.i1309, align 8
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -4
  %1193 = add i64 %1188, 11
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = add i32 %1195, 20
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %928, align 8
  %1198 = icmp ugt i32 %1195, -21
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %42, align 1
  %1200 = and i32 %1196, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %43, align 1
  %1205 = xor i32 %1195, 16
  %1206 = xor i32 %1205, %1196
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %44, align 1
  %1210 = icmp eq i32 %1196, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %45, align 1
  %1212 = lshr i32 %1196, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %46, align 1
  %1214 = lshr i32 %1195, 31
  %1215 = xor i32 %1212, %1214
  %1216 = add nuw nsw i32 %1215, %1212
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %47, align 1
  %1219 = sext i32 %1196 to i64
  store i64 %1219, i64* %RDX.i1307, align 8
  %1220 = shl nsw i64 %1219, 2
  %1221 = add nsw i64 %1220, 11187184
  %1222 = add i64 %1188, 26
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = mul nsw i64 %1225, 744
  store i64 %1226, i64* %RDX.i1307, align 8
  %1227 = lshr i64 %1226, 63
  %1228 = load i64, i64* %RAX.i1311, align 8
  %1229 = add i64 %1226, %1228
  store i64 %1229, i64* %RAX.i1311, align 8
  %1230 = icmp ult i64 %1229, %1228
  %1231 = icmp ult i64 %1229, %1226
  %1232 = or i1 %1230, %1231
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %42, align 1
  %1234 = trunc i64 %1229 to i32
  %1235 = and i32 %1234, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %43, align 1
  %1240 = xor i64 %1226, %1228
  %1241 = xor i64 %1240, %1229
  %1242 = lshr i64 %1241, 4
  %1243 = trunc i64 %1242 to i8
  %1244 = and i8 %1243, 1
  store i8 %1244, i8* %44, align 1
  %1245 = icmp eq i64 %1229, 0
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %45, align 1
  %1247 = lshr i64 %1229, 63
  %1248 = trunc i64 %1247 to i8
  store i8 %1248, i8* %46, align 1
  %1249 = lshr i64 %1228, 63
  %1250 = xor i64 %1247, %1249
  %1251 = xor i64 %1247, %1227
  %1252 = add nuw nsw i64 %1250, %1251
  %1253 = icmp eq i64 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %47, align 1
  %1255 = add i64 %1229, 740
  %1256 = load i32, i32* %ECX.i1048, align 4
  %1257 = add i64 %1188, 42
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1255 to i32*
  store i32 %1256, i32* %1258, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_40ab91

block_.L_40ab91:                                  ; preds = %block_.L_40aa1f, %block_40aa71, %block_40aa39
  %1259 = phi i64 [ %.pre19, %block_40aa71 ], [ %785, %block_40aa39 ], [ %695, %block_.L_40aa1f ]
  %1260 = add i64 %1259, 5
  store i64 %1260, i64* %3, align 8
  br label %block_.L_40ab96

block_.L_40ab96:                                  ; preds = %block_.L_40ab91, %block_.L_40a9f9
  %storemerge = phi i64 [ %637, %block_.L_40a9f9 ], [ %1260, %block_.L_40ab91 ]
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -4
  %1263 = add i64 %storemerge, 3
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = add i32 %1265, -1
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX.i1311, align 8
  %1268 = icmp eq i32 %1265, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %42, align 1
  %1270 = and i32 %1266, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %43, align 1
  %1275 = xor i32 %1266, %1265
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %44, align 1
  %1279 = icmp eq i32 %1266, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %45, align 1
  %1281 = lshr i32 %1266, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %46, align 1
  %1283 = lshr i32 %1265, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1283
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %47, align 1
  %1288 = sext i32 %1266 to i64
  store i64 %1288, i64* %RCX.i1309, align 8
  %1289 = add nsw i64 %1288, 12099168
  %1290 = add i64 %storemerge, 17
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i8*
  %1292 = load i8, i8* %1291, align 1
  %1293 = zext i8 %1292 to i64
  store i64 %1293, i64* %RAX.i1311, align 8
  %1294 = zext i8 %1292 to i32
  store i8 0, i8* %42, align 1
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %1299 = icmp eq i8 %1292, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %.v28 = select i1 %1299, i64 26, i64 158
  %1301 = add i64 %storemerge, %.v28
  store i64 %1301, i64* %3, align 8
  br i1 %1299, label %block_40abb0, label %block_.L_40ac34

block_40abb0:                                     ; preds = %block_.L_40ab96
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %1302 = add i64 %1261, -8
  %1303 = add i64 %1301, 19
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = sext i32 %1305 to i64
  %1307 = mul nsw i64 %1306, 744
  store i64 %1307, i64* %RCX.i1309, align 8
  %1308 = lshr i64 %1307, 63
  %1309 = add i64 %1307, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1309, i64* %RAX.i1311, align 8
  %1310 = icmp ult i64 %1309, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1311 = icmp ult i64 %1309, %1307
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %42, align 1
  %1314 = trunc i64 %1309 to i32
  %1315 = and i32 %1314, 248
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  store i8 %1319, i8* %43, align 1
  %1320 = xor i64 %1307, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1321 = xor i64 %1320, %1309
  %1322 = lshr i64 %1321, 4
  %1323 = trunc i64 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %44, align 1
  %1325 = icmp eq i64 %1309, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %45, align 1
  %1327 = lshr i64 %1309, 63
  %1328 = trunc i64 %1327 to i8
  store i8 %1328, i8* %46, align 1
  %1329 = xor i64 %1327, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1330 = xor i64 %1327, %1308
  %1331 = add nuw nsw i64 %1329, %1330
  %1332 = icmp eq i64 %1331, 2
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %47, align 1
  %1334 = add i64 %1307, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1335 = add i64 %1301, 33
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, -20
  %1339 = icmp ult i32 %1337, 20
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %42, align 1
  %1341 = and i32 %1338, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %43, align 1
  %1346 = xor i32 %1337, 16
  %1347 = xor i32 %1346, %1338
  %1348 = lshr i32 %1347, 4
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  store i8 %1350, i8* %44, align 1
  %1351 = icmp eq i32 %1338, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %45, align 1
  %1353 = lshr i32 %1338, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %46, align 1
  %1355 = lshr i32 %1337, 31
  %1356 = xor i32 %1353, %1355
  %1357 = add nuw nsw i32 %1356, %1355
  %1358 = icmp eq i32 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %47, align 1
  %1360 = icmp ne i8 %1354, 0
  %1361 = xor i1 %1360, %1358
  %.v39 = select i1 %1361, i64 39, i64 94
  %1362 = add i64 %1301, %.v39
  store i64 %1362, i64* %3, align 8
  br i1 %1361, label %block_40abd7, label %block_.L_40ac0e

block_40abd7:                                     ; preds = %block_40abb0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -4
  %1365 = add i64 %1362, 13
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = add i32 %1367, -1
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RCX.i1309, align 8
  %1370 = icmp eq i32 %1367, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %42, align 1
  %1372 = and i32 %1368, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %43, align 1
  %1377 = xor i32 %1368, %1367
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %44, align 1
  %1381 = icmp eq i32 %1368, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %45, align 1
  %1383 = lshr i32 %1368, 31
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, i8* %46, align 1
  %1385 = lshr i32 %1367, 31
  %1386 = xor i32 %1383, %1385
  %1387 = add nuw nsw i32 %1386, %1385
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %47, align 1
  %1390 = add i64 %1363, -8
  %1391 = add i64 %1362, 20
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sext i32 %1393 to i64
  %1395 = mul nsw i64 %1394, 744
  store i64 %1395, i64* %RDX.i1307, align 8
  %1396 = lshr i64 %1395, 63
  %1397 = add i64 %1395, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1397, i64* %RSI.i1301, align 8
  %1398 = icmp ult i64 %1397, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1399 = icmp ult i64 %1397, %1395
  %1400 = or i1 %1398, %1399
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %42, align 1
  %1402 = trunc i64 %1397 to i32
  %1403 = and i32 %1402, 248
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %43, align 1
  %1408 = xor i64 %1395, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1409 = xor i64 %1408, %1397
  %1410 = lshr i64 %1409, 4
  %1411 = trunc i64 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %44, align 1
  %1413 = icmp eq i64 %1397, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %45, align 1
  %1415 = lshr i64 %1397, 63
  %1416 = trunc i64 %1415 to i8
  store i8 %1416, i8* %46, align 1
  %1417 = xor i64 %1415, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1418 = xor i64 %1415, %1396
  %1419 = add nuw nsw i64 %1417, %1418
  %1420 = icmp eq i64 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %47, align 1
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -8
  %1424 = add i64 %1362, 37
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = mul nsw i64 %1427, 744
  store i64 %1428, i64* %RDX.i1307, align 8
  %1429 = lshr i64 %1428, 63
  %1430 = load i64, i64* %RAX.i1311, align 8
  %1431 = add i64 %1428, %1430
  store i64 %1431, i64* %RAX.i1311, align 8
  %1432 = icmp ult i64 %1431, %1430
  %1433 = icmp ult i64 %1431, %1428
  %1434 = or i1 %1432, %1433
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %42, align 1
  %1436 = trunc i64 %1431 to i32
  %1437 = and i32 %1436, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %43, align 1
  %1442 = xor i64 %1428, %1430
  %1443 = xor i64 %1442, %1431
  %1444 = lshr i64 %1443, 4
  %1445 = trunc i64 %1444 to i8
  %1446 = and i8 %1445, 1
  store i8 %1446, i8* %44, align 1
  %1447 = icmp eq i64 %1431, 0
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %45, align 1
  %1449 = lshr i64 %1431, 63
  %1450 = trunc i64 %1449 to i8
  store i8 %1450, i8* %46, align 1
  %1451 = lshr i64 %1430, 63
  %1452 = xor i64 %1449, %1451
  %1453 = xor i64 %1449, %1429
  %1454 = add nuw nsw i64 %1452, %1453
  %1455 = icmp eq i64 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %47, align 1
  %1457 = add i64 %1431, 12
  %1458 = add i64 %1362, 51
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = sext i32 %1460 to i64
  store i64 %1461, i64* %RAX.i1311, align 8
  %ECX.i797 = bitcast %union.anon* %11 to i32*
  %1462 = load i64, i64* %RSI.i1301, align 8
  %1463 = shl nsw i64 %1461, 2
  %1464 = add i64 %1462, 16
  %1465 = add i64 %1464, %1463
  %1466 = load i32, i32* %ECX.i797, align 4
  %1467 = add i64 %1362, 55
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1465 to i32*
  store i32 %1466, i32* %1468, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_40ac0e

block_.L_40ac0e:                                  ; preds = %block_40abb0, %block_40abd7
  %1469 = phi i64 [ %1362, %block_40abb0 ], [ %.pre20, %block_40abd7 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -8
  %1472 = add i64 %1469, 14
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sext i32 %1474 to i64
  %1476 = mul nsw i64 %1475, 744
  store i64 %1476, i64* %RCX.i1309, align 8
  %1477 = lshr i64 %1476, 63
  %1478 = add i64 %1476, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1478, i64* %RAX.i1311, align 8
  %1479 = icmp ult i64 %1478, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1480 = icmp ult i64 %1478, %1476
  %1481 = or i1 %1479, %1480
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %42, align 1
  %1483 = trunc i64 %1478 to i32
  %1484 = and i32 %1483, 248
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %43, align 1
  %1489 = xor i64 %1476, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1490 = xor i64 %1489, %1478
  %1491 = lshr i64 %1490, 4
  %1492 = trunc i64 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %44, align 1
  %1494 = icmp eq i64 %1478, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %45, align 1
  %1496 = lshr i64 %1478, 63
  %1497 = trunc i64 %1496 to i8
  store i8 %1497, i8* %46, align 1
  %1498 = xor i64 %1496, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1499 = xor i64 %1496, %1477
  %1500 = add nuw nsw i64 %1498, %1499
  %1501 = icmp eq i64 %1500, 2
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %47, align 1
  %1503 = add i64 %1476, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1504 = add i64 %1469, 27
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = add i32 %1506, 1
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RDX.i1307, align 8
  %1509 = icmp eq i32 %1506, -1
  %1510 = icmp eq i32 %1507, 0
  %1511 = or i1 %1509, %1510
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %42, align 1
  %1513 = and i32 %1507, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %43, align 1
  %1518 = xor i32 %1507, %1506
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %44, align 1
  %1522 = zext i1 %1510 to i8
  store i8 %1522, i8* %45, align 1
  %1523 = lshr i32 %1507, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %46, align 1
  %1525 = lshr i32 %1506, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1523
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %47, align 1
  %1530 = add i64 %1469, 33
  store i64 %1530, i64* %3, align 8
  store i32 %1507, i32* %1505, align 4
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1531, 380
  br label %block_.L_40adab

block_.L_40ac34:                                  ; preds = %block_.L_40ab96
  %1533 = add i64 %1301, 3
  store i64 %1533, i64* %3, align 8
  %1534 = load i32, i32* %1264, align 4
  %1535 = add i32 %1534, -1
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RAX.i1311, align 8
  %1537 = icmp eq i32 %1534, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %42, align 1
  %1539 = and i32 %1535, 255
  %1540 = tail call i32 @llvm.ctpop.i32(i32 %1539)
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = xor i8 %1542, 1
  store i8 %1543, i8* %43, align 1
  %1544 = xor i32 %1535, %1534
  %1545 = lshr i32 %1544, 4
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  store i8 %1547, i8* %44, align 1
  %1548 = icmp eq i32 %1535, 0
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %45, align 1
  %1550 = lshr i32 %1535, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %46, align 1
  %1552 = lshr i32 %1534, 31
  %1553 = xor i32 %1550, %1552
  %1554 = add nuw nsw i32 %1553, %1552
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %47, align 1
  %1557 = sext i32 %1535 to i64
  store i64 %1557, i64* %RCX.i1309, align 8
  %1558 = add nsw i64 %1557, 12099168
  %1559 = add i64 %1301, 17
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i8*
  %1561 = load i8, i8* %1560, align 1
  %1562 = zext i8 %1561 to i64
  store i64 %1562, i64* %RAX.i1311, align 8
  %1563 = zext i8 %1561 to i32
  %1564 = add i64 %1261, -16
  %1565 = add i64 %1301, 20
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = sub i32 %1563, %1567
  %1569 = icmp ult i32 %1563, %1567
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %42, align 1
  %1571 = and i32 %1568, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %43, align 1
  %1576 = xor i32 %1567, %1563
  %1577 = xor i32 %1576, %1568
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %44, align 1
  %1581 = icmp eq i32 %1568, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %45, align 1
  %1583 = lshr i32 %1568, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %46, align 1
  %1585 = lshr i32 %1567, 31
  %1586 = add nuw nsw i32 %1583, %1585
  %1587 = icmp eq i32 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %47, align 1
  %.v29 = select i1 %1581, i64 26, i64 370
  %1589 = add i64 %1301, %.v29
  store i64 %1589, i64* %3, align 8
  br i1 %1581, label %block_40ac4e, label %block_.L_40ada6

block_40ac4e:                                     ; preds = %block_.L_40ac34
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %1590 = add i64 %1589, 13
  store i64 %1590, i64* %3, align 8
  %1591 = load i32, i32* %1264, align 4
  %1592 = add i32 %1591, -1
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RCX.i1309, align 8
  %1594 = icmp eq i32 %1591, 0
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %42, align 1
  %1596 = and i32 %1592, 255
  %1597 = tail call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  store i8 %1600, i8* %43, align 1
  %1601 = xor i32 %1592, %1591
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %44, align 1
  %1605 = icmp eq i32 %1592, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %45, align 1
  %1607 = lshr i32 %1592, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %46, align 1
  %1609 = lshr i32 %1591, 31
  %1610 = xor i32 %1607, %1609
  %1611 = add nuw nsw i32 %1610, %1609
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %47, align 1
  %ECX.i753 = bitcast %union.anon* %11 to i32*
  %1614 = sext i32 %1592 to i64
  store i64 %1614, i64* %RDX.i1307, align 8
  %1615 = shl nsw i64 %1614, 2
  %1616 = add nsw i64 %1615, 11187184
  %1617 = add i64 %1589, 27
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = sext i32 %1619 to i64
  %1621 = mul nsw i64 %1620, 744
  store i64 %1621, i64* %RDX.i1307, align 8
  %1622 = lshr i64 %1621, 63
  %1623 = add i64 %1621, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1623, i64* %RAX.i1311, align 8
  %1624 = icmp ult i64 %1623, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1625 = icmp ult i64 %1623, %1621
  %1626 = or i1 %1624, %1625
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %42, align 1
  %1628 = trunc i64 %1623 to i32
  %1629 = and i32 %1628, 248
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %43, align 1
  %1634 = xor i64 %1621, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1635 = xor i64 %1634, %1623
  %1636 = lshr i64 %1635, 4
  %1637 = trunc i64 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %44, align 1
  %1639 = icmp eq i64 %1623, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %45, align 1
  %1641 = lshr i64 %1623, 63
  %1642 = trunc i64 %1641 to i8
  store i8 %1642, i8* %46, align 1
  %1643 = xor i64 %1641, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1644 = xor i64 %1641, %1622
  %1645 = add nuw nsw i64 %1643, %1644
  %1646 = icmp eq i64 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %47, align 1
  %1648 = add i64 %1621, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1649 = add i64 %1589, 43
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RCX.i1309, align 8
  %1653 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1654 = sub i32 %1651, %1653
  %1655 = icmp ult i32 %1651, %1653
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %42, align 1
  %1657 = and i32 %1654, 255
  %1658 = tail call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  store i8 %1661, i8* %43, align 1
  %1662 = xor i32 %1653, %1651
  %1663 = xor i32 %1662, %1654
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  store i8 %1666, i8* %44, align 1
  %1667 = icmp eq i32 %1654, 0
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %45, align 1
  %1669 = lshr i32 %1654, 31
  %1670 = trunc i32 %1669 to i8
  store i8 %1670, i8* %46, align 1
  %1671 = lshr i32 %1651, 31
  %1672 = lshr i32 %1653, 31
  %1673 = xor i32 %1672, %1671
  %1674 = xor i32 %1669, %1671
  %1675 = add nuw nsw i32 %1674, %1673
  %1676 = icmp eq i32 %1675, 2
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %47, align 1
  %.v38 = select i1 %1667, i64 344, i64 56
  %1678 = add i64 %1589, %.v38
  store i64 %1678, i64* %3, align 8
  br i1 %1667, label %block_.L_40ada6, label %block_40ac86

block_40ac86:                                     ; preds = %block_40ac4e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %1679 = load i64, i64* %RBP.i, align 8
  %1680 = add i64 %1679, -4
  %1681 = add i64 %1678, 13
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = add i32 %1683, -1
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RCX.i1309, align 8
  %1686 = icmp eq i32 %1683, 0
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %42, align 1
  %1688 = and i32 %1684, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %43, align 1
  %1693 = xor i32 %1684, %1683
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %44, align 1
  %1697 = icmp eq i32 %1684, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %45, align 1
  %1699 = lshr i32 %1684, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %46, align 1
  %1701 = lshr i32 %1683, 31
  %1702 = xor i32 %1699, %1701
  %1703 = add nuw nsw i32 %1702, %1701
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %47, align 1
  %1706 = sext i32 %1684 to i64
  store i64 %1706, i64* %RDX.i1307, align 8
  %1707 = shl nsw i64 %1706, 2
  %1708 = add nsw i64 %1707, 11187184
  %1709 = add i64 %1678, 26
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  %1711 = load i32, i32* %1710, align 4
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RCX.i1309, align 8
  %1713 = add i64 %1679, -24
  %1714 = add i64 %1678, 29
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  store i32 %1711, i32* %1715, align 4
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -4
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 3
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1717 to i32*
  %1721 = load i32, i32* %1720, align 4
  %1722 = add i32 %1721, -1
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RCX.i1309, align 8
  %1724 = icmp eq i32 %1721, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %42, align 1
  %1726 = and i32 %1722, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %43, align 1
  %1731 = xor i32 %1722, %1721
  %1732 = lshr i32 %1731, 4
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %44, align 1
  %1735 = icmp eq i32 %1722, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %45, align 1
  %1737 = lshr i32 %1722, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %46, align 1
  %1739 = lshr i32 %1721, 31
  %1740 = xor i32 %1737, %1739
  %1741 = add nuw nsw i32 %1740, %1739
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %47, align 1
  %1744 = sext i32 %1722 to i64
  store i64 %1744, i64* %RDX.i1307, align 8
  %1745 = shl nsw i64 %1744, 2
  %1746 = add nsw i64 %1745, 11187184
  %1747 = add i64 %1718, 16
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RCX.i1309, align 8
  %1751 = add i64 %1716, -8
  %1752 = add i64 %1718, 20
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = sext i32 %1754 to i64
  %1756 = mul nsw i64 %1755, 744
  store i64 %1756, i64* %RDX.i1307, align 8
  %1757 = lshr i64 %1756, 63
  %1758 = load i64, i64* %RAX.i1311, align 8
  %1759 = add i64 %1756, %1758
  store i64 %1759, i64* %RSI.i1301, align 8
  %1760 = icmp ult i64 %1759, %1758
  %1761 = icmp ult i64 %1759, %1756
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %42, align 1
  %1764 = trunc i64 %1759 to i32
  %1765 = and i32 %1764, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %43, align 1
  %1770 = xor i64 %1756, %1758
  %1771 = xor i64 %1770, %1759
  %1772 = lshr i64 %1771, 4
  %1773 = trunc i64 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %44, align 1
  %1775 = icmp eq i64 %1759, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %45, align 1
  %1777 = lshr i64 %1759, 63
  %1778 = trunc i64 %1777 to i8
  store i8 %1778, i8* %46, align 1
  %1779 = lshr i64 %1758, 63
  %1780 = xor i64 %1777, %1779
  %1781 = xor i64 %1777, %1757
  %1782 = add nuw nsw i64 %1780, %1781
  %1783 = icmp eq i64 %1782, 2
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %47, align 1
  %1785 = load i64, i64* %RBP.i, align 8
  %1786 = add i64 %1785, -8
  %1787 = add i64 %1718, 37
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = sext i32 %1789 to i64
  %1791 = mul nsw i64 %1790, 744
  store i64 %1791, i64* %RDX.i1307, align 8
  %1792 = lshr i64 %1791, 63
  %1793 = add i64 %1791, %1758
  store i64 %1793, i64* %RDI.i1299, align 8
  %1794 = icmp ult i64 %1793, %1758
  %1795 = icmp ult i64 %1793, %1791
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %42, align 1
  %1798 = trunc i64 %1793 to i32
  %1799 = and i32 %1798, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %43, align 1
  %1804 = xor i64 %1791, %1758
  %1805 = xor i64 %1804, %1793
  %1806 = lshr i64 %1805, 4
  %1807 = trunc i64 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %44, align 1
  %1809 = icmp eq i64 %1793, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %45, align 1
  %1811 = lshr i64 %1793, 63
  %1812 = trunc i64 %1811 to i8
  store i8 %1812, i8* %46, align 1
  %1813 = xor i64 %1811, %1779
  %1814 = xor i64 %1811, %1792
  %1815 = add nuw nsw i64 %1813, %1814
  %1816 = icmp eq i64 %1815, 2
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %47, align 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i688 = bitcast %union.anon* %1818 to i32*
  %1819 = getelementptr inbounds %union.anon, %union.anon* %1818, i64 0, i32 0
  %1820 = add i64 %1793, 96
  %1821 = add i64 %1718, 54
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %1819, align 8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1826 = add i32 %1823, 1
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %1825, align 8
  %1828 = icmp eq i32 %1823, -1
  %1829 = icmp eq i32 %1826, 0
  %1830 = or i1 %1828, %1829
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %42, align 1
  %1832 = and i32 %1826, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832)
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %43, align 1
  %1837 = xor i32 %1826, %1823
  %1838 = lshr i32 %1837, 4
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  store i8 %1840, i8* %44, align 1
  %1841 = zext i1 %1829 to i8
  store i8 %1841, i8* %45, align 1
  %1842 = lshr i32 %1826, 31
  %1843 = trunc i32 %1842 to i8
  store i8 %1843, i8* %46, align 1
  %1844 = lshr i32 %1823, 31
  %1845 = xor i32 %1842, %1844
  %1846 = add nuw nsw i32 %1845, %1842
  %1847 = icmp eq i32 %1846, 2
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %47, align 1
  %1849 = add i64 %1718, 65
  store i64 %1849, i64* %3, align 8
  store i32 %1826, i32* %1822, align 4
  %1850 = load i32, i32* %R8D.i688, align 4
  %1851 = load i64, i64* %3, align 8
  %1852 = sext i32 %1850 to i64
  store i64 %1852, i64* %RDX.i1307, align 8
  %1853 = load i64, i64* %RSI.i1301, align 8
  %1854 = shl nsw i64 %1852, 2
  %1855 = add nsw i64 %1854, 100
  %1856 = add i64 %1855, %1853
  %1857 = load i32, i32* %ECX.i753, align 4
  %1858 = add i64 %1851, 7
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1856 to i32*
  store i32 %1857, i32* %1859, align 4
  %1860 = load i64, i64* %RBP.i, align 8
  %1861 = add i64 %1860, -24
  %1862 = load i64, i64* %3, align 8
  %1863 = add i64 %1862, 4
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1861 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = sext i32 %1865 to i64
  %1867 = mul nsw i64 %1866, 744
  %1868 = load i64, i64* %RAX.i1311, align 8
  %1869 = add i64 %1867, %1868
  %1870 = lshr i64 %1869, 63
  %1871 = add i64 %1869, 96
  store i64 %1871, i64* %RSI.i1301, align 8
  %1872 = icmp ugt i64 %1869, -97
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %42, align 1
  %1874 = trunc i64 %1871 to i32
  %1875 = and i32 %1874, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %43, align 1
  %1880 = xor i64 %1871, %1869
  %1881 = lshr i64 %1880, 4
  %1882 = trunc i64 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %44, align 1
  %1884 = icmp eq i64 %1871, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %45, align 1
  %1886 = lshr i64 %1871, 63
  %1887 = trunc i64 %1886 to i8
  store i8 %1887, i8* %46, align 1
  %1888 = xor i64 %1886, %1870
  %1889 = add nuw nsw i64 %1888, %1886
  %1890 = icmp eq i64 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %47, align 1
  %1892 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1892, i64* %RDX.i1307, align 8
  %1893 = add i64 %1862, 32
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i64*
  store i64 %1871, i64* %1894, align 8
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -24
  %1897 = load i64, i64* %3, align 8
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1896 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = mul nsw i64 %1901, 744
  store i64 %1902, i64* %RDX.i1307, align 8
  %1903 = lshr i64 %1902, 63
  %1904 = load i64, i64* %RAX.i1311, align 8
  %1905 = add i64 %1902, %1904
  store i64 %1905, i64* %RSI.i1301, align 8
  %1906 = icmp ult i64 %1905, %1904
  %1907 = icmp ult i64 %1905, %1902
  %1908 = or i1 %1906, %1907
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %42, align 1
  %1910 = trunc i64 %1905 to i32
  %1911 = and i32 %1910, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %43, align 1
  %1916 = xor i64 %1902, %1904
  %1917 = xor i64 %1916, %1905
  %1918 = lshr i64 %1917, 4
  %1919 = trunc i64 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %44, align 1
  %1921 = icmp eq i64 %1905, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %45, align 1
  %1923 = lshr i64 %1905, 63
  %1924 = trunc i64 %1923 to i8
  store i8 %1924, i8* %46, align 1
  %1925 = lshr i64 %1904, 63
  %1926 = xor i64 %1923, %1925
  %1927 = xor i64 %1923, %1903
  %1928 = add nuw nsw i64 %1926, %1927
  %1929 = icmp eq i64 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %47, align 1
  %1931 = add i64 %1905, 96
  %1932 = add i64 %1897, 20
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RCX.i1309, align 8
  %1936 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1936, i64* %RDX.i1307, align 8
  %1937 = add i64 %1936, 16
  store i64 %1937, i64* %RSI.i1301, align 8
  %1938 = icmp ugt i64 %1936, -17
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %42, align 1
  %1940 = trunc i64 %1937 to i32
  %1941 = and i32 %1940, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941)
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %43, align 1
  %1946 = xor i64 %1936, 16
  %1947 = xor i64 %1946, %1937
  %1948 = lshr i64 %1947, 4
  %1949 = trunc i64 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %44, align 1
  %1951 = icmp eq i64 %1937, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %45, align 1
  %1953 = lshr i64 %1937, 63
  %1954 = trunc i64 %1953 to i8
  store i8 %1954, i8* %46, align 1
  %1955 = lshr i64 %1936, 63
  %1956 = xor i64 %1953, %1955
  %1957 = add nuw nsw i64 %1956, %1953
  %1958 = icmp eq i64 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %47, align 1
  store i64 %1937, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %1960 = add i64 %1936, 8
  %1961 = add i64 %1897, 46
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i32*
  store i32 %1934, i32* %1962, align 4
  %1963 = load i64, i64* %RBP.i, align 8
  %1964 = add i64 %1963, -4
  %1965 = load i64, i64* %3, align 8
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1964 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RDX.i1307, align 8
  %1970 = shl nsw i64 %1969, 2
  %1971 = add nsw i64 %1970, 11187184
  %1972 = add i64 %1965, 11
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i1309, align 8
  %1976 = add i64 %1963, -24
  %1977 = add i64 %1965, 15
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = sext i32 %1979 to i64
  %1981 = mul nsw i64 %1980, 744
  store i64 %1981, i64* %RDX.i1307, align 8
  %1982 = lshr i64 %1981, 63
  %1983 = load i64, i64* %RAX.i1311, align 8
  %1984 = add i64 %1981, %1983
  store i64 %1984, i64* %RSI.i1301, align 8
  %1985 = icmp ult i64 %1984, %1983
  %1986 = icmp ult i64 %1984, %1981
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %42, align 1
  %1989 = trunc i64 %1984 to i32
  %1990 = and i32 %1989, 255
  %1991 = tail call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  store i8 %1994, i8* %43, align 1
  %1995 = xor i64 %1981, %1983
  %1996 = xor i64 %1995, %1984
  %1997 = lshr i64 %1996, 4
  %1998 = trunc i64 %1997 to i8
  %1999 = and i8 %1998, 1
  store i8 %1999, i8* %44, align 1
  %2000 = icmp eq i64 %1984, 0
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %45, align 1
  %2002 = lshr i64 %1984, 63
  %2003 = trunc i64 %2002 to i8
  store i8 %2003, i8* %46, align 1
  %2004 = lshr i64 %1983, 63
  %2005 = xor i64 %2002, %2004
  %2006 = xor i64 %2002, %1982
  %2007 = add nuw nsw i64 %2005, %2006
  %2008 = icmp eq i64 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %47, align 1
  %2010 = add i64 %1965, 32
  store i64 %2010, i64* %3, align 8
  %2011 = load i32, i32* %1978, align 4
  %2012 = sext i32 %2011 to i64
  %2013 = mul nsw i64 %2012, 744
  store i64 %2013, i64* %RDX.i1307, align 8
  %2014 = lshr i64 %2013, 63
  %2015 = add i64 %2013, %1983
  store i64 %2015, i64* %RDI.i1299, align 8
  %2016 = icmp ult i64 %2015, %1983
  %2017 = icmp ult i64 %2015, %2013
  %2018 = or i1 %2016, %2017
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %42, align 1
  %2020 = trunc i64 %2015 to i32
  %2021 = and i32 %2020, 255
  %2022 = tail call i32 @llvm.ctpop.i32(i32 %2021)
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = xor i8 %2024, 1
  store i8 %2025, i8* %43, align 1
  %2026 = xor i64 %2013, %1983
  %2027 = xor i64 %2026, %2015
  %2028 = lshr i64 %2027, 4
  %2029 = trunc i64 %2028 to i8
  %2030 = and i8 %2029, 1
  store i8 %2030, i8* %44, align 1
  %2031 = icmp eq i64 %2015, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %45, align 1
  %2033 = lshr i64 %2015, 63
  %2034 = trunc i64 %2033 to i8
  store i8 %2034, i8* %46, align 1
  %2035 = xor i64 %2033, %2004
  %2036 = xor i64 %2033, %2014
  %2037 = add nuw nsw i64 %2035, %2036
  %2038 = icmp eq i64 %2037, 2
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %47, align 1
  %2040 = add i64 %2015, 96
  %2041 = add i64 %1965, 49
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %1819, align 8
  %2045 = add i32 %2043, 1
  %2046 = zext i32 %2045 to i64
  store i64 %2046, i64* %1825, align 8
  %2047 = icmp eq i32 %2043, -1
  %2048 = icmp eq i32 %2045, 0
  %2049 = or i1 %2047, %2048
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %42, align 1
  %2051 = and i32 %2045, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %43, align 1
  %2056 = xor i32 %2045, %2043
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %44, align 1
  %2060 = zext i1 %2048 to i8
  store i8 %2060, i8* %45, align 1
  %2061 = lshr i32 %2045, 31
  %2062 = trunc i32 %2061 to i8
  store i8 %2062, i8* %46, align 1
  %2063 = lshr i32 %2043, 31
  %2064 = xor i32 %2061, %2063
  %2065 = add nuw nsw i32 %2064, %2061
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %47, align 1
  %2068 = add i64 %1965, 60
  store i64 %2068, i64* %3, align 8
  store i32 %2045, i32* %2042, align 4
  %2069 = load i32, i32* %R8D.i688, align 4
  %2070 = load i64, i64* %3, align 8
  %2071 = sext i32 %2069 to i64
  store i64 %2071, i64* %RDX.i1307, align 8
  %2072 = load i64, i64* %RSI.i1301, align 8
  %2073 = shl nsw i64 %2071, 2
  %2074 = add nsw i64 %2073, 100
  %2075 = add i64 %2074, %2072
  %2076 = load i32, i32* %ECX.i753, align 4
  %2077 = add i64 %2070, 7
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2075 to i32*
  store i32 %2076, i32* %2078, align 4
  %2079 = load i64, i64* %3, align 8
  %2080 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RCX.i1309, align 8
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -4
  %2084 = add i64 %2079, 11
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = add i32 %2086, -1
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %1819, align 8
  %2089 = icmp eq i32 %2086, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %42, align 1
  %2091 = and i32 %2087, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %43, align 1
  %2096 = xor i32 %2087, %2086
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %44, align 1
  %2100 = icmp eq i32 %2087, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %45, align 1
  %2102 = lshr i32 %2087, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %46, align 1
  %2104 = lshr i32 %2086, 31
  %2105 = xor i32 %2102, %2104
  %2106 = add nuw nsw i32 %2105, %2104
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %47, align 1
  %2109 = sext i32 %2087 to i64
  store i64 %2109, i64* %RDX.i1307, align 8
  %2110 = shl nsw i64 %2109, 2
  %2111 = add nsw i64 %2110, 11187184
  %2112 = add i64 %2079, 26
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i32*
  %2114 = load i32, i32* %2113, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = mul nsw i64 %2115, 744
  store i64 %2116, i64* %RDX.i1307, align 8
  %2117 = lshr i64 %2116, 63
  %2118 = load i64, i64* %RAX.i1311, align 8
  %2119 = add i64 %2116, %2118
  store i64 %2119, i64* %RAX.i1311, align 8
  %2120 = icmp ult i64 %2119, %2118
  %2121 = icmp ult i64 %2119, %2116
  %2122 = or i1 %2120, %2121
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %42, align 1
  %2124 = trunc i64 %2119 to i32
  %2125 = and i32 %2124, 255
  %2126 = tail call i32 @llvm.ctpop.i32(i32 %2125)
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  %2129 = xor i8 %2128, 1
  store i8 %2129, i8* %43, align 1
  %2130 = xor i64 %2116, %2118
  %2131 = xor i64 %2130, %2119
  %2132 = lshr i64 %2131, 4
  %2133 = trunc i64 %2132 to i8
  %2134 = and i8 %2133, 1
  store i8 %2134, i8* %44, align 1
  %2135 = icmp eq i64 %2119, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %45, align 1
  %2137 = lshr i64 %2119, 63
  %2138 = trunc i64 %2137 to i8
  store i8 %2138, i8* %46, align 1
  %2139 = lshr i64 %2118, 63
  %2140 = xor i64 %2137, %2139
  %2141 = xor i64 %2137, %2117
  %2142 = add nuw nsw i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %47, align 1
  %2145 = add i64 %2119, 740
  %2146 = load i32, i32* %ECX.i753, align 4
  %2147 = add i64 %2079, 42
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2145 to i32*
  store i32 %2146, i32* %2148, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_40ada6

block_.L_40ada6:                                  ; preds = %block_.L_40ac34, %block_40ac86, %block_40ac4e
  %2149 = phi i64 [ %.pre21, %block_40ac86 ], [ %1678, %block_40ac4e ], [ %1589, %block_.L_40ac34 ]
  %2150 = add i64 %2149, 5
  store i64 %2150, i64* %3, align 8
  br label %block_.L_40adab

block_.L_40adab:                                  ; preds = %block_.L_40ada6, %block_.L_40ac0e
  %storemerge16 = phi i64 [ %1532, %block_.L_40ac0e ], [ %2150, %block_.L_40ada6 ]
  %2151 = load i64, i64* %RBP.i, align 8
  %2152 = add i64 %2151, -4
  %2153 = add i64 %storemerge16, 3
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  %2156 = add i32 %2155, -20
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RAX.i1311, align 8
  %2158 = icmp ult i32 %2155, 20
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %42, align 1
  %2160 = and i32 %2156, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %43, align 1
  %2165 = xor i32 %2155, 16
  %2166 = xor i32 %2165, %2156
  %2167 = lshr i32 %2166, 4
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %44, align 1
  %2170 = icmp eq i32 %2156, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %45, align 1
  %2172 = lshr i32 %2156, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %46, align 1
  %2174 = lshr i32 %2155, 31
  %2175 = xor i32 %2172, %2174
  %2176 = add nuw nsw i32 %2175, %2174
  %2177 = icmp eq i32 %2176, 2
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %47, align 1
  %2179 = sext i32 %2156 to i64
  store i64 %2179, i64* %RCX.i1309, align 8
  %2180 = add nsw i64 %2179, 12099168
  %2181 = add i64 %storemerge16, 17
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i8*
  %2183 = load i8, i8* %2182, align 1
  %2184 = zext i8 %2183 to i64
  store i64 %2184, i64* %RAX.i1311, align 8
  %2185 = zext i8 %2183 to i32
  store i8 0, i8* %42, align 1
  %2186 = tail call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  store i8 %2189, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %2190 = icmp eq i8 %2183, 0
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %.v30 = select i1 %2190, i64 26, i64 158
  %2192 = add i64 %storemerge16, %.v30
  store i64 %2192, i64* %3, align 8
  br i1 %2190, label %block_40adc5, label %block_.L_40ae49

block_40adc5:                                     ; preds = %block_.L_40adab
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %2193 = add i64 %2151, -8
  %2194 = add i64 %2192, 19
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = sext i32 %2196 to i64
  %2198 = mul nsw i64 %2197, 744
  store i64 %2198, i64* %RCX.i1309, align 8
  %2199 = lshr i64 %2198, 63
  %2200 = add i64 %2198, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2200, i64* %RAX.i1311, align 8
  %2201 = icmp ult i64 %2200, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2202 = icmp ult i64 %2200, %2198
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %42, align 1
  %2205 = trunc i64 %2200 to i32
  %2206 = and i32 %2205, 248
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %43, align 1
  %2211 = xor i64 %2198, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2212 = xor i64 %2211, %2200
  %2213 = lshr i64 %2212, 4
  %2214 = trunc i64 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %44, align 1
  %2216 = icmp eq i64 %2200, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %45, align 1
  %2218 = lshr i64 %2200, 63
  %2219 = trunc i64 %2218 to i8
  store i8 %2219, i8* %46, align 1
  %2220 = xor i64 %2218, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2221 = xor i64 %2218, %2199
  %2222 = add nuw nsw i64 %2220, %2221
  %2223 = icmp eq i64 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %47, align 1
  %2225 = add i64 %2198, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2226 = add i64 %2192, 33
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = add i32 %2228, -20
  %2230 = icmp ult i32 %2228, 20
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %42, align 1
  %2232 = and i32 %2229, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %43, align 1
  %2237 = xor i32 %2228, 16
  %2238 = xor i32 %2237, %2229
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %44, align 1
  %2242 = icmp eq i32 %2229, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %45, align 1
  %2244 = lshr i32 %2229, 31
  %2245 = trunc i32 %2244 to i8
  store i8 %2245, i8* %46, align 1
  %2246 = lshr i32 %2228, 31
  %2247 = xor i32 %2244, %2246
  %2248 = add nuw nsw i32 %2247, %2246
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %47, align 1
  %2251 = icmp ne i8 %2245, 0
  %2252 = xor i1 %2251, %2249
  %.v37 = select i1 %2252, i64 39, i64 94
  %2253 = add i64 %2192, %.v37
  store i64 %2253, i64* %3, align 8
  br i1 %2252, label %block_40adec, label %block_.L_40ae23

block_40adec:                                     ; preds = %block_40adc5
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -4
  %2256 = add i64 %2253, 13
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = add i32 %2258, -20
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RCX.i1309, align 8
  %2261 = icmp ult i32 %2258, 20
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %42, align 1
  %2263 = and i32 %2259, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %43, align 1
  %2268 = xor i32 %2258, 16
  %2269 = xor i32 %2268, %2259
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %44, align 1
  %2273 = icmp eq i32 %2259, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %45, align 1
  %2275 = lshr i32 %2259, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %46, align 1
  %2277 = lshr i32 %2258, 31
  %2278 = xor i32 %2275, %2277
  %2279 = add nuw nsw i32 %2278, %2277
  %2280 = icmp eq i32 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %47, align 1
  %2282 = add i64 %2254, -8
  %2283 = add i64 %2253, 20
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  %2287 = mul nsw i64 %2286, 744
  store i64 %2287, i64* %RDX.i1307, align 8
  %2288 = lshr i64 %2287, 63
  %2289 = add i64 %2287, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2289, i64* %RSI.i1301, align 8
  %2290 = icmp ult i64 %2289, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2291 = icmp ult i64 %2289, %2287
  %2292 = or i1 %2290, %2291
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %42, align 1
  %2294 = trunc i64 %2289 to i32
  %2295 = and i32 %2294, 248
  %2296 = tail call i32 @llvm.ctpop.i32(i32 %2295)
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = xor i8 %2298, 1
  store i8 %2299, i8* %43, align 1
  %2300 = xor i64 %2287, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2301 = xor i64 %2300, %2289
  %2302 = lshr i64 %2301, 4
  %2303 = trunc i64 %2302 to i8
  %2304 = and i8 %2303, 1
  store i8 %2304, i8* %44, align 1
  %2305 = icmp eq i64 %2289, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %45, align 1
  %2307 = lshr i64 %2289, 63
  %2308 = trunc i64 %2307 to i8
  store i8 %2308, i8* %46, align 1
  %2309 = xor i64 %2307, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2310 = xor i64 %2307, %2288
  %2311 = add nuw nsw i64 %2309, %2310
  %2312 = icmp eq i64 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %47, align 1
  %2314 = load i64, i64* %RBP.i, align 8
  %2315 = add i64 %2314, -8
  %2316 = add i64 %2253, 37
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = mul nsw i64 %2319, 744
  store i64 %2320, i64* %RDX.i1307, align 8
  %2321 = lshr i64 %2320, 63
  %2322 = load i64, i64* %RAX.i1311, align 8
  %2323 = add i64 %2320, %2322
  store i64 %2323, i64* %RAX.i1311, align 8
  %2324 = icmp ult i64 %2323, %2322
  %2325 = icmp ult i64 %2323, %2320
  %2326 = or i1 %2324, %2325
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %42, align 1
  %2328 = trunc i64 %2323 to i32
  %2329 = and i32 %2328, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %43, align 1
  %2334 = xor i64 %2320, %2322
  %2335 = xor i64 %2334, %2323
  %2336 = lshr i64 %2335, 4
  %2337 = trunc i64 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %44, align 1
  %2339 = icmp eq i64 %2323, 0
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %45, align 1
  %2341 = lshr i64 %2323, 63
  %2342 = trunc i64 %2341 to i8
  store i8 %2342, i8* %46, align 1
  %2343 = lshr i64 %2322, 63
  %2344 = xor i64 %2341, %2343
  %2345 = xor i64 %2341, %2321
  %2346 = add nuw nsw i64 %2344, %2345
  %2347 = icmp eq i64 %2346, 2
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %47, align 1
  %2349 = add i64 %2323, 12
  %2350 = add i64 %2253, 51
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = sext i32 %2352 to i64
  store i64 %2353, i64* %RAX.i1311, align 8
  %ECX.i502 = bitcast %union.anon* %11 to i32*
  %2354 = load i64, i64* %RSI.i1301, align 8
  %2355 = shl nsw i64 %2353, 2
  %2356 = add i64 %2354, 16
  %2357 = add i64 %2356, %2355
  %2358 = load i32, i32* %ECX.i502, align 4
  %2359 = add i64 %2253, 55
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2357 to i32*
  store i32 %2358, i32* %2360, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_40ae23

block_.L_40ae23:                                  ; preds = %block_40adc5, %block_40adec
  %2361 = phi i64 [ %2253, %block_40adc5 ], [ %.pre22, %block_40adec ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %2362 = load i64, i64* %RBP.i, align 8
  %2363 = add i64 %2362, -8
  %2364 = add i64 %2361, 14
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i32*
  %2366 = load i32, i32* %2365, align 4
  %2367 = sext i32 %2366 to i64
  %2368 = mul nsw i64 %2367, 744
  store i64 %2368, i64* %RCX.i1309, align 8
  %2369 = lshr i64 %2368, 63
  %2370 = add i64 %2368, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2370, i64* %RAX.i1311, align 8
  %2371 = icmp ult i64 %2370, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2372 = icmp ult i64 %2370, %2368
  %2373 = or i1 %2371, %2372
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %42, align 1
  %2375 = trunc i64 %2370 to i32
  %2376 = and i32 %2375, 248
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %43, align 1
  %2381 = xor i64 %2368, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2382 = xor i64 %2381, %2370
  %2383 = lshr i64 %2382, 4
  %2384 = trunc i64 %2383 to i8
  %2385 = and i8 %2384, 1
  store i8 %2385, i8* %44, align 1
  %2386 = icmp eq i64 %2370, 0
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %45, align 1
  %2388 = lshr i64 %2370, 63
  %2389 = trunc i64 %2388 to i8
  store i8 %2389, i8* %46, align 1
  %2390 = xor i64 %2388, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2391 = xor i64 %2388, %2369
  %2392 = add nuw nsw i64 %2390, %2391
  %2393 = icmp eq i64 %2392, 2
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %47, align 1
  %2395 = add i64 %2368, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2396 = add i64 %2361, 27
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = add i32 %2398, 1
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RDX.i1307, align 8
  %2401 = icmp eq i32 %2398, -1
  %2402 = icmp eq i32 %2399, 0
  %2403 = or i1 %2401, %2402
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %42, align 1
  %2405 = and i32 %2399, 255
  %2406 = tail call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  store i8 %2409, i8* %43, align 1
  %2410 = xor i32 %2399, %2398
  %2411 = lshr i32 %2410, 4
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  store i8 %2413, i8* %44, align 1
  %2414 = zext i1 %2402 to i8
  store i8 %2414, i8* %45, align 1
  %2415 = lshr i32 %2399, 31
  %2416 = trunc i32 %2415 to i8
  store i8 %2416, i8* %46, align 1
  %2417 = lshr i32 %2398, 31
  %2418 = xor i32 %2415, %2417
  %2419 = add nuw nsw i32 %2418, %2415
  %2420 = icmp eq i32 %2419, 2
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %47, align 1
  %2422 = add i64 %2361, 33
  store i64 %2422, i64* %3, align 8
  store i32 %2399, i32* %2397, align 4
  %2423 = load i64, i64* %3, align 8
  %2424 = add i64 %2423, 380
  br label %block_.L_40afc0

block_.L_40ae49:                                  ; preds = %block_.L_40adab
  %2425 = add i64 %2192, 3
  store i64 %2425, i64* %3, align 8
  %2426 = load i32, i32* %2154, align 4
  %2427 = add i32 %2426, -20
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RAX.i1311, align 8
  %2429 = icmp ult i32 %2426, 20
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %42, align 1
  %2431 = and i32 %2427, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %43, align 1
  %2436 = xor i32 %2426, 16
  %2437 = xor i32 %2436, %2427
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %44, align 1
  %2441 = icmp eq i32 %2427, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %45, align 1
  %2443 = lshr i32 %2427, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %46, align 1
  %2445 = lshr i32 %2426, 31
  %2446 = xor i32 %2443, %2445
  %2447 = add nuw nsw i32 %2446, %2445
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %47, align 1
  %2450 = sext i32 %2427 to i64
  store i64 %2450, i64* %RCX.i1309, align 8
  %2451 = add nsw i64 %2450, 12099168
  %2452 = add i64 %2192, 17
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i8*
  %2454 = load i8, i8* %2453, align 1
  %2455 = zext i8 %2454 to i64
  store i64 %2455, i64* %RAX.i1311, align 8
  %2456 = zext i8 %2454 to i32
  %2457 = add i64 %2151, -16
  %2458 = add i64 %2192, 20
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = sub i32 %2456, %2460
  %2462 = icmp ult i32 %2456, %2460
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %42, align 1
  %2464 = and i32 %2461, 255
  %2465 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %43, align 1
  %2469 = xor i32 %2460, %2456
  %2470 = xor i32 %2469, %2461
  %2471 = lshr i32 %2470, 4
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  store i8 %2473, i8* %44, align 1
  %2474 = icmp eq i32 %2461, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %45, align 1
  %2476 = lshr i32 %2461, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %46, align 1
  %2478 = lshr i32 %2460, 31
  %2479 = add nuw nsw i32 %2476, %2478
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %47, align 1
  %.v31 = select i1 %2474, i64 26, i64 370
  %2482 = add i64 %2192, %.v31
  store i64 %2482, i64* %3, align 8
  br i1 %2474, label %block_40ae63, label %block_.L_40afbb

block_40ae63:                                     ; preds = %block_.L_40ae49
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %2483 = add i64 %2482, 13
  store i64 %2483, i64* %3, align 8
  %2484 = load i32, i32* %2154, align 4
  %2485 = add i32 %2484, -20
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i1309, align 8
  %2487 = icmp ult i32 %2484, 20
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %42, align 1
  %2489 = and i32 %2485, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %43, align 1
  %2494 = xor i32 %2484, 16
  %2495 = xor i32 %2494, %2485
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %44, align 1
  %2499 = icmp eq i32 %2485, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %45, align 1
  %2501 = lshr i32 %2485, 31
  %2502 = trunc i32 %2501 to i8
  store i8 %2502, i8* %46, align 1
  %2503 = lshr i32 %2484, 31
  %2504 = xor i32 %2501, %2503
  %2505 = add nuw nsw i32 %2504, %2503
  %2506 = icmp eq i32 %2505, 2
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %47, align 1
  %ECX.i458 = bitcast %union.anon* %11 to i32*
  %2508 = sext i32 %2485 to i64
  store i64 %2508, i64* %RDX.i1307, align 8
  %2509 = shl nsw i64 %2508, 2
  %2510 = add nsw i64 %2509, 11187184
  %2511 = add i64 %2482, 27
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = sext i32 %2513 to i64
  %2515 = mul nsw i64 %2514, 744
  store i64 %2515, i64* %RDX.i1307, align 8
  %2516 = lshr i64 %2515, 63
  %2517 = add i64 %2515, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2517, i64* %RAX.i1311, align 8
  %2518 = icmp ult i64 %2517, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2519 = icmp ult i64 %2517, %2515
  %2520 = or i1 %2518, %2519
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %42, align 1
  %2522 = trunc i64 %2517 to i32
  %2523 = and i32 %2522, 248
  %2524 = tail call i32 @llvm.ctpop.i32(i32 %2523)
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = xor i8 %2526, 1
  store i8 %2527, i8* %43, align 1
  %2528 = xor i64 %2515, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2529 = xor i64 %2528, %2517
  %2530 = lshr i64 %2529, 4
  %2531 = trunc i64 %2530 to i8
  %2532 = and i8 %2531, 1
  store i8 %2532, i8* %44, align 1
  %2533 = icmp eq i64 %2517, 0
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %45, align 1
  %2535 = lshr i64 %2517, 63
  %2536 = trunc i64 %2535 to i8
  store i8 %2536, i8* %46, align 1
  %2537 = xor i64 %2535, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2538 = xor i64 %2535, %2516
  %2539 = add nuw nsw i64 %2537, %2538
  %2540 = icmp eq i64 %2539, 2
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %47, align 1
  %2542 = add i64 %2515, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2543 = add i64 %2482, 43
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RCX.i1309, align 8
  %2547 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2548 = sub i32 %2545, %2547
  %2549 = icmp ult i32 %2545, %2547
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %42, align 1
  %2551 = and i32 %2548, 255
  %2552 = tail call i32 @llvm.ctpop.i32(i32 %2551)
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  store i8 %2555, i8* %43, align 1
  %2556 = xor i32 %2547, %2545
  %2557 = xor i32 %2556, %2548
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  store i8 %2560, i8* %44, align 1
  %2561 = icmp eq i32 %2548, 0
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %45, align 1
  %2563 = lshr i32 %2548, 31
  %2564 = trunc i32 %2563 to i8
  store i8 %2564, i8* %46, align 1
  %2565 = lshr i32 %2545, 31
  %2566 = lshr i32 %2547, 31
  %2567 = xor i32 %2566, %2565
  %2568 = xor i32 %2563, %2565
  %2569 = add nuw nsw i32 %2568, %2567
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %47, align 1
  %.v36 = select i1 %2561, i64 344, i64 56
  %2572 = add i64 %2482, %.v36
  store i64 %2572, i64* %3, align 8
  br i1 %2561, label %block_.L_40afbb, label %block_40ae9b

block_40ae9b:                                     ; preds = %block_40ae63
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %2573 = load i64, i64* %RBP.i, align 8
  %2574 = add i64 %2573, -4
  %2575 = add i64 %2572, 13
  store i64 %2575, i64* %3, align 8
  %2576 = inttoptr i64 %2574 to i32*
  %2577 = load i32, i32* %2576, align 4
  %2578 = add i32 %2577, -20
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RCX.i1309, align 8
  %2580 = icmp ult i32 %2577, 20
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %42, align 1
  %2582 = and i32 %2578, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %43, align 1
  %2587 = xor i32 %2577, 16
  %2588 = xor i32 %2587, %2578
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %44, align 1
  %2592 = icmp eq i32 %2578, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %45, align 1
  %2594 = lshr i32 %2578, 31
  %2595 = trunc i32 %2594 to i8
  store i8 %2595, i8* %46, align 1
  %2596 = lshr i32 %2577, 31
  %2597 = xor i32 %2594, %2596
  %2598 = add nuw nsw i32 %2597, %2596
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %47, align 1
  %2601 = sext i32 %2578 to i64
  store i64 %2601, i64* %RDX.i1307, align 8
  %2602 = shl nsw i64 %2601, 2
  %2603 = add nsw i64 %2602, 11187184
  %2604 = add i64 %2572, 26
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RCX.i1309, align 8
  %2608 = add i64 %2573, -28
  %2609 = add i64 %2572, 29
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  store i32 %2606, i32* %2610, align 4
  %2611 = load i64, i64* %RBP.i, align 8
  %2612 = add i64 %2611, -4
  %2613 = load i64, i64* %3, align 8
  %2614 = add i64 %2613, 3
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2612 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = add i32 %2616, -20
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RCX.i1309, align 8
  %2619 = icmp ult i32 %2616, 20
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %42, align 1
  %2621 = and i32 %2617, 255
  %2622 = tail call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %43, align 1
  %2626 = xor i32 %2616, 16
  %2627 = xor i32 %2626, %2617
  %2628 = lshr i32 %2627, 4
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  store i8 %2630, i8* %44, align 1
  %2631 = icmp eq i32 %2617, 0
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %45, align 1
  %2633 = lshr i32 %2617, 31
  %2634 = trunc i32 %2633 to i8
  store i8 %2634, i8* %46, align 1
  %2635 = lshr i32 %2616, 31
  %2636 = xor i32 %2633, %2635
  %2637 = add nuw nsw i32 %2636, %2635
  %2638 = icmp eq i32 %2637, 2
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %47, align 1
  %2640 = sext i32 %2617 to i64
  store i64 %2640, i64* %RDX.i1307, align 8
  %2641 = shl nsw i64 %2640, 2
  %2642 = add nsw i64 %2641, 11187184
  %2643 = add i64 %2613, 16
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RCX.i1309, align 8
  %2647 = add i64 %2611, -8
  %2648 = add i64 %2613, 20
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i32*
  %2650 = load i32, i32* %2649, align 4
  %2651 = sext i32 %2650 to i64
  %2652 = mul nsw i64 %2651, 744
  store i64 %2652, i64* %RDX.i1307, align 8
  %2653 = lshr i64 %2652, 63
  %2654 = load i64, i64* %RAX.i1311, align 8
  %2655 = add i64 %2652, %2654
  store i64 %2655, i64* %RSI.i1301, align 8
  %2656 = icmp ult i64 %2655, %2654
  %2657 = icmp ult i64 %2655, %2652
  %2658 = or i1 %2656, %2657
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %42, align 1
  %2660 = trunc i64 %2655 to i32
  %2661 = and i32 %2660, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %43, align 1
  %2666 = xor i64 %2652, %2654
  %2667 = xor i64 %2666, %2655
  %2668 = lshr i64 %2667, 4
  %2669 = trunc i64 %2668 to i8
  %2670 = and i8 %2669, 1
  store i8 %2670, i8* %44, align 1
  %2671 = icmp eq i64 %2655, 0
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %45, align 1
  %2673 = lshr i64 %2655, 63
  %2674 = trunc i64 %2673 to i8
  store i8 %2674, i8* %46, align 1
  %2675 = lshr i64 %2654, 63
  %2676 = xor i64 %2673, %2675
  %2677 = xor i64 %2673, %2653
  %2678 = add nuw nsw i64 %2676, %2677
  %2679 = icmp eq i64 %2678, 2
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %47, align 1
  %2681 = load i64, i64* %RBP.i, align 8
  %2682 = add i64 %2681, -8
  %2683 = add i64 %2613, 37
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sext i32 %2685 to i64
  %2687 = mul nsw i64 %2686, 744
  store i64 %2687, i64* %RDX.i1307, align 8
  %2688 = lshr i64 %2687, 63
  %2689 = add i64 %2687, %2654
  store i64 %2689, i64* %RDI.i1299, align 8
  %2690 = icmp ult i64 %2689, %2654
  %2691 = icmp ult i64 %2689, %2687
  %2692 = or i1 %2690, %2691
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %42, align 1
  %2694 = trunc i64 %2689 to i32
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %43, align 1
  %2700 = xor i64 %2687, %2654
  %2701 = xor i64 %2700, %2689
  %2702 = lshr i64 %2701, 4
  %2703 = trunc i64 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %44, align 1
  %2705 = icmp eq i64 %2689, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %45, align 1
  %2707 = lshr i64 %2689, 63
  %2708 = trunc i64 %2707 to i8
  store i8 %2708, i8* %46, align 1
  %2709 = xor i64 %2707, %2675
  %2710 = xor i64 %2707, %2688
  %2711 = add nuw nsw i64 %2709, %2710
  %2712 = icmp eq i64 %2711, 2
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %47, align 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i393 = bitcast %union.anon* %2714 to i32*
  %2715 = getelementptr inbounds %union.anon, %union.anon* %2714, i64 0, i32 0
  %2716 = add i64 %2689, 96
  %2717 = add i64 %2613, 54
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = zext i32 %2719 to i64
  store i64 %2720, i64* %2715, align 8
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2722 = add i32 %2719, 1
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %2721, align 8
  %2724 = icmp eq i32 %2719, -1
  %2725 = icmp eq i32 %2722, 0
  %2726 = or i1 %2724, %2725
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %42, align 1
  %2728 = and i32 %2722, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %43, align 1
  %2733 = xor i32 %2722, %2719
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %44, align 1
  %2737 = zext i1 %2725 to i8
  store i8 %2737, i8* %45, align 1
  %2738 = lshr i32 %2722, 31
  %2739 = trunc i32 %2738 to i8
  store i8 %2739, i8* %46, align 1
  %2740 = lshr i32 %2719, 31
  %2741 = xor i32 %2738, %2740
  %2742 = add nuw nsw i32 %2741, %2738
  %2743 = icmp eq i32 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %47, align 1
  %2745 = add i64 %2613, 65
  store i64 %2745, i64* %3, align 8
  store i32 %2722, i32* %2718, align 4
  %2746 = load i32, i32* %R8D.i393, align 4
  %2747 = load i64, i64* %3, align 8
  %2748 = sext i32 %2746 to i64
  store i64 %2748, i64* %RDX.i1307, align 8
  %2749 = load i64, i64* %RSI.i1301, align 8
  %2750 = shl nsw i64 %2748, 2
  %2751 = add nsw i64 %2750, 100
  %2752 = add i64 %2751, %2749
  %2753 = load i32, i32* %ECX.i458, align 4
  %2754 = add i64 %2747, 7
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2752 to i32*
  store i32 %2753, i32* %2755, align 4
  %2756 = load i64, i64* %RBP.i, align 8
  %2757 = add i64 %2756, -28
  %2758 = load i64, i64* %3, align 8
  %2759 = add i64 %2758, 4
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2757 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = sext i32 %2761 to i64
  %2763 = mul nsw i64 %2762, 744
  %2764 = load i64, i64* %RAX.i1311, align 8
  %2765 = add i64 %2763, %2764
  %2766 = lshr i64 %2765, 63
  %2767 = add i64 %2765, 96
  store i64 %2767, i64* %RSI.i1301, align 8
  %2768 = icmp ugt i64 %2765, -97
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %42, align 1
  %2770 = trunc i64 %2767 to i32
  %2771 = and i32 %2770, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %43, align 1
  %2776 = xor i64 %2767, %2765
  %2777 = lshr i64 %2776, 4
  %2778 = trunc i64 %2777 to i8
  %2779 = and i8 %2778, 1
  store i8 %2779, i8* %44, align 1
  %2780 = icmp eq i64 %2767, 0
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %45, align 1
  %2782 = lshr i64 %2767, 63
  %2783 = trunc i64 %2782 to i8
  store i8 %2783, i8* %46, align 1
  %2784 = xor i64 %2782, %2766
  %2785 = add nuw nsw i64 %2784, %2782
  %2786 = icmp eq i64 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %47, align 1
  %2788 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2788, i64* %RDX.i1307, align 8
  %2789 = add i64 %2758, 32
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i64*
  store i64 %2767, i64* %2790, align 8
  %2791 = load i64, i64* %RBP.i, align 8
  %2792 = add i64 %2791, -28
  %2793 = load i64, i64* %3, align 8
  %2794 = add i64 %2793, 4
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2792 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = sext i32 %2796 to i64
  %2798 = mul nsw i64 %2797, 744
  store i64 %2798, i64* %RDX.i1307, align 8
  %2799 = lshr i64 %2798, 63
  %2800 = load i64, i64* %RAX.i1311, align 8
  %2801 = add i64 %2798, %2800
  store i64 %2801, i64* %RSI.i1301, align 8
  %2802 = icmp ult i64 %2801, %2800
  %2803 = icmp ult i64 %2801, %2798
  %2804 = or i1 %2802, %2803
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %42, align 1
  %2806 = trunc i64 %2801 to i32
  %2807 = and i32 %2806, 255
  %2808 = tail call i32 @llvm.ctpop.i32(i32 %2807)
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = xor i8 %2810, 1
  store i8 %2811, i8* %43, align 1
  %2812 = xor i64 %2798, %2800
  %2813 = xor i64 %2812, %2801
  %2814 = lshr i64 %2813, 4
  %2815 = trunc i64 %2814 to i8
  %2816 = and i8 %2815, 1
  store i8 %2816, i8* %44, align 1
  %2817 = icmp eq i64 %2801, 0
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %45, align 1
  %2819 = lshr i64 %2801, 63
  %2820 = trunc i64 %2819 to i8
  store i8 %2820, i8* %46, align 1
  %2821 = lshr i64 %2800, 63
  %2822 = xor i64 %2819, %2821
  %2823 = xor i64 %2819, %2799
  %2824 = add nuw nsw i64 %2822, %2823
  %2825 = icmp eq i64 %2824, 2
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %47, align 1
  %2827 = add i64 %2801, 96
  %2828 = add i64 %2793, 20
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RCX.i1309, align 8
  %2832 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2832, i64* %RDX.i1307, align 8
  %2833 = add i64 %2832, 16
  store i64 %2833, i64* %RSI.i1301, align 8
  %2834 = icmp ugt i64 %2832, -17
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %42, align 1
  %2836 = trunc i64 %2833 to i32
  %2837 = and i32 %2836, 255
  %2838 = tail call i32 @llvm.ctpop.i32(i32 %2837)
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = xor i8 %2840, 1
  store i8 %2841, i8* %43, align 1
  %2842 = xor i64 %2832, 16
  %2843 = xor i64 %2842, %2833
  %2844 = lshr i64 %2843, 4
  %2845 = trunc i64 %2844 to i8
  %2846 = and i8 %2845, 1
  store i8 %2846, i8* %44, align 1
  %2847 = icmp eq i64 %2833, 0
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %45, align 1
  %2849 = lshr i64 %2833, 63
  %2850 = trunc i64 %2849 to i8
  store i8 %2850, i8* %46, align 1
  %2851 = lshr i64 %2832, 63
  %2852 = xor i64 %2849, %2851
  %2853 = add nuw nsw i64 %2852, %2849
  %2854 = icmp eq i64 %2853, 2
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %47, align 1
  store i64 %2833, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %2856 = add i64 %2832, 8
  %2857 = add i64 %2793, 46
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i32*
  store i32 %2830, i32* %2858, align 4
  %2859 = load i64, i64* %RBP.i, align 8
  %2860 = add i64 %2859, -4
  %2861 = load i64, i64* %3, align 8
  %2862 = add i64 %2861, 4
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2860 to i32*
  %2864 = load i32, i32* %2863, align 4
  %2865 = sext i32 %2864 to i64
  store i64 %2865, i64* %RDX.i1307, align 8
  %2866 = shl nsw i64 %2865, 2
  %2867 = add nsw i64 %2866, 11187184
  %2868 = add i64 %2861, 11
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RCX.i1309, align 8
  %2872 = add i64 %2859, -28
  %2873 = add i64 %2861, 15
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i32*
  %2875 = load i32, i32* %2874, align 4
  %2876 = sext i32 %2875 to i64
  %2877 = mul nsw i64 %2876, 744
  store i64 %2877, i64* %RDX.i1307, align 8
  %2878 = lshr i64 %2877, 63
  %2879 = load i64, i64* %RAX.i1311, align 8
  %2880 = add i64 %2877, %2879
  store i64 %2880, i64* %RSI.i1301, align 8
  %2881 = icmp ult i64 %2880, %2879
  %2882 = icmp ult i64 %2880, %2877
  %2883 = or i1 %2881, %2882
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %42, align 1
  %2885 = trunc i64 %2880 to i32
  %2886 = and i32 %2885, 255
  %2887 = tail call i32 @llvm.ctpop.i32(i32 %2886)
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = xor i8 %2889, 1
  store i8 %2890, i8* %43, align 1
  %2891 = xor i64 %2877, %2879
  %2892 = xor i64 %2891, %2880
  %2893 = lshr i64 %2892, 4
  %2894 = trunc i64 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %44, align 1
  %2896 = icmp eq i64 %2880, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %45, align 1
  %2898 = lshr i64 %2880, 63
  %2899 = trunc i64 %2898 to i8
  store i8 %2899, i8* %46, align 1
  %2900 = lshr i64 %2879, 63
  %2901 = xor i64 %2898, %2900
  %2902 = xor i64 %2898, %2878
  %2903 = add nuw nsw i64 %2901, %2902
  %2904 = icmp eq i64 %2903, 2
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %47, align 1
  %2906 = add i64 %2861, 32
  store i64 %2906, i64* %3, align 8
  %2907 = load i32, i32* %2874, align 4
  %2908 = sext i32 %2907 to i64
  %2909 = mul nsw i64 %2908, 744
  store i64 %2909, i64* %RDX.i1307, align 8
  %2910 = lshr i64 %2909, 63
  %2911 = add i64 %2909, %2879
  store i64 %2911, i64* %RDI.i1299, align 8
  %2912 = icmp ult i64 %2911, %2879
  %2913 = icmp ult i64 %2911, %2909
  %2914 = or i1 %2912, %2913
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %42, align 1
  %2916 = trunc i64 %2911 to i32
  %2917 = and i32 %2916, 255
  %2918 = tail call i32 @llvm.ctpop.i32(i32 %2917)
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  %2921 = xor i8 %2920, 1
  store i8 %2921, i8* %43, align 1
  %2922 = xor i64 %2909, %2879
  %2923 = xor i64 %2922, %2911
  %2924 = lshr i64 %2923, 4
  %2925 = trunc i64 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %44, align 1
  %2927 = icmp eq i64 %2911, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %45, align 1
  %2929 = lshr i64 %2911, 63
  %2930 = trunc i64 %2929 to i8
  store i8 %2930, i8* %46, align 1
  %2931 = xor i64 %2929, %2900
  %2932 = xor i64 %2929, %2910
  %2933 = add nuw nsw i64 %2931, %2932
  %2934 = icmp eq i64 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %47, align 1
  %2936 = add i64 %2911, 96
  %2937 = add i64 %2861, 49
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %2715, align 8
  %2941 = add i32 %2939, 1
  %2942 = zext i32 %2941 to i64
  store i64 %2942, i64* %2721, align 8
  %2943 = icmp eq i32 %2939, -1
  %2944 = icmp eq i32 %2941, 0
  %2945 = or i1 %2943, %2944
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %42, align 1
  %2947 = and i32 %2941, 255
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2947)
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  store i8 %2951, i8* %43, align 1
  %2952 = xor i32 %2941, %2939
  %2953 = lshr i32 %2952, 4
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  store i8 %2955, i8* %44, align 1
  %2956 = zext i1 %2944 to i8
  store i8 %2956, i8* %45, align 1
  %2957 = lshr i32 %2941, 31
  %2958 = trunc i32 %2957 to i8
  store i8 %2958, i8* %46, align 1
  %2959 = lshr i32 %2939, 31
  %2960 = xor i32 %2957, %2959
  %2961 = add nuw nsw i32 %2960, %2957
  %2962 = icmp eq i32 %2961, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %47, align 1
  %2964 = add i64 %2861, 60
  store i64 %2964, i64* %3, align 8
  store i32 %2941, i32* %2938, align 4
  %2965 = load i32, i32* %R8D.i393, align 4
  %2966 = load i64, i64* %3, align 8
  %2967 = sext i32 %2965 to i64
  store i64 %2967, i64* %RDX.i1307, align 8
  %2968 = load i64, i64* %RSI.i1301, align 8
  %2969 = shl nsw i64 %2967, 2
  %2970 = add nsw i64 %2969, 100
  %2971 = add i64 %2970, %2968
  %2972 = load i32, i32* %ECX.i458, align 4
  %2973 = add i64 %2966, 7
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2971 to i32*
  store i32 %2972, i32* %2974, align 4
  %2975 = load i64, i64* %3, align 8
  %2976 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RCX.i1309, align 8
  %2978 = load i64, i64* %RBP.i, align 8
  %2979 = add i64 %2978, -4
  %2980 = add i64 %2975, 11
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = add i32 %2982, -20
  %2984 = zext i32 %2983 to i64
  store i64 %2984, i64* %2715, align 8
  %2985 = icmp ult i32 %2982, 20
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %42, align 1
  %2987 = and i32 %2983, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %43, align 1
  %2992 = xor i32 %2982, 16
  %2993 = xor i32 %2992, %2983
  %2994 = lshr i32 %2993, 4
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  store i8 %2996, i8* %44, align 1
  %2997 = icmp eq i32 %2983, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %45, align 1
  %2999 = lshr i32 %2983, 31
  %3000 = trunc i32 %2999 to i8
  store i8 %3000, i8* %46, align 1
  %3001 = lshr i32 %2982, 31
  %3002 = xor i32 %2999, %3001
  %3003 = add nuw nsw i32 %3002, %3001
  %3004 = icmp eq i32 %3003, 2
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %47, align 1
  %3006 = sext i32 %2983 to i64
  store i64 %3006, i64* %RDX.i1307, align 8
  %3007 = shl nsw i64 %3006, 2
  %3008 = add nsw i64 %3007, 11187184
  %3009 = add i64 %2975, 26
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = sext i32 %3011 to i64
  %3013 = mul nsw i64 %3012, 744
  store i64 %3013, i64* %RDX.i1307, align 8
  %3014 = lshr i64 %3013, 63
  %3015 = load i64, i64* %RAX.i1311, align 8
  %3016 = add i64 %3013, %3015
  store i64 %3016, i64* %RAX.i1311, align 8
  %3017 = icmp ult i64 %3016, %3015
  %3018 = icmp ult i64 %3016, %3013
  %3019 = or i1 %3017, %3018
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %42, align 1
  %3021 = trunc i64 %3016 to i32
  %3022 = and i32 %3021, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %43, align 1
  %3027 = xor i64 %3013, %3015
  %3028 = xor i64 %3027, %3016
  %3029 = lshr i64 %3028, 4
  %3030 = trunc i64 %3029 to i8
  %3031 = and i8 %3030, 1
  store i8 %3031, i8* %44, align 1
  %3032 = icmp eq i64 %3016, 0
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %45, align 1
  %3034 = lshr i64 %3016, 63
  %3035 = trunc i64 %3034 to i8
  store i8 %3035, i8* %46, align 1
  %3036 = lshr i64 %3015, 63
  %3037 = xor i64 %3034, %3036
  %3038 = xor i64 %3034, %3014
  %3039 = add nuw nsw i64 %3037, %3038
  %3040 = icmp eq i64 %3039, 2
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %47, align 1
  %3042 = add i64 %3016, 740
  %3043 = load i32, i32* %ECX.i458, align 4
  %3044 = add i64 %2975, 42
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3042 to i32*
  store i32 %3043, i32* %3045, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_40afbb

block_.L_40afbb:                                  ; preds = %block_.L_40ae49, %block_40ae9b, %block_40ae63
  %3046 = phi i64 [ %.pre23, %block_40ae9b ], [ %2572, %block_40ae63 ], [ %2482, %block_.L_40ae49 ]
  %3047 = add i64 %3046, 5
  store i64 %3047, i64* %3, align 8
  br label %block_.L_40afc0

block_.L_40afc0:                                  ; preds = %block_.L_40afbb, %block_.L_40ae23
  %storemerge17 = phi i64 [ %2424, %block_.L_40ae23 ], [ %3047, %block_.L_40afbb ]
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -4
  %3050 = add i64 %storemerge17, 3
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = add i32 %3052, 1
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RAX.i1311, align 8
  %3055 = icmp eq i32 %3052, -1
  %3056 = icmp eq i32 %3053, 0
  %3057 = or i1 %3055, %3056
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %42, align 1
  %3059 = and i32 %3053, 255
  %3060 = tail call i32 @llvm.ctpop.i32(i32 %3059)
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = xor i8 %3062, 1
  store i8 %3063, i8* %43, align 1
  %3064 = xor i32 %3053, %3052
  %3065 = lshr i32 %3064, 4
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  store i8 %3067, i8* %44, align 1
  %3068 = zext i1 %3056 to i8
  store i8 %3068, i8* %45, align 1
  %3069 = lshr i32 %3053, 31
  %3070 = trunc i32 %3069 to i8
  store i8 %3070, i8* %46, align 1
  %3071 = lshr i32 %3052, 31
  %3072 = xor i32 %3069, %3071
  %3073 = add nuw nsw i32 %3072, %3069
  %3074 = icmp eq i32 %3073, 2
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %47, align 1
  %3076 = sext i32 %3053 to i64
  store i64 %3076, i64* %RCX.i1309, align 8
  %3077 = add nsw i64 %3076, 12099168
  %3078 = add i64 %storemerge17, 17
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i8*
  %3080 = load i8, i8* %3079, align 1
  %3081 = zext i8 %3080 to i64
  store i64 %3081, i64* %RAX.i1311, align 8
  %3082 = zext i8 %3080 to i32
  store i8 0, i8* %42, align 1
  %3083 = tail call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  store i8 %3086, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %3087 = icmp eq i8 %3080, 0
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %.v32 = select i1 %3087, i64 26, i64 158
  %3089 = add i64 %storemerge17, %.v32
  store i64 %3089, i64* %3, align 8
  br i1 %3087, label %block_40afda, label %block_.L_40b05e

block_40afda:                                     ; preds = %block_.L_40afc0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %3090 = add i64 %3048, -8
  %3091 = add i64 %3089, 19
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = sext i32 %3093 to i64
  %3095 = mul nsw i64 %3094, 744
  store i64 %3095, i64* %RCX.i1309, align 8
  %3096 = lshr i64 %3095, 63
  %3097 = add i64 %3095, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3097, i64* %RAX.i1311, align 8
  %3098 = icmp ult i64 %3097, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3099 = icmp ult i64 %3097, %3095
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %42, align 1
  %3102 = trunc i64 %3097 to i32
  %3103 = and i32 %3102, 248
  %3104 = tail call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  store i8 %3107, i8* %43, align 1
  %3108 = xor i64 %3095, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3109 = xor i64 %3108, %3097
  %3110 = lshr i64 %3109, 4
  %3111 = trunc i64 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %44, align 1
  %3113 = icmp eq i64 %3097, 0
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %45, align 1
  %3115 = lshr i64 %3097, 63
  %3116 = trunc i64 %3115 to i8
  store i8 %3116, i8* %46, align 1
  %3117 = xor i64 %3115, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3118 = xor i64 %3115, %3096
  %3119 = add nuw nsw i64 %3117, %3118
  %3120 = icmp eq i64 %3119, 2
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %47, align 1
  %3122 = add i64 %3095, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3123 = add i64 %3089, 33
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  %3125 = load i32, i32* %3124, align 4
  %3126 = add i32 %3125, -20
  %3127 = icmp ult i32 %3125, 20
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %42, align 1
  %3129 = and i32 %3126, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %43, align 1
  %3134 = xor i32 %3125, 16
  %3135 = xor i32 %3134, %3126
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  store i8 %3138, i8* %44, align 1
  %3139 = icmp eq i32 %3126, 0
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %45, align 1
  %3141 = lshr i32 %3126, 31
  %3142 = trunc i32 %3141 to i8
  store i8 %3142, i8* %46, align 1
  %3143 = lshr i32 %3125, 31
  %3144 = xor i32 %3141, %3143
  %3145 = add nuw nsw i32 %3144, %3143
  %3146 = icmp eq i32 %3145, 2
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %47, align 1
  %3148 = icmp ne i8 %3142, 0
  %3149 = xor i1 %3148, %3146
  %.v35 = select i1 %3149, i64 39, i64 94
  %3150 = add i64 %3089, %.v35
  store i64 %3150, i64* %3, align 8
  br i1 %3149, label %block_40b001, label %block_.L_40b038

block_40b001:                                     ; preds = %block_40afda
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %3151 = load i64, i64* %RBP.i, align 8
  %3152 = add i64 %3151, -4
  %3153 = add i64 %3150, 13
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = add i32 %3155, 1
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RCX.i1309, align 8
  %3158 = icmp eq i32 %3155, -1
  %3159 = icmp eq i32 %3156, 0
  %3160 = or i1 %3158, %3159
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %42, align 1
  %3162 = and i32 %3156, 255
  %3163 = tail call i32 @llvm.ctpop.i32(i32 %3162)
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  %3166 = xor i8 %3165, 1
  store i8 %3166, i8* %43, align 1
  %3167 = xor i32 %3156, %3155
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %44, align 1
  %3171 = zext i1 %3159 to i8
  store i8 %3171, i8* %45, align 1
  %3172 = lshr i32 %3156, 31
  %3173 = trunc i32 %3172 to i8
  store i8 %3173, i8* %46, align 1
  %3174 = lshr i32 %3155, 31
  %3175 = xor i32 %3172, %3174
  %3176 = add nuw nsw i32 %3175, %3172
  %3177 = icmp eq i32 %3176, 2
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %47, align 1
  %3179 = add i64 %3151, -8
  %3180 = add i64 %3150, 20
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i32*
  %3182 = load i32, i32* %3181, align 4
  %3183 = sext i32 %3182 to i64
  %3184 = mul nsw i64 %3183, 744
  store i64 %3184, i64* %RDX.i1307, align 8
  %3185 = lshr i64 %3184, 63
  %3186 = add i64 %3184, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3186, i64* %RSI.i1301, align 8
  %3187 = icmp ult i64 %3186, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3188 = icmp ult i64 %3186, %3184
  %3189 = or i1 %3187, %3188
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %42, align 1
  %3191 = trunc i64 %3186 to i32
  %3192 = and i32 %3191, 248
  %3193 = tail call i32 @llvm.ctpop.i32(i32 %3192)
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  %3196 = xor i8 %3195, 1
  store i8 %3196, i8* %43, align 1
  %3197 = xor i64 %3184, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3198 = xor i64 %3197, %3186
  %3199 = lshr i64 %3198, 4
  %3200 = trunc i64 %3199 to i8
  %3201 = and i8 %3200, 1
  store i8 %3201, i8* %44, align 1
  %3202 = icmp eq i64 %3186, 0
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %45, align 1
  %3204 = lshr i64 %3186, 63
  %3205 = trunc i64 %3204 to i8
  store i8 %3205, i8* %46, align 1
  %3206 = xor i64 %3204, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3207 = xor i64 %3204, %3185
  %3208 = add nuw nsw i64 %3206, %3207
  %3209 = icmp eq i64 %3208, 2
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %47, align 1
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -8
  %3213 = add i64 %3150, 37
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = sext i32 %3215 to i64
  %3217 = mul nsw i64 %3216, 744
  store i64 %3217, i64* %RDX.i1307, align 8
  %3218 = lshr i64 %3217, 63
  %3219 = load i64, i64* %RAX.i1311, align 8
  %3220 = add i64 %3217, %3219
  store i64 %3220, i64* %RAX.i1311, align 8
  %3221 = icmp ult i64 %3220, %3219
  %3222 = icmp ult i64 %3220, %3217
  %3223 = or i1 %3221, %3222
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %42, align 1
  %3225 = trunc i64 %3220 to i32
  %3226 = and i32 %3225, 255
  %3227 = tail call i32 @llvm.ctpop.i32(i32 %3226)
  %3228 = trunc i32 %3227 to i8
  %3229 = and i8 %3228, 1
  %3230 = xor i8 %3229, 1
  store i8 %3230, i8* %43, align 1
  %3231 = xor i64 %3217, %3219
  %3232 = xor i64 %3231, %3220
  %3233 = lshr i64 %3232, 4
  %3234 = trunc i64 %3233 to i8
  %3235 = and i8 %3234, 1
  store i8 %3235, i8* %44, align 1
  %3236 = icmp eq i64 %3220, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %45, align 1
  %3238 = lshr i64 %3220, 63
  %3239 = trunc i64 %3238 to i8
  store i8 %3239, i8* %46, align 1
  %3240 = lshr i64 %3219, 63
  %3241 = xor i64 %3238, %3240
  %3242 = xor i64 %3238, %3218
  %3243 = add nuw nsw i64 %3241, %3242
  %3244 = icmp eq i64 %3243, 2
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %47, align 1
  %3246 = add i64 %3220, 12
  %3247 = add i64 %3150, 51
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to i32*
  %3249 = load i32, i32* %3248, align 4
  %3250 = sext i32 %3249 to i64
  store i64 %3250, i64* %RAX.i1311, align 8
  %ECX.i207 = bitcast %union.anon* %11 to i32*
  %3251 = load i64, i64* %RSI.i1301, align 8
  %3252 = shl nsw i64 %3250, 2
  %3253 = add i64 %3251, 16
  %3254 = add i64 %3253, %3252
  %3255 = load i32, i32* %ECX.i207, align 4
  %3256 = add i64 %3150, 55
  store i64 %3256, i64* %3, align 8
  %3257 = inttoptr i64 %3254 to i32*
  store i32 %3255, i32* %3257, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_40b038

block_.L_40b038:                                  ; preds = %block_40afda, %block_40b001
  %3258 = phi i64 [ %3150, %block_40afda ], [ %.pre24, %block_40b001 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %3259 = load i64, i64* %RBP.i, align 8
  %3260 = add i64 %3259, -8
  %3261 = add i64 %3258, 14
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i32*
  %3263 = load i32, i32* %3262, align 4
  %3264 = sext i32 %3263 to i64
  %3265 = mul nsw i64 %3264, 744
  store i64 %3265, i64* %RCX.i1309, align 8
  %3266 = lshr i64 %3265, 63
  %3267 = add i64 %3265, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3267, i64* %RAX.i1311, align 8
  %3268 = icmp ult i64 %3267, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3269 = icmp ult i64 %3267, %3265
  %3270 = or i1 %3268, %3269
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %42, align 1
  %3272 = trunc i64 %3267 to i32
  %3273 = and i32 %3272, 248
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %43, align 1
  %3278 = xor i64 %3265, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3279 = xor i64 %3278, %3267
  %3280 = lshr i64 %3279, 4
  %3281 = trunc i64 %3280 to i8
  %3282 = and i8 %3281, 1
  store i8 %3282, i8* %44, align 1
  %3283 = icmp eq i64 %3267, 0
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %45, align 1
  %3285 = lshr i64 %3267, 63
  %3286 = trunc i64 %3285 to i8
  store i8 %3286, i8* %46, align 1
  %3287 = xor i64 %3285, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3288 = xor i64 %3285, %3266
  %3289 = add nuw nsw i64 %3287, %3288
  %3290 = icmp eq i64 %3289, 2
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %47, align 1
  %3292 = add i64 %3265, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3293 = add i64 %3258, 27
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  %3295 = load i32, i32* %3294, align 4
  %3296 = add i32 %3295, 1
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RDX.i1307, align 8
  %3298 = icmp eq i32 %3295, -1
  %3299 = icmp eq i32 %3296, 0
  %3300 = or i1 %3298, %3299
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %42, align 1
  %3302 = and i32 %3296, 255
  %3303 = tail call i32 @llvm.ctpop.i32(i32 %3302)
  %3304 = trunc i32 %3303 to i8
  %3305 = and i8 %3304, 1
  %3306 = xor i8 %3305, 1
  store i8 %3306, i8* %43, align 1
  %3307 = xor i32 %3296, %3295
  %3308 = lshr i32 %3307, 4
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  store i8 %3310, i8* %44, align 1
  %3311 = zext i1 %3299 to i8
  store i8 %3311, i8* %45, align 1
  %3312 = lshr i32 %3296, 31
  %3313 = trunc i32 %3312 to i8
  store i8 %3313, i8* %46, align 1
  %3314 = lshr i32 %3295, 31
  %3315 = xor i32 %3312, %3314
  %3316 = add nuw nsw i32 %3315, %3312
  %3317 = icmp eq i32 %3316, 2
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %47, align 1
  %3319 = add i64 %3258, 33
  store i64 %3319, i64* %3, align 8
  store i32 %3296, i32* %3294, align 4
  %3320 = load i64, i64* %3, align 8
  %3321 = add i64 %3320, 335
  br label %block_.L_40b1a8

block_.L_40b05e:                                  ; preds = %block_.L_40afc0
  %3322 = add i64 %3089, 3
  store i64 %3322, i64* %3, align 8
  %3323 = load i32, i32* %3051, align 4
  %3324 = add i32 %3323, 1
  %3325 = zext i32 %3324 to i64
  store i64 %3325, i64* %RAX.i1311, align 8
  %3326 = icmp eq i32 %3323, -1
  %3327 = icmp eq i32 %3324, 0
  %3328 = or i1 %3326, %3327
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %42, align 1
  %3330 = and i32 %3324, 255
  %3331 = tail call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  store i8 %3334, i8* %43, align 1
  %3335 = xor i32 %3324, %3323
  %3336 = lshr i32 %3335, 4
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  store i8 %3338, i8* %44, align 1
  %3339 = zext i1 %3327 to i8
  store i8 %3339, i8* %45, align 1
  %3340 = lshr i32 %3324, 31
  %3341 = trunc i32 %3340 to i8
  store i8 %3341, i8* %46, align 1
  %3342 = lshr i32 %3323, 31
  %3343 = xor i32 %3340, %3342
  %3344 = add nuw nsw i32 %3343, %3340
  %3345 = icmp eq i32 %3344, 2
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %47, align 1
  %3347 = sext i32 %3324 to i64
  store i64 %3347, i64* %RCX.i1309, align 8
  %3348 = add nsw i64 %3347, 12099168
  %3349 = add i64 %3089, 17
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i8*
  %3351 = load i8, i8* %3350, align 1
  %3352 = zext i8 %3351 to i64
  store i64 %3352, i64* %RAX.i1311, align 8
  %3353 = zext i8 %3351 to i32
  %3354 = add i64 %3048, -16
  %3355 = add i64 %3089, 20
  store i64 %3355, i64* %3, align 8
  %3356 = inttoptr i64 %3354 to i32*
  %3357 = load i32, i32* %3356, align 4
  %3358 = sub i32 %3353, %3357
  %3359 = icmp ult i32 %3353, %3357
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %42, align 1
  %3361 = and i32 %3358, 255
  %3362 = tail call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  store i8 %3365, i8* %43, align 1
  %3366 = xor i32 %3357, %3353
  %3367 = xor i32 %3366, %3358
  %3368 = lshr i32 %3367, 4
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  store i8 %3370, i8* %44, align 1
  %3371 = icmp eq i32 %3358, 0
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %45, align 1
  %3373 = lshr i32 %3358, 31
  %3374 = trunc i32 %3373 to i8
  store i8 %3374, i8* %46, align 1
  %3375 = lshr i32 %3357, 31
  %3376 = add nuw nsw i32 %3373, %3375
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %47, align 1
  %.v33 = select i1 %3371, i64 26, i64 325
  %3379 = add i64 %3089, %.v33
  store i64 %3379, i64* %3, align 8
  br i1 %3371, label %block_40b078, label %block_.L_40b1a3

block_40b078:                                     ; preds = %block_.L_40b05e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %3380 = add i64 %3379, 13
  store i64 %3380, i64* %3, align 8
  %3381 = load i32, i32* %3051, align 4
  %3382 = add i32 %3381, 1
  %3383 = zext i32 %3382 to i64
  store i64 %3383, i64* %RCX.i1309, align 8
  %3384 = icmp eq i32 %3381, -1
  %3385 = icmp eq i32 %3382, 0
  %3386 = or i1 %3384, %3385
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %42, align 1
  %3388 = and i32 %3382, 255
  %3389 = tail call i32 @llvm.ctpop.i32(i32 %3388)
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = xor i8 %3391, 1
  store i8 %3392, i8* %43, align 1
  %3393 = xor i32 %3382, %3381
  %3394 = lshr i32 %3393, 4
  %3395 = trunc i32 %3394 to i8
  %3396 = and i8 %3395, 1
  store i8 %3396, i8* %44, align 1
  %3397 = zext i1 %3385 to i8
  store i8 %3397, i8* %45, align 1
  %3398 = lshr i32 %3382, 31
  %3399 = trunc i32 %3398 to i8
  store i8 %3399, i8* %46, align 1
  %3400 = lshr i32 %3381, 31
  %3401 = xor i32 %3398, %3400
  %3402 = add nuw nsw i32 %3401, %3398
  %3403 = icmp eq i32 %3402, 2
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %47, align 1
  %ECX.i165 = bitcast %union.anon* %11 to i32*
  %3405 = sext i32 %3382 to i64
  store i64 %3405, i64* %RDX.i1307, align 8
  %3406 = shl nsw i64 %3405, 2
  %3407 = add nsw i64 %3406, 11187184
  %3408 = add i64 %3379, 27
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = sext i32 %3410 to i64
  %3412 = mul nsw i64 %3411, 744
  store i64 %3412, i64* %RDX.i1307, align 8
  %3413 = lshr i64 %3412, 63
  %3414 = add i64 %3412, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3414, i64* %RAX.i1311, align 8
  %3415 = icmp ult i64 %3414, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3416 = icmp ult i64 %3414, %3412
  %3417 = or i1 %3415, %3416
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %42, align 1
  %3419 = trunc i64 %3414 to i32
  %3420 = and i32 %3419, 248
  %3421 = tail call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  store i8 %3424, i8* %43, align 1
  %3425 = xor i64 %3412, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3426 = xor i64 %3425, %3414
  %3427 = lshr i64 %3426, 4
  %3428 = trunc i64 %3427 to i8
  %3429 = and i8 %3428, 1
  store i8 %3429, i8* %44, align 1
  %3430 = icmp eq i64 %3414, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %45, align 1
  %3432 = lshr i64 %3414, 63
  %3433 = trunc i64 %3432 to i8
  store i8 %3433, i8* %46, align 1
  %3434 = xor i64 %3432, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3435 = xor i64 %3432, %3413
  %3436 = add nuw nsw i64 %3434, %3435
  %3437 = icmp eq i64 %3436, 2
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %47, align 1
  %3439 = add i64 %3412, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3440 = add i64 %3379, 43
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = zext i32 %3442 to i64
  store i64 %3443, i64* %RCX.i1309, align 8
  %3444 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3445 = sub i32 %3442, %3444
  %3446 = icmp ult i32 %3442, %3444
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %42, align 1
  %3448 = and i32 %3445, 255
  %3449 = tail call i32 @llvm.ctpop.i32(i32 %3448)
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = xor i8 %3451, 1
  store i8 %3452, i8* %43, align 1
  %3453 = xor i32 %3444, %3442
  %3454 = xor i32 %3453, %3445
  %3455 = lshr i32 %3454, 4
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  store i8 %3457, i8* %44, align 1
  %3458 = icmp eq i32 %3445, 0
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %45, align 1
  %3460 = lshr i32 %3445, 31
  %3461 = trunc i32 %3460 to i8
  store i8 %3461, i8* %46, align 1
  %3462 = lshr i32 %3442, 31
  %3463 = lshr i32 %3444, 31
  %3464 = xor i32 %3463, %3462
  %3465 = xor i32 %3460, %3462
  %3466 = add nuw nsw i32 %3465, %3464
  %3467 = icmp eq i32 %3466, 2
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %47, align 1
  %.v34 = select i1 %3458, i64 299, i64 56
  %3469 = add i64 %3379, %.v34
  store i64 %3469, i64* %3, align 8
  br i1 %3458, label %block_.L_40b1a3, label %block_40b0b0

block_40b0b0:                                     ; preds = %block_40b078
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1311, align 8
  %3470 = load i64, i64* %RBP.i, align 8
  %3471 = add i64 %3470, -4
  %3472 = add i64 %3469, 13
  store i64 %3472, i64* %3, align 8
  %3473 = inttoptr i64 %3471 to i32*
  %3474 = load i32, i32* %3473, align 4
  %3475 = add i32 %3474, 1
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RCX.i1309, align 8
  %3477 = icmp eq i32 %3474, -1
  %3478 = icmp eq i32 %3475, 0
  %3479 = or i1 %3477, %3478
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %42, align 1
  %3481 = and i32 %3475, 255
  %3482 = tail call i32 @llvm.ctpop.i32(i32 %3481)
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = xor i8 %3484, 1
  store i8 %3485, i8* %43, align 1
  %3486 = xor i32 %3475, %3474
  %3487 = lshr i32 %3486, 4
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  store i8 %3489, i8* %44, align 1
  %3490 = zext i1 %3478 to i8
  store i8 %3490, i8* %45, align 1
  %3491 = lshr i32 %3475, 31
  %3492 = trunc i32 %3491 to i8
  store i8 %3492, i8* %46, align 1
  %3493 = lshr i32 %3474, 31
  %3494 = xor i32 %3491, %3493
  %3495 = add nuw nsw i32 %3494, %3491
  %3496 = icmp eq i32 %3495, 2
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %47, align 1
  %3498 = sext i32 %3475 to i64
  store i64 %3498, i64* %RDX.i1307, align 8
  %3499 = shl nsw i64 %3498, 2
  %3500 = add nsw i64 %3499, 11187184
  %3501 = add i64 %3469, 26
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i32*
  %3503 = load i32, i32* %3502, align 4
  %3504 = zext i32 %3503 to i64
  store i64 %3504, i64* %RCX.i1309, align 8
  %3505 = add i64 %3470, -32
  %3506 = add i64 %3469, 29
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i32*
  store i32 %3503, i32* %3507, align 4
  %3508 = load i64, i64* %RBP.i, align 8
  %3509 = add i64 %3508, -4
  %3510 = load i64, i64* %3, align 8
  %3511 = add i64 %3510, 3
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3509 to i32*
  %3513 = load i32, i32* %3512, align 4
  %3514 = add i32 %3513, 1
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RCX.i1309, align 8
  %3516 = icmp eq i32 %3513, -1
  %3517 = icmp eq i32 %3514, 0
  %3518 = or i1 %3516, %3517
  %3519 = zext i1 %3518 to i8
  store i8 %3519, i8* %42, align 1
  %3520 = and i32 %3514, 255
  %3521 = tail call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  store i8 %3524, i8* %43, align 1
  %3525 = xor i32 %3514, %3513
  %3526 = lshr i32 %3525, 4
  %3527 = trunc i32 %3526 to i8
  %3528 = and i8 %3527, 1
  store i8 %3528, i8* %44, align 1
  %3529 = zext i1 %3517 to i8
  store i8 %3529, i8* %45, align 1
  %3530 = lshr i32 %3514, 31
  %3531 = trunc i32 %3530 to i8
  store i8 %3531, i8* %46, align 1
  %3532 = lshr i32 %3513, 31
  %3533 = xor i32 %3530, %3532
  %3534 = add nuw nsw i32 %3533, %3530
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %47, align 1
  %3537 = sext i32 %3514 to i64
  store i64 %3537, i64* %RDX.i1307, align 8
  %3538 = shl nsw i64 %3537, 2
  %3539 = add nsw i64 %3538, 11187184
  %3540 = add i64 %3510, 16
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %RCX.i1309, align 8
  %3544 = add i64 %3508, -8
  %3545 = add i64 %3510, 20
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  %3547 = load i32, i32* %3546, align 4
  %3548 = sext i32 %3547 to i64
  %3549 = mul nsw i64 %3548, 744
  store i64 %3549, i64* %RDX.i1307, align 8
  %3550 = lshr i64 %3549, 63
  %3551 = load i64, i64* %RAX.i1311, align 8
  %3552 = add i64 %3549, %3551
  store i64 %3552, i64* %RSI.i1301, align 8
  %3553 = icmp ult i64 %3552, %3551
  %3554 = icmp ult i64 %3552, %3549
  %3555 = or i1 %3553, %3554
  %3556 = zext i1 %3555 to i8
  store i8 %3556, i8* %42, align 1
  %3557 = trunc i64 %3552 to i32
  %3558 = and i32 %3557, 255
  %3559 = tail call i32 @llvm.ctpop.i32(i32 %3558)
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  store i8 %3562, i8* %43, align 1
  %3563 = xor i64 %3549, %3551
  %3564 = xor i64 %3563, %3552
  %3565 = lshr i64 %3564, 4
  %3566 = trunc i64 %3565 to i8
  %3567 = and i8 %3566, 1
  store i8 %3567, i8* %44, align 1
  %3568 = icmp eq i64 %3552, 0
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %45, align 1
  %3570 = lshr i64 %3552, 63
  %3571 = trunc i64 %3570 to i8
  store i8 %3571, i8* %46, align 1
  %3572 = lshr i64 %3551, 63
  %3573 = xor i64 %3570, %3572
  %3574 = xor i64 %3570, %3550
  %3575 = add nuw nsw i64 %3573, %3574
  %3576 = icmp eq i64 %3575, 2
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %47, align 1
  %3578 = load i64, i64* %RBP.i, align 8
  %3579 = add i64 %3578, -8
  %3580 = add i64 %3510, 37
  store i64 %3580, i64* %3, align 8
  %3581 = inttoptr i64 %3579 to i32*
  %3582 = load i32, i32* %3581, align 4
  %3583 = sext i32 %3582 to i64
  %3584 = mul nsw i64 %3583, 744
  store i64 %3584, i64* %RDX.i1307, align 8
  %3585 = lshr i64 %3584, 63
  %3586 = add i64 %3584, %3551
  store i64 %3586, i64* %RDI.i1299, align 8
  %3587 = icmp ult i64 %3586, %3551
  %3588 = icmp ult i64 %3586, %3584
  %3589 = or i1 %3587, %3588
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %42, align 1
  %3591 = trunc i64 %3586 to i32
  %3592 = and i32 %3591, 255
  %3593 = tail call i32 @llvm.ctpop.i32(i32 %3592)
  %3594 = trunc i32 %3593 to i8
  %3595 = and i8 %3594, 1
  %3596 = xor i8 %3595, 1
  store i8 %3596, i8* %43, align 1
  %3597 = xor i64 %3584, %3551
  %3598 = xor i64 %3597, %3586
  %3599 = lshr i64 %3598, 4
  %3600 = trunc i64 %3599 to i8
  %3601 = and i8 %3600, 1
  store i8 %3601, i8* %44, align 1
  %3602 = icmp eq i64 %3586, 0
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %45, align 1
  %3604 = lshr i64 %3586, 63
  %3605 = trunc i64 %3604 to i8
  store i8 %3605, i8* %46, align 1
  %3606 = xor i64 %3604, %3572
  %3607 = xor i64 %3604, %3585
  %3608 = add nuw nsw i64 %3606, %3607
  %3609 = icmp eq i64 %3608, 2
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %47, align 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i100 = bitcast %union.anon* %3611 to i32*
  %3612 = getelementptr inbounds %union.anon, %union.anon* %3611, i64 0, i32 0
  %3613 = add i64 %3586, 96
  %3614 = add i64 %3510, 54
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i32*
  %3616 = load i32, i32* %3615, align 4
  %3617 = zext i32 %3616 to i64
  store i64 %3617, i64* %3612, align 8
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3619 = add i32 %3616, 1
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %3618, align 8
  %3621 = icmp eq i32 %3616, -1
  %3622 = icmp eq i32 %3619, 0
  %3623 = or i1 %3621, %3622
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %42, align 1
  %3625 = and i32 %3619, 255
  %3626 = tail call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  store i8 %3629, i8* %43, align 1
  %3630 = xor i32 %3619, %3616
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %44, align 1
  %3634 = zext i1 %3622 to i8
  store i8 %3634, i8* %45, align 1
  %3635 = lshr i32 %3619, 31
  %3636 = trunc i32 %3635 to i8
  store i8 %3636, i8* %46, align 1
  %3637 = lshr i32 %3616, 31
  %3638 = xor i32 %3635, %3637
  %3639 = add nuw nsw i32 %3638, %3635
  %3640 = icmp eq i32 %3639, 2
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %47, align 1
  %3642 = add i64 %3510, 65
  store i64 %3642, i64* %3, align 8
  store i32 %3619, i32* %3615, align 4
  %3643 = load i32, i32* %R8D.i100, align 4
  %3644 = load i64, i64* %3, align 8
  %3645 = sext i32 %3643 to i64
  store i64 %3645, i64* %RDX.i1307, align 8
  %3646 = load i64, i64* %RSI.i1301, align 8
  %3647 = shl nsw i64 %3645, 2
  %3648 = add nsw i64 %3647, 100
  %3649 = add i64 %3648, %3646
  %3650 = load i32, i32* %ECX.i165, align 4
  %3651 = add i64 %3644, 7
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3649 to i32*
  store i32 %3650, i32* %3652, align 4
  %3653 = load i64, i64* %RBP.i, align 8
  %3654 = add i64 %3653, -32
  %3655 = load i64, i64* %3, align 8
  %3656 = add i64 %3655, 4
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3654 to i32*
  %3658 = load i32, i32* %3657, align 4
  %3659 = sext i32 %3658 to i64
  %3660 = mul nsw i64 %3659, 744
  %3661 = load i64, i64* %RAX.i1311, align 8
  %3662 = add i64 %3660, %3661
  %3663 = lshr i64 %3662, 63
  %3664 = add i64 %3662, 96
  store i64 %3664, i64* %RSI.i1301, align 8
  %3665 = icmp ugt i64 %3662, -97
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %42, align 1
  %3667 = trunc i64 %3664 to i32
  %3668 = and i32 %3667, 255
  %3669 = tail call i32 @llvm.ctpop.i32(i32 %3668)
  %3670 = trunc i32 %3669 to i8
  %3671 = and i8 %3670, 1
  %3672 = xor i8 %3671, 1
  store i8 %3672, i8* %43, align 1
  %3673 = xor i64 %3664, %3662
  %3674 = lshr i64 %3673, 4
  %3675 = trunc i64 %3674 to i8
  %3676 = and i8 %3675, 1
  store i8 %3676, i8* %44, align 1
  %3677 = icmp eq i64 %3664, 0
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %45, align 1
  %3679 = lshr i64 %3664, 63
  %3680 = trunc i64 %3679 to i8
  store i8 %3680, i8* %46, align 1
  %3681 = xor i64 %3679, %3663
  %3682 = add nuw nsw i64 %3681, %3679
  %3683 = icmp eq i64 %3682, 2
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %47, align 1
  %3685 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3685, i64* %RDX.i1307, align 8
  %3686 = add i64 %3655, 32
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i64*
  store i64 %3664, i64* %3687, align 8
  %3688 = load i64, i64* %RBP.i, align 8
  %3689 = add i64 %3688, -32
  %3690 = load i64, i64* %3, align 8
  %3691 = add i64 %3690, 4
  store i64 %3691, i64* %3, align 8
  %3692 = inttoptr i64 %3689 to i32*
  %3693 = load i32, i32* %3692, align 4
  %3694 = sext i32 %3693 to i64
  %3695 = mul nsw i64 %3694, 744
  store i64 %3695, i64* %RDX.i1307, align 8
  %3696 = lshr i64 %3695, 63
  %3697 = load i64, i64* %RAX.i1311, align 8
  %3698 = add i64 %3695, %3697
  store i64 %3698, i64* %RSI.i1301, align 8
  %3699 = icmp ult i64 %3698, %3697
  %3700 = icmp ult i64 %3698, %3695
  %3701 = or i1 %3699, %3700
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %42, align 1
  %3703 = trunc i64 %3698 to i32
  %3704 = and i32 %3703, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %43, align 1
  %3709 = xor i64 %3695, %3697
  %3710 = xor i64 %3709, %3698
  %3711 = lshr i64 %3710, 4
  %3712 = trunc i64 %3711 to i8
  %3713 = and i8 %3712, 1
  store i8 %3713, i8* %44, align 1
  %3714 = icmp eq i64 %3698, 0
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %45, align 1
  %3716 = lshr i64 %3698, 63
  %3717 = trunc i64 %3716 to i8
  store i8 %3717, i8* %46, align 1
  %3718 = lshr i64 %3697, 63
  %3719 = xor i64 %3716, %3718
  %3720 = xor i64 %3716, %3696
  %3721 = add nuw nsw i64 %3719, %3720
  %3722 = icmp eq i64 %3721, 2
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %47, align 1
  %3724 = add i64 %3698, 96
  %3725 = add i64 %3690, 20
  store i64 %3725, i64* %3, align 8
  %3726 = inttoptr i64 %3724 to i32*
  %3727 = load i32, i32* %3726, align 4
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RCX.i1309, align 8
  %3729 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3729, i64* %RDX.i1307, align 8
  %3730 = add i64 %3729, 16
  store i64 %3730, i64* %RSI.i1301, align 8
  %3731 = icmp ugt i64 %3729, -17
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %42, align 1
  %3733 = trunc i64 %3730 to i32
  %3734 = and i32 %3733, 255
  %3735 = tail call i32 @llvm.ctpop.i32(i32 %3734)
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = xor i8 %3737, 1
  store i8 %3738, i8* %43, align 1
  %3739 = xor i64 %3729, 16
  %3740 = xor i64 %3739, %3730
  %3741 = lshr i64 %3740, 4
  %3742 = trunc i64 %3741 to i8
  %3743 = and i8 %3742, 1
  store i8 %3743, i8* %44, align 1
  %3744 = icmp eq i64 %3730, 0
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %45, align 1
  %3746 = lshr i64 %3730, 63
  %3747 = trunc i64 %3746 to i8
  store i8 %3747, i8* %46, align 1
  %3748 = lshr i64 %3729, 63
  %3749 = xor i64 %3746, %3748
  %3750 = add nuw nsw i64 %3749, %3746
  %3751 = icmp eq i64 %3750, 2
  %3752 = zext i1 %3751 to i8
  store i8 %3752, i8* %47, align 1
  store i64 %3730, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %3753 = add i64 %3729, 8
  %3754 = add i64 %3690, 46
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i32*
  store i32 %3727, i32* %3755, align 4
  %3756 = load i64, i64* %RBP.i, align 8
  %3757 = add i64 %3756, -4
  %3758 = load i64, i64* %3, align 8
  %3759 = add i64 %3758, 4
  store i64 %3759, i64* %3, align 8
  %3760 = inttoptr i64 %3757 to i32*
  %3761 = load i32, i32* %3760, align 4
  %3762 = sext i32 %3761 to i64
  store i64 %3762, i64* %RDX.i1307, align 8
  %3763 = shl nsw i64 %3762, 2
  %3764 = add nsw i64 %3763, 11187184
  %3765 = add i64 %3758, 11
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3764 to i32*
  %3767 = load i32, i32* %3766, align 4
  %3768 = zext i32 %3767 to i64
  store i64 %3768, i64* %RCX.i1309, align 8
  %3769 = add i64 %3756, -32
  %3770 = add i64 %3758, 15
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = sext i32 %3772 to i64
  %3774 = mul nsw i64 %3773, 744
  store i64 %3774, i64* %RDX.i1307, align 8
  %3775 = lshr i64 %3774, 63
  %3776 = load i64, i64* %RAX.i1311, align 8
  %3777 = add i64 %3774, %3776
  store i64 %3777, i64* %RSI.i1301, align 8
  %3778 = icmp ult i64 %3777, %3776
  %3779 = icmp ult i64 %3777, %3774
  %3780 = or i1 %3778, %3779
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %42, align 1
  %3782 = trunc i64 %3777 to i32
  %3783 = and i32 %3782, 255
  %3784 = tail call i32 @llvm.ctpop.i32(i32 %3783)
  %3785 = trunc i32 %3784 to i8
  %3786 = and i8 %3785, 1
  %3787 = xor i8 %3786, 1
  store i8 %3787, i8* %43, align 1
  %3788 = xor i64 %3774, %3776
  %3789 = xor i64 %3788, %3777
  %3790 = lshr i64 %3789, 4
  %3791 = trunc i64 %3790 to i8
  %3792 = and i8 %3791, 1
  store i8 %3792, i8* %44, align 1
  %3793 = icmp eq i64 %3777, 0
  %3794 = zext i1 %3793 to i8
  store i8 %3794, i8* %45, align 1
  %3795 = lshr i64 %3777, 63
  %3796 = trunc i64 %3795 to i8
  store i8 %3796, i8* %46, align 1
  %3797 = lshr i64 %3776, 63
  %3798 = xor i64 %3795, %3797
  %3799 = xor i64 %3795, %3775
  %3800 = add nuw nsw i64 %3798, %3799
  %3801 = icmp eq i64 %3800, 2
  %3802 = zext i1 %3801 to i8
  store i8 %3802, i8* %47, align 1
  %3803 = add i64 %3758, 32
  store i64 %3803, i64* %3, align 8
  %3804 = load i32, i32* %3771, align 4
  %3805 = sext i32 %3804 to i64
  %3806 = mul nsw i64 %3805, 744
  store i64 %3806, i64* %RDX.i1307, align 8
  %3807 = lshr i64 %3806, 63
  %3808 = add i64 %3806, %3776
  store i64 %3808, i64* %RAX.i1311, align 8
  %3809 = icmp ult i64 %3808, %3776
  %3810 = icmp ult i64 %3808, %3806
  %3811 = or i1 %3809, %3810
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %42, align 1
  %3813 = trunc i64 %3808 to i32
  %3814 = and i32 %3813, 255
  %3815 = tail call i32 @llvm.ctpop.i32(i32 %3814)
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = xor i8 %3817, 1
  store i8 %3818, i8* %43, align 1
  %3819 = xor i64 %3806, %3776
  %3820 = xor i64 %3819, %3808
  %3821 = lshr i64 %3820, 4
  %3822 = trunc i64 %3821 to i8
  %3823 = and i8 %3822, 1
  store i8 %3823, i8* %44, align 1
  %3824 = icmp eq i64 %3808, 0
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %45, align 1
  %3826 = lshr i64 %3808, 63
  %3827 = trunc i64 %3826 to i8
  store i8 %3827, i8* %46, align 1
  %3828 = xor i64 %3826, %3797
  %3829 = xor i64 %3826, %3807
  %3830 = add nuw nsw i64 %3828, %3829
  %3831 = icmp eq i64 %3830, 2
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %47, align 1
  %3833 = add i64 %3808, 96
  %3834 = add i64 %3758, 46
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %3612, align 8
  %3838 = add i32 %3836, 1
  %3839 = zext i32 %3838 to i64
  store i64 %3839, i64* %3618, align 8
  %3840 = icmp eq i32 %3836, -1
  %3841 = icmp eq i32 %3838, 0
  %3842 = or i1 %3840, %3841
  %3843 = zext i1 %3842 to i8
  store i8 %3843, i8* %42, align 1
  %3844 = and i32 %3838, 255
  %3845 = tail call i32 @llvm.ctpop.i32(i32 %3844)
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = xor i8 %3847, 1
  store i8 %3848, i8* %43, align 1
  %3849 = xor i32 %3838, %3836
  %3850 = lshr i32 %3849, 4
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  store i8 %3852, i8* %44, align 1
  %3853 = zext i1 %3841 to i8
  store i8 %3853, i8* %45, align 1
  %3854 = lshr i32 %3838, 31
  %3855 = trunc i32 %3854 to i8
  store i8 %3855, i8* %46, align 1
  %3856 = lshr i32 %3836, 31
  %3857 = xor i32 %3854, %3856
  %3858 = add nuw nsw i32 %3857, %3854
  %3859 = icmp eq i32 %3858, 2
  %3860 = zext i1 %3859 to i8
  store i8 %3860, i8* %47, align 1
  %3861 = add i64 %3758, 57
  store i64 %3861, i64* %3, align 8
  store i32 %3838, i32* %3835, align 4
  %3862 = load i32, i32* %R8D.i100, align 4
  %3863 = load i64, i64* %3, align 8
  %3864 = sext i32 %3862 to i64
  store i64 %3864, i64* %RAX.i1311, align 8
  %3865 = load i64, i64* %RSI.i1301, align 8
  %3866 = shl nsw i64 %3864, 2
  %3867 = add nsw i64 %3866, 100
  %3868 = add i64 %3867, %3865
  %3869 = load i32, i32* %ECX.i165, align 4
  %3870 = add i64 %3863, 7
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3868 to i32*
  store i32 %3869, i32* %3871, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_40b1a3

block_.L_40b1a3:                                  ; preds = %block_.L_40b05e, %block_40b0b0, %block_40b078
  %3872 = phi i64 [ %.pre25, %block_40b0b0 ], [ %3469, %block_40b078 ], [ %3379, %block_.L_40b05e ]
  %3873 = add i64 %3872, 5
  store i64 %3873, i64* %3, align 8
  br label %block_.L_40b1a8

block_.L_40b1a8:                                  ; preds = %block_.L_40b1a3, %block_.L_40b038
  %storemerge18 = phi i64 [ %3321, %block_.L_40b038 ], [ %3873, %block_.L_40b1a3 ]
  %3874 = add i64 %storemerge18, 1
  store i64 %3874, i64* %3, align 8
  %3875 = load i64, i64* %6, align 8
  %3876 = add i64 %3875, 8
  %3877 = inttoptr i64 %3875 to i64*
  %3878 = load i64, i64* %3877, align 8
  store i64 %3878, i64* %RBP.i, align 8
  store i64 %3876, i64* %6, align 8
  %3879 = add i64 %storemerge18, 2
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3876 to i64*
  %3881 = load i64, i64* %3880, align 8
  store i64 %3881, i64* %3, align 8
  %3882 = add i64 %3875, 16
  store i64 %3882, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0x99da00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x99da00_type* @G__0x99da00 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0e710___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da00___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x99da00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__edx__0xaab3f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11187184
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__edx__0xaaba30___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11188784
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xc__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x60__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jne_.L_40aa1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40a9a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_40a9f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jmpq_.L_40ab96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jne_.L_40ab91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ab91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addq__0x60___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -97
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
define %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_jne_.L_40ac34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40abb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40ac0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40adab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ada6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ada6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_40ae49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40adca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40ae23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40afc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40afbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40afbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b05e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40afdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b1a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b1a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b1a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RAX, align 8
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
