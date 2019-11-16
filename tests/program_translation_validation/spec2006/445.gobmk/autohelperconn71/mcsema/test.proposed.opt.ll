; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_477710.somewhere(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4771f0.cut_possible(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415900.is_ko_point(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperconn71(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i274 = bitcast %union.anon* %18 to i32*
  %RAX.i275 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i275, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i272 = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  store i64 1, i64* %20, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i270 = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  store i64 3, i64* %22, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i267 = bitcast %union.anon* %23 to i32*
  %24 = add i64 %7, -12
  %25 = load i32, i32* %EDI.i267, align 4
  %26 = add i64 %10, 24
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i264 = bitcast %union.anon* %28 to i32*
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i32, i32* %ESI.i264, align 4
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -12
  %38 = load i32, i32* %EDX.i, align 4
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i259 = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i32, i32* %ECX.i259, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %R10.i257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -4
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %R10.i257, align 8
  %RCX.i253 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %56 = shl nsw i64 %55, 2
  %57 = add nsw i64 %56, 11899984
  %58 = add i64 %51, 12
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RCX.i253, align 8
  %62 = add i64 %49, -8
  %63 = add i64 %51, 15
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %60
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RCX.i253, align 8
  %68 = icmp ult i32 %66, %60
  %69 = icmp ult i32 %66, %65
  %70 = or i1 %68, %69
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %12, align 1
  %72 = and i32 %66, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %13, align 1
  %77 = xor i32 %65, %60
  %78 = xor i32 %77, %66
  %79 = lshr i32 %78, 4
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  store i8 %81, i8* %14, align 1
  %82 = icmp eq i32 %66, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %15, align 1
  %84 = lshr i32 %66, 31
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %16, align 1
  %86 = lshr i32 %60, 31
  %87 = lshr i32 %65, 31
  %88 = xor i32 %84, %86
  %89 = xor i32 %84, %87
  %90 = add nuw nsw i32 %88, %89
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %17, align 1
  %93 = add i64 %49, -20
  %94 = add i64 %51, 18
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  store i32 %66, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -4
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %R10.i257, align 8
  %103 = shl nsw i64 %102, 2
  %104 = add nsw i64 %103, 11898832
  %105 = add i64 %98, 12
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RCX.i253, align 8
  %109 = add i64 %96, -8
  %110 = add i64 %98, 15
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %107
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RCX.i253, align 8
  %115 = icmp ult i32 %113, %107
  %116 = icmp ult i32 %113, %112
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %12, align 1
  %119 = and i32 %113, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %13, align 1
  %124 = xor i32 %112, %107
  %125 = xor i32 %124, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %14, align 1
  %129 = icmp eq i32 %113, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %15, align 1
  %131 = lshr i32 %113, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %16, align 1
  %133 = lshr i32 %107, 31
  %134 = lshr i32 %112, 31
  %135 = xor i32 %131, %133
  %136 = xor i32 %131, %134
  %137 = add nuw nsw i32 %135, %136
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %17, align 1
  %140 = add i64 %96, -24
  %141 = add i64 %98, 18
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  store i32 %113, i32* %142, align 4
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -4
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %R10.i257, align 8
  %150 = shl nsw i64 %149, 2
  %151 = add nsw i64 %150, 11900016
  %152 = add i64 %145, 12
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RCX.i253, align 8
  %156 = add i64 %143, -8
  %157 = add i64 %145, 15
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, %154
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RCX.i253, align 8
  %162 = icmp ult i32 %160, %154
  %163 = icmp ult i32 %160, %159
  %164 = or i1 %162, %163
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %12, align 1
  %166 = and i32 %160, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %13, align 1
  %171 = xor i32 %159, %154
  %172 = xor i32 %171, %160
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %14, align 1
  %176 = icmp eq i32 %160, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %15, align 1
  %178 = lshr i32 %160, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %16, align 1
  %180 = lshr i32 %154, 31
  %181 = lshr i32 %159, 31
  %182 = xor i32 %178, %180
  %183 = xor i32 %178, %181
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %17, align 1
  %187 = add i64 %143, -28
  %188 = add i64 %145, 18
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 %160, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -4
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %R10.i257, align 8
  %197 = shl nsw i64 %196, 2
  %198 = add nsw i64 %197, 11901232
  %199 = add i64 %192, 12
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RCX.i253, align 8
  %203 = add i64 %190, -8
  %204 = add i64 %192, 15
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = add i32 %206, %201
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RCX.i253, align 8
  %209 = icmp ult i32 %207, %201
  %210 = icmp ult i32 %207, %206
  %211 = or i1 %209, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %12, align 1
  %213 = and i32 %207, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %13, align 1
  %218 = xor i32 %206, %201
  %219 = xor i32 %218, %207
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %14, align 1
  %223 = icmp eq i32 %207, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %15, align 1
  %225 = lshr i32 %207, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %16, align 1
  %227 = lshr i32 %201, 31
  %228 = lshr i32 %206, 31
  %229 = xor i32 %225, %227
  %230 = xor i32 %225, %228
  %231 = add nuw nsw i32 %229, %230
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %17, align 1
  %234 = add i64 %190, -32
  %235 = add i64 %192, 18
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 %207, i32* %236, align 4
  %237 = load i32, i32* %R9D.i270, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -12
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = sub i32 %237, %243
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %22, align 8
  %246 = icmp ult i32 %237, %243
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %12, align 1
  %248 = and i32 %244, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %13, align 1
  %253 = xor i32 %243, %237
  %254 = xor i32 %253, %244
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %14, align 1
  %258 = icmp eq i32 %244, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %15, align 1
  %260 = lshr i32 %244, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %16, align 1
  %262 = lshr i32 %237, 31
  %263 = lshr i32 %243, 31
  %264 = xor i32 %263, %262
  %265 = xor i32 %260, %262
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %17, align 1
  %269 = add i64 %238, -20
  %270 = add i64 %240, 7
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RCX.i253, align 8
  %RDI.i205 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  store i64 %245, i64* %RDI.i205, align 8
  %RSI.i203 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %274 = load i32, i32* %EAX.i274, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RSI.i203, align 8
  %RDX.i200 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %276 = load i32, i32* %R8D.i272, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDX.i200, align 8
  %AL.i198 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i198, align 1
  %278 = add i64 %240, -181674
  %279 = add i64 %240, 22
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_4a3ccb = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %278, %struct.Memory* %2)
  %283 = load i32, i32* %EAX.i274, align 4
  %284 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %285 = and i32 %283, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %290 = icmp eq i32 %283, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %15, align 1
  %292 = lshr i32 %283, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v = select i1 %290, i64 9, i64 65
  %294 = add i64 %284, %.v
  store i64 %294, i64* %3, align 8
  br i1 %290, label %block_4a3cd9, label %block_.L_4a3d11

block_4a3cd9:                                     ; preds = %entry
  store i64 0, i64* %RSI.i203, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 1, i64* %RDX.i200, align 8
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -12
  %297 = add i64 %294, 10
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RDI.i205, align 8
  %301 = add i64 %295, -20
  %302 = add i64 %294, 13
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RCX.i253, align 8
  store i8 0, i8* %AL.i198, align 1
  %306 = add i64 %294, -181705
  %307 = add i64 %294, 20
  %308 = load i64, i64* %6, align 8
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %6, align 8
  store i64 %306, i64* %3, align 8
  %call2_4a3ce8 = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* nonnull %0, i64 %306, %struct.Memory* %call2_4a3ccb)
  %311 = load i32, i32* %EAX.i274, align 4
  %312 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %313 = and i32 %311, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %318 = icmp eq i32 %311, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %15, align 1
  %320 = lshr i32 %311, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v16 = select i1 %318, i64 9, i64 36
  %322 = add i64 %312, %.v16
  store i64 %322, i64* %3, align 8
  br i1 %318, label %block_4a3cf6, label %block_.L_4a3d11

block_4a3cf6:                                     ; preds = %block_4a3cd9
  store i64 3, i64* %RAX.i275, align 8
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -20
  %325 = add i64 %322, 8
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RDI.i205, align 8
  %329 = add i64 %323, -12
  %330 = add i64 %322, 11
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sub i32 3, %332
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX.i275, align 8
  %335 = icmp ugt i32 %332, 3
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %12, align 1
  %337 = and i32 %333, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %13, align 1
  %342 = xor i32 %332, %333
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %14, align 1
  %346 = icmp eq i32 %333, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %15, align 1
  %348 = lshr i32 %333, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %16, align 1
  %350 = lshr i32 %332, 31
  %351 = add nuw nsw i32 %348, %350
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %17, align 1
  store i64 %334, i64* %RSI.i203, align 8
  %354 = add i64 %322, -183046
  %355 = add i64 %322, 18
  %356 = load i64, i64* %6, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %355, i64* %358, align 8
  store i64 %357, i64* %6, align 8
  store i64 %354, i64* %3, align 8
  %call2_4a3d03 = tail call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* nonnull %0, i64 %354, %struct.Memory* %call2_4a3ce8)
  %359 = load i32, i32* %EAX.i274, align 4
  %360 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %361 = and i32 %359, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %366 = icmp eq i32 %359, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %15, align 1
  %368 = lshr i32 %359, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v17 = select i1 %366, i64 9, i64 185
  %370 = add i64 %360, %.v17
  store i64 %370, i64* %3, align 8
  br i1 %366, label %block_.L_4a3d11, label %block_.L_4a3dc1

block_.L_4a3d11:                                  ; preds = %block_4a3cf6, %block_4a3cd9, %entry
  %371 = phi i64 [ %294, %entry ], [ %322, %block_4a3cd9 ], [ %370, %block_4a3cf6 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4a3ccb, %entry ], [ %call2_4a3ce8, %block_4a3cd9 ], [ %call2_4a3d03, %block_4a3cf6 ]
  store i64 0, i64* %RSI.i203, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 1, i64* %RDX.i200, align 8
  store i64 3, i64* %RAX.i275, align 8
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -12
  %374 = add i64 %371, 15
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sub i32 3, %376
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i275, align 8
  %379 = icmp ugt i32 %376, 3
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %12, align 1
  %381 = and i32 %377, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %13, align 1
  %386 = xor i32 %377, %376
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %14, align 1
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %15, align 1
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %16, align 1
  %394 = lshr i32 %376, 31
  %395 = add nuw nsw i32 %392, %394
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %17, align 1
  %398 = add i64 %372, -24
  %399 = add i64 %371, 18
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RCX.i253, align 8
  store i64 %378, i64* %RDI.i205, align 8
  store i8 0, i8* %AL.i198, align 1
  %403 = add i64 %371, -181761
  %404 = add i64 %371, 27
  %405 = load i64, i64* %6, align 8
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %6, align 8
  store i64 %403, i64* %3, align 8
  %call2_4a3d27 = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* nonnull %0, i64 %403, %struct.Memory* %MEMORY.0)
  %408 = load i32, i32* %EAX.i274, align 4
  %409 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %410 = and i32 %408, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %415 = icmp eq i32 %408, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %15, align 1
  %417 = lshr i32 %408, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v12 = select i1 %415, i64 9, i64 65
  %419 = add i64 %409, %.v12
  store i64 %419, i64* %3, align 8
  br i1 %415, label %block_4a3d35, label %block_.L_4a3d6d

block_4a3d35:                                     ; preds = %block_.L_4a3d11
  store i64 0, i64* %RSI.i203, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 1, i64* %RDX.i200, align 8
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -12
  %422 = add i64 %419, 10
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RDI.i205, align 8
  %426 = add i64 %420, -20
  %427 = add i64 %419, 13
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RCX.i253, align 8
  store i8 0, i8* %AL.i198, align 1
  %431 = add i64 %419, -181797
  %432 = add i64 %419, 20
  %433 = load i64, i64* %6, align 8
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %432, i64* %435, align 8
  store i64 %434, i64* %6, align 8
  store i64 %431, i64* %3, align 8
  %call2_4a3d44 = tail call %struct.Memory* @sub_477710.somewhere(%struct.State* nonnull %0, i64 %431, %struct.Memory* %call2_4a3d27)
  %436 = load i32, i32* %EAX.i274, align 4
  %437 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %438 = and i32 %436, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %443 = icmp eq i32 %436, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %15, align 1
  %445 = lshr i32 %436, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v14 = select i1 %443, i64 9, i64 36
  %447 = add i64 %437, %.v14
  store i64 %447, i64* %3, align 8
  br i1 %443, label %block_4a3d52, label %block_.L_4a3d6d

block_4a3d52:                                     ; preds = %block_4a3d35
  store i64 3, i64* %RAX.i275, align 8
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -24
  %450 = add i64 %447, 8
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RDI.i205, align 8
  %454 = add i64 %448, -12
  %455 = add i64 %447, 11
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = sub i32 3, %457
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX.i275, align 8
  %460 = icmp ugt i32 %457, 3
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %12, align 1
  %462 = and i32 %458, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %13, align 1
  %467 = xor i32 %457, %458
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %14, align 1
  %471 = icmp eq i32 %458, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %15, align 1
  %473 = lshr i32 %458, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %16, align 1
  %475 = lshr i32 %457, 31
  %476 = add nuw nsw i32 %473, %475
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %17, align 1
  store i64 %459, i64* %RSI.i203, align 8
  %479 = add i64 %447, -183138
  %480 = add i64 %447, 18
  %481 = load i64, i64* %6, align 8
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %6, align 8
  store i64 %479, i64* %3, align 8
  %call2_4a3d5f = tail call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* nonnull %0, i64 %479, %struct.Memory* %call2_4a3d44)
  %484 = load i32, i32* %EAX.i274, align 4
  %485 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %486 = and i32 %484, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %491 = icmp eq i32 %484, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %15, align 1
  %493 = lshr i32 %484, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v15 = select i1 %491, i64 9, i64 93
  %495 = add i64 %485, %.v15
  store i64 %495, i64* %3, align 8
  br i1 %491, label %block_.L_4a3d6d, label %block_.L_4a3dc1

block_.L_4a3d6d:                                  ; preds = %block_4a3d52, %block_4a3d35, %block_.L_4a3d11
  %496 = phi i64 [ %419, %block_.L_4a3d11 ], [ %447, %block_4a3d35 ], [ %495, %block_4a3d52 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4a3d27, %block_.L_4a3d11 ], [ %call2_4a3d44, %block_4a3d35 ], [ %call2_4a3d5f, %block_4a3d52 ]
  %497 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %498 = and i32 %497, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %503 = icmp eq i32 %497, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %15, align 1
  %505 = lshr i32 %497, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v13 = select i1 %503, i64 14, i64 58
  %507 = add i64 %496, %.v13
  store i64 %507, i64* %3, align 8
  br i1 %503, label %block_4a3d7b, label %block_.L_4a3da7

block_4a3d7b:                                     ; preds = %block_.L_4a3d6d
  store i8 1, i8* %AL.i198, align 1
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i253, align 8
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -28
  %510 = add i64 %507, 16
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  %514 = mul nsw i64 %513, 380
  store i64 %514, i64* %RDX.i200, align 8
  %515 = lshr i64 %514, 63
  %516 = add i64 %514, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %516, i64* %RCX.i253, align 8
  %517 = icmp ult i64 %516, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %518 = icmp ult i64 %516, %514
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %12, align 1
  %521 = trunc i64 %516 to i32
  %522 = and i32 %521, 252
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %13, align 1
  %527 = xor i64 %514, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %528 = xor i64 %527, %516
  %529 = lshr i64 %528, 4
  %530 = trunc i64 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %14, align 1
  %532 = icmp eq i64 %516, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %15, align 1
  %534 = lshr i64 %516, 63
  %535 = trunc i64 %534 to i8
  store i8 %535, i8* %16, align 1
  %536 = xor i64 %534, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %537 = xor i64 %534, %515
  %538 = add nuw nsw i64 %536, %537
  %539 = icmp eq i64 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %17, align 1
  %541 = add i64 %514, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %542 = add i64 %507, 30
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  store i8 0, i8* %12, align 1
  %545 = and i32 %544, 255
  %546 = tail call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %550 = icmp eq i32 %544, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %15, align 1
  %552 = lshr i32 %544, 31
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %554 = add i64 %508, -33
  %555 = add i64 %507, 33
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i8*
  store i8 1, i8* %556, align 1
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 133
  %559 = add i64 %557, 6
  %560 = load i8, i8* %15, align 1
  %561 = icmp eq i8 %560, 0
  %562 = select i1 %561, i64 %558, i64 %559
  store i64 %562, i64* %3, align 8
  br i1 %561, label %block_.L_4a3e21, label %block_4a3da2

block_4a3da2:                                     ; preds = %block_4a3d7b
  %563 = add i64 %562, 31
  store i64 %563, i64* %3, align 8
  br label %block_.L_4a3dc1

block_.L_4a3da7:                                  ; preds = %block_.L_4a3d6d
  store i64 0, i64* %RAX.i275, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RSI.i203, align 8
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -28
  %566 = add i64 %507, 7
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RDI.i205, align 8
  %570 = add i64 %507, -287335
  %571 = add i64 %507, 12
  %572 = load i64, i64* %6, align 8
  %573 = add i64 %572, -8
  %574 = inttoptr i64 %573 to i64*
  store i64 %571, i64* %574, align 8
  store i64 %573, i64* %6, align 8
  store i64 %570, i64* %3, align 8
  %call2_4a3dae = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %570, %struct.Memory* %MEMORY.1)
  %CL.i77 = bitcast %union.anon* %42 to i8*
  %575 = load i64, i64* %3, align 8
  store i8 1, i8* %CL.i77, align 1
  %576 = load i32, i32* %EAX.i274, align 4
  store i8 0, i8* %12, align 1
  %577 = and i32 %576, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %582 = icmp eq i32 %576, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %15, align 1
  %584 = lshr i32 %576, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %586 = load i64, i64* %RBP.i, align 8
  %587 = add i64 %586, -33
  %588 = add i64 %575, 8
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i8*
  store i8 1, i8* %589, align 1
  %590 = load i64, i64* %3, align 8
  %591 = add i64 %590, 102
  %592 = add i64 %590, 6
  %593 = load i8, i8* %15, align 1
  %594 = icmp eq i8 %593, 0
  %595 = select i1 %594, i64 %591, i64 %592
  store i64 %595, i64* %3, align 8
  br i1 %594, label %block_.L_4a3e21, label %block_.L_4a3dc1

block_.L_4a3dc1:                                  ; preds = %block_4a3d52, %block_4a3cf6, %block_.L_4a3da7, %block_4a3da2
  %596 = phi i64 [ %592, %block_.L_4a3da7 ], [ %563, %block_4a3da2 ], [ %495, %block_4a3d52 ], [ %370, %block_4a3cf6 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4a3dae, %block_.L_4a3da7 ], [ %MEMORY.1, %block_4a3da2 ], [ %call2_4a3d5f, %block_4a3d52 ], [ %call2_4a3d03, %block_4a3cf6 ]
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -32
  %599 = add i64 %596, 3
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RDI.i205, align 8
  %603 = add i64 %596, -582849
  %604 = add i64 %596, 8
  %605 = load i64, i64* %6, align 8
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %6, align 8
  store i64 %603, i64* %3, align 8
  %call2_4a3dc4 = tail call %struct.Memory* @sub_415900.is_ko_point(%struct.State* nonnull %0, i64 %603, %struct.Memory* %MEMORY.2)
  %608 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i205, align 8
  %CL.i63 = bitcast %union.anon* %42 to i8*
  store i8 0, i8* %CL.i63, align 1
  %609 = load i32, i32* %EAX.i274, align 4
  store i8 0, i8* %12, align 1
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %615 = icmp eq i32 %609, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %15, align 1
  %617 = lshr i32 %609, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -34
  %621 = add i64 %608, 11
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i8*
  store i8 0, i8* %622, align 1
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 71
  %625 = add i64 %623, 6
  %626 = load i8, i8* %15, align 1
  %627 = icmp eq i8 %626, 0
  %628 = select i1 %627, i64 %624, i64 %625
  store i64 %628, i64* %3, align 8
  br i1 %627, label %block_.L_4a3e1b, label %block_4a3dda

block_4a3dda:                                     ; preds = %block_.L_4a3dc1
  store i64 3, i64* %RAX.i275, align 8
  %629 = load i64, i64* %RBP.i, align 8
  %630 = add i64 %629, -32
  %631 = add i64 %628, 8
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RDI.i205, align 8
  %635 = add i64 %629, -12
  %636 = add i64 %628, 11
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = sub i32 3, %638
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX.i275, align 8
  %641 = icmp ugt i32 %638, 3
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %12, align 1
  %643 = and i32 %639, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %13, align 1
  %648 = xor i32 %638, %639
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  store i8 %651, i8* %14, align 1
  %652 = icmp eq i32 %639, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %15, align 1
  %654 = lshr i32 %639, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %16, align 1
  %656 = lshr i32 %638, 31
  %657 = add nuw nsw i32 %654, %656
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %17, align 1
  store i64 %640, i64* %RSI.i203, align 8
  %660 = add i64 %628, -183274
  %661 = add i64 %628, 18
  %662 = load i64, i64* %6, align 8
  %663 = add i64 %662, -8
  %664 = inttoptr i64 %663 to i64*
  store i64 %661, i64* %664, align 8
  store i64 %663, i64* %6, align 8
  store i64 %660, i64* %3, align 8
  %call2_4a3de7 = tail call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* nonnull %0, i64 %660, %struct.Memory* %call2_4a3dc4)
  %665 = load i64, i64* %3, align 8
  store i64 0, i64* %RSI.i203, align 8
  store i8 0, i8* %CL.i63, align 1
  %666 = load i32, i32* %EAX.i274, align 4
  store i8 0, i8* %12, align 1
  %667 = and i32 %666, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %672 = icmp eq i32 %666, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %15, align 1
  %674 = lshr i32 %666, 31
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -34
  %678 = add i64 %665, 11
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i8*
  store i8 0, i8* %679, align 1
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 36
  %682 = add i64 %680, 6
  %683 = load i8, i8* %15, align 1
  %684 = icmp eq i8 %683, 0
  %685 = select i1 %684, i64 %681, i64 %682
  store i64 %685, i64* %3, align 8
  br i1 %684, label %block_.L_4a3e1b, label %block_4a3dfd

block_4a3dfd:                                     ; preds = %block_4a3dda
  store i64 3, i64* %RAX.i275, align 8
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -32
  %688 = add i64 %685, 8
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RDI.i205, align 8
  %692 = add i64 %686, -12
  %693 = add i64 %685, 11
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sub i32 3, %695
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX.i275, align 8
  %698 = icmp ugt i32 %695, 3
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %12, align 1
  %700 = and i32 %696, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %13, align 1
  %705 = xor i32 %695, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %14, align 1
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %15, align 1
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %16, align 1
  %713 = lshr i32 %695, 31
  %714 = add nuw nsw i32 %711, %713
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %17, align 1
  store i64 %697, i64* %RSI.i203, align 8
  %717 = add i64 %685, -229837
  %718 = add i64 %685, 18
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_4a3e0a = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %717, %struct.Memory* %call2_4a3de7)
  %722 = load i32, i32* %EAX.i274, align 4
  %723 = load i64, i64* %3, align 8
  %724 = icmp ne i32 %722, 0
  %725 = zext i1 %724 to i64
  %726 = xor i64 %725, 255
  %727 = trunc i64 %726 to i8
  store i8 %727, i8* %CL.i63, align 1
  store i8 0, i8* %12, align 1
  %728 = trunc i64 %726 to i32
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %13, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %733 = load i64, i64* %RBP.i, align 8
  %734 = add i64 %733, -34
  %735 = add i64 %723, 12
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i8*
  store i8 %727, i8* %736, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a3e1b

block_.L_4a3e1b:                                  ; preds = %block_4a3dfd, %block_4a3dda, %block_.L_4a3dc1
  %737 = phi i64 [ %624, %block_.L_4a3dc1 ], [ %681, %block_4a3dda ], [ %.pre, %block_4a3dfd ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4a3dc4, %block_.L_4a3dc1 ], [ %call2_4a3de7, %block_4a3dda ], [ %call2_4a3e0a, %block_4a3dfd ]
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -34
  %740 = add i64 %737, 3
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i8*
  %742 = load i8, i8* %741, align 1
  store i8 %742, i8* %AL.i198, align 1
  %743 = add i64 %738, -33
  %744 = add i64 %737, 6
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i8*
  store i8 %742, i8* %745, align 1
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_4a3e21

block_.L_4a3e21:                                  ; preds = %block_.L_4a3e1b, %block_.L_4a3da7, %block_4a3d7b
  %746 = phi i64 [ %591, %block_.L_4a3da7 ], [ %.pre11, %block_.L_4a3e1b ], [ %558, %block_4a3d7b ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4a3dae, %block_.L_4a3da7 ], [ %MEMORY.3, %block_.L_4a3e1b ], [ %MEMORY.1, %block_4a3d7b ]
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -33
  %749 = add i64 %746, 3
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i8*
  %751 = load i8, i8* %750, align 1
  %752 = and i8 %751, 1
  %753 = zext i8 %752 to i64
  store i64 %753, i64* %RAX.i275, align 8
  %754 = load i64, i64* %6, align 8
  %755 = add i64 %754, 48
  store i64 %755, i64* %6, align 8
  %756 = icmp ugt i64 %754, -49
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %12, align 1
  %758 = trunc i64 %755 to i32
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %13, align 1
  %764 = xor i64 %754, 16
  %765 = xor i64 %764, %755
  %766 = lshr i64 %765, 4
  %767 = trunc i64 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %14, align 1
  %769 = icmp eq i64 %755, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %15, align 1
  %771 = lshr i64 %755, 63
  %772 = trunc i64 %771 to i8
  store i8 %772, i8* %16, align 1
  %773 = lshr i64 %754, 63
  %774 = xor i64 %771, %773
  %775 = add nuw nsw i64 %774, %771
  %776 = icmp eq i64 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %17, align 1
  %778 = add i64 %746, 13
  store i64 %778, i64* %3, align 8
  %779 = add i64 %754, 56
  %780 = inttoptr i64 %755 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RBP.i, align 8
  store i64 %779, i64* %6, align 8
  %782 = add i64 %746, 14
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %779 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %3, align 8
  %785 = add i64 %754, 64
  store i64 %785, i64* %6, align 8
  ret %struct.Memory* %MEMORY.4
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
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
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
define %struct.Memory* @routine_movl_0xb59450___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11899984
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
define %struct.Memory* @routine_movl_0xb58fd0___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11898832
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
define %struct.Memory* @routine_movl_0xb59470___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11900016
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
define %struct.Memory* @routine_movl_0xb59930___r10_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11901232
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
define %struct.Memory* @routine_movl__r9d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.somewhere(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4a3d11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.cut_possible(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4a3dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3d6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3da7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x64__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movb__al__MINUS0x21__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3e21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a3dc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_callq_.attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x21__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.is_ko_point(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__dil___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x22__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -34
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a3e1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__sil___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %SIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.safe_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x22__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -34
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x21__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -33
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
