; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
%G__0xaab3f0_type = type <{ [8 x i8] }>
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
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer
@G__0xaab3f0 = global %G__0xaab3f0_type zeroinitializer
@G__0xaaba30 = global %G__0xaaba30_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40d280.update_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d770.remove_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @assimilate_string(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RAX.i684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i681 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i681, align 4
  %42 = add i64 %10, 20
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i678 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i678, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i675 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %RCX.i675, align 8
  %RSI.i673 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %59 = shl nsw i64 %58, 2
  %60 = add nsw i64 %59, 11187184
  %61 = add i64 %54, 11
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RSI.i673, align 8
  %65 = add i64 %52, -20
  %66 = add i64 %54, 14
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 %63, i32* %67, align 4
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -20
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 744
  store i64 %75, i64* %RCX.i675, align 8
  %76 = lshr i64 %75, 63
  %RDX.i662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %77 = load i64, i64* %RAX.i684, align 8
  %78 = add i64 %75, %77
  store i64 %78, i64* %RDX.i662, align 8
  %79 = icmp ult i64 %78, %77
  %80 = icmp ult i64 %78, %75
  %81 = or i1 %79, %80
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %14, align 1
  %83 = trunc i64 %78 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %21, align 1
  %89 = xor i64 %75, %77
  %90 = xor i64 %89, %78
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1
  %94 = icmp eq i64 %78, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %29, align 1
  %96 = lshr i64 %78, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = lshr i64 %77, 63
  %99 = xor i64 %96, %98
  %100 = xor i64 %96, %76
  %101 = add nuw nsw i64 %99, %100
  %102 = icmp eq i64 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %38, align 1
  %104 = add i64 %78, 4
  %105 = add i64 %70, 20
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RSI.i673, align 8
  %109 = add i64 %68, -4
  %110 = add i64 %70, 24
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 744
  store i64 %114, i64* %RCX.i675, align 8
  %115 = lshr i64 %114, 63
  %116 = add i64 %114, %77
  store i64 %116, i64* %RDX.i662, align 8
  %117 = icmp ult i64 %116, %77
  %118 = icmp ult i64 %116, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = trunc i64 %116 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %21, align 1
  %127 = xor i64 %114, %77
  %128 = xor i64 %127, %116
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %26, align 1
  %132 = icmp eq i64 %116, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %29, align 1
  %134 = lshr i64 %116, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %32, align 1
  %136 = xor i64 %134, %98
  %137 = xor i64 %134, %115
  %138 = add nuw nsw i64 %136, %137
  %139 = icmp eq i64 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %38, align 1
  %141 = add i64 %116, 4
  %142 = add i64 %70, 40
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, %107
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI.i673, align 8
  %147 = icmp ult i32 %145, %107
  %148 = icmp ult i32 %145, %144
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %14, align 1
  %151 = and i32 %145, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %21, align 1
  %156 = xor i32 %144, %107
  %157 = xor i32 %156, %145
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %26, align 1
  %161 = icmp eq i32 %145, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1
  %163 = lshr i32 %145, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1
  %165 = lshr i32 %107, 31
  %166 = lshr i32 %144, 31
  %167 = xor i32 %163, %165
  %168 = xor i32 %163, %166
  %169 = add nuw nsw i32 %167, %168
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %38, align 1
  %172 = add i64 %70, 43
  store i64 %172, i64* %3, align 8
  store i32 %145, i32* %143, align 4
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -20
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 4
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = mul nsw i64 %179, 744
  store i64 %180, i64* %RCX.i675, align 8
  %181 = lshr i64 %180, 63
  %182 = load i64, i64* %RAX.i684, align 8
  %183 = add i64 %180, %182
  store i64 %183, i64* %RAX.i684, align 8
  %184 = icmp ult i64 %183, %182
  %185 = icmp ult i64 %183, %180
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = trunc i64 %183 to i32
  %189 = and i32 %188, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %21, align 1
  %194 = xor i64 %180, %182
  %195 = xor i64 %194, %183
  %196 = lshr i64 %195, 4
  %197 = trunc i64 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %26, align 1
  %199 = icmp eq i64 %183, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %29, align 1
  %201 = lshr i64 %183, 63
  %202 = trunc i64 %201 to i8
  store i8 %202, i8* %32, align 1
  %203 = lshr i64 %182, 63
  %204 = xor i64 %201, %203
  %205 = xor i64 %201, %181
  %206 = add nuw nsw i64 %204, %205
  %207 = icmp eq i64 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1
  %209 = add i64 %183, 8
  %210 = add i64 %175, 17
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RSI.i673, align 8
  %214 = add i64 %173, -8
  %215 = add i64 %175, 20
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  store i32 %212, i32* %216, align 4
  %ECX.i551 = bitcast %union.anon* %51 to i32*
  %SIL.i549 = bitcast %union.anon* %44 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40cdb5

block_.L_40cdb5:                                  ; preds = %block_.L_40cdb5, %entry
  %217 = phi i64 [ %388, %block_.L_40cdb5 ], [ %.pre, %entry ]
  store i64 ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64), i64* %RAX.i684, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -8
  %220 = add i64 %217, 14
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = shl nsw i64 %223, 2
  %225 = add i64 %224, ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64)
  store i64 %225, i64* %RAX.i684, align 8
  %226 = icmp ult i64 %225, ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64)
  %227 = icmp ult i64 %225, %224
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %14, align 1
  %230 = trunc i64 %225 to i32
  %231 = and i32 %230, 252
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %21, align 1
  %236 = xor i64 %224, ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64)
  %237 = xor i64 %236, %225
  %238 = lshr i64 %237, 4
  %239 = trunc i64 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %26, align 1
  %241 = icmp eq i64 %225, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %29, align 1
  %243 = lshr i64 %225, 63
  %244 = trunc i64 %243 to i8
  store i8 %244, i8* %32, align 1
  %245 = lshr i64 %223, 61
  %246 = and i64 %245, 1
  %247 = xor i64 %243, lshr (i64 ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64), i64 63)
  %248 = xor i64 %243, %246
  %249 = add nuw nsw i64 %247, %248
  %250 = icmp eq i64 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %38, align 1
  %252 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %252, i64* %RCX.i675, align 8
  %253 = add i64 %217, 32
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i64*
  store i64 %225, i64* %254, align 8
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -8
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 4
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RAX.i684, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add nsw i64 %262, 11187184
  %264 = add i64 %257, 11
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDX.i662, align 8
  %268 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %268, i64* %RAX.i684, align 8
  %269 = add i64 %268, 16
  store i64 %269, i64* %RCX.i675, align 8
  %270 = icmp ugt i64 %268, -17
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %14, align 1
  %272 = trunc i64 %269 to i32
  %273 = and i32 %272, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %21, align 1
  %278 = xor i64 %268, 16
  %279 = xor i64 %278, %269
  %280 = lshr i64 %279, 4
  %281 = trunc i64 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %26, align 1
  %283 = icmp eq i64 %269, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %29, align 1
  %285 = lshr i64 %269, 63
  %286 = trunc i64 %285 to i8
  store i8 %286, i8* %32, align 1
  %287 = lshr i64 %268, 63
  %288 = xor i64 %285, %287
  %289 = add nuw nsw i64 %288, %285
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %38, align 1
  store i64 %269, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %292 = add i64 %268, 8
  %293 = add i64 %257, 37
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  store i32 %266, i32* %294, align 4
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -4
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 3
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %296 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RDX.i662, align 8
  %302 = add i64 %295, -8
  %303 = add i64 %297, 7
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RAX.i684, align 8
  %307 = shl nsw i64 %306, 2
  %308 = add nsw i64 %307, 11187184
  %309 = add i64 %297, 14
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  store i32 %300, i32* %310, align 4
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -8
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, 3
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RDX.i662, align 8
  %318 = add i64 %311, -16
  %319 = add i64 %313, 6
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  store i32 %316, i32* %320, align 4
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -8
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, 4
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RAX.i684, align 8
  %328 = shl nsw i64 %327, 2
  %329 = add nsw i64 %328, 11188784
  %330 = add i64 %323, 11
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RDX.i662, align 8
  %334 = add i64 %323, 14
  store i64 %334, i64* %3, align 8
  store i32 %332, i32* %325, align 4
  %335 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -8
  %338 = add i64 %335, 13
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RCX.i675, align 8
  %342 = add i64 %336, -20
  %343 = add i64 %335, 17
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = mul nsw i64 %346, 744
  store i64 %347, i64* %RDX.i662, align 8
  %348 = lshr i64 %347, 63
  %349 = add i64 %347, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %349, i64* %RAX.i684, align 8
  %350 = icmp ult i64 %349, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %351 = icmp ult i64 %349, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %14, align 1
  %354 = trunc i64 %349 to i32
  %355 = and i32 %354, 248
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  %360 = xor i64 %347, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %361 = xor i64 %360, %349
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %26, align 1
  %365 = icmp eq i64 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1
  %367 = lshr i64 %349, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %32, align 1
  %369 = xor i64 %367, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %370 = xor i64 %367, %348
  %371 = add nuw nsw i64 %369, %370
  %372 = icmp eq i64 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %38, align 1
  %374 = add i64 %347, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  %375 = add i64 %335, 30
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %340, %377
  %379 = zext i1 %378 to i8
  %380 = xor i8 %379, -1
  store i8 %380, i8* %SIL.i549, align 1
  %381 = and i8 %380, 1
  store i8 0, i8* %14, align 1
  %382 = zext i8 %381 to i32
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = xor i8 %384, 1
  store i8 %385, i8* %21, align 1
  %386 = xor i8 %381, 1
  store i8 %386, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %387 = icmp eq i8 %386, 0
  %.v = select i1 %387, i64 -103, i64 48
  %388 = add i64 %335, %.v
  store i64 %388, i64* %3, align 8
  br i1 %387, label %block_.L_40cdb5, label %block_40ce4c

block_40ce4c:                                     ; preds = %block_.L_40cdb5
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RCX.i675, align 8
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -4
  %391 = add i64 %388, 24
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = mul nsw i64 %394, 744
  store i64 %395, i64* %RDX.i662, align 8
  %396 = lshr i64 %395, 63
  %397 = add i64 %395, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %397, i64* %RSI.i673, align 8
  %398 = icmp ult i64 %397, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %399 = icmp ult i64 %397, %395
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %14, align 1
  %402 = trunc i64 %397 to i32
  %403 = and i32 %402, 248
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  %408 = xor i64 %395, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %409 = xor i64 %408, %397
  %410 = lshr i64 %409, 4
  %411 = trunc i64 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %26, align 1
  %413 = icmp eq i64 %397, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %29, align 1
  %415 = lshr i64 %397, 63
  %416 = trunc i64 %415 to i8
  store i8 %416, i8* %32, align 1
  %417 = xor i64 %415, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %418 = xor i64 %415, %396
  %419 = add nuw nsw i64 %417, %418
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %38, align 1
  %RDI.i528 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %422 = add i64 %395, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  %423 = add i64 %388, 40
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 8
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RDI.i528, align 8
  %427 = add i64 %389, -24
  %428 = add i64 %388, 43
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %425, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -16
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  %437 = shl nsw i64 %436, 2
  %438 = load i64, i64* %RCX.i675, align 8
  %439 = add i64 %437, %438
  store i64 %439, i64* %RSI.i673, align 8
  %440 = icmp ult i64 %439, %438
  %441 = icmp ult i64 %439, %437
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = trunc i64 %439 to i32
  %445 = and i32 %444, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %21, align 1
  %450 = xor i64 %437, %438
  %451 = xor i64 %450, %439
  %452 = lshr i64 %451, 4
  %453 = trunc i64 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %26, align 1
  %455 = icmp eq i64 %439, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %29, align 1
  %457 = lshr i64 %439, 63
  %458 = trunc i64 %457 to i8
  store i8 %458, i8* %32, align 1
  %459 = lshr i64 %438, 63
  %460 = lshr i64 %436, 61
  %461 = and i64 %460, 1
  %462 = xor i64 %457, %459
  %463 = xor i64 %457, %461
  %464 = add nuw nsw i64 %462, %463
  %465 = icmp eq i64 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %38, align 1
  %467 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %467, i64* %RDX.i662, align 8
  %468 = add i64 %432, 25
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i64*
  store i64 %439, i64* %469, align 8
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -16
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  store i64 %476, i64* %RDX.i662, align 8
  %477 = shl nsw i64 %476, 2
  %478 = add nsw i64 %477, 11188784
  %479 = add i64 %472, 11
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RDI.i528, align 8
  %483 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %483, i64* %RDX.i662, align 8
  %484 = add i64 %483, 16
  store i64 %484, i64* %RSI.i673, align 8
  %485 = icmp ugt i64 %483, -17
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = trunc i64 %484 to i32
  %488 = and i32 %487, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %21, align 1
  %493 = xor i64 %483, 16
  %494 = xor i64 %493, %484
  %495 = lshr i64 %494, 4
  %496 = trunc i64 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %26, align 1
  %498 = icmp eq i64 %484, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %29, align 1
  %500 = lshr i64 %484, 63
  %501 = trunc i64 %500 to i8
  store i8 %501, i8* %32, align 1
  %502 = lshr i64 %483, 63
  %503 = xor i64 %500, %502
  %504 = add nuw nsw i64 %503, %500
  %505 = icmp eq i64 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %38, align 1
  store i64 %484, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %507 = add i64 %483, 8
  %508 = add i64 %472, 37
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  store i32 %481, i32* %509, align 4
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -24
  %512 = load i64, i64* %3, align 8
  %513 = add i64 %512, 4
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  %517 = shl nsw i64 %516, 2
  %518 = load i64, i64* %RCX.i675, align 8
  %519 = add i64 %517, %518
  store i64 %519, i64* %RCX.i675, align 8
  %520 = icmp ult i64 %519, %518
  %521 = icmp ult i64 %519, %517
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = trunc i64 %519 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i64 %517, %518
  %531 = xor i64 %530, %519
  %532 = lshr i64 %531, 4
  %533 = trunc i64 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %26, align 1
  %535 = icmp eq i64 %519, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %29, align 1
  %537 = lshr i64 %519, 63
  %538 = trunc i64 %537 to i8
  store i8 %538, i8* %32, align 1
  %539 = lshr i64 %518, 63
  %540 = lshr i64 %516, 61
  %541 = and i64 %540, 1
  %542 = xor i64 %537, %539
  %543 = xor i64 %537, %541
  %544 = add nuw nsw i64 %542, %543
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %38, align 1
  %547 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %547, i64* %RDX.i662, align 8
  %548 = add i64 %512, 22
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  store i64 %519, i64* %549, align 8
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -24
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 4
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RCX.i675, align 8
  %557 = shl nsw i64 %556, 2
  %558 = add nsw i64 %557, 11188784
  %559 = add i64 %552, 11
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RDI.i528, align 8
  %563 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %563, i64* %RCX.i675, align 8
  %564 = add i64 %563, 16
  store i64 %564, i64* %RDX.i662, align 8
  %565 = icmp ugt i64 %563, -17
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = trunc i64 %564 to i32
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  %573 = xor i64 %563, 16
  %574 = xor i64 %573, %564
  %575 = lshr i64 %574, 4
  %576 = trunc i64 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %26, align 1
  %578 = icmp eq i64 %564, 0
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %29, align 1
  %580 = lshr i64 %564, 63
  %581 = trunc i64 %580 to i8
  store i8 %581, i8* %32, align 1
  %582 = lshr i64 %563, 63
  %583 = xor i64 %580, %582
  %584 = add nuw nsw i64 %583, %580
  %585 = icmp eq i64 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %38, align 1
  store i64 %564, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %587 = add i64 %563, 8
  %588 = add i64 %552, 37
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  store i32 %561, i32* %589, align 4
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -24
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 4
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  store i64 %596, i64* %RCX.i675, align 8
  %597 = shl nsw i64 %596, 2
  %598 = add nsw i64 %597, 11188784
  %599 = add i64 %592, 11
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RDI.i528, align 8
  %603 = add i64 %590, -16
  %604 = add i64 %592, 15
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sext i32 %606 to i64
  store i64 %607, i64* %RCX.i675, align 8
  %608 = shl nsw i64 %607, 2
  %609 = add nsw i64 %608, 11188784
  %610 = add i64 %592, 22
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  store i32 %601, i32* %611, align 4
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -20
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 4
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = mul nsw i64 %618, 744
  store i64 %619, i64* %RCX.i675, align 8
  %620 = lshr i64 %619, 63
  %621 = load i64, i64* %RAX.i684, align 8
  %622 = add i64 %619, %621
  store i64 %622, i64* %RDX.i662, align 8
  %623 = icmp ult i64 %622, %621
  %624 = icmp ult i64 %622, %619
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %14, align 1
  %627 = trunc i64 %622 to i32
  %628 = and i32 %627, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %21, align 1
  %633 = xor i64 %619, %621
  %634 = xor i64 %633, %622
  %635 = lshr i64 %634, 4
  %636 = trunc i64 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %26, align 1
  %638 = icmp eq i64 %622, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %29, align 1
  %640 = lshr i64 %622, 63
  %641 = trunc i64 %640 to i8
  store i8 %641, i8* %32, align 1
  %642 = lshr i64 %621, 63
  %643 = xor i64 %640, %642
  %644 = xor i64 %640, %620
  %645 = add nuw nsw i64 %643, %644
  %646 = icmp eq i64 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %38, align 1
  %648 = add i64 %622, 8
  %649 = add i64 %614, 20
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RDI.i528, align 8
  %653 = add i64 %612, -24
  %654 = add i64 %614, 24
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = sext i32 %656 to i64
  store i64 %657, i64* %RCX.i675, align 8
  %658 = shl nsw i64 %657, 2
  %659 = add nsw i64 %658, 11188784
  %660 = add i64 %614, 31
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 %651, i32* %661, align 4
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -20
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  %669 = mul nsw i64 %668, 744
  store i64 %669, i64* %RCX.i675, align 8
  %670 = lshr i64 %669, 63
  %671 = load i64, i64* %RAX.i684, align 8
  %672 = add i64 %669, %671
  store i64 %672, i64* %RAX.i684, align 8
  %673 = icmp ult i64 %672, %671
  %674 = icmp ult i64 %672, %669
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %14, align 1
  %677 = trunc i64 %672 to i32
  %678 = and i32 %677, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i64 %669, %671
  %684 = xor i64 %683, %672
  %685 = lshr i64 %684, 4
  %686 = trunc i64 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %26, align 1
  %688 = icmp eq i64 %672, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %29, align 1
  %690 = lshr i64 %672, 63
  %691 = trunc i64 %690 to i8
  store i8 %691, i8* %32, align 1
  %692 = lshr i64 %671, 63
  %693 = xor i64 %690, %692
  %694 = xor i64 %690, %670
  %695 = add nuw nsw i64 %693, %694
  %696 = icmp eq i64 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %38, align 1
  %698 = add i64 %672, 8
  %699 = add i64 %664, 17
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RDI.i528, align 8
  %703 = add i64 %662, -24
  %704 = add i64 %664, 20
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = sub i32 %701, %706
  %708 = icmp ult i32 %701, %706
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %14, align 1
  %710 = and i32 %707, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i32 %706, %701
  %716 = xor i32 %715, %707
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %26, align 1
  %720 = icmp eq i32 %707, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %29, align 1
  %722 = lshr i32 %707, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %32, align 1
  %724 = lshr i32 %701, 31
  %725 = lshr i32 %706, 31
  %726 = xor i32 %725, %724
  %727 = xor i32 %722, %724
  %728 = add nuw nsw i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %38, align 1
  %731 = icmp ne i8 %723, 0
  %732 = xor i1 %731, %729
  %.v25 = select i1 %732, i64 26, i64 73
  %733 = add i64 %664, %.v25
  store i64 %733, i64* %3, align 8
  br i1 %732, label %block_40cf3f, label %block_.L_40cf6e

block_40cf3f:                                     ; preds = %block_40ce4c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -20
  %736 = add i64 %733, 14
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = sext i32 %738 to i64
  %740 = mul nsw i64 %739, 744
  store i64 %740, i64* %RCX.i675, align 8
  %741 = lshr i64 %740, 63
  %742 = add i64 %740, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %742, i64* %RDX.i662, align 8
  %743 = icmp ult i64 %742, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %744 = icmp ult i64 %742, %740
  %745 = or i1 %743, %744
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %14, align 1
  %747 = trunc i64 %742 to i32
  %748 = and i32 %747, 248
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %21, align 1
  %753 = xor i64 %740, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %754 = xor i64 %753, %742
  %755 = lshr i64 %754, 4
  %756 = trunc i64 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %26, align 1
  %758 = icmp eq i64 %742, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %29, align 1
  %760 = lshr i64 %742, 63
  %761 = trunc i64 %760 to i8
  store i8 %761, i8* %32, align 1
  %762 = xor i64 %760, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %763 = xor i64 %760, %741
  %764 = add nuw nsw i64 %762, %763
  %765 = icmp eq i64 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %38, align 1
  %767 = add i64 %740, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  %768 = add i64 %733, 30
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 8
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RSI.i673, align 8
  %772 = add i64 %734, -4
  %773 = add i64 %733, 34
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = sext i32 %775 to i64
  %777 = mul nsw i64 %776, 744
  store i64 %777, i64* %RCX.i675, align 8
  %778 = lshr i64 %777, 63
  %779 = load i64, i64* %RAX.i684, align 8
  %780 = add i64 %777, %779
  store i64 %780, i64* %RAX.i684, align 8
  %781 = icmp ult i64 %780, %779
  %782 = icmp ult i64 %780, %777
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %14, align 1
  %785 = trunc i64 %780 to i32
  %786 = and i32 %785, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %21, align 1
  %791 = xor i64 %777, %779
  %792 = xor i64 %791, %780
  %793 = lshr i64 %792, 4
  %794 = trunc i64 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %26, align 1
  %796 = icmp eq i64 %780, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %29, align 1
  %798 = lshr i64 %780, 63
  %799 = trunc i64 %798 to i8
  store i8 %799, i8* %32, align 1
  %800 = lshr i64 %779, 63
  %801 = xor i64 %798, %800
  %802 = xor i64 %798, %778
  %803 = add nuw nsw i64 %801, %802
  %804 = icmp eq i64 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %38, align 1
  %806 = add i64 %780, 8
  %807 = add i64 %733, 47
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  store i32 %770, i32* %808, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_40cf6e

block_.L_40cf6e:                                  ; preds = %block_40ce4c, %block_40cf3f
  %809 = phi i64 [ %733, %block_40ce4c ], [ %.pre17, %block_40cf3f ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -20
  %812 = add i64 %809, 14
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sext i32 %814 to i64
  %816 = mul nsw i64 %815, 744
  store i64 %816, i64* %RCX.i675, align 8
  %817 = lshr i64 %816, 63
  %818 = add i64 %816, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %818, i64* %RAX.i684, align 8
  %819 = icmp ult i64 %818, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %820 = icmp ult i64 %818, %816
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = trunc i64 %818 to i32
  %824 = and i32 %823, 248
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %21, align 1
  %829 = xor i64 %816, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %830 = xor i64 %829, %818
  %831 = lshr i64 %830, 4
  %832 = trunc i64 %831 to i8
  %833 = and i8 %832, 1
  store i8 %833, i8* %26, align 1
  %834 = icmp eq i64 %818, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %29, align 1
  %836 = lshr i64 %818, 63
  %837 = trunc i64 %836 to i8
  store i8 %837, i8* %32, align 1
  %838 = xor i64 %836, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %839 = xor i64 %836, %817
  %840 = add nuw nsw i64 %838, %839
  %841 = icmp eq i64 %840, 2
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %38, align 1
  %843 = add i64 %816, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %844 = add i64 %809, 28
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = add i32 %846, -20
  %848 = icmp ult i32 %846, 20
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %14, align 1
  %850 = and i32 %847, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %21, align 1
  %855 = xor i32 %846, 16
  %856 = xor i32 %855, %847
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = icmp eq i32 %847, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %847, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  %864 = lshr i32 %846, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1
  %869 = icmp ne i8 %863, 0
  %870 = xor i1 %869, %867
  %.demorgan = or i1 %860, %870
  %.v26 = select i1 %.demorgan, i64 34, i64 328
  %871 = add i64 %809, %.v26
  store i64 %871, i64* %3, align 8
  br i1 %.demorgan, label %block_40cf90, label %block_.L_40d0b6

block_40cf90:                                     ; preds = %block_.L_40cf6e
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -12
  %874 = add i64 %871, 7
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  store i32 0, i32* %875, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_40cf97

block_.L_40cf97:                                  ; preds = %block_.L_40d09e, %block_40cf90
  %876 = phi i64 [ %1299, %block_.L_40d09e ], [ %.pre18, %block_40cf90 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -12
  %879 = add i64 %876, 13
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RCX.i675, align 8
  %883 = add i64 %877, -20
  %884 = add i64 %876, 17
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sext i32 %886 to i64
  %888 = mul nsw i64 %887, 744
  store i64 %888, i64* %RDX.i662, align 8
  %889 = lshr i64 %888, 63
  %890 = add i64 %888, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %890, i64* %RAX.i684, align 8
  %891 = icmp ult i64 %890, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %892 = icmp ult i64 %890, %888
  %893 = or i1 %891, %892
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %14, align 1
  %895 = trunc i64 %890 to i32
  %896 = and i32 %895, 248
  %897 = tail call i32 @llvm.ctpop.i32(i32 %896)
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = xor i8 %899, 1
  store i8 %900, i8* %21, align 1
  %901 = xor i64 %888, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %902 = xor i64 %901, %890
  %903 = lshr i64 %902, 4
  %904 = trunc i64 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %26, align 1
  %906 = icmp eq i64 %890, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %29, align 1
  %908 = lshr i64 %890, 63
  %909 = trunc i64 %908 to i8
  store i8 %909, i8* %32, align 1
  %910 = xor i64 %908, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %911 = xor i64 %908, %889
  %912 = add nuw nsw i64 %910, %911
  %913 = icmp eq i64 %912, 2
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %38, align 1
  %915 = add i64 %888, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %916 = add i64 %876, 30
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = sub i32 %881, %918
  %920 = icmp ult i32 %881, %918
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %919, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %918, %881
  %928 = xor i32 %927, %919
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1
  %932 = icmp eq i32 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %29, align 1
  %934 = lshr i32 %919, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %32, align 1
  %936 = lshr i32 %881, 31
  %937 = lshr i32 %918, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %934, %936
  %940 = add nuw nsw i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %38, align 1
  %943 = icmp ne i8 %935, 0
  %944 = xor i1 %943, %941
  %.v29 = select i1 %944, i64 36, i64 282
  %945 = add i64 %876, %.v29
  store i64 %945, i64* %3, align 8
  br i1 %944, label %block_40cfbb, label %block_.L_40d0b1

block_40cfbb:                                     ; preds = %block_.L_40cf97
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -20
  %948 = add i64 %945, 14
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  %952 = mul nsw i64 %951, 744
  store i64 %952, i64* %RCX.i675, align 8
  %953 = lshr i64 %952, 63
  %954 = add i64 %952, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %954, i64* %RAX.i684, align 8
  %955 = icmp ult i64 %954, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %956 = icmp ult i64 %954, %952
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %14, align 1
  %959 = trunc i64 %954 to i32
  %960 = and i32 %959, 248
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i64 %952, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %966 = xor i64 %965, %954
  %967 = lshr i64 %966, 4
  %968 = trunc i64 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = icmp eq i64 %954, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %29, align 1
  %972 = lshr i64 %954, 63
  %973 = trunc i64 %972 to i8
  store i8 %973, i8* %32, align 1
  %974 = xor i64 %972, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %975 = xor i64 %972, %953
  %976 = add nuw nsw i64 %974, %975
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %38, align 1
  %979 = add i64 %946, -12
  %980 = add i64 %945, 28
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  store i64 %983, i64* %RCX.i675, align 8
  %984 = shl nsw i64 %983, 2
  %985 = add i64 %952, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  %986 = add i64 %985, %984
  %987 = add i64 %945, 32
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RDX.i662, align 8
  %991 = add i64 %946, -28
  %992 = add i64 %945, 35
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  store i32 %989, i32* %993, align 4
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -28
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 4
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = sext i32 %999 to i64
  store i64 %1000, i64* %RAX.i684, align 8
  %1001 = add nsw i64 %1000, 12099168
  %1002 = add i64 %996, 12
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i8*
  %1004 = load i8, i8* %1003, align 1
  %1005 = zext i8 %1004 to i64
  store i64 %1005, i64* %RDX.i662, align 8
  %1006 = zext i8 %1004 to i32
  store i8 0, i8* %14, align 1
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1011 = icmp eq i8 %1004, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v30 = select i1 %1011, i64 21, i64 192
  %1013 = add i64 %996, %.v30
  store i64 %1013, i64* %3, align 8
  br i1 %1011, label %block_40cff3, label %block_.L_40d09e

block_40cff3:                                     ; preds = %block_40cfbb
  %1014 = add i64 %1013, 4
  store i64 %1014, i64* %3, align 8
  %1015 = load i32, i32* %998, align 4
  %1016 = sext i32 %1015 to i64
  store i64 %1016, i64* %RAX.i684, align 8
  %1017 = shl nsw i64 %1016, 2
  %1018 = add nsw i64 %1017, 11185584
  %1019 = add i64 %1013, 11
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RCX.i675, align 8
  %1023 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1024 = sub i32 %1021, %1023
  %1025 = icmp ult i32 %1021, %1023
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %14, align 1
  %1027 = and i32 %1024, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %21, align 1
  %1032 = xor i32 %1023, %1021
  %1033 = xor i32 %1032, %1024
  %1034 = lshr i32 %1033, 4
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  store i8 %1036, i8* %26, align 1
  %1037 = icmp eq i32 %1024, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %29, align 1
  %1039 = lshr i32 %1024, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %32, align 1
  %1041 = lshr i32 %1021, 31
  %1042 = lshr i32 %1023, 31
  %1043 = xor i32 %1042, %1041
  %1044 = xor i32 %1039, %1041
  %1045 = add nuw nsw i32 %1044, %1043
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %38, align 1
  %.v31 = select i1 %1037, i64 171, i64 24
  %1048 = add i64 %1013, %.v31
  store i64 %1048, i64* %3, align 8
  br i1 %1037, label %block_.L_40d09e, label %block_40d00b

block_40d00b:                                     ; preds = %block_40cff3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1049 = add i64 %994, -4
  %1050 = add i64 %1048, 19
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = mul nsw i64 %1053, 744
  store i64 %1054, i64* %RCX.i675, align 8
  %1055 = lshr i64 %1054, 63
  %1056 = add i64 %1054, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1056, i64* %RAX.i684, align 8
  %1057 = icmp ult i64 %1056, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1058 = icmp ult i64 %1056, %1054
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = trunc i64 %1056 to i32
  %1062 = and i32 %1061, 248
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %21, align 1
  %1067 = xor i64 %1054, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1068 = xor i64 %1067, %1056
  %1069 = lshr i64 %1068, 4
  %1070 = trunc i64 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %26, align 1
  %1072 = icmp eq i64 %1056, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %29, align 1
  %1074 = lshr i64 %1056, 63
  %1075 = trunc i64 %1074 to i8
  store i8 %1075, i8* %32, align 1
  %1076 = xor i64 %1074, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1077 = xor i64 %1074, %1055
  %1078 = add nuw nsw i64 %1076, %1077
  %1079 = icmp eq i64 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %38, align 1
  %1081 = add i64 %1054, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1082 = add i64 %1048, 33
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = add i32 %1084, -20
  %1086 = icmp ult i32 %1084, 20
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %14, align 1
  %1088 = and i32 %1085, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  %1093 = xor i32 %1084, 16
  %1094 = xor i32 %1093, %1085
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %26, align 1
  %1098 = icmp eq i32 %1085, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %29, align 1
  %1100 = lshr i32 %1085, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %32, align 1
  %1102 = lshr i32 %1084, 31
  %1103 = xor i32 %1100, %1102
  %1104 = add nuw nsw i32 %1103, %1102
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %38, align 1
  %1107 = icmp ne i8 %1101, 0
  %1108 = xor i1 %1107, %1105
  %.v32 = select i1 %1108, i64 39, i64 91
  %1109 = add i64 %1048, %.v32
  store i64 %1109, i64* %3, align 8
  br i1 %1108, label %block_40d032, label %block_.L_40d066

block_40d032:                                     ; preds = %block_40d00b
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -28
  %1112 = add i64 %1109, 13
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RCX.i675, align 8
  %1116 = add i64 %1110, -4
  %1117 = add i64 %1109, 17
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = mul nsw i64 %1120, 744
  store i64 %1121, i64* %RDX.i662, align 8
  %1122 = lshr i64 %1121, 63
  %1123 = add i64 %1121, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1123, i64* %RSI.i673, align 8
  %1124 = icmp ult i64 %1123, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1125 = icmp ult i64 %1123, %1121
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %14, align 1
  %1128 = trunc i64 %1123 to i32
  %1129 = and i32 %1128, 248
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i64 %1121, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1135 = xor i64 %1134, %1123
  %1136 = lshr i64 %1135, 4
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  store i8 %1138, i8* %26, align 1
  %1139 = icmp eq i64 %1123, 0
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %29, align 1
  %1141 = lshr i64 %1123, 63
  %1142 = trunc i64 %1141 to i8
  store i8 %1142, i8* %32, align 1
  %1143 = xor i64 %1141, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1144 = xor i64 %1141, %1122
  %1145 = add nuw nsw i64 %1143, %1144
  %1146 = icmp eq i64 %1145, 2
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %38, align 1
  %1148 = add i64 %1109, 34
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1118, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = mul nsw i64 %1150, 744
  store i64 %1151, i64* %RDX.i662, align 8
  %1152 = lshr i64 %1151, 63
  %1153 = load i64, i64* %RAX.i684, align 8
  %1154 = add i64 %1151, %1153
  store i64 %1154, i64* %RAX.i684, align 8
  %1155 = icmp ult i64 %1154, %1153
  %1156 = icmp ult i64 %1154, %1151
  %1157 = or i1 %1155, %1156
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = trunc i64 %1154 to i32
  %1160 = and i32 %1159, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %21, align 1
  %1165 = xor i64 %1151, %1153
  %1166 = xor i64 %1165, %1154
  %1167 = lshr i64 %1166, 4
  %1168 = trunc i64 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %26, align 1
  %1170 = icmp eq i64 %1154, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %29, align 1
  %1172 = lshr i64 %1154, 63
  %1173 = trunc i64 %1172 to i8
  store i8 %1173, i8* %32, align 1
  %1174 = lshr i64 %1153, 63
  %1175 = xor i64 %1172, %1174
  %1176 = xor i64 %1172, %1152
  %1177 = add nuw nsw i64 %1175, %1176
  %1178 = icmp eq i64 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %38, align 1
  %1180 = add i64 %1154, 12
  %1181 = add i64 %1109, 48
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = sext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i684, align 8
  %1185 = load i64, i64* %RSI.i673, align 8
  %1186 = shl nsw i64 %1184, 2
  %1187 = add i64 %1185, 16
  %1188 = add i64 %1187, %1186
  %1189 = load i32, i32* %ECX.i551, align 4
  %1190 = add i64 %1109, 52
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1188 to i32*
  store i32 %1189, i32* %1191, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_40d066

block_.L_40d066:                                  ; preds = %block_40d00b, %block_40d032
  %1192 = phi i64 [ %1109, %block_40d00b ], [ %.pre19, %block_40d032 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -4
  %1195 = add i64 %1192, 14
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = mul nsw i64 %1198, 744
  store i64 %1199, i64* %RCX.i675, align 8
  %1200 = lshr i64 %1199, 63
  %1201 = add i64 %1199, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1201, i64* %RAX.i684, align 8
  %1202 = icmp ult i64 %1201, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1203 = icmp ult i64 %1201, %1199
  %1204 = or i1 %1202, %1203
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %14, align 1
  %1206 = trunc i64 %1201 to i32
  %1207 = and i32 %1206, 248
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %21, align 1
  %1212 = xor i64 %1199, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1213 = xor i64 %1212, %1201
  %1214 = lshr i64 %1213, 4
  %1215 = trunc i64 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %26, align 1
  %1217 = icmp eq i64 %1201, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %29, align 1
  %1219 = lshr i64 %1201, 63
  %1220 = trunc i64 %1219 to i8
  store i8 %1220, i8* %32, align 1
  %1221 = xor i64 %1219, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1222 = xor i64 %1219, %1200
  %1223 = add nuw nsw i64 %1221, %1222
  %1224 = icmp eq i64 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %38, align 1
  %1226 = add i64 %1199, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1227 = add i64 %1192, 27
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = add i32 %1229, 1
  %1231 = icmp eq i32 %1229, -1
  %1232 = icmp eq i32 %1230, 0
  %1233 = or i1 %1231, %1232
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %14, align 1
  %1235 = and i32 %1230, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %21, align 1
  %1240 = xor i32 %1230, %1229
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %26, align 1
  %1244 = zext i1 %1232 to i8
  store i8 %1244, i8* %29, align 1
  %1245 = lshr i32 %1230, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %32, align 1
  %1247 = lshr i32 %1229, 31
  %1248 = xor i32 %1245, %1247
  %1249 = add nuw nsw i32 %1248, %1245
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %38, align 1
  %1252 = add i64 %1192, 33
  store i64 %1252, i64* %3, align 8
  store i32 %1230, i32* %1228, align 4
  %1253 = load i64, i64* %3, align 8
  %1254 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RDX.i662, align 8
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -28
  %1258 = add i64 %1253, 11
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i684, align 8
  %1262 = shl nsw i64 %1261, 2
  %1263 = add nsw i64 %1262, 11185584
  %1264 = add i64 %1253, 18
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  store i32 %1254, i32* %1265, align 4
  %1266 = load i64, i64* %3, align 8
  %1267 = add i64 %1266, 5
  store i64 %1267, i64* %3, align 8
  %.pre20 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d09e

block_.L_40d09e:                                  ; preds = %block_40cfbb, %block_.L_40d066, %block_40cff3
  %1268 = phi i64 [ %.pre20, %block_.L_40d066 ], [ %994, %block_40cff3 ], [ %994, %block_40cfbb ]
  %1269 = phi i64 [ %1267, %block_.L_40d066 ], [ %1048, %block_40cff3 ], [ %1013, %block_40cfbb ]
  %1270 = add i64 %1268, -12
  %1271 = add i64 %1269, 8
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = add i32 %1273, 1
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RAX.i684, align 8
  %1276 = icmp eq i32 %1273, -1
  %1277 = icmp eq i32 %1274, 0
  %1278 = or i1 %1276, %1277
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %14, align 1
  %1280 = and i32 %1274, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %21, align 1
  %1285 = xor i32 %1274, %1273
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %26, align 1
  %1289 = zext i1 %1277 to i8
  store i8 %1289, i8* %29, align 1
  %1290 = lshr i32 %1274, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %32, align 1
  %1292 = lshr i32 %1273, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1290
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %38, align 1
  %1297 = add i64 %1269, 14
  store i64 %1297, i64* %3, align 8
  store i32 %1274, i32* %1272, align 4
  %1298 = load i64, i64* %3, align 8
  %1299 = add i64 %1298, -277
  store i64 %1299, i64* %3, align 8
  br label %block_.L_40cf97

block_.L_40d0b1:                                  ; preds = %block_.L_40cf97
  %1300 = add i64 %945, 61
  store i64 %1300, i64* %3, align 8
  br label %block_.L_40d0ee

block_.L_40d0b6:                                  ; preds = %block_.L_40cf6e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1301 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1302 = add i32 %1301, 1
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RCX.i675, align 8
  %1304 = icmp eq i32 %1301, -1
  %1305 = icmp eq i32 %1302, 0
  %1306 = or i1 %1304, %1305
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %14, align 1
  %1308 = and i32 %1302, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %21, align 1
  %1313 = xor i32 %1302, %1301
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %26, align 1
  %1317 = zext i1 %1305 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i32 %1302, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %32, align 1
  %1320 = lshr i32 %1301, 31
  %1321 = xor i32 %1318, %1320
  %1322 = add nuw nsw i32 %1321, %1318
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %38, align 1
  store i32 %1302, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -4
  %1327 = add i64 %871, 31
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = mul nsw i64 %1330, 744
  store i64 %1331, i64* %RDX.i662, align 8
  %1332 = lshr i64 %1331, 63
  %1333 = add i64 %1331, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1333, i64* %RAX.i684, align 8
  %1334 = icmp ult i64 %1333, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1335 = icmp ult i64 %1333, %1331
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = trunc i64 %1333 to i32
  %1339 = and i32 %1338, 248
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %21, align 1
  %1344 = xor i64 %1331, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1345 = xor i64 %1344, %1333
  %1346 = lshr i64 %1345, 4
  %1347 = trunc i64 %1346 to i8
  %1348 = and i8 %1347, 1
  store i8 %1348, i8* %26, align 1
  %1349 = icmp eq i64 %1333, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %29, align 1
  %1351 = lshr i64 %1333, 63
  %1352 = trunc i64 %1351 to i8
  store i8 %1352, i8* %32, align 1
  %1353 = xor i64 %1351, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1354 = xor i64 %1351, %1332
  %1355 = add nuw nsw i64 %1353, %1354
  %1356 = icmp eq i64 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %38, align 1
  %1358 = add i64 %1331, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1359 = add i64 %871, 48
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  store i32 0, i32* %1360, align 4
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -4
  %1363 = load i64, i64* %3, align 8
  %1364 = add i64 %1363, 3
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1362 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RDI.i528, align 8
  %1368 = add i64 %1363, 410
  %1369 = add i64 %1363, 8
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_40d0e9 = tail call %struct.Memory* @sub_40d280.update_liberties(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %2)
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_40d0ee

block_.L_40d0ee:                                  ; preds = %block_.L_40d0b6, %block_.L_40d0b1
  %1373 = phi i64 [ %.pre21, %block_.L_40d0b6 ], [ %1300, %block_.L_40d0b1 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_40d0e9, %block_.L_40d0b6 ], [ %2, %block_.L_40d0b1 ]
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -12
  %1376 = add i64 %1373, 7
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  store i32 0, i32* %1377, align 4
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i78 = bitcast %union.anon* %1378 to i32*
  %1379 = getelementptr inbounds %union.anon, %union.anon* %1378, i64 0, i32 0
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_40d0f5

block_.L_40d0f5:                                  ; preds = %block_.L_40d25b, %block_.L_40d0ee
  %1381 = phi i64 [ %1974, %block_.L_40d25b ], [ %.pre22, %block_.L_40d0ee ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -12
  %1384 = add i64 %1381, 13
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i675, align 8
  %1388 = add i64 %1382, -20
  %1389 = add i64 %1381, 17
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  %1392 = sext i32 %1391 to i64
  %1393 = mul nsw i64 %1392, 744
  store i64 %1393, i64* %RDX.i662, align 8
  %1394 = lshr i64 %1393, 63
  %1395 = add i64 %1393, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1395, i64* %RAX.i684, align 8
  %1396 = icmp ult i64 %1395, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1397 = icmp ult i64 %1395, %1393
  %1398 = or i1 %1396, %1397
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %14, align 1
  %1400 = trunc i64 %1395 to i32
  %1401 = and i32 %1400, 248
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i64 %1393, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1407 = xor i64 %1406, %1395
  %1408 = lshr i64 %1407, 4
  %1409 = trunc i64 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %26, align 1
  %1411 = icmp eq i64 %1395, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %29, align 1
  %1413 = lshr i64 %1395, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %32, align 1
  %1415 = xor i64 %1413, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1416 = xor i64 %1413, %1394
  %1417 = add nuw nsw i64 %1415, %1416
  %1418 = icmp eq i64 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %38, align 1
  %1420 = add i64 %1393, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  %1421 = add i64 %1381, 30
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 8
  %1424 = sub i32 %1386, %1423
  %1425 = icmp ult i32 %1386, %1423
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %14, align 1
  %1427 = and i32 %1424, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i32 %1423, %1386
  %1433 = xor i32 %1432, %1424
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %26, align 1
  %1437 = icmp eq i32 %1424, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %29, align 1
  %1439 = lshr i32 %1424, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %32, align 1
  %1441 = lshr i32 %1386, 31
  %1442 = lshr i32 %1423, 31
  %1443 = xor i32 %1442, %1441
  %1444 = xor i32 %1439, %1441
  %1445 = add nuw nsw i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %38, align 1
  %1448 = icmp ne i8 %1440, 0
  %1449 = xor i1 %1448, %1446
  %.v27 = select i1 %1449, i64 36, i64 377
  %1450 = add i64 %1381, %.v27
  store i64 %1450, i64* %3, align 8
  br i1 %1449, label %block_40d119, label %block_.L_40d26e

block_40d119:                                     ; preds = %block_.L_40d0f5
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -20
  %1453 = add i64 %1450, 14
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = mul nsw i64 %1456, 744
  store i64 %1457, i64* %RCX.i675, align 8
  %1458 = lshr i64 %1457, 63
  %1459 = add i64 %1457, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1459, i64* %RAX.i684, align 8
  %1460 = icmp ult i64 %1459, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1461 = icmp ult i64 %1459, %1457
  %1462 = or i1 %1460, %1461
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = trunc i64 %1459 to i32
  %1465 = and i32 %1464, 248
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %21, align 1
  %1470 = xor i64 %1457, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1471 = xor i64 %1470, %1459
  %1472 = lshr i64 %1471, 4
  %1473 = trunc i64 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %26, align 1
  %1475 = icmp eq i64 %1459, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %29, align 1
  %1477 = lshr i64 %1459, 63
  %1478 = trunc i64 %1477 to i8
  store i8 %1478, i8* %32, align 1
  %1479 = xor i64 %1477, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1480 = xor i64 %1477, %1458
  %1481 = add nuw nsw i64 %1479, %1480
  %1482 = icmp eq i64 %1481, 2
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %38, align 1
  %1484 = add i64 %1451, -12
  %1485 = add i64 %1450, 28
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i675, align 8
  %1489 = shl nsw i64 %1488, 2
  %1490 = add i64 %1457, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 100)
  %1491 = add i64 %1490, %1489
  %1492 = add i64 %1450, 32
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RDX.i662, align 8
  %1496 = add i64 %1451, -32
  %1497 = add i64 %1450, 35
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  store i32 %1494, i32* %1498, align 4
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -32
  %1501 = load i64, i64* %3, align 8
  %1502 = add i64 %1501, 3
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RDI.i528, align 8
  %1506 = add i64 %1499, -20
  %1507 = add i64 %1501, 6
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RSI.i673, align 8
  %1511 = add i64 %1501, 1588
  %1512 = add i64 %1501, 11
  %1513 = load i64, i64* %6, align 8
  %1514 = add i64 %1513, -8
  %1515 = inttoptr i64 %1514 to i64*
  store i64 %1512, i64* %1515, align 8
  store i64 %1514, i64* %6, align 8
  store i64 %1511, i64* %3, align 8
  %call2_40d142 = tail call %struct.Memory* @sub_40d770.remove_neighbor(%struct.State* nonnull %0, i64 %1511, %struct.Memory* %MEMORY.5)
  %1516 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -32
  %1519 = add i64 %1516, 14
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = sext i32 %1521 to i64
  %1523 = mul nsw i64 %1522, 744
  store i64 %1523, i64* %RCX.i675, align 8
  %1524 = lshr i64 %1523, 63
  %1525 = add i64 %1523, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1525, i64* %RAX.i684, align 8
  %1526 = icmp ult i64 %1525, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1527 = icmp ult i64 %1525, %1523
  %1528 = or i1 %1526, %1527
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %14, align 1
  %1530 = trunc i64 %1525 to i32
  %1531 = and i32 %1530, 248
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i64 %1523, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1537 = xor i64 %1536, %1525
  %1538 = lshr i64 %1537, 4
  %1539 = trunc i64 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %26, align 1
  %1541 = icmp eq i64 %1525, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %29, align 1
  %1543 = lshr i64 %1525, 63
  %1544 = trunc i64 %1543 to i8
  store i8 %1544, i8* %32, align 1
  %1545 = xor i64 %1543, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1546 = xor i64 %1543, %1524
  %1547 = add nuw nsw i64 %1545, %1546
  %1548 = icmp eq i64 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %38, align 1
  %1550 = add i64 %1523, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1551 = add i64 %1516, 30
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RDX.i662, align 8
  %1555 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1556 = sub i32 %1553, %1555
  %1557 = icmp ult i32 %1553, %1555
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %14, align 1
  %1559 = and i32 %1556, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %21, align 1
  %1564 = xor i32 %1555, %1553
  %1565 = xor i32 %1564, %1556
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %26, align 1
  %1569 = icmp eq i32 %1556, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %29, align 1
  %1571 = lshr i32 %1556, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %32, align 1
  %1573 = lshr i32 %1553, 31
  %1574 = lshr i32 %1555, 31
  %1575 = xor i32 %1574, %1573
  %1576 = xor i32 %1571, %1573
  %1577 = add nuw nsw i32 %1576, %1575
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %38, align 1
  %.v28 = select i1 %1569, i64 276, i64 43
  %1580 = add i64 %1516, %.v28
  store i64 %1580, i64* %3, align 8
  br i1 %1569, label %block_.L_40d25b, label %block_40d172

block_40d172:                                     ; preds = %block_40d119
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i684, align 8
  %1581 = load i64, i64* %RBP.i, align 8
  %1582 = add i64 %1581, -32
  %1583 = add i64 %1580, 14
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = mul nsw i64 %1586, 744
  %1588 = add i64 %1587, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1589 = lshr i64 %1588, 63
  %1590 = add i64 %1587, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 96)
  store i64 %1590, i64* %RDX.i662, align 8
  %1591 = icmp ugt i64 %1588, -97
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %14, align 1
  %1593 = trunc i64 %1590 to i32
  %1594 = and i32 %1593, 248
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %21, align 1
  %1599 = xor i64 %1590, %1588
  %1600 = lshr i64 %1599, 4
  %1601 = trunc i64 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %26, align 1
  %1603 = icmp eq i64 %1590, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %29, align 1
  %1605 = lshr i64 %1590, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %32, align 1
  %1607 = xor i64 %1605, %1589
  %1608 = add nuw nsw i64 %1607, %1605
  %1609 = icmp eq i64 %1608, 2
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %38, align 1
  %1611 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1611, i64* %RCX.i675, align 8
  %1612 = add i64 %1580, 42
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  store i64 %1590, i64* %1613, align 8
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -32
  %1616 = load i64, i64* %3, align 8
  %1617 = add i64 %1616, 4
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1615 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = sext i32 %1619 to i64
  %1621 = mul nsw i64 %1620, 744
  store i64 %1621, i64* %RCX.i675, align 8
  %1622 = lshr i64 %1621, 63
  %1623 = load i64, i64* %RAX.i684, align 8
  %1624 = add i64 %1621, %1623
  store i64 %1624, i64* %RDX.i662, align 8
  %1625 = icmp ult i64 %1624, %1623
  %1626 = icmp ult i64 %1624, %1621
  %1627 = or i1 %1625, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = trunc i64 %1624 to i32
  %1630 = and i32 %1629, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %21, align 1
  %1635 = xor i64 %1621, %1623
  %1636 = xor i64 %1635, %1624
  %1637 = lshr i64 %1636, 4
  %1638 = trunc i64 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %26, align 1
  %1640 = icmp eq i64 %1624, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %29, align 1
  %1642 = lshr i64 %1624, 63
  %1643 = trunc i64 %1642 to i8
  store i8 %1643, i8* %32, align 1
  %1644 = lshr i64 %1623, 63
  %1645 = xor i64 %1642, %1644
  %1646 = xor i64 %1642, %1622
  %1647 = add nuw nsw i64 %1645, %1646
  %1648 = icmp eq i64 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %38, align 1
  %1650 = add i64 %1624, 96
  %1651 = add i64 %1616, 20
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RSI.i673, align 8
  %1655 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1655, i64* %RCX.i675, align 8
  %1656 = add i64 %1655, 16
  store i64 %1656, i64* %RDX.i662, align 8
  %1657 = icmp ugt i64 %1655, -17
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %14, align 1
  %1659 = trunc i64 %1656 to i32
  %1660 = and i32 %1659, 255
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %21, align 1
  %1665 = xor i64 %1655, 16
  %1666 = xor i64 %1665, %1656
  %1667 = lshr i64 %1666, 4
  %1668 = trunc i64 %1667 to i8
  %1669 = and i8 %1668, 1
  store i8 %1669, i8* %26, align 1
  %1670 = icmp eq i64 %1656, 0
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %29, align 1
  %1672 = lshr i64 %1656, 63
  %1673 = trunc i64 %1672 to i8
  store i8 %1673, i8* %32, align 1
  %1674 = lshr i64 %1655, 63
  %1675 = xor i64 %1672, %1674
  %1676 = add nuw nsw i64 %1675, %1672
  %1677 = icmp eq i64 %1676, 2
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %38, align 1
  store i64 %1656, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %1679 = add i64 %1655, 8
  %1680 = add i64 %1616, 46
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  store i32 %1653, i32* %1681, align 4
  %1682 = load i64, i64* %RBP.i, align 8
  %1683 = add i64 %1682, -4
  %1684 = load i64, i64* %3, align 8
  %1685 = add i64 %1684, 3
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1683 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RSI.i673, align 8
  %1689 = add i64 %1682, -32
  %1690 = add i64 %1684, 7
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = sext i32 %1692 to i64
  %1694 = mul nsw i64 %1693, 744
  store i64 %1694, i64* %RCX.i675, align 8
  %1695 = lshr i64 %1694, 63
  %1696 = load i64, i64* %RAX.i684, align 8
  %1697 = add i64 %1694, %1696
  store i64 %1697, i64* %RDX.i662, align 8
  %1698 = icmp ult i64 %1697, %1696
  %1699 = icmp ult i64 %1697, %1694
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %14, align 1
  %1702 = trunc i64 %1697 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %21, align 1
  %1708 = xor i64 %1694, %1696
  %1709 = xor i64 %1708, %1697
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %26, align 1
  %1713 = icmp eq i64 %1697, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %29, align 1
  %1715 = lshr i64 %1697, 63
  %1716 = trunc i64 %1715 to i8
  store i8 %1716, i8* %32, align 1
  %1717 = lshr i64 %1696, 63
  %1718 = xor i64 %1715, %1717
  %1719 = xor i64 %1715, %1695
  %1720 = add nuw nsw i64 %1718, %1719
  %1721 = icmp eq i64 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %38, align 1
  %1723 = add i64 %1684, 24
  store i64 %1723, i64* %3, align 8
  %1724 = load i32, i32* %1691, align 4
  %1725 = sext i32 %1724 to i64
  %1726 = mul nsw i64 %1725, 744
  store i64 %1726, i64* %RCX.i675, align 8
  %1727 = lshr i64 %1726, 63
  %1728 = add i64 %1726, %1696
  store i64 %1728, i64* %RDI.i528, align 8
  %1729 = icmp ult i64 %1728, %1696
  %1730 = icmp ult i64 %1728, %1726
  %1731 = or i1 %1729, %1730
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %14, align 1
  %1733 = trunc i64 %1728 to i32
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %21, align 1
  %1739 = xor i64 %1726, %1696
  %1740 = xor i64 %1739, %1728
  %1741 = lshr i64 %1740, 4
  %1742 = trunc i64 %1741 to i8
  %1743 = and i8 %1742, 1
  store i8 %1743, i8* %26, align 1
  %1744 = icmp eq i64 %1728, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %29, align 1
  %1746 = lshr i64 %1728, 63
  %1747 = trunc i64 %1746 to i8
  store i8 %1747, i8* %32, align 1
  %1748 = xor i64 %1746, %1717
  %1749 = xor i64 %1746, %1727
  %1750 = add nuw nsw i64 %1748, %1749
  %1751 = icmp eq i64 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %38, align 1
  %1753 = add i64 %1728, 96
  %1754 = add i64 %1684, 41
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %1379, align 8
  %1758 = add i32 %1756, 1
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %1380, align 8
  %1760 = icmp eq i32 %1756, -1
  %1761 = icmp eq i32 %1758, 0
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %14, align 1
  %1764 = and i32 %1758, 255
  %1765 = tail call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  store i8 %1768, i8* %21, align 1
  %1769 = xor i32 %1758, %1756
  %1770 = lshr i32 %1769, 4
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  store i8 %1772, i8* %26, align 1
  %1773 = zext i1 %1761 to i8
  store i8 %1773, i8* %29, align 1
  %1774 = lshr i32 %1758, 31
  %1775 = trunc i32 %1774 to i8
  store i8 %1775, i8* %32, align 1
  %1776 = lshr i32 %1756, 31
  %1777 = xor i32 %1774, %1776
  %1778 = add nuw nsw i32 %1777, %1774
  %1779 = icmp eq i32 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %38, align 1
  %1781 = add i64 %1684, 52
  store i64 %1781, i64* %3, align 8
  store i32 %1758, i32* %1755, align 4
  %1782 = load i32, i32* %R8D.i78, align 4
  %1783 = load i64, i64* %3, align 8
  %1784 = sext i32 %1782 to i64
  store i64 %1784, i64* %RCX.i675, align 8
  %1785 = load i64, i64* %RDX.i662, align 8
  %1786 = shl nsw i64 %1784, 2
  %1787 = add nsw i64 %1786, 100
  %1788 = add i64 %1787, %1785
  %1789 = load i32, i32* %ESI.i678, align 4
  %1790 = add i64 %1783, 7
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1788 to i32*
  store i32 %1789, i32* %1791, align 4
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -32
  %1794 = load i64, i64* %3, align 8
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1793 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RSI.i673, align 8
  %1799 = add i64 %1792, -4
  %1800 = add i64 %1794, 7
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = sext i32 %1802 to i64
  %1804 = mul nsw i64 %1803, 744
  store i64 %1804, i64* %RCX.i675, align 8
  %1805 = lshr i64 %1804, 63
  %1806 = load i64, i64* %RAX.i684, align 8
  %1807 = add i64 %1804, %1806
  store i64 %1807, i64* %RDX.i662, align 8
  %1808 = icmp ult i64 %1807, %1806
  %1809 = icmp ult i64 %1807, %1804
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %14, align 1
  %1812 = trunc i64 %1807 to i32
  %1813 = and i32 %1812, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i64 %1804, %1806
  %1819 = xor i64 %1818, %1807
  %1820 = lshr i64 %1819, 4
  %1821 = trunc i64 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %26, align 1
  %1823 = icmp eq i64 %1807, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %29, align 1
  %1825 = lshr i64 %1807, 63
  %1826 = trunc i64 %1825 to i8
  store i8 %1826, i8* %32, align 1
  %1827 = lshr i64 %1806, 63
  %1828 = xor i64 %1825, %1827
  %1829 = xor i64 %1825, %1805
  %1830 = add nuw nsw i64 %1828, %1829
  %1831 = icmp eq i64 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %38, align 1
  %1833 = add i64 %1794, 24
  store i64 %1833, i64* %3, align 8
  %1834 = load i32, i32* %1801, align 4
  %1835 = sext i32 %1834 to i64
  %1836 = mul nsw i64 %1835, 744
  store i64 %1836, i64* %RCX.i675, align 8
  %1837 = lshr i64 %1836, 63
  %1838 = add i64 %1836, %1806
  store i64 %1838, i64* %RDI.i528, align 8
  %1839 = icmp ult i64 %1838, %1806
  %1840 = icmp ult i64 %1838, %1836
  %1841 = or i1 %1839, %1840
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %14, align 1
  %1843 = trunc i64 %1838 to i32
  %1844 = and i32 %1843, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  %1849 = xor i64 %1836, %1806
  %1850 = xor i64 %1849, %1838
  %1851 = lshr i64 %1850, 4
  %1852 = trunc i64 %1851 to i8
  %1853 = and i8 %1852, 1
  store i8 %1853, i8* %26, align 1
  %1854 = icmp eq i64 %1838, 0
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %29, align 1
  %1856 = lshr i64 %1838, 63
  %1857 = trunc i64 %1856 to i8
  store i8 %1857, i8* %32, align 1
  %1858 = xor i64 %1856, %1827
  %1859 = xor i64 %1856, %1837
  %1860 = add nuw nsw i64 %1858, %1859
  %1861 = icmp eq i64 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %38, align 1
  %1863 = add i64 %1838, 96
  %1864 = add i64 %1794, 41
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  %1866 = load i32, i32* %1865, align 4
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %1379, align 8
  %1868 = add i32 %1866, 1
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %1380, align 8
  %1870 = icmp eq i32 %1866, -1
  %1871 = icmp eq i32 %1868, 0
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %14, align 1
  %1874 = and i32 %1868, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %21, align 1
  %1879 = xor i32 %1868, %1866
  %1880 = lshr i32 %1879, 4
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  store i8 %1882, i8* %26, align 1
  %1883 = zext i1 %1871 to i8
  store i8 %1883, i8* %29, align 1
  %1884 = lshr i32 %1868, 31
  %1885 = trunc i32 %1884 to i8
  store i8 %1885, i8* %32, align 1
  %1886 = lshr i32 %1866, 31
  %1887 = xor i32 %1884, %1886
  %1888 = add nuw nsw i32 %1887, %1884
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %38, align 1
  %1891 = add i64 %1794, 52
  store i64 %1891, i64* %3, align 8
  store i32 %1868, i32* %1865, align 4
  %1892 = load i32, i32* %R8D.i78, align 4
  %1893 = load i64, i64* %3, align 8
  %1894 = sext i32 %1892 to i64
  store i64 %1894, i64* %RCX.i675, align 8
  %1895 = load i64, i64* %RDX.i662, align 8
  %1896 = shl nsw i64 %1894, 2
  %1897 = add nsw i64 %1896, 100
  %1898 = add i64 %1897, %1895
  %1899 = load i32, i32* %ESI.i678, align 4
  %1900 = add i64 %1893, 7
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1898 to i32*
  store i32 %1899, i32* %1901, align 4
  %1902 = load i64, i64* %3, align 8
  %1903 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RSI.i673, align 8
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -32
  %1907 = add i64 %1902, 11
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = sext i32 %1909 to i64
  %1911 = mul nsw i64 %1910, 744
  store i64 %1911, i64* %RCX.i675, align 8
  %1912 = lshr i64 %1911, 63
  %1913 = load i64, i64* %RAX.i684, align 8
  %1914 = add i64 %1911, %1913
  store i64 %1914, i64* %RAX.i684, align 8
  %1915 = icmp ult i64 %1914, %1913
  %1916 = icmp ult i64 %1914, %1911
  %1917 = or i1 %1915, %1916
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %14, align 1
  %1919 = trunc i64 %1914 to i32
  %1920 = and i32 %1919, 255
  %1921 = tail call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  store i8 %1924, i8* %21, align 1
  %1925 = xor i64 %1911, %1913
  %1926 = xor i64 %1925, %1914
  %1927 = lshr i64 %1926, 4
  %1928 = trunc i64 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %26, align 1
  %1930 = icmp eq i64 %1914, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %29, align 1
  %1932 = lshr i64 %1914, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %32, align 1
  %1934 = lshr i64 %1913, 63
  %1935 = xor i64 %1932, %1934
  %1936 = xor i64 %1932, %1912
  %1937 = add nuw nsw i64 %1935, %1936
  %1938 = icmp eq i64 %1937, 2
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %38, align 1
  %1940 = add i64 %1914, 740
  %1941 = add i64 %1902, 27
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  store i32 %1903, i32* %1942, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_40d25b

block_.L_40d25b:                                  ; preds = %block_40d172, %block_40d119
  %1943 = phi i64 [ %.pre23, %block_40d172 ], [ %1580, %block_40d119 ]
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -12
  %1946 = add i64 %1943, 8
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = add i32 %1948, 1
  %1950 = zext i32 %1949 to i64
  store i64 %1950, i64* %RAX.i684, align 8
  %1951 = icmp eq i32 %1948, -1
  %1952 = icmp eq i32 %1949, 0
  %1953 = or i1 %1951, %1952
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %14, align 1
  %1955 = and i32 %1949, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %21, align 1
  %1960 = xor i32 %1949, %1948
  %1961 = lshr i32 %1960, 4
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %26, align 1
  %1964 = zext i1 %1952 to i8
  store i8 %1964, i8* %29, align 1
  %1965 = lshr i32 %1949, 31
  %1966 = trunc i32 %1965 to i8
  store i8 %1966, i8* %32, align 1
  %1967 = lshr i32 %1948, 31
  %1968 = xor i32 %1965, %1967
  %1969 = add nuw nsw i32 %1968, %1965
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %38, align 1
  %1972 = add i64 %1943, 14
  store i64 %1972, i64* %3, align 8
  store i32 %1949, i32* %1947, align 4
  %1973 = load i64, i64* %3, align 8
  %1974 = add i64 %1973, -372
  store i64 %1974, i64* %3, align 8
  br label %block_.L_40d0f5

block_.L_40d26e:                                  ; preds = %block_.L_40d0f5
  %1975 = load i64, i64* %6, align 8
  %1976 = add i64 %1975, 32
  store i64 %1976, i64* %6, align 8
  %1977 = icmp ugt i64 %1975, -33
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %14, align 1
  %1979 = trunc i64 %1976 to i32
  %1980 = and i32 %1979, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %21, align 1
  %1985 = xor i64 %1976, %1975
  %1986 = lshr i64 %1985, 4
  %1987 = trunc i64 %1986 to i8
  %1988 = and i8 %1987, 1
  store i8 %1988, i8* %26, align 1
  %1989 = icmp eq i64 %1976, 0
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %29, align 1
  %1991 = lshr i64 %1976, 63
  %1992 = trunc i64 %1991 to i8
  store i8 %1992, i8* %32, align 1
  %1993 = lshr i64 %1975, 63
  %1994 = xor i64 %1991, %1993
  %1995 = add nuw nsw i64 %1994, %1991
  %1996 = icmp eq i64 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %38, align 1
  %1998 = add i64 %1450, 5
  store i64 %1998, i64* %3, align 8
  %1999 = add i64 %1975, 40
  %2000 = inttoptr i64 %1976 to i64*
  %2001 = load i64, i64* %2000, align 8
  store i64 %2001, i64* %RBP.i, align 8
  store i64 %1999, i64* %6, align 8
  %2002 = add i64 %1450, 6
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %1999 to i64*
  %2004 = load i64, i64* %2003, align 8
  store i64 %2004, i64* %3, align 8
  %2005 = add i64 %1975, 48
  store i64 %2005, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0xaab3f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaab3f0_type* @G__0xaab3f0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_movl__edx__0xaab3f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_40cdb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaaba30___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaaba30_type* @G__0xaaba30 to i64), i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0xaaba30___rdx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_0xaaba30___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__edi__0xaaba30___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11188784
  %7 = load i32, i32* %EDI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0x8__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jge_.L_40cf6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_40d0b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jge_.L_40d0b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40d09e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
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
define %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_40d09e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d066(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d09e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d0a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_40cf97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d0ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_40d26e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 100
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
define %struct.Memory* @routine_callq_.remove_neighbor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_40d25b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x60___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x60__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x64__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 100
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d0f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
