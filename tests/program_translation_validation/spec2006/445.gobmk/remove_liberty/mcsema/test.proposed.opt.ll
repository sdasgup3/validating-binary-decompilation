; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
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
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40d280.update_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @remove_liberty(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %RAX.i227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i227, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 20
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RCX.i220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 744
  store i64 %58, i64* %RCX.i220, align 8
  %59 = lshr i64 %58, 63
  %60 = load i64, i64* %RAX.i227, align 8
  %61 = add i64 %58, %60
  store i64 %61, i64* %RAX.i227, align 8
  %62 = icmp ult i64 %61, %60
  %63 = icmp ult i64 %61, %58
  %64 = or i1 %62, %63
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %14, align 1
  %66 = trunc i64 %61 to i32
  %67 = and i32 %66, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %21, align 1
  %72 = xor i64 %58, %60
  %73 = xor i64 %72, %61
  %74 = lshr i64 %73, 4
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %26, align 1
  %77 = icmp eq i64 %61, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %29, align 1
  %79 = lshr i64 %61, 63
  %80 = trunc i64 %79 to i8
  store i8 %80, i8* %32, align 1
  %81 = lshr i64 %60, 63
  %82 = xor i64 %79, %81
  %83 = xor i64 %79, %59
  %84 = add nuw nsw i64 %82, %83
  %85 = icmp eq i64 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %38, align 1
  %87 = add i64 %51, -24
  %88 = add i64 %53, 18
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  store i64 %61, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -24
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RAX.i227, align 8
  %96 = add i64 %95, 12
  %97 = add i64 %92, 8
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, -20
  %101 = icmp ult i32 %99, 20
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  %108 = xor i32 %99, 16
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %26, align 1
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %29, align 1
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %32, align 1
  %117 = lshr i32 %99, 31
  %118 = xor i32 %115, %117
  %119 = add nuw nsw i32 %118, %117
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %38, align 1
  %122 = icmp ne i8 %116, 0
  %123 = xor i1 %122, %120
  %124 = or i1 %113, %123
  %.v5 = select i1 %124, i64 27, i64 14
  %125 = add i64 %92, %.v5
  store i64 %125, i64* %3, align 8
  br i1 %124, label %block_.L_40a705, label %block_40a6f8

block_40a6f8:                                     ; preds = %entry
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %126 = add i64 %90, -4
  %127 = add i64 %125, 3
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RDI.i, align 8
  %131 = add i64 %125, 11144
  %132 = add i64 %125, 8
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  %call2_40a6fb = tail call %struct.Memory* @sub_40d280.update_liberties(%struct.State* nonnull %0, i64 %131, %struct.Memory* %2)
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 330
  br label %block_.L_40a84a

block_.L_40a705:                                  ; preds = %entry
  %138 = add i64 %90, -12
  %139 = add i64 %125, 7
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  store i32 0, i32* %140, align 4
  %RDX.i182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40a70c

block_.L_40a70c:                                  ; preds = %block_.L_40a832, %block_.L_40a705
  %141 = phi i64 [ %655, %block_.L_40a832 ], [ %.pre, %block_.L_40a705 ]
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -12
  %144 = add i64 %141, 3
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX.i227, align 8
  %148 = add i64 %142, -24
  %149 = add i64 %141, 7
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RCX.i220, align 8
  %152 = add i64 %151, 12
  %153 = add i64 %141, 10
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = sub i32 %146, %155
  %157 = icmp ult i32 %146, %155
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %14, align 1
  %159 = and i32 %156, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i32 %155, %146
  %165 = xor i32 %164, %156
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %26, align 1
  %169 = icmp eq i32 %156, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %29, align 1
  %171 = lshr i32 %156, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %32, align 1
  %173 = lshr i32 %146, 31
  %174 = lshr i32 %155, 31
  %175 = xor i32 %174, %173
  %176 = xor i32 %171, %173
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %38, align 1
  %180 = icmp ne i8 %172, 0
  %181 = xor i1 %180, %178
  %.v4 = select i1 %181, i64 16, i64 313
  %182 = add i64 %141, %.v4
  store i64 %182, i64* %3, align 8
  br i1 %181, label %block_40a71c, label %block_.L_40a845.loopexit

block_40a71c:                                     ; preds = %block_.L_40a70c
  %183 = add i64 %182, 4
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %150, align 8
  store i64 %184, i64* %RAX.i227, align 8
  %185 = add i64 %182, 8
  store i64 %185, i64* %3, align 8
  %186 = load i32, i32* %145, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %RCX.i220, align 8
  %188 = shl nsw i64 %187, 2
  %189 = add i64 %184, 16
  %190 = add i64 %189, %188
  %191 = add i64 %182, 12
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RDX.i182, align 8
  %195 = add i64 %142, -8
  %196 = add i64 %182, 15
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = sub i32 %193, %198
  %200 = icmp ult i32 %193, %198
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %14, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i32 %198, %193
  %208 = xor i32 %207, %199
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  store i8 %211, i8* %26, align 1
  %212 = icmp eq i32 %199, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %29, align 1
  %214 = lshr i32 %199, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %32, align 1
  %216 = lshr i32 %193, 31
  %217 = lshr i32 %198, 31
  %218 = xor i32 %217, %216
  %219 = xor i32 %214, %216
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %38, align 1
  %.v = select i1 %212, i64 21, i64 278
  %223 = add i64 %182, %.v
  store i64 %223, i64* %3, align 8
  br i1 %212, label %block_40a731, label %block_.L_40a832

block_40a731:                                     ; preds = %block_40a71c
  %224 = add i64 %223, 4
  store i64 %224, i64* %3, align 8
  %225 = load i64, i64* %150, align 8
  %226 = add i64 %225, 16
  store i64 %226, i64* %RAX.i227, align 8
  %227 = icmp ugt i64 %225, -17
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %14, align 1
  %229 = trunc i64 %226 to i32
  %230 = and i32 %229, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  %235 = xor i64 %225, 16
  %236 = xor i64 %235, %226
  %237 = lshr i64 %236, 4
  %238 = trunc i64 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %26, align 1
  %240 = icmp eq i64 %226, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %29, align 1
  %242 = lshr i64 %226, 63
  %243 = trunc i64 %242 to i8
  store i8 %243, i8* %32, align 1
  %244 = lshr i64 %225, 63
  %245 = xor i64 %242, %244
  %246 = add nuw nsw i64 %245, %242
  %247 = icmp eq i64 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %38, align 1
  %249 = add i64 %223, 12
  store i64 %249, i64* %3, align 8
  %250 = load i64, i64* %150, align 8
  store i64 %250, i64* %RCX.i220, align 8
  %251 = add i64 %250, 12
  %252 = add i64 %223, 15
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, -1
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RDX.i182, align 8
  %257 = sext i32 %255 to i64
  %258 = shl nsw i64 %257, 2
  %259 = add i64 %258, %226
  store i64 %259, i64* %RAX.i227, align 8
  %260 = icmp ult i64 %259, %226
  %261 = icmp ult i64 %259, %258
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %14, align 1
  %264 = trunc i64 %259 to i32
  %265 = and i32 %264, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1
  %270 = xor i64 %258, %226
  %271 = xor i64 %270, %259
  %272 = lshr i64 %271, 4
  %273 = trunc i64 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %26, align 1
  %275 = icmp eq i64 %259, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %29, align 1
  %277 = lshr i64 %259, 63
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %32, align 1
  %279 = lshr i64 %257, 61
  %280 = and i64 %279, 1
  %281 = xor i64 %277, %242
  %282 = xor i64 %277, %280
  %283 = add nuw nsw i64 %281, %282
  %284 = icmp eq i64 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %38, align 1
  %286 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %286, i64* %RCX.i220, align 8
  %287 = add i64 %223, 39
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  store i64 %259, i64* %288, align 8
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -24
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RAX.i227, align 8
  %295 = add i64 %291, 8
  store i64 %295, i64* %3, align 8
  %296 = load i64, i64* %293, align 8
  store i64 %296, i64* %RCX.i220, align 8
  %297 = add i64 %296, 12
  %298 = add i64 %291, 11
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, -1
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RDX.i182, align 8
  %303 = icmp eq i32 %300, 0
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %14, align 1
  %305 = and i32 %301, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  %310 = xor i32 %301, %300
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %26, align 1
  %314 = icmp eq i32 %301, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %29, align 1
  %316 = lshr i32 %301, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %32, align 1
  %318 = lshr i32 %300, 31
  %319 = xor i32 %316, %318
  %320 = add nuw nsw i32 %319, %318
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %38, align 1
  %323 = sext i32 %301 to i64
  store i64 %323, i64* %RCX.i220, align 8
  %324 = shl nsw i64 %323, 2
  %325 = add nsw i64 %324, 16
  %326 = add i64 %325, %294
  %327 = add i64 %291, 21
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RDX.i182, align 8
  %331 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %331, i64* %RAX.i227, align 8
  %332 = add i64 %331, 16
  store i64 %332, i64* %RCX.i220, align 8
  %333 = icmp ugt i64 %331, -17
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1
  %335 = trunc i64 %332 to i32
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i64 %331, 16
  %342 = xor i64 %341, %332
  %343 = lshr i64 %342, 4
  %344 = trunc i64 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %26, align 1
  %346 = icmp eq i64 %332, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %29, align 1
  %348 = lshr i64 %332, 63
  %349 = trunc i64 %348 to i8
  store i8 %349, i8* %32, align 1
  %350 = lshr i64 %331, 63
  %351 = xor i64 %348, %350
  %352 = add nuw nsw i64 %351, %348
  %353 = icmp eq i64 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %38, align 1
  store i64 %332, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %355 = add i64 %331, 8
  %356 = add i64 %291, 47
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  store i32 %329, i32* %357, align 4
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -24
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 4
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362, align 8
  %364 = add i64 %363, 16
  store i64 %364, i64* %RAX.i227, align 8
  %365 = icmp ugt i64 %363, -17
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %14, align 1
  %367 = trunc i64 %364 to i32
  %368 = and i32 %367, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  %373 = xor i64 %363, 16
  %374 = xor i64 %373, %364
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %26, align 1
  %378 = icmp eq i64 %364, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %29, align 1
  %380 = lshr i64 %364, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = lshr i64 %363, 63
  %383 = xor i64 %380, %382
  %384 = add nuw nsw i64 %383, %380
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1
  %387 = add i64 %358, -12
  %388 = add i64 %360, 12
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = shl nsw i64 %391, 2
  %393 = add i64 %392, %364
  store i64 %393, i64* %RAX.i227, align 8
  %394 = icmp ult i64 %393, %364
  %395 = icmp ult i64 %393, %392
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %14, align 1
  %398 = trunc i64 %393 to i32
  %399 = and i32 %398, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i64 %392, %364
  %405 = xor i64 %404, %393
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %26, align 1
  %409 = icmp eq i64 %393, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %29, align 1
  %411 = lshr i64 %393, 63
  %412 = trunc i64 %411 to i8
  store i8 %412, i8* %32, align 1
  %413 = lshr i64 %391, 61
  %414 = and i64 %413, 1
  %415 = xor i64 %411, %380
  %416 = xor i64 %411, %414
  %417 = add nuw nsw i64 %415, %416
  %418 = icmp eq i64 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %38, align 1
  %420 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %420, i64* %RCX.i220, align 8
  %421 = add i64 %360, 30
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  store i64 %393, i64* %422, align 8
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -24
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 4
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %424 to i64*
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %RAX.i227, align 8
  %429 = add i64 %423, -12
  %430 = add i64 %425, 8
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RCX.i220, align 8
  %434 = shl nsw i64 %433, 2
  %435 = add i64 %428, 16
  %436 = add i64 %435, %434
  %437 = add i64 %425, 12
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RDX.i182, align 8
  %441 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %441, i64* %RAX.i227, align 8
  %442 = add i64 %441, 16
  store i64 %442, i64* %RCX.i220, align 8
  %443 = icmp ugt i64 %441, -17
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %14, align 1
  %445 = trunc i64 %442 to i32
  %446 = and i32 %445, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i64 %441, 16
  %452 = xor i64 %451, %442
  %453 = lshr i64 %452, 4
  %454 = trunc i64 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %26, align 1
  %456 = icmp eq i64 %442, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %29, align 1
  %458 = lshr i64 %442, 63
  %459 = trunc i64 %458 to i8
  store i8 %459, i8* %32, align 1
  %460 = lshr i64 %441, 63
  %461 = xor i64 %458, %460
  %462 = add nuw nsw i64 %461, %458
  %463 = icmp eq i64 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %38, align 1
  store i64 %442, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %465 = add i64 %441, 8
  %466 = add i64 %425, 38
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  store i32 %439, i32* %467, align 4
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -24
  %470 = load i64, i64* %3, align 8
  %471 = add i64 %470, 4
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472, align 8
  %474 = add i64 %473, 12
  store i64 %474, i64* %RAX.i227, align 8
  %475 = icmp ugt i64 %473, -13
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = trunc i64 %474 to i32
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i64 %474, %473
  %484 = lshr i64 %483, 4
  %485 = trunc i64 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %26, align 1
  %487 = icmp eq i64 %474, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %29, align 1
  %489 = lshr i64 %474, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %32, align 1
  %491 = lshr i64 %473, 63
  %492 = xor i64 %489, %491
  %493 = add nuw nsw i64 %492, %489
  %494 = icmp eq i64 %493, 2
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %38, align 1
  %496 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %496, i64* %RCX.i220, align 8
  %497 = add i64 %470, 19
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i64*
  store i64 %474, i64* %498, align 8
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -24
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 4
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %500 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i227, align 8
  %505 = add i64 %504, 12
  %506 = add i64 %501, 7
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RDX.i182, align 8
  %510 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %510, i64* %RAX.i227, align 8
  %511 = add i64 %510, 16
  store i64 %511, i64* %RCX.i220, align 8
  %512 = icmp ugt i64 %510, -17
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %14, align 1
  %514 = trunc i64 %511 to i32
  %515 = and i32 %514, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %21, align 1
  %520 = xor i64 %510, 16
  %521 = xor i64 %520, %511
  %522 = lshr i64 %521, 4
  %523 = trunc i64 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %26, align 1
  %525 = icmp eq i64 %511, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %29, align 1
  %527 = lshr i64 %511, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %32, align 1
  %529 = lshr i64 %510, 63
  %530 = xor i64 %527, %529
  %531 = add nuw nsw i64 %530, %527
  %532 = icmp eq i64 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %38, align 1
  store i64 %511, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %534 = add i64 %510, 8
  %535 = add i64 %501, 33
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  store i32 %508, i32* %536, align 4
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -24
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 4
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %538 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %RAX.i227, align 8
  %543 = add i64 %539, 8
  store i64 %543, i64* %3, align 8
  %544 = load i64, i64* %541, align 8
  store i64 %544, i64* %RCX.i220, align 8
  %545 = add i64 %544, 12
  %546 = add i64 %539, 11
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %548, -1
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RDX.i182, align 8
  %551 = icmp eq i32 %548, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %14, align 1
  %553 = and i32 %549, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %21, align 1
  %558 = xor i32 %549, %548
  %559 = lshr i32 %558, 4
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  store i8 %561, i8* %26, align 1
  %562 = icmp eq i32 %549, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %29, align 1
  %564 = lshr i32 %549, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %32, align 1
  %566 = lshr i32 %548, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %566
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %38, align 1
  %571 = sext i32 %549 to i64
  store i64 %571, i64* %RCX.i220, align 8
  %572 = shl nsw i64 %571, 2
  %573 = add nsw i64 %572, 16
  %574 = add i64 %573, %542
  %575 = add i64 %539, 21
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RDX.i182, align 8
  %579 = add i64 %539, 25
  store i64 %579, i64* %3, align 8
  %580 = load i64, i64* %541, align 8
  store i64 %580, i64* %RAX.i227, align 8
  %581 = add i64 %537, -12
  %582 = add i64 %539, 29
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RCX.i220, align 8
  %586 = shl nsw i64 %585, 2
  %587 = add i64 %580, 16
  %588 = add i64 %587, %586
  %589 = add i64 %539, 33
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  store i32 %577, i32* %590, align 4
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -24
  %593 = load i64, i64* %3, align 8
  %594 = add i64 %593, 4
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RAX.i227, align 8
  %597 = add i64 %596, 12
  %598 = add i64 %593, 7
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = add i32 %600, -1
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RDX.i182, align 8
  %603 = icmp ne i32 %600, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %14, align 1
  %605 = and i32 %601, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %21, align 1
  %610 = xor i32 %600, 16
  %611 = xor i32 %610, %601
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %26, align 1
  %615 = icmp eq i32 %601, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %29, align 1
  %617 = lshr i32 %601, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %32, align 1
  %619 = lshr i32 %600, 31
  %620 = xor i32 %617, %619
  %621 = xor i32 %617, 1
  %622 = add nuw nsw i32 %620, %621
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %38, align 1
  %625 = add i64 %593, 13
  store i64 %625, i64* %3, align 8
  store i32 %601, i32* %599, align 4
  %626 = load i64, i64* %3, align 8
  %627 = add i64 %626, 24
  store i64 %627, i64* %3, align 8
  br label %block_.L_40a845

block_.L_40a832:                                  ; preds = %block_40a71c
  %628 = add i64 %223, 8
  store i64 %628, i64* %3, align 8
  %629 = load i32, i32* %145, align 4
  %630 = add i32 %629, 1
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RAX.i227, align 8
  %632 = icmp eq i32 %629, -1
  %633 = icmp eq i32 %630, 0
  %634 = or i1 %632, %633
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %14, align 1
  %636 = and i32 %630, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %21, align 1
  %641 = xor i32 %630, %629
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %26, align 1
  %645 = zext i1 %633 to i8
  store i8 %645, i8* %29, align 1
  %646 = lshr i32 %630, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %32, align 1
  %648 = lshr i32 %629, 31
  %649 = xor i32 %646, %648
  %650 = add nuw nsw i32 %649, %646
  %651 = icmp eq i32 %650, 2
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %38, align 1
  %653 = add i64 %223, 14
  store i64 %653, i64* %3, align 8
  store i32 %630, i32* %145, align 4
  %654 = load i64, i64* %3, align 8
  %655 = add i64 %654, -308
  store i64 %655, i64* %3, align 8
  br label %block_.L_40a70c

block_.L_40a845.loopexit:                         ; preds = %block_.L_40a70c
  br label %block_.L_40a845

block_.L_40a845:                                  ; preds = %block_.L_40a845.loopexit, %block_40a731
  %656 = phi i64 [ %627, %block_40a731 ], [ %182, %block_.L_40a845.loopexit ]
  %657 = add i64 %656, 5
  store i64 %657, i64* %3, align 8
  br label %block_.L_40a84a

block_.L_40a84a:                                  ; preds = %block_.L_40a845, %block_40a6f8
  %storemerge = phi i64 [ %137, %block_40a6f8 ], [ %657, %block_.L_40a845 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_40a6fb, %block_40a6f8 ], [ %2, %block_.L_40a845 ]
  %658 = load i64, i64* %6, align 8
  %659 = add i64 %658, 32
  store i64 %659, i64* %6, align 8
  %660 = icmp ugt i64 %658, -33
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %14, align 1
  %662 = trunc i64 %659 to i32
  %663 = and i32 %662, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %21, align 1
  %668 = xor i64 %659, %658
  %669 = lshr i64 %668, 4
  %670 = trunc i64 %669 to i8
  %671 = and i8 %670, 1
  store i8 %671, i8* %26, align 1
  %672 = icmp eq i64 %659, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %29, align 1
  %674 = lshr i64 %659, 63
  %675 = trunc i64 %674 to i8
  store i8 %675, i8* %32, align 1
  %676 = lshr i64 %658, 63
  %677 = xor i64 %674, %676
  %678 = add nuw nsw i64 %677, %674
  %679 = icmp eq i64 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %38, align 1
  %681 = add i64 %storemerge, 5
  store i64 %681, i64* %3, align 8
  %682 = add i64 %658, 40
  %683 = inttoptr i64 %659 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RBP.i, align 8
  store i64 %682, i64* %6, align 8
  %685 = add i64 %storemerge, 6
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %682 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %3, align 8
  %688 = add i64 %658, 48
  store i64 %688, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jle_.L_40a705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jmpq_.L_40a84a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jge_.L_40a845(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 16
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_40a832(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_movl__edx__0x10__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 16
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_40a845(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40a837(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_40a70c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
