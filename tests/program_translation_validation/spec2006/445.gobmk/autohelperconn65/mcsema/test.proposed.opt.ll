; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0xb38cb4_type = type <{ [8 x i8] }>
%G__0xb7df8c_type = type <{ [8 x i8] }>
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
@G__0xb38cb4 = global %G__0xb38cb4_type zeroinitializer
@G__0xb7df8c = global %G__0xb7df8c_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42b500.whose_area(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperconn65(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i442 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RAX.i442, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i440 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %R8.i440, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i438 = bitcast %union.anon* %42 to i32*
  %43 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  store i64 3, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %44 to i32*
  %45 = add i64 %7, -12
  %46 = load i32, i32* %EDI.i, align 4
  %47 = add i64 %10, 36
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i433 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i32, i32* %ESI.i433, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i430 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -12
  %59 = load i32, i32* %EDX.i430, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i427 = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -16
  %66 = load i32, i32* %ECX.i427, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %R10.i425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -4
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %R10.i425, align 8
  %RCX.i421 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %77 = shl nsw i64 %76, 2
  %78 = add nsw i64 %77, 11904784
  %79 = add i64 %72, 12
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RCX.i421, align 8
  %83 = add i64 %70, -8
  %84 = add i64 %72, 15
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, %81
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RCX.i421, align 8
  %89 = icmp ult i32 %87, %81
  %90 = icmp ult i32 %87, %86
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %14, align 1
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %21, align 1
  %98 = xor i32 %86, %81
  %99 = xor i32 %98, %87
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %27, align 1
  %103 = icmp eq i32 %87, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %30, align 1
  %105 = lshr i32 %87, 31
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %33, align 1
  %107 = lshr i32 %81, 31
  %108 = lshr i32 %86, 31
  %109 = xor i32 %105, %107
  %110 = xor i32 %105, %108
  %111 = add nuw nsw i32 %109, %110
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %39, align 1
  %114 = add i64 %70, -20
  %115 = add i64 %72, 18
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 %87, i32* %116, align 4
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -4
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %R10.i425, align 8
  %124 = shl nsw i64 %123, 2
  %125 = add nsw i64 %124, 11903632
  %126 = add i64 %119, 12
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RCX.i421, align 8
  %130 = add i64 %117, -8
  %131 = add i64 %119, 15
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %133, %128
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RCX.i421, align 8
  %136 = icmp ult i32 %134, %128
  %137 = icmp ult i32 %134, %133
  %138 = or i1 %136, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %14, align 1
  %140 = and i32 %134, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %21, align 1
  %145 = xor i32 %133, %128
  %146 = xor i32 %145, %134
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %27, align 1
  %150 = icmp eq i32 %134, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %30, align 1
  %152 = lshr i32 %134, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1
  %154 = lshr i32 %128, 31
  %155 = lshr i32 %133, 31
  %156 = xor i32 %152, %154
  %157 = xor i32 %152, %155
  %158 = add nuw nsw i32 %156, %157
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %39, align 1
  %161 = add i64 %117, -24
  %162 = add i64 %119, 18
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %134, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -4
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 4
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %R10.i425, align 8
  %171 = shl nsw i64 %170, 2
  %172 = add nsw i64 %171, 11904816
  %173 = add i64 %166, 12
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i421, align 8
  %177 = add i64 %164, -8
  %178 = add i64 %166, 15
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, %175
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RCX.i421, align 8
  %183 = icmp ult i32 %181, %175
  %184 = icmp ult i32 %181, %180
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %181, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %180, %175
  %193 = xor i32 %192, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %27, align 1
  %197 = icmp eq i32 %181, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %30, align 1
  %199 = lshr i32 %181, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %33, align 1
  %201 = lshr i32 %175, 31
  %202 = lshr i32 %180, 31
  %203 = xor i32 %199, %201
  %204 = xor i32 %199, %202
  %205 = add nuw nsw i32 %203, %204
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %39, align 1
  %208 = add i64 %164, -28
  %209 = add i64 %166, 18
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %181, i32* %210, align 4
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -4
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 4
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %R10.i425, align 8
  %218 = shl nsw i64 %217, 2
  %219 = add nsw i64 %218, 11906000
  %220 = add i64 %213, 12
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX.i421, align 8
  %224 = add i64 %211, -8
  %225 = add i64 %213, 15
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %222
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RCX.i421, align 8
  %230 = icmp ult i32 %228, %222
  %231 = icmp ult i32 %228, %227
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %14, align 1
  %234 = and i32 %228, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %21, align 1
  %239 = xor i32 %227, %222
  %240 = xor i32 %239, %228
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %27, align 1
  %244 = icmp eq i32 %228, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %30, align 1
  %246 = lshr i32 %228, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %33, align 1
  %248 = lshr i32 %222, 31
  %249 = lshr i32 %227, 31
  %250 = xor i32 %246, %248
  %251 = xor i32 %246, %249
  %252 = add nuw nsw i32 %250, %251
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %39, align 1
  %255 = add i64 %211, -32
  %256 = add i64 %213, 18
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  store i32 %228, i32* %257, align 4
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -4
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 4
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %R10.i425, align 8
  %265 = shl nsw i64 %264, 2
  %266 = add nsw i64 %265, 11903664
  %267 = add i64 %260, 12
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX.i421, align 8
  %271 = add i64 %258, -8
  %272 = add i64 %260, 15
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, %269
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RCX.i421, align 8
  %277 = icmp ult i32 %275, %269
  %278 = icmp ult i32 %275, %274
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i32 %274, %269
  %287 = xor i32 %286, %275
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %27, align 1
  %291 = icmp eq i32 %275, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %30, align 1
  %293 = lshr i32 %275, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %33, align 1
  %295 = lshr i32 %269, 31
  %296 = lshr i32 %274, 31
  %297 = xor i32 %293, %295
  %298 = xor i32 %293, %296
  %299 = add nuw nsw i32 %297, %298
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %39, align 1
  %302 = add i64 %258, -36
  %303 = add i64 %260, 18
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 %275, i32* %304, align 4
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -4
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 4
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %R10.i425, align 8
  %312 = shl nsw i64 %311, 2
  %313 = add nsw i64 %312, 11904848
  %314 = add i64 %307, 12
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RCX.i421, align 8
  %318 = add i64 %305, -8
  %319 = add i64 %307, 15
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, %316
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RCX.i421, align 8
  %324 = icmp ult i32 %322, %316
  %325 = icmp ult i32 %322, %321
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %14, align 1
  %328 = and i32 %322, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %21, align 1
  %333 = xor i32 %321, %316
  %334 = xor i32 %333, %322
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = icmp eq i32 %322, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %30, align 1
  %340 = lshr i32 %322, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %33, align 1
  %342 = lshr i32 %316, 31
  %343 = lshr i32 %321, 31
  %344 = xor i32 %340, %342
  %345 = xor i32 %340, %343
  %346 = add nuw nsw i32 %344, %345
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %39, align 1
  %349 = add i64 %305, -40
  %350 = add i64 %307, 18
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  store i32 %322, i32* %351, align 4
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -4
  %354 = load i64, i64* %3, align 8
  %355 = add i64 %354, 4
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %353 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %R10.i425, align 8
  %359 = shl nsw i64 %358, 2
  %360 = add nsw i64 %359, 11906032
  %361 = add i64 %354, 12
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RCX.i421, align 8
  %365 = add i64 %352, -8
  %366 = add i64 %354, 15
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, %363
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RCX.i421, align 8
  %371 = icmp ult i32 %369, %363
  %372 = icmp ult i32 %369, %368
  %373 = or i1 %371, %372
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %14, align 1
  %375 = and i32 %369, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %21, align 1
  %380 = xor i32 %368, %363
  %381 = xor i32 %380, %369
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %27, align 1
  %385 = icmp eq i32 %369, 0
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %30, align 1
  %387 = lshr i32 %369, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %33, align 1
  %389 = lshr i32 %363, 31
  %390 = lshr i32 %368, 31
  %391 = xor i32 %387, %389
  %392 = xor i32 %387, %390
  %393 = add nuw nsw i32 %391, %392
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %39, align 1
  %396 = add i64 %352, -44
  %397 = add i64 %354, 18
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  store i32 %369, i32* %398, align 4
  %399 = load i32, i32* %R9D.i438, align 4
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -12
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 4
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = sub i32 %399, %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %43, align 8
  %408 = icmp eq i32 %406, 0
  %409 = zext i1 %408 to i8
  %410 = lshr i32 %406, 31
  %411 = add i32 %406, -1
  store i8 %409, i8* %14, align 1
  %412 = and i32 %411, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %21, align 1
  %417 = xor i32 %411, %406
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %27, align 1
  %421 = icmp eq i32 %411, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %30, align 1
  %423 = lshr i32 %411, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %33, align 1
  %425 = xor i32 %423, %410
  %426 = add nuw nsw i32 %425, %410
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %39, align 1
  %429 = load i64, i64* %R8.i440, align 8
  %430 = load i64, i64* %RAX.i442, align 8
  %431 = select i1 %421, i64 %429, i64 %430
  store i64 %431, i64* %RAX.i442, align 8
  %RSI.i335 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %432 = add i64 %400, -20
  %433 = add i64 %402, 15
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RSI.i335, align 8
  %RDI.i333 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 %431, i64* %RDI.i333, align 8
  %437 = add i64 %402, -492060
  %438 = add i64 %402, 23
  %439 = load i64, i64* %6, align 8
  %440 = add i64 %439, -8
  %441 = inttoptr i64 %440 to i64*
  store i64 %438, i64* %441, align 8
  store i64 %440, i64* %6, align 8
  store i64 %437, i64* %3, align 8
  %call2_4a35fe = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* %0, i64 %437, %struct.Memory* %2)
  %442 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i421, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B.i327 = bitcast %union.anon* %443 to i8*
  store i8 0, i8* %R11B.i327, align 1
  %EAX.i324 = bitcast %union.anon* %40 to i32*
  %444 = load i32, i32* %EAX.i324, align 4
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -12
  %447 = add i64 %442, 8
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sub i32 %444, %449
  %451 = icmp ult i32 %444, %449
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %450, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %449, %444
  %459 = xor i32 %458, %450
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %27, align 1
  %463 = icmp eq i32 %450, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %30, align 1
  %465 = lshr i32 %450, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %33, align 1
  %467 = lshr i32 %444, 31
  %468 = lshr i32 %449, 31
  %469 = xor i32 %468, %467
  %470 = xor i32 %465, %467
  %471 = add nuw nsw i32 %470, %469
  %472 = icmp eq i32 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %39, align 1
  %474 = add i64 %445, -45
  %475 = add i64 %442, 12
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i8*
  store i8 0, i8* %476, align 1
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 559
  %479 = add i64 %477, 6
  %480 = load i8, i8* %30, align 1
  %481 = icmp eq i8 %480, 0
  %482 = select i1 %481, i64 %478, i64 %479
  store i64 %482, i64* %3, align 8
  br i1 %481, label %block_.L_4a383e, label %block_4a3615

block_4a3615:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RAX.i442, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RCX.i421, align 8
  %RDX.i315 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  store i64 3, i64* %RDX.i315, align 8
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -12
  %485 = add i64 %482, 28
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sub i32 3, %487
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RDX.i315, align 8
  %490 = icmp eq i32 %488, 0
  %491 = zext i1 %490 to i8
  %492 = lshr i32 %488, 31
  %493 = add i32 %488, -1
  store i8 %491, i8* %14, align 1
  %494 = and i32 %493, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  %499 = xor i32 %493, %488
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %27, align 1
  %503 = icmp eq i32 %493, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %30, align 1
  %505 = lshr i32 %493, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %33, align 1
  %507 = xor i32 %505, %492
  %508 = add nuw nsw i32 %507, %492
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %39, align 1
  %511 = select i1 %503, i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64)
  store i64 %511, i64* %RAX.i442, align 8
  %512 = add i64 %483, -28
  %513 = add i64 %482, 38
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RSI.i335, align 8
  store i64 %511, i64* %RDI.i333, align 8
  %517 = add i64 %482, -491797
  %518 = add i64 %482, 46
  %519 = load i64, i64* %6, align 8
  %520 = add i64 %519, -8
  %521 = inttoptr i64 %520 to i64*
  store i64 %518, i64* %521, align 8
  store i64 %520, i64* %6, align 8
  store i64 %517, i64* %3, align 8
  %call2_4a363e = tail call %struct.Memory* @sub_42b500.whose_area(%struct.State* nonnull %0, i64 %517, %struct.Memory* %call2_4a35fe)
  %522 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i315, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %R8B.i295 = bitcast %union.anon* %41 to i8*
  store i8 0, i8* %R8B.i295, align 1
  %523 = load i32, i32* %EAX.i324, align 4
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -12
  %526 = add i64 %522, 8
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = sub i32 %523, %528
  %530 = icmp ult i32 %523, %528
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %14, align 1
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  %537 = xor i32 %528, %523
  %538 = xor i32 %537, %529
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  store i8 %541, i8* %27, align 1
  %542 = icmp eq i32 %529, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %30, align 1
  %544 = lshr i32 %529, 31
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %33, align 1
  %546 = lshr i32 %523, 31
  %547 = lshr i32 %528, 31
  %548 = xor i32 %547, %546
  %549 = xor i32 %544, %546
  %550 = add nuw nsw i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %39, align 1
  %553 = add i64 %524, -45
  %554 = add i64 %522, 12
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i8*
  store i8 0, i8* %555, align 1
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 495
  %558 = add i64 %556, 6
  %559 = load i8, i8* %30, align 1
  %560 = icmp eq i8 %559, 0
  %561 = select i1 %560, i64 %557, i64 %558
  store i64 %561, i64* %3, align 8
  br i1 %560, label %block_.L_4a383e, label %block_4a3655

block_4a3655:                                     ; preds = %block_4a3615
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RAX.i442, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RCX.i421, align 8
  store i64 3, i64* %RDX.i315, align 8
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -12
  %564 = add i64 %561, 28
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = sub i32 3, %566
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RDX.i315, align 8
  %569 = icmp eq i32 %567, 0
  %570 = zext i1 %569 to i8
  %571 = lshr i32 %567, 31
  %572 = add i32 %567, -1
  store i8 %570, i8* %14, align 1
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %21, align 1
  %578 = xor i32 %572, %567
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %27, align 1
  %582 = icmp eq i32 %572, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %30, align 1
  %584 = lshr i32 %572, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %33, align 1
  %586 = xor i32 %584, %571
  %587 = add nuw nsw i32 %586, %571
  %588 = icmp eq i32 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %39, align 1
  %590 = select i1 %582, i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64)
  store i64 %590, i64* %RAX.i442, align 8
  %591 = add i64 %562, -40
  %592 = add i64 %561, 38
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RSI.i335, align 8
  store i64 %590, i64* %RDI.i333, align 8
  %596 = add i64 %561, -491861
  %597 = add i64 %561, 46
  %598 = load i64, i64* %6, align 8
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %6, align 8
  store i64 %596, i64* %3, align 8
  %call2_4a367e = tail call %struct.Memory* @sub_42b500.whose_area(%struct.State* nonnull %0, i64 %596, %struct.Memory* %call2_4a363e)
  %601 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i315, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %R8B.i295, align 1
  %602 = load i32, i32* %EAX.i324, align 4
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -12
  %605 = add i64 %601, 8
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = sub i32 %602, %607
  %609 = icmp ult i32 %602, %607
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %14, align 1
  %611 = and i32 %608, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %21, align 1
  %616 = xor i32 %607, %602
  %617 = xor i32 %616, %608
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %27, align 1
  %621 = icmp eq i32 %608, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %30, align 1
  %623 = lshr i32 %608, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %33, align 1
  %625 = lshr i32 %602, 31
  %626 = lshr i32 %607, 31
  %627 = xor i32 %626, %625
  %628 = xor i32 %623, %625
  %629 = add nuw nsw i32 %628, %627
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %39, align 1
  %632 = add i64 %603, -45
  %633 = add i64 %601, 12
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i8*
  store i8 0, i8* %634, align 1
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 431
  %637 = add i64 %635, 6
  %638 = load i8, i8* %30, align 1
  %639 = icmp eq i8 %638, 0
  %640 = select i1 %639, i64 %636, i64 %637
  store i64 %640, i64* %3, align 8
  br i1 %639, label %block_.L_4a383e, label %block_4a3695

block_4a3695:                                     ; preds = %block_4a3655
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RAX.i442, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RCX.i421, align 8
  store i64 3, i64* %RDX.i315, align 8
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -12
  %643 = add i64 %640, 28
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sub i32 3, %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX.i315, align 8
  %648 = icmp eq i32 %646, 0
  %649 = zext i1 %648 to i8
  %650 = lshr i32 %646, 31
  %651 = add i32 %646, -1
  store i8 %649, i8* %14, align 1
  %652 = and i32 %651, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %21, align 1
  %657 = xor i32 %651, %646
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %27, align 1
  %661 = icmp eq i32 %651, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %30, align 1
  %663 = lshr i32 %651, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %33, align 1
  %665 = xor i32 %663, %650
  %666 = add nuw nsw i32 %665, %650
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %39, align 1
  %669 = select i1 %661, i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64)
  store i64 %669, i64* %RAX.i442, align 8
  %670 = add i64 %641, -24
  %671 = add i64 %640, 38
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RSI.i335, align 8
  store i64 %669, i64* %RDI.i333, align 8
  %675 = add i64 %640, -492229
  %676 = add i64 %640, 46
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %6, align 8
  store i64 %675, i64* %3, align 8
  %call2_4a36be = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %675, %struct.Memory* %call2_4a367e)
  %680 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX.i421, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI.i333, align 8
  store i64 3, i64* %RDX.i315, align 8
  %681 = load i32, i32* %EAX.i324, align 4
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -12
  %684 = add i64 %680, 28
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = icmp eq i32 %681, %686
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %689 = zext i1 %687 to i32
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = xor i8 %691, 1
  store i8 %692, i8* %21, align 1
  %693 = xor i8 %688, 1
  store i8 %693, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %694 = zext i1 %687 to i64
  store i64 %694, i64* %RAX.i442, align 8
  %695 = add i64 %680, 43
  store i64 %695, i64* %3, align 8
  %696 = load i32, i32* %685, align 4
  %697 = sub i32 3, %696
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i315, align 8
  %699 = icmp eq i32 %697, 0
  %700 = zext i1 %699 to i8
  %701 = lshr i32 %697, 31
  %702 = add i32 %697, -1
  store i8 %700, i8* %14, align 1
  %703 = and i32 %702, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %21, align 1
  %708 = xor i32 %702, %697
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %27, align 1
  %712 = icmp eq i32 %702, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %30, align 1
  %714 = lshr i32 %702, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %33, align 1
  %716 = xor i32 %714, %701
  %717 = add nuw nsw i32 %716, %701
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %39, align 1
  %720 = load i64, i64* %RDI.i333, align 8
  %721 = load i64, i64* %RCX.i421, align 8
  %722 = select i1 %712, i64 %720, i64 %721
  store i64 %722, i64* %RCX.i421, align 8
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -28
  %725 = add i64 %680, 53
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RSI.i335, align 8
  store i64 %722, i64* %RDI.i333, align 8
  %729 = add i64 %723, -52
  %730 = zext i1 %687 to i32
  %731 = add i64 %680, 59
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %729 to i32*
  store i32 %730, i32* %732, align 4
  %733 = load i64, i64* %3, align 8
  %734 = add i64 %733, -492334
  %735 = add i64 %733, 5
  %736 = load i64, i64* %6, align 8
  %737 = add i64 %736, -8
  %738 = inttoptr i64 %737 to i64*
  store i64 %735, i64* %738, align 8
  store i64 %737, i64* %6, align 8
  store i64 %734, i64* %3, align 8
  %call2_4a36fe = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %734, %struct.Memory* %call2_4a36be)
  %739 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX.i421, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI.i333, align 8
  store i64 3, i64* %RDX.i315, align 8
  %740 = load i32, i32* %EAX.i324, align 4
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -12
  %743 = add i64 %739, 28
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = icmp eq i32 %740, %745
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %748 = zext i1 %746 to i32
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = xor i8 %750, 1
  store i8 %751, i8* %21, align 1
  %752 = xor i8 %747, 1
  store i8 %752, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %753 = zext i1 %746 to i64
  store i64 %753, i64* %RAX.i442, align 8
  %754 = add i64 %741, -52
  %755 = add i64 %739, 43
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = zext i1 %746 to i32
  %759 = add i32 %758, %757
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RSI.i335, align 8
  %761 = icmp ult i32 %759, %757
  %762 = icmp ult i32 %759, %758
  %763 = or i1 %761, %762
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %759, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %757, %759
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %27, align 1
  %774 = icmp eq i32 %759, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %30, align 1
  %776 = lshr i32 %759, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %33, align 1
  %778 = lshr i32 %757, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %776
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %39, align 1
  %783 = load i64, i64* %RDX.i315, align 8
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -12
  %786 = add i64 %739, 48
  store i64 %786, i64* %3, align 8
  %787 = trunc i64 %783 to i32
  %788 = inttoptr i64 %785 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = sub i32 %787, %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RDX.i315, align 8
  %792 = icmp eq i32 %790, 0
  %793 = zext i1 %792 to i8
  %794 = lshr i32 %790, 31
  %795 = add i32 %790, -1
  store i8 %793, i8* %14, align 1
  %796 = and i32 %795, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %21, align 1
  %801 = xor i32 %795, %790
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %27, align 1
  %805 = icmp eq i32 %795, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i32 %795, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %33, align 1
  %809 = xor i32 %807, %794
  %810 = add nuw nsw i32 %809, %794
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %39, align 1
  %813 = load i64, i64* %RDI.i333, align 8
  %814 = load i64, i64* %RCX.i421, align 8
  %815 = select i1 %805, i64 %813, i64 %814
  store i64 %815, i64* %RCX.i421, align 8
  %816 = add i64 %784, -32
  %817 = add i64 %739, 58
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX.i442, align 8
  store i64 %815, i64* %RDI.i333, align 8
  %821 = add i64 %784, -56
  %822 = load i32, i32* %ESI.i433, align 4
  %823 = add i64 %739, 64
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %821 to i32*
  store i32 %822, i32* %824, align 4
  %825 = load i32, i32* %EAX.i324, align 4
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %3, align 8
  store i64 %826, i64* %RSI.i335, align 8
  %828 = add i64 %827, -492403
  %829 = add i64 %827, 7
  %830 = load i64, i64* %6, align 8
  %831 = add i64 %830, -8
  %832 = inttoptr i64 %831 to i64*
  store i64 %829, i64* %832, align 8
  store i64 %831, i64* %6, align 8
  store i64 %828, i64* %3, align 8
  %call2_4a3745 = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %828, %struct.Memory* %call2_4a36fe)
  %833 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX.i421, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI.i333, align 8
  store i64 3, i64* %RDX.i315, align 8
  %834 = load i32, i32* %EAX.i324, align 4
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -12
  %837 = add i64 %833, 28
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = icmp eq i32 %834, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %842 = zext i1 %840 to i32
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = xor i8 %844, 1
  store i8 %845, i8* %21, align 1
  %846 = xor i8 %841, 1
  store i8 %846, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %847 = zext i1 %840 to i64
  store i64 %847, i64* %RAX.i442, align 8
  %848 = add i64 %835, -56
  %849 = add i64 %833, 43
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i1 %840 to i32
  %853 = add i32 %852, %851
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RSI.i335, align 8
  %855 = icmp ult i32 %853, %851
  %856 = icmp ult i32 %853, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %14, align 1
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %21, align 1
  %864 = xor i32 %851, %853
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %27, align 1
  %868 = icmp eq i32 %853, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %30, align 1
  %870 = lshr i32 %853, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %33, align 1
  %872 = lshr i32 %851, 31
  %873 = xor i32 %870, %872
  %874 = add nuw nsw i32 %873, %870
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %39, align 1
  %877 = load i64, i64* %RDX.i315, align 8
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -12
  %880 = add i64 %833, 48
  store i64 %880, i64* %3, align 8
  %881 = trunc i64 %877 to i32
  %882 = inttoptr i64 %879 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = sub i32 %881, %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RDX.i315, align 8
  %886 = icmp eq i32 %884, 0
  %887 = zext i1 %886 to i8
  %888 = lshr i32 %884, 31
  %889 = add i32 %884, -1
  store i8 %887, i8* %14, align 1
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i32 %889, %884
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %27, align 1
  %899 = icmp eq i32 %889, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %30, align 1
  %901 = lshr i32 %889, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %33, align 1
  %903 = xor i32 %901, %888
  %904 = add nuw nsw i32 %903, %888
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %39, align 1
  %907 = load i64, i64* %RDI.i333, align 8
  %908 = load i64, i64* %RCX.i421, align 8
  %909 = select i1 %899, i64 %907, i64 %908
  store i64 %909, i64* %RCX.i421, align 8
  %910 = add i64 %878, -36
  %911 = add i64 %833, 58
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i442, align 8
  store i64 %909, i64* %RDI.i333, align 8
  %915 = add i64 %878, -60
  %916 = load i32, i32* %ESI.i433, align 4
  %917 = add i64 %833, 64
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %915 to i32*
  store i32 %916, i32* %918, align 4
  %919 = load i32, i32* %EAX.i324, align 4
  %920 = zext i32 %919 to i64
  %921 = load i64, i64* %3, align 8
  store i64 %920, i64* %RSI.i335, align 8
  %922 = add i64 %921, -492474
  %923 = add i64 %921, 7
  %924 = load i64, i64* %6, align 8
  %925 = add i64 %924, -8
  %926 = inttoptr i64 %925 to i64*
  store i64 %923, i64* %926, align 8
  store i64 %925, i64* %6, align 8
  store i64 %922, i64* %3, align 8
  %call2_4a378c = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %922, %struct.Memory* %call2_4a3745)
  %927 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX.i421, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI.i333, align 8
  store i64 3, i64* %RDX.i315, align 8
  %928 = load i32, i32* %EAX.i324, align 4
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -12
  %931 = add i64 %927, 28
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = icmp eq i32 %928, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %936 = zext i1 %934 to i32
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  %940 = xor i8 %935, 1
  store i8 %940, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %941 = zext i1 %934 to i64
  store i64 %941, i64* %RAX.i442, align 8
  %942 = add i64 %929, -60
  %943 = add i64 %927, 43
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = zext i1 %934 to i32
  %947 = add i32 %946, %945
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RSI.i335, align 8
  %949 = icmp ult i32 %947, %945
  %950 = icmp ult i32 %947, %946
  %951 = or i1 %949, %950
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %14, align 1
  %953 = and i32 %947, 255
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %21, align 1
  %958 = xor i32 %945, %947
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %27, align 1
  %962 = icmp eq i32 %947, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %30, align 1
  %964 = lshr i32 %947, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %33, align 1
  %966 = lshr i32 %945, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %964
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %39, align 1
  %971 = load i64, i64* %RDX.i315, align 8
  %972 = load i64, i64* %RBP.i, align 8
  %973 = add i64 %972, -12
  %974 = add i64 %927, 48
  store i64 %974, i64* %3, align 8
  %975 = trunc i64 %971 to i32
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sub i32 %975, %977
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RDX.i315, align 8
  %980 = icmp eq i32 %978, 0
  %981 = zext i1 %980 to i8
  %982 = lshr i32 %978, 31
  %983 = add i32 %978, -1
  store i8 %981, i8* %14, align 1
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  %989 = xor i32 %983, %978
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %27, align 1
  %993 = icmp eq i32 %983, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %30, align 1
  %995 = lshr i32 %983, 31
  %996 = trunc i32 %995 to i8
  store i8 %996, i8* %33, align 1
  %997 = xor i32 %995, %982
  %998 = add nuw nsw i32 %997, %982
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %39, align 1
  %1001 = load i64, i64* %RDI.i333, align 8
  %1002 = load i64, i64* %RCX.i421, align 8
  %1003 = select i1 %993, i64 %1001, i64 %1002
  store i64 %1003, i64* %RCX.i421, align 8
  %1004 = add i64 %972, -40
  %1005 = add i64 %927, 58
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i442, align 8
  store i64 %1003, i64* %RDI.i333, align 8
  %1009 = add i64 %972, -64
  %1010 = load i32, i32* %ESI.i433, align 4
  %1011 = add i64 %927, 64
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1009 to i32*
  store i32 %1010, i32* %1012, align 4
  %1013 = load i32, i32* %EAX.i324, align 4
  %1014 = zext i32 %1013 to i64
  %1015 = load i64, i64* %3, align 8
  store i64 %1014, i64* %RSI.i335, align 8
  %1016 = add i64 %1015, -492545
  %1017 = add i64 %1015, 7
  %1018 = load i64, i64* %6, align 8
  %1019 = add i64 %1018, -8
  %1020 = inttoptr i64 %1019 to i64*
  store i64 %1017, i64* %1020, align 8
  store i64 %1019, i64* %6, align 8
  store i64 %1016, i64* %3, align 8
  %call2_4a37d3 = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %1016, %struct.Memory* %call2_4a378c)
  %1021 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX.i421, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI.i333, align 8
  store i64 3, i64* %RDX.i315, align 8
  %1022 = load i32, i32* %EAX.i324, align 4
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -12
  %1025 = add i64 %1021, 28
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = icmp eq i32 %1022, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %1030 = zext i1 %1028 to i32
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i8 %1029, 1
  store i8 %1034, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1035 = zext i1 %1028 to i64
  store i64 %1035, i64* %RAX.i442, align 8
  %1036 = add i64 %1023, -64
  %1037 = add i64 %1021, 43
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = zext i1 %1028 to i32
  %1041 = add i32 %1040, %1039
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RSI.i335, align 8
  %1043 = icmp ult i32 %1041, %1039
  %1044 = icmp ult i32 %1041, %1040
  %1045 = or i1 %1043, %1044
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %14, align 1
  %1047 = and i32 %1041, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  %1052 = xor i32 %1039, %1041
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %27, align 1
  %1056 = icmp eq i32 %1041, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %30, align 1
  %1058 = lshr i32 %1041, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %33, align 1
  %1060 = lshr i32 %1039, 31
  %1061 = xor i32 %1058, %1060
  %1062 = add nuw nsw i32 %1061, %1058
  %1063 = icmp eq i32 %1062, 2
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %39, align 1
  %1065 = load i64, i64* %RDX.i315, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -12
  %1068 = add i64 %1021, 48
  store i64 %1068, i64* %3, align 8
  %1069 = trunc i64 %1065 to i32
  %1070 = inttoptr i64 %1067 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = sub i32 %1069, %1071
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i315, align 8
  %1074 = icmp eq i32 %1072, 0
  %1075 = zext i1 %1074 to i8
  %1076 = lshr i32 %1072, 31
  %1077 = add i32 %1072, -1
  store i8 %1075, i8* %14, align 1
  %1078 = and i32 %1077, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1077, %1072
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %27, align 1
  %1087 = icmp eq i32 %1077, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %30, align 1
  %1089 = lshr i32 %1077, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %33, align 1
  %1091 = xor i32 %1089, %1076
  %1092 = add nuw nsw i32 %1091, %1076
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %39, align 1
  %1095 = load i64, i64* %RDI.i333, align 8
  %1096 = load i64, i64* %RCX.i421, align 8
  %1097 = select i1 %1087, i64 %1095, i64 %1096
  store i64 %1097, i64* %RCX.i421, align 8
  %1098 = add i64 %1066, -44
  %1099 = add i64 %1021, 58
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX.i442, align 8
  store i64 %1097, i64* %RDI.i333, align 8
  %1103 = add i64 %1066, -68
  %1104 = load i32, i32* %ESI.i433, align 4
  %1105 = add i64 %1021, 64
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1103 to i32*
  store i32 %1104, i32* %1106, align 4
  %1107 = load i32, i32* %EAX.i324, align 4
  %1108 = zext i32 %1107 to i64
  %1109 = load i64, i64* %3, align 8
  store i64 %1108, i64* %RSI.i335, align 8
  %1110 = add i64 %1109, -492616
  %1111 = add i64 %1109, 7
  %1112 = load i64, i64* %6, align 8
  %1113 = add i64 %1112, -8
  %1114 = inttoptr i64 %1113 to i64*
  store i64 %1111, i64* %1114, align 8
  store i64 %1113, i64* %6, align 8
  store i64 %1110, i64* %3, align 8
  %call2_4a381a = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* nonnull %0, i64 %1110, %struct.Memory* %call2_4a37d3)
  %1115 = load i32, i32* %EAX.i324, align 4
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -12
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 3
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1117 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = icmp eq i32 %1115, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %R8B.i295, align 1
  store i8 0, i8* %14, align 1
  %1124 = zext i1 %1122 to i32
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %21, align 1
  %1128 = xor i8 %1123, 1
  store i8 %1128, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1129 = zext i1 %1122 to i64
  store i64 %1129, i64* %RAX.i442, align 8
  %1130 = add i64 %1116, -68
  %1131 = add i64 %1118, 18
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = zext i1 %1122 to i32
  %1135 = add i32 %1134, %1133
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RDX.i315, align 8
  %1137 = lshr i32 %1135, 31
  %1138 = add i32 %1135, -3
  %1139 = icmp ult i32 %1135, 3
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %14, align 1
  %1141 = and i32 %1138, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %21, align 1
  %1146 = xor i32 %1138, %1135
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %27, align 1
  %1150 = icmp eq i32 %1138, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %30, align 1
  %1152 = lshr i32 %1138, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %33, align 1
  %1154 = xor i32 %1152, %1137
  %1155 = add nuw nsw i32 %1154, %1137
  %1156 = icmp eq i32 %1155, 2
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %39, align 1
  %1158 = icmp ne i8 %1153, 0
  %1159 = xor i1 %1156, %1158
  %1160 = xor i1 %1159, true
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %R8B.i295, align 1
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -45
  %1164 = add i64 %1118, 31
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i8*
  store i8 %1161, i8* %1165, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a383e

block_.L_4a383e:                                  ; preds = %block_4a3695, %block_4a3655, %block_4a3615, %entry
  %1166 = phi i64 [ %478, %entry ], [ %557, %block_4a3615 ], [ %636, %block_4a3655 ], [ %.pre, %block_4a3695 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4a35fe, %entry ], [ %call2_4a363e, %block_4a3615 ], [ %call2_4a367e, %block_4a3655 ], [ %call2_4a381a, %block_4a3695 ]
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -45
  %1169 = add i64 %1166, 3
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i8*
  %1171 = load i8, i8* %1170, align 1
  %1172 = and i8 %1171, 1
  %1173 = zext i8 %1172 to i64
  store i64 %1173, i64* %RAX.i442, align 8
  %1174 = load i64, i64* %6, align 8
  %1175 = add i64 %1174, 80
  store i64 %1175, i64* %6, align 8
  %1176 = icmp ugt i64 %1174, -81
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %14, align 1
  %1178 = trunc i64 %1175 to i32
  %1179 = and i32 %1178, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i64 %1174, 16
  %1185 = xor i64 %1184, %1175
  %1186 = lshr i64 %1185, 4
  %1187 = trunc i64 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %27, align 1
  %1189 = icmp eq i64 %1175, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %30, align 1
  %1191 = lshr i64 %1175, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %33, align 1
  %1193 = lshr i64 %1174, 63
  %1194 = xor i64 %1191, %1193
  %1195 = add nuw nsw i64 %1194, %1191
  %1196 = icmp eq i64 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %39, align 1
  %1198 = add i64 %1166, 13
  store i64 %1198, i64* %3, align 8
  %1199 = add i64 %1174, 88
  %1200 = inttoptr i64 %1175 to i64*
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %RBP.i, align 8
  store i64 %1199, i64* %6, align 8
  %1202 = add i64 %1166, 14
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1199 to i64*
  %1204 = load i64, i64* %1203, align 8
  store i64 %1204, i64* %3, align 8
  %1205 = add i64 %1174, 96
  store i64 %1205, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movq__0xb7df8c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb38cb4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5a710___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11904784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5a290___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11903632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5a730___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11904816
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5abd0___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11906000
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5a2b0___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11903664
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5a750___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11904848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xb5abf0___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11906032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_subl_MINUS0xc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -12
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_cmoveq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.whose_moyo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl___r11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R11B, align 1
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
define %struct.Memory* @routine_movb__r11b__MINUS0x2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %R11B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a383e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb38cb4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_cmoveq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_callq_.whose_area(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__dl___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r8b__MINUS0x2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %R8B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movq__0xb7df8c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb7df8c_type* @G__0xb7df8c to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb38cb4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb38cb4_type* @G__0xb38cb4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R8B, align 1
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
define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmoveq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RCX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
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
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__esi__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_addl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
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
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_setge__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_movzbl__al___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
