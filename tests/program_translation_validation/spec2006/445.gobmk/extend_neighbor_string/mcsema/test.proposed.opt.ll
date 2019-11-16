; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
%G__0xaaba30_type = type <{ [8 x i8] }>
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
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer
@G__0xaaba30 = global %G__0xaaba30_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40d280.update_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @extend_neighbor_string(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %RAX.i2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RAX.i2072, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2070 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RCX.i2070, align 8
  %RDX.i2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 3, i64* %RDX.i2068, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -12
  %43 = load i32, i32* %EDI.i, align 4
  %44 = add i64 %10, 35
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2063 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -8
  %49 = load i32, i32* %ESI.i2063, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i2059 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %R8.i2059, align 8
  %RSI.i2055 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %66 = add nsw i64 %65, 12099168
  %67 = add i64 %61, 13
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i8*
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  store i64 %70, i64* %RSI.i2055, align 8
  %71 = add i64 %59, -20
  %72 = zext i8 %69 to i32
  %73 = add i64 %61, 16
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %RDX.i2068, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -20
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 3
  store i64 %79, i64* %3, align 8
  %80 = trunc i64 %75 to i32
  %81 = inttoptr i64 %77 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %80, %82
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RDX.i2068, align 8
  %85 = icmp ult i32 %80, %82
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %14, align 1
  %87 = and i32 %83, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1
  %92 = xor i32 %82, %80
  %93 = xor i32 %92, %83
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %27, align 1
  %97 = icmp eq i32 %83, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1
  %99 = lshr i32 %83, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %33, align 1
  %101 = lshr i32 %80, 31
  %102 = lshr i32 %82, 31
  %103 = xor i32 %102, %101
  %104 = xor i32 %99, %101
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %39, align 1
  %108 = add i64 %76, -24
  %109 = add i64 %78, 6
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 %83, i32* %110, align 4
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -8
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, 744
  store i64 %118, i64* %R8.i2059, align 8
  %119 = lshr i64 %118, 63
  %120 = load i64, i64* %RCX.i2070, align 8
  %121 = add i64 %118, %120
  store i64 %121, i64* %RCX.i2070, align 8
  %122 = icmp ult i64 %121, %120
  %123 = icmp ult i64 %121, %118
  %124 = or i1 %122, %123
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = trunc i64 %121 to i32
  %127 = and i32 %126, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  %132 = xor i64 %118, %120
  %133 = xor i64 %132, %121
  %134 = lshr i64 %133, 4
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %27, align 1
  %137 = icmp eq i64 %121, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %30, align 1
  %139 = lshr i64 %121, 63
  %140 = trunc i64 %139 to i8
  store i8 %140, i8* %33, align 1
  %141 = lshr i64 %120, 63
  %142 = xor i64 %139, %141
  %143 = xor i64 %139, %119
  %144 = add nuw nsw i64 %142, %143
  %145 = icmp eq i64 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %39, align 1
  %147 = add i64 %121, 8
  %148 = add i64 %113, 17
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RDX.i2068, align 8
  %152 = add i64 %111, -28
  %153 = add i64 %113, 20
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 %150, i32* %154, align 4
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -28
  %157 = load i64, i64* %3, align 8
  %158 = add i64 %157, 4
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %156 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %RCX.i2070, align 8
  %162 = shl nsw i64 %161, 2
  %163 = add nsw i64 %162, 11188784
  %164 = add i64 %157, 11
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RDX.i2068, align 8
  %168 = add i64 %155, -4
  %169 = add i64 %157, 15
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %RCX.i2070, align 8
  %173 = shl nsw i64 %172, 2
  %174 = add nsw i64 %173, 11188784
  %175 = add i64 %157, 22
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 %166, i32* %176, align 4
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -28
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = shl nsw i64 %183, 2
  %185 = load i64, i64* %RAX.i2072, align 8
  %186 = add i64 %184, %185
  store i64 %186, i64* %RAX.i2072, align 8
  %187 = icmp ult i64 %186, %185
  %188 = icmp ult i64 %186, %184
  %189 = or i1 %187, %188
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %14, align 1
  %191 = trunc i64 %186 to i32
  %192 = and i32 %191, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i64 %184, %185
  %198 = xor i64 %197, %186
  %199 = lshr i64 %198, 4
  %200 = trunc i64 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %27, align 1
  %202 = icmp eq i64 %186, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %30, align 1
  %204 = lshr i64 %186, 63
  %205 = trunc i64 %204 to i8
  store i8 %205, i8* %33, align 1
  %206 = lshr i64 %185, 63
  %207 = lshr i64 %183, 61
  %208 = and i64 %207, 1
  %209 = xor i64 %204, %206
  %210 = xor i64 %204, %208
  %211 = add nuw nsw i64 %209, %210
  %212 = icmp eq i64 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %39, align 1
  %214 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %214, i64* %RCX.i2070, align 8
  %215 = add i64 %179, 22
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  store i64 %186, i64* %216, align 8
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -28
  %219 = load i64, i64* %3, align 8
  %220 = add i64 %219, 4
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %218 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %RAX.i2072, align 8
  %224 = shl nsw i64 %223, 2
  %225 = add nsw i64 %224, 11188784
  %226 = add i64 %219, 11
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX.i2068, align 8
  %230 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %230, i64* %RAX.i2072, align 8
  %231 = add i64 %230, 16
  store i64 %231, i64* %RCX.i2070, align 8
  %232 = icmp ugt i64 %230, -17
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %14, align 1
  %234 = trunc i64 %231 to i32
  %235 = and i32 %234, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  %240 = xor i64 %230, 16
  %241 = xor i64 %240, %231
  %242 = lshr i64 %241, 4
  %243 = trunc i64 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %27, align 1
  %245 = icmp eq i64 %231, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %30, align 1
  %247 = lshr i64 %231, 63
  %248 = trunc i64 %247 to i8
  store i8 %248, i8* %33, align 1
  %249 = lshr i64 %230, 63
  %250 = xor i64 %247, %249
  %251 = add nuw nsw i64 %250, %247
  %252 = icmp eq i64 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %39, align 1
  store i64 %231, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %254 = add i64 %230, 8
  %255 = add i64 %219, 37
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %228, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -4
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 3
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RDX.i2068, align 8
  %264 = add i64 %257, -28
  %265 = add i64 %259, 7
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %RAX.i2072, align 8
  %269 = shl nsw i64 %268, 2
  %270 = add nsw i64 %269, 11188784
  %271 = add i64 %259, 14
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  store i32 %262, i32* %272, align 4
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -4
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 3
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RDX.i2068, align 8
  %280 = add i64 %273, -28
  %281 = add i64 %275, 6
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = sub i32 %278, %283
  %285 = icmp ult i32 %278, %283
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %14, align 1
  %287 = and i32 %284, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %21, align 1
  %292 = xor i32 %283, %278
  %293 = xor i32 %292, %284
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  store i8 %296, i8* %27, align 1
  %297 = icmp eq i32 %284, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %30, align 1
  %299 = lshr i32 %284, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %33, align 1
  %301 = lshr i32 %278, 31
  %302 = lshr i32 %283, 31
  %303 = xor i32 %302, %301
  %304 = xor i32 %299, %301
  %305 = add nuw nsw i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %39, align 1
  %308 = icmp ne i8 %300, 0
  %309 = xor i1 %308, %306
  %.v = select i1 %309, i64 12, i64 120
  %310 = add i64 %275, %.v
  store i64 %310, i64* %3, align 8
  br i1 %309, label %block_40b273, label %block_.L_40b2df

block_40b273:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %311 = add i64 %273, -8
  %312 = add i64 %310, 14
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %315, 744
  %317 = add i64 %316, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %318 = lshr i64 %317, 63
  %319 = add i64 %316, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  store i64 %319, i64* %RDX.i2068, align 8
  %320 = icmp eq i64 %317, -8
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %14, align 1
  %322 = trunc i64 %319 to i32
  %323 = and i32 %322, 248
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1
  %328 = xor i64 %319, %317
  %329 = lshr i64 %328, 4
  %330 = trunc i64 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %27, align 1
  %332 = icmp eq i64 %319, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %30, align 1
  %334 = lshr i64 %319, 63
  %335 = trunc i64 %334 to i8
  store i8 %335, i8* %33, align 1
  %336 = xor i64 %334, %318
  %337 = add nuw nsw i64 %336, %334
  %338 = icmp eq i64 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %340 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %340, i64* %RCX.i2070, align 8
  %341 = add i64 %310, 42
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  store i64 %319, i64* %342, align 8
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -8
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, 4
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = mul nsw i64 %349, 744
  store i64 %350, i64* %RCX.i2070, align 8
  %351 = lshr i64 %350, 63
  %352 = load i64, i64* %RAX.i2072, align 8
  %353 = add i64 %350, %352
  store i64 %353, i64* %RDX.i2068, align 8
  %354 = icmp ult i64 %353, %352
  %355 = icmp ult i64 %353, %350
  %356 = or i1 %354, %355
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %14, align 1
  %358 = trunc i64 %353 to i32
  %359 = and i32 %358, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  %364 = xor i64 %350, %352
  %365 = xor i64 %364, %353
  %366 = lshr i64 %365, 4
  %367 = trunc i64 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %27, align 1
  %369 = icmp eq i64 %353, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %30, align 1
  %371 = lshr i64 %353, 63
  %372 = trunc i64 %371 to i8
  store i8 %372, i8* %33, align 1
  %373 = lshr i64 %352, 63
  %374 = xor i64 %371, %373
  %375 = xor i64 %371, %351
  %376 = add nuw nsw i64 %374, %375
  %377 = icmp eq i64 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %39, align 1
  %379 = add i64 %353, 8
  %380 = add i64 %345, 20
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RSI.i2055, align 8
  %384 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %384, i64* %RCX.i2070, align 8
  %385 = add i64 %384, 16
  store i64 %385, i64* %RDX.i2068, align 8
  %386 = icmp ugt i64 %384, -17
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %14, align 1
  %388 = trunc i64 %385 to i32
  %389 = and i32 %388, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %21, align 1
  %394 = xor i64 %384, 16
  %395 = xor i64 %394, %385
  %396 = lshr i64 %395, 4
  %397 = trunc i64 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %27, align 1
  %399 = icmp eq i64 %385, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %30, align 1
  %401 = lshr i64 %385, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %33, align 1
  %403 = lshr i64 %384, 63
  %404 = xor i64 %401, %403
  %405 = add nuw nsw i64 %404, %401
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %39, align 1
  store i64 %385, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %408 = add i64 %384, 8
  %409 = add i64 %345, 46
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 %382, i32* %410, align 4
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 3
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RSI.i2055, align 8
  %418 = add i64 %411, -8
  %419 = add i64 %413, 7
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %422, 744
  store i64 %423, i64* %RCX.i2070, align 8
  %424 = lshr i64 %423, 63
  %425 = load i64, i64* %RAX.i2072, align 8
  %426 = add i64 %423, %425
  store i64 %426, i64* %RAX.i2072, align 8
  %427 = icmp ult i64 %426, %425
  %428 = icmp ult i64 %426, %423
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = trunc i64 %426 to i32
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  %437 = xor i64 %423, %425
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %27, align 1
  %442 = icmp eq i64 %426, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %30, align 1
  %444 = lshr i64 %426, 63
  %445 = trunc i64 %444 to i8
  store i8 %445, i8* %33, align 1
  %446 = lshr i64 %425, 63
  %447 = xor i64 %444, %446
  %448 = xor i64 %444, %424
  %449 = add nuw nsw i64 %447, %448
  %450 = icmp eq i64 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %39, align 1
  %452 = add i64 %426, 8
  %453 = add i64 %413, 20
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 %416, i32* %454, align 4
  %.pre = load i64, i64* %3, align 8
  %.pre50 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40b2df

block_.L_40b2df:                                  ; preds = %entry, %block_40b273
  %455 = phi i64 [ %273, %entry ], [ %.pre50, %block_40b273 ]
  %456 = phi i64 [ %310, %entry ], [ %.pre, %block_40b273 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %457 = add i64 %455, -8
  %458 = add i64 %456, 13
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RCX.i2070, align 8
  %462 = add i64 %455, -4
  %463 = add i64 %456, 17
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RDX.i2068, align 8
  %ECX.i1904 = bitcast %union.anon* %40 to i32*
  %467 = shl nsw i64 %466, 2
  %468 = add nsw i64 %467, 11187184
  %469 = add i64 %456, 24
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  store i32 %460, i32* %470, align 4
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -8
  %473 = load i64, i64* %3, align 8
  %474 = add i64 %473, 4
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %472 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = mul nsw i64 %477, 744
  %479 = load i64, i64* %RAX.i2072, align 8
  %480 = add i64 %478, %479
  %481 = lshr i64 %480, 63
  %482 = add i64 %480, 4
  store i64 %482, i64* %RSI.i2055, align 8
  %483 = icmp ugt i64 %480, -5
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = trunc i64 %482 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  %491 = xor i64 %482, %480
  %492 = lshr i64 %491, 4
  %493 = trunc i64 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %27, align 1
  %495 = icmp eq i64 %482, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %30, align 1
  %497 = lshr i64 %482, 63
  %498 = trunc i64 %497 to i8
  store i8 %498, i8* %33, align 1
  %499 = xor i64 %497, %481
  %500 = add nuw nsw i64 %499, %497
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %39, align 1
  %503 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %503, i64* %RDX.i2068, align 8
  %504 = add i64 %473, 32
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  store i64 %482, i64* %505, align 8
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -8
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 4
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = sext i32 %511 to i64
  %513 = mul nsw i64 %512, 744
  store i64 %513, i64* %RDX.i2068, align 8
  %514 = lshr i64 %513, 63
  %515 = load i64, i64* %RAX.i2072, align 8
  %516 = add i64 %513, %515
  store i64 %516, i64* %RSI.i2055, align 8
  %517 = icmp ult i64 %516, %515
  %518 = icmp ult i64 %516, %513
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = trunc i64 %516 to i32
  %522 = and i32 %521, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %21, align 1
  %527 = xor i64 %513, %515
  %528 = xor i64 %527, %516
  %529 = lshr i64 %528, 4
  %530 = trunc i64 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %27, align 1
  %532 = icmp eq i64 %516, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %30, align 1
  %534 = lshr i64 %516, 63
  %535 = trunc i64 %534 to i8
  store i8 %535, i8* %33, align 1
  %536 = lshr i64 %515, 63
  %537 = xor i64 %534, %536
  %538 = xor i64 %534, %514
  %539 = add nuw nsw i64 %537, %538
  %540 = icmp eq i64 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %39, align 1
  %542 = add i64 %516, 4
  %543 = add i64 %508, 20
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX.i2070, align 8
  %547 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %547, i64* %RDX.i2068, align 8
  %548 = add i64 %547, 16
  store i64 %548, i64* %RSI.i2055, align 8
  %549 = icmp ugt i64 %547, -17
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %14, align 1
  %551 = trunc i64 %548 to i32
  %552 = and i32 %551, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %21, align 1
  %557 = xor i64 %547, 16
  %558 = xor i64 %557, %548
  %559 = lshr i64 %558, 4
  %560 = trunc i64 %559 to i8
  %561 = and i8 %560, 1
  store i8 %561, i8* %27, align 1
  %562 = icmp eq i64 %548, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %30, align 1
  %564 = lshr i64 %548, 63
  %565 = trunc i64 %564 to i8
  store i8 %565, i8* %33, align 1
  %566 = lshr i64 %547, 63
  %567 = xor i64 %564, %566
  %568 = add nuw nsw i64 %567, %564
  %569 = icmp eq i64 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %39, align 1
  store i64 %548, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %571 = add i64 %547, 8
  %572 = add i64 %508, 46
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  store i32 %545, i32* %573, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -8
  %576 = load i64, i64* %3, align 8
  %577 = add i64 %576, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = mul nsw i64 %580, 744
  store i64 %581, i64* %RDX.i2068, align 8
  %582 = lshr i64 %581, 63
  %583 = load i64, i64* %RAX.i2072, align 8
  %584 = add i64 %581, %583
  store i64 %584, i64* %RSI.i2055, align 8
  %585 = icmp ult i64 %584, %583
  %586 = icmp ult i64 %584, %581
  %587 = or i1 %585, %586
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = trunc i64 %584 to i32
  %590 = and i32 %589, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  %595 = xor i64 %581, %583
  %596 = xor i64 %595, %584
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %27, align 1
  %600 = icmp eq i64 %584, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %30, align 1
  %602 = lshr i64 %584, 63
  %603 = trunc i64 %602 to i8
  store i8 %603, i8* %33, align 1
  %604 = lshr i64 %583, 63
  %605 = xor i64 %602, %604
  %606 = xor i64 %602, %582
  %607 = add nuw nsw i64 %605, %606
  %608 = icmp eq i64 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %39, align 1
  %610 = add i64 %584, 4
  %611 = add i64 %576, 20
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = add i32 %613, 1
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RCX.i2070, align 8
  %616 = icmp eq i32 %613, -1
  %617 = icmp eq i32 %614, 0
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %14, align 1
  %620 = and i32 %614, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %625 = xor i32 %614, %613
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %27, align 1
  %629 = zext i1 %617 to i8
  store i8 %629, i8* %30, align 1
  %630 = lshr i32 %614, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %33, align 1
  %632 = lshr i32 %613, 31
  %633 = xor i32 %630, %632
  %634 = add nuw nsw i32 %633, %630
  %635 = icmp eq i32 %634, 2
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %39, align 1
  %637 = add i64 %576, 26
  store i64 %637, i64* %3, align 8
  store i32 %614, i32* %612, align 4
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -8
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 4
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  %645 = mul nsw i64 %644, 744
  store i64 %645, i64* %RDX.i2068, align 8
  %646 = lshr i64 %645, 63
  %647 = load i64, i64* %RAX.i2072, align 8
  %648 = add i64 %645, %647
  store i64 %648, i64* %RAX.i2072, align 8
  %649 = icmp ult i64 %648, %647
  %650 = icmp ult i64 %648, %645
  %651 = or i1 %649, %650
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = trunc i64 %648 to i32
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  %659 = xor i64 %645, %647
  %660 = xor i64 %659, %648
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %27, align 1
  %664 = icmp eq i64 %648, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %30, align 1
  %666 = lshr i64 %648, 63
  %667 = trunc i64 %666 to i8
  store i8 %667, i8* %33, align 1
  %668 = lshr i64 %647, 63
  %669 = xor i64 %666, %668
  %670 = xor i64 %666, %646
  %671 = add nuw nsw i64 %669, %670
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %39, align 1
  %674 = add i64 %648, 12
  %675 = add i64 %640, 18
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = add i32 %677, -20
  %679 = icmp ult i32 %677, 20
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %14, align 1
  %681 = and i32 %678, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %21, align 1
  %686 = xor i32 %677, 16
  %687 = xor i32 %686, %678
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %27, align 1
  %691 = icmp eq i32 %678, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %30, align 1
  %693 = lshr i32 %678, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %33, align 1
  %695 = lshr i32 %677, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %39, align 1
  %700 = icmp ne i8 %694, 0
  %701 = xor i1 %700, %698
  %702 = or i1 %691, %701
  %.v61 = select i1 %702, i64 44, i64 24
  %703 = add i64 %640, %.v61
  %RDI.i1820 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -8
  %706 = add i64 %703, 3
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RDI.i1820, align 8
  br i1 %702, label %block_.L_40b38b, label %block_40b377

block_40b377:                                     ; preds = %block_.L_40b2df
  %710 = add i64 %703, 7945
  %711 = add i64 %703, 8
  %712 = load i64, i64* %6, align 8
  %713 = add i64 %712, -8
  %714 = inttoptr i64 %713 to i64*
  store i64 %711, i64* %714, align 8
  store i64 %713, i64* %6, align 8
  store i64 %710, i64* %3, align 8
  %call2_40b37a = tail call %struct.Memory* @sub_40d280.update_liberties(%struct.State* nonnull %0, i64 %710, %struct.Memory* %2)
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -16
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 7
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %716 to i32*
  store i32 1, i32* %719, align 4
  %720 = load i64, i64* %3, align 8
  %721 = add i64 %720, 16
  store i64 %721, i64* %3, align 8
  br label %block_.L_40b396

block_.L_40b38b:                                  ; preds = %block_.L_40b2df
  %722 = add i64 %704, -4
  %723 = add i64 %703, 6
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RSI.i2055, align 8
  %727 = add i64 %703, -3275
  %728 = add i64 %703, 11
  %729 = load i64, i64* %6, align 8
  %730 = add i64 %729, -8
  %731 = inttoptr i64 %730 to i64*
  store i64 %728, i64* %731, align 8
  store i64 %730, i64* %6, align 8
  store i64 %727, i64* %3, align 8
  %call2_40b391 = tail call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* nonnull %0, i64 %727, %struct.Memory* %2)
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_40b396

block_.L_40b396:                                  ; preds = %block_.L_40b38b, %block_40b377
  %732 = phi i64 [ %.pre51, %block_.L_40b38b ], [ %721, %block_40b377 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_40b391, %block_.L_40b38b ], [ %call2_40b37a, %block_40b377 ]
  %733 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %734 = add i32 %733, 1
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i2072, align 8
  %736 = icmp eq i32 %733, -1
  %737 = icmp eq i32 %734, 0
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %14, align 1
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %21, align 1
  %745 = xor i32 %734, %733
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %27, align 1
  %749 = zext i1 %737 to i8
  store i8 %749, i8* %30, align 1
  %750 = lshr i32 %734, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %33, align 1
  %752 = lshr i32 %733, 31
  %753 = xor i32 %750, %752
  %754 = add nuw nsw i32 %753, %750
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %39, align 1
  store i32 %734, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -12
  %759 = add i64 %732, 24
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  store i32 0, i32* %760, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_40b3ae

block_.L_40b3ae:                                  ; preds = %block_40b3d2, %block_.L_40b396
  %761 = phi i64 [ %942, %block_40b3d2 ], [ %.pre52, %block_.L_40b396 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -12
  %764 = add i64 %761, 13
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RCX.i2070, align 8
  %768 = add i64 %762, -8
  %769 = add i64 %761, 17
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = sext i32 %771 to i64
  %773 = mul nsw i64 %772, 744
  store i64 %773, i64* %RDX.i2068, align 8
  %774 = lshr i64 %773, 63
  %775 = add i64 %773, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %775, i64* %RAX.i2072, align 8
  %776 = icmp ult i64 %775, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %777 = icmp ult i64 %775, %773
  %778 = or i1 %776, %777
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1
  %780 = trunc i64 %775 to i32
  %781 = and i32 %780, 248
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  %786 = xor i64 %773, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %787 = xor i64 %786, %775
  %788 = lshr i64 %787, 4
  %789 = trunc i64 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %27, align 1
  %791 = icmp eq i64 %775, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %30, align 1
  %793 = lshr i64 %775, 63
  %794 = trunc i64 %793 to i8
  store i8 %794, i8* %33, align 1
  %795 = xor i64 %793, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %796 = xor i64 %793, %774
  %797 = add nuw nsw i64 %795, %796
  %798 = icmp eq i64 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %39, align 1
  %800 = add i64 %773, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %801 = add i64 %761, 30
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 8
  %804 = sub i32 %766, %803
  %805 = icmp ult i32 %766, %803
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = and i32 %804, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %803, %766
  %813 = xor i32 %812, %804
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %27, align 1
  %817 = icmp eq i32 %804, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %30, align 1
  %819 = lshr i32 %804, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %33, align 1
  %821 = lshr i32 %766, 31
  %822 = lshr i32 %803, 31
  %823 = xor i32 %822, %821
  %824 = xor i32 %819, %821
  %825 = add nuw nsw i32 %824, %823
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %39, align 1
  %828 = icmp ne i8 %820, 0
  %829 = xor i1 %828, %826
  %.v62 = select i1 %829, i64 36, i64 109
  %830 = add i64 %761, %.v62
  store i64 %830, i64* %3, align 8
  br i1 %829, label %block_40b3d2, label %block_.L_40b41b

block_40b3d2:                                     ; preds = %block_.L_40b3ae
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %831 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i2070, align 8
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -8
  %835 = add i64 %830, 21
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  %839 = mul nsw i64 %838, 744
  store i64 %839, i64* %RDX.i2068, align 8
  %840 = lshr i64 %839, 63
  %841 = add i64 %839, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %841, i64* %RSI.i2055, align 8
  %842 = icmp ult i64 %841, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %843 = icmp ult i64 %841, %839
  %844 = or i1 %842, %843
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %14, align 1
  %846 = trunc i64 %841 to i32
  %847 = and i32 %846, 248
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i64 %839, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %853 = xor i64 %852, %841
  %854 = lshr i64 %853, 4
  %855 = trunc i64 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %27, align 1
  %857 = icmp eq i64 %841, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %30, align 1
  %859 = lshr i64 %841, 63
  %860 = trunc i64 %859 to i8
  store i8 %860, i8* %33, align 1
  %861 = xor i64 %859, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %862 = xor i64 %859, %840
  %863 = add nuw nsw i64 %861, %862
  %864 = icmp eq i64 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %39, align 1
  %866 = add i64 %833, -12
  %867 = add i64 %830, 38
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = sext i32 %869 to i64
  store i64 %870, i64* %RDX.i2068, align 8
  %871 = shl nsw i64 %870, 2
  %872 = add i64 %839, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %873 = add i64 %872, %871
  %874 = add i64 %830, 43
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  %878 = mul nsw i64 %877, 744
  store i64 %878, i64* %RDX.i2068, align 8
  %879 = lshr i64 %878, 63
  %880 = load i64, i64* %RAX.i2072, align 8
  %881 = add i64 %878, %880
  store i64 %881, i64* %RAX.i2072, align 8
  %882 = icmp ult i64 %881, %880
  %883 = icmp ult i64 %881, %878
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %14, align 1
  %886 = trunc i64 %881 to i32
  %887 = and i32 %886, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %21, align 1
  %892 = xor i64 %878, %880
  %893 = xor i64 %892, %881
  %894 = lshr i64 %893, 4
  %895 = trunc i64 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %27, align 1
  %897 = icmp eq i64 %881, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %30, align 1
  %899 = lshr i64 %881, 63
  %900 = trunc i64 %899 to i8
  store i8 %900, i8* %33, align 1
  %901 = lshr i64 %880, 63
  %902 = xor i64 %899, %901
  %903 = xor i64 %899, %879
  %904 = add nuw nsw i64 %902, %903
  %905 = icmp eq i64 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %39, align 1
  %907 = add i64 %881, 740
  %908 = load i32, i32* %ECX.i1904, align 4
  %909 = add i64 %830, 59
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %907 to i32*
  store i32 %908, i32* %910, align 4
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -12
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, 3
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, 1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i2072, align 8
  %919 = icmp eq i32 %916, -1
  %920 = icmp eq i32 %917, 0
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %14, align 1
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i32 %917, %916
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %27, align 1
  %932 = zext i1 %920 to i8
  store i8 %932, i8* %30, align 1
  %933 = lshr i32 %917, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %33, align 1
  %935 = lshr i32 %916, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %933
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %39, align 1
  %940 = add i64 %913, 9
  store i64 %940, i64* %3, align 8
  store i32 %917, i32* %915, align 4
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, -104
  store i64 %942, i64* %3, align 8
  br label %block_.L_40b3ae

block_.L_40b41b:                                  ; preds = %block_.L_40b3ae
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -4
  %945 = add i64 %830, 3
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = add i32 %947, 20
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i2072, align 8
  %950 = icmp ugt i32 %947, -21
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %14, align 1
  %952 = and i32 %948, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i32 %947, 16
  %958 = xor i32 %957, %948
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %27, align 1
  %962 = icmp eq i32 %948, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %30, align 1
  %964 = lshr i32 %948, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %33, align 1
  %966 = lshr i32 %947, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %964
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %39, align 1
  %971 = sext i32 %948 to i64
  store i64 %971, i64* %RCX.i2070, align 8
  %972 = add nsw i64 %971, 12099168
  %973 = add i64 %830, 17
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i8*
  %975 = load i8, i8* %974, align 1
  %976 = zext i8 %975 to i64
  store i64 %976, i64* %RAX.i2072, align 8
  %977 = zext i8 %975 to i32
  store i8 0, i8* %14, align 1
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %982 = icmp eq i8 %975, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v63 = select i1 %982, i64 26, i64 344
  %984 = add i64 %830, %.v63
  store i64 %984, i64* %3, align 8
  br i1 %982, label %block_40b435, label %block_.L_40b573

block_40b435:                                     ; preds = %block_.L_40b41b
  %985 = add i64 %943, -16
  %986 = add i64 %984, 4
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  store i8 0, i8* %14, align 1
  %989 = and i32 %988, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %994 = icmp eq i32 %988, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %30, align 1
  %996 = lshr i32 %988, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v99 = select i1 %994, i64 10, i64 313
  %998 = add i64 %984, %.v99
  store i64 %998, i64* %3, align 8
  br i1 %994, label %block_40b43f, label %block_.L_40b56e

block_40b43f:                                     ; preds = %block_40b435
  %999 = add i64 %998, 3
  store i64 %999, i64* %3, align 8
  %1000 = load i32, i32* %946, align 4
  %1001 = add i32 %1000, 20
  %1002 = lshr i32 %1001, 31
  %1003 = add i32 %1000, 40
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i2072, align 8
  %1005 = icmp ugt i32 %1001, -21
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %14, align 1
  %1007 = and i32 %1003, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %21, align 1
  %1012 = xor i32 %1001, 16
  %1013 = xor i32 %1012, %1003
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  store i8 %1016, i8* %27, align 1
  %1017 = icmp eq i32 %1003, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %30, align 1
  %1019 = lshr i32 %1003, 31
  %1020 = trunc i32 %1019 to i8
  store i8 %1020, i8* %33, align 1
  %1021 = xor i32 %1019, %1002
  %1022 = add nuw nsw i32 %1021, %1019
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %39, align 1
  %1025 = sext i32 %1003 to i64
  store i64 %1025, i64* %RCX.i2070, align 8
  %1026 = add nsw i64 %1025, 12099168
  %1027 = add i64 %998, 20
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i8*
  %1029 = load i8, i8* %1028, align 1
  %1030 = zext i8 %1029 to i64
  store i64 %1030, i64* %RAX.i2072, align 8
  %1031 = zext i8 %1029 to i32
  %1032 = add i64 %943, -20
  %1033 = add i64 %998, 23
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = sub i32 %1031, %1035
  %1037 = icmp ult i32 %1031, %1035
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %14, align 1
  %1039 = and i32 %1036, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %21, align 1
  %1044 = xor i32 %1035, %1031
  %1045 = xor i32 %1044, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %27, align 1
  %1049 = icmp eq i32 %1036, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %30, align 1
  %1051 = lshr i32 %1036, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %33, align 1
  %1053 = lshr i32 %1035, 31
  %1054 = add nuw nsw i32 %1051, %1053
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %39, align 1
  %.v100 = select i1 %1049, i64 29, i64 57
  %1057 = add i64 %998, %.v100
  store i64 %1057, i64* %3, align 8
  br i1 %1049, label %block_40b45c, label %block_.L_40b478

block_40b45c:                                     ; preds = %block_40b43f
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -4
  %1060 = add i64 %1057, 3
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = add i32 %1062, 20
  %1064 = lshr i32 %1063, 31
  %1065 = add i32 %1062, 40
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX.i2072, align 8
  %1067 = icmp ugt i32 %1063, -21
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = and i32 %1065, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i32 %1063, 16
  %1075 = xor i32 %1074, %1065
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %27, align 1
  %1079 = icmp eq i32 %1065, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i32 %1065, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %33, align 1
  %1083 = xor i32 %1081, %1064
  %1084 = add nuw nsw i32 %1083, %1081
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %39, align 1
  %1087 = sext i32 %1065 to i64
  store i64 %1087, i64* %RCX.i2070, align 8
  %1088 = shl nsw i64 %1087, 2
  %1089 = add nsw i64 %1088, 11187184
  %1090 = add i64 %1057, 19
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i2072, align 8
  %1094 = add i64 %1058, -8
  %1095 = add i64 %1057, 22
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = sub i32 %1092, %1097
  %1099 = icmp ult i32 %1092, %1097
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %14, align 1
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %21, align 1
  %1106 = xor i32 %1097, %1092
  %1107 = xor i32 %1106, %1098
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %27, align 1
  %1111 = icmp eq i32 %1098, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i32 %1098, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %33, align 1
  %1115 = lshr i32 %1092, 31
  %1116 = lshr i32 %1097, 31
  %1117 = xor i32 %1116, %1115
  %1118 = xor i32 %1113, %1115
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %39, align 1
  %.v106 = select i1 %1111, i64 274, i64 28
  %1122 = add i64 %1057, %.v106
  store i64 %1122, i64* %3, align 8
  br i1 %1111, label %block_.L_40b56e, label %block_.L_40b478

block_.L_40b478:                                  ; preds = %block_40b43f, %block_40b45c
  %1123 = phi i64 [ %1122, %block_40b45c ], [ %1057, %block_40b43f ]
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -4
  %1126 = add i64 %1123, 3
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = add i32 %1128, 20
  %1130 = icmp eq i32 %1129, 0
  %1131 = zext i1 %1130 to i8
  %1132 = lshr i32 %1129, 31
  %1133 = add i32 %1128, 19
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RAX.i2072, align 8
  store i8 %1131, i8* %14, align 1
  %1135 = and i32 %1133, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1133, %1129
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %27, align 1
  %1144 = icmp eq i32 %1133, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %30, align 1
  %1146 = lshr i32 %1133, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %33, align 1
  %1148 = xor i32 %1146, %1132
  %1149 = add nuw nsw i32 %1148, %1132
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %39, align 1
  %1152 = sext i32 %1133 to i64
  store i64 %1152, i64* %RCX.i2070, align 8
  %1153 = add nsw i64 %1152, 12099168
  %1154 = add i64 %1123, 20
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i8*
  %1156 = load i8, i8* %1155, align 1
  %1157 = zext i8 %1156 to i64
  store i64 %1157, i64* %RAX.i2072, align 8
  %1158 = zext i8 %1156 to i32
  %1159 = add i64 %1124, -20
  %1160 = add i64 %1123, 23
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  %1162 = load i32, i32* %1161, align 4
  %1163 = sub i32 %1158, %1162
  %1164 = icmp ult i32 %1158, %1162
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %14, align 1
  %1166 = and i32 %1163, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %21, align 1
  %1171 = xor i32 %1162, %1158
  %1172 = xor i32 %1171, %1163
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %27, align 1
  %1176 = icmp eq i32 %1163, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %30, align 1
  %1178 = lshr i32 %1163, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %33, align 1
  %1180 = lshr i32 %1162, 31
  %1181 = add nuw nsw i32 %1178, %1180
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %39, align 1
  %.v101 = select i1 %1176, i64 29, i64 57
  %1184 = add i64 %1123, %.v101
  store i64 %1184, i64* %3, align 8
  br i1 %1176, label %block_40b495, label %block_.L_40b4b1

block_40b495:                                     ; preds = %block_.L_40b478
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -4
  %1187 = add i64 %1184, 3
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = add i32 %1189, 20
  %1191 = icmp eq i32 %1190, 0
  %1192 = zext i1 %1191 to i8
  %1193 = lshr i32 %1190, 31
  %1194 = add i32 %1189, 19
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RAX.i2072, align 8
  store i8 %1192, i8* %14, align 1
  %1196 = and i32 %1194, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %21, align 1
  %1201 = xor i32 %1194, %1190
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %27, align 1
  %1205 = icmp eq i32 %1194, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %30, align 1
  %1207 = lshr i32 %1194, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %33, align 1
  %1209 = xor i32 %1207, %1193
  %1210 = add nuw nsw i32 %1209, %1193
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %39, align 1
  %1213 = sext i32 %1194 to i64
  store i64 %1213, i64* %RCX.i2070, align 8
  %1214 = shl nsw i64 %1213, 2
  %1215 = add nsw i64 %1214, 11187184
  %1216 = add i64 %1184, 19
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i2072, align 8
  %1220 = add i64 %1185, -8
  %1221 = add i64 %1184, 22
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = sub i32 %1218, %1223
  %1225 = icmp ult i32 %1218, %1223
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1224, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i32 %1223, %1218
  %1233 = xor i32 %1232, %1224
  %1234 = lshr i32 %1233, 4
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %27, align 1
  %1237 = icmp eq i32 %1224, 0
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %30, align 1
  %1239 = lshr i32 %1224, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %33, align 1
  %1241 = lshr i32 %1218, 31
  %1242 = lshr i32 %1223, 31
  %1243 = xor i32 %1242, %1241
  %1244 = xor i32 %1239, %1241
  %1245 = add nuw nsw i32 %1244, %1243
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %39, align 1
  %.v105 = select i1 %1237, i64 217, i64 28
  %1248 = add i64 %1184, %.v105
  store i64 %1248, i64* %3, align 8
  br i1 %1237, label %block_.L_40b56e, label %block_.L_40b4b1

block_.L_40b4b1:                                  ; preds = %block_.L_40b478, %block_40b495
  %1249 = phi i64 [ %1248, %block_40b495 ], [ %1184, %block_.L_40b478 ]
  %1250 = load i64, i64* %RBP.i, align 8
  %1251 = add i64 %1250, -4
  %1252 = add i64 %1249, 3
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = add i32 %1254, 20
  %1256 = lshr i32 %1255, 31
  %1257 = add i32 %1254, 21
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RAX.i2072, align 8
  %1259 = icmp eq i32 %1255, -1
  %1260 = icmp eq i32 %1257, 0
  %1261 = or i1 %1259, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %14, align 1
  %1263 = and i32 %1257, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i32 %1257, %1255
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %27, align 1
  %1272 = zext i1 %1260 to i8
  store i8 %1272, i8* %30, align 1
  %1273 = lshr i32 %1257, 31
  %1274 = trunc i32 %1273 to i8
  store i8 %1274, i8* %33, align 1
  %1275 = xor i32 %1273, %1256
  %1276 = add nuw nsw i32 %1275, %1273
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %39, align 1
  %1279 = sext i32 %1257 to i64
  store i64 %1279, i64* %RCX.i2070, align 8
  %1280 = add nsw i64 %1279, 12099168
  %1281 = add i64 %1249, 20
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i8*
  %1283 = load i8, i8* %1282, align 1
  %1284 = zext i8 %1283 to i64
  store i64 %1284, i64* %RAX.i2072, align 8
  %1285 = zext i8 %1283 to i32
  %1286 = add i64 %1250, -20
  %1287 = add i64 %1249, 23
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = sub i32 %1285, %1289
  %1291 = icmp ult i32 %1285, %1289
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %21, align 1
  %1298 = xor i32 %1289, %1285
  %1299 = xor i32 %1298, %1290
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %27, align 1
  %1303 = icmp eq i32 %1290, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %30, align 1
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %33, align 1
  %1307 = lshr i32 %1289, 31
  %1308 = add nuw nsw i32 %1305, %1307
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %39, align 1
  %.v102 = select i1 %1303, i64 29, i64 57
  %1311 = add i64 %1249, %.v102
  store i64 %1311, i64* %3, align 8
  br i1 %1303, label %block_40b4ce, label %block_.L_40b4ea

block_40b4ce:                                     ; preds = %block_.L_40b4b1
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -4
  %1314 = add i64 %1311, 3
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = add i32 %1316, 20
  %1318 = lshr i32 %1317, 31
  %1319 = add i32 %1316, 21
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i2072, align 8
  %1321 = icmp eq i32 %1317, -1
  %1322 = icmp eq i32 %1319, 0
  %1323 = or i1 %1321, %1322
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %14, align 1
  %1325 = and i32 %1319, 255
  %1326 = tail call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %21, align 1
  %1330 = xor i32 %1319, %1317
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %27, align 1
  %1334 = zext i1 %1322 to i8
  store i8 %1334, i8* %30, align 1
  %1335 = lshr i32 %1319, 31
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %33, align 1
  %1337 = xor i32 %1335, %1318
  %1338 = add nuw nsw i32 %1337, %1335
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %39, align 1
  %1341 = sext i32 %1319 to i64
  store i64 %1341, i64* %RCX.i2070, align 8
  %1342 = shl nsw i64 %1341, 2
  %1343 = add nsw i64 %1342, 11187184
  %1344 = add i64 %1311, 19
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX.i2072, align 8
  %1348 = add i64 %1312, -8
  %1349 = add i64 %1311, 22
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = sub i32 %1346, %1351
  %1353 = icmp ult i32 %1346, %1351
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %14, align 1
  %1355 = and i32 %1352, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %21, align 1
  %1360 = xor i32 %1351, %1346
  %1361 = xor i32 %1360, %1352
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %27, align 1
  %1365 = icmp eq i32 %1352, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %30, align 1
  %1367 = lshr i32 %1352, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %33, align 1
  %1369 = lshr i32 %1346, 31
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1370, %1369
  %1372 = xor i32 %1367, %1369
  %1373 = add nuw nsw i32 %1372, %1371
  %1374 = icmp eq i32 %1373, 2
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %39, align 1
  %.v104 = select i1 %1365, i64 160, i64 28
  %1376 = add i64 %1311, %.v104
  store i64 %1376, i64* %3, align 8
  br i1 %1365, label %block_.L_40b56e, label %block_.L_40b4ea

block_.L_40b4ea:                                  ; preds = %block_.L_40b4b1, %block_40b4ce
  %1377 = phi i64 [ %1376, %block_40b4ce ], [ %1311, %block_.L_40b4b1 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -8
  %1380 = add i64 %1377, 19
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = mul nsw i64 %1383, 744
  store i64 %1384, i64* %RCX.i2070, align 8
  %1385 = lshr i64 %1384, 63
  %1386 = add i64 %1384, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1386, i64* %RAX.i2072, align 8
  %1387 = icmp ult i64 %1386, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1388 = icmp ult i64 %1386, %1384
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %14, align 1
  %1391 = trunc i64 %1386 to i32
  %1392 = and i32 %1391, 248
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %21, align 1
  %1397 = xor i64 %1384, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1398 = xor i64 %1397, %1386
  %1399 = lshr i64 %1398, 4
  %1400 = trunc i64 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %27, align 1
  %1402 = icmp eq i64 %1386, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %30, align 1
  %1404 = lshr i64 %1386, 63
  %1405 = trunc i64 %1404 to i8
  store i8 %1405, i8* %33, align 1
  %1406 = xor i64 %1404, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1407 = xor i64 %1404, %1385
  %1408 = add nuw nsw i64 %1406, %1407
  %1409 = icmp eq i64 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %39, align 1
  %1411 = add i64 %1384, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1412 = add i64 %1377, 33
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = add i32 %1414, -20
  %1416 = icmp ult i32 %1414, 20
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %14, align 1
  %1418 = and i32 %1415, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %21, align 1
  %1423 = xor i32 %1414, 16
  %1424 = xor i32 %1423, %1415
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %27, align 1
  %1428 = icmp eq i32 %1415, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %30, align 1
  %1430 = lshr i32 %1415, 31
  %1431 = trunc i32 %1430 to i8
  store i8 %1431, i8* %33, align 1
  %1432 = lshr i32 %1414, 31
  %1433 = xor i32 %1430, %1432
  %1434 = add nuw nsw i32 %1433, %1432
  %1435 = icmp eq i32 %1434, 2
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %39, align 1
  %1437 = icmp ne i8 %1431, 0
  %1438 = xor i1 %1437, %1435
  %.v103 = select i1 %1438, i64 39, i64 94
  %1439 = add i64 %1377, %.v103
  store i64 %1439, i64* %3, align 8
  br i1 %1438, label %block_40b511, label %block_.L_40b548

block_40b511:                                     ; preds = %block_.L_40b4ea
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -4
  %1442 = add i64 %1439, 13
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = add i32 %1444, 20
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i2070, align 8
  %1447 = icmp ugt i32 %1444, -21
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %14, align 1
  %1449 = and i32 %1445, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %21, align 1
  %1454 = xor i32 %1444, 16
  %1455 = xor i32 %1454, %1445
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %27, align 1
  %1459 = icmp eq i32 %1445, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %30, align 1
  %1461 = lshr i32 %1445, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %33, align 1
  %1463 = lshr i32 %1444, 31
  %1464 = xor i32 %1461, %1463
  %1465 = add nuw nsw i32 %1464, %1461
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %39, align 1
  %1468 = add i64 %1440, -8
  %1469 = add i64 %1439, 20
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = sext i32 %1471 to i64
  %1473 = mul nsw i64 %1472, 744
  store i64 %1473, i64* %RDX.i2068, align 8
  %1474 = lshr i64 %1473, 63
  %1475 = add i64 %1473, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1475, i64* %RSI.i2055, align 8
  %1476 = icmp ult i64 %1475, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1477 = icmp ult i64 %1475, %1473
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = trunc i64 %1475 to i32
  %1481 = and i32 %1480, 248
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  %1486 = xor i64 %1473, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1487 = xor i64 %1486, %1475
  %1488 = lshr i64 %1487, 4
  %1489 = trunc i64 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %27, align 1
  %1491 = icmp eq i64 %1475, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %30, align 1
  %1493 = lshr i64 %1475, 63
  %1494 = trunc i64 %1493 to i8
  store i8 %1494, i8* %33, align 1
  %1495 = xor i64 %1493, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1496 = xor i64 %1493, %1474
  %1497 = add nuw nsw i64 %1495, %1496
  %1498 = icmp eq i64 %1497, 2
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %39, align 1
  %1500 = load i64, i64* %RBP.i, align 8
  %1501 = add i64 %1500, -8
  %1502 = add i64 %1439, 37
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  %1506 = mul nsw i64 %1505, 744
  store i64 %1506, i64* %RDX.i2068, align 8
  %1507 = lshr i64 %1506, 63
  %1508 = load i64, i64* %RAX.i2072, align 8
  %1509 = add i64 %1506, %1508
  store i64 %1509, i64* %RAX.i2072, align 8
  %1510 = icmp ult i64 %1509, %1508
  %1511 = icmp ult i64 %1509, %1506
  %1512 = or i1 %1510, %1511
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = trunc i64 %1509 to i32
  %1515 = and i32 %1514, 255
  %1516 = tail call i32 @llvm.ctpop.i32(i32 %1515)
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %21, align 1
  %1520 = xor i64 %1506, %1508
  %1521 = xor i64 %1520, %1509
  %1522 = lshr i64 %1521, 4
  %1523 = trunc i64 %1522 to i8
  %1524 = and i8 %1523, 1
  store i8 %1524, i8* %27, align 1
  %1525 = icmp eq i64 %1509, 0
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %30, align 1
  %1527 = lshr i64 %1509, 63
  %1528 = trunc i64 %1527 to i8
  store i8 %1528, i8* %33, align 1
  %1529 = lshr i64 %1508, 63
  %1530 = xor i64 %1527, %1529
  %1531 = xor i64 %1527, %1507
  %1532 = add nuw nsw i64 %1530, %1531
  %1533 = icmp eq i64 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %39, align 1
  %1535 = add i64 %1509, 12
  %1536 = add i64 %1439, 51
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = sext i32 %1538 to i64
  store i64 %1539, i64* %RAX.i2072, align 8
  %1540 = load i64, i64* %RSI.i2055, align 8
  %1541 = shl nsw i64 %1539, 2
  %1542 = add i64 %1540, 16
  %1543 = add i64 %1542, %1541
  %1544 = load i32, i32* %ECX.i1904, align 4
  %1545 = add i64 %1439, 55
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1543 to i32*
  store i32 %1544, i32* %1546, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_40b548

block_.L_40b548:                                  ; preds = %block_.L_40b4ea, %block_40b511
  %1547 = phi i64 [ %1439, %block_.L_40b4ea ], [ %.pre53, %block_40b511 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %1548 = load i64, i64* %RBP.i, align 8
  %1549 = add i64 %1548, -8
  %1550 = add i64 %1547, 14
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  %1554 = mul nsw i64 %1553, 744
  store i64 %1554, i64* %RCX.i2070, align 8
  %1555 = lshr i64 %1554, 63
  %1556 = add i64 %1554, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1556, i64* %RAX.i2072, align 8
  %1557 = icmp ult i64 %1556, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1558 = icmp ult i64 %1556, %1554
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %14, align 1
  %1561 = trunc i64 %1556 to i32
  %1562 = and i32 %1561, 248
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  %1567 = xor i64 %1554, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1568 = xor i64 %1567, %1556
  %1569 = lshr i64 %1568, 4
  %1570 = trunc i64 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %27, align 1
  %1572 = icmp eq i64 %1556, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %30, align 1
  %1574 = lshr i64 %1556, 63
  %1575 = trunc i64 %1574 to i8
  store i8 %1575, i8* %33, align 1
  %1576 = xor i64 %1574, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1577 = xor i64 %1574, %1555
  %1578 = add nuw nsw i64 %1576, %1577
  %1579 = icmp eq i64 %1578, 2
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %39, align 1
  %1581 = add i64 %1554, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1582 = add i64 %1547, 27
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = add i32 %1584, 1
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RDX.i2068, align 8
  %1587 = icmp eq i32 %1584, -1
  %1588 = icmp eq i32 %1585, 0
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %14, align 1
  %1591 = and i32 %1585, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %21, align 1
  %1596 = xor i32 %1585, %1584
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  store i8 %1599, i8* %27, align 1
  %1600 = zext i1 %1588 to i8
  store i8 %1600, i8* %30, align 1
  %1601 = lshr i32 %1585, 31
  %1602 = trunc i32 %1601 to i8
  store i8 %1602, i8* %33, align 1
  %1603 = lshr i32 %1584, 31
  %1604 = xor i32 %1601, %1603
  %1605 = add nuw nsw i32 %1604, %1601
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %39, align 1
  %1608 = add i64 %1547, 33
  store i64 %1608, i64* %3, align 8
  store i32 %1585, i32* %1583, align 4
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 5
  store i64 %1610, i64* %3, align 8
  br label %block_.L_40b56e

block_.L_40b56e:                                  ; preds = %block_40b435, %block_.L_40b548, %block_40b4ce, %block_40b495, %block_40b45c
  %1611 = phi i64 [ %1610, %block_.L_40b548 ], [ %1376, %block_40b4ce ], [ %1248, %block_40b495 ], [ %1122, %block_40b45c ], [ %998, %block_40b435 ]
  %1612 = add i64 %1611, 458
  br label %block_.L_40b738

block_.L_40b573:                                  ; preds = %block_.L_40b41b
  %1613 = add i64 %984, 3
  store i64 %1613, i64* %3, align 8
  %1614 = load i32, i32* %946, align 4
  %1615 = add i32 %1614, 20
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RAX.i2072, align 8
  %1617 = icmp ugt i32 %1614, -21
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1615, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1614, 16
  %1625 = xor i32 %1624, %1615
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %27, align 1
  %1629 = icmp eq i32 %1615, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %30, align 1
  %1631 = lshr i32 %1615, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %33, align 1
  %1633 = lshr i32 %1614, 31
  %1634 = xor i32 %1631, %1633
  %1635 = add nuw nsw i32 %1634, %1631
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %39, align 1
  %1638 = sext i32 %1615 to i64
  store i64 %1638, i64* %RCX.i2070, align 8
  %1639 = add nsw i64 %1638, 12099168
  %1640 = add i64 %984, 17
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i8*
  %1642 = load i8, i8* %1641, align 1
  %1643 = zext i8 %1642 to i64
  store i64 %1643, i64* %RAX.i2072, align 8
  %1644 = zext i8 %1642 to i32
  %1645 = add i64 %943, -24
  %1646 = add i64 %984, 20
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = sub i32 %1644, %1648
  %1650 = icmp ult i32 %1644, %1648
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %14, align 1
  %1652 = and i32 %1649, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %21, align 1
  %1657 = xor i32 %1648, %1644
  %1658 = xor i32 %1657, %1649
  %1659 = lshr i32 %1658, 4
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  store i8 %1661, i8* %27, align 1
  %1662 = icmp eq i32 %1649, 0
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %30, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %33, align 1
  %1666 = lshr i32 %1648, 31
  %1667 = add nuw nsw i32 %1664, %1666
  %1668 = icmp eq i32 %1667, 2
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %39, align 1
  %.v64 = select i1 %1662, i64 26, i64 448
  %1670 = add i64 %984, %.v64
  store i64 %1670, i64* %3, align 8
  br i1 %1662, label %block_40b58d, label %block_.L_40b733

block_40b58d:                                     ; preds = %block_.L_40b573
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %1671 = add i64 %1670, 13
  store i64 %1671, i64* %3, align 8
  %1672 = load i32, i32* %946, align 4
  %1673 = add i32 %1672, 20
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RCX.i2070, align 8
  %1675 = icmp ugt i32 %1672, -21
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %14, align 1
  %1677 = and i32 %1673, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %21, align 1
  %1682 = xor i32 %1672, 16
  %1683 = xor i32 %1682, %1673
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %27, align 1
  %1687 = icmp eq i32 %1673, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %30, align 1
  %1689 = lshr i32 %1673, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %33, align 1
  %1691 = lshr i32 %1672, 31
  %1692 = xor i32 %1689, %1691
  %1693 = add nuw nsw i32 %1692, %1689
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %39, align 1
  %1696 = sext i32 %1673 to i64
  store i64 %1696, i64* %RDX.i2068, align 8
  %1697 = shl nsw i64 %1696, 2
  %1698 = add nsw i64 %1697, 11187184
  %1699 = add i64 %1670, 27
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = sext i32 %1701 to i64
  %1703 = mul nsw i64 %1702, 744
  store i64 %1703, i64* %RDX.i2068, align 8
  %1704 = lshr i64 %1703, 63
  %1705 = add i64 %1703, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1705, i64* %RAX.i2072, align 8
  %1706 = icmp ult i64 %1705, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1707 = icmp ult i64 %1705, %1703
  %1708 = or i1 %1706, %1707
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %14, align 1
  %1710 = trunc i64 %1705 to i32
  %1711 = and i32 %1710, 248
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i64 %1703, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1717 = xor i64 %1716, %1705
  %1718 = lshr i64 %1717, 4
  %1719 = trunc i64 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %27, align 1
  %1721 = icmp eq i64 %1705, 0
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %30, align 1
  %1723 = lshr i64 %1705, 63
  %1724 = trunc i64 %1723 to i8
  store i8 %1724, i8* %33, align 1
  %1725 = xor i64 %1723, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1726 = xor i64 %1723, %1704
  %1727 = add nuw nsw i64 %1725, %1726
  %1728 = icmp eq i64 %1727, 2
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %39, align 1
  %1730 = add i64 %1703, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1731 = add i64 %1670, 43
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RCX.i2070, align 8
  %1735 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1736 = sub i32 %1733, %1735
  %1737 = icmp ult i32 %1733, %1735
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %14, align 1
  %1739 = and i32 %1736, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739)
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %21, align 1
  %1744 = xor i32 %1735, %1733
  %1745 = xor i32 %1744, %1736
  %1746 = lshr i32 %1745, 4
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  store i8 %1748, i8* %27, align 1
  %1749 = icmp eq i32 %1736, 0
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %30, align 1
  %1751 = lshr i32 %1736, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %33, align 1
  %1753 = lshr i32 %1733, 31
  %1754 = lshr i32 %1735, 31
  %1755 = xor i32 %1754, %1753
  %1756 = xor i32 %1751, %1753
  %1757 = add nuw nsw i32 %1756, %1755
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %39, align 1
  %.v98 = select i1 %1749, i64 422, i64 56
  %1760 = add i64 %1670, %.v98
  store i64 %1760, i64* %3, align 8
  br i1 %1749, label %block_.L_40b733, label %block_40b5c5

block_40b5c5:                                     ; preds = %block_40b58d
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -4
  %1763 = add i64 %1760, 13
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = add i32 %1765, 20
  %1767 = zext i32 %1766 to i64
  store i64 %1767, i64* %RCX.i2070, align 8
  %1768 = icmp ugt i32 %1765, -21
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %14, align 1
  %1770 = and i32 %1766, 255
  %1771 = tail call i32 @llvm.ctpop.i32(i32 %1770)
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = xor i8 %1773, 1
  store i8 %1774, i8* %21, align 1
  %1775 = xor i32 %1765, 16
  %1776 = xor i32 %1775, %1766
  %1777 = lshr i32 %1776, 4
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  store i8 %1779, i8* %27, align 1
  %1780 = icmp eq i32 %1766, 0
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %30, align 1
  %1782 = lshr i32 %1766, 31
  %1783 = trunc i32 %1782 to i8
  store i8 %1783, i8* %33, align 1
  %1784 = lshr i32 %1765, 31
  %1785 = xor i32 %1782, %1784
  %1786 = add nuw nsw i32 %1785, %1782
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %39, align 1
  %1789 = sext i32 %1766 to i64
  store i64 %1789, i64* %RDX.i2068, align 8
  %1790 = shl nsw i64 %1789, 2
  %1791 = add nsw i64 %1790, 11187184
  %1792 = add i64 %1760, 26
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i2070, align 8
  %1796 = add i64 %1761, -32
  %1797 = add i64 %1760, 29
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  store i32 %1794, i32* %1798, align 4
  %1799 = load i64, i64* %RBP.i, align 8
  %1800 = add i64 %1799, -8
  %1801 = load i64, i64* %3, align 8
  %1802 = add i64 %1801, 4
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1800 to i32*
  %1804 = load i32, i32* %1803, align 4
  %1805 = sext i32 %1804 to i64
  %1806 = mul nsw i64 %1805, 744
  %1807 = load i64, i64* %RAX.i2072, align 8
  %1808 = add i64 %1806, %1807
  %1809 = lshr i64 %1808, 63
  %1810 = add i64 %1808, 96
  store i64 %1810, i64* %RSI.i2055, align 8
  %1811 = icmp ugt i64 %1808, -97
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = trunc i64 %1810 to i32
  %1814 = and i32 %1813, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %21, align 1
  %1819 = xor i64 %1810, %1808
  %1820 = lshr i64 %1819, 4
  %1821 = trunc i64 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %27, align 1
  %1823 = icmp eq i64 %1810, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %30, align 1
  %1825 = lshr i64 %1810, 63
  %1826 = trunc i64 %1825 to i8
  store i8 %1826, i8* %33, align 1
  %1827 = xor i64 %1825, %1809
  %1828 = add nuw nsw i64 %1827, %1825
  %1829 = icmp eq i64 %1828, 2
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %39, align 1
  %1831 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1831, i64* %RDX.i2068, align 8
  %1832 = add i64 %1801, 32
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  store i64 %1810, i64* %1833, align 8
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -8
  %1836 = load i64, i64* %3, align 8
  %1837 = add i64 %1836, 4
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1835 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = sext i32 %1839 to i64
  %1841 = mul nsw i64 %1840, 744
  store i64 %1841, i64* %RDX.i2068, align 8
  %1842 = lshr i64 %1841, 63
  %1843 = load i64, i64* %RAX.i2072, align 8
  %1844 = add i64 %1841, %1843
  store i64 %1844, i64* %RSI.i2055, align 8
  %1845 = icmp ult i64 %1844, %1843
  %1846 = icmp ult i64 %1844, %1841
  %1847 = or i1 %1845, %1846
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %14, align 1
  %1849 = trunc i64 %1844 to i32
  %1850 = and i32 %1849, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %21, align 1
  %1855 = xor i64 %1841, %1843
  %1856 = xor i64 %1855, %1844
  %1857 = lshr i64 %1856, 4
  %1858 = trunc i64 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %27, align 1
  %1860 = icmp eq i64 %1844, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %30, align 1
  %1862 = lshr i64 %1844, 63
  %1863 = trunc i64 %1862 to i8
  store i8 %1863, i8* %33, align 1
  %1864 = lshr i64 %1843, 63
  %1865 = xor i64 %1862, %1864
  %1866 = xor i64 %1862, %1842
  %1867 = add nuw nsw i64 %1865, %1866
  %1868 = icmp eq i64 %1867, 2
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %39, align 1
  %1870 = add i64 %1844, 96
  %1871 = add i64 %1836, 20
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RCX.i2070, align 8
  %1875 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1875, i64* %RDX.i2068, align 8
  %1876 = add i64 %1875, 16
  store i64 %1876, i64* %RSI.i2055, align 8
  %1877 = icmp ugt i64 %1875, -17
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %14, align 1
  %1879 = trunc i64 %1876 to i32
  %1880 = and i32 %1879, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %21, align 1
  %1885 = xor i64 %1875, 16
  %1886 = xor i64 %1885, %1876
  %1887 = lshr i64 %1886, 4
  %1888 = trunc i64 %1887 to i8
  %1889 = and i8 %1888, 1
  store i8 %1889, i8* %27, align 1
  %1890 = icmp eq i64 %1876, 0
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %30, align 1
  %1892 = lshr i64 %1876, 63
  %1893 = trunc i64 %1892 to i8
  store i8 %1893, i8* %33, align 1
  %1894 = lshr i64 %1875, 63
  %1895 = xor i64 %1892, %1894
  %1896 = add nuw nsw i64 %1895, %1892
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %39, align 1
  store i64 %1876, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %1899 = add i64 %1875, 8
  %1900 = add i64 %1836, 46
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  store i32 %1873, i32* %1901, align 4
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -4
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = add i32 %1907, 20
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RCX.i2070, align 8
  %1910 = icmp ugt i32 %1907, -21
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %14, align 1
  %1912 = and i32 %1908, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %21, align 1
  %1917 = xor i32 %1907, 16
  %1918 = xor i32 %1917, %1908
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1908, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1908, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i32 %1907, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1924
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = sext i32 %1908 to i64
  store i64 %1931, i64* %RDX.i2068, align 8
  %1932 = shl nsw i64 %1931, 2
  %1933 = add nsw i64 %1932, 11187184
  %1934 = add i64 %1904, 16
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RCX.i2070, align 8
  %1938 = add i64 %1902, -8
  %1939 = add i64 %1904, 20
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = sext i32 %1941 to i64
  %1943 = mul nsw i64 %1942, 744
  store i64 %1943, i64* %RDX.i2068, align 8
  %1944 = lshr i64 %1943, 63
  %1945 = load i64, i64* %RAX.i2072, align 8
  %1946 = add i64 %1943, %1945
  store i64 %1946, i64* %RSI.i2055, align 8
  %1947 = icmp ult i64 %1946, %1945
  %1948 = icmp ult i64 %1946, %1943
  %1949 = or i1 %1947, %1948
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %14, align 1
  %1951 = trunc i64 %1946 to i32
  %1952 = and i32 %1951, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %21, align 1
  %1957 = xor i64 %1943, %1945
  %1958 = xor i64 %1957, %1946
  %1959 = lshr i64 %1958, 4
  %1960 = trunc i64 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %27, align 1
  %1962 = icmp eq i64 %1946, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i64 %1946, 63
  %1965 = trunc i64 %1964 to i8
  store i8 %1965, i8* %33, align 1
  %1966 = lshr i64 %1945, 63
  %1967 = xor i64 %1964, %1966
  %1968 = xor i64 %1964, %1944
  %1969 = add nuw nsw i64 %1967, %1968
  %1970 = icmp eq i64 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %39, align 1
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -8
  %1974 = add i64 %1904, 37
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = sext i32 %1976 to i64
  %1978 = mul nsw i64 %1977, 744
  store i64 %1978, i64* %RDX.i2068, align 8
  %1979 = lshr i64 %1978, 63
  %1980 = add i64 %1978, %1945
  store i64 %1980, i64* %RDI.i1820, align 8
  %1981 = icmp ult i64 %1980, %1945
  %1982 = icmp ult i64 %1980, %1978
  %1983 = or i1 %1981, %1982
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %14, align 1
  %1985 = trunc i64 %1980 to i32
  %1986 = and i32 %1985, 255
  %1987 = tail call i32 @llvm.ctpop.i32(i32 %1986)
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = xor i8 %1989, 1
  store i8 %1990, i8* %21, align 1
  %1991 = xor i64 %1978, %1945
  %1992 = xor i64 %1991, %1980
  %1993 = lshr i64 %1992, 4
  %1994 = trunc i64 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %27, align 1
  %1996 = icmp eq i64 %1980, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %30, align 1
  %1998 = lshr i64 %1980, 63
  %1999 = trunc i64 %1998 to i8
  store i8 %1999, i8* %33, align 1
  %2000 = xor i64 %1998, %1966
  %2001 = xor i64 %1998, %1979
  %2002 = add nuw nsw i64 %2000, %2001
  %2003 = icmp eq i64 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %39, align 1
  %R8D.i1434 = bitcast %union.anon* %58 to i32*
  %2005 = add i64 %1980, 96
  %2006 = add i64 %1904, 54
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %R8.i2059, align 8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2011 = add i32 %2008, 1
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %2010, align 8
  %2013 = icmp eq i32 %2008, -1
  %2014 = icmp eq i32 %2011, 0
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %14, align 1
  %2017 = and i32 %2011, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %21, align 1
  %2022 = xor i32 %2011, %2008
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %27, align 1
  %2026 = zext i1 %2014 to i8
  store i8 %2026, i8* %30, align 1
  %2027 = lshr i32 %2011, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %33, align 1
  %2029 = lshr i32 %2008, 31
  %2030 = xor i32 %2027, %2029
  %2031 = add nuw nsw i32 %2030, %2027
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %39, align 1
  %2034 = add i64 %1904, 65
  store i64 %2034, i64* %3, align 8
  store i32 %2011, i32* %2007, align 4
  %2035 = load i32, i32* %R8D.i1434, align 4
  %2036 = load i64, i64* %3, align 8
  %2037 = sext i32 %2035 to i64
  store i64 %2037, i64* %RDX.i2068, align 8
  %2038 = load i64, i64* %RSI.i2055, align 8
  %2039 = shl nsw i64 %2037, 2
  %2040 = add nsw i64 %2039, 100
  %2041 = add i64 %2040, %2038
  %2042 = load i32, i32* %ECX.i1904, align 4
  %2043 = add i64 %2036, 7
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2041 to i32*
  store i32 %2042, i32* %2044, align 4
  %2045 = load i64, i64* %RBP.i, align 8
  %2046 = add i64 %2045, -32
  %2047 = load i64, i64* %3, align 8
  %2048 = add i64 %2047, 4
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2046 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = sext i32 %2050 to i64
  %2052 = mul nsw i64 %2051, 744
  %2053 = load i64, i64* %RAX.i2072, align 8
  %2054 = add i64 %2052, %2053
  %2055 = lshr i64 %2054, 63
  %2056 = add i64 %2054, 96
  store i64 %2056, i64* %RSI.i2055, align 8
  %2057 = icmp ugt i64 %2054, -97
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %14, align 1
  %2059 = trunc i64 %2056 to i32
  %2060 = and i32 %2059, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %21, align 1
  %2065 = xor i64 %2056, %2054
  %2066 = lshr i64 %2065, 4
  %2067 = trunc i64 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %27, align 1
  %2069 = icmp eq i64 %2056, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %30, align 1
  %2071 = lshr i64 %2056, 63
  %2072 = trunc i64 %2071 to i8
  store i8 %2072, i8* %33, align 1
  %2073 = xor i64 %2071, %2055
  %2074 = add nuw nsw i64 %2073, %2071
  %2075 = icmp eq i64 %2074, 2
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %39, align 1
  %2077 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2077, i64* %RDX.i2068, align 8
  %2078 = add i64 %2047, 32
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  store i64 %2056, i64* %2079, align 8
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -32
  %2082 = load i64, i64* %3, align 8
  %2083 = add i64 %2082, 4
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2081 to i32*
  %2085 = load i32, i32* %2084, align 4
  %2086 = sext i32 %2085 to i64
  %2087 = mul nsw i64 %2086, 744
  store i64 %2087, i64* %RDX.i2068, align 8
  %2088 = lshr i64 %2087, 63
  %2089 = load i64, i64* %RAX.i2072, align 8
  %2090 = add i64 %2087, %2089
  store i64 %2090, i64* %RSI.i2055, align 8
  %2091 = icmp ult i64 %2090, %2089
  %2092 = icmp ult i64 %2090, %2087
  %2093 = or i1 %2091, %2092
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %14, align 1
  %2095 = trunc i64 %2090 to i32
  %2096 = and i32 %2095, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %21, align 1
  %2101 = xor i64 %2087, %2089
  %2102 = xor i64 %2101, %2090
  %2103 = lshr i64 %2102, 4
  %2104 = trunc i64 %2103 to i8
  %2105 = and i8 %2104, 1
  store i8 %2105, i8* %27, align 1
  %2106 = icmp eq i64 %2090, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %30, align 1
  %2108 = lshr i64 %2090, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %33, align 1
  %2110 = lshr i64 %2089, 63
  %2111 = xor i64 %2108, %2110
  %2112 = xor i64 %2108, %2088
  %2113 = add nuw nsw i64 %2111, %2112
  %2114 = icmp eq i64 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %39, align 1
  %2116 = add i64 %2090, 96
  %2117 = add i64 %2082, 20
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RCX.i2070, align 8
  %2121 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2121, i64* %RDX.i2068, align 8
  %2122 = add i64 %2121, 16
  store i64 %2122, i64* %RSI.i2055, align 8
  %2123 = icmp ugt i64 %2121, -17
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %14, align 1
  %2125 = trunc i64 %2122 to i32
  %2126 = and i32 %2125, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i64 %2121, 16
  %2132 = xor i64 %2131, %2122
  %2133 = lshr i64 %2132, 4
  %2134 = trunc i64 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %27, align 1
  %2136 = icmp eq i64 %2122, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %30, align 1
  %2138 = lshr i64 %2122, 63
  %2139 = trunc i64 %2138 to i8
  store i8 %2139, i8* %33, align 1
  %2140 = lshr i64 %2121, 63
  %2141 = xor i64 %2138, %2140
  %2142 = add nuw nsw i64 %2141, %2138
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  store i64 %2122, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %2145 = add i64 %2121, 8
  %2146 = add i64 %2082, 46
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  store i32 %2119, i32* %2147, align 4
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -4
  %2150 = load i64, i64* %3, align 8
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2149 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = sext i32 %2153 to i64
  store i64 %2154, i64* %RDX.i2068, align 8
  %2155 = shl nsw i64 %2154, 2
  %2156 = add nsw i64 %2155, 11187184
  %2157 = add i64 %2150, 11
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RCX.i2070, align 8
  %2161 = add i64 %2148, -32
  %2162 = add i64 %2150, 15
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = sext i32 %2164 to i64
  %2166 = mul nsw i64 %2165, 744
  store i64 %2166, i64* %RDX.i2068, align 8
  %2167 = lshr i64 %2166, 63
  %2168 = load i64, i64* %RAX.i2072, align 8
  %2169 = add i64 %2166, %2168
  store i64 %2169, i64* %RSI.i2055, align 8
  %2170 = icmp ult i64 %2169, %2168
  %2171 = icmp ult i64 %2169, %2166
  %2172 = or i1 %2170, %2171
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %14, align 1
  %2174 = trunc i64 %2169 to i32
  %2175 = and i32 %2174, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  %2180 = xor i64 %2166, %2168
  %2181 = xor i64 %2180, %2169
  %2182 = lshr i64 %2181, 4
  %2183 = trunc i64 %2182 to i8
  %2184 = and i8 %2183, 1
  store i8 %2184, i8* %27, align 1
  %2185 = icmp eq i64 %2169, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %30, align 1
  %2187 = lshr i64 %2169, 63
  %2188 = trunc i64 %2187 to i8
  store i8 %2188, i8* %33, align 1
  %2189 = lshr i64 %2168, 63
  %2190 = xor i64 %2187, %2189
  %2191 = xor i64 %2187, %2167
  %2192 = add nuw nsw i64 %2190, %2191
  %2193 = icmp eq i64 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %39, align 1
  %2195 = add i64 %2150, 32
  store i64 %2195, i64* %3, align 8
  %2196 = load i32, i32* %2163, align 4
  %2197 = sext i32 %2196 to i64
  %2198 = mul nsw i64 %2197, 744
  store i64 %2198, i64* %RDX.i2068, align 8
  %2199 = lshr i64 %2198, 63
  %2200 = add i64 %2198, %2168
  store i64 %2200, i64* %RDI.i1820, align 8
  %2201 = icmp ult i64 %2200, %2168
  %2202 = icmp ult i64 %2200, %2198
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %14, align 1
  %2205 = trunc i64 %2200 to i32
  %2206 = and i32 %2205, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %21, align 1
  %2211 = xor i64 %2198, %2168
  %2212 = xor i64 %2211, %2200
  %2213 = lshr i64 %2212, 4
  %2214 = trunc i64 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %27, align 1
  %2216 = icmp eq i64 %2200, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %30, align 1
  %2218 = lshr i64 %2200, 63
  %2219 = trunc i64 %2218 to i8
  store i8 %2219, i8* %33, align 1
  %2220 = xor i64 %2218, %2189
  %2221 = xor i64 %2218, %2199
  %2222 = add nuw nsw i64 %2220, %2221
  %2223 = icmp eq i64 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %39, align 1
  %2225 = add i64 %2200, 96
  %2226 = add i64 %2150, 49
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %R8.i2059, align 8
  %2230 = add i32 %2228, 1
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %2010, align 8
  %2232 = icmp eq i32 %2228, -1
  %2233 = icmp eq i32 %2230, 0
  %2234 = or i1 %2232, %2233
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %14, align 1
  %2236 = and i32 %2230, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %21, align 1
  %2241 = xor i32 %2230, %2228
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %27, align 1
  %2245 = zext i1 %2233 to i8
  store i8 %2245, i8* %30, align 1
  %2246 = lshr i32 %2230, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %33, align 1
  %2248 = lshr i32 %2228, 31
  %2249 = xor i32 %2246, %2248
  %2250 = add nuw nsw i32 %2249, %2246
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %39, align 1
  %2253 = add i64 %2150, 60
  store i64 %2253, i64* %3, align 8
  store i32 %2230, i32* %2227, align 4
  %2254 = load i32, i32* %R8D.i1434, align 4
  %2255 = load i64, i64* %3, align 8
  %2256 = sext i32 %2254 to i64
  store i64 %2256, i64* %RDX.i2068, align 8
  %2257 = load i64, i64* %RSI.i2055, align 8
  %2258 = shl nsw i64 %2256, 2
  %2259 = add nsw i64 %2258, 100
  %2260 = add i64 %2259, %2257
  %2261 = load i32, i32* %ECX.i1904, align 4
  %2262 = add i64 %2255, 7
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2260 to i32*
  store i32 %2261, i32* %2263, align 4
  %2264 = load i64, i64* %3, align 8
  %2265 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RCX.i2070, align 8
  %2267 = load i64, i64* %RBP.i, align 8
  %2268 = add i64 %2267, -4
  %2269 = add i64 %2264, 11
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = add i32 %2271, 20
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %R8.i2059, align 8
  %2274 = icmp ugt i32 %2271, -21
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %14, align 1
  %2276 = and i32 %2272, 255
  %2277 = tail call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  store i8 %2280, i8* %21, align 1
  %2281 = xor i32 %2271, 16
  %2282 = xor i32 %2281, %2272
  %2283 = lshr i32 %2282, 4
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %27, align 1
  %2286 = icmp eq i32 %2272, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %30, align 1
  %2288 = lshr i32 %2272, 31
  %2289 = trunc i32 %2288 to i8
  store i8 %2289, i8* %33, align 1
  %2290 = lshr i32 %2271, 31
  %2291 = xor i32 %2288, %2290
  %2292 = add nuw nsw i32 %2291, %2288
  %2293 = icmp eq i32 %2292, 2
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %39, align 1
  %2295 = sext i32 %2272 to i64
  store i64 %2295, i64* %RDX.i2068, align 8
  %2296 = shl nsw i64 %2295, 2
  %2297 = add nsw i64 %2296, 11187184
  %2298 = add i64 %2264, 26
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = sext i32 %2300 to i64
  %2302 = mul nsw i64 %2301, 744
  store i64 %2302, i64* %RDX.i2068, align 8
  %2303 = lshr i64 %2302, 63
  %2304 = load i64, i64* %RAX.i2072, align 8
  %2305 = add i64 %2302, %2304
  store i64 %2305, i64* %RAX.i2072, align 8
  %2306 = icmp ult i64 %2305, %2304
  %2307 = icmp ult i64 %2305, %2302
  %2308 = or i1 %2306, %2307
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %14, align 1
  %2310 = trunc i64 %2305 to i32
  %2311 = and i32 %2310, 255
  %2312 = tail call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  store i8 %2315, i8* %21, align 1
  %2316 = xor i64 %2302, %2304
  %2317 = xor i64 %2316, %2305
  %2318 = lshr i64 %2317, 4
  %2319 = trunc i64 %2318 to i8
  %2320 = and i8 %2319, 1
  store i8 %2320, i8* %27, align 1
  %2321 = icmp eq i64 %2305, 0
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %30, align 1
  %2323 = lshr i64 %2305, 63
  %2324 = trunc i64 %2323 to i8
  store i8 %2324, i8* %33, align 1
  %2325 = lshr i64 %2304, 63
  %2326 = xor i64 %2323, %2325
  %2327 = xor i64 %2323, %2303
  %2328 = add nuw nsw i64 %2326, %2327
  %2329 = icmp eq i64 %2328, 2
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %39, align 1
  %2331 = add i64 %2305, 740
  %2332 = load i32, i32* %ECX.i1904, align 4
  %2333 = add i64 %2264, 42
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2331 to i32*
  store i32 %2332, i32* %2334, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_40b733

block_.L_40b733:                                  ; preds = %block_.L_40b573, %block_40b5c5, %block_40b58d
  %2335 = phi i64 [ %.pre54, %block_40b5c5 ], [ %1760, %block_40b58d ], [ %1670, %block_.L_40b573 ]
  %2336 = add i64 %2335, 5
  store i64 %2336, i64* %3, align 8
  br label %block_.L_40b738

block_.L_40b738:                                  ; preds = %block_.L_40b733, %block_.L_40b56e
  %storemerge = phi i64 [ %1612, %block_.L_40b56e ], [ %2336, %block_.L_40b733 ]
  %2337 = load i64, i64* %RBP.i, align 8
  %2338 = add i64 %2337, -4
  %2339 = add i64 %storemerge, 3
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i32*
  %2341 = load i32, i32* %2340, align 4
  %2342 = add i32 %2341, -1
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RAX.i2072, align 8
  %2344 = icmp eq i32 %2341, 0
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %14, align 1
  %2346 = and i32 %2342, 255
  %2347 = tail call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  store i8 %2350, i8* %21, align 1
  %2351 = xor i32 %2342, %2341
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %27, align 1
  %2355 = icmp eq i32 %2342, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %30, align 1
  %2357 = lshr i32 %2342, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %33, align 1
  %2359 = lshr i32 %2341, 31
  %2360 = xor i32 %2357, %2359
  %2361 = add nuw nsw i32 %2360, %2359
  %2362 = icmp eq i32 %2361, 2
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %39, align 1
  %2364 = sext i32 %2342 to i64
  store i64 %2364, i64* %RCX.i2070, align 8
  %2365 = add nsw i64 %2364, 12099168
  %2366 = add i64 %storemerge, 17
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i8*
  %2368 = load i8, i8* %2367, align 1
  %2369 = zext i8 %2368 to i64
  store i64 %2369, i64* %RAX.i2072, align 8
  %2370 = zext i8 %2368 to i32
  store i8 0, i8* %14, align 1
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2375 = icmp eq i8 %2368, 0
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v65 = select i1 %2375, i64 26, i64 344
  %2377 = add i64 %storemerge, %.v65
  store i64 %2377, i64* %3, align 8
  br i1 %2375, label %block_40b752, label %block_.L_40b890

block_40b752:                                     ; preds = %block_.L_40b738
  %2378 = add i64 %2337, -16
  %2379 = add i64 %2377, 4
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  store i8 0, i8* %14, align 1
  %2382 = and i32 %2381, 255
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2387 = icmp eq i32 %2381, 0
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %30, align 1
  %2389 = lshr i32 %2381, 31
  %2390 = trunc i32 %2389 to i8
  store i8 %2390, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v90 = select i1 %2387, i64 10, i64 313
  %2391 = add i64 %2377, %.v90
  store i64 %2391, i64* %3, align 8
  br i1 %2387, label %block_40b75c, label %block_.L_40b88b

block_40b75c:                                     ; preds = %block_40b752
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %3, align 8
  %2393 = load i32, i32* %2340, align 4
  %2394 = add i32 %2393, -1
  %2395 = icmp eq i32 %2394, 0
  %2396 = zext i1 %2395 to i8
  %2397 = lshr i32 %2394, 31
  %2398 = add i32 %2393, -2
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RAX.i2072, align 8
  store i8 %2396, i8* %14, align 1
  %2400 = and i32 %2398, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %21, align 1
  %2405 = xor i32 %2398, %2394
  %2406 = lshr i32 %2405, 4
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %27, align 1
  %2409 = icmp eq i32 %2398, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %30, align 1
  %2411 = lshr i32 %2398, 31
  %2412 = trunc i32 %2411 to i8
  store i8 %2412, i8* %33, align 1
  %2413 = xor i32 %2411, %2397
  %2414 = add nuw nsw i32 %2413, %2397
  %2415 = icmp eq i32 %2414, 2
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %39, align 1
  %2417 = sext i32 %2398 to i64
  store i64 %2417, i64* %RCX.i2070, align 8
  %2418 = add nsw i64 %2417, 12099168
  %2419 = add i64 %2391, 20
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i8*
  %2421 = load i8, i8* %2420, align 1
  %2422 = zext i8 %2421 to i64
  store i64 %2422, i64* %RAX.i2072, align 8
  %2423 = zext i8 %2421 to i32
  %2424 = add i64 %2337, -20
  %2425 = add i64 %2391, 23
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sub i32 %2423, %2427
  %2429 = icmp ult i32 %2423, %2427
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %14, align 1
  %2431 = and i32 %2428, 255
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %21, align 1
  %2436 = xor i32 %2427, %2423
  %2437 = xor i32 %2436, %2428
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %27, align 1
  %2441 = icmp eq i32 %2428, 0
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %30, align 1
  %2443 = lshr i32 %2428, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %33, align 1
  %2445 = lshr i32 %2427, 31
  %2446 = add nuw nsw i32 %2443, %2445
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %39, align 1
  %.v91 = select i1 %2441, i64 29, i64 57
  %2449 = add i64 %2391, %.v91
  store i64 %2449, i64* %3, align 8
  br i1 %2441, label %block_40b779, label %block_.L_40b795

block_40b779:                                     ; preds = %block_40b75c
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -4
  %2452 = add i64 %2449, 3
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = add i32 %2454, -1
  %2456 = icmp eq i32 %2455, 0
  %2457 = zext i1 %2456 to i8
  %2458 = lshr i32 %2455, 31
  %2459 = add i32 %2454, -2
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RAX.i2072, align 8
  store i8 %2457, i8* %14, align 1
  %2461 = and i32 %2459, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %21, align 1
  %2466 = xor i32 %2459, %2455
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %27, align 1
  %2470 = icmp eq i32 %2459, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %30, align 1
  %2472 = lshr i32 %2459, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %33, align 1
  %2474 = xor i32 %2472, %2458
  %2475 = add nuw nsw i32 %2474, %2458
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %39, align 1
  %2478 = sext i32 %2459 to i64
  store i64 %2478, i64* %RCX.i2070, align 8
  %2479 = shl nsw i64 %2478, 2
  %2480 = add nsw i64 %2479, 11187184
  %2481 = add i64 %2449, 19
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RAX.i2072, align 8
  %2485 = add i64 %2450, -8
  %2486 = add i64 %2449, 22
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = sub i32 %2483, %2488
  %2490 = icmp ult i32 %2483, %2488
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %14, align 1
  %2492 = and i32 %2489, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %21, align 1
  %2497 = xor i32 %2488, %2483
  %2498 = xor i32 %2497, %2489
  %2499 = lshr i32 %2498, 4
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %27, align 1
  %2502 = icmp eq i32 %2489, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %30, align 1
  %2504 = lshr i32 %2489, 31
  %2505 = trunc i32 %2504 to i8
  store i8 %2505, i8* %33, align 1
  %2506 = lshr i32 %2483, 31
  %2507 = lshr i32 %2488, 31
  %2508 = xor i32 %2507, %2506
  %2509 = xor i32 %2504, %2506
  %2510 = add nuw nsw i32 %2509, %2508
  %2511 = icmp eq i32 %2510, 2
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %39, align 1
  %.v97 = select i1 %2502, i64 274, i64 28
  %2513 = add i64 %2449, %.v97
  store i64 %2513, i64* %3, align 8
  br i1 %2502, label %block_.L_40b88b, label %block_.L_40b795

block_.L_40b795:                                  ; preds = %block_40b75c, %block_40b779
  %2514 = phi i64 [ %2513, %block_40b779 ], [ %2449, %block_40b75c ]
  %2515 = load i64, i64* %RBP.i, align 8
  %2516 = add i64 %2515, -4
  %2517 = add i64 %2514, 3
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i32*
  %2519 = load i32, i32* %2518, align 4
  %2520 = add i32 %2519, -1
  %2521 = lshr i32 %2520, 31
  %2522 = add i32 %2519, -21
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i2072, align 8
  %2524 = icmp ult i32 %2520, 20
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %14, align 1
  %2526 = and i32 %2522, 255
  %2527 = tail call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  store i8 %2530, i8* %21, align 1
  %2531 = xor i32 %2520, 16
  %2532 = xor i32 %2531, %2522
  %2533 = lshr i32 %2532, 4
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  store i8 %2535, i8* %27, align 1
  %2536 = icmp eq i32 %2522, 0
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %30, align 1
  %2538 = lshr i32 %2522, 31
  %2539 = trunc i32 %2538 to i8
  store i8 %2539, i8* %33, align 1
  %2540 = xor i32 %2538, %2521
  %2541 = add nuw nsw i32 %2540, %2521
  %2542 = icmp eq i32 %2541, 2
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %39, align 1
  %2544 = sext i32 %2522 to i64
  store i64 %2544, i64* %RCX.i2070, align 8
  %2545 = add nsw i64 %2544, 12099168
  %2546 = add i64 %2514, 20
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i8*
  %2548 = load i8, i8* %2547, align 1
  %2549 = zext i8 %2548 to i64
  store i64 %2549, i64* %RAX.i2072, align 8
  %2550 = zext i8 %2548 to i32
  %2551 = add i64 %2515, -20
  %2552 = add i64 %2514, 23
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = sub i32 %2550, %2554
  %2556 = icmp ult i32 %2550, %2554
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %14, align 1
  %2558 = and i32 %2555, 255
  %2559 = tail call i32 @llvm.ctpop.i32(i32 %2558)
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  store i8 %2562, i8* %21, align 1
  %2563 = xor i32 %2554, %2550
  %2564 = xor i32 %2563, %2555
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  store i8 %2567, i8* %27, align 1
  %2568 = icmp eq i32 %2555, 0
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %30, align 1
  %2570 = lshr i32 %2555, 31
  %2571 = trunc i32 %2570 to i8
  store i8 %2571, i8* %33, align 1
  %2572 = lshr i32 %2554, 31
  %2573 = add nuw nsw i32 %2570, %2572
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %39, align 1
  %.v92 = select i1 %2568, i64 29, i64 57
  %2576 = add i64 %2514, %.v92
  store i64 %2576, i64* %3, align 8
  br i1 %2568, label %block_40b7b2, label %block_.L_40b7ce

block_40b7b2:                                     ; preds = %block_.L_40b795
  %2577 = load i64, i64* %RBP.i, align 8
  %2578 = add i64 %2577, -4
  %2579 = add i64 %2576, 3
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = add i32 %2581, -1
  %2583 = lshr i32 %2582, 31
  %2584 = add i32 %2581, -21
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RAX.i2072, align 8
  %2586 = icmp ult i32 %2582, 20
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %14, align 1
  %2588 = and i32 %2584, 255
  %2589 = tail call i32 @llvm.ctpop.i32(i32 %2588)
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = xor i8 %2591, 1
  store i8 %2592, i8* %21, align 1
  %2593 = xor i32 %2582, 16
  %2594 = xor i32 %2593, %2584
  %2595 = lshr i32 %2594, 4
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  store i8 %2597, i8* %27, align 1
  %2598 = icmp eq i32 %2584, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %30, align 1
  %2600 = lshr i32 %2584, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %33, align 1
  %2602 = xor i32 %2600, %2583
  %2603 = add nuw nsw i32 %2602, %2583
  %2604 = icmp eq i32 %2603, 2
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %39, align 1
  %2606 = sext i32 %2584 to i64
  store i64 %2606, i64* %RCX.i2070, align 8
  %2607 = shl nsw i64 %2606, 2
  %2608 = add nsw i64 %2607, 11187184
  %2609 = add i64 %2576, 19
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RAX.i2072, align 8
  %2613 = add i64 %2577, -8
  %2614 = add i64 %2576, 22
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = sub i32 %2611, %2616
  %2618 = icmp ult i32 %2611, %2616
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %14, align 1
  %2620 = and i32 %2617, 255
  %2621 = tail call i32 @llvm.ctpop.i32(i32 %2620)
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  %2624 = xor i8 %2623, 1
  store i8 %2624, i8* %21, align 1
  %2625 = xor i32 %2616, %2611
  %2626 = xor i32 %2625, %2617
  %2627 = lshr i32 %2626, 4
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %27, align 1
  %2630 = icmp eq i32 %2617, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %30, align 1
  %2632 = lshr i32 %2617, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %33, align 1
  %2634 = lshr i32 %2611, 31
  %2635 = lshr i32 %2616, 31
  %2636 = xor i32 %2635, %2634
  %2637 = xor i32 %2632, %2634
  %2638 = add nuw nsw i32 %2637, %2636
  %2639 = icmp eq i32 %2638, 2
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %39, align 1
  %.v96 = select i1 %2630, i64 217, i64 28
  %2641 = add i64 %2576, %.v96
  store i64 %2641, i64* %3, align 8
  br i1 %2630, label %block_.L_40b88b, label %block_.L_40b7ce

block_.L_40b7ce:                                  ; preds = %block_.L_40b795, %block_40b7b2
  %2642 = phi i64 [ %2641, %block_40b7b2 ], [ %2576, %block_.L_40b795 ]
  %2643 = load i64, i64* %RBP.i, align 8
  %2644 = add i64 %2643, -4
  %2645 = add i64 %2642, 3
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = add i32 %2647, -1
  %2649 = lshr i32 %2648, 31
  %2650 = add i32 %2647, 19
  %2651 = zext i32 %2650 to i64
  store i64 %2651, i64* %RAX.i2072, align 8
  %2652 = icmp ugt i32 %2648, -21
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %14, align 1
  %2654 = and i32 %2650, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %21, align 1
  %2659 = xor i32 %2648, 16
  %2660 = xor i32 %2659, %2650
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %27, align 1
  %2664 = icmp eq i32 %2650, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %30, align 1
  %2666 = lshr i32 %2650, 31
  %2667 = trunc i32 %2666 to i8
  store i8 %2667, i8* %33, align 1
  %2668 = xor i32 %2666, %2649
  %2669 = add nuw nsw i32 %2668, %2666
  %2670 = icmp eq i32 %2669, 2
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %39, align 1
  %2672 = sext i32 %2650 to i64
  store i64 %2672, i64* %RCX.i2070, align 8
  %2673 = add nsw i64 %2672, 12099168
  %2674 = add i64 %2642, 20
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i8*
  %2676 = load i8, i8* %2675, align 1
  %2677 = zext i8 %2676 to i64
  store i64 %2677, i64* %RAX.i2072, align 8
  %2678 = zext i8 %2676 to i32
  %2679 = add i64 %2643, -20
  %2680 = add i64 %2642, 23
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = sub i32 %2678, %2682
  %2684 = icmp ult i32 %2678, %2682
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %14, align 1
  %2686 = and i32 %2683, 255
  %2687 = tail call i32 @llvm.ctpop.i32(i32 %2686)
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  %2690 = xor i8 %2689, 1
  store i8 %2690, i8* %21, align 1
  %2691 = xor i32 %2682, %2678
  %2692 = xor i32 %2691, %2683
  %2693 = lshr i32 %2692, 4
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  store i8 %2695, i8* %27, align 1
  %2696 = icmp eq i32 %2683, 0
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %30, align 1
  %2698 = lshr i32 %2683, 31
  %2699 = trunc i32 %2698 to i8
  store i8 %2699, i8* %33, align 1
  %2700 = lshr i32 %2682, 31
  %2701 = add nuw nsw i32 %2698, %2700
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %39, align 1
  %.v93 = select i1 %2696, i64 29, i64 57
  %2704 = add i64 %2642, %.v93
  store i64 %2704, i64* %3, align 8
  br i1 %2696, label %block_40b7eb, label %block_.L_40b807

block_40b7eb:                                     ; preds = %block_.L_40b7ce
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -4
  %2707 = add i64 %2704, 3
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = add i32 %2709, -1
  %2711 = lshr i32 %2710, 31
  %2712 = add i32 %2709, 19
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RAX.i2072, align 8
  %2714 = icmp ugt i32 %2710, -21
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %14, align 1
  %2716 = and i32 %2712, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %21, align 1
  %2721 = xor i32 %2710, 16
  %2722 = xor i32 %2721, %2712
  %2723 = lshr i32 %2722, 4
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  store i8 %2725, i8* %27, align 1
  %2726 = icmp eq i32 %2712, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %30, align 1
  %2728 = lshr i32 %2712, 31
  %2729 = trunc i32 %2728 to i8
  store i8 %2729, i8* %33, align 1
  %2730 = xor i32 %2728, %2711
  %2731 = add nuw nsw i32 %2730, %2728
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %39, align 1
  %2734 = sext i32 %2712 to i64
  store i64 %2734, i64* %RCX.i2070, align 8
  %2735 = shl nsw i64 %2734, 2
  %2736 = add nsw i64 %2735, 11187184
  %2737 = add i64 %2704, 19
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i32*
  %2739 = load i32, i32* %2738, align 4
  %2740 = zext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i2072, align 8
  %2741 = add i64 %2705, -8
  %2742 = add i64 %2704, 22
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = sub i32 %2739, %2744
  %2746 = icmp ult i32 %2739, %2744
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %14, align 1
  %2748 = and i32 %2745, 255
  %2749 = tail call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %21, align 1
  %2753 = xor i32 %2744, %2739
  %2754 = xor i32 %2753, %2745
  %2755 = lshr i32 %2754, 4
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  store i8 %2757, i8* %27, align 1
  %2758 = icmp eq i32 %2745, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %30, align 1
  %2760 = lshr i32 %2745, 31
  %2761 = trunc i32 %2760 to i8
  store i8 %2761, i8* %33, align 1
  %2762 = lshr i32 %2739, 31
  %2763 = lshr i32 %2744, 31
  %2764 = xor i32 %2763, %2762
  %2765 = xor i32 %2760, %2762
  %2766 = add nuw nsw i32 %2765, %2764
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %39, align 1
  %.v95 = select i1 %2758, i64 160, i64 28
  %2769 = add i64 %2704, %.v95
  store i64 %2769, i64* %3, align 8
  br i1 %2758, label %block_.L_40b88b, label %block_.L_40b807

block_.L_40b807:                                  ; preds = %block_.L_40b7ce, %block_40b7eb
  %2770 = phi i64 [ %2769, %block_40b7eb ], [ %2704, %block_.L_40b7ce ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %2771 = load i64, i64* %RBP.i, align 8
  %2772 = add i64 %2771, -8
  %2773 = add i64 %2770, 19
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = sext i32 %2775 to i64
  %2777 = mul nsw i64 %2776, 744
  store i64 %2777, i64* %RCX.i2070, align 8
  %2778 = lshr i64 %2777, 63
  %2779 = add i64 %2777, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2779, i64* %RAX.i2072, align 8
  %2780 = icmp ult i64 %2779, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2781 = icmp ult i64 %2779, %2777
  %2782 = or i1 %2780, %2781
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %14, align 1
  %2784 = trunc i64 %2779 to i32
  %2785 = and i32 %2784, 248
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %21, align 1
  %2790 = xor i64 %2777, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2791 = xor i64 %2790, %2779
  %2792 = lshr i64 %2791, 4
  %2793 = trunc i64 %2792 to i8
  %2794 = and i8 %2793, 1
  store i8 %2794, i8* %27, align 1
  %2795 = icmp eq i64 %2779, 0
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %30, align 1
  %2797 = lshr i64 %2779, 63
  %2798 = trunc i64 %2797 to i8
  store i8 %2798, i8* %33, align 1
  %2799 = xor i64 %2797, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2800 = xor i64 %2797, %2778
  %2801 = add nuw nsw i64 %2799, %2800
  %2802 = icmp eq i64 %2801, 2
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %39, align 1
  %2804 = add i64 %2777, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2805 = add i64 %2770, 33
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = add i32 %2807, -20
  %2809 = icmp ult i32 %2807, 20
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %14, align 1
  %2811 = and i32 %2808, 255
  %2812 = tail call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  store i8 %2815, i8* %21, align 1
  %2816 = xor i32 %2807, 16
  %2817 = xor i32 %2816, %2808
  %2818 = lshr i32 %2817, 4
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  store i8 %2820, i8* %27, align 1
  %2821 = icmp eq i32 %2808, 0
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %30, align 1
  %2823 = lshr i32 %2808, 31
  %2824 = trunc i32 %2823 to i8
  store i8 %2824, i8* %33, align 1
  %2825 = lshr i32 %2807, 31
  %2826 = xor i32 %2823, %2825
  %2827 = add nuw nsw i32 %2826, %2825
  %2828 = icmp eq i32 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %39, align 1
  %2830 = icmp ne i8 %2824, 0
  %2831 = xor i1 %2830, %2828
  %.v94 = select i1 %2831, i64 39, i64 94
  %2832 = add i64 %2770, %.v94
  store i64 %2832, i64* %3, align 8
  br i1 %2831, label %block_40b82e, label %block_.L_40b865

block_40b82e:                                     ; preds = %block_.L_40b807
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %2833 = load i64, i64* %RBP.i, align 8
  %2834 = add i64 %2833, -4
  %2835 = add i64 %2832, 13
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = add i32 %2837, -1
  %2839 = zext i32 %2838 to i64
  store i64 %2839, i64* %RCX.i2070, align 8
  %2840 = icmp eq i32 %2837, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %14, align 1
  %2842 = and i32 %2838, 255
  %2843 = tail call i32 @llvm.ctpop.i32(i32 %2842)
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = xor i8 %2845, 1
  store i8 %2846, i8* %21, align 1
  %2847 = xor i32 %2838, %2837
  %2848 = lshr i32 %2847, 4
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  store i8 %2850, i8* %27, align 1
  %2851 = icmp eq i32 %2838, 0
  %2852 = zext i1 %2851 to i8
  store i8 %2852, i8* %30, align 1
  %2853 = lshr i32 %2838, 31
  %2854 = trunc i32 %2853 to i8
  store i8 %2854, i8* %33, align 1
  %2855 = lshr i32 %2837, 31
  %2856 = xor i32 %2853, %2855
  %2857 = add nuw nsw i32 %2856, %2855
  %2858 = icmp eq i32 %2857, 2
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %39, align 1
  %2860 = add i64 %2833, -8
  %2861 = add i64 %2832, 20
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = sext i32 %2863 to i64
  %2865 = mul nsw i64 %2864, 744
  store i64 %2865, i64* %RDX.i2068, align 8
  %2866 = lshr i64 %2865, 63
  %2867 = add i64 %2865, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2867, i64* %RSI.i2055, align 8
  %2868 = icmp ult i64 %2867, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2869 = icmp ult i64 %2867, %2865
  %2870 = or i1 %2868, %2869
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %14, align 1
  %2872 = trunc i64 %2867 to i32
  %2873 = and i32 %2872, 248
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %21, align 1
  %2878 = xor i64 %2865, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2879 = xor i64 %2878, %2867
  %2880 = lshr i64 %2879, 4
  %2881 = trunc i64 %2880 to i8
  %2882 = and i8 %2881, 1
  store i8 %2882, i8* %27, align 1
  %2883 = icmp eq i64 %2867, 0
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %30, align 1
  %2885 = lshr i64 %2867, 63
  %2886 = trunc i64 %2885 to i8
  store i8 %2886, i8* %33, align 1
  %2887 = xor i64 %2885, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2888 = xor i64 %2885, %2866
  %2889 = add nuw nsw i64 %2887, %2888
  %2890 = icmp eq i64 %2889, 2
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %39, align 1
  %2892 = load i64, i64* %RBP.i, align 8
  %2893 = add i64 %2892, -8
  %2894 = add i64 %2832, 37
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i32*
  %2896 = load i32, i32* %2895, align 4
  %2897 = sext i32 %2896 to i64
  %2898 = mul nsw i64 %2897, 744
  store i64 %2898, i64* %RDX.i2068, align 8
  %2899 = lshr i64 %2898, 63
  %2900 = load i64, i64* %RAX.i2072, align 8
  %2901 = add i64 %2898, %2900
  store i64 %2901, i64* %RAX.i2072, align 8
  %2902 = icmp ult i64 %2901, %2900
  %2903 = icmp ult i64 %2901, %2898
  %2904 = or i1 %2902, %2903
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %14, align 1
  %2906 = trunc i64 %2901 to i32
  %2907 = and i32 %2906, 255
  %2908 = tail call i32 @llvm.ctpop.i32(i32 %2907)
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  %2911 = xor i8 %2910, 1
  store i8 %2911, i8* %21, align 1
  %2912 = xor i64 %2898, %2900
  %2913 = xor i64 %2912, %2901
  %2914 = lshr i64 %2913, 4
  %2915 = trunc i64 %2914 to i8
  %2916 = and i8 %2915, 1
  store i8 %2916, i8* %27, align 1
  %2917 = icmp eq i64 %2901, 0
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %30, align 1
  %2919 = lshr i64 %2901, 63
  %2920 = trunc i64 %2919 to i8
  store i8 %2920, i8* %33, align 1
  %2921 = lshr i64 %2900, 63
  %2922 = xor i64 %2919, %2921
  %2923 = xor i64 %2919, %2899
  %2924 = add nuw nsw i64 %2922, %2923
  %2925 = icmp eq i64 %2924, 2
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %39, align 1
  %2927 = add i64 %2901, 12
  %2928 = add i64 %2832, 51
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = sext i32 %2930 to i64
  store i64 %2931, i64* %RAX.i2072, align 8
  %2932 = load i64, i64* %RSI.i2055, align 8
  %2933 = shl nsw i64 %2931, 2
  %2934 = add i64 %2932, 16
  %2935 = add i64 %2934, %2933
  %2936 = load i32, i32* %ECX.i1904, align 4
  %2937 = add i64 %2832, 55
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2935 to i32*
  store i32 %2936, i32* %2938, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_40b865

block_.L_40b865:                                  ; preds = %block_.L_40b807, %block_40b82e
  %2939 = phi i64 [ %2832, %block_.L_40b807 ], [ %.pre55, %block_40b82e ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %2940 = load i64, i64* %RBP.i, align 8
  %2941 = add i64 %2940, -8
  %2942 = add i64 %2939, 14
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2944 to i64
  %2946 = mul nsw i64 %2945, 744
  store i64 %2946, i64* %RCX.i2070, align 8
  %2947 = lshr i64 %2946, 63
  %2948 = add i64 %2946, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2948, i64* %RAX.i2072, align 8
  %2949 = icmp ult i64 %2948, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2950 = icmp ult i64 %2948, %2946
  %2951 = or i1 %2949, %2950
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %14, align 1
  %2953 = trunc i64 %2948 to i32
  %2954 = and i32 %2953, 248
  %2955 = tail call i32 @llvm.ctpop.i32(i32 %2954)
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  %2958 = xor i8 %2957, 1
  store i8 %2958, i8* %21, align 1
  %2959 = xor i64 %2946, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2960 = xor i64 %2959, %2948
  %2961 = lshr i64 %2960, 4
  %2962 = trunc i64 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %27, align 1
  %2964 = icmp eq i64 %2948, 0
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %30, align 1
  %2966 = lshr i64 %2948, 63
  %2967 = trunc i64 %2966 to i8
  store i8 %2967, i8* %33, align 1
  %2968 = xor i64 %2966, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2969 = xor i64 %2966, %2947
  %2970 = add nuw nsw i64 %2968, %2969
  %2971 = icmp eq i64 %2970, 2
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %39, align 1
  %2973 = add i64 %2946, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2974 = add i64 %2939, 27
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i32*
  %2976 = load i32, i32* %2975, align 4
  %2977 = add i32 %2976, 1
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RDX.i2068, align 8
  %2979 = icmp eq i32 %2976, -1
  %2980 = icmp eq i32 %2977, 0
  %2981 = or i1 %2979, %2980
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %14, align 1
  %2983 = and i32 %2977, 255
  %2984 = tail call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %21, align 1
  %2988 = xor i32 %2977, %2976
  %2989 = lshr i32 %2988, 4
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  store i8 %2991, i8* %27, align 1
  %2992 = zext i1 %2980 to i8
  store i8 %2992, i8* %30, align 1
  %2993 = lshr i32 %2977, 31
  %2994 = trunc i32 %2993 to i8
  store i8 %2994, i8* %33, align 1
  %2995 = lshr i32 %2976, 31
  %2996 = xor i32 %2993, %2995
  %2997 = add nuw nsw i32 %2996, %2993
  %2998 = icmp eq i32 %2997, 2
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %39, align 1
  %3000 = add i64 %2939, 33
  store i64 %3000, i64* %3, align 8
  store i32 %2977, i32* %2975, align 4
  %3001 = load i64, i64* %3, align 8
  %3002 = add i64 %3001, 5
  store i64 %3002, i64* %3, align 8
  br label %block_.L_40b88b

block_.L_40b88b:                                  ; preds = %block_40b752, %block_.L_40b865, %block_40b7eb, %block_40b7b2, %block_40b779
  %3003 = phi i64 [ %3002, %block_.L_40b865 ], [ %2769, %block_40b7eb ], [ %2641, %block_40b7b2 ], [ %2513, %block_40b779 ], [ %2391, %block_40b752 ]
  %3004 = add i64 %3003, 458
  br label %block_.L_40ba55

block_.L_40b890:                                  ; preds = %block_.L_40b738
  %3005 = add i64 %2377, 3
  store i64 %3005, i64* %3, align 8
  %3006 = load i32, i32* %2340, align 4
  %3007 = add i32 %3006, -1
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RAX.i2072, align 8
  %3009 = icmp eq i32 %3006, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %14, align 1
  %3011 = and i32 %3007, 255
  %3012 = tail call i32 @llvm.ctpop.i32(i32 %3011)
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  %3015 = xor i8 %3014, 1
  store i8 %3015, i8* %21, align 1
  %3016 = xor i32 %3007, %3006
  %3017 = lshr i32 %3016, 4
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  store i8 %3019, i8* %27, align 1
  %3020 = icmp eq i32 %3007, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %30, align 1
  %3022 = lshr i32 %3007, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %33, align 1
  %3024 = lshr i32 %3006, 31
  %3025 = xor i32 %3022, %3024
  %3026 = add nuw nsw i32 %3025, %3024
  %3027 = icmp eq i32 %3026, 2
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %39, align 1
  %3029 = sext i32 %3007 to i64
  store i64 %3029, i64* %RCX.i2070, align 8
  %3030 = add nsw i64 %3029, 12099168
  %3031 = add i64 %2377, 17
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i8*
  %3033 = load i8, i8* %3032, align 1
  %3034 = zext i8 %3033 to i64
  store i64 %3034, i64* %RAX.i2072, align 8
  %3035 = zext i8 %3033 to i32
  %3036 = add i64 %2337, -24
  %3037 = add i64 %2377, 20
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i32*
  %3039 = load i32, i32* %3038, align 4
  %3040 = sub i32 %3035, %3039
  %3041 = icmp ult i32 %3035, %3039
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %14, align 1
  %3043 = and i32 %3040, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %21, align 1
  %3048 = xor i32 %3039, %3035
  %3049 = xor i32 %3048, %3040
  %3050 = lshr i32 %3049, 4
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  store i8 %3052, i8* %27, align 1
  %3053 = icmp eq i32 %3040, 0
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %30, align 1
  %3055 = lshr i32 %3040, 31
  %3056 = trunc i32 %3055 to i8
  store i8 %3056, i8* %33, align 1
  %3057 = lshr i32 %3039, 31
  %3058 = add nuw nsw i32 %3055, %3057
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %39, align 1
  %.v66 = select i1 %3053, i64 26, i64 448
  %3061 = add i64 %2377, %.v66
  store i64 %3061, i64* %3, align 8
  br i1 %3053, label %block_40b8aa, label %block_.L_40ba50

block_40b8aa:                                     ; preds = %block_.L_40b890
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %3062 = add i64 %3061, 13
  store i64 %3062, i64* %3, align 8
  %3063 = load i32, i32* %2340, align 4
  %3064 = add i32 %3063, -1
  %3065 = zext i32 %3064 to i64
  store i64 %3065, i64* %RCX.i2070, align 8
  %3066 = icmp eq i32 %3063, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %14, align 1
  %3068 = and i32 %3064, 255
  %3069 = tail call i32 @llvm.ctpop.i32(i32 %3068)
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = xor i8 %3071, 1
  store i8 %3072, i8* %21, align 1
  %3073 = xor i32 %3064, %3063
  %3074 = lshr i32 %3073, 4
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  store i8 %3076, i8* %27, align 1
  %3077 = icmp eq i32 %3064, 0
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %30, align 1
  %3079 = lshr i32 %3064, 31
  %3080 = trunc i32 %3079 to i8
  store i8 %3080, i8* %33, align 1
  %3081 = lshr i32 %3063, 31
  %3082 = xor i32 %3079, %3081
  %3083 = add nuw nsw i32 %3082, %3081
  %3084 = icmp eq i32 %3083, 2
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %39, align 1
  %3086 = sext i32 %3064 to i64
  store i64 %3086, i64* %RDX.i2068, align 8
  %3087 = shl nsw i64 %3086, 2
  %3088 = add nsw i64 %3087, 11187184
  %3089 = add i64 %3061, 27
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3088 to i32*
  %3091 = load i32, i32* %3090, align 4
  %3092 = sext i32 %3091 to i64
  %3093 = mul nsw i64 %3092, 744
  store i64 %3093, i64* %RDX.i2068, align 8
  %3094 = lshr i64 %3093, 63
  %3095 = add i64 %3093, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3095, i64* %RAX.i2072, align 8
  %3096 = icmp ult i64 %3095, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3097 = icmp ult i64 %3095, %3093
  %3098 = or i1 %3096, %3097
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %14, align 1
  %3100 = trunc i64 %3095 to i32
  %3101 = and i32 %3100, 248
  %3102 = tail call i32 @llvm.ctpop.i32(i32 %3101)
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  %3105 = xor i8 %3104, 1
  store i8 %3105, i8* %21, align 1
  %3106 = xor i64 %3093, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3107 = xor i64 %3106, %3095
  %3108 = lshr i64 %3107, 4
  %3109 = trunc i64 %3108 to i8
  %3110 = and i8 %3109, 1
  store i8 %3110, i8* %27, align 1
  %3111 = icmp eq i64 %3095, 0
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %30, align 1
  %3113 = lshr i64 %3095, 63
  %3114 = trunc i64 %3113 to i8
  store i8 %3114, i8* %33, align 1
  %3115 = xor i64 %3113, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3116 = xor i64 %3113, %3094
  %3117 = add nuw nsw i64 %3115, %3116
  %3118 = icmp eq i64 %3117, 2
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %39, align 1
  %3120 = add i64 %3093, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3121 = add i64 %3061, 43
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  %3123 = load i32, i32* %3122, align 4
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RCX.i2070, align 8
  %3125 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3126 = sub i32 %3123, %3125
  %3127 = icmp ult i32 %3123, %3125
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %14, align 1
  %3129 = and i32 %3126, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %21, align 1
  %3134 = xor i32 %3125, %3123
  %3135 = xor i32 %3134, %3126
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  store i8 %3138, i8* %27, align 1
  %3139 = icmp eq i32 %3126, 0
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %30, align 1
  %3141 = lshr i32 %3126, 31
  %3142 = trunc i32 %3141 to i8
  store i8 %3142, i8* %33, align 1
  %3143 = lshr i32 %3123, 31
  %3144 = lshr i32 %3125, 31
  %3145 = xor i32 %3144, %3143
  %3146 = xor i32 %3141, %3143
  %3147 = add nuw nsw i32 %3146, %3145
  %3148 = icmp eq i32 %3147, 2
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %39, align 1
  %.v89 = select i1 %3139, i64 422, i64 56
  %3150 = add i64 %3061, %.v89
  store i64 %3150, i64* %3, align 8
  br i1 %3139, label %block_.L_40ba50, label %block_40b8e2

block_40b8e2:                                     ; preds = %block_40b8aa
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %3151 = load i64, i64* %RBP.i, align 8
  %3152 = add i64 %3151, -4
  %3153 = add i64 %3150, 13
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i32*
  %3155 = load i32, i32* %3154, align 4
  %3156 = add i32 %3155, -1
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RCX.i2070, align 8
  %3158 = icmp eq i32 %3155, 0
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %14, align 1
  %3160 = and i32 %3156, 255
  %3161 = tail call i32 @llvm.ctpop.i32(i32 %3160)
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = xor i8 %3163, 1
  store i8 %3164, i8* %21, align 1
  %3165 = xor i32 %3156, %3155
  %3166 = lshr i32 %3165, 4
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  store i8 %3168, i8* %27, align 1
  %3169 = icmp eq i32 %3156, 0
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %30, align 1
  %3171 = lshr i32 %3156, 31
  %3172 = trunc i32 %3171 to i8
  store i8 %3172, i8* %33, align 1
  %3173 = lshr i32 %3155, 31
  %3174 = xor i32 %3171, %3173
  %3175 = add nuw nsw i32 %3174, %3173
  %3176 = icmp eq i32 %3175, 2
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %39, align 1
  %3178 = sext i32 %3156 to i64
  store i64 %3178, i64* %RDX.i2068, align 8
  %3179 = shl nsw i64 %3178, 2
  %3180 = add nsw i64 %3179, 11187184
  %3181 = add i64 %3150, 26
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3180 to i32*
  %3183 = load i32, i32* %3182, align 4
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RCX.i2070, align 8
  %3185 = add i64 %3151, -36
  %3186 = add i64 %3150, 29
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  store i32 %3183, i32* %3187, align 4
  %3188 = load i64, i64* %RBP.i, align 8
  %3189 = add i64 %3188, -8
  %3190 = load i64, i64* %3, align 8
  %3191 = add i64 %3190, 4
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3189 to i32*
  %3193 = load i32, i32* %3192, align 4
  %3194 = sext i32 %3193 to i64
  %3195 = mul nsw i64 %3194, 744
  %3196 = load i64, i64* %RAX.i2072, align 8
  %3197 = add i64 %3195, %3196
  %3198 = lshr i64 %3197, 63
  %3199 = add i64 %3197, 96
  store i64 %3199, i64* %RSI.i2055, align 8
  %3200 = icmp ugt i64 %3197, -97
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %14, align 1
  %3202 = trunc i64 %3199 to i32
  %3203 = and i32 %3202, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %21, align 1
  %3208 = xor i64 %3199, %3197
  %3209 = lshr i64 %3208, 4
  %3210 = trunc i64 %3209 to i8
  %3211 = and i8 %3210, 1
  store i8 %3211, i8* %27, align 1
  %3212 = icmp eq i64 %3199, 0
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %30, align 1
  %3214 = lshr i64 %3199, 63
  %3215 = trunc i64 %3214 to i8
  store i8 %3215, i8* %33, align 1
  %3216 = xor i64 %3214, %3198
  %3217 = add nuw nsw i64 %3216, %3214
  %3218 = icmp eq i64 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %39, align 1
  %3220 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3220, i64* %RDX.i2068, align 8
  %3221 = add i64 %3190, 32
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i64*
  store i64 %3199, i64* %3222, align 8
  %3223 = load i64, i64* %RBP.i, align 8
  %3224 = add i64 %3223, -8
  %3225 = load i64, i64* %3, align 8
  %3226 = add i64 %3225, 4
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3224 to i32*
  %3228 = load i32, i32* %3227, align 4
  %3229 = sext i32 %3228 to i64
  %3230 = mul nsw i64 %3229, 744
  store i64 %3230, i64* %RDX.i2068, align 8
  %3231 = lshr i64 %3230, 63
  %3232 = load i64, i64* %RAX.i2072, align 8
  %3233 = add i64 %3230, %3232
  store i64 %3233, i64* %RSI.i2055, align 8
  %3234 = icmp ult i64 %3233, %3232
  %3235 = icmp ult i64 %3233, %3230
  %3236 = or i1 %3234, %3235
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %14, align 1
  %3238 = trunc i64 %3233 to i32
  %3239 = and i32 %3238, 255
  %3240 = tail call i32 @llvm.ctpop.i32(i32 %3239)
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = xor i8 %3242, 1
  store i8 %3243, i8* %21, align 1
  %3244 = xor i64 %3230, %3232
  %3245 = xor i64 %3244, %3233
  %3246 = lshr i64 %3245, 4
  %3247 = trunc i64 %3246 to i8
  %3248 = and i8 %3247, 1
  store i8 %3248, i8* %27, align 1
  %3249 = icmp eq i64 %3233, 0
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %30, align 1
  %3251 = lshr i64 %3233, 63
  %3252 = trunc i64 %3251 to i8
  store i8 %3252, i8* %33, align 1
  %3253 = lshr i64 %3232, 63
  %3254 = xor i64 %3251, %3253
  %3255 = xor i64 %3251, %3231
  %3256 = add nuw nsw i64 %3254, %3255
  %3257 = icmp eq i64 %3256, 2
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %39, align 1
  %3259 = add i64 %3233, 96
  %3260 = add i64 %3225, 20
  store i64 %3260, i64* %3, align 8
  %3261 = inttoptr i64 %3259 to i32*
  %3262 = load i32, i32* %3261, align 4
  %3263 = zext i32 %3262 to i64
  store i64 %3263, i64* %RCX.i2070, align 8
  %3264 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3264, i64* %RDX.i2068, align 8
  %3265 = add i64 %3264, 16
  store i64 %3265, i64* %RSI.i2055, align 8
  %3266 = icmp ugt i64 %3264, -17
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %14, align 1
  %3268 = trunc i64 %3265 to i32
  %3269 = and i32 %3268, 255
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269)
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  %3273 = xor i8 %3272, 1
  store i8 %3273, i8* %21, align 1
  %3274 = xor i64 %3264, 16
  %3275 = xor i64 %3274, %3265
  %3276 = lshr i64 %3275, 4
  %3277 = trunc i64 %3276 to i8
  %3278 = and i8 %3277, 1
  store i8 %3278, i8* %27, align 1
  %3279 = icmp eq i64 %3265, 0
  %3280 = zext i1 %3279 to i8
  store i8 %3280, i8* %30, align 1
  %3281 = lshr i64 %3265, 63
  %3282 = trunc i64 %3281 to i8
  store i8 %3282, i8* %33, align 1
  %3283 = lshr i64 %3264, 63
  %3284 = xor i64 %3281, %3283
  %3285 = add nuw nsw i64 %3284, %3281
  %3286 = icmp eq i64 %3285, 2
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %39, align 1
  store i64 %3265, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %3288 = add i64 %3264, 8
  %3289 = add i64 %3225, 46
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i32*
  store i32 %3262, i32* %3290, align 4
  %3291 = load i64, i64* %RBP.i, align 8
  %3292 = add i64 %3291, -4
  %3293 = load i64, i64* %3, align 8
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3292 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = add i32 %3296, -1
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RCX.i2070, align 8
  %3299 = icmp eq i32 %3296, 0
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %14, align 1
  %3301 = and i32 %3297, 255
  %3302 = tail call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  store i8 %3305, i8* %21, align 1
  %3306 = xor i32 %3297, %3296
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  store i8 %3309, i8* %27, align 1
  %3310 = icmp eq i32 %3297, 0
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %30, align 1
  %3312 = lshr i32 %3297, 31
  %3313 = trunc i32 %3312 to i8
  store i8 %3313, i8* %33, align 1
  %3314 = lshr i32 %3296, 31
  %3315 = xor i32 %3312, %3314
  %3316 = add nuw nsw i32 %3315, %3314
  %3317 = icmp eq i32 %3316, 2
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %39, align 1
  %3319 = sext i32 %3297 to i64
  store i64 %3319, i64* %RDX.i2068, align 8
  %3320 = shl nsw i64 %3319, 2
  %3321 = add nsw i64 %3320, 11187184
  %3322 = add i64 %3293, 16
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to i32*
  %3324 = load i32, i32* %3323, align 4
  %3325 = zext i32 %3324 to i64
  store i64 %3325, i64* %RCX.i2070, align 8
  %3326 = add i64 %3291, -8
  %3327 = add i64 %3293, 20
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i32*
  %3329 = load i32, i32* %3328, align 4
  %3330 = sext i32 %3329 to i64
  %3331 = mul nsw i64 %3330, 744
  store i64 %3331, i64* %RDX.i2068, align 8
  %3332 = lshr i64 %3331, 63
  %3333 = load i64, i64* %RAX.i2072, align 8
  %3334 = add i64 %3331, %3333
  store i64 %3334, i64* %RSI.i2055, align 8
  %3335 = icmp ult i64 %3334, %3333
  %3336 = icmp ult i64 %3334, %3331
  %3337 = or i1 %3335, %3336
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %14, align 1
  %3339 = trunc i64 %3334 to i32
  %3340 = and i32 %3339, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %21, align 1
  %3345 = xor i64 %3331, %3333
  %3346 = xor i64 %3345, %3334
  %3347 = lshr i64 %3346, 4
  %3348 = trunc i64 %3347 to i8
  %3349 = and i8 %3348, 1
  store i8 %3349, i8* %27, align 1
  %3350 = icmp eq i64 %3334, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %30, align 1
  %3352 = lshr i64 %3334, 63
  %3353 = trunc i64 %3352 to i8
  store i8 %3353, i8* %33, align 1
  %3354 = lshr i64 %3333, 63
  %3355 = xor i64 %3352, %3354
  %3356 = xor i64 %3352, %3332
  %3357 = add nuw nsw i64 %3355, %3356
  %3358 = icmp eq i64 %3357, 2
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %39, align 1
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -8
  %3362 = add i64 %3293, 37
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  %3364 = load i32, i32* %3363, align 4
  %3365 = sext i32 %3364 to i64
  %3366 = mul nsw i64 %3365, 744
  store i64 %3366, i64* %RDX.i2068, align 8
  %3367 = lshr i64 %3366, 63
  %3368 = add i64 %3366, %3333
  store i64 %3368, i64* %RDI.i1820, align 8
  %3369 = icmp ult i64 %3368, %3333
  %3370 = icmp ult i64 %3368, %3366
  %3371 = or i1 %3369, %3370
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %14, align 1
  %3373 = trunc i64 %3368 to i32
  %3374 = and i32 %3373, 255
  %3375 = tail call i32 @llvm.ctpop.i32(i32 %3374)
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = xor i8 %3377, 1
  store i8 %3378, i8* %21, align 1
  %3379 = xor i64 %3366, %3333
  %3380 = xor i64 %3379, %3368
  %3381 = lshr i64 %3380, 4
  %3382 = trunc i64 %3381 to i8
  %3383 = and i8 %3382, 1
  store i8 %3383, i8* %27, align 1
  %3384 = icmp eq i64 %3368, 0
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %30, align 1
  %3386 = lshr i64 %3368, 63
  %3387 = trunc i64 %3386 to i8
  store i8 %3387, i8* %33, align 1
  %3388 = xor i64 %3386, %3354
  %3389 = xor i64 %3386, %3367
  %3390 = add nuw nsw i64 %3388, %3389
  %3391 = icmp eq i64 %3390, 2
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %39, align 1
  %R8D.i989 = bitcast %union.anon* %58 to i32*
  %3393 = add i64 %3368, 96
  %3394 = add i64 %3293, 54
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = zext i32 %3396 to i64
  store i64 %3397, i64* %R8.i2059, align 8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3399 = add i32 %3396, 1
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %3398, align 8
  %3401 = icmp eq i32 %3396, -1
  %3402 = icmp eq i32 %3399, 0
  %3403 = or i1 %3401, %3402
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %14, align 1
  %3405 = and i32 %3399, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %21, align 1
  %3410 = xor i32 %3399, %3396
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %27, align 1
  %3414 = zext i1 %3402 to i8
  store i8 %3414, i8* %30, align 1
  %3415 = lshr i32 %3399, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %33, align 1
  %3417 = lshr i32 %3396, 31
  %3418 = xor i32 %3415, %3417
  %3419 = add nuw nsw i32 %3418, %3415
  %3420 = icmp eq i32 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %39, align 1
  %3422 = add i64 %3293, 65
  store i64 %3422, i64* %3, align 8
  store i32 %3399, i32* %3395, align 4
  %3423 = load i32, i32* %R8D.i989, align 4
  %3424 = load i64, i64* %3, align 8
  %3425 = sext i32 %3423 to i64
  store i64 %3425, i64* %RDX.i2068, align 8
  %3426 = load i64, i64* %RSI.i2055, align 8
  %3427 = shl nsw i64 %3425, 2
  %3428 = add nsw i64 %3427, 100
  %3429 = add i64 %3428, %3426
  %3430 = load i32, i32* %ECX.i1904, align 4
  %3431 = add i64 %3424, 7
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3429 to i32*
  store i32 %3430, i32* %3432, align 4
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -36
  %3435 = load i64, i64* %3, align 8
  %3436 = add i64 %3435, 4
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3434 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = sext i32 %3438 to i64
  %3440 = mul nsw i64 %3439, 744
  %3441 = load i64, i64* %RAX.i2072, align 8
  %3442 = add i64 %3440, %3441
  %3443 = lshr i64 %3442, 63
  %3444 = add i64 %3442, 96
  store i64 %3444, i64* %RSI.i2055, align 8
  %3445 = icmp ugt i64 %3442, -97
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %14, align 1
  %3447 = trunc i64 %3444 to i32
  %3448 = and i32 %3447, 255
  %3449 = tail call i32 @llvm.ctpop.i32(i32 %3448)
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = xor i8 %3451, 1
  store i8 %3452, i8* %21, align 1
  %3453 = xor i64 %3444, %3442
  %3454 = lshr i64 %3453, 4
  %3455 = trunc i64 %3454 to i8
  %3456 = and i8 %3455, 1
  store i8 %3456, i8* %27, align 1
  %3457 = icmp eq i64 %3444, 0
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %30, align 1
  %3459 = lshr i64 %3444, 63
  %3460 = trunc i64 %3459 to i8
  store i8 %3460, i8* %33, align 1
  %3461 = xor i64 %3459, %3443
  %3462 = add nuw nsw i64 %3461, %3459
  %3463 = icmp eq i64 %3462, 2
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %39, align 1
  %3465 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3465, i64* %RDX.i2068, align 8
  %3466 = add i64 %3435, 32
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i64*
  store i64 %3444, i64* %3467, align 8
  %3468 = load i64, i64* %RBP.i, align 8
  %3469 = add i64 %3468, -36
  %3470 = load i64, i64* %3, align 8
  %3471 = add i64 %3470, 4
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = sext i32 %3473 to i64
  %3475 = mul nsw i64 %3474, 744
  store i64 %3475, i64* %RDX.i2068, align 8
  %3476 = lshr i64 %3475, 63
  %3477 = load i64, i64* %RAX.i2072, align 8
  %3478 = add i64 %3475, %3477
  store i64 %3478, i64* %RSI.i2055, align 8
  %3479 = icmp ult i64 %3478, %3477
  %3480 = icmp ult i64 %3478, %3475
  %3481 = or i1 %3479, %3480
  %3482 = zext i1 %3481 to i8
  store i8 %3482, i8* %14, align 1
  %3483 = trunc i64 %3478 to i32
  %3484 = and i32 %3483, 255
  %3485 = tail call i32 @llvm.ctpop.i32(i32 %3484)
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  %3488 = xor i8 %3487, 1
  store i8 %3488, i8* %21, align 1
  %3489 = xor i64 %3475, %3477
  %3490 = xor i64 %3489, %3478
  %3491 = lshr i64 %3490, 4
  %3492 = trunc i64 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %27, align 1
  %3494 = icmp eq i64 %3478, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %30, align 1
  %3496 = lshr i64 %3478, 63
  %3497 = trunc i64 %3496 to i8
  store i8 %3497, i8* %33, align 1
  %3498 = lshr i64 %3477, 63
  %3499 = xor i64 %3496, %3498
  %3500 = xor i64 %3496, %3476
  %3501 = add nuw nsw i64 %3499, %3500
  %3502 = icmp eq i64 %3501, 2
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %39, align 1
  %3504 = add i64 %3478, 96
  %3505 = add i64 %3470, 20
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3504 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RCX.i2070, align 8
  %3509 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3509, i64* %RDX.i2068, align 8
  %3510 = add i64 %3509, 16
  store i64 %3510, i64* %RSI.i2055, align 8
  %3511 = icmp ugt i64 %3509, -17
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %14, align 1
  %3513 = trunc i64 %3510 to i32
  %3514 = and i32 %3513, 255
  %3515 = tail call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  store i8 %3518, i8* %21, align 1
  %3519 = xor i64 %3509, 16
  %3520 = xor i64 %3519, %3510
  %3521 = lshr i64 %3520, 4
  %3522 = trunc i64 %3521 to i8
  %3523 = and i8 %3522, 1
  store i8 %3523, i8* %27, align 1
  %3524 = icmp eq i64 %3510, 0
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %30, align 1
  %3526 = lshr i64 %3510, 63
  %3527 = trunc i64 %3526 to i8
  store i8 %3527, i8* %33, align 1
  %3528 = lshr i64 %3509, 63
  %3529 = xor i64 %3526, %3528
  %3530 = add nuw nsw i64 %3529, %3526
  %3531 = icmp eq i64 %3530, 2
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %39, align 1
  store i64 %3510, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %3533 = add i64 %3509, 8
  %3534 = add i64 %3470, 46
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i32*
  store i32 %3507, i32* %3535, align 4
  %3536 = load i64, i64* %RBP.i, align 8
  %3537 = add i64 %3536, -4
  %3538 = load i64, i64* %3, align 8
  %3539 = add i64 %3538, 4
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3537 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = sext i32 %3541 to i64
  store i64 %3542, i64* %RDX.i2068, align 8
  %3543 = shl nsw i64 %3542, 2
  %3544 = add nsw i64 %3543, 11187184
  %3545 = add i64 %3538, 11
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  %3547 = load i32, i32* %3546, align 4
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RCX.i2070, align 8
  %3549 = add i64 %3536, -36
  %3550 = add i64 %3538, 15
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = sext i32 %3552 to i64
  %3554 = mul nsw i64 %3553, 744
  store i64 %3554, i64* %RDX.i2068, align 8
  %3555 = lshr i64 %3554, 63
  %3556 = load i64, i64* %RAX.i2072, align 8
  %3557 = add i64 %3554, %3556
  store i64 %3557, i64* %RSI.i2055, align 8
  %3558 = icmp ult i64 %3557, %3556
  %3559 = icmp ult i64 %3557, %3554
  %3560 = or i1 %3558, %3559
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %14, align 1
  %3562 = trunc i64 %3557 to i32
  %3563 = and i32 %3562, 255
  %3564 = tail call i32 @llvm.ctpop.i32(i32 %3563)
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = xor i8 %3566, 1
  store i8 %3567, i8* %21, align 1
  %3568 = xor i64 %3554, %3556
  %3569 = xor i64 %3568, %3557
  %3570 = lshr i64 %3569, 4
  %3571 = trunc i64 %3570 to i8
  %3572 = and i8 %3571, 1
  store i8 %3572, i8* %27, align 1
  %3573 = icmp eq i64 %3557, 0
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %30, align 1
  %3575 = lshr i64 %3557, 63
  %3576 = trunc i64 %3575 to i8
  store i8 %3576, i8* %33, align 1
  %3577 = lshr i64 %3556, 63
  %3578 = xor i64 %3575, %3577
  %3579 = xor i64 %3575, %3555
  %3580 = add nuw nsw i64 %3578, %3579
  %3581 = icmp eq i64 %3580, 2
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %39, align 1
  %3583 = add i64 %3538, 32
  store i64 %3583, i64* %3, align 8
  %3584 = load i32, i32* %3551, align 4
  %3585 = sext i32 %3584 to i64
  %3586 = mul nsw i64 %3585, 744
  store i64 %3586, i64* %RDX.i2068, align 8
  %3587 = lshr i64 %3586, 63
  %3588 = add i64 %3586, %3556
  store i64 %3588, i64* %RDI.i1820, align 8
  %3589 = icmp ult i64 %3588, %3556
  %3590 = icmp ult i64 %3588, %3586
  %3591 = or i1 %3589, %3590
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %14, align 1
  %3593 = trunc i64 %3588 to i32
  %3594 = and i32 %3593, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %21, align 1
  %3599 = xor i64 %3586, %3556
  %3600 = xor i64 %3599, %3588
  %3601 = lshr i64 %3600, 4
  %3602 = trunc i64 %3601 to i8
  %3603 = and i8 %3602, 1
  store i8 %3603, i8* %27, align 1
  %3604 = icmp eq i64 %3588, 0
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %30, align 1
  %3606 = lshr i64 %3588, 63
  %3607 = trunc i64 %3606 to i8
  store i8 %3607, i8* %33, align 1
  %3608 = xor i64 %3606, %3577
  %3609 = xor i64 %3606, %3587
  %3610 = add nuw nsw i64 %3608, %3609
  %3611 = icmp eq i64 %3610, 2
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %39, align 1
  %3613 = add i64 %3588, 96
  %3614 = add i64 %3538, 49
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3613 to i32*
  %3616 = load i32, i32* %3615, align 4
  %3617 = zext i32 %3616 to i64
  store i64 %3617, i64* %R8.i2059, align 8
  %3618 = add i32 %3616, 1
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %3398, align 8
  %3620 = icmp eq i32 %3616, -1
  %3621 = icmp eq i32 %3618, 0
  %3622 = or i1 %3620, %3621
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %14, align 1
  %3624 = and i32 %3618, 255
  %3625 = tail call i32 @llvm.ctpop.i32(i32 %3624)
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = xor i8 %3627, 1
  store i8 %3628, i8* %21, align 1
  %3629 = xor i32 %3618, %3616
  %3630 = lshr i32 %3629, 4
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  store i8 %3632, i8* %27, align 1
  %3633 = zext i1 %3621 to i8
  store i8 %3633, i8* %30, align 1
  %3634 = lshr i32 %3618, 31
  %3635 = trunc i32 %3634 to i8
  store i8 %3635, i8* %33, align 1
  %3636 = lshr i32 %3616, 31
  %3637 = xor i32 %3634, %3636
  %3638 = add nuw nsw i32 %3637, %3634
  %3639 = icmp eq i32 %3638, 2
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %39, align 1
  %3641 = add i64 %3538, 60
  store i64 %3641, i64* %3, align 8
  store i32 %3618, i32* %3615, align 4
  %3642 = load i32, i32* %R8D.i989, align 4
  %3643 = load i64, i64* %3, align 8
  %3644 = sext i32 %3642 to i64
  store i64 %3644, i64* %RDX.i2068, align 8
  %3645 = load i64, i64* %RSI.i2055, align 8
  %3646 = shl nsw i64 %3644, 2
  %3647 = add nsw i64 %3646, 100
  %3648 = add i64 %3647, %3645
  %3649 = load i32, i32* %ECX.i1904, align 4
  %3650 = add i64 %3643, 7
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3648 to i32*
  store i32 %3649, i32* %3651, align 4
  %3652 = load i64, i64* %3, align 8
  %3653 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3654 = zext i32 %3653 to i64
  store i64 %3654, i64* %RCX.i2070, align 8
  %3655 = load i64, i64* %RBP.i, align 8
  %3656 = add i64 %3655, -4
  %3657 = add i64 %3652, 11
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = add i32 %3659, -1
  %3661 = zext i32 %3660 to i64
  store i64 %3661, i64* %R8.i2059, align 8
  %3662 = icmp eq i32 %3659, 0
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %14, align 1
  %3664 = and i32 %3660, 255
  %3665 = tail call i32 @llvm.ctpop.i32(i32 %3664)
  %3666 = trunc i32 %3665 to i8
  %3667 = and i8 %3666, 1
  %3668 = xor i8 %3667, 1
  store i8 %3668, i8* %21, align 1
  %3669 = xor i32 %3660, %3659
  %3670 = lshr i32 %3669, 4
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  store i8 %3672, i8* %27, align 1
  %3673 = icmp eq i32 %3660, 0
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %30, align 1
  %3675 = lshr i32 %3660, 31
  %3676 = trunc i32 %3675 to i8
  store i8 %3676, i8* %33, align 1
  %3677 = lshr i32 %3659, 31
  %3678 = xor i32 %3675, %3677
  %3679 = add nuw nsw i32 %3678, %3677
  %3680 = icmp eq i32 %3679, 2
  %3681 = zext i1 %3680 to i8
  store i8 %3681, i8* %39, align 1
  %3682 = sext i32 %3660 to i64
  store i64 %3682, i64* %RDX.i2068, align 8
  %3683 = shl nsw i64 %3682, 2
  %3684 = add nsw i64 %3683, 11187184
  %3685 = add i64 %3652, 26
  store i64 %3685, i64* %3, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = sext i32 %3687 to i64
  %3689 = mul nsw i64 %3688, 744
  store i64 %3689, i64* %RDX.i2068, align 8
  %3690 = lshr i64 %3689, 63
  %3691 = load i64, i64* %RAX.i2072, align 8
  %3692 = add i64 %3689, %3691
  store i64 %3692, i64* %RAX.i2072, align 8
  %3693 = icmp ult i64 %3692, %3691
  %3694 = icmp ult i64 %3692, %3689
  %3695 = or i1 %3693, %3694
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %14, align 1
  %3697 = trunc i64 %3692 to i32
  %3698 = and i32 %3697, 255
  %3699 = tail call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  store i8 %3702, i8* %21, align 1
  %3703 = xor i64 %3689, %3691
  %3704 = xor i64 %3703, %3692
  %3705 = lshr i64 %3704, 4
  %3706 = trunc i64 %3705 to i8
  %3707 = and i8 %3706, 1
  store i8 %3707, i8* %27, align 1
  %3708 = icmp eq i64 %3692, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %30, align 1
  %3710 = lshr i64 %3692, 63
  %3711 = trunc i64 %3710 to i8
  store i8 %3711, i8* %33, align 1
  %3712 = lshr i64 %3691, 63
  %3713 = xor i64 %3710, %3712
  %3714 = xor i64 %3710, %3690
  %3715 = add nuw nsw i64 %3713, %3714
  %3716 = icmp eq i64 %3715, 2
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %39, align 1
  %3718 = add i64 %3692, 740
  %3719 = load i32, i32* %ECX.i1904, align 4
  %3720 = add i64 %3652, 42
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3718 to i32*
  store i32 %3719, i32* %3721, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_40ba50

block_.L_40ba50:                                  ; preds = %block_.L_40b890, %block_40b8e2, %block_40b8aa
  %3722 = phi i64 [ %.pre56, %block_40b8e2 ], [ %3150, %block_40b8aa ], [ %3061, %block_.L_40b890 ]
  %3723 = add i64 %3722, 5
  store i64 %3723, i64* %3, align 8
  br label %block_.L_40ba55

block_.L_40ba55:                                  ; preds = %block_.L_40ba50, %block_.L_40b88b
  %storemerge47 = phi i64 [ %3004, %block_.L_40b88b ], [ %3723, %block_.L_40ba50 ]
  %3724 = load i64, i64* %RBP.i, align 8
  %3725 = add i64 %3724, -4
  %3726 = add i64 %storemerge47, 3
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  %3728 = load i32, i32* %3727, align 4
  %3729 = add i32 %3728, -20
  %3730 = zext i32 %3729 to i64
  store i64 %3730, i64* %RAX.i2072, align 8
  %3731 = icmp ult i32 %3728, 20
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %14, align 1
  %3733 = and i32 %3729, 255
  %3734 = tail call i32 @llvm.ctpop.i32(i32 %3733)
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  %3737 = xor i8 %3736, 1
  store i8 %3737, i8* %21, align 1
  %3738 = xor i32 %3728, 16
  %3739 = xor i32 %3738, %3729
  %3740 = lshr i32 %3739, 4
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  store i8 %3742, i8* %27, align 1
  %3743 = icmp eq i32 %3729, 0
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %30, align 1
  %3745 = lshr i32 %3729, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %33, align 1
  %3747 = lshr i32 %3728, 31
  %3748 = xor i32 %3745, %3747
  %3749 = add nuw nsw i32 %3748, %3747
  %3750 = icmp eq i32 %3749, 2
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %39, align 1
  %3752 = sext i32 %3729 to i64
  store i64 %3752, i64* %RCX.i2070, align 8
  %3753 = add nsw i64 %3752, 12099168
  %3754 = add i64 %storemerge47, 17
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i8*
  %3756 = load i8, i8* %3755, align 1
  %3757 = zext i8 %3756 to i64
  store i64 %3757, i64* %RAX.i2072, align 8
  %3758 = zext i8 %3756 to i32
  store i8 0, i8* %14, align 1
  %3759 = tail call i32 @llvm.ctpop.i32(i32 %3758)
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = xor i8 %3761, 1
  store i8 %3762, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3763 = icmp eq i8 %3756, 0
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v67 = select i1 %3763, i64 26, i64 344
  %3765 = add i64 %storemerge47, %.v67
  store i64 %3765, i64* %3, align 8
  br i1 %3763, label %block_40ba6f, label %block_.L_40bbad

block_40ba6f:                                     ; preds = %block_.L_40ba55
  %3766 = add i64 %3724, -16
  %3767 = add i64 %3765, 4
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3766 to i32*
  %3769 = load i32, i32* %3768, align 4
  store i8 0, i8* %14, align 1
  %3770 = and i32 %3769, 255
  %3771 = tail call i32 @llvm.ctpop.i32(i32 %3770)
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  %3774 = xor i8 %3773, 1
  store i8 %3774, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3775 = icmp eq i32 %3769, 0
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %30, align 1
  %3777 = lshr i32 %3769, 31
  %3778 = trunc i32 %3777 to i8
  store i8 %3778, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %3775, i64 10, i64 313
  %3779 = add i64 %3765, %.v81
  store i64 %3779, i64* %3, align 8
  br i1 %3775, label %block_40ba79, label %block_.L_40bba8

block_40ba79:                                     ; preds = %block_40ba6f
  %3780 = add i64 %3779, 3
  store i64 %3780, i64* %3, align 8
  %3781 = load i32, i32* %3727, align 4
  %3782 = add i32 %3781, -20
  %3783 = lshr i32 %3782, 31
  %3784 = add i32 %3781, -40
  %3785 = zext i32 %3784 to i64
  store i64 %3785, i64* %RAX.i2072, align 8
  %3786 = icmp ult i32 %3782, 20
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %14, align 1
  %3788 = and i32 %3784, 255
  %3789 = tail call i32 @llvm.ctpop.i32(i32 %3788)
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = xor i8 %3791, 1
  store i8 %3792, i8* %21, align 1
  %3793 = xor i32 %3782, 16
  %3794 = xor i32 %3793, %3784
  %3795 = lshr i32 %3794, 4
  %3796 = trunc i32 %3795 to i8
  %3797 = and i8 %3796, 1
  store i8 %3797, i8* %27, align 1
  %3798 = icmp eq i32 %3784, 0
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %30, align 1
  %3800 = lshr i32 %3784, 31
  %3801 = trunc i32 %3800 to i8
  store i8 %3801, i8* %33, align 1
  %3802 = xor i32 %3800, %3783
  %3803 = add nuw nsw i32 %3802, %3783
  %3804 = icmp eq i32 %3803, 2
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %39, align 1
  %3806 = sext i32 %3784 to i64
  store i64 %3806, i64* %RCX.i2070, align 8
  %3807 = add nsw i64 %3806, 12099168
  %3808 = add i64 %3779, 20
  store i64 %3808, i64* %3, align 8
  %3809 = inttoptr i64 %3807 to i8*
  %3810 = load i8, i8* %3809, align 1
  %3811 = zext i8 %3810 to i64
  store i64 %3811, i64* %RAX.i2072, align 8
  %3812 = zext i8 %3810 to i32
  %3813 = add i64 %3724, -20
  %3814 = add i64 %3779, 23
  store i64 %3814, i64* %3, align 8
  %3815 = inttoptr i64 %3813 to i32*
  %3816 = load i32, i32* %3815, align 4
  %3817 = sub i32 %3812, %3816
  %3818 = icmp ult i32 %3812, %3816
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %14, align 1
  %3820 = and i32 %3817, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %21, align 1
  %3825 = xor i32 %3816, %3812
  %3826 = xor i32 %3825, %3817
  %3827 = lshr i32 %3826, 4
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  store i8 %3829, i8* %27, align 1
  %3830 = icmp eq i32 %3817, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %30, align 1
  %3832 = lshr i32 %3817, 31
  %3833 = trunc i32 %3832 to i8
  store i8 %3833, i8* %33, align 1
  %3834 = lshr i32 %3816, 31
  %3835 = add nuw nsw i32 %3832, %3834
  %3836 = icmp eq i32 %3835, 2
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %39, align 1
  %.v82 = select i1 %3830, i64 29, i64 57
  %3838 = add i64 %3779, %.v82
  store i64 %3838, i64* %3, align 8
  br i1 %3830, label %block_40ba96, label %block_.L_40bab2

block_40ba96:                                     ; preds = %block_40ba79
  %3839 = load i64, i64* %RBP.i, align 8
  %3840 = add i64 %3839, -4
  %3841 = add i64 %3838, 3
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = add i32 %3843, -20
  %3845 = lshr i32 %3844, 31
  %3846 = add i32 %3843, -40
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %RAX.i2072, align 8
  %3848 = icmp ult i32 %3844, 20
  %3849 = zext i1 %3848 to i8
  store i8 %3849, i8* %14, align 1
  %3850 = and i32 %3846, 255
  %3851 = tail call i32 @llvm.ctpop.i32(i32 %3850)
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  %3854 = xor i8 %3853, 1
  store i8 %3854, i8* %21, align 1
  %3855 = xor i32 %3844, 16
  %3856 = xor i32 %3855, %3846
  %3857 = lshr i32 %3856, 4
  %3858 = trunc i32 %3857 to i8
  %3859 = and i8 %3858, 1
  store i8 %3859, i8* %27, align 1
  %3860 = icmp eq i32 %3846, 0
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %30, align 1
  %3862 = lshr i32 %3846, 31
  %3863 = trunc i32 %3862 to i8
  store i8 %3863, i8* %33, align 1
  %3864 = xor i32 %3862, %3845
  %3865 = add nuw nsw i32 %3864, %3845
  %3866 = icmp eq i32 %3865, 2
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %39, align 1
  %3868 = sext i32 %3846 to i64
  store i64 %3868, i64* %RCX.i2070, align 8
  %3869 = shl nsw i64 %3868, 2
  %3870 = add nsw i64 %3869, 11187184
  %3871 = add i64 %3838, 19
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i32*
  %3873 = load i32, i32* %3872, align 4
  %3874 = zext i32 %3873 to i64
  store i64 %3874, i64* %RAX.i2072, align 8
  %3875 = add i64 %3839, -8
  %3876 = add i64 %3838, 22
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = sub i32 %3873, %3878
  %3880 = icmp ult i32 %3873, %3878
  %3881 = zext i1 %3880 to i8
  store i8 %3881, i8* %14, align 1
  %3882 = and i32 %3879, 255
  %3883 = tail call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  store i8 %3886, i8* %21, align 1
  %3887 = xor i32 %3878, %3873
  %3888 = xor i32 %3887, %3879
  %3889 = lshr i32 %3888, 4
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  store i8 %3891, i8* %27, align 1
  %3892 = icmp eq i32 %3879, 0
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %30, align 1
  %3894 = lshr i32 %3879, 31
  %3895 = trunc i32 %3894 to i8
  store i8 %3895, i8* %33, align 1
  %3896 = lshr i32 %3873, 31
  %3897 = lshr i32 %3878, 31
  %3898 = xor i32 %3897, %3896
  %3899 = xor i32 %3894, %3896
  %3900 = add nuw nsw i32 %3899, %3898
  %3901 = icmp eq i32 %3900, 2
  %3902 = zext i1 %3901 to i8
  store i8 %3902, i8* %39, align 1
  %.v88 = select i1 %3892, i64 274, i64 28
  %3903 = add i64 %3838, %.v88
  store i64 %3903, i64* %3, align 8
  br i1 %3892, label %block_.L_40bba8, label %block_.L_40bab2

block_.L_40bab2:                                  ; preds = %block_40ba79, %block_40ba96
  %3904 = phi i64 [ %3903, %block_40ba96 ], [ %3838, %block_40ba79 ]
  %3905 = load i64, i64* %RBP.i, align 8
  %3906 = add i64 %3905, -4
  %3907 = add i64 %3904, 3
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i32*
  %3909 = load i32, i32* %3908, align 4
  %3910 = add i32 %3909, -20
  %3911 = lshr i32 %3910, 31
  %3912 = add i32 %3909, -19
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RAX.i2072, align 8
  %3914 = icmp eq i32 %3910, -1
  %3915 = icmp eq i32 %3912, 0
  %3916 = or i1 %3914, %3915
  %3917 = zext i1 %3916 to i8
  store i8 %3917, i8* %14, align 1
  %3918 = and i32 %3912, 255
  %3919 = tail call i32 @llvm.ctpop.i32(i32 %3918)
  %3920 = trunc i32 %3919 to i8
  %3921 = and i8 %3920, 1
  %3922 = xor i8 %3921, 1
  store i8 %3922, i8* %21, align 1
  %3923 = xor i32 %3912, %3910
  %3924 = lshr i32 %3923, 4
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  store i8 %3926, i8* %27, align 1
  %3927 = zext i1 %3915 to i8
  store i8 %3927, i8* %30, align 1
  %3928 = lshr i32 %3912, 31
  %3929 = trunc i32 %3928 to i8
  store i8 %3929, i8* %33, align 1
  %3930 = xor i32 %3928, %3911
  %3931 = add nuw nsw i32 %3930, %3928
  %3932 = icmp eq i32 %3931, 2
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %39, align 1
  %3934 = sext i32 %3912 to i64
  store i64 %3934, i64* %RCX.i2070, align 8
  %3935 = add nsw i64 %3934, 12099168
  %3936 = add i64 %3904, 20
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i8*
  %3938 = load i8, i8* %3937, align 1
  %3939 = zext i8 %3938 to i64
  store i64 %3939, i64* %RAX.i2072, align 8
  %3940 = zext i8 %3938 to i32
  %3941 = add i64 %3905, -20
  %3942 = add i64 %3904, 23
  store i64 %3942, i64* %3, align 8
  %3943 = inttoptr i64 %3941 to i32*
  %3944 = load i32, i32* %3943, align 4
  %3945 = sub i32 %3940, %3944
  %3946 = icmp ult i32 %3940, %3944
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %14, align 1
  %3948 = and i32 %3945, 255
  %3949 = tail call i32 @llvm.ctpop.i32(i32 %3948)
  %3950 = trunc i32 %3949 to i8
  %3951 = and i8 %3950, 1
  %3952 = xor i8 %3951, 1
  store i8 %3952, i8* %21, align 1
  %3953 = xor i32 %3944, %3940
  %3954 = xor i32 %3953, %3945
  %3955 = lshr i32 %3954, 4
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  store i8 %3957, i8* %27, align 1
  %3958 = icmp eq i32 %3945, 0
  %3959 = zext i1 %3958 to i8
  store i8 %3959, i8* %30, align 1
  %3960 = lshr i32 %3945, 31
  %3961 = trunc i32 %3960 to i8
  store i8 %3961, i8* %33, align 1
  %3962 = lshr i32 %3944, 31
  %3963 = add nuw nsw i32 %3960, %3962
  %3964 = icmp eq i32 %3963, 2
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %39, align 1
  %.v83 = select i1 %3958, i64 29, i64 57
  %3966 = add i64 %3904, %.v83
  store i64 %3966, i64* %3, align 8
  br i1 %3958, label %block_40bacf, label %block_.L_40baeb

block_40bacf:                                     ; preds = %block_.L_40bab2
  %3967 = load i64, i64* %RBP.i, align 8
  %3968 = add i64 %3967, -4
  %3969 = add i64 %3966, 3
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3968 to i32*
  %3971 = load i32, i32* %3970, align 4
  %3972 = add i32 %3971, -20
  %3973 = lshr i32 %3972, 31
  %3974 = add i32 %3971, -19
  %3975 = zext i32 %3974 to i64
  store i64 %3975, i64* %RAX.i2072, align 8
  %3976 = icmp eq i32 %3972, -1
  %3977 = icmp eq i32 %3974, 0
  %3978 = or i1 %3976, %3977
  %3979 = zext i1 %3978 to i8
  store i8 %3979, i8* %14, align 1
  %3980 = and i32 %3974, 255
  %3981 = tail call i32 @llvm.ctpop.i32(i32 %3980)
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  %3984 = xor i8 %3983, 1
  store i8 %3984, i8* %21, align 1
  %3985 = xor i32 %3974, %3972
  %3986 = lshr i32 %3985, 4
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  store i8 %3988, i8* %27, align 1
  %3989 = zext i1 %3977 to i8
  store i8 %3989, i8* %30, align 1
  %3990 = lshr i32 %3974, 31
  %3991 = trunc i32 %3990 to i8
  store i8 %3991, i8* %33, align 1
  %3992 = xor i32 %3990, %3973
  %3993 = add nuw nsw i32 %3992, %3990
  %3994 = icmp eq i32 %3993, 2
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %39, align 1
  %3996 = sext i32 %3974 to i64
  store i64 %3996, i64* %RCX.i2070, align 8
  %3997 = shl nsw i64 %3996, 2
  %3998 = add nsw i64 %3997, 11187184
  %3999 = add i64 %3966, 19
  store i64 %3999, i64* %3, align 8
  %4000 = inttoptr i64 %3998 to i32*
  %4001 = load i32, i32* %4000, align 4
  %4002 = zext i32 %4001 to i64
  store i64 %4002, i64* %RAX.i2072, align 8
  %4003 = add i64 %3967, -8
  %4004 = add i64 %3966, 22
  store i64 %4004, i64* %3, align 8
  %4005 = inttoptr i64 %4003 to i32*
  %4006 = load i32, i32* %4005, align 4
  %4007 = sub i32 %4001, %4006
  %4008 = icmp ult i32 %4001, %4006
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %14, align 1
  %4010 = and i32 %4007, 255
  %4011 = tail call i32 @llvm.ctpop.i32(i32 %4010)
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  %4014 = xor i8 %4013, 1
  store i8 %4014, i8* %21, align 1
  %4015 = xor i32 %4006, %4001
  %4016 = xor i32 %4015, %4007
  %4017 = lshr i32 %4016, 4
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  store i8 %4019, i8* %27, align 1
  %4020 = icmp eq i32 %4007, 0
  %4021 = zext i1 %4020 to i8
  store i8 %4021, i8* %30, align 1
  %4022 = lshr i32 %4007, 31
  %4023 = trunc i32 %4022 to i8
  store i8 %4023, i8* %33, align 1
  %4024 = lshr i32 %4001, 31
  %4025 = lshr i32 %4006, 31
  %4026 = xor i32 %4025, %4024
  %4027 = xor i32 %4022, %4024
  %4028 = add nuw nsw i32 %4027, %4026
  %4029 = icmp eq i32 %4028, 2
  %4030 = zext i1 %4029 to i8
  store i8 %4030, i8* %39, align 1
  %.v87 = select i1 %4020, i64 217, i64 28
  %4031 = add i64 %3966, %.v87
  store i64 %4031, i64* %3, align 8
  br i1 %4020, label %block_.L_40bba8, label %block_.L_40baeb

block_.L_40baeb:                                  ; preds = %block_.L_40bab2, %block_40bacf
  %4032 = phi i64 [ %4031, %block_40bacf ], [ %3966, %block_.L_40bab2 ]
  %4033 = load i64, i64* %RBP.i, align 8
  %4034 = add i64 %4033, -4
  %4035 = add i64 %4032, 3
  store i64 %4035, i64* %3, align 8
  %4036 = inttoptr i64 %4034 to i32*
  %4037 = load i32, i32* %4036, align 4
  %4038 = add i32 %4037, -20
  %4039 = icmp eq i32 %4038, 0
  %4040 = zext i1 %4039 to i8
  %4041 = lshr i32 %4038, 31
  %4042 = add i32 %4037, -21
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RAX.i2072, align 8
  store i8 %4040, i8* %14, align 1
  %4044 = and i32 %4042, 255
  %4045 = tail call i32 @llvm.ctpop.i32(i32 %4044)
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  %4048 = xor i8 %4047, 1
  store i8 %4048, i8* %21, align 1
  %4049 = xor i32 %4042, %4038
  %4050 = lshr i32 %4049, 4
  %4051 = trunc i32 %4050 to i8
  %4052 = and i8 %4051, 1
  store i8 %4052, i8* %27, align 1
  %4053 = icmp eq i32 %4042, 0
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %30, align 1
  %4055 = lshr i32 %4042, 31
  %4056 = trunc i32 %4055 to i8
  store i8 %4056, i8* %33, align 1
  %4057 = xor i32 %4055, %4041
  %4058 = add nuw nsw i32 %4057, %4041
  %4059 = icmp eq i32 %4058, 2
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %39, align 1
  %4061 = sext i32 %4042 to i64
  store i64 %4061, i64* %RCX.i2070, align 8
  %4062 = add nsw i64 %4061, 12099168
  %4063 = add i64 %4032, 20
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i8*
  %4065 = load i8, i8* %4064, align 1
  %4066 = zext i8 %4065 to i64
  store i64 %4066, i64* %RAX.i2072, align 8
  %4067 = zext i8 %4065 to i32
  %4068 = add i64 %4033, -20
  %4069 = add i64 %4032, 23
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4068 to i32*
  %4071 = load i32, i32* %4070, align 4
  %4072 = sub i32 %4067, %4071
  %4073 = icmp ult i32 %4067, %4071
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %14, align 1
  %4075 = and i32 %4072, 255
  %4076 = tail call i32 @llvm.ctpop.i32(i32 %4075)
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  store i8 %4079, i8* %21, align 1
  %4080 = xor i32 %4071, %4067
  %4081 = xor i32 %4080, %4072
  %4082 = lshr i32 %4081, 4
  %4083 = trunc i32 %4082 to i8
  %4084 = and i8 %4083, 1
  store i8 %4084, i8* %27, align 1
  %4085 = icmp eq i32 %4072, 0
  %4086 = zext i1 %4085 to i8
  store i8 %4086, i8* %30, align 1
  %4087 = lshr i32 %4072, 31
  %4088 = trunc i32 %4087 to i8
  store i8 %4088, i8* %33, align 1
  %4089 = lshr i32 %4071, 31
  %4090 = add nuw nsw i32 %4087, %4089
  %4091 = icmp eq i32 %4090, 2
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %39, align 1
  %.v84 = select i1 %4085, i64 29, i64 57
  %4093 = add i64 %4032, %.v84
  store i64 %4093, i64* %3, align 8
  br i1 %4085, label %block_40bb08, label %block_.L_40bb24

block_40bb08:                                     ; preds = %block_.L_40baeb
  %4094 = load i64, i64* %RBP.i, align 8
  %4095 = add i64 %4094, -4
  %4096 = add i64 %4093, 3
  store i64 %4096, i64* %3, align 8
  %4097 = inttoptr i64 %4095 to i32*
  %4098 = load i32, i32* %4097, align 4
  %4099 = add i32 %4098, -20
  %4100 = icmp eq i32 %4099, 0
  %4101 = zext i1 %4100 to i8
  %4102 = lshr i32 %4099, 31
  %4103 = add i32 %4098, -21
  %4104 = zext i32 %4103 to i64
  store i64 %4104, i64* %RAX.i2072, align 8
  store i8 %4101, i8* %14, align 1
  %4105 = and i32 %4103, 255
  %4106 = tail call i32 @llvm.ctpop.i32(i32 %4105)
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  %4109 = xor i8 %4108, 1
  store i8 %4109, i8* %21, align 1
  %4110 = xor i32 %4103, %4099
  %4111 = lshr i32 %4110, 4
  %4112 = trunc i32 %4111 to i8
  %4113 = and i8 %4112, 1
  store i8 %4113, i8* %27, align 1
  %4114 = icmp eq i32 %4103, 0
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %30, align 1
  %4116 = lshr i32 %4103, 31
  %4117 = trunc i32 %4116 to i8
  store i8 %4117, i8* %33, align 1
  %4118 = xor i32 %4116, %4102
  %4119 = add nuw nsw i32 %4118, %4102
  %4120 = icmp eq i32 %4119, 2
  %4121 = zext i1 %4120 to i8
  store i8 %4121, i8* %39, align 1
  %4122 = sext i32 %4103 to i64
  store i64 %4122, i64* %RCX.i2070, align 8
  %4123 = shl nsw i64 %4122, 2
  %4124 = add nsw i64 %4123, 11187184
  %4125 = add i64 %4093, 19
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i32*
  %4127 = load i32, i32* %4126, align 4
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RAX.i2072, align 8
  %4129 = add i64 %4094, -8
  %4130 = add i64 %4093, 22
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = sub i32 %4127, %4132
  %4134 = icmp ult i32 %4127, %4132
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %14, align 1
  %4136 = and i32 %4133, 255
  %4137 = tail call i32 @llvm.ctpop.i32(i32 %4136)
  %4138 = trunc i32 %4137 to i8
  %4139 = and i8 %4138, 1
  %4140 = xor i8 %4139, 1
  store i8 %4140, i8* %21, align 1
  %4141 = xor i32 %4132, %4127
  %4142 = xor i32 %4141, %4133
  %4143 = lshr i32 %4142, 4
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  store i8 %4145, i8* %27, align 1
  %4146 = icmp eq i32 %4133, 0
  %4147 = zext i1 %4146 to i8
  store i8 %4147, i8* %30, align 1
  %4148 = lshr i32 %4133, 31
  %4149 = trunc i32 %4148 to i8
  store i8 %4149, i8* %33, align 1
  %4150 = lshr i32 %4127, 31
  %4151 = lshr i32 %4132, 31
  %4152 = xor i32 %4151, %4150
  %4153 = xor i32 %4148, %4150
  %4154 = add nuw nsw i32 %4153, %4152
  %4155 = icmp eq i32 %4154, 2
  %4156 = zext i1 %4155 to i8
  store i8 %4156, i8* %39, align 1
  %.v86 = select i1 %4146, i64 160, i64 28
  %4157 = add i64 %4093, %.v86
  store i64 %4157, i64* %3, align 8
  br i1 %4146, label %block_.L_40bba8, label %block_.L_40bb24

block_.L_40bb24:                                  ; preds = %block_.L_40baeb, %block_40bb08
  %4158 = phi i64 [ %4157, %block_40bb08 ], [ %4093, %block_.L_40baeb ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -8
  %4161 = add i64 %4158, 19
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = sext i32 %4163 to i64
  %4165 = mul nsw i64 %4164, 744
  store i64 %4165, i64* %RCX.i2070, align 8
  %4166 = lshr i64 %4165, 63
  %4167 = add i64 %4165, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4167, i64* %RAX.i2072, align 8
  %4168 = icmp ult i64 %4167, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4169 = icmp ult i64 %4167, %4165
  %4170 = or i1 %4168, %4169
  %4171 = zext i1 %4170 to i8
  store i8 %4171, i8* %14, align 1
  %4172 = trunc i64 %4167 to i32
  %4173 = and i32 %4172, 248
  %4174 = tail call i32 @llvm.ctpop.i32(i32 %4173)
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  store i8 %4177, i8* %21, align 1
  %4178 = xor i64 %4165, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4179 = xor i64 %4178, %4167
  %4180 = lshr i64 %4179, 4
  %4181 = trunc i64 %4180 to i8
  %4182 = and i8 %4181, 1
  store i8 %4182, i8* %27, align 1
  %4183 = icmp eq i64 %4167, 0
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %30, align 1
  %4185 = lshr i64 %4167, 63
  %4186 = trunc i64 %4185 to i8
  store i8 %4186, i8* %33, align 1
  %4187 = xor i64 %4185, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4188 = xor i64 %4185, %4166
  %4189 = add nuw nsw i64 %4187, %4188
  %4190 = icmp eq i64 %4189, 2
  %4191 = zext i1 %4190 to i8
  store i8 %4191, i8* %39, align 1
  %4192 = add i64 %4165, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4193 = add i64 %4158, 33
  store i64 %4193, i64* %3, align 8
  %4194 = inttoptr i64 %4192 to i32*
  %4195 = load i32, i32* %4194, align 4
  %4196 = add i32 %4195, -20
  %4197 = icmp ult i32 %4195, 20
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %14, align 1
  %4199 = and i32 %4196, 255
  %4200 = tail call i32 @llvm.ctpop.i32(i32 %4199)
  %4201 = trunc i32 %4200 to i8
  %4202 = and i8 %4201, 1
  %4203 = xor i8 %4202, 1
  store i8 %4203, i8* %21, align 1
  %4204 = xor i32 %4195, 16
  %4205 = xor i32 %4204, %4196
  %4206 = lshr i32 %4205, 4
  %4207 = trunc i32 %4206 to i8
  %4208 = and i8 %4207, 1
  store i8 %4208, i8* %27, align 1
  %4209 = icmp eq i32 %4196, 0
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %30, align 1
  %4211 = lshr i32 %4196, 31
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %33, align 1
  %4213 = lshr i32 %4195, 31
  %4214 = xor i32 %4211, %4213
  %4215 = add nuw nsw i32 %4214, %4213
  %4216 = icmp eq i32 %4215, 2
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %39, align 1
  %4218 = icmp ne i8 %4212, 0
  %4219 = xor i1 %4218, %4216
  %.v85 = select i1 %4219, i64 39, i64 94
  %4220 = add i64 %4158, %.v85
  store i64 %4220, i64* %3, align 8
  br i1 %4219, label %block_40bb4b, label %block_.L_40bb82

block_40bb4b:                                     ; preds = %block_.L_40bb24
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %4221 = load i64, i64* %RBP.i, align 8
  %4222 = add i64 %4221, -4
  %4223 = add i64 %4220, 13
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = add i32 %4225, -20
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i2070, align 8
  %4228 = icmp ult i32 %4225, 20
  %4229 = zext i1 %4228 to i8
  store i8 %4229, i8* %14, align 1
  %4230 = and i32 %4226, 255
  %4231 = tail call i32 @llvm.ctpop.i32(i32 %4230)
  %4232 = trunc i32 %4231 to i8
  %4233 = and i8 %4232, 1
  %4234 = xor i8 %4233, 1
  store i8 %4234, i8* %21, align 1
  %4235 = xor i32 %4225, 16
  %4236 = xor i32 %4235, %4226
  %4237 = lshr i32 %4236, 4
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  store i8 %4239, i8* %27, align 1
  %4240 = icmp eq i32 %4226, 0
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %30, align 1
  %4242 = lshr i32 %4226, 31
  %4243 = trunc i32 %4242 to i8
  store i8 %4243, i8* %33, align 1
  %4244 = lshr i32 %4225, 31
  %4245 = xor i32 %4242, %4244
  %4246 = add nuw nsw i32 %4245, %4244
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %39, align 1
  %4249 = add i64 %4221, -8
  %4250 = add i64 %4220, 20
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i32*
  %4252 = load i32, i32* %4251, align 4
  %4253 = sext i32 %4252 to i64
  %4254 = mul nsw i64 %4253, 744
  store i64 %4254, i64* %RDX.i2068, align 8
  %4255 = lshr i64 %4254, 63
  %4256 = add i64 %4254, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4256, i64* %RSI.i2055, align 8
  %4257 = icmp ult i64 %4256, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4258 = icmp ult i64 %4256, %4254
  %4259 = or i1 %4257, %4258
  %4260 = zext i1 %4259 to i8
  store i8 %4260, i8* %14, align 1
  %4261 = trunc i64 %4256 to i32
  %4262 = and i32 %4261, 248
  %4263 = tail call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  store i8 %4266, i8* %21, align 1
  %4267 = xor i64 %4254, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4268 = xor i64 %4267, %4256
  %4269 = lshr i64 %4268, 4
  %4270 = trunc i64 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %27, align 1
  %4272 = icmp eq i64 %4256, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %30, align 1
  %4274 = lshr i64 %4256, 63
  %4275 = trunc i64 %4274 to i8
  store i8 %4275, i8* %33, align 1
  %4276 = xor i64 %4274, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4277 = xor i64 %4274, %4255
  %4278 = add nuw nsw i64 %4276, %4277
  %4279 = icmp eq i64 %4278, 2
  %4280 = zext i1 %4279 to i8
  store i8 %4280, i8* %39, align 1
  %4281 = load i64, i64* %RBP.i, align 8
  %4282 = add i64 %4281, -8
  %4283 = add i64 %4220, 37
  store i64 %4283, i64* %3, align 8
  %4284 = inttoptr i64 %4282 to i32*
  %4285 = load i32, i32* %4284, align 4
  %4286 = sext i32 %4285 to i64
  %4287 = mul nsw i64 %4286, 744
  store i64 %4287, i64* %RDX.i2068, align 8
  %4288 = lshr i64 %4287, 63
  %4289 = load i64, i64* %RAX.i2072, align 8
  %4290 = add i64 %4287, %4289
  store i64 %4290, i64* %RAX.i2072, align 8
  %4291 = icmp ult i64 %4290, %4289
  %4292 = icmp ult i64 %4290, %4287
  %4293 = or i1 %4291, %4292
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %14, align 1
  %4295 = trunc i64 %4290 to i32
  %4296 = and i32 %4295, 255
  %4297 = tail call i32 @llvm.ctpop.i32(i32 %4296)
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  %4300 = xor i8 %4299, 1
  store i8 %4300, i8* %21, align 1
  %4301 = xor i64 %4287, %4289
  %4302 = xor i64 %4301, %4290
  %4303 = lshr i64 %4302, 4
  %4304 = trunc i64 %4303 to i8
  %4305 = and i8 %4304, 1
  store i8 %4305, i8* %27, align 1
  %4306 = icmp eq i64 %4290, 0
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %30, align 1
  %4308 = lshr i64 %4290, 63
  %4309 = trunc i64 %4308 to i8
  store i8 %4309, i8* %33, align 1
  %4310 = lshr i64 %4289, 63
  %4311 = xor i64 %4308, %4310
  %4312 = xor i64 %4308, %4288
  %4313 = add nuw nsw i64 %4311, %4312
  %4314 = icmp eq i64 %4313, 2
  %4315 = zext i1 %4314 to i8
  store i8 %4315, i8* %39, align 1
  %4316 = add i64 %4290, 12
  %4317 = add i64 %4220, 51
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i32*
  %4319 = load i32, i32* %4318, align 4
  %4320 = sext i32 %4319 to i64
  store i64 %4320, i64* %RAX.i2072, align 8
  %4321 = load i64, i64* %RSI.i2055, align 8
  %4322 = shl nsw i64 %4320, 2
  %4323 = add i64 %4321, 16
  %4324 = add i64 %4323, %4322
  %4325 = load i32, i32* %ECX.i1904, align 4
  %4326 = add i64 %4220, 55
  store i64 %4326, i64* %3, align 8
  %4327 = inttoptr i64 %4324 to i32*
  store i32 %4325, i32* %4327, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_40bb82

block_.L_40bb82:                                  ; preds = %block_.L_40bb24, %block_40bb4b
  %4328 = phi i64 [ %4220, %block_.L_40bb24 ], [ %.pre57, %block_40bb4b ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %4329 = load i64, i64* %RBP.i, align 8
  %4330 = add i64 %4329, -8
  %4331 = add i64 %4328, 14
  store i64 %4331, i64* %3, align 8
  %4332 = inttoptr i64 %4330 to i32*
  %4333 = load i32, i32* %4332, align 4
  %4334 = sext i32 %4333 to i64
  %4335 = mul nsw i64 %4334, 744
  store i64 %4335, i64* %RCX.i2070, align 8
  %4336 = lshr i64 %4335, 63
  %4337 = add i64 %4335, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4337, i64* %RAX.i2072, align 8
  %4338 = icmp ult i64 %4337, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4339 = icmp ult i64 %4337, %4335
  %4340 = or i1 %4338, %4339
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %14, align 1
  %4342 = trunc i64 %4337 to i32
  %4343 = and i32 %4342, 248
  %4344 = tail call i32 @llvm.ctpop.i32(i32 %4343)
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = xor i8 %4346, 1
  store i8 %4347, i8* %21, align 1
  %4348 = xor i64 %4335, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4349 = xor i64 %4348, %4337
  %4350 = lshr i64 %4349, 4
  %4351 = trunc i64 %4350 to i8
  %4352 = and i8 %4351, 1
  store i8 %4352, i8* %27, align 1
  %4353 = icmp eq i64 %4337, 0
  %4354 = zext i1 %4353 to i8
  store i8 %4354, i8* %30, align 1
  %4355 = lshr i64 %4337, 63
  %4356 = trunc i64 %4355 to i8
  store i8 %4356, i8* %33, align 1
  %4357 = xor i64 %4355, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4358 = xor i64 %4355, %4336
  %4359 = add nuw nsw i64 %4357, %4358
  %4360 = icmp eq i64 %4359, 2
  %4361 = zext i1 %4360 to i8
  store i8 %4361, i8* %39, align 1
  %4362 = add i64 %4335, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4363 = add i64 %4328, 27
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i32*
  %4365 = load i32, i32* %4364, align 4
  %4366 = add i32 %4365, 1
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RDX.i2068, align 8
  %4368 = icmp eq i32 %4365, -1
  %4369 = icmp eq i32 %4366, 0
  %4370 = or i1 %4368, %4369
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %14, align 1
  %4372 = and i32 %4366, 255
  %4373 = tail call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  store i8 %4376, i8* %21, align 1
  %4377 = xor i32 %4366, %4365
  %4378 = lshr i32 %4377, 4
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  store i8 %4380, i8* %27, align 1
  %4381 = zext i1 %4369 to i8
  store i8 %4381, i8* %30, align 1
  %4382 = lshr i32 %4366, 31
  %4383 = trunc i32 %4382 to i8
  store i8 %4383, i8* %33, align 1
  %4384 = lshr i32 %4365, 31
  %4385 = xor i32 %4382, %4384
  %4386 = add nuw nsw i32 %4385, %4382
  %4387 = icmp eq i32 %4386, 2
  %4388 = zext i1 %4387 to i8
  store i8 %4388, i8* %39, align 1
  %4389 = add i64 %4328, 33
  store i64 %4389, i64* %3, align 8
  store i32 %4366, i32* %4364, align 4
  %4390 = load i64, i64* %3, align 8
  %4391 = add i64 %4390, 5
  store i64 %4391, i64* %3, align 8
  br label %block_.L_40bba8

block_.L_40bba8:                                  ; preds = %block_40ba6f, %block_.L_40bb82, %block_40bb08, %block_40bacf, %block_40ba96
  %4392 = phi i64 [ %4391, %block_.L_40bb82 ], [ %4157, %block_40bb08 ], [ %4031, %block_40bacf ], [ %3903, %block_40ba96 ], [ %3779, %block_40ba6f ]
  %4393 = add i64 %4392, 458
  br label %block_.L_40bd72

block_.L_40bbad:                                  ; preds = %block_.L_40ba55
  %4394 = add i64 %3765, 3
  store i64 %4394, i64* %3, align 8
  %4395 = load i32, i32* %3727, align 4
  %4396 = add i32 %4395, -20
  %4397 = zext i32 %4396 to i64
  store i64 %4397, i64* %RAX.i2072, align 8
  %4398 = icmp ult i32 %4395, 20
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %14, align 1
  %4400 = and i32 %4396, 255
  %4401 = tail call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  store i8 %4404, i8* %21, align 1
  %4405 = xor i32 %4395, 16
  %4406 = xor i32 %4405, %4396
  %4407 = lshr i32 %4406, 4
  %4408 = trunc i32 %4407 to i8
  %4409 = and i8 %4408, 1
  store i8 %4409, i8* %27, align 1
  %4410 = icmp eq i32 %4396, 0
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %30, align 1
  %4412 = lshr i32 %4396, 31
  %4413 = trunc i32 %4412 to i8
  store i8 %4413, i8* %33, align 1
  %4414 = lshr i32 %4395, 31
  %4415 = xor i32 %4412, %4414
  %4416 = add nuw nsw i32 %4415, %4414
  %4417 = icmp eq i32 %4416, 2
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %39, align 1
  %4419 = sext i32 %4396 to i64
  store i64 %4419, i64* %RCX.i2070, align 8
  %4420 = add nsw i64 %4419, 12099168
  %4421 = add i64 %3765, 17
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to i8*
  %4423 = load i8, i8* %4422, align 1
  %4424 = zext i8 %4423 to i64
  store i64 %4424, i64* %RAX.i2072, align 8
  %4425 = zext i8 %4423 to i32
  %4426 = add i64 %3724, -24
  %4427 = add i64 %3765, 20
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4426 to i32*
  %4429 = load i32, i32* %4428, align 4
  %4430 = sub i32 %4425, %4429
  %4431 = icmp ult i32 %4425, %4429
  %4432 = zext i1 %4431 to i8
  store i8 %4432, i8* %14, align 1
  %4433 = and i32 %4430, 255
  %4434 = tail call i32 @llvm.ctpop.i32(i32 %4433)
  %4435 = trunc i32 %4434 to i8
  %4436 = and i8 %4435, 1
  %4437 = xor i8 %4436, 1
  store i8 %4437, i8* %21, align 1
  %4438 = xor i32 %4429, %4425
  %4439 = xor i32 %4438, %4430
  %4440 = lshr i32 %4439, 4
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  store i8 %4442, i8* %27, align 1
  %4443 = icmp eq i32 %4430, 0
  %4444 = zext i1 %4443 to i8
  store i8 %4444, i8* %30, align 1
  %4445 = lshr i32 %4430, 31
  %4446 = trunc i32 %4445 to i8
  store i8 %4446, i8* %33, align 1
  %4447 = lshr i32 %4429, 31
  %4448 = add nuw nsw i32 %4445, %4447
  %4449 = icmp eq i32 %4448, 2
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %39, align 1
  %.v68 = select i1 %4443, i64 26, i64 448
  %4451 = add i64 %3765, %.v68
  store i64 %4451, i64* %3, align 8
  br i1 %4443, label %block_40bbc7, label %block_.L_40bd6d

block_40bbc7:                                     ; preds = %block_.L_40bbad
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %4452 = add i64 %4451, 13
  store i64 %4452, i64* %3, align 8
  %4453 = load i32, i32* %3727, align 4
  %4454 = add i32 %4453, -20
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %RCX.i2070, align 8
  %4456 = icmp ult i32 %4453, 20
  %4457 = zext i1 %4456 to i8
  store i8 %4457, i8* %14, align 1
  %4458 = and i32 %4454, 255
  %4459 = tail call i32 @llvm.ctpop.i32(i32 %4458)
  %4460 = trunc i32 %4459 to i8
  %4461 = and i8 %4460, 1
  %4462 = xor i8 %4461, 1
  store i8 %4462, i8* %21, align 1
  %4463 = xor i32 %4453, 16
  %4464 = xor i32 %4463, %4454
  %4465 = lshr i32 %4464, 4
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  store i8 %4467, i8* %27, align 1
  %4468 = icmp eq i32 %4454, 0
  %4469 = zext i1 %4468 to i8
  store i8 %4469, i8* %30, align 1
  %4470 = lshr i32 %4454, 31
  %4471 = trunc i32 %4470 to i8
  store i8 %4471, i8* %33, align 1
  %4472 = lshr i32 %4453, 31
  %4473 = xor i32 %4470, %4472
  %4474 = add nuw nsw i32 %4473, %4472
  %4475 = icmp eq i32 %4474, 2
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %39, align 1
  %4477 = sext i32 %4454 to i64
  store i64 %4477, i64* %RDX.i2068, align 8
  %4478 = shl nsw i64 %4477, 2
  %4479 = add nsw i64 %4478, 11187184
  %4480 = add i64 %4451, 27
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = sext i32 %4482 to i64
  %4484 = mul nsw i64 %4483, 744
  store i64 %4484, i64* %RDX.i2068, align 8
  %4485 = lshr i64 %4484, 63
  %4486 = add i64 %4484, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4486, i64* %RAX.i2072, align 8
  %4487 = icmp ult i64 %4486, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4488 = icmp ult i64 %4486, %4484
  %4489 = or i1 %4487, %4488
  %4490 = zext i1 %4489 to i8
  store i8 %4490, i8* %14, align 1
  %4491 = trunc i64 %4486 to i32
  %4492 = and i32 %4491, 248
  %4493 = tail call i32 @llvm.ctpop.i32(i32 %4492)
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  store i8 %4496, i8* %21, align 1
  %4497 = xor i64 %4484, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4498 = xor i64 %4497, %4486
  %4499 = lshr i64 %4498, 4
  %4500 = trunc i64 %4499 to i8
  %4501 = and i8 %4500, 1
  store i8 %4501, i8* %27, align 1
  %4502 = icmp eq i64 %4486, 0
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %30, align 1
  %4504 = lshr i64 %4486, 63
  %4505 = trunc i64 %4504 to i8
  store i8 %4505, i8* %33, align 1
  %4506 = xor i64 %4504, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4507 = xor i64 %4504, %4485
  %4508 = add nuw nsw i64 %4506, %4507
  %4509 = icmp eq i64 %4508, 2
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %39, align 1
  %4511 = add i64 %4484, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %4512 = add i64 %4451, 43
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to i32*
  %4514 = load i32, i32* %4513, align 4
  %4515 = zext i32 %4514 to i64
  store i64 %4515, i64* %RCX.i2070, align 8
  %4516 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4517 = sub i32 %4514, %4516
  %4518 = icmp ult i32 %4514, %4516
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %14, align 1
  %4520 = and i32 %4517, 255
  %4521 = tail call i32 @llvm.ctpop.i32(i32 %4520)
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = xor i8 %4523, 1
  store i8 %4524, i8* %21, align 1
  %4525 = xor i32 %4516, %4514
  %4526 = xor i32 %4525, %4517
  %4527 = lshr i32 %4526, 4
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  store i8 %4529, i8* %27, align 1
  %4530 = icmp eq i32 %4517, 0
  %4531 = zext i1 %4530 to i8
  store i8 %4531, i8* %30, align 1
  %4532 = lshr i32 %4517, 31
  %4533 = trunc i32 %4532 to i8
  store i8 %4533, i8* %33, align 1
  %4534 = lshr i32 %4514, 31
  %4535 = lshr i32 %4516, 31
  %4536 = xor i32 %4535, %4534
  %4537 = xor i32 %4532, %4534
  %4538 = add nuw nsw i32 %4537, %4536
  %4539 = icmp eq i32 %4538, 2
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %39, align 1
  %.v80 = select i1 %4530, i64 422, i64 56
  %4541 = add i64 %4451, %.v80
  store i64 %4541, i64* %3, align 8
  br i1 %4530, label %block_.L_40bd6d, label %block_40bbff

block_40bbff:                                     ; preds = %block_40bbc7
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %4542 = load i64, i64* %RBP.i, align 8
  %4543 = add i64 %4542, -4
  %4544 = add i64 %4541, 13
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = add i32 %4546, -20
  %4548 = zext i32 %4547 to i64
  store i64 %4548, i64* %RCX.i2070, align 8
  %4549 = icmp ult i32 %4546, 20
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %14, align 1
  %4551 = and i32 %4547, 255
  %4552 = tail call i32 @llvm.ctpop.i32(i32 %4551)
  %4553 = trunc i32 %4552 to i8
  %4554 = and i8 %4553, 1
  %4555 = xor i8 %4554, 1
  store i8 %4555, i8* %21, align 1
  %4556 = xor i32 %4546, 16
  %4557 = xor i32 %4556, %4547
  %4558 = lshr i32 %4557, 4
  %4559 = trunc i32 %4558 to i8
  %4560 = and i8 %4559, 1
  store i8 %4560, i8* %27, align 1
  %4561 = icmp eq i32 %4547, 0
  %4562 = zext i1 %4561 to i8
  store i8 %4562, i8* %30, align 1
  %4563 = lshr i32 %4547, 31
  %4564 = trunc i32 %4563 to i8
  store i8 %4564, i8* %33, align 1
  %4565 = lshr i32 %4546, 31
  %4566 = xor i32 %4563, %4565
  %4567 = add nuw nsw i32 %4566, %4565
  %4568 = icmp eq i32 %4567, 2
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %39, align 1
  %4570 = sext i32 %4547 to i64
  store i64 %4570, i64* %RDX.i2068, align 8
  %4571 = shl nsw i64 %4570, 2
  %4572 = add nsw i64 %4571, 11187184
  %4573 = add i64 %4541, 26
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = zext i32 %4575 to i64
  store i64 %4576, i64* %RCX.i2070, align 8
  %4577 = add i64 %4542, -40
  %4578 = add i64 %4541, 29
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to i32*
  store i32 %4575, i32* %4579, align 4
  %4580 = load i64, i64* %RBP.i, align 8
  %4581 = add i64 %4580, -8
  %4582 = load i64, i64* %3, align 8
  %4583 = add i64 %4582, 4
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4581 to i32*
  %4585 = load i32, i32* %4584, align 4
  %4586 = sext i32 %4585 to i64
  %4587 = mul nsw i64 %4586, 744
  %4588 = load i64, i64* %RAX.i2072, align 8
  %4589 = add i64 %4587, %4588
  %4590 = lshr i64 %4589, 63
  %4591 = add i64 %4589, 96
  store i64 %4591, i64* %RSI.i2055, align 8
  %4592 = icmp ugt i64 %4589, -97
  %4593 = zext i1 %4592 to i8
  store i8 %4593, i8* %14, align 1
  %4594 = trunc i64 %4591 to i32
  %4595 = and i32 %4594, 255
  %4596 = tail call i32 @llvm.ctpop.i32(i32 %4595)
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  %4599 = xor i8 %4598, 1
  store i8 %4599, i8* %21, align 1
  %4600 = xor i64 %4591, %4589
  %4601 = lshr i64 %4600, 4
  %4602 = trunc i64 %4601 to i8
  %4603 = and i8 %4602, 1
  store i8 %4603, i8* %27, align 1
  %4604 = icmp eq i64 %4591, 0
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %30, align 1
  %4606 = lshr i64 %4591, 63
  %4607 = trunc i64 %4606 to i8
  store i8 %4607, i8* %33, align 1
  %4608 = xor i64 %4606, %4590
  %4609 = add nuw nsw i64 %4608, %4606
  %4610 = icmp eq i64 %4609, 2
  %4611 = zext i1 %4610 to i8
  store i8 %4611, i8* %39, align 1
  %4612 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %4612, i64* %RDX.i2068, align 8
  %4613 = add i64 %4582, 32
  store i64 %4613, i64* %3, align 8
  %4614 = inttoptr i64 %4612 to i64*
  store i64 %4591, i64* %4614, align 8
  %4615 = load i64, i64* %RBP.i, align 8
  %4616 = add i64 %4615, -8
  %4617 = load i64, i64* %3, align 8
  %4618 = add i64 %4617, 4
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4616 to i32*
  %4620 = load i32, i32* %4619, align 4
  %4621 = sext i32 %4620 to i64
  %4622 = mul nsw i64 %4621, 744
  store i64 %4622, i64* %RDX.i2068, align 8
  %4623 = lshr i64 %4622, 63
  %4624 = load i64, i64* %RAX.i2072, align 8
  %4625 = add i64 %4622, %4624
  store i64 %4625, i64* %RSI.i2055, align 8
  %4626 = icmp ult i64 %4625, %4624
  %4627 = icmp ult i64 %4625, %4622
  %4628 = or i1 %4626, %4627
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %14, align 1
  %4630 = trunc i64 %4625 to i32
  %4631 = and i32 %4630, 255
  %4632 = tail call i32 @llvm.ctpop.i32(i32 %4631)
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = xor i8 %4634, 1
  store i8 %4635, i8* %21, align 1
  %4636 = xor i64 %4622, %4624
  %4637 = xor i64 %4636, %4625
  %4638 = lshr i64 %4637, 4
  %4639 = trunc i64 %4638 to i8
  %4640 = and i8 %4639, 1
  store i8 %4640, i8* %27, align 1
  %4641 = icmp eq i64 %4625, 0
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %30, align 1
  %4643 = lshr i64 %4625, 63
  %4644 = trunc i64 %4643 to i8
  store i8 %4644, i8* %33, align 1
  %4645 = lshr i64 %4624, 63
  %4646 = xor i64 %4643, %4645
  %4647 = xor i64 %4643, %4623
  %4648 = add nuw nsw i64 %4646, %4647
  %4649 = icmp eq i64 %4648, 2
  %4650 = zext i1 %4649 to i8
  store i8 %4650, i8* %39, align 1
  %4651 = add i64 %4625, 96
  %4652 = add i64 %4617, 20
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i32*
  %4654 = load i32, i32* %4653, align 4
  %4655 = zext i32 %4654 to i64
  store i64 %4655, i64* %RCX.i2070, align 8
  %4656 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %4656, i64* %RDX.i2068, align 8
  %4657 = add i64 %4656, 16
  store i64 %4657, i64* %RSI.i2055, align 8
  %4658 = icmp ugt i64 %4656, -17
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %14, align 1
  %4660 = trunc i64 %4657 to i32
  %4661 = and i32 %4660, 255
  %4662 = tail call i32 @llvm.ctpop.i32(i32 %4661)
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = xor i8 %4664, 1
  store i8 %4665, i8* %21, align 1
  %4666 = xor i64 %4656, 16
  %4667 = xor i64 %4666, %4657
  %4668 = lshr i64 %4667, 4
  %4669 = trunc i64 %4668 to i8
  %4670 = and i8 %4669, 1
  store i8 %4670, i8* %27, align 1
  %4671 = icmp eq i64 %4657, 0
  %4672 = zext i1 %4671 to i8
  store i8 %4672, i8* %30, align 1
  %4673 = lshr i64 %4657, 63
  %4674 = trunc i64 %4673 to i8
  store i8 %4674, i8* %33, align 1
  %4675 = lshr i64 %4656, 63
  %4676 = xor i64 %4673, %4675
  %4677 = add nuw nsw i64 %4676, %4673
  %4678 = icmp eq i64 %4677, 2
  %4679 = zext i1 %4678 to i8
  store i8 %4679, i8* %39, align 1
  store i64 %4657, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %4680 = add i64 %4656, 8
  %4681 = add i64 %4617, 46
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4680 to i32*
  store i32 %4654, i32* %4682, align 4
  %4683 = load i64, i64* %RBP.i, align 8
  %4684 = add i64 %4683, -4
  %4685 = load i64, i64* %3, align 8
  %4686 = add i64 %4685, 3
  store i64 %4686, i64* %3, align 8
  %4687 = inttoptr i64 %4684 to i32*
  %4688 = load i32, i32* %4687, align 4
  %4689 = add i32 %4688, -20
  %4690 = zext i32 %4689 to i64
  store i64 %4690, i64* %RCX.i2070, align 8
  %4691 = icmp ult i32 %4688, 20
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %14, align 1
  %4693 = and i32 %4689, 255
  %4694 = tail call i32 @llvm.ctpop.i32(i32 %4693)
  %4695 = trunc i32 %4694 to i8
  %4696 = and i8 %4695, 1
  %4697 = xor i8 %4696, 1
  store i8 %4697, i8* %21, align 1
  %4698 = xor i32 %4688, 16
  %4699 = xor i32 %4698, %4689
  %4700 = lshr i32 %4699, 4
  %4701 = trunc i32 %4700 to i8
  %4702 = and i8 %4701, 1
  store i8 %4702, i8* %27, align 1
  %4703 = icmp eq i32 %4689, 0
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %30, align 1
  %4705 = lshr i32 %4689, 31
  %4706 = trunc i32 %4705 to i8
  store i8 %4706, i8* %33, align 1
  %4707 = lshr i32 %4688, 31
  %4708 = xor i32 %4705, %4707
  %4709 = add nuw nsw i32 %4708, %4707
  %4710 = icmp eq i32 %4709, 2
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %39, align 1
  %4712 = sext i32 %4689 to i64
  store i64 %4712, i64* %RDX.i2068, align 8
  %4713 = shl nsw i64 %4712, 2
  %4714 = add nsw i64 %4713, 11187184
  %4715 = add i64 %4685, 16
  store i64 %4715, i64* %3, align 8
  %4716 = inttoptr i64 %4714 to i32*
  %4717 = load i32, i32* %4716, align 4
  %4718 = zext i32 %4717 to i64
  store i64 %4718, i64* %RCX.i2070, align 8
  %4719 = add i64 %4683, -8
  %4720 = add i64 %4685, 20
  store i64 %4720, i64* %3, align 8
  %4721 = inttoptr i64 %4719 to i32*
  %4722 = load i32, i32* %4721, align 4
  %4723 = sext i32 %4722 to i64
  %4724 = mul nsw i64 %4723, 744
  store i64 %4724, i64* %RDX.i2068, align 8
  %4725 = lshr i64 %4724, 63
  %4726 = load i64, i64* %RAX.i2072, align 8
  %4727 = add i64 %4724, %4726
  store i64 %4727, i64* %RSI.i2055, align 8
  %4728 = icmp ult i64 %4727, %4726
  %4729 = icmp ult i64 %4727, %4724
  %4730 = or i1 %4728, %4729
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %14, align 1
  %4732 = trunc i64 %4727 to i32
  %4733 = and i32 %4732, 255
  %4734 = tail call i32 @llvm.ctpop.i32(i32 %4733)
  %4735 = trunc i32 %4734 to i8
  %4736 = and i8 %4735, 1
  %4737 = xor i8 %4736, 1
  store i8 %4737, i8* %21, align 1
  %4738 = xor i64 %4724, %4726
  %4739 = xor i64 %4738, %4727
  %4740 = lshr i64 %4739, 4
  %4741 = trunc i64 %4740 to i8
  %4742 = and i8 %4741, 1
  store i8 %4742, i8* %27, align 1
  %4743 = icmp eq i64 %4727, 0
  %4744 = zext i1 %4743 to i8
  store i8 %4744, i8* %30, align 1
  %4745 = lshr i64 %4727, 63
  %4746 = trunc i64 %4745 to i8
  store i8 %4746, i8* %33, align 1
  %4747 = lshr i64 %4726, 63
  %4748 = xor i64 %4745, %4747
  %4749 = xor i64 %4745, %4725
  %4750 = add nuw nsw i64 %4748, %4749
  %4751 = icmp eq i64 %4750, 2
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %39, align 1
  %4753 = load i64, i64* %RBP.i, align 8
  %4754 = add i64 %4753, -8
  %4755 = add i64 %4685, 37
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i32*
  %4757 = load i32, i32* %4756, align 4
  %4758 = sext i32 %4757 to i64
  %4759 = mul nsw i64 %4758, 744
  store i64 %4759, i64* %RDX.i2068, align 8
  %4760 = lshr i64 %4759, 63
  %4761 = add i64 %4759, %4726
  store i64 %4761, i64* %RDI.i1820, align 8
  %4762 = icmp ult i64 %4761, %4726
  %4763 = icmp ult i64 %4761, %4759
  %4764 = or i1 %4762, %4763
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %14, align 1
  %4766 = trunc i64 %4761 to i32
  %4767 = and i32 %4766, 255
  %4768 = tail call i32 @llvm.ctpop.i32(i32 %4767)
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  store i8 %4771, i8* %21, align 1
  %4772 = xor i64 %4759, %4726
  %4773 = xor i64 %4772, %4761
  %4774 = lshr i64 %4773, 4
  %4775 = trunc i64 %4774 to i8
  %4776 = and i8 %4775, 1
  store i8 %4776, i8* %27, align 1
  %4777 = icmp eq i64 %4761, 0
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %30, align 1
  %4779 = lshr i64 %4761, 63
  %4780 = trunc i64 %4779 to i8
  store i8 %4780, i8* %33, align 1
  %4781 = xor i64 %4779, %4747
  %4782 = xor i64 %4779, %4760
  %4783 = add nuw nsw i64 %4781, %4782
  %4784 = icmp eq i64 %4783, 2
  %4785 = zext i1 %4784 to i8
  store i8 %4785, i8* %39, align 1
  %R8D.i544 = bitcast %union.anon* %58 to i32*
  %4786 = add i64 %4761, 96
  %4787 = add i64 %4685, 54
  store i64 %4787, i64* %3, align 8
  %4788 = inttoptr i64 %4786 to i32*
  %4789 = load i32, i32* %4788, align 4
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %R8.i2059, align 8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4792 = add i32 %4789, 1
  %4793 = zext i32 %4792 to i64
  store i64 %4793, i64* %4791, align 8
  %4794 = icmp eq i32 %4789, -1
  %4795 = icmp eq i32 %4792, 0
  %4796 = or i1 %4794, %4795
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %14, align 1
  %4798 = and i32 %4792, 255
  %4799 = tail call i32 @llvm.ctpop.i32(i32 %4798)
  %4800 = trunc i32 %4799 to i8
  %4801 = and i8 %4800, 1
  %4802 = xor i8 %4801, 1
  store i8 %4802, i8* %21, align 1
  %4803 = xor i32 %4792, %4789
  %4804 = lshr i32 %4803, 4
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  store i8 %4806, i8* %27, align 1
  %4807 = zext i1 %4795 to i8
  store i8 %4807, i8* %30, align 1
  %4808 = lshr i32 %4792, 31
  %4809 = trunc i32 %4808 to i8
  store i8 %4809, i8* %33, align 1
  %4810 = lshr i32 %4789, 31
  %4811 = xor i32 %4808, %4810
  %4812 = add nuw nsw i32 %4811, %4808
  %4813 = icmp eq i32 %4812, 2
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %39, align 1
  %4815 = add i64 %4685, 65
  store i64 %4815, i64* %3, align 8
  store i32 %4792, i32* %4788, align 4
  %4816 = load i32, i32* %R8D.i544, align 4
  %4817 = load i64, i64* %3, align 8
  %4818 = sext i32 %4816 to i64
  store i64 %4818, i64* %RDX.i2068, align 8
  %4819 = load i64, i64* %RSI.i2055, align 8
  %4820 = shl nsw i64 %4818, 2
  %4821 = add nsw i64 %4820, 100
  %4822 = add i64 %4821, %4819
  %4823 = load i32, i32* %ECX.i1904, align 4
  %4824 = add i64 %4817, 7
  store i64 %4824, i64* %3, align 8
  %4825 = inttoptr i64 %4822 to i32*
  store i32 %4823, i32* %4825, align 4
  %4826 = load i64, i64* %RBP.i, align 8
  %4827 = add i64 %4826, -40
  %4828 = load i64, i64* %3, align 8
  %4829 = add i64 %4828, 4
  store i64 %4829, i64* %3, align 8
  %4830 = inttoptr i64 %4827 to i32*
  %4831 = load i32, i32* %4830, align 4
  %4832 = sext i32 %4831 to i64
  %4833 = mul nsw i64 %4832, 744
  %4834 = load i64, i64* %RAX.i2072, align 8
  %4835 = add i64 %4833, %4834
  %4836 = lshr i64 %4835, 63
  %4837 = add i64 %4835, 96
  store i64 %4837, i64* %RSI.i2055, align 8
  %4838 = icmp ugt i64 %4835, -97
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %14, align 1
  %4840 = trunc i64 %4837 to i32
  %4841 = and i32 %4840, 255
  %4842 = tail call i32 @llvm.ctpop.i32(i32 %4841)
  %4843 = trunc i32 %4842 to i8
  %4844 = and i8 %4843, 1
  %4845 = xor i8 %4844, 1
  store i8 %4845, i8* %21, align 1
  %4846 = xor i64 %4837, %4835
  %4847 = lshr i64 %4846, 4
  %4848 = trunc i64 %4847 to i8
  %4849 = and i8 %4848, 1
  store i8 %4849, i8* %27, align 1
  %4850 = icmp eq i64 %4837, 0
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %30, align 1
  %4852 = lshr i64 %4837, 63
  %4853 = trunc i64 %4852 to i8
  store i8 %4853, i8* %33, align 1
  %4854 = xor i64 %4852, %4836
  %4855 = add nuw nsw i64 %4854, %4852
  %4856 = icmp eq i64 %4855, 2
  %4857 = zext i1 %4856 to i8
  store i8 %4857, i8* %39, align 1
  %4858 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %4858, i64* %RDX.i2068, align 8
  %4859 = add i64 %4828, 32
  store i64 %4859, i64* %3, align 8
  %4860 = inttoptr i64 %4858 to i64*
  store i64 %4837, i64* %4860, align 8
  %4861 = load i64, i64* %RBP.i, align 8
  %4862 = add i64 %4861, -40
  %4863 = load i64, i64* %3, align 8
  %4864 = add i64 %4863, 4
  store i64 %4864, i64* %3, align 8
  %4865 = inttoptr i64 %4862 to i32*
  %4866 = load i32, i32* %4865, align 4
  %4867 = sext i32 %4866 to i64
  %4868 = mul nsw i64 %4867, 744
  store i64 %4868, i64* %RDX.i2068, align 8
  %4869 = lshr i64 %4868, 63
  %4870 = load i64, i64* %RAX.i2072, align 8
  %4871 = add i64 %4868, %4870
  store i64 %4871, i64* %RSI.i2055, align 8
  %4872 = icmp ult i64 %4871, %4870
  %4873 = icmp ult i64 %4871, %4868
  %4874 = or i1 %4872, %4873
  %4875 = zext i1 %4874 to i8
  store i8 %4875, i8* %14, align 1
  %4876 = trunc i64 %4871 to i32
  %4877 = and i32 %4876, 255
  %4878 = tail call i32 @llvm.ctpop.i32(i32 %4877)
  %4879 = trunc i32 %4878 to i8
  %4880 = and i8 %4879, 1
  %4881 = xor i8 %4880, 1
  store i8 %4881, i8* %21, align 1
  %4882 = xor i64 %4868, %4870
  %4883 = xor i64 %4882, %4871
  %4884 = lshr i64 %4883, 4
  %4885 = trunc i64 %4884 to i8
  %4886 = and i8 %4885, 1
  store i8 %4886, i8* %27, align 1
  %4887 = icmp eq i64 %4871, 0
  %4888 = zext i1 %4887 to i8
  store i8 %4888, i8* %30, align 1
  %4889 = lshr i64 %4871, 63
  %4890 = trunc i64 %4889 to i8
  store i8 %4890, i8* %33, align 1
  %4891 = lshr i64 %4870, 63
  %4892 = xor i64 %4889, %4891
  %4893 = xor i64 %4889, %4869
  %4894 = add nuw nsw i64 %4892, %4893
  %4895 = icmp eq i64 %4894, 2
  %4896 = zext i1 %4895 to i8
  store i8 %4896, i8* %39, align 1
  %4897 = add i64 %4871, 96
  %4898 = add i64 %4863, 20
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i32*
  %4900 = load i32, i32* %4899, align 4
  %4901 = zext i32 %4900 to i64
  store i64 %4901, i64* %RCX.i2070, align 8
  %4902 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %4902, i64* %RDX.i2068, align 8
  %4903 = add i64 %4902, 16
  store i64 %4903, i64* %RSI.i2055, align 8
  %4904 = icmp ugt i64 %4902, -17
  %4905 = zext i1 %4904 to i8
  store i8 %4905, i8* %14, align 1
  %4906 = trunc i64 %4903 to i32
  %4907 = and i32 %4906, 255
  %4908 = tail call i32 @llvm.ctpop.i32(i32 %4907)
  %4909 = trunc i32 %4908 to i8
  %4910 = and i8 %4909, 1
  %4911 = xor i8 %4910, 1
  store i8 %4911, i8* %21, align 1
  %4912 = xor i64 %4902, 16
  %4913 = xor i64 %4912, %4903
  %4914 = lshr i64 %4913, 4
  %4915 = trunc i64 %4914 to i8
  %4916 = and i8 %4915, 1
  store i8 %4916, i8* %27, align 1
  %4917 = icmp eq i64 %4903, 0
  %4918 = zext i1 %4917 to i8
  store i8 %4918, i8* %30, align 1
  %4919 = lshr i64 %4903, 63
  %4920 = trunc i64 %4919 to i8
  store i8 %4920, i8* %33, align 1
  %4921 = lshr i64 %4902, 63
  %4922 = xor i64 %4919, %4921
  %4923 = add nuw nsw i64 %4922, %4919
  %4924 = icmp eq i64 %4923, 2
  %4925 = zext i1 %4924 to i8
  store i8 %4925, i8* %39, align 1
  store i64 %4903, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %4926 = add i64 %4902, 8
  %4927 = add i64 %4863, 46
  store i64 %4927, i64* %3, align 8
  %4928 = inttoptr i64 %4926 to i32*
  store i32 %4900, i32* %4928, align 4
  %4929 = load i64, i64* %RBP.i, align 8
  %4930 = add i64 %4929, -4
  %4931 = load i64, i64* %3, align 8
  %4932 = add i64 %4931, 4
  store i64 %4932, i64* %3, align 8
  %4933 = inttoptr i64 %4930 to i32*
  %4934 = load i32, i32* %4933, align 4
  %4935 = sext i32 %4934 to i64
  store i64 %4935, i64* %RDX.i2068, align 8
  %4936 = shl nsw i64 %4935, 2
  %4937 = add nsw i64 %4936, 11187184
  %4938 = add i64 %4931, 11
  store i64 %4938, i64* %3, align 8
  %4939 = inttoptr i64 %4937 to i32*
  %4940 = load i32, i32* %4939, align 4
  %4941 = zext i32 %4940 to i64
  store i64 %4941, i64* %RCX.i2070, align 8
  %4942 = add i64 %4929, -40
  %4943 = add i64 %4931, 15
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i32*
  %4945 = load i32, i32* %4944, align 4
  %4946 = sext i32 %4945 to i64
  %4947 = mul nsw i64 %4946, 744
  store i64 %4947, i64* %RDX.i2068, align 8
  %4948 = lshr i64 %4947, 63
  %4949 = load i64, i64* %RAX.i2072, align 8
  %4950 = add i64 %4947, %4949
  store i64 %4950, i64* %RSI.i2055, align 8
  %4951 = icmp ult i64 %4950, %4949
  %4952 = icmp ult i64 %4950, %4947
  %4953 = or i1 %4951, %4952
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %14, align 1
  %4955 = trunc i64 %4950 to i32
  %4956 = and i32 %4955, 255
  %4957 = tail call i32 @llvm.ctpop.i32(i32 %4956)
  %4958 = trunc i32 %4957 to i8
  %4959 = and i8 %4958, 1
  %4960 = xor i8 %4959, 1
  store i8 %4960, i8* %21, align 1
  %4961 = xor i64 %4947, %4949
  %4962 = xor i64 %4961, %4950
  %4963 = lshr i64 %4962, 4
  %4964 = trunc i64 %4963 to i8
  %4965 = and i8 %4964, 1
  store i8 %4965, i8* %27, align 1
  %4966 = icmp eq i64 %4950, 0
  %4967 = zext i1 %4966 to i8
  store i8 %4967, i8* %30, align 1
  %4968 = lshr i64 %4950, 63
  %4969 = trunc i64 %4968 to i8
  store i8 %4969, i8* %33, align 1
  %4970 = lshr i64 %4949, 63
  %4971 = xor i64 %4968, %4970
  %4972 = xor i64 %4968, %4948
  %4973 = add nuw nsw i64 %4971, %4972
  %4974 = icmp eq i64 %4973, 2
  %4975 = zext i1 %4974 to i8
  store i8 %4975, i8* %39, align 1
  %4976 = add i64 %4931, 32
  store i64 %4976, i64* %3, align 8
  %4977 = load i32, i32* %4944, align 4
  %4978 = sext i32 %4977 to i64
  %4979 = mul nsw i64 %4978, 744
  store i64 %4979, i64* %RDX.i2068, align 8
  %4980 = lshr i64 %4979, 63
  %4981 = add i64 %4979, %4949
  store i64 %4981, i64* %RDI.i1820, align 8
  %4982 = icmp ult i64 %4981, %4949
  %4983 = icmp ult i64 %4981, %4979
  %4984 = or i1 %4982, %4983
  %4985 = zext i1 %4984 to i8
  store i8 %4985, i8* %14, align 1
  %4986 = trunc i64 %4981 to i32
  %4987 = and i32 %4986, 255
  %4988 = tail call i32 @llvm.ctpop.i32(i32 %4987)
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  store i8 %4991, i8* %21, align 1
  %4992 = xor i64 %4979, %4949
  %4993 = xor i64 %4992, %4981
  %4994 = lshr i64 %4993, 4
  %4995 = trunc i64 %4994 to i8
  %4996 = and i8 %4995, 1
  store i8 %4996, i8* %27, align 1
  %4997 = icmp eq i64 %4981, 0
  %4998 = zext i1 %4997 to i8
  store i8 %4998, i8* %30, align 1
  %4999 = lshr i64 %4981, 63
  %5000 = trunc i64 %4999 to i8
  store i8 %5000, i8* %33, align 1
  %5001 = xor i64 %4999, %4970
  %5002 = xor i64 %4999, %4980
  %5003 = add nuw nsw i64 %5001, %5002
  %5004 = icmp eq i64 %5003, 2
  %5005 = zext i1 %5004 to i8
  store i8 %5005, i8* %39, align 1
  %5006 = add i64 %4981, 96
  %5007 = add i64 %4931, 49
  store i64 %5007, i64* %3, align 8
  %5008 = inttoptr i64 %5006 to i32*
  %5009 = load i32, i32* %5008, align 4
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %R8.i2059, align 8
  %5011 = add i32 %5009, 1
  %5012 = zext i32 %5011 to i64
  store i64 %5012, i64* %4791, align 8
  %5013 = icmp eq i32 %5009, -1
  %5014 = icmp eq i32 %5011, 0
  %5015 = or i1 %5013, %5014
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %14, align 1
  %5017 = and i32 %5011, 255
  %5018 = tail call i32 @llvm.ctpop.i32(i32 %5017)
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  store i8 %5021, i8* %21, align 1
  %5022 = xor i32 %5011, %5009
  %5023 = lshr i32 %5022, 4
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  store i8 %5025, i8* %27, align 1
  %5026 = zext i1 %5014 to i8
  store i8 %5026, i8* %30, align 1
  %5027 = lshr i32 %5011, 31
  %5028 = trunc i32 %5027 to i8
  store i8 %5028, i8* %33, align 1
  %5029 = lshr i32 %5009, 31
  %5030 = xor i32 %5027, %5029
  %5031 = add nuw nsw i32 %5030, %5027
  %5032 = icmp eq i32 %5031, 2
  %5033 = zext i1 %5032 to i8
  store i8 %5033, i8* %39, align 1
  %5034 = add i64 %4931, 60
  store i64 %5034, i64* %3, align 8
  store i32 %5011, i32* %5008, align 4
  %5035 = load i32, i32* %R8D.i544, align 4
  %5036 = load i64, i64* %3, align 8
  %5037 = sext i32 %5035 to i64
  store i64 %5037, i64* %RDX.i2068, align 8
  %5038 = load i64, i64* %RSI.i2055, align 8
  %5039 = shl nsw i64 %5037, 2
  %5040 = add nsw i64 %5039, 100
  %5041 = add i64 %5040, %5038
  %5042 = load i32, i32* %ECX.i1904, align 4
  %5043 = add i64 %5036, 7
  store i64 %5043, i64* %3, align 8
  %5044 = inttoptr i64 %5041 to i32*
  store i32 %5042, i32* %5044, align 4
  %5045 = load i64, i64* %3, align 8
  %5046 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %5047 = zext i32 %5046 to i64
  store i64 %5047, i64* %RCX.i2070, align 8
  %5048 = load i64, i64* %RBP.i, align 8
  %5049 = add i64 %5048, -4
  %5050 = add i64 %5045, 11
  store i64 %5050, i64* %3, align 8
  %5051 = inttoptr i64 %5049 to i32*
  %5052 = load i32, i32* %5051, align 4
  %5053 = add i32 %5052, -20
  %5054 = zext i32 %5053 to i64
  store i64 %5054, i64* %R8.i2059, align 8
  %5055 = icmp ult i32 %5052, 20
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %14, align 1
  %5057 = and i32 %5053, 255
  %5058 = tail call i32 @llvm.ctpop.i32(i32 %5057)
  %5059 = trunc i32 %5058 to i8
  %5060 = and i8 %5059, 1
  %5061 = xor i8 %5060, 1
  store i8 %5061, i8* %21, align 1
  %5062 = xor i32 %5052, 16
  %5063 = xor i32 %5062, %5053
  %5064 = lshr i32 %5063, 4
  %5065 = trunc i32 %5064 to i8
  %5066 = and i8 %5065, 1
  store i8 %5066, i8* %27, align 1
  %5067 = icmp eq i32 %5053, 0
  %5068 = zext i1 %5067 to i8
  store i8 %5068, i8* %30, align 1
  %5069 = lshr i32 %5053, 31
  %5070 = trunc i32 %5069 to i8
  store i8 %5070, i8* %33, align 1
  %5071 = lshr i32 %5052, 31
  %5072 = xor i32 %5069, %5071
  %5073 = add nuw nsw i32 %5072, %5071
  %5074 = icmp eq i32 %5073, 2
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %39, align 1
  %5076 = sext i32 %5053 to i64
  store i64 %5076, i64* %RDX.i2068, align 8
  %5077 = shl nsw i64 %5076, 2
  %5078 = add nsw i64 %5077, 11187184
  %5079 = add i64 %5045, 26
  store i64 %5079, i64* %3, align 8
  %5080 = inttoptr i64 %5078 to i32*
  %5081 = load i32, i32* %5080, align 4
  %5082 = sext i32 %5081 to i64
  %5083 = mul nsw i64 %5082, 744
  store i64 %5083, i64* %RDX.i2068, align 8
  %5084 = lshr i64 %5083, 63
  %5085 = load i64, i64* %RAX.i2072, align 8
  %5086 = add i64 %5083, %5085
  store i64 %5086, i64* %RAX.i2072, align 8
  %5087 = icmp ult i64 %5086, %5085
  %5088 = icmp ult i64 %5086, %5083
  %5089 = or i1 %5087, %5088
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %14, align 1
  %5091 = trunc i64 %5086 to i32
  %5092 = and i32 %5091, 255
  %5093 = tail call i32 @llvm.ctpop.i32(i32 %5092)
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  store i8 %5096, i8* %21, align 1
  %5097 = xor i64 %5083, %5085
  %5098 = xor i64 %5097, %5086
  %5099 = lshr i64 %5098, 4
  %5100 = trunc i64 %5099 to i8
  %5101 = and i8 %5100, 1
  store i8 %5101, i8* %27, align 1
  %5102 = icmp eq i64 %5086, 0
  %5103 = zext i1 %5102 to i8
  store i8 %5103, i8* %30, align 1
  %5104 = lshr i64 %5086, 63
  %5105 = trunc i64 %5104 to i8
  store i8 %5105, i8* %33, align 1
  %5106 = lshr i64 %5085, 63
  %5107 = xor i64 %5104, %5106
  %5108 = xor i64 %5104, %5084
  %5109 = add nuw nsw i64 %5107, %5108
  %5110 = icmp eq i64 %5109, 2
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %39, align 1
  %5112 = add i64 %5086, 740
  %5113 = load i32, i32* %ECX.i1904, align 4
  %5114 = add i64 %5045, 42
  store i64 %5114, i64* %3, align 8
  %5115 = inttoptr i64 %5112 to i32*
  store i32 %5113, i32* %5115, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_40bd6d

block_.L_40bd6d:                                  ; preds = %block_.L_40bbad, %block_40bbff, %block_40bbc7
  %5116 = phi i64 [ %.pre58, %block_40bbff ], [ %4541, %block_40bbc7 ], [ %4451, %block_.L_40bbad ]
  %5117 = add i64 %5116, 5
  store i64 %5117, i64* %3, align 8
  br label %block_.L_40bd72

block_.L_40bd72:                                  ; preds = %block_.L_40bd6d, %block_.L_40bba8
  %storemerge48 = phi i64 [ %4393, %block_.L_40bba8 ], [ %5117, %block_.L_40bd6d ]
  %5118 = load i64, i64* %RBP.i, align 8
  %5119 = add i64 %5118, -4
  %5120 = add i64 %storemerge48, 3
  store i64 %5120, i64* %3, align 8
  %5121 = inttoptr i64 %5119 to i32*
  %5122 = load i32, i32* %5121, align 4
  %5123 = add i32 %5122, 1
  %5124 = zext i32 %5123 to i64
  store i64 %5124, i64* %RAX.i2072, align 8
  %5125 = icmp eq i32 %5122, -1
  %5126 = icmp eq i32 %5123, 0
  %5127 = or i1 %5125, %5126
  %5128 = zext i1 %5127 to i8
  store i8 %5128, i8* %14, align 1
  %5129 = and i32 %5123, 255
  %5130 = tail call i32 @llvm.ctpop.i32(i32 %5129)
  %5131 = trunc i32 %5130 to i8
  %5132 = and i8 %5131, 1
  %5133 = xor i8 %5132, 1
  store i8 %5133, i8* %21, align 1
  %5134 = xor i32 %5123, %5122
  %5135 = lshr i32 %5134, 4
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  store i8 %5137, i8* %27, align 1
  %5138 = zext i1 %5126 to i8
  store i8 %5138, i8* %30, align 1
  %5139 = lshr i32 %5123, 31
  %5140 = trunc i32 %5139 to i8
  store i8 %5140, i8* %33, align 1
  %5141 = lshr i32 %5122, 31
  %5142 = xor i32 %5139, %5141
  %5143 = add nuw nsw i32 %5142, %5139
  %5144 = icmp eq i32 %5143, 2
  %5145 = zext i1 %5144 to i8
  store i8 %5145, i8* %39, align 1
  %5146 = sext i32 %5123 to i64
  store i64 %5146, i64* %RCX.i2070, align 8
  %5147 = add nsw i64 %5146, 12099168
  %5148 = add i64 %storemerge48, 17
  store i64 %5148, i64* %3, align 8
  %5149 = inttoptr i64 %5147 to i8*
  %5150 = load i8, i8* %5149, align 1
  %5151 = zext i8 %5150 to i64
  store i64 %5151, i64* %RAX.i2072, align 8
  %5152 = zext i8 %5150 to i32
  store i8 0, i8* %14, align 1
  %5153 = tail call i32 @llvm.ctpop.i32(i32 %5152)
  %5154 = trunc i32 %5153 to i8
  %5155 = and i8 %5154, 1
  %5156 = xor i8 %5155, 1
  store i8 %5156, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5157 = icmp eq i8 %5150, 0
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v69 = select i1 %5157, i64 26, i64 344
  %5159 = add i64 %storemerge48, %.v69
  store i64 %5159, i64* %3, align 8
  br i1 %5157, label %block_40bd8c, label %block_.L_40beca

block_40bd8c:                                     ; preds = %block_.L_40bd72
  %5160 = add i64 %5118, -16
  %5161 = add i64 %5159, 4
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i32*
  %5163 = load i32, i32* %5162, align 4
  store i8 0, i8* %14, align 1
  %5164 = and i32 %5163, 255
  %5165 = tail call i32 @llvm.ctpop.i32(i32 %5164)
  %5166 = trunc i32 %5165 to i8
  %5167 = and i8 %5166, 1
  %5168 = xor i8 %5167, 1
  store i8 %5168, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5169 = icmp eq i32 %5163, 0
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %30, align 1
  %5171 = lshr i32 %5163, 31
  %5172 = trunc i32 %5171 to i8
  store i8 %5172, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v72 = select i1 %5169, i64 10, i64 313
  %5173 = add i64 %5159, %.v72
  store i64 %5173, i64* %3, align 8
  br i1 %5169, label %block_40bd96, label %block_.L_40bec5

block_40bd96:                                     ; preds = %block_40bd8c
  %5174 = add i64 %5173, 3
  store i64 %5174, i64* %3, align 8
  %5175 = load i32, i32* %5121, align 4
  %5176 = add i32 %5175, 1
  %5177 = lshr i32 %5176, 31
  %5178 = add i32 %5175, 2
  %5179 = zext i32 %5178 to i64
  store i64 %5179, i64* %RAX.i2072, align 8
  %5180 = icmp eq i32 %5176, -1
  %5181 = icmp eq i32 %5178, 0
  %5182 = or i1 %5180, %5181
  %5183 = zext i1 %5182 to i8
  store i8 %5183, i8* %14, align 1
  %5184 = and i32 %5178, 255
  %5185 = tail call i32 @llvm.ctpop.i32(i32 %5184)
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  %5188 = xor i8 %5187, 1
  store i8 %5188, i8* %21, align 1
  %5189 = xor i32 %5178, %5176
  %5190 = lshr i32 %5189, 4
  %5191 = trunc i32 %5190 to i8
  %5192 = and i8 %5191, 1
  store i8 %5192, i8* %27, align 1
  %5193 = zext i1 %5181 to i8
  store i8 %5193, i8* %30, align 1
  %5194 = lshr i32 %5178, 31
  %5195 = trunc i32 %5194 to i8
  store i8 %5195, i8* %33, align 1
  %5196 = xor i32 %5194, %5177
  %5197 = add nuw nsw i32 %5196, %5194
  %5198 = icmp eq i32 %5197, 2
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %39, align 1
  %5200 = sext i32 %5178 to i64
  store i64 %5200, i64* %RCX.i2070, align 8
  %5201 = add nsw i64 %5200, 12099168
  %5202 = add i64 %5173, 20
  store i64 %5202, i64* %3, align 8
  %5203 = inttoptr i64 %5201 to i8*
  %5204 = load i8, i8* %5203, align 1
  %5205 = zext i8 %5204 to i64
  store i64 %5205, i64* %RAX.i2072, align 8
  %5206 = zext i8 %5204 to i32
  %5207 = add i64 %5118, -20
  %5208 = add i64 %5173, 23
  store i64 %5208, i64* %3, align 8
  %5209 = inttoptr i64 %5207 to i32*
  %5210 = load i32, i32* %5209, align 4
  %5211 = sub i32 %5206, %5210
  %5212 = icmp ult i32 %5206, %5210
  %5213 = zext i1 %5212 to i8
  store i8 %5213, i8* %14, align 1
  %5214 = and i32 %5211, 255
  %5215 = tail call i32 @llvm.ctpop.i32(i32 %5214)
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  %5218 = xor i8 %5217, 1
  store i8 %5218, i8* %21, align 1
  %5219 = xor i32 %5210, %5206
  %5220 = xor i32 %5219, %5211
  %5221 = lshr i32 %5220, 4
  %5222 = trunc i32 %5221 to i8
  %5223 = and i8 %5222, 1
  store i8 %5223, i8* %27, align 1
  %5224 = icmp eq i32 %5211, 0
  %5225 = zext i1 %5224 to i8
  store i8 %5225, i8* %30, align 1
  %5226 = lshr i32 %5211, 31
  %5227 = trunc i32 %5226 to i8
  store i8 %5227, i8* %33, align 1
  %5228 = lshr i32 %5210, 31
  %5229 = add nuw nsw i32 %5226, %5228
  %5230 = icmp eq i32 %5229, 2
  %5231 = zext i1 %5230 to i8
  store i8 %5231, i8* %39, align 1
  %.v73 = select i1 %5224, i64 29, i64 57
  %5232 = add i64 %5173, %.v73
  store i64 %5232, i64* %3, align 8
  br i1 %5224, label %block_40bdb3, label %block_.L_40bdcf

block_40bdb3:                                     ; preds = %block_40bd96
  %5233 = load i64, i64* %RBP.i, align 8
  %5234 = add i64 %5233, -4
  %5235 = add i64 %5232, 3
  store i64 %5235, i64* %3, align 8
  %5236 = inttoptr i64 %5234 to i32*
  %5237 = load i32, i32* %5236, align 4
  %5238 = add i32 %5237, 1
  %5239 = lshr i32 %5238, 31
  %5240 = add i32 %5237, 2
  %5241 = zext i32 %5240 to i64
  store i64 %5241, i64* %RAX.i2072, align 8
  %5242 = icmp eq i32 %5238, -1
  %5243 = icmp eq i32 %5240, 0
  %5244 = or i1 %5242, %5243
  %5245 = zext i1 %5244 to i8
  store i8 %5245, i8* %14, align 1
  %5246 = and i32 %5240, 255
  %5247 = tail call i32 @llvm.ctpop.i32(i32 %5246)
  %5248 = trunc i32 %5247 to i8
  %5249 = and i8 %5248, 1
  %5250 = xor i8 %5249, 1
  store i8 %5250, i8* %21, align 1
  %5251 = xor i32 %5240, %5238
  %5252 = lshr i32 %5251, 4
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  store i8 %5254, i8* %27, align 1
  %5255 = zext i1 %5243 to i8
  store i8 %5255, i8* %30, align 1
  %5256 = lshr i32 %5240, 31
  %5257 = trunc i32 %5256 to i8
  store i8 %5257, i8* %33, align 1
  %5258 = xor i32 %5256, %5239
  %5259 = add nuw nsw i32 %5258, %5256
  %5260 = icmp eq i32 %5259, 2
  %5261 = zext i1 %5260 to i8
  store i8 %5261, i8* %39, align 1
  %5262 = sext i32 %5240 to i64
  store i64 %5262, i64* %RCX.i2070, align 8
  %5263 = shl nsw i64 %5262, 2
  %5264 = add nsw i64 %5263, 11187184
  %5265 = add i64 %5232, 19
  store i64 %5265, i64* %3, align 8
  %5266 = inttoptr i64 %5264 to i32*
  %5267 = load i32, i32* %5266, align 4
  %5268 = zext i32 %5267 to i64
  store i64 %5268, i64* %RAX.i2072, align 8
  %5269 = add i64 %5233, -8
  %5270 = add i64 %5232, 22
  store i64 %5270, i64* %3, align 8
  %5271 = inttoptr i64 %5269 to i32*
  %5272 = load i32, i32* %5271, align 4
  %5273 = sub i32 %5267, %5272
  %5274 = icmp ult i32 %5267, %5272
  %5275 = zext i1 %5274 to i8
  store i8 %5275, i8* %14, align 1
  %5276 = and i32 %5273, 255
  %5277 = tail call i32 @llvm.ctpop.i32(i32 %5276)
  %5278 = trunc i32 %5277 to i8
  %5279 = and i8 %5278, 1
  %5280 = xor i8 %5279, 1
  store i8 %5280, i8* %21, align 1
  %5281 = xor i32 %5272, %5267
  %5282 = xor i32 %5281, %5273
  %5283 = lshr i32 %5282, 4
  %5284 = trunc i32 %5283 to i8
  %5285 = and i8 %5284, 1
  store i8 %5285, i8* %27, align 1
  %5286 = icmp eq i32 %5273, 0
  %5287 = zext i1 %5286 to i8
  store i8 %5287, i8* %30, align 1
  %5288 = lshr i32 %5273, 31
  %5289 = trunc i32 %5288 to i8
  store i8 %5289, i8* %33, align 1
  %5290 = lshr i32 %5267, 31
  %5291 = lshr i32 %5272, 31
  %5292 = xor i32 %5291, %5290
  %5293 = xor i32 %5288, %5290
  %5294 = add nuw nsw i32 %5293, %5292
  %5295 = icmp eq i32 %5294, 2
  %5296 = zext i1 %5295 to i8
  store i8 %5296, i8* %39, align 1
  %.v79 = select i1 %5286, i64 274, i64 28
  %5297 = add i64 %5232, %.v79
  store i64 %5297, i64* %3, align 8
  br i1 %5286, label %block_.L_40bec5, label %block_.L_40bdcf

block_.L_40bdcf:                                  ; preds = %block_40bd96, %block_40bdb3
  %5298 = phi i64 [ %5297, %block_40bdb3 ], [ %5232, %block_40bd96 ]
  %5299 = load i64, i64* %RBP.i, align 8
  %5300 = add i64 %5299, -4
  %5301 = add i64 %5298, 3
  store i64 %5301, i64* %3, align 8
  %5302 = inttoptr i64 %5300 to i32*
  %5303 = load i32, i32* %5302, align 4
  %5304 = add i32 %5303, 1
  %5305 = lshr i32 %5304, 31
  %5306 = add i32 %5303, 21
  %5307 = zext i32 %5306 to i64
  store i64 %5307, i64* %RAX.i2072, align 8
  %5308 = icmp ugt i32 %5304, -21
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %14, align 1
  %5310 = and i32 %5306, 255
  %5311 = tail call i32 @llvm.ctpop.i32(i32 %5310)
  %5312 = trunc i32 %5311 to i8
  %5313 = and i8 %5312, 1
  %5314 = xor i8 %5313, 1
  store i8 %5314, i8* %21, align 1
  %5315 = xor i32 %5304, 16
  %5316 = xor i32 %5315, %5306
  %5317 = lshr i32 %5316, 4
  %5318 = trunc i32 %5317 to i8
  %5319 = and i8 %5318, 1
  store i8 %5319, i8* %27, align 1
  %5320 = icmp eq i32 %5306, 0
  %5321 = zext i1 %5320 to i8
  store i8 %5321, i8* %30, align 1
  %5322 = lshr i32 %5306, 31
  %5323 = trunc i32 %5322 to i8
  store i8 %5323, i8* %33, align 1
  %5324 = xor i32 %5322, %5305
  %5325 = add nuw nsw i32 %5324, %5322
  %5326 = icmp eq i32 %5325, 2
  %5327 = zext i1 %5326 to i8
  store i8 %5327, i8* %39, align 1
  %5328 = sext i32 %5306 to i64
  store i64 %5328, i64* %RCX.i2070, align 8
  %5329 = add nsw i64 %5328, 12099168
  %5330 = add i64 %5298, 20
  store i64 %5330, i64* %3, align 8
  %5331 = inttoptr i64 %5329 to i8*
  %5332 = load i8, i8* %5331, align 1
  %5333 = zext i8 %5332 to i64
  store i64 %5333, i64* %RAX.i2072, align 8
  %5334 = zext i8 %5332 to i32
  %5335 = add i64 %5299, -20
  %5336 = add i64 %5298, 23
  store i64 %5336, i64* %3, align 8
  %5337 = inttoptr i64 %5335 to i32*
  %5338 = load i32, i32* %5337, align 4
  %5339 = sub i32 %5334, %5338
  %5340 = icmp ult i32 %5334, %5338
  %5341 = zext i1 %5340 to i8
  store i8 %5341, i8* %14, align 1
  %5342 = and i32 %5339, 255
  %5343 = tail call i32 @llvm.ctpop.i32(i32 %5342)
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = xor i8 %5345, 1
  store i8 %5346, i8* %21, align 1
  %5347 = xor i32 %5338, %5334
  %5348 = xor i32 %5347, %5339
  %5349 = lshr i32 %5348, 4
  %5350 = trunc i32 %5349 to i8
  %5351 = and i8 %5350, 1
  store i8 %5351, i8* %27, align 1
  %5352 = icmp eq i32 %5339, 0
  %5353 = zext i1 %5352 to i8
  store i8 %5353, i8* %30, align 1
  %5354 = lshr i32 %5339, 31
  %5355 = trunc i32 %5354 to i8
  store i8 %5355, i8* %33, align 1
  %5356 = lshr i32 %5338, 31
  %5357 = add nuw nsw i32 %5354, %5356
  %5358 = icmp eq i32 %5357, 2
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %39, align 1
  %.v74 = select i1 %5352, i64 29, i64 57
  %5360 = add i64 %5298, %.v74
  store i64 %5360, i64* %3, align 8
  br i1 %5352, label %block_40bdec, label %block_.L_40be08

block_40bdec:                                     ; preds = %block_.L_40bdcf
  %5361 = load i64, i64* %RBP.i, align 8
  %5362 = add i64 %5361, -4
  %5363 = add i64 %5360, 3
  store i64 %5363, i64* %3, align 8
  %5364 = inttoptr i64 %5362 to i32*
  %5365 = load i32, i32* %5364, align 4
  %5366 = add i32 %5365, 1
  %5367 = lshr i32 %5366, 31
  %5368 = add i32 %5365, 21
  %5369 = zext i32 %5368 to i64
  store i64 %5369, i64* %RAX.i2072, align 8
  %5370 = icmp ugt i32 %5366, -21
  %5371 = zext i1 %5370 to i8
  store i8 %5371, i8* %14, align 1
  %5372 = and i32 %5368, 255
  %5373 = tail call i32 @llvm.ctpop.i32(i32 %5372)
  %5374 = trunc i32 %5373 to i8
  %5375 = and i8 %5374, 1
  %5376 = xor i8 %5375, 1
  store i8 %5376, i8* %21, align 1
  %5377 = xor i32 %5366, 16
  %5378 = xor i32 %5377, %5368
  %5379 = lshr i32 %5378, 4
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  store i8 %5381, i8* %27, align 1
  %5382 = icmp eq i32 %5368, 0
  %5383 = zext i1 %5382 to i8
  store i8 %5383, i8* %30, align 1
  %5384 = lshr i32 %5368, 31
  %5385 = trunc i32 %5384 to i8
  store i8 %5385, i8* %33, align 1
  %5386 = xor i32 %5384, %5367
  %5387 = add nuw nsw i32 %5386, %5384
  %5388 = icmp eq i32 %5387, 2
  %5389 = zext i1 %5388 to i8
  store i8 %5389, i8* %39, align 1
  %5390 = sext i32 %5368 to i64
  store i64 %5390, i64* %RCX.i2070, align 8
  %5391 = shl nsw i64 %5390, 2
  %5392 = add nsw i64 %5391, 11187184
  %5393 = add i64 %5360, 19
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RAX.i2072, align 8
  %5397 = add i64 %5361, -8
  %5398 = add i64 %5360, 22
  store i64 %5398, i64* %3, align 8
  %5399 = inttoptr i64 %5397 to i32*
  %5400 = load i32, i32* %5399, align 4
  %5401 = sub i32 %5395, %5400
  %5402 = icmp ult i32 %5395, %5400
  %5403 = zext i1 %5402 to i8
  store i8 %5403, i8* %14, align 1
  %5404 = and i32 %5401, 255
  %5405 = tail call i32 @llvm.ctpop.i32(i32 %5404)
  %5406 = trunc i32 %5405 to i8
  %5407 = and i8 %5406, 1
  %5408 = xor i8 %5407, 1
  store i8 %5408, i8* %21, align 1
  %5409 = xor i32 %5400, %5395
  %5410 = xor i32 %5409, %5401
  %5411 = lshr i32 %5410, 4
  %5412 = trunc i32 %5411 to i8
  %5413 = and i8 %5412, 1
  store i8 %5413, i8* %27, align 1
  %5414 = icmp eq i32 %5401, 0
  %5415 = zext i1 %5414 to i8
  store i8 %5415, i8* %30, align 1
  %5416 = lshr i32 %5401, 31
  %5417 = trunc i32 %5416 to i8
  store i8 %5417, i8* %33, align 1
  %5418 = lshr i32 %5395, 31
  %5419 = lshr i32 %5400, 31
  %5420 = xor i32 %5419, %5418
  %5421 = xor i32 %5416, %5418
  %5422 = add nuw nsw i32 %5421, %5420
  %5423 = icmp eq i32 %5422, 2
  %5424 = zext i1 %5423 to i8
  store i8 %5424, i8* %39, align 1
  %.v78 = select i1 %5414, i64 217, i64 28
  %5425 = add i64 %5360, %.v78
  store i64 %5425, i64* %3, align 8
  br i1 %5414, label %block_.L_40bec5, label %block_.L_40be08

block_.L_40be08:                                  ; preds = %block_.L_40bdcf, %block_40bdec
  %5426 = phi i64 [ %5425, %block_40bdec ], [ %5360, %block_.L_40bdcf ]
  %5427 = load i64, i64* %RBP.i, align 8
  %5428 = add i64 %5427, -4
  %5429 = add i64 %5426, 3
  store i64 %5429, i64* %3, align 8
  %5430 = inttoptr i64 %5428 to i32*
  %5431 = load i32, i32* %5430, align 4
  %5432 = add i32 %5431, 1
  %5433 = lshr i32 %5432, 31
  %5434 = add i32 %5431, -19
  %5435 = zext i32 %5434 to i64
  store i64 %5435, i64* %RAX.i2072, align 8
  %5436 = icmp ult i32 %5432, 20
  %5437 = zext i1 %5436 to i8
  store i8 %5437, i8* %14, align 1
  %5438 = and i32 %5434, 255
  %5439 = tail call i32 @llvm.ctpop.i32(i32 %5438)
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = xor i8 %5441, 1
  store i8 %5442, i8* %21, align 1
  %5443 = xor i32 %5432, 16
  %5444 = xor i32 %5443, %5434
  %5445 = lshr i32 %5444, 4
  %5446 = trunc i32 %5445 to i8
  %5447 = and i8 %5446, 1
  store i8 %5447, i8* %27, align 1
  %5448 = icmp eq i32 %5434, 0
  %5449 = zext i1 %5448 to i8
  store i8 %5449, i8* %30, align 1
  %5450 = lshr i32 %5434, 31
  %5451 = trunc i32 %5450 to i8
  store i8 %5451, i8* %33, align 1
  %5452 = xor i32 %5450, %5433
  %5453 = add nuw nsw i32 %5452, %5433
  %5454 = icmp eq i32 %5453, 2
  %5455 = zext i1 %5454 to i8
  store i8 %5455, i8* %39, align 1
  %5456 = sext i32 %5434 to i64
  store i64 %5456, i64* %RCX.i2070, align 8
  %5457 = add nsw i64 %5456, 12099168
  %5458 = add i64 %5426, 20
  store i64 %5458, i64* %3, align 8
  %5459 = inttoptr i64 %5457 to i8*
  %5460 = load i8, i8* %5459, align 1
  %5461 = zext i8 %5460 to i64
  store i64 %5461, i64* %RAX.i2072, align 8
  %5462 = zext i8 %5460 to i32
  %5463 = add i64 %5427, -20
  %5464 = add i64 %5426, 23
  store i64 %5464, i64* %3, align 8
  %5465 = inttoptr i64 %5463 to i32*
  %5466 = load i32, i32* %5465, align 4
  %5467 = sub i32 %5462, %5466
  %5468 = icmp ult i32 %5462, %5466
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %14, align 1
  %5470 = and i32 %5467, 255
  %5471 = tail call i32 @llvm.ctpop.i32(i32 %5470)
  %5472 = trunc i32 %5471 to i8
  %5473 = and i8 %5472, 1
  %5474 = xor i8 %5473, 1
  store i8 %5474, i8* %21, align 1
  %5475 = xor i32 %5466, %5462
  %5476 = xor i32 %5475, %5467
  %5477 = lshr i32 %5476, 4
  %5478 = trunc i32 %5477 to i8
  %5479 = and i8 %5478, 1
  store i8 %5479, i8* %27, align 1
  %5480 = icmp eq i32 %5467, 0
  %5481 = zext i1 %5480 to i8
  store i8 %5481, i8* %30, align 1
  %5482 = lshr i32 %5467, 31
  %5483 = trunc i32 %5482 to i8
  store i8 %5483, i8* %33, align 1
  %5484 = lshr i32 %5466, 31
  %5485 = add nuw nsw i32 %5482, %5484
  %5486 = icmp eq i32 %5485, 2
  %5487 = zext i1 %5486 to i8
  store i8 %5487, i8* %39, align 1
  %.v75 = select i1 %5480, i64 29, i64 57
  %5488 = add i64 %5426, %.v75
  store i64 %5488, i64* %3, align 8
  br i1 %5480, label %block_40be25, label %block_.L_40be41

block_40be25:                                     ; preds = %block_.L_40be08
  %5489 = load i64, i64* %RBP.i, align 8
  %5490 = add i64 %5489, -4
  %5491 = add i64 %5488, 3
  store i64 %5491, i64* %3, align 8
  %5492 = inttoptr i64 %5490 to i32*
  %5493 = load i32, i32* %5492, align 4
  %5494 = add i32 %5493, 1
  %5495 = lshr i32 %5494, 31
  %5496 = add i32 %5493, -19
  %5497 = zext i32 %5496 to i64
  store i64 %5497, i64* %RAX.i2072, align 8
  %5498 = icmp ult i32 %5494, 20
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %14, align 1
  %5500 = and i32 %5496, 255
  %5501 = tail call i32 @llvm.ctpop.i32(i32 %5500)
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = xor i8 %5503, 1
  store i8 %5504, i8* %21, align 1
  %5505 = xor i32 %5494, 16
  %5506 = xor i32 %5505, %5496
  %5507 = lshr i32 %5506, 4
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  store i8 %5509, i8* %27, align 1
  %5510 = icmp eq i32 %5496, 0
  %5511 = zext i1 %5510 to i8
  store i8 %5511, i8* %30, align 1
  %5512 = lshr i32 %5496, 31
  %5513 = trunc i32 %5512 to i8
  store i8 %5513, i8* %33, align 1
  %5514 = xor i32 %5512, %5495
  %5515 = add nuw nsw i32 %5514, %5495
  %5516 = icmp eq i32 %5515, 2
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %39, align 1
  %5518 = sext i32 %5496 to i64
  store i64 %5518, i64* %RCX.i2070, align 8
  %5519 = shl nsw i64 %5518, 2
  %5520 = add nsw i64 %5519, 11187184
  %5521 = add i64 %5488, 19
  store i64 %5521, i64* %3, align 8
  %5522 = inttoptr i64 %5520 to i32*
  %5523 = load i32, i32* %5522, align 4
  %5524 = zext i32 %5523 to i64
  store i64 %5524, i64* %RAX.i2072, align 8
  %5525 = add i64 %5489, -8
  %5526 = add i64 %5488, 22
  store i64 %5526, i64* %3, align 8
  %5527 = inttoptr i64 %5525 to i32*
  %5528 = load i32, i32* %5527, align 4
  %5529 = sub i32 %5523, %5528
  %5530 = icmp ult i32 %5523, %5528
  %5531 = zext i1 %5530 to i8
  store i8 %5531, i8* %14, align 1
  %5532 = and i32 %5529, 255
  %5533 = tail call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  store i8 %5536, i8* %21, align 1
  %5537 = xor i32 %5528, %5523
  %5538 = xor i32 %5537, %5529
  %5539 = lshr i32 %5538, 4
  %5540 = trunc i32 %5539 to i8
  %5541 = and i8 %5540, 1
  store i8 %5541, i8* %27, align 1
  %5542 = icmp eq i32 %5529, 0
  %5543 = zext i1 %5542 to i8
  store i8 %5543, i8* %30, align 1
  %5544 = lshr i32 %5529, 31
  %5545 = trunc i32 %5544 to i8
  store i8 %5545, i8* %33, align 1
  %5546 = lshr i32 %5523, 31
  %5547 = lshr i32 %5528, 31
  %5548 = xor i32 %5547, %5546
  %5549 = xor i32 %5544, %5546
  %5550 = add nuw nsw i32 %5549, %5548
  %5551 = icmp eq i32 %5550, 2
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %39, align 1
  %.v77 = select i1 %5542, i64 160, i64 28
  %5553 = add i64 %5488, %.v77
  store i64 %5553, i64* %3, align 8
  br i1 %5542, label %block_.L_40bec5, label %block_.L_40be41

block_.L_40be41:                                  ; preds = %block_.L_40be08, %block_40be25
  %5554 = phi i64 [ %5553, %block_40be25 ], [ %5488, %block_.L_40be08 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %5555 = load i64, i64* %RBP.i, align 8
  %5556 = add i64 %5555, -8
  %5557 = add i64 %5554, 19
  store i64 %5557, i64* %3, align 8
  %5558 = inttoptr i64 %5556 to i32*
  %5559 = load i32, i32* %5558, align 4
  %5560 = sext i32 %5559 to i64
  %5561 = mul nsw i64 %5560, 744
  store i64 %5561, i64* %RCX.i2070, align 8
  %5562 = lshr i64 %5561, 63
  %5563 = add i64 %5561, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %5563, i64* %RAX.i2072, align 8
  %5564 = icmp ult i64 %5563, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5565 = icmp ult i64 %5563, %5561
  %5566 = or i1 %5564, %5565
  %5567 = zext i1 %5566 to i8
  store i8 %5567, i8* %14, align 1
  %5568 = trunc i64 %5563 to i32
  %5569 = and i32 %5568, 248
  %5570 = tail call i32 @llvm.ctpop.i32(i32 %5569)
  %5571 = trunc i32 %5570 to i8
  %5572 = and i8 %5571, 1
  %5573 = xor i8 %5572, 1
  store i8 %5573, i8* %21, align 1
  %5574 = xor i64 %5561, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5575 = xor i64 %5574, %5563
  %5576 = lshr i64 %5575, 4
  %5577 = trunc i64 %5576 to i8
  %5578 = and i8 %5577, 1
  store i8 %5578, i8* %27, align 1
  %5579 = icmp eq i64 %5563, 0
  %5580 = zext i1 %5579 to i8
  store i8 %5580, i8* %30, align 1
  %5581 = lshr i64 %5563, 63
  %5582 = trunc i64 %5581 to i8
  store i8 %5582, i8* %33, align 1
  %5583 = xor i64 %5581, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %5584 = xor i64 %5581, %5562
  %5585 = add nuw nsw i64 %5583, %5584
  %5586 = icmp eq i64 %5585, 2
  %5587 = zext i1 %5586 to i8
  store i8 %5587, i8* %39, align 1
  %5588 = add i64 %5561, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %5589 = add i64 %5554, 33
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5588 to i32*
  %5591 = load i32, i32* %5590, align 4
  %5592 = add i32 %5591, -20
  %5593 = icmp ult i32 %5591, 20
  %5594 = zext i1 %5593 to i8
  store i8 %5594, i8* %14, align 1
  %5595 = and i32 %5592, 255
  %5596 = tail call i32 @llvm.ctpop.i32(i32 %5595)
  %5597 = trunc i32 %5596 to i8
  %5598 = and i8 %5597, 1
  %5599 = xor i8 %5598, 1
  store i8 %5599, i8* %21, align 1
  %5600 = xor i32 %5591, 16
  %5601 = xor i32 %5600, %5592
  %5602 = lshr i32 %5601, 4
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  store i8 %5604, i8* %27, align 1
  %5605 = icmp eq i32 %5592, 0
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %30, align 1
  %5607 = lshr i32 %5592, 31
  %5608 = trunc i32 %5607 to i8
  store i8 %5608, i8* %33, align 1
  %5609 = lshr i32 %5591, 31
  %5610 = xor i32 %5607, %5609
  %5611 = add nuw nsw i32 %5610, %5609
  %5612 = icmp eq i32 %5611, 2
  %5613 = zext i1 %5612 to i8
  store i8 %5613, i8* %39, align 1
  %5614 = icmp ne i8 %5608, 0
  %5615 = xor i1 %5614, %5612
  %.v76 = select i1 %5615, i64 39, i64 94
  %5616 = add i64 %5554, %.v76
  store i64 %5616, i64* %3, align 8
  br i1 %5615, label %block_40be68, label %block_.L_40be9f

block_40be68:                                     ; preds = %block_.L_40be41
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %5617 = load i64, i64* %RBP.i, align 8
  %5618 = add i64 %5617, -4
  %5619 = add i64 %5616, 13
  store i64 %5619, i64* %3, align 8
  %5620 = inttoptr i64 %5618 to i32*
  %5621 = load i32, i32* %5620, align 4
  %5622 = add i32 %5621, 1
  %5623 = zext i32 %5622 to i64
  store i64 %5623, i64* %RCX.i2070, align 8
  %5624 = icmp eq i32 %5621, -1
  %5625 = icmp eq i32 %5622, 0
  %5626 = or i1 %5624, %5625
  %5627 = zext i1 %5626 to i8
  store i8 %5627, i8* %14, align 1
  %5628 = and i32 %5622, 255
  %5629 = tail call i32 @llvm.ctpop.i32(i32 %5628)
  %5630 = trunc i32 %5629 to i8
  %5631 = and i8 %5630, 1
  %5632 = xor i8 %5631, 1
  store i8 %5632, i8* %21, align 1
  %5633 = xor i32 %5622, %5621
  %5634 = lshr i32 %5633, 4
  %5635 = trunc i32 %5634 to i8
  %5636 = and i8 %5635, 1
  store i8 %5636, i8* %27, align 1
  %5637 = zext i1 %5625 to i8
  store i8 %5637, i8* %30, align 1
  %5638 = lshr i32 %5622, 31
  %5639 = trunc i32 %5638 to i8
  store i8 %5639, i8* %33, align 1
  %5640 = lshr i32 %5621, 31
  %5641 = xor i32 %5638, %5640
  %5642 = add nuw nsw i32 %5641, %5638
  %5643 = icmp eq i32 %5642, 2
  %5644 = zext i1 %5643 to i8
  store i8 %5644, i8* %39, align 1
  %5645 = add i64 %5617, -8
  %5646 = add i64 %5616, 20
  store i64 %5646, i64* %3, align 8
  %5647 = inttoptr i64 %5645 to i32*
  %5648 = load i32, i32* %5647, align 4
  %5649 = sext i32 %5648 to i64
  %5650 = mul nsw i64 %5649, 744
  store i64 %5650, i64* %RDX.i2068, align 8
  %5651 = lshr i64 %5650, 63
  %5652 = add i64 %5650, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %5652, i64* %RSI.i2055, align 8
  %5653 = icmp ult i64 %5652, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5654 = icmp ult i64 %5652, %5650
  %5655 = or i1 %5653, %5654
  %5656 = zext i1 %5655 to i8
  store i8 %5656, i8* %14, align 1
  %5657 = trunc i64 %5652 to i32
  %5658 = and i32 %5657, 248
  %5659 = tail call i32 @llvm.ctpop.i32(i32 %5658)
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  %5662 = xor i8 %5661, 1
  store i8 %5662, i8* %21, align 1
  %5663 = xor i64 %5650, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5664 = xor i64 %5663, %5652
  %5665 = lshr i64 %5664, 4
  %5666 = trunc i64 %5665 to i8
  %5667 = and i8 %5666, 1
  store i8 %5667, i8* %27, align 1
  %5668 = icmp eq i64 %5652, 0
  %5669 = zext i1 %5668 to i8
  store i8 %5669, i8* %30, align 1
  %5670 = lshr i64 %5652, 63
  %5671 = trunc i64 %5670 to i8
  store i8 %5671, i8* %33, align 1
  %5672 = xor i64 %5670, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %5673 = xor i64 %5670, %5651
  %5674 = add nuw nsw i64 %5672, %5673
  %5675 = icmp eq i64 %5674, 2
  %5676 = zext i1 %5675 to i8
  store i8 %5676, i8* %39, align 1
  %5677 = load i64, i64* %RBP.i, align 8
  %5678 = add i64 %5677, -8
  %5679 = add i64 %5616, 37
  store i64 %5679, i64* %3, align 8
  %5680 = inttoptr i64 %5678 to i32*
  %5681 = load i32, i32* %5680, align 4
  %5682 = sext i32 %5681 to i64
  %5683 = mul nsw i64 %5682, 744
  store i64 %5683, i64* %RDX.i2068, align 8
  %5684 = lshr i64 %5683, 63
  %5685 = load i64, i64* %RAX.i2072, align 8
  %5686 = add i64 %5683, %5685
  store i64 %5686, i64* %RAX.i2072, align 8
  %5687 = icmp ult i64 %5686, %5685
  %5688 = icmp ult i64 %5686, %5683
  %5689 = or i1 %5687, %5688
  %5690 = zext i1 %5689 to i8
  store i8 %5690, i8* %14, align 1
  %5691 = trunc i64 %5686 to i32
  %5692 = and i32 %5691, 255
  %5693 = tail call i32 @llvm.ctpop.i32(i32 %5692)
  %5694 = trunc i32 %5693 to i8
  %5695 = and i8 %5694, 1
  %5696 = xor i8 %5695, 1
  store i8 %5696, i8* %21, align 1
  %5697 = xor i64 %5683, %5685
  %5698 = xor i64 %5697, %5686
  %5699 = lshr i64 %5698, 4
  %5700 = trunc i64 %5699 to i8
  %5701 = and i8 %5700, 1
  store i8 %5701, i8* %27, align 1
  %5702 = icmp eq i64 %5686, 0
  %5703 = zext i1 %5702 to i8
  store i8 %5703, i8* %30, align 1
  %5704 = lshr i64 %5686, 63
  %5705 = trunc i64 %5704 to i8
  store i8 %5705, i8* %33, align 1
  %5706 = lshr i64 %5685, 63
  %5707 = xor i64 %5704, %5706
  %5708 = xor i64 %5704, %5684
  %5709 = add nuw nsw i64 %5707, %5708
  %5710 = icmp eq i64 %5709, 2
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %39, align 1
  %5712 = add i64 %5686, 12
  %5713 = add i64 %5616, 51
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5712 to i32*
  %5715 = load i32, i32* %5714, align 4
  %5716 = sext i32 %5715 to i64
  store i64 %5716, i64* %RAX.i2072, align 8
  %5717 = load i64, i64* %RSI.i2055, align 8
  %5718 = shl nsw i64 %5716, 2
  %5719 = add i64 %5717, 16
  %5720 = add i64 %5719, %5718
  %5721 = load i32, i32* %ECX.i1904, align 4
  %5722 = add i64 %5616, 55
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5720 to i32*
  store i32 %5721, i32* %5723, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_40be9f

block_.L_40be9f:                                  ; preds = %block_.L_40be41, %block_40be68
  %5724 = phi i64 [ %5616, %block_.L_40be41 ], [ %.pre59, %block_40be68 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %5725 = load i64, i64* %RBP.i, align 8
  %5726 = add i64 %5725, -8
  %5727 = add i64 %5724, 14
  store i64 %5727, i64* %3, align 8
  %5728 = inttoptr i64 %5726 to i32*
  %5729 = load i32, i32* %5728, align 4
  %5730 = sext i32 %5729 to i64
  %5731 = mul nsw i64 %5730, 744
  store i64 %5731, i64* %RCX.i2070, align 8
  %5732 = lshr i64 %5731, 63
  %5733 = add i64 %5731, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %5733, i64* %RAX.i2072, align 8
  %5734 = icmp ult i64 %5733, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5735 = icmp ult i64 %5733, %5731
  %5736 = or i1 %5734, %5735
  %5737 = zext i1 %5736 to i8
  store i8 %5737, i8* %14, align 1
  %5738 = trunc i64 %5733 to i32
  %5739 = and i32 %5738, 248
  %5740 = tail call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  store i8 %5743, i8* %21, align 1
  %5744 = xor i64 %5731, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5745 = xor i64 %5744, %5733
  %5746 = lshr i64 %5745, 4
  %5747 = trunc i64 %5746 to i8
  %5748 = and i8 %5747, 1
  store i8 %5748, i8* %27, align 1
  %5749 = icmp eq i64 %5733, 0
  %5750 = zext i1 %5749 to i8
  store i8 %5750, i8* %30, align 1
  %5751 = lshr i64 %5733, 63
  %5752 = trunc i64 %5751 to i8
  store i8 %5752, i8* %33, align 1
  %5753 = xor i64 %5751, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %5754 = xor i64 %5751, %5732
  %5755 = add nuw nsw i64 %5753, %5754
  %5756 = icmp eq i64 %5755, 2
  %5757 = zext i1 %5756 to i8
  store i8 %5757, i8* %39, align 1
  %5758 = add i64 %5731, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %5759 = add i64 %5724, 27
  store i64 %5759, i64* %3, align 8
  %5760 = inttoptr i64 %5758 to i32*
  %5761 = load i32, i32* %5760, align 4
  %5762 = add i32 %5761, 1
  %5763 = zext i32 %5762 to i64
  store i64 %5763, i64* %RDX.i2068, align 8
  %5764 = icmp eq i32 %5761, -1
  %5765 = icmp eq i32 %5762, 0
  %5766 = or i1 %5764, %5765
  %5767 = zext i1 %5766 to i8
  store i8 %5767, i8* %14, align 1
  %5768 = and i32 %5762, 255
  %5769 = tail call i32 @llvm.ctpop.i32(i32 %5768)
  %5770 = trunc i32 %5769 to i8
  %5771 = and i8 %5770, 1
  %5772 = xor i8 %5771, 1
  store i8 %5772, i8* %21, align 1
  %5773 = xor i32 %5762, %5761
  %5774 = lshr i32 %5773, 4
  %5775 = trunc i32 %5774 to i8
  %5776 = and i8 %5775, 1
  store i8 %5776, i8* %27, align 1
  %5777 = zext i1 %5765 to i8
  store i8 %5777, i8* %30, align 1
  %5778 = lshr i32 %5762, 31
  %5779 = trunc i32 %5778 to i8
  store i8 %5779, i8* %33, align 1
  %5780 = lshr i32 %5761, 31
  %5781 = xor i32 %5778, %5780
  %5782 = add nuw nsw i32 %5781, %5778
  %5783 = icmp eq i32 %5782, 2
  %5784 = zext i1 %5783 to i8
  store i8 %5784, i8* %39, align 1
  %5785 = add i64 %5724, 33
  store i64 %5785, i64* %3, align 8
  store i32 %5762, i32* %5760, align 4
  %5786 = load i64, i64* %3, align 8
  %5787 = add i64 %5786, 5
  store i64 %5787, i64* %3, align 8
  br label %block_.L_40bec5

block_.L_40bec5:                                  ; preds = %block_40bd8c, %block_.L_40be9f, %block_40be25, %block_40bdec, %block_40bdb3
  %5788 = phi i64 [ %5787, %block_.L_40be9f ], [ %5553, %block_40be25 ], [ %5425, %block_40bdec ], [ %5297, %block_40bdb3 ], [ %5173, %block_40bd8c ]
  %5789 = add i64 %5788, 413
  br label %block_.L_40c062

block_.L_40beca:                                  ; preds = %block_.L_40bd72
  %5790 = add i64 %5159, 3
  store i64 %5790, i64* %3, align 8
  %5791 = load i32, i32* %5121, align 4
  %5792 = add i32 %5791, 1
  %5793 = zext i32 %5792 to i64
  store i64 %5793, i64* %RAX.i2072, align 8
  %5794 = icmp eq i32 %5791, -1
  %5795 = icmp eq i32 %5792, 0
  %5796 = or i1 %5794, %5795
  %5797 = zext i1 %5796 to i8
  store i8 %5797, i8* %14, align 1
  %5798 = and i32 %5792, 255
  %5799 = tail call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  store i8 %5802, i8* %21, align 1
  %5803 = xor i32 %5792, %5791
  %5804 = lshr i32 %5803, 4
  %5805 = trunc i32 %5804 to i8
  %5806 = and i8 %5805, 1
  store i8 %5806, i8* %27, align 1
  %5807 = zext i1 %5795 to i8
  store i8 %5807, i8* %30, align 1
  %5808 = lshr i32 %5792, 31
  %5809 = trunc i32 %5808 to i8
  store i8 %5809, i8* %33, align 1
  %5810 = lshr i32 %5791, 31
  %5811 = xor i32 %5808, %5810
  %5812 = add nuw nsw i32 %5811, %5808
  %5813 = icmp eq i32 %5812, 2
  %5814 = zext i1 %5813 to i8
  store i8 %5814, i8* %39, align 1
  %5815 = sext i32 %5792 to i64
  store i64 %5815, i64* %RCX.i2070, align 8
  %5816 = add nsw i64 %5815, 12099168
  %5817 = add i64 %5159, 17
  store i64 %5817, i64* %3, align 8
  %5818 = inttoptr i64 %5816 to i8*
  %5819 = load i8, i8* %5818, align 1
  %5820 = zext i8 %5819 to i64
  store i64 %5820, i64* %RAX.i2072, align 8
  %5821 = zext i8 %5819 to i32
  %5822 = add i64 %5118, -24
  %5823 = add i64 %5159, 20
  store i64 %5823, i64* %3, align 8
  %5824 = inttoptr i64 %5822 to i32*
  %5825 = load i32, i32* %5824, align 4
  %5826 = sub i32 %5821, %5825
  %5827 = icmp ult i32 %5821, %5825
  %5828 = zext i1 %5827 to i8
  store i8 %5828, i8* %14, align 1
  %5829 = and i32 %5826, 255
  %5830 = tail call i32 @llvm.ctpop.i32(i32 %5829)
  %5831 = trunc i32 %5830 to i8
  %5832 = and i8 %5831, 1
  %5833 = xor i8 %5832, 1
  store i8 %5833, i8* %21, align 1
  %5834 = xor i32 %5825, %5821
  %5835 = xor i32 %5834, %5826
  %5836 = lshr i32 %5835, 4
  %5837 = trunc i32 %5836 to i8
  %5838 = and i8 %5837, 1
  store i8 %5838, i8* %27, align 1
  %5839 = icmp eq i32 %5826, 0
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %30, align 1
  %5841 = lshr i32 %5826, 31
  %5842 = trunc i32 %5841 to i8
  store i8 %5842, i8* %33, align 1
  %5843 = lshr i32 %5825, 31
  %5844 = add nuw nsw i32 %5841, %5843
  %5845 = icmp eq i32 %5844, 2
  %5846 = zext i1 %5845 to i8
  store i8 %5846, i8* %39, align 1
  %.v70 = select i1 %5839, i64 26, i64 403
  %5847 = add i64 %5159, %.v70
  store i64 %5847, i64* %3, align 8
  br i1 %5839, label %block_40bee4, label %block_.L_40c05d

block_40bee4:                                     ; preds = %block_.L_40beca
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %5848 = add i64 %5847, 13
  store i64 %5848, i64* %3, align 8
  %5849 = load i32, i32* %5121, align 4
  %5850 = add i32 %5849, 1
  %5851 = zext i32 %5850 to i64
  store i64 %5851, i64* %RCX.i2070, align 8
  %5852 = icmp eq i32 %5849, -1
  %5853 = icmp eq i32 %5850, 0
  %5854 = or i1 %5852, %5853
  %5855 = zext i1 %5854 to i8
  store i8 %5855, i8* %14, align 1
  %5856 = and i32 %5850, 255
  %5857 = tail call i32 @llvm.ctpop.i32(i32 %5856)
  %5858 = trunc i32 %5857 to i8
  %5859 = and i8 %5858, 1
  %5860 = xor i8 %5859, 1
  store i8 %5860, i8* %21, align 1
  %5861 = xor i32 %5850, %5849
  %5862 = lshr i32 %5861, 4
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  store i8 %5864, i8* %27, align 1
  %5865 = zext i1 %5853 to i8
  store i8 %5865, i8* %30, align 1
  %5866 = lshr i32 %5850, 31
  %5867 = trunc i32 %5866 to i8
  store i8 %5867, i8* %33, align 1
  %5868 = lshr i32 %5849, 31
  %5869 = xor i32 %5866, %5868
  %5870 = add nuw nsw i32 %5869, %5866
  %5871 = icmp eq i32 %5870, 2
  %5872 = zext i1 %5871 to i8
  store i8 %5872, i8* %39, align 1
  %5873 = sext i32 %5850 to i64
  store i64 %5873, i64* %RDX.i2068, align 8
  %5874 = shl nsw i64 %5873, 2
  %5875 = add nsw i64 %5874, 11187184
  %5876 = add i64 %5847, 27
  store i64 %5876, i64* %3, align 8
  %5877 = inttoptr i64 %5875 to i32*
  %5878 = load i32, i32* %5877, align 4
  %5879 = sext i32 %5878 to i64
  %5880 = mul nsw i64 %5879, 744
  store i64 %5880, i64* %RDX.i2068, align 8
  %5881 = lshr i64 %5880, 63
  %5882 = add i64 %5880, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %5882, i64* %RAX.i2072, align 8
  %5883 = icmp ult i64 %5882, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5884 = icmp ult i64 %5882, %5880
  %5885 = or i1 %5883, %5884
  %5886 = zext i1 %5885 to i8
  store i8 %5886, i8* %14, align 1
  %5887 = trunc i64 %5882 to i32
  %5888 = and i32 %5887, 248
  %5889 = tail call i32 @llvm.ctpop.i32(i32 %5888)
  %5890 = trunc i32 %5889 to i8
  %5891 = and i8 %5890, 1
  %5892 = xor i8 %5891, 1
  store i8 %5892, i8* %21, align 1
  %5893 = xor i64 %5880, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5894 = xor i64 %5893, %5882
  %5895 = lshr i64 %5894, 4
  %5896 = trunc i64 %5895 to i8
  %5897 = and i8 %5896, 1
  store i8 %5897, i8* %27, align 1
  %5898 = icmp eq i64 %5882, 0
  %5899 = zext i1 %5898 to i8
  store i8 %5899, i8* %30, align 1
  %5900 = lshr i64 %5882, 63
  %5901 = trunc i64 %5900 to i8
  store i8 %5901, i8* %33, align 1
  %5902 = xor i64 %5900, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %5903 = xor i64 %5900, %5881
  %5904 = add nuw nsw i64 %5902, %5903
  %5905 = icmp eq i64 %5904, 2
  %5906 = zext i1 %5905 to i8
  store i8 %5906, i8* %39, align 1
  %5907 = add i64 %5880, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %5908 = add i64 %5847, 43
  store i64 %5908, i64* %3, align 8
  %5909 = inttoptr i64 %5907 to i32*
  %5910 = load i32, i32* %5909, align 4
  %5911 = zext i32 %5910 to i64
  store i64 %5911, i64* %RCX.i2070, align 8
  %5912 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %5913 = sub i32 %5910, %5912
  %5914 = icmp ult i32 %5910, %5912
  %5915 = zext i1 %5914 to i8
  store i8 %5915, i8* %14, align 1
  %5916 = and i32 %5913, 255
  %5917 = tail call i32 @llvm.ctpop.i32(i32 %5916)
  %5918 = trunc i32 %5917 to i8
  %5919 = and i8 %5918, 1
  %5920 = xor i8 %5919, 1
  store i8 %5920, i8* %21, align 1
  %5921 = xor i32 %5912, %5910
  %5922 = xor i32 %5921, %5913
  %5923 = lshr i32 %5922, 4
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  store i8 %5925, i8* %27, align 1
  %5926 = icmp eq i32 %5913, 0
  %5927 = zext i1 %5926 to i8
  store i8 %5927, i8* %30, align 1
  %5928 = lshr i32 %5913, 31
  %5929 = trunc i32 %5928 to i8
  store i8 %5929, i8* %33, align 1
  %5930 = lshr i32 %5910, 31
  %5931 = lshr i32 %5912, 31
  %5932 = xor i32 %5931, %5930
  %5933 = xor i32 %5928, %5930
  %5934 = add nuw nsw i32 %5933, %5932
  %5935 = icmp eq i32 %5934, 2
  %5936 = zext i1 %5935 to i8
  store i8 %5936, i8* %39, align 1
  %.v71 = select i1 %5926, i64 377, i64 56
  %5937 = add i64 %5847, %.v71
  store i64 %5937, i64* %3, align 8
  br i1 %5926, label %block_.L_40c05d, label %block_40bf1c

block_40bf1c:                                     ; preds = %block_40bee4
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2072, align 8
  %5938 = load i64, i64* %RBP.i, align 8
  %5939 = add i64 %5938, -4
  %5940 = add i64 %5937, 13
  store i64 %5940, i64* %3, align 8
  %5941 = inttoptr i64 %5939 to i32*
  %5942 = load i32, i32* %5941, align 4
  %5943 = add i32 %5942, 1
  %5944 = zext i32 %5943 to i64
  store i64 %5944, i64* %RCX.i2070, align 8
  %5945 = icmp eq i32 %5942, -1
  %5946 = icmp eq i32 %5943, 0
  %5947 = or i1 %5945, %5946
  %5948 = zext i1 %5947 to i8
  store i8 %5948, i8* %14, align 1
  %5949 = and i32 %5943, 255
  %5950 = tail call i32 @llvm.ctpop.i32(i32 %5949)
  %5951 = trunc i32 %5950 to i8
  %5952 = and i8 %5951, 1
  %5953 = xor i8 %5952, 1
  store i8 %5953, i8* %21, align 1
  %5954 = xor i32 %5943, %5942
  %5955 = lshr i32 %5954, 4
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  store i8 %5957, i8* %27, align 1
  %5958 = zext i1 %5946 to i8
  store i8 %5958, i8* %30, align 1
  %5959 = lshr i32 %5943, 31
  %5960 = trunc i32 %5959 to i8
  store i8 %5960, i8* %33, align 1
  %5961 = lshr i32 %5942, 31
  %5962 = xor i32 %5959, %5961
  %5963 = add nuw nsw i32 %5962, %5959
  %5964 = icmp eq i32 %5963, 2
  %5965 = zext i1 %5964 to i8
  store i8 %5965, i8* %39, align 1
  %5966 = sext i32 %5943 to i64
  store i64 %5966, i64* %RDX.i2068, align 8
  %5967 = shl nsw i64 %5966, 2
  %5968 = add nsw i64 %5967, 11187184
  %5969 = add i64 %5937, 26
  store i64 %5969, i64* %3, align 8
  %5970 = inttoptr i64 %5968 to i32*
  %5971 = load i32, i32* %5970, align 4
  %5972 = zext i32 %5971 to i64
  store i64 %5972, i64* %RCX.i2070, align 8
  %5973 = add i64 %5938, -44
  %5974 = add i64 %5937, 29
  store i64 %5974, i64* %3, align 8
  %5975 = inttoptr i64 %5973 to i32*
  store i32 %5971, i32* %5975, align 4
  %5976 = load i64, i64* %RBP.i, align 8
  %5977 = add i64 %5976, -8
  %5978 = load i64, i64* %3, align 8
  %5979 = add i64 %5978, 4
  store i64 %5979, i64* %3, align 8
  %5980 = inttoptr i64 %5977 to i32*
  %5981 = load i32, i32* %5980, align 4
  %5982 = sext i32 %5981 to i64
  %5983 = mul nsw i64 %5982, 744
  %5984 = load i64, i64* %RAX.i2072, align 8
  %5985 = add i64 %5983, %5984
  %5986 = lshr i64 %5985, 63
  %5987 = add i64 %5985, 96
  store i64 %5987, i64* %RSI.i2055, align 8
  %5988 = icmp ugt i64 %5985, -97
  %5989 = zext i1 %5988 to i8
  store i8 %5989, i8* %14, align 1
  %5990 = trunc i64 %5987 to i32
  %5991 = and i32 %5990, 255
  %5992 = tail call i32 @llvm.ctpop.i32(i32 %5991)
  %5993 = trunc i32 %5992 to i8
  %5994 = and i8 %5993, 1
  %5995 = xor i8 %5994, 1
  store i8 %5995, i8* %21, align 1
  %5996 = xor i64 %5987, %5985
  %5997 = lshr i64 %5996, 4
  %5998 = trunc i64 %5997 to i8
  %5999 = and i8 %5998, 1
  store i8 %5999, i8* %27, align 1
  %6000 = icmp eq i64 %5987, 0
  %6001 = zext i1 %6000 to i8
  store i8 %6001, i8* %30, align 1
  %6002 = lshr i64 %5987, 63
  %6003 = trunc i64 %6002 to i8
  store i8 %6003, i8* %33, align 1
  %6004 = xor i64 %6002, %5986
  %6005 = add nuw nsw i64 %6004, %6002
  %6006 = icmp eq i64 %6005, 2
  %6007 = zext i1 %6006 to i8
  store i8 %6007, i8* %39, align 1
  %6008 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %6008, i64* %RDX.i2068, align 8
  %6009 = add i64 %5978, 32
  store i64 %6009, i64* %3, align 8
  %6010 = inttoptr i64 %6008 to i64*
  store i64 %5987, i64* %6010, align 8
  %6011 = load i64, i64* %RBP.i, align 8
  %6012 = add i64 %6011, -8
  %6013 = load i64, i64* %3, align 8
  %6014 = add i64 %6013, 4
  store i64 %6014, i64* %3, align 8
  %6015 = inttoptr i64 %6012 to i32*
  %6016 = load i32, i32* %6015, align 4
  %6017 = sext i32 %6016 to i64
  %6018 = mul nsw i64 %6017, 744
  store i64 %6018, i64* %RDX.i2068, align 8
  %6019 = lshr i64 %6018, 63
  %6020 = load i64, i64* %RAX.i2072, align 8
  %6021 = add i64 %6018, %6020
  store i64 %6021, i64* %RSI.i2055, align 8
  %6022 = icmp ult i64 %6021, %6020
  %6023 = icmp ult i64 %6021, %6018
  %6024 = or i1 %6022, %6023
  %6025 = zext i1 %6024 to i8
  store i8 %6025, i8* %14, align 1
  %6026 = trunc i64 %6021 to i32
  %6027 = and i32 %6026, 255
  %6028 = tail call i32 @llvm.ctpop.i32(i32 %6027)
  %6029 = trunc i32 %6028 to i8
  %6030 = and i8 %6029, 1
  %6031 = xor i8 %6030, 1
  store i8 %6031, i8* %21, align 1
  %6032 = xor i64 %6018, %6020
  %6033 = xor i64 %6032, %6021
  %6034 = lshr i64 %6033, 4
  %6035 = trunc i64 %6034 to i8
  %6036 = and i8 %6035, 1
  store i8 %6036, i8* %27, align 1
  %6037 = icmp eq i64 %6021, 0
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %30, align 1
  %6039 = lshr i64 %6021, 63
  %6040 = trunc i64 %6039 to i8
  store i8 %6040, i8* %33, align 1
  %6041 = lshr i64 %6020, 63
  %6042 = xor i64 %6039, %6041
  %6043 = xor i64 %6039, %6019
  %6044 = add nuw nsw i64 %6042, %6043
  %6045 = icmp eq i64 %6044, 2
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %39, align 1
  %6047 = add i64 %6021, 96
  %6048 = add i64 %6013, 20
  store i64 %6048, i64* %3, align 8
  %6049 = inttoptr i64 %6047 to i32*
  %6050 = load i32, i32* %6049, align 4
  %6051 = zext i32 %6050 to i64
  store i64 %6051, i64* %RCX.i2070, align 8
  %6052 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %6052, i64* %RDX.i2068, align 8
  %6053 = add i64 %6052, 16
  store i64 %6053, i64* %RSI.i2055, align 8
  %6054 = icmp ugt i64 %6052, -17
  %6055 = zext i1 %6054 to i8
  store i8 %6055, i8* %14, align 1
  %6056 = trunc i64 %6053 to i32
  %6057 = and i32 %6056, 255
  %6058 = tail call i32 @llvm.ctpop.i32(i32 %6057)
  %6059 = trunc i32 %6058 to i8
  %6060 = and i8 %6059, 1
  %6061 = xor i8 %6060, 1
  store i8 %6061, i8* %21, align 1
  %6062 = xor i64 %6052, 16
  %6063 = xor i64 %6062, %6053
  %6064 = lshr i64 %6063, 4
  %6065 = trunc i64 %6064 to i8
  %6066 = and i8 %6065, 1
  store i8 %6066, i8* %27, align 1
  %6067 = icmp eq i64 %6053, 0
  %6068 = zext i1 %6067 to i8
  store i8 %6068, i8* %30, align 1
  %6069 = lshr i64 %6053, 63
  %6070 = trunc i64 %6069 to i8
  store i8 %6070, i8* %33, align 1
  %6071 = lshr i64 %6052, 63
  %6072 = xor i64 %6069, %6071
  %6073 = add nuw nsw i64 %6072, %6069
  %6074 = icmp eq i64 %6073, 2
  %6075 = zext i1 %6074 to i8
  store i8 %6075, i8* %39, align 1
  store i64 %6053, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %6076 = add i64 %6052, 8
  %6077 = add i64 %6013, 46
  store i64 %6077, i64* %3, align 8
  %6078 = inttoptr i64 %6076 to i32*
  store i32 %6050, i32* %6078, align 4
  %6079 = load i64, i64* %RBP.i, align 8
  %6080 = add i64 %6079, -4
  %6081 = load i64, i64* %3, align 8
  %6082 = add i64 %6081, 3
  store i64 %6082, i64* %3, align 8
  %6083 = inttoptr i64 %6080 to i32*
  %6084 = load i32, i32* %6083, align 4
  %6085 = add i32 %6084, 1
  %6086 = zext i32 %6085 to i64
  store i64 %6086, i64* %RCX.i2070, align 8
  %6087 = icmp eq i32 %6084, -1
  %6088 = icmp eq i32 %6085, 0
  %6089 = or i1 %6087, %6088
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %14, align 1
  %6091 = and i32 %6085, 255
  %6092 = tail call i32 @llvm.ctpop.i32(i32 %6091)
  %6093 = trunc i32 %6092 to i8
  %6094 = and i8 %6093, 1
  %6095 = xor i8 %6094, 1
  store i8 %6095, i8* %21, align 1
  %6096 = xor i32 %6085, %6084
  %6097 = lshr i32 %6096, 4
  %6098 = trunc i32 %6097 to i8
  %6099 = and i8 %6098, 1
  store i8 %6099, i8* %27, align 1
  %6100 = zext i1 %6088 to i8
  store i8 %6100, i8* %30, align 1
  %6101 = lshr i32 %6085, 31
  %6102 = trunc i32 %6101 to i8
  store i8 %6102, i8* %33, align 1
  %6103 = lshr i32 %6084, 31
  %6104 = xor i32 %6101, %6103
  %6105 = add nuw nsw i32 %6104, %6101
  %6106 = icmp eq i32 %6105, 2
  %6107 = zext i1 %6106 to i8
  store i8 %6107, i8* %39, align 1
  %6108 = sext i32 %6085 to i64
  store i64 %6108, i64* %RDX.i2068, align 8
  %6109 = shl nsw i64 %6108, 2
  %6110 = add nsw i64 %6109, 11187184
  %6111 = add i64 %6081, 16
  store i64 %6111, i64* %3, align 8
  %6112 = inttoptr i64 %6110 to i32*
  %6113 = load i32, i32* %6112, align 4
  %6114 = zext i32 %6113 to i64
  store i64 %6114, i64* %RCX.i2070, align 8
  %6115 = add i64 %6079, -8
  %6116 = add i64 %6081, 20
  store i64 %6116, i64* %3, align 8
  %6117 = inttoptr i64 %6115 to i32*
  %6118 = load i32, i32* %6117, align 4
  %6119 = sext i32 %6118 to i64
  %6120 = mul nsw i64 %6119, 744
  store i64 %6120, i64* %RDX.i2068, align 8
  %6121 = lshr i64 %6120, 63
  %6122 = load i64, i64* %RAX.i2072, align 8
  %6123 = add i64 %6120, %6122
  store i64 %6123, i64* %RSI.i2055, align 8
  %6124 = icmp ult i64 %6123, %6122
  %6125 = icmp ult i64 %6123, %6120
  %6126 = or i1 %6124, %6125
  %6127 = zext i1 %6126 to i8
  store i8 %6127, i8* %14, align 1
  %6128 = trunc i64 %6123 to i32
  %6129 = and i32 %6128, 255
  %6130 = tail call i32 @llvm.ctpop.i32(i32 %6129)
  %6131 = trunc i32 %6130 to i8
  %6132 = and i8 %6131, 1
  %6133 = xor i8 %6132, 1
  store i8 %6133, i8* %21, align 1
  %6134 = xor i64 %6120, %6122
  %6135 = xor i64 %6134, %6123
  %6136 = lshr i64 %6135, 4
  %6137 = trunc i64 %6136 to i8
  %6138 = and i8 %6137, 1
  store i8 %6138, i8* %27, align 1
  %6139 = icmp eq i64 %6123, 0
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %30, align 1
  %6141 = lshr i64 %6123, 63
  %6142 = trunc i64 %6141 to i8
  store i8 %6142, i8* %33, align 1
  %6143 = lshr i64 %6122, 63
  %6144 = xor i64 %6141, %6143
  %6145 = xor i64 %6141, %6121
  %6146 = add nuw nsw i64 %6144, %6145
  %6147 = icmp eq i64 %6146, 2
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %39, align 1
  %6149 = load i64, i64* %RBP.i, align 8
  %6150 = add i64 %6149, -8
  %6151 = add i64 %6081, 37
  store i64 %6151, i64* %3, align 8
  %6152 = inttoptr i64 %6150 to i32*
  %6153 = load i32, i32* %6152, align 4
  %6154 = sext i32 %6153 to i64
  %6155 = mul nsw i64 %6154, 744
  store i64 %6155, i64* %RDX.i2068, align 8
  %6156 = lshr i64 %6155, 63
  %6157 = add i64 %6155, %6122
  store i64 %6157, i64* %RDI.i1820, align 8
  %6158 = icmp ult i64 %6157, %6122
  %6159 = icmp ult i64 %6157, %6155
  %6160 = or i1 %6158, %6159
  %6161 = zext i1 %6160 to i8
  store i8 %6161, i8* %14, align 1
  %6162 = trunc i64 %6157 to i32
  %6163 = and i32 %6162, 255
  %6164 = tail call i32 @llvm.ctpop.i32(i32 %6163)
  %6165 = trunc i32 %6164 to i8
  %6166 = and i8 %6165, 1
  %6167 = xor i8 %6166, 1
  store i8 %6167, i8* %21, align 1
  %6168 = xor i64 %6155, %6122
  %6169 = xor i64 %6168, %6157
  %6170 = lshr i64 %6169, 4
  %6171 = trunc i64 %6170 to i8
  %6172 = and i8 %6171, 1
  store i8 %6172, i8* %27, align 1
  %6173 = icmp eq i64 %6157, 0
  %6174 = zext i1 %6173 to i8
  store i8 %6174, i8* %30, align 1
  %6175 = lshr i64 %6157, 63
  %6176 = trunc i64 %6175 to i8
  store i8 %6176, i8* %33, align 1
  %6177 = xor i64 %6175, %6143
  %6178 = xor i64 %6175, %6156
  %6179 = add nuw nsw i64 %6177, %6178
  %6180 = icmp eq i64 %6179, 2
  %6181 = zext i1 %6180 to i8
  store i8 %6181, i8* %39, align 1
  %R8D.i101 = bitcast %union.anon* %58 to i32*
  %6182 = add i64 %6157, 96
  %6183 = add i64 %6081, 54
  store i64 %6183, i64* %3, align 8
  %6184 = inttoptr i64 %6182 to i32*
  %6185 = load i32, i32* %6184, align 4
  %6186 = zext i32 %6185 to i64
  store i64 %6186, i64* %R8.i2059, align 8
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6188 = add i32 %6185, 1
  %6189 = zext i32 %6188 to i64
  store i64 %6189, i64* %6187, align 8
  %6190 = icmp eq i32 %6185, -1
  %6191 = icmp eq i32 %6188, 0
  %6192 = or i1 %6190, %6191
  %6193 = zext i1 %6192 to i8
  store i8 %6193, i8* %14, align 1
  %6194 = and i32 %6188, 255
  %6195 = tail call i32 @llvm.ctpop.i32(i32 %6194)
  %6196 = trunc i32 %6195 to i8
  %6197 = and i8 %6196, 1
  %6198 = xor i8 %6197, 1
  store i8 %6198, i8* %21, align 1
  %6199 = xor i32 %6188, %6185
  %6200 = lshr i32 %6199, 4
  %6201 = trunc i32 %6200 to i8
  %6202 = and i8 %6201, 1
  store i8 %6202, i8* %27, align 1
  %6203 = zext i1 %6191 to i8
  store i8 %6203, i8* %30, align 1
  %6204 = lshr i32 %6188, 31
  %6205 = trunc i32 %6204 to i8
  store i8 %6205, i8* %33, align 1
  %6206 = lshr i32 %6185, 31
  %6207 = xor i32 %6204, %6206
  %6208 = add nuw nsw i32 %6207, %6204
  %6209 = icmp eq i32 %6208, 2
  %6210 = zext i1 %6209 to i8
  store i8 %6210, i8* %39, align 1
  %6211 = add i64 %6081, 65
  store i64 %6211, i64* %3, align 8
  store i32 %6188, i32* %6184, align 4
  %6212 = load i32, i32* %R8D.i101, align 4
  %6213 = load i64, i64* %3, align 8
  %6214 = sext i32 %6212 to i64
  store i64 %6214, i64* %RDX.i2068, align 8
  %6215 = load i64, i64* %RSI.i2055, align 8
  %6216 = shl nsw i64 %6214, 2
  %6217 = add nsw i64 %6216, 100
  %6218 = add i64 %6217, %6215
  %6219 = load i32, i32* %ECX.i1904, align 4
  %6220 = add i64 %6213, 7
  store i64 %6220, i64* %3, align 8
  %6221 = inttoptr i64 %6218 to i32*
  store i32 %6219, i32* %6221, align 4
  %6222 = load i64, i64* %RBP.i, align 8
  %6223 = add i64 %6222, -44
  %6224 = load i64, i64* %3, align 8
  %6225 = add i64 %6224, 4
  store i64 %6225, i64* %3, align 8
  %6226 = inttoptr i64 %6223 to i32*
  %6227 = load i32, i32* %6226, align 4
  %6228 = sext i32 %6227 to i64
  %6229 = mul nsw i64 %6228, 744
  %6230 = load i64, i64* %RAX.i2072, align 8
  %6231 = add i64 %6229, %6230
  %6232 = lshr i64 %6231, 63
  %6233 = add i64 %6231, 96
  store i64 %6233, i64* %RSI.i2055, align 8
  %6234 = icmp ugt i64 %6231, -97
  %6235 = zext i1 %6234 to i8
  store i8 %6235, i8* %14, align 1
  %6236 = trunc i64 %6233 to i32
  %6237 = and i32 %6236, 255
  %6238 = tail call i32 @llvm.ctpop.i32(i32 %6237)
  %6239 = trunc i32 %6238 to i8
  %6240 = and i8 %6239, 1
  %6241 = xor i8 %6240, 1
  store i8 %6241, i8* %21, align 1
  %6242 = xor i64 %6233, %6231
  %6243 = lshr i64 %6242, 4
  %6244 = trunc i64 %6243 to i8
  %6245 = and i8 %6244, 1
  store i8 %6245, i8* %27, align 1
  %6246 = icmp eq i64 %6233, 0
  %6247 = zext i1 %6246 to i8
  store i8 %6247, i8* %30, align 1
  %6248 = lshr i64 %6233, 63
  %6249 = trunc i64 %6248 to i8
  store i8 %6249, i8* %33, align 1
  %6250 = xor i64 %6248, %6232
  %6251 = add nuw nsw i64 %6250, %6248
  %6252 = icmp eq i64 %6251, 2
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %39, align 1
  %6254 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %6254, i64* %RDX.i2068, align 8
  %6255 = add i64 %6224, 32
  store i64 %6255, i64* %3, align 8
  %6256 = inttoptr i64 %6254 to i64*
  store i64 %6233, i64* %6256, align 8
  %6257 = load i64, i64* %RBP.i, align 8
  %6258 = add i64 %6257, -44
  %6259 = load i64, i64* %3, align 8
  %6260 = add i64 %6259, 4
  store i64 %6260, i64* %3, align 8
  %6261 = inttoptr i64 %6258 to i32*
  %6262 = load i32, i32* %6261, align 4
  %6263 = sext i32 %6262 to i64
  %6264 = mul nsw i64 %6263, 744
  store i64 %6264, i64* %RDX.i2068, align 8
  %6265 = lshr i64 %6264, 63
  %6266 = load i64, i64* %RAX.i2072, align 8
  %6267 = add i64 %6264, %6266
  store i64 %6267, i64* %RSI.i2055, align 8
  %6268 = icmp ult i64 %6267, %6266
  %6269 = icmp ult i64 %6267, %6264
  %6270 = or i1 %6268, %6269
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %14, align 1
  %6272 = trunc i64 %6267 to i32
  %6273 = and i32 %6272, 255
  %6274 = tail call i32 @llvm.ctpop.i32(i32 %6273)
  %6275 = trunc i32 %6274 to i8
  %6276 = and i8 %6275, 1
  %6277 = xor i8 %6276, 1
  store i8 %6277, i8* %21, align 1
  %6278 = xor i64 %6264, %6266
  %6279 = xor i64 %6278, %6267
  %6280 = lshr i64 %6279, 4
  %6281 = trunc i64 %6280 to i8
  %6282 = and i8 %6281, 1
  store i8 %6282, i8* %27, align 1
  %6283 = icmp eq i64 %6267, 0
  %6284 = zext i1 %6283 to i8
  store i8 %6284, i8* %30, align 1
  %6285 = lshr i64 %6267, 63
  %6286 = trunc i64 %6285 to i8
  store i8 %6286, i8* %33, align 1
  %6287 = lshr i64 %6266, 63
  %6288 = xor i64 %6285, %6287
  %6289 = xor i64 %6285, %6265
  %6290 = add nuw nsw i64 %6288, %6289
  %6291 = icmp eq i64 %6290, 2
  %6292 = zext i1 %6291 to i8
  store i8 %6292, i8* %39, align 1
  %6293 = add i64 %6267, 96
  %6294 = add i64 %6259, 20
  store i64 %6294, i64* %3, align 8
  %6295 = inttoptr i64 %6293 to i32*
  %6296 = load i32, i32* %6295, align 4
  %6297 = zext i32 %6296 to i64
  store i64 %6297, i64* %RCX.i2070, align 8
  %6298 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %6298, i64* %RDX.i2068, align 8
  %6299 = add i64 %6298, 16
  store i64 %6299, i64* %RSI.i2055, align 8
  %6300 = icmp ugt i64 %6298, -17
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %14, align 1
  %6302 = trunc i64 %6299 to i32
  %6303 = and i32 %6302, 255
  %6304 = tail call i32 @llvm.ctpop.i32(i32 %6303)
  %6305 = trunc i32 %6304 to i8
  %6306 = and i8 %6305, 1
  %6307 = xor i8 %6306, 1
  store i8 %6307, i8* %21, align 1
  %6308 = xor i64 %6298, 16
  %6309 = xor i64 %6308, %6299
  %6310 = lshr i64 %6309, 4
  %6311 = trunc i64 %6310 to i8
  %6312 = and i8 %6311, 1
  store i8 %6312, i8* %27, align 1
  %6313 = icmp eq i64 %6299, 0
  %6314 = zext i1 %6313 to i8
  store i8 %6314, i8* %30, align 1
  %6315 = lshr i64 %6299, 63
  %6316 = trunc i64 %6315 to i8
  store i8 %6316, i8* %33, align 1
  %6317 = lshr i64 %6298, 63
  %6318 = xor i64 %6315, %6317
  %6319 = add nuw nsw i64 %6318, %6315
  %6320 = icmp eq i64 %6319, 2
  %6321 = zext i1 %6320 to i8
  store i8 %6321, i8* %39, align 1
  store i64 %6299, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %6322 = add i64 %6298, 8
  %6323 = add i64 %6259, 46
  store i64 %6323, i64* %3, align 8
  %6324 = inttoptr i64 %6322 to i32*
  store i32 %6296, i32* %6324, align 4
  %6325 = load i64, i64* %RBP.i, align 8
  %6326 = add i64 %6325, -4
  %6327 = load i64, i64* %3, align 8
  %6328 = add i64 %6327, 4
  store i64 %6328, i64* %3, align 8
  %6329 = inttoptr i64 %6326 to i32*
  %6330 = load i32, i32* %6329, align 4
  %6331 = sext i32 %6330 to i64
  store i64 %6331, i64* %RDX.i2068, align 8
  %6332 = shl nsw i64 %6331, 2
  %6333 = add nsw i64 %6332, 11187184
  %6334 = add i64 %6327, 11
  store i64 %6334, i64* %3, align 8
  %6335 = inttoptr i64 %6333 to i32*
  %6336 = load i32, i32* %6335, align 4
  %6337 = zext i32 %6336 to i64
  store i64 %6337, i64* %RCX.i2070, align 8
  %6338 = add i64 %6325, -44
  %6339 = add i64 %6327, 15
  store i64 %6339, i64* %3, align 8
  %6340 = inttoptr i64 %6338 to i32*
  %6341 = load i32, i32* %6340, align 4
  %6342 = sext i32 %6341 to i64
  %6343 = mul nsw i64 %6342, 744
  store i64 %6343, i64* %RDX.i2068, align 8
  %6344 = lshr i64 %6343, 63
  %6345 = load i64, i64* %RAX.i2072, align 8
  %6346 = add i64 %6343, %6345
  store i64 %6346, i64* %RSI.i2055, align 8
  %6347 = icmp ult i64 %6346, %6345
  %6348 = icmp ult i64 %6346, %6343
  %6349 = or i1 %6347, %6348
  %6350 = zext i1 %6349 to i8
  store i8 %6350, i8* %14, align 1
  %6351 = trunc i64 %6346 to i32
  %6352 = and i32 %6351, 255
  %6353 = tail call i32 @llvm.ctpop.i32(i32 %6352)
  %6354 = trunc i32 %6353 to i8
  %6355 = and i8 %6354, 1
  %6356 = xor i8 %6355, 1
  store i8 %6356, i8* %21, align 1
  %6357 = xor i64 %6343, %6345
  %6358 = xor i64 %6357, %6346
  %6359 = lshr i64 %6358, 4
  %6360 = trunc i64 %6359 to i8
  %6361 = and i8 %6360, 1
  store i8 %6361, i8* %27, align 1
  %6362 = icmp eq i64 %6346, 0
  %6363 = zext i1 %6362 to i8
  store i8 %6363, i8* %30, align 1
  %6364 = lshr i64 %6346, 63
  %6365 = trunc i64 %6364 to i8
  store i8 %6365, i8* %33, align 1
  %6366 = lshr i64 %6345, 63
  %6367 = xor i64 %6364, %6366
  %6368 = xor i64 %6364, %6344
  %6369 = add nuw nsw i64 %6367, %6368
  %6370 = icmp eq i64 %6369, 2
  %6371 = zext i1 %6370 to i8
  store i8 %6371, i8* %39, align 1
  %6372 = add i64 %6327, 32
  store i64 %6372, i64* %3, align 8
  %6373 = load i32, i32* %6340, align 4
  %6374 = sext i32 %6373 to i64
  %6375 = mul nsw i64 %6374, 744
  store i64 %6375, i64* %RDX.i2068, align 8
  %6376 = lshr i64 %6375, 63
  %6377 = add i64 %6375, %6345
  store i64 %6377, i64* %RAX.i2072, align 8
  %6378 = icmp ult i64 %6377, %6345
  %6379 = icmp ult i64 %6377, %6375
  %6380 = or i1 %6378, %6379
  %6381 = zext i1 %6380 to i8
  store i8 %6381, i8* %14, align 1
  %6382 = trunc i64 %6377 to i32
  %6383 = and i32 %6382, 255
  %6384 = tail call i32 @llvm.ctpop.i32(i32 %6383)
  %6385 = trunc i32 %6384 to i8
  %6386 = and i8 %6385, 1
  %6387 = xor i8 %6386, 1
  store i8 %6387, i8* %21, align 1
  %6388 = xor i64 %6375, %6345
  %6389 = xor i64 %6388, %6377
  %6390 = lshr i64 %6389, 4
  %6391 = trunc i64 %6390 to i8
  %6392 = and i8 %6391, 1
  store i8 %6392, i8* %27, align 1
  %6393 = icmp eq i64 %6377, 0
  %6394 = zext i1 %6393 to i8
  store i8 %6394, i8* %30, align 1
  %6395 = lshr i64 %6377, 63
  %6396 = trunc i64 %6395 to i8
  store i8 %6396, i8* %33, align 1
  %6397 = xor i64 %6395, %6366
  %6398 = xor i64 %6395, %6376
  %6399 = add nuw nsw i64 %6397, %6398
  %6400 = icmp eq i64 %6399, 2
  %6401 = zext i1 %6400 to i8
  store i8 %6401, i8* %39, align 1
  %6402 = add i64 %6377, 96
  %6403 = add i64 %6327, 46
  store i64 %6403, i64* %3, align 8
  %6404 = inttoptr i64 %6402 to i32*
  %6405 = load i32, i32* %6404, align 4
  %6406 = zext i32 %6405 to i64
  store i64 %6406, i64* %R8.i2059, align 8
  %6407 = add i32 %6405, 1
  %6408 = zext i32 %6407 to i64
  store i64 %6408, i64* %6187, align 8
  %6409 = icmp eq i32 %6405, -1
  %6410 = icmp eq i32 %6407, 0
  %6411 = or i1 %6409, %6410
  %6412 = zext i1 %6411 to i8
  store i8 %6412, i8* %14, align 1
  %6413 = and i32 %6407, 255
  %6414 = tail call i32 @llvm.ctpop.i32(i32 %6413)
  %6415 = trunc i32 %6414 to i8
  %6416 = and i8 %6415, 1
  %6417 = xor i8 %6416, 1
  store i8 %6417, i8* %21, align 1
  %6418 = xor i32 %6407, %6405
  %6419 = lshr i32 %6418, 4
  %6420 = trunc i32 %6419 to i8
  %6421 = and i8 %6420, 1
  store i8 %6421, i8* %27, align 1
  %6422 = zext i1 %6410 to i8
  store i8 %6422, i8* %30, align 1
  %6423 = lshr i32 %6407, 31
  %6424 = trunc i32 %6423 to i8
  store i8 %6424, i8* %33, align 1
  %6425 = lshr i32 %6405, 31
  %6426 = xor i32 %6423, %6425
  %6427 = add nuw nsw i32 %6426, %6423
  %6428 = icmp eq i32 %6427, 2
  %6429 = zext i1 %6428 to i8
  store i8 %6429, i8* %39, align 1
  %6430 = add i64 %6327, 57
  store i64 %6430, i64* %3, align 8
  store i32 %6407, i32* %6404, align 4
  %6431 = load i32, i32* %R8D.i101, align 4
  %6432 = load i64, i64* %3, align 8
  %6433 = sext i32 %6431 to i64
  store i64 %6433, i64* %RAX.i2072, align 8
  %6434 = load i64, i64* %RSI.i2055, align 8
  %6435 = shl nsw i64 %6433, 2
  %6436 = add nsw i64 %6435, 100
  %6437 = add i64 %6436, %6434
  %6438 = load i32, i32* %ECX.i1904, align 4
  %6439 = add i64 %6432, 7
  store i64 %6439, i64* %3, align 8
  %6440 = inttoptr i64 %6437 to i32*
  store i32 %6438, i32* %6440, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_40c05d

block_.L_40c05d:                                  ; preds = %block_.L_40beca, %block_40bf1c, %block_40bee4
  %6441 = phi i64 [ %.pre60, %block_40bf1c ], [ %5937, %block_40bee4 ], [ %5847, %block_.L_40beca ]
  %6442 = add i64 %6441, 5
  store i64 %6442, i64* %3, align 8
  br label %block_.L_40c062

block_.L_40c062:                                  ; preds = %block_.L_40c05d, %block_.L_40bec5
  %storemerge49 = phi i64 [ %5789, %block_.L_40bec5 ], [ %6442, %block_.L_40c05d ]
  %6443 = load i64, i64* %6, align 8
  %6444 = add i64 %6443, 48
  store i64 %6444, i64* %6, align 8
  %6445 = icmp ugt i64 %6443, -49
  %6446 = zext i1 %6445 to i8
  store i8 %6446, i8* %14, align 1
  %6447 = trunc i64 %6444 to i32
  %6448 = and i32 %6447, 255
  %6449 = tail call i32 @llvm.ctpop.i32(i32 %6448)
  %6450 = trunc i32 %6449 to i8
  %6451 = and i8 %6450, 1
  %6452 = xor i8 %6451, 1
  store i8 %6452, i8* %21, align 1
  %6453 = xor i64 %6443, 16
  %6454 = xor i64 %6453, %6444
  %6455 = lshr i64 %6454, 4
  %6456 = trunc i64 %6455 to i8
  %6457 = and i8 %6456, 1
  store i8 %6457, i8* %27, align 1
  %6458 = icmp eq i64 %6444, 0
  %6459 = zext i1 %6458 to i8
  store i8 %6459, i8* %30, align 1
  %6460 = lshr i64 %6444, 63
  %6461 = trunc i64 %6460 to i8
  store i8 %6461, i8* %33, align 1
  %6462 = lshr i64 %6443, 63
  %6463 = xor i64 %6460, %6462
  %6464 = add nuw nsw i64 %6463, %6460
  %6465 = icmp eq i64 %6464, 2
  %6466 = zext i1 %6465 to i8
  store i8 %6466, i8* %39, align 1
  %6467 = add i64 %storemerge49, 5
  store i64 %6467, i64* %3, align 8
  %6468 = add i64 %6443, 56
  %6469 = inttoptr i64 %6444 to i64*
  %6470 = load i64, i64* %6469, align 8
  store i64 %6470, i64* %RBP.i, align 8
  store i64 %6468, i64* %6, align 8
  %6471 = add i64 %storemerge49, 6
  store i64 %6471, i64* %3, align 8
  %6472 = inttoptr i64 %6468 to i64*
  %6473 = load i64, i64* %6472, align 8
  store i64 %6473, i64* %3, align 8
  %6474 = add i64 %6443, 64
  store i64 %6474, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movq__0xaaba30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xa7f430___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___r8_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0xaaba30___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_0xaaba30___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__0xaaba30___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_40b2df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__0xaab3f0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11187184
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_addq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movl_0x4__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jle_.L_40b38b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_callq_.update_liberties(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b396(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.remove_liberty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_40b41b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_0x64__rsi__rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40b3ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b573(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_40b56e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jne_.L_40b478(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_je_.L_40b56e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b4b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b4ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b4ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b56e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b738(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_40b733(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b733(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b890(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b88b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b795(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40b88b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b7ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b807(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b80c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b865(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b88b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40ba55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ba50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ba50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40bbad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bab2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40bba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40baeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bb24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40bb29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40bb82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40bba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bd72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40bd6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40bd6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40beca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bec5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bdcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40bec5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40be08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40be41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40be46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40be9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40bec5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c05d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c05d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
