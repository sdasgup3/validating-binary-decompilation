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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400570.Fit(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400600.Place(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400410.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400790.Trial(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Puzzle(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = add i64 %7, -24
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1111 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %EAX.i1101 = bitcast %union.anon* %43 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40086f

block_.L_40086f:                                  ; preds = %block_40087c, %entry
  %44 = phi i64 [ %113, %block_40087c ], [ %.pre, %entry ]
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = add i64 %44, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, -511
  %51 = icmp ult i32 %49, 511
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %14, align 1
  %53 = and i32 %50, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53)
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %21, align 1
  %58 = xor i32 %49, 16
  %59 = xor i32 %58, %50
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %27, align 1
  %63 = icmp eq i32 %50, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1
  %65 = lshr i32 %50, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %33, align 1
  %67 = lshr i32 %49, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %67
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %39, align 1
  %72 = icmp ne i8 %66, 0
  %73 = xor i1 %72, %70
  %.demorgan = or i1 %63, %73
  %.v299 = select i1 %.demorgan, i64 13, i64 42
  %74 = add i64 %44, %.v299
  store i64 %74, i64* %3, align 8
  br i1 %.demorgan, label %block_40087c, label %block_.L_400899

block_40087c:                                     ; preds = %block_.L_40086f
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = load i32, i32* %48, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %RAX.i1111, align 8
  %78 = shl nsw i64 %77, 2
  %79 = add nsw i64 %78, 6348624
  %80 = add i64 %74, 15
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 1, i32* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -16
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX.i1111, align 8
  %90 = icmp eq i32 %87, -1
  %91 = icmp eq i32 %88, 0
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %14, align 1
  %94 = and i32 %88, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %21, align 1
  %99 = xor i32 %88, %87
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %27, align 1
  %103 = zext i1 %91 to i8
  store i8 %103, i8* %30, align 1
  %104 = lshr i32 %88, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %33, align 1
  %106 = lshr i32 %87, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %104
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %39, align 1
  %111 = add i64 %84, 9
  store i64 %111, i64* %3, align 8
  store i32 %88, i32* %86, align 4
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, -37
  store i64 %113, i64* %3, align 8
  br label %block_.L_40086f

block_.L_400899:                                  ; preds = %block_.L_40086f
  %114 = add i64 %45, -4
  %115 = add i64 %74, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 1, i32* %116, align 4
  %RCX.i1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_4008a0

block_.L_4008a0:                                  ; preds = %block_.L_40090e, %block_.L_400899
  %117 = phi i64 [ %357, %block_.L_40090e ], [ %.pre193, %block_.L_400899 ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -4
  %120 = add i64 %117, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, -5
  %124 = icmp ult i32 %122, 5
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i32 %123, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  %139 = lshr i32 %122, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %39, align 1
  %144 = icmp ne i8 %138, 0
  %145 = xor i1 %144, %142
  %.demorgan242 = or i1 %135, %145
  %.v300 = select i1 %.demorgan242, i64 10, i64 129
  %146 = add i64 %117, %.v300
  store i64 %146, i64* %3, align 8
  br i1 %.demorgan242, label %block_4008aa, label %block_.L_400921

block_4008aa:                                     ; preds = %block_.L_4008a0
  %147 = add i64 %118, -8
  %148 = add i64 %146, 7
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  store i32 1, i32* %149, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_4008b1

block_.L_4008b1:                                  ; preds = %block_.L_4008fb, %block_4008aa
  %150 = phi i64 [ %327, %block_.L_4008fb ], [ %.pre194, %block_4008aa ]
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -8
  %153 = add i64 %150, 4
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, -5
  %157 = icmp ult i32 %155, 5
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %14, align 1
  %159 = and i32 %156, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %21, align 1
  %164 = xor i32 %156, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %27, align 1
  %168 = icmp eq i32 %156, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %30, align 1
  %170 = lshr i32 %156, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %33, align 1
  %172 = lshr i32 %155, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %39, align 1
  %177 = icmp ne i8 %171, 0
  %178 = xor i1 %177, %175
  %.demorgan243 = or i1 %168, %178
  %.v245 = select i1 %.demorgan243, i64 10, i64 93
  %179 = add i64 %150, %.v245
  store i64 %179, i64* %3, align 8
  br i1 %.demorgan243, label %block_4008bb, label %block_.L_40090e

block_4008bb:                                     ; preds = %block_.L_4008b1
  %180 = add i64 %151, -12
  %181 = add i64 %179, 7
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 1, i32* %182, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_4008c2

block_.L_4008c2:                                  ; preds = %block_4008cc, %block_4008bb
  %183 = phi i64 [ %297, %block_4008cc ], [ %.pre195, %block_4008bb ]
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -12
  %186 = add i64 %183, 4
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, -5
  %190 = icmp ult i32 %188, 5
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i32 %189, %188
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %27, align 1
  %201 = icmp eq i32 %189, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %30, align 1
  %203 = lshr i32 %189, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %33, align 1
  %205 = lshr i32 %188, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %205
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %39, align 1
  %210 = icmp ne i8 %204, 0
  %211 = xor i1 %210, %208
  %.demorgan244 = or i1 %201, %211
  %.v = select i1 %.demorgan244, i64 10, i64 57
  %212 = add i64 %183, %.v
  store i64 %212, i64* %3, align 8
  br i1 %.demorgan244, label %block_4008cc, label %block_.L_4008fb

block_4008cc:                                     ; preds = %block_.L_4008c2
  %213 = add i64 %184, -4
  %214 = add i64 %212, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i1111, align 8
  %218 = add i64 %184, -8
  %219 = add i64 %212, 6
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i1079, align 8
  %223 = add i64 %212, 9
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %187, align 4
  %225 = shl i32 %224, 3
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RDX.i1076, align 8
  %227 = add i32 %225, %221
  %228 = shl i32 %227, 3
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RCX.i1079, align 8
  %230 = load i64, i64* %RAX.i1111, align 8
  %231 = trunc i64 %230 to i32
  %232 = add i32 %228, %231
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX.i1111, align 8
  %234 = icmp ult i32 %232, %231
  %235 = icmp ult i32 %232, %228
  %236 = or i1 %234, %235
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %14, align 1
  %238 = and i32 %232, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %21, align 1
  %243 = xor i64 %229, %230
  %244 = trunc i64 %243 to i32
  %245 = xor i32 %244, %232
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %27, align 1
  %249 = icmp eq i32 %232, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %30, align 1
  %251 = lshr i32 %232, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %33, align 1
  %253 = lshr i32 %231, 31
  %254 = lshr i32 %227, 28
  %255 = and i32 %254, 1
  %256 = xor i32 %251, %253
  %257 = xor i32 %251, %255
  %258 = add nuw nsw i32 %256, %257
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %261 = sext i32 %232 to i64
  store i64 %261, i64* %RSI.i1064, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add nsw i64 %262, 6348624
  %264 = add i64 %212, 33
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 0, i32* %265, align 4
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -12
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 3
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, 1
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i1111, align 8
  %274 = icmp eq i32 %271, -1
  %275 = icmp eq i32 %272, 0
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %272, %271
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %27, align 1
  %287 = zext i1 %275 to i8
  store i8 %287, i8* %30, align 1
  %288 = lshr i32 %272, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %33, align 1
  %290 = lshr i32 %271, 31
  %291 = xor i32 %288, %290
  %292 = add nuw nsw i32 %291, %288
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %39, align 1
  %295 = add i64 %268, 9
  store i64 %295, i64* %3, align 8
  store i32 %272, i32* %270, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, -52
  store i64 %297, i64* %3, align 8
  br label %block_.L_4008c2

block_.L_4008fb:                                  ; preds = %block_.L_4008c2
  %298 = add i64 %184, -8
  %299 = add i64 %212, 8
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = add i32 %301, 1
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i1111, align 8
  %304 = icmp eq i32 %301, -1
  %305 = icmp eq i32 %302, 0
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %14, align 1
  %308 = and i32 %302, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %21, align 1
  %313 = xor i32 %302, %301
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %27, align 1
  %317 = zext i1 %305 to i8
  store i8 %317, i8* %30, align 1
  %318 = lshr i32 %302, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %33, align 1
  %320 = lshr i32 %301, 31
  %321 = xor i32 %318, %320
  %322 = add nuw nsw i32 %321, %318
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %39, align 1
  %325 = add i64 %212, 14
  store i64 %325, i64* %3, align 8
  store i32 %302, i32* %300, align 4
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, -88
  store i64 %327, i64* %3, align 8
  br label %block_.L_4008b1

block_.L_40090e:                                  ; preds = %block_.L_4008b1
  %328 = add i64 %151, -4
  %329 = add i64 %179, 8
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = add i32 %331, 1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i1111, align 8
  %334 = icmp eq i32 %331, -1
  %335 = icmp eq i32 %332, 0
  %336 = or i1 %334, %335
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %14, align 1
  %338 = and i32 %332, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i32 %332, %331
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %27, align 1
  %347 = zext i1 %335 to i8
  store i8 %347, i8* %30, align 1
  %348 = lshr i32 %332, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %33, align 1
  %350 = lshr i32 %331, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %39, align 1
  %355 = add i64 %179, 14
  store i64 %355, i64* %3, align 8
  store i32 %332, i32* %330, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, -124
  store i64 %357, i64* %3, align 8
  br label %block_.L_4008a0

block_.L_400921:                                  ; preds = %block_.L_4008a0
  %358 = add i64 %146, 7
  store i64 %358, i64* %3, align 8
  store i32 0, i32* %121, align 4
  %RCX.i1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_400928

block_.L_400928:                                  ; preds = %block_.L_400974, %block_.L_400921
  %359 = phi i64 [ %508, %block_.L_400974 ], [ %.pre196, %block_.L_400921 ]
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -4
  %362 = add i64 %359, 4
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = add i32 %364, -12
  %366 = icmp ult i32 %364, 12
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %14, align 1
  %368 = and i32 %365, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  %373 = xor i32 %365, %364
  %374 = lshr i32 %373, 4
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  store i8 %376, i8* %27, align 1
  %377 = icmp eq i32 %365, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %30, align 1
  %379 = lshr i32 %365, 31
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %33, align 1
  %381 = lshr i32 %364, 31
  %382 = xor i32 %379, %381
  %383 = add nuw nsw i32 %382, %381
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = icmp ne i8 %380, 0
  %387 = xor i1 %386, %384
  %.demorgan246 = or i1 %377, %387
  %.v301 = select i1 %.demorgan246, i64 10, i64 95
  %388 = add i64 %359, %.v301
  store i64 %388, i64* %3, align 8
  br i1 %.demorgan246, label %block_400932, label %block_.L_400987

block_400932:                                     ; preds = %block_.L_400928
  %389 = add i64 %360, -16
  %390 = add i64 %388, 7
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 0, i32* %391, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_400939

block_.L_400939:                                  ; preds = %block_400946, %block_400932
  %392 = phi i64 [ %478, %block_400946 ], [ %.pre197, %block_400932 ]
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -16
  %395 = add i64 %392, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = add i32 %397, -511
  %399 = icmp ult i32 %397, 511
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %398, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %397, 16
  %407 = xor i32 %406, %398
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %27, align 1
  %411 = icmp eq i32 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %30, align 1
  %413 = lshr i32 %398, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %33, align 1
  %415 = lshr i32 %397, 31
  %416 = xor i32 %413, %415
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %39, align 1
  %420 = icmp ne i8 %414, 0
  %421 = xor i1 %420, %418
  %.demorgan247 = or i1 %411, %421
  %.v248 = select i1 %.demorgan247, i64 13, i64 59
  %422 = add i64 %392, %.v248
  store i64 %422, i64* %3, align 8
  br i1 %.demorgan247, label %block_400946, label %block_.L_400974

block_400946:                                     ; preds = %block_.L_400939
  store i64 6306464, i64* %RAX.i1111, align 8
  %423 = add i64 %393, -4
  %424 = add i64 %422, 14
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  %428 = shl nsw i64 %427, 11
  store i64 %428, i64* %RCX.i1017, align 8
  %429 = add nsw i64 %428, 6306464
  store i64 %429, i64* %RAX.i1111, align 8
  %430 = icmp ugt i64 %428, -6306465
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %432 = lshr i64 %429, 63
  %433 = trunc i64 %432 to i8
  store i8 %433, i8* %33, align 1
  %434 = lshr i64 %427, 52
  %435 = and i64 %434, 1
  %436 = xor i64 %432, %435
  %437 = add nuw nsw i64 %432, %436
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %39, align 1
  %440 = add i64 %422, 25
  store i64 %440, i64* %3, align 8
  %441 = load i32, i32* %396, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %RCX.i1017, align 8
  %443 = shl nsw i64 %442, 2
  %444 = add nsw i64 %443, %429
  %445 = add i64 %422, 32
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 0, i32* %446, align 4
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -16
  %449 = load i64, i64* %3, align 8
  %450 = add i64 %449, 3
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = add i32 %452, 1
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RAX.i1111, align 8
  %455 = icmp eq i32 %452, -1
  %456 = icmp eq i32 %453, 0
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %14, align 1
  %459 = and i32 %453, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  %464 = xor i32 %453, %452
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %27, align 1
  %468 = zext i1 %456 to i8
  store i8 %468, i8* %30, align 1
  %469 = lshr i32 %453, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %33, align 1
  %471 = lshr i32 %452, 31
  %472 = xor i32 %469, %471
  %473 = add nuw nsw i32 %472, %469
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %39, align 1
  %476 = add i64 %449, 9
  store i64 %476, i64* %3, align 8
  store i32 %453, i32* %451, align 4
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, -54
  store i64 %478, i64* %3, align 8
  br label %block_.L_400939

block_.L_400974:                                  ; preds = %block_.L_400939
  %479 = add i64 %393, -4
  %480 = add i64 %422, 8
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = add i32 %482, 1
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RAX.i1111, align 8
  %485 = icmp eq i32 %482, -1
  %486 = icmp eq i32 %483, 0
  %487 = or i1 %485, %486
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %14, align 1
  %489 = and i32 %483, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %21, align 1
  %494 = xor i32 %483, %482
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %27, align 1
  %498 = zext i1 %486 to i8
  store i8 %498, i8* %30, align 1
  %499 = lshr i32 %483, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %33, align 1
  %501 = lshr i32 %482, 31
  %502 = xor i32 %499, %501
  %503 = add nuw nsw i32 %502, %499
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %39, align 1
  %506 = add i64 %422, 14
  store i64 %506, i64* %3, align 8
  store i32 %483, i32* %481, align 4
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, -90
  store i64 %508, i64* %3, align 8
  br label %block_.L_400928

block_.L_400987:                                  ; preds = %block_.L_400928
  %509 = add i64 %388, 7
  store i64 %509, i64* %3, align 8
  store i32 0, i32* %363, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_40098e

block_.L_40098e:                                  ; preds = %block_.L_4009fc, %block_.L_400987
  %510 = phi i64 [ %739, %block_.L_4009fc ], [ %.pre198, %block_.L_400987 ]
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -4
  %513 = add i64 %510, 4
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = add i32 %515, -3
  %517 = icmp ult i32 %515, 3
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1
  %519 = and i32 %516, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %21, align 1
  %524 = xor i32 %516, %515
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %27, align 1
  %528 = icmp eq i32 %516, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %30, align 1
  %530 = lshr i32 %516, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %33, align 1
  %532 = lshr i32 %515, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = icmp ne i8 %531, 0
  %538 = xor i1 %537, %535
  %.demorgan249 = or i1 %528, %538
  %.v302 = select i1 %.demorgan249, i64 10, i64 129
  %539 = add i64 %510, %.v302
  store i64 %539, i64* %3, align 8
  br i1 %.demorgan249, label %block_400998, label %block_.L_400a0f

block_400998:                                     ; preds = %block_.L_40098e
  %540 = add i64 %511, -8
  %541 = add i64 %539, 7
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 0, i32* %542, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_40099f

block_.L_40099f:                                  ; preds = %block_.L_4009e9, %block_400998
  %543 = phi i64 [ %709, %block_.L_4009e9 ], [ %.pre199, %block_400998 ]
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -8
  %546 = add i64 %543, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %548, -1
  %550 = icmp eq i32 %548, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %14, align 1
  %552 = and i32 %549, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %21, align 1
  %557 = xor i32 %549, %548
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %27, align 1
  %561 = icmp eq i32 %549, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %30, align 1
  %563 = lshr i32 %549, 31
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %33, align 1
  %565 = lshr i32 %548, 31
  %566 = xor i32 %563, %565
  %567 = add nuw nsw i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %39, align 1
  %570 = icmp ne i8 %564, 0
  %571 = xor i1 %570, %568
  %.demorgan250 = or i1 %561, %571
  %.v252 = select i1 %.demorgan250, i64 10, i64 93
  %572 = add i64 %543, %.v252
  store i64 %572, i64* %3, align 8
  br i1 %.demorgan250, label %block_4009a9, label %block_.L_4009fc

block_4009a9:                                     ; preds = %block_.L_40099f
  %573 = add i64 %544, -12
  %574 = add i64 %572, 7
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  store i32 0, i32* %575, align 4
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_4009b0

block_.L_4009b0:                                  ; preds = %block_4009ba, %block_4009a9
  %576 = phi i64 [ %679, %block_4009ba ], [ %.pre200, %block_4009a9 ]
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -12
  %579 = add i64 %576, 4
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  store i8 0, i8* %14, align 1
  %582 = and i32 %581, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %587 = icmp eq i32 %581, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %30, align 1
  %589 = lshr i32 %581, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %591 = xor i1 %587, true
  %592 = icmp eq i8 %590, 0
  %593 = and i1 %592, %591
  %.v251 = select i1 %593, i64 57, i64 10
  %594 = add i64 %576, %.v251
  store i64 %594, i64* %3, align 8
  br i1 %593, label %block_.L_4009e9, label %block_4009ba

block_4009ba:                                     ; preds = %block_.L_4009b0
  %595 = add i64 %577, -4
  %596 = add i64 %594, 3
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RAX.i1111, align 8
  %600 = add i64 %577, -8
  %601 = add i64 %594, 6
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RCX.i1079, align 8
  %605 = add i64 %594, 9
  store i64 %605, i64* %3, align 8
  %606 = load i32, i32* %580, align 4
  %607 = shl i32 %606, 3
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RDX.i1076, align 8
  %609 = add i32 %607, %603
  %610 = shl i32 %609, 3
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RCX.i1079, align 8
  %612 = load i64, i64* %RAX.i1111, align 8
  %613 = trunc i64 %612 to i32
  %614 = add i32 %610, %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX.i1111, align 8
  %616 = icmp ult i32 %614, %613
  %617 = icmp ult i32 %614, %610
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %14, align 1
  %620 = and i32 %614, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %625 = xor i64 %611, %612
  %626 = trunc i64 %625 to i32
  %627 = xor i32 %626, %614
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = icmp eq i32 %614, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %30, align 1
  %633 = lshr i32 %614, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %33, align 1
  %635 = lshr i32 %613, 31
  %636 = lshr i32 %609, 28
  %637 = and i32 %636, 1
  %638 = xor i32 %633, %635
  %639 = xor i32 %633, %637
  %640 = add nuw nsw i32 %638, %639
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %39, align 1
  %643 = sext i32 %614 to i64
  store i64 %643, i64* %RSI.i1064, align 8
  %644 = shl nsw i64 %643, 2
  %645 = add nsw i64 %644, 6306464
  %646 = add i64 %594, 33
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  store i32 1, i32* %647, align 4
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -12
  %650 = load i64, i64* %3, align 8
  %651 = add i64 %650, 3
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = add i32 %653, 1
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RAX.i1111, align 8
  %656 = icmp eq i32 %653, -1
  %657 = icmp eq i32 %654, 0
  %658 = or i1 %656, %657
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %14, align 1
  %660 = and i32 %654, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  %665 = xor i32 %654, %653
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %27, align 1
  %669 = zext i1 %657 to i8
  store i8 %669, i8* %30, align 1
  %670 = lshr i32 %654, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %33, align 1
  %672 = lshr i32 %653, 31
  %673 = xor i32 %670, %672
  %674 = add nuw nsw i32 %673, %670
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %39, align 1
  %677 = add i64 %650, 9
  store i64 %677, i64* %3, align 8
  store i32 %654, i32* %652, align 4
  %678 = load i64, i64* %3, align 8
  %679 = add i64 %678, -52
  store i64 %679, i64* %3, align 8
  br label %block_.L_4009b0

block_.L_4009e9:                                  ; preds = %block_.L_4009b0
  %680 = add i64 %577, -8
  %681 = add i64 %594, 8
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = add i32 %683, 1
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RAX.i1111, align 8
  %686 = icmp eq i32 %683, -1
  %687 = icmp eq i32 %684, 0
  %688 = or i1 %686, %687
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %14, align 1
  %690 = and i32 %684, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %21, align 1
  %695 = xor i32 %684, %683
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %27, align 1
  %699 = zext i1 %687 to i8
  store i8 %699, i8* %30, align 1
  %700 = lshr i32 %684, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %33, align 1
  %702 = lshr i32 %683, 31
  %703 = xor i32 %700, %702
  %704 = add nuw nsw i32 %703, %700
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %39, align 1
  %707 = add i64 %594, 14
  store i64 %707, i64* %3, align 8
  store i32 %684, i32* %682, align 4
  %708 = load i64, i64* %3, align 8
  %709 = add i64 %708, -88
  store i64 %709, i64* %3, align 8
  br label %block_.L_40099f

block_.L_4009fc:                                  ; preds = %block_.L_40099f
  %710 = add i64 %544, -4
  %711 = add i64 %572, 8
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = add i32 %713, 1
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX.i1111, align 8
  %716 = icmp eq i32 %713, -1
  %717 = icmp eq i32 %714, 0
  %718 = or i1 %716, %717
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %14, align 1
  %720 = and i32 %714, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i32 %714, %713
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %27, align 1
  %729 = zext i1 %717 to i8
  store i8 %729, i8* %30, align 1
  %730 = lshr i32 %714, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %33, align 1
  %732 = lshr i32 %713, 31
  %733 = xor i32 %730, %732
  %734 = add nuw nsw i32 %733, %730
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %39, align 1
  %737 = add i64 %572, 14
  store i64 %737, i64* %3, align 8
  store i32 %714, i32* %712, align 4
  %738 = load i64, i64* %3, align 8
  %739 = add i64 %738, -124
  store i64 %739, i64* %3, align 8
  br label %block_.L_40098e

block_.L_400a0f:                                  ; preds = %block_.L_40098e
  store i32 0, i32* inttoptr (i64 6394352 to i32*), align 16
  store i32 11, i32* inttoptr (i64 6357584 to i32*), align 16
  %740 = add i64 %539, 29
  store i64 %740, i64* %3, align 8
  store i32 0, i32* %514, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_400a2c

block_.L_400a2c:                                  ; preds = %block_.L_400a9a, %block_.L_400a0f
  %741 = phi i64 [ %970, %block_.L_400a9a ], [ %.pre201, %block_.L_400a0f ]
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -4
  %744 = add i64 %741, 4
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = add i32 %746, -1
  %748 = icmp eq i32 %746, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = and i32 %747, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  %755 = xor i32 %747, %746
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %27, align 1
  %759 = icmp eq i32 %747, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %30, align 1
  %761 = lshr i32 %747, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %33, align 1
  %763 = lshr i32 %746, 31
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %763
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %39, align 1
  %768 = icmp ne i8 %762, 0
  %769 = xor i1 %768, %766
  %.demorgan253 = or i1 %759, %769
  %.v303 = select i1 %.demorgan253, i64 10, i64 129
  %770 = add i64 %741, %.v303
  store i64 %770, i64* %3, align 8
  br i1 %.demorgan253, label %block_400a36, label %block_.L_400aad

block_400a36:                                     ; preds = %block_.L_400a2c
  %771 = add i64 %742, -8
  %772 = add i64 %770, 7
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  store i32 0, i32* %773, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_400a3d

block_.L_400a3d:                                  ; preds = %block_.L_400a87, %block_400a36
  %774 = phi i64 [ %940, %block_.L_400a87 ], [ %.pre202, %block_400a36 ]
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -8
  %777 = add i64 %774, 4
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  store i8 0, i8* %14, align 1
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %785 = icmp eq i32 %779, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %30, align 1
  %787 = lshr i32 %779, 31
  %788 = trunc i32 %787 to i8
  store i8 %788, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %789 = xor i1 %785, true
  %790 = icmp eq i8 %788, 0
  %791 = and i1 %790, %789
  %.v256 = select i1 %791, i64 93, i64 10
  %792 = add i64 %774, %.v256
  store i64 %792, i64* %3, align 8
  br i1 %791, label %block_.L_400a9a, label %block_400a47

block_400a47:                                     ; preds = %block_.L_400a3d
  %793 = add i64 %775, -12
  %794 = add i64 %792, 7
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  store i32 0, i32* %795, align 4
  %.pre203 = load i64, i64* %3, align 8
  br label %block_.L_400a4e

block_.L_400a4e:                                  ; preds = %block_400a58, %block_400a47
  %796 = phi i64 [ %910, %block_400a58 ], [ %.pre203, %block_400a47 ]
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -12
  %799 = add i64 %796, 4
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = add i32 %801, -3
  %803 = icmp ult i32 %801, 3
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %14, align 1
  %805 = and i32 %802, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %21, align 1
  %810 = xor i32 %802, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %27, align 1
  %814 = icmp eq i32 %802, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %30, align 1
  %816 = lshr i32 %802, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %33, align 1
  %818 = lshr i32 %801, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %818
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %39, align 1
  %823 = icmp ne i8 %817, 0
  %824 = xor i1 %823, %821
  %.demorgan254 = or i1 %814, %824
  %.v255 = select i1 %.demorgan254, i64 10, i64 57
  %825 = add i64 %796, %.v255
  store i64 %825, i64* %3, align 8
  br i1 %.demorgan254, label %block_400a58, label %block_.L_400a87

block_400a58:                                     ; preds = %block_.L_400a4e
  %826 = add i64 %797, -4
  %827 = add i64 %825, 3
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX.i1111, align 8
  %831 = add i64 %797, -8
  %832 = add i64 %825, 6
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RCX.i1079, align 8
  %836 = add i64 %825, 9
  store i64 %836, i64* %3, align 8
  %837 = load i32, i32* %800, align 4
  %838 = shl i32 %837, 3
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RDX.i1076, align 8
  %840 = add i32 %838, %834
  %841 = shl i32 %840, 3
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RCX.i1079, align 8
  %843 = load i64, i64* %RAX.i1111, align 8
  %844 = trunc i64 %843 to i32
  %845 = add i32 %841, %844
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX.i1111, align 8
  %847 = icmp ult i32 %845, %844
  %848 = icmp ult i32 %845, %841
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = and i32 %845, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i64 %842, %843
  %857 = trunc i64 %856 to i32
  %858 = xor i32 %857, %845
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %27, align 1
  %862 = icmp eq i32 %845, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %30, align 1
  %864 = lshr i32 %845, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %33, align 1
  %866 = lshr i32 %844, 31
  %867 = lshr i32 %840, 28
  %868 = and i32 %867, 1
  %869 = xor i32 %864, %866
  %870 = xor i32 %864, %868
  %871 = add nuw nsw i32 %869, %870
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %39, align 1
  %874 = sext i32 %845 to i64
  store i64 %874, i64* %RSI.i1064, align 8
  %875 = shl nsw i64 %874, 2
  %876 = add nsw i64 %875, 6308512
  %877 = add i64 %825, 33
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  store i32 1, i32* %878, align 4
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -12
  %881 = load i64, i64* %3, align 8
  %882 = add i64 %881, 3
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = add i32 %884, 1
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RAX.i1111, align 8
  %887 = icmp eq i32 %884, -1
  %888 = icmp eq i32 %885, 0
  %889 = or i1 %887, %888
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %14, align 1
  %891 = and i32 %885, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %21, align 1
  %896 = xor i32 %885, %884
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %27, align 1
  %900 = zext i1 %888 to i8
  store i8 %900, i8* %30, align 1
  %901 = lshr i32 %885, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %33, align 1
  %903 = lshr i32 %884, 31
  %904 = xor i32 %901, %903
  %905 = add nuw nsw i32 %904, %901
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %39, align 1
  %908 = add i64 %881, 9
  store i64 %908, i64* %3, align 8
  store i32 %885, i32* %883, align 4
  %909 = load i64, i64* %3, align 8
  %910 = add i64 %909, -52
  store i64 %910, i64* %3, align 8
  br label %block_.L_400a4e

block_.L_400a87:                                  ; preds = %block_.L_400a4e
  %911 = add i64 %797, -8
  %912 = add i64 %825, 8
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, 1
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i1111, align 8
  %917 = icmp eq i32 %914, -1
  %918 = icmp eq i32 %915, 0
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %14, align 1
  %921 = and i32 %915, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %21, align 1
  %926 = xor i32 %915, %914
  %927 = lshr i32 %926, 4
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %27, align 1
  %930 = zext i1 %918 to i8
  store i8 %930, i8* %30, align 1
  %931 = lshr i32 %915, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %33, align 1
  %933 = lshr i32 %914, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %931
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %39, align 1
  %938 = add i64 %825, 14
  store i64 %938, i64* %3, align 8
  store i32 %915, i32* %913, align 4
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, -88
  store i64 %940, i64* %3, align 8
  br label %block_.L_400a3d

block_.L_400a9a:                                  ; preds = %block_.L_400a3d
  %941 = add i64 %775, -4
  %942 = add i64 %792, 8
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = add i32 %944, 1
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX.i1111, align 8
  %947 = icmp eq i32 %944, -1
  %948 = icmp eq i32 %945, 0
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1
  %951 = and i32 %945, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %21, align 1
  %956 = xor i32 %945, %944
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %27, align 1
  %960 = zext i1 %948 to i8
  store i8 %960, i8* %30, align 1
  %961 = lshr i32 %945, 31
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %33, align 1
  %963 = lshr i32 %944, 31
  %964 = xor i32 %961, %963
  %965 = add nuw nsw i32 %964, %961
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %39, align 1
  %968 = add i64 %792, 14
  store i64 %968, i64* %3, align 8
  store i32 %945, i32* %943, align 4
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, -124
  store i64 %970, i64* %3, align 8
  br label %block_.L_400a2c

block_.L_400aad:                                  ; preds = %block_.L_400a2c
  store i32 0, i32* inttoptr (i64 6394356 to i32*), align 4
  store i32 193, i32* inttoptr (i64 6357588 to i32*), align 4
  %971 = add i64 %770, 29
  store i64 %971, i64* %3, align 8
  store i32 0, i32* %745, align 4
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_400aca

block_.L_400aca:                                  ; preds = %block_.L_400b38, %block_.L_400aad
  %972 = phi i64 [ %1201, %block_.L_400b38 ], [ %.pre204, %block_.L_400aad ]
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -4
  %975 = add i64 %972, 4
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  store i8 0, i8* %14, align 1
  %978 = and i32 %977, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %983 = icmp eq i32 %977, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %30, align 1
  %985 = lshr i32 %977, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %987 = xor i1 %983, true
  %988 = icmp eq i8 %986, 0
  %989 = and i1 %988, %987
  %.v304 = select i1 %989, i64 129, i64 10
  %990 = add i64 %972, %.v304
  store i64 %990, i64* %3, align 8
  br i1 %989, label %block_.L_400b4b, label %block_400ad4

block_400ad4:                                     ; preds = %block_.L_400aca
  %991 = add i64 %973, -8
  %992 = add i64 %990, 7
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  store i32 0, i32* %993, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_400adb

block_.L_400adb:                                  ; preds = %block_.L_400b25, %block_400ad4
  %994 = phi i64 [ %1171, %block_.L_400b25 ], [ %.pre205, %block_400ad4 ]
  %995 = load i64, i64* %RBP.i, align 8
  %996 = add i64 %995, -8
  %997 = add i64 %994, 4
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = add i32 %999, -3
  %1001 = icmp ult i32 %999, 3
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %14, align 1
  %1003 = and i32 %1000, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1
  %1008 = xor i32 %1000, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %27, align 1
  %1012 = icmp eq i32 %1000, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %30, align 1
  %1014 = lshr i32 %1000, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %33, align 1
  %1016 = lshr i32 %999, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %39, align 1
  %1021 = icmp ne i8 %1015, 0
  %1022 = xor i1 %1021, %1019
  %.demorgan257 = or i1 %1012, %1022
  %.v260 = select i1 %.demorgan257, i64 10, i64 93
  %1023 = add i64 %994, %.v260
  store i64 %1023, i64* %3, align 8
  br i1 %.demorgan257, label %block_400ae5, label %block_.L_400b38

block_400ae5:                                     ; preds = %block_.L_400adb
  %1024 = add i64 %995, -12
  %1025 = add i64 %1023, 7
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  store i32 0, i32* %1026, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_400aec

block_.L_400aec:                                  ; preds = %block_400af6, %block_400ae5
  %1027 = phi i64 [ %1141, %block_400af6 ], [ %.pre206, %block_400ae5 ]
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -12
  %1030 = add i64 %1027, 4
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = add i32 %1032, -1
  %1034 = icmp eq i32 %1032, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %14, align 1
  %1036 = and i32 %1033, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %21, align 1
  %1041 = xor i32 %1033, %1032
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %27, align 1
  %1045 = icmp eq i32 %1033, 0
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %30, align 1
  %1047 = lshr i32 %1033, 31
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %33, align 1
  %1049 = lshr i32 %1032, 31
  %1050 = xor i32 %1047, %1049
  %1051 = add nuw nsw i32 %1050, %1049
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %39, align 1
  %1054 = icmp ne i8 %1048, 0
  %1055 = xor i1 %1054, %1052
  %.demorgan258 = or i1 %1045, %1055
  %.v259 = select i1 %.demorgan258, i64 10, i64 57
  %1056 = add i64 %1027, %.v259
  store i64 %1056, i64* %3, align 8
  br i1 %.demorgan258, label %block_400af6, label %block_.L_400b25

block_400af6:                                     ; preds = %block_.L_400aec
  %1057 = add i64 %1028, -4
  %1058 = add i64 %1056, 3
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX.i1111, align 8
  %1062 = add i64 %1028, -8
  %1063 = add i64 %1056, 6
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i1079, align 8
  %1067 = add i64 %1056, 9
  store i64 %1067, i64* %3, align 8
  %1068 = load i32, i32* %1031, align 4
  %1069 = shl i32 %1068, 3
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RDX.i1076, align 8
  %1071 = add i32 %1069, %1065
  %1072 = shl i32 %1071, 3
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RCX.i1079, align 8
  %1074 = load i64, i64* %RAX.i1111, align 8
  %1075 = trunc i64 %1074 to i32
  %1076 = add i32 %1072, %1075
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RAX.i1111, align 8
  %1078 = icmp ult i32 %1076, %1075
  %1079 = icmp ult i32 %1076, %1072
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %14, align 1
  %1082 = and i32 %1076, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %21, align 1
  %1087 = xor i64 %1073, %1074
  %1088 = trunc i64 %1087 to i32
  %1089 = xor i32 %1088, %1076
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %27, align 1
  %1093 = icmp eq i32 %1076, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %30, align 1
  %1095 = lshr i32 %1076, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %33, align 1
  %1097 = lshr i32 %1075, 31
  %1098 = lshr i32 %1071, 28
  %1099 = and i32 %1098, 1
  %1100 = xor i32 %1095, %1097
  %1101 = xor i32 %1095, %1099
  %1102 = add nuw nsw i32 %1100, %1101
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %39, align 1
  %1105 = sext i32 %1076 to i64
  store i64 %1105, i64* %RSI.i1064, align 8
  %1106 = shl nsw i64 %1105, 2
  %1107 = add nsw i64 %1106, 6310560
  %1108 = add i64 %1056, 33
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  store i32 1, i32* %1109, align 4
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -12
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1111 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = add i32 %1115, 1
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RAX.i1111, align 8
  %1118 = icmp eq i32 %1115, -1
  %1119 = icmp eq i32 %1116, 0
  %1120 = or i1 %1118, %1119
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %14, align 1
  %1122 = and i32 %1116, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %21, align 1
  %1127 = xor i32 %1116, %1115
  %1128 = lshr i32 %1127, 4
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %27, align 1
  %1131 = zext i1 %1119 to i8
  store i8 %1131, i8* %30, align 1
  %1132 = lshr i32 %1116, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %33, align 1
  %1134 = lshr i32 %1115, 31
  %1135 = xor i32 %1132, %1134
  %1136 = add nuw nsw i32 %1135, %1132
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %39, align 1
  %1139 = add i64 %1112, 9
  store i64 %1139, i64* %3, align 8
  store i32 %1116, i32* %1114, align 4
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, -52
  store i64 %1141, i64* %3, align 8
  br label %block_.L_400aec

block_.L_400b25:                                  ; preds = %block_.L_400aec
  %1142 = add i64 %1028, -8
  %1143 = add i64 %1056, 8
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = add i32 %1145, 1
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i1111, align 8
  %1148 = icmp eq i32 %1145, -1
  %1149 = icmp eq i32 %1146, 0
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1146, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1146, %1145
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %27, align 1
  %1161 = zext i1 %1149 to i8
  store i8 %1161, i8* %30, align 1
  %1162 = lshr i32 %1146, 31
  %1163 = trunc i32 %1162 to i8
  store i8 %1163, i8* %33, align 1
  %1164 = lshr i32 %1145, 31
  %1165 = xor i32 %1162, %1164
  %1166 = add nuw nsw i32 %1165, %1162
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %39, align 1
  %1169 = add i64 %1056, 14
  store i64 %1169, i64* %3, align 8
  store i32 %1146, i32* %1144, align 4
  %1170 = load i64, i64* %3, align 8
  %1171 = add i64 %1170, -88
  store i64 %1171, i64* %3, align 8
  br label %block_.L_400adb

block_.L_400b38:                                  ; preds = %block_.L_400adb
  %1172 = add i64 %995, -4
  %1173 = add i64 %1023, 8
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, 1
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i1111, align 8
  %1178 = icmp eq i32 %1175, -1
  %1179 = icmp eq i32 %1176, 0
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %14, align 1
  %1182 = and i32 %1176, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %21, align 1
  %1187 = xor i32 %1176, %1175
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = zext i1 %1179 to i8
  store i8 %1191, i8* %30, align 1
  %1192 = lshr i32 %1176, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %33, align 1
  %1194 = lshr i32 %1175, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1192
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %39, align 1
  %1199 = add i64 %1023, 14
  store i64 %1199, i64* %3, align 8
  store i32 %1176, i32* %1174, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, -124
  store i64 %1201, i64* %3, align 8
  br label %block_.L_400aca

block_.L_400b4b:                                  ; preds = %block_.L_400aca
  store i32 0, i32* inttoptr (i64 6394360 to i32*), align 8
  store i32 88, i32* inttoptr (i64 6357592 to i32*), align 8
  %1202 = add i64 %990, 29
  store i64 %1202, i64* %3, align 8
  store i32 0, i32* %976, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_400b68

block_.L_400b68:                                  ; preds = %block_.L_400bd6, %block_.L_400b4b
  %1203 = phi i64 [ %1432, %block_.L_400bd6 ], [ %.pre207, %block_.L_400b4b ]
  %1204 = load i64, i64* %RBP.i, align 8
  %1205 = add i64 %1204, -4
  %1206 = add i64 %1203, 4
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = add i32 %1208, -1
  %1210 = icmp eq i32 %1208, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %14, align 1
  %1212 = and i32 %1209, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %21, align 1
  %1217 = xor i32 %1209, %1208
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %27, align 1
  %1221 = icmp eq i32 %1209, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %30, align 1
  %1223 = lshr i32 %1209, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %33, align 1
  %1225 = lshr i32 %1208, 31
  %1226 = xor i32 %1223, %1225
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %39, align 1
  %1230 = icmp ne i8 %1224, 0
  %1231 = xor i1 %1230, %1228
  %.demorgan261 = or i1 %1221, %1231
  %.v305 = select i1 %.demorgan261, i64 10, i64 129
  %1232 = add i64 %1203, %.v305
  store i64 %1232, i64* %3, align 8
  br i1 %.demorgan261, label %block_400b72, label %block_.L_400be9

block_400b72:                                     ; preds = %block_.L_400b68
  %1233 = add i64 %1204, -8
  %1234 = add i64 %1232, 7
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  store i32 0, i32* %1235, align 4
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_400b79

block_.L_400b79:                                  ; preds = %block_.L_400bc3, %block_400b72
  %1236 = phi i64 [ %1402, %block_.L_400bc3 ], [ %.pre208, %block_400b72 ]
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -8
  %1239 = add i64 %1236, 4
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = add i32 %1241, -3
  %1243 = icmp ult i32 %1241, 3
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %14, align 1
  %1245 = and i32 %1242, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %21, align 1
  %1250 = xor i32 %1242, %1241
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %27, align 1
  %1254 = icmp eq i32 %1242, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %30, align 1
  %1256 = lshr i32 %1242, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %33, align 1
  %1258 = lshr i32 %1241, 31
  %1259 = xor i32 %1256, %1258
  %1260 = add nuw nsw i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %39, align 1
  %1263 = icmp ne i8 %1257, 0
  %1264 = xor i1 %1263, %1261
  %.demorgan262 = or i1 %1254, %1264
  %.v264 = select i1 %.demorgan262, i64 10, i64 93
  %1265 = add i64 %1236, %.v264
  store i64 %1265, i64* %3, align 8
  br i1 %.demorgan262, label %block_400b83, label %block_.L_400bd6

block_400b83:                                     ; preds = %block_.L_400b79
  %1266 = add i64 %1237, -12
  %1267 = add i64 %1265, 7
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  store i32 0, i32* %1268, align 4
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_400b8a

block_.L_400b8a:                                  ; preds = %block_400b94, %block_400b83
  %1269 = phi i64 [ %1372, %block_400b94 ], [ %.pre209, %block_400b83 ]
  %1270 = load i64, i64* %RBP.i, align 8
  %1271 = add i64 %1270, -12
  %1272 = add i64 %1269, 4
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  store i8 0, i8* %14, align 1
  %1275 = and i32 %1274, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1280 = icmp eq i32 %1274, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %30, align 1
  %1282 = lshr i32 %1274, 31
  %1283 = trunc i32 %1282 to i8
  store i8 %1283, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1284 = xor i1 %1280, true
  %1285 = icmp eq i8 %1283, 0
  %1286 = and i1 %1285, %1284
  %.v263 = select i1 %1286, i64 57, i64 10
  %1287 = add i64 %1269, %.v263
  store i64 %1287, i64* %3, align 8
  br i1 %1286, label %block_.L_400bc3, label %block_400b94

block_400b94:                                     ; preds = %block_.L_400b8a
  %1288 = add i64 %1270, -4
  %1289 = add i64 %1287, 3
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i1111, align 8
  %1293 = add i64 %1270, -8
  %1294 = add i64 %1287, 6
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RCX.i1079, align 8
  %1298 = add i64 %1287, 9
  store i64 %1298, i64* %3, align 8
  %1299 = load i32, i32* %1273, align 4
  %1300 = shl i32 %1299, 3
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RDX.i1076, align 8
  %1302 = add i32 %1300, %1296
  %1303 = shl i32 %1302, 3
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i1079, align 8
  %1305 = load i64, i64* %RAX.i1111, align 8
  %1306 = trunc i64 %1305 to i32
  %1307 = add i32 %1303, %1306
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RAX.i1111, align 8
  %1309 = icmp ult i32 %1307, %1306
  %1310 = icmp ult i32 %1307, %1303
  %1311 = or i1 %1309, %1310
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1307, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i64 %1304, %1305
  %1319 = trunc i64 %1318 to i32
  %1320 = xor i32 %1319, %1307
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %27, align 1
  %1324 = icmp eq i32 %1307, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %30, align 1
  %1326 = lshr i32 %1307, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %33, align 1
  %1328 = lshr i32 %1306, 31
  %1329 = lshr i32 %1302, 28
  %1330 = and i32 %1329, 1
  %1331 = xor i32 %1326, %1328
  %1332 = xor i32 %1326, %1330
  %1333 = add nuw nsw i32 %1331, %1332
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %39, align 1
  %1336 = sext i32 %1307 to i64
  store i64 %1336, i64* %RSI.i1064, align 8
  %1337 = shl nsw i64 %1336, 2
  %1338 = add nsw i64 %1337, 6312608
  %1339 = add i64 %1287, 33
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  store i32 1, i32* %1340, align 4
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -12
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, 1
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX.i1111, align 8
  %1349 = icmp eq i32 %1346, -1
  %1350 = icmp eq i32 %1347, 0
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %14, align 1
  %1353 = and i32 %1347, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  %1358 = xor i32 %1347, %1346
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %27, align 1
  %1362 = zext i1 %1350 to i8
  store i8 %1362, i8* %30, align 1
  %1363 = lshr i32 %1347, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %33, align 1
  %1365 = lshr i32 %1346, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1363
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %39, align 1
  %1370 = add i64 %1343, 9
  store i64 %1370, i64* %3, align 8
  store i32 %1347, i32* %1345, align 4
  %1371 = load i64, i64* %3, align 8
  %1372 = add i64 %1371, -52
  store i64 %1372, i64* %3, align 8
  br label %block_.L_400b8a

block_.L_400bc3:                                  ; preds = %block_.L_400b8a
  %1373 = add i64 %1270, -8
  %1374 = add i64 %1287, 8
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = add i32 %1376, 1
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i1111, align 8
  %1379 = icmp eq i32 %1376, -1
  %1380 = icmp eq i32 %1377, 0
  %1381 = or i1 %1379, %1380
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %14, align 1
  %1383 = and i32 %1377, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %21, align 1
  %1388 = xor i32 %1377, %1376
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = zext i1 %1380 to i8
  store i8 %1392, i8* %30, align 1
  %1393 = lshr i32 %1377, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %33, align 1
  %1395 = lshr i32 %1376, 31
  %1396 = xor i32 %1393, %1395
  %1397 = add nuw nsw i32 %1396, %1393
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %39, align 1
  %1400 = add i64 %1287, 14
  store i64 %1400, i64* %3, align 8
  store i32 %1377, i32* %1375, align 4
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, -88
  store i64 %1402, i64* %3, align 8
  br label %block_.L_400b79

block_.L_400bd6:                                  ; preds = %block_.L_400b79
  %1403 = add i64 %1237, -4
  %1404 = add i64 %1265, 8
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  %1406 = load i32, i32* %1405, align 4
  %1407 = add i32 %1406, 1
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RAX.i1111, align 8
  %1409 = icmp eq i32 %1406, -1
  %1410 = icmp eq i32 %1407, 0
  %1411 = or i1 %1409, %1410
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %14, align 1
  %1413 = and i32 %1407, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %21, align 1
  %1418 = xor i32 %1407, %1406
  %1419 = lshr i32 %1418, 4
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  store i8 %1421, i8* %27, align 1
  %1422 = zext i1 %1410 to i8
  store i8 %1422, i8* %30, align 1
  %1423 = lshr i32 %1407, 31
  %1424 = trunc i32 %1423 to i8
  store i8 %1424, i8* %33, align 1
  %1425 = lshr i32 %1406, 31
  %1426 = xor i32 %1423, %1425
  %1427 = add nuw nsw i32 %1426, %1423
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %39, align 1
  %1430 = add i64 %1265, 14
  store i64 %1430, i64* %3, align 8
  store i32 %1407, i32* %1405, align 4
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, -124
  store i64 %1432, i64* %3, align 8
  br label %block_.L_400b68

block_.L_400be9:                                  ; preds = %block_.L_400b68
  store i32 0, i32* inttoptr (i64 6394364 to i32*), align 4
  store i32 25, i32* inttoptr (i64 6357596 to i32*), align 4
  %1433 = add i64 %1232, 29
  store i64 %1433, i64* %3, align 8
  store i32 0, i32* %1207, align 4
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_400c06

block_.L_400c06:                                  ; preds = %block_.L_400c74, %block_.L_400be9
  %1434 = phi i64 [ %1663, %block_.L_400c74 ], [ %.pre210, %block_.L_400be9 ]
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -4
  %1437 = add i64 %1434, 4
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = add i32 %1439, -3
  %1441 = icmp ult i32 %1439, 3
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %14, align 1
  %1443 = and i32 %1440, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  %1448 = xor i32 %1440, %1439
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %27, align 1
  %1452 = icmp eq i32 %1440, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %30, align 1
  %1454 = lshr i32 %1440, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %33, align 1
  %1456 = lshr i32 %1439, 31
  %1457 = xor i32 %1454, %1456
  %1458 = add nuw nsw i32 %1457, %1456
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %39, align 1
  %1461 = icmp ne i8 %1455, 0
  %1462 = xor i1 %1461, %1459
  %.demorgan265 = or i1 %1452, %1462
  %.v306 = select i1 %.demorgan265, i64 10, i64 129
  %1463 = add i64 %1434, %.v306
  store i64 %1463, i64* %3, align 8
  br i1 %.demorgan265, label %block_400c10, label %block_.L_400c87

block_400c10:                                     ; preds = %block_.L_400c06
  %1464 = add i64 %1435, -8
  %1465 = add i64 %1463, 7
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  store i32 0, i32* %1466, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_400c17

block_.L_400c17:                                  ; preds = %block_.L_400c61, %block_400c10
  %1467 = phi i64 [ %1633, %block_.L_400c61 ], [ %.pre211, %block_400c10 ]
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -8
  %1470 = add i64 %1467, 4
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  store i8 0, i8* %14, align 1
  %1473 = and i32 %1472, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1478 = icmp eq i32 %1472, 0
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %30, align 1
  %1480 = lshr i32 %1472, 31
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1482 = xor i1 %1478, true
  %1483 = icmp eq i8 %1481, 0
  %1484 = and i1 %1483, %1482
  %.v268 = select i1 %1484, i64 93, i64 10
  %1485 = add i64 %1467, %.v268
  store i64 %1485, i64* %3, align 8
  br i1 %1484, label %block_.L_400c74, label %block_400c21

block_400c21:                                     ; preds = %block_.L_400c17
  %1486 = add i64 %1468, -12
  %1487 = add i64 %1485, 7
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  store i32 0, i32* %1488, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_400c28

block_.L_400c28:                                  ; preds = %block_400c32, %block_400c21
  %1489 = phi i64 [ %1603, %block_400c32 ], [ %.pre212, %block_400c21 ]
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -12
  %1492 = add i64 %1489, 4
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = add i32 %1494, -1
  %1496 = icmp eq i32 %1494, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = and i32 %1495, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %21, align 1
  %1503 = xor i32 %1495, %1494
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  store i8 %1506, i8* %27, align 1
  %1507 = icmp eq i32 %1495, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %30, align 1
  %1509 = lshr i32 %1495, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %33, align 1
  %1511 = lshr i32 %1494, 31
  %1512 = xor i32 %1509, %1511
  %1513 = add nuw nsw i32 %1512, %1511
  %1514 = icmp eq i32 %1513, 2
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %39, align 1
  %1516 = icmp ne i8 %1510, 0
  %1517 = xor i1 %1516, %1514
  %.demorgan266 = or i1 %1507, %1517
  %.v267 = select i1 %.demorgan266, i64 10, i64 57
  %1518 = add i64 %1489, %.v267
  store i64 %1518, i64* %3, align 8
  br i1 %.demorgan266, label %block_400c32, label %block_.L_400c61

block_400c32:                                     ; preds = %block_.L_400c28
  %1519 = add i64 %1490, -4
  %1520 = add i64 %1518, 3
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RAX.i1111, align 8
  %1524 = add i64 %1490, -8
  %1525 = add i64 %1518, 6
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RCX.i1079, align 8
  %1529 = add i64 %1518, 9
  store i64 %1529, i64* %3, align 8
  %1530 = load i32, i32* %1493, align 4
  %1531 = shl i32 %1530, 3
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RDX.i1076, align 8
  %1533 = add i32 %1531, %1527
  %1534 = shl i32 %1533, 3
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RCX.i1079, align 8
  %1536 = load i64, i64* %RAX.i1111, align 8
  %1537 = trunc i64 %1536 to i32
  %1538 = add i32 %1534, %1537
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RAX.i1111, align 8
  %1540 = icmp ult i32 %1538, %1537
  %1541 = icmp ult i32 %1538, %1534
  %1542 = or i1 %1540, %1541
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %14, align 1
  %1544 = and i32 %1538, 255
  %1545 = tail call i32 @llvm.ctpop.i32(i32 %1544)
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  store i8 %1548, i8* %21, align 1
  %1549 = xor i64 %1535, %1536
  %1550 = trunc i64 %1549 to i32
  %1551 = xor i32 %1550, %1538
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %27, align 1
  %1555 = icmp eq i32 %1538, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %30, align 1
  %1557 = lshr i32 %1538, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %33, align 1
  %1559 = lshr i32 %1537, 31
  %1560 = lshr i32 %1533, 28
  %1561 = and i32 %1560, 1
  %1562 = xor i32 %1557, %1559
  %1563 = xor i32 %1557, %1561
  %1564 = add nuw nsw i32 %1562, %1563
  %1565 = icmp eq i32 %1564, 2
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %39, align 1
  %1567 = sext i32 %1538 to i64
  store i64 %1567, i64* %RSI.i1064, align 8
  %1568 = shl nsw i64 %1567, 2
  %1569 = add nsw i64 %1568, 6314656
  %1570 = add i64 %1518, 33
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  store i32 1, i32* %1571, align 4
  %1572 = load i64, i64* %RBP.i, align 8
  %1573 = add i64 %1572, -12
  %1574 = load i64, i64* %3, align 8
  %1575 = add i64 %1574, 3
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1573 to i32*
  %1577 = load i32, i32* %1576, align 4
  %1578 = add i32 %1577, 1
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i1111, align 8
  %1580 = icmp eq i32 %1577, -1
  %1581 = icmp eq i32 %1578, 0
  %1582 = or i1 %1580, %1581
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %14, align 1
  %1584 = and i32 %1578, 255
  %1585 = tail call i32 @llvm.ctpop.i32(i32 %1584)
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = xor i8 %1587, 1
  store i8 %1588, i8* %21, align 1
  %1589 = xor i32 %1578, %1577
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %27, align 1
  %1593 = zext i1 %1581 to i8
  store i8 %1593, i8* %30, align 1
  %1594 = lshr i32 %1578, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %33, align 1
  %1596 = lshr i32 %1577, 31
  %1597 = xor i32 %1594, %1596
  %1598 = add nuw nsw i32 %1597, %1594
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %39, align 1
  %1601 = add i64 %1574, 9
  store i64 %1601, i64* %3, align 8
  store i32 %1578, i32* %1576, align 4
  %1602 = load i64, i64* %3, align 8
  %1603 = add i64 %1602, -52
  store i64 %1603, i64* %3, align 8
  br label %block_.L_400c28

block_.L_400c61:                                  ; preds = %block_.L_400c28
  %1604 = add i64 %1490, -8
  %1605 = add i64 %1518, 8
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = add i32 %1607, 1
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RAX.i1111, align 8
  %1610 = icmp eq i32 %1607, -1
  %1611 = icmp eq i32 %1608, 0
  %1612 = or i1 %1610, %1611
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %14, align 1
  %1614 = and i32 %1608, 255
  %1615 = tail call i32 @llvm.ctpop.i32(i32 %1614)
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  store i8 %1618, i8* %21, align 1
  %1619 = xor i32 %1608, %1607
  %1620 = lshr i32 %1619, 4
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  store i8 %1622, i8* %27, align 1
  %1623 = zext i1 %1611 to i8
  store i8 %1623, i8* %30, align 1
  %1624 = lshr i32 %1608, 31
  %1625 = trunc i32 %1624 to i8
  store i8 %1625, i8* %33, align 1
  %1626 = lshr i32 %1607, 31
  %1627 = xor i32 %1624, %1626
  %1628 = add nuw nsw i32 %1627, %1624
  %1629 = icmp eq i32 %1628, 2
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %39, align 1
  %1631 = add i64 %1518, 14
  store i64 %1631, i64* %3, align 8
  store i32 %1608, i32* %1606, align 4
  %1632 = load i64, i64* %3, align 8
  %1633 = add i64 %1632, -88
  store i64 %1633, i64* %3, align 8
  br label %block_.L_400c17

block_.L_400c74:                                  ; preds = %block_.L_400c17
  %1634 = add i64 %1468, -4
  %1635 = add i64 %1485, 8
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = add i32 %1637, 1
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i1111, align 8
  %1640 = icmp eq i32 %1637, -1
  %1641 = icmp eq i32 %1638, 0
  %1642 = or i1 %1640, %1641
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %14, align 1
  %1644 = and i32 %1638, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %21, align 1
  %1649 = xor i32 %1638, %1637
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %27, align 1
  %1653 = zext i1 %1641 to i8
  store i8 %1653, i8* %30, align 1
  %1654 = lshr i32 %1638, 31
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %33, align 1
  %1656 = lshr i32 %1637, 31
  %1657 = xor i32 %1654, %1656
  %1658 = add nuw nsw i32 %1657, %1654
  %1659 = icmp eq i32 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %39, align 1
  %1661 = add i64 %1485, 14
  store i64 %1661, i64* %3, align 8
  store i32 %1638, i32* %1636, align 4
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, -124
  store i64 %1663, i64* %3, align 8
  br label %block_.L_400c06

block_.L_400c87:                                  ; preds = %block_.L_400c06
  store i32 0, i32* inttoptr (i64 6394368 to i32*), align 512
  store i32 67, i32* inttoptr (i64 6357600 to i32*), align 32
  %1664 = add i64 %1463, 29
  store i64 %1664, i64* %3, align 8
  store i32 0, i32* %1438, align 4
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_400ca4

block_.L_400ca4:                                  ; preds = %block_.L_400d12, %block_.L_400c87
  %1665 = phi i64 [ %1894, %block_.L_400d12 ], [ %.pre213, %block_.L_400c87 ]
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -4
  %1668 = add i64 %1665, 4
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  store i8 0, i8* %14, align 1
  %1671 = and i32 %1670, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1676 = icmp eq i32 %1670, 0
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %30, align 1
  %1678 = lshr i32 %1670, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1680 = xor i1 %1676, true
  %1681 = icmp eq i8 %1679, 0
  %1682 = and i1 %1681, %1680
  %.v307 = select i1 %1682, i64 129, i64 10
  %1683 = add i64 %1665, %.v307
  store i64 %1683, i64* %3, align 8
  br i1 %1682, label %block_.L_400d25, label %block_400cae

block_400cae:                                     ; preds = %block_.L_400ca4
  %1684 = add i64 %1666, -8
  %1685 = add i64 %1683, 7
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  store i32 0, i32* %1686, align 4
  %.pre214 = load i64, i64* %3, align 8
  br label %block_.L_400cb5

block_.L_400cb5:                                  ; preds = %block_.L_400cff, %block_400cae
  %1687 = phi i64 [ %1864, %block_.L_400cff ], [ %.pre214, %block_400cae ]
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -8
  %1690 = add i64 %1687, 4
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = add i32 %1692, -1
  %1694 = icmp eq i32 %1692, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %14, align 1
  %1696 = and i32 %1693, 255
  %1697 = tail call i32 @llvm.ctpop.i32(i32 %1696)
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  store i8 %1700, i8* %21, align 1
  %1701 = xor i32 %1693, %1692
  %1702 = lshr i32 %1701, 4
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  store i8 %1704, i8* %27, align 1
  %1705 = icmp eq i32 %1693, 0
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %30, align 1
  %1707 = lshr i32 %1693, 31
  %1708 = trunc i32 %1707 to i8
  store i8 %1708, i8* %33, align 1
  %1709 = lshr i32 %1692, 31
  %1710 = xor i32 %1707, %1709
  %1711 = add nuw nsw i32 %1710, %1709
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %39, align 1
  %1714 = icmp ne i8 %1708, 0
  %1715 = xor i1 %1714, %1712
  %.demorgan269 = or i1 %1705, %1715
  %.v272 = select i1 %.demorgan269, i64 10, i64 93
  %1716 = add i64 %1687, %.v272
  store i64 %1716, i64* %3, align 8
  br i1 %.demorgan269, label %block_400cbf, label %block_.L_400d12

block_400cbf:                                     ; preds = %block_.L_400cb5
  %1717 = add i64 %1688, -12
  %1718 = add i64 %1716, 7
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  store i32 0, i32* %1719, align 4
  %.pre215 = load i64, i64* %3, align 8
  br label %block_.L_400cc6

block_.L_400cc6:                                  ; preds = %block_400cd0, %block_400cbf
  %1720 = phi i64 [ %1834, %block_400cd0 ], [ %.pre215, %block_400cbf ]
  %1721 = load i64, i64* %RBP.i, align 8
  %1722 = add i64 %1721, -12
  %1723 = add i64 %1720, 4
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = add i32 %1725, -3
  %1727 = icmp ult i32 %1725, 3
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %14, align 1
  %1729 = and i32 %1726, 255
  %1730 = tail call i32 @llvm.ctpop.i32(i32 %1729)
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  store i8 %1733, i8* %21, align 1
  %1734 = xor i32 %1726, %1725
  %1735 = lshr i32 %1734, 4
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %27, align 1
  %1738 = icmp eq i32 %1726, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %30, align 1
  %1740 = lshr i32 %1726, 31
  %1741 = trunc i32 %1740 to i8
  store i8 %1741, i8* %33, align 1
  %1742 = lshr i32 %1725, 31
  %1743 = xor i32 %1740, %1742
  %1744 = add nuw nsw i32 %1743, %1742
  %1745 = icmp eq i32 %1744, 2
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %39, align 1
  %1747 = icmp ne i8 %1741, 0
  %1748 = xor i1 %1747, %1745
  %.demorgan270 = or i1 %1738, %1748
  %.v271 = select i1 %.demorgan270, i64 10, i64 57
  %1749 = add i64 %1720, %.v271
  store i64 %1749, i64* %3, align 8
  br i1 %.demorgan270, label %block_400cd0, label %block_.L_400cff

block_400cd0:                                     ; preds = %block_.L_400cc6
  %1750 = add i64 %1721, -4
  %1751 = add i64 %1749, 3
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = zext i32 %1753 to i64
  store i64 %1754, i64* %RAX.i1111, align 8
  %1755 = add i64 %1721, -8
  %1756 = add i64 %1749, 6
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i1079, align 8
  %1760 = add i64 %1749, 9
  store i64 %1760, i64* %3, align 8
  %1761 = load i32, i32* %1724, align 4
  %1762 = shl i32 %1761, 3
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RDX.i1076, align 8
  %1764 = add i32 %1762, %1758
  %1765 = shl i32 %1764, 3
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RCX.i1079, align 8
  %1767 = load i64, i64* %RAX.i1111, align 8
  %1768 = trunc i64 %1767 to i32
  %1769 = add i32 %1765, %1768
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX.i1111, align 8
  %1771 = icmp ult i32 %1769, %1768
  %1772 = icmp ult i32 %1769, %1765
  %1773 = or i1 %1771, %1772
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %14, align 1
  %1775 = and i32 %1769, 255
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %21, align 1
  %1780 = xor i64 %1766, %1767
  %1781 = trunc i64 %1780 to i32
  %1782 = xor i32 %1781, %1769
  %1783 = lshr i32 %1782, 4
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  store i8 %1785, i8* %27, align 1
  %1786 = icmp eq i32 %1769, 0
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %30, align 1
  %1788 = lshr i32 %1769, 31
  %1789 = trunc i32 %1788 to i8
  store i8 %1789, i8* %33, align 1
  %1790 = lshr i32 %1768, 31
  %1791 = lshr i32 %1764, 28
  %1792 = and i32 %1791, 1
  %1793 = xor i32 %1788, %1790
  %1794 = xor i32 %1788, %1792
  %1795 = add nuw nsw i32 %1793, %1794
  %1796 = icmp eq i32 %1795, 2
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %39, align 1
  %1798 = sext i32 %1769 to i64
  store i64 %1798, i64* %RSI.i1064, align 8
  %1799 = shl nsw i64 %1798, 2
  %1800 = add nsw i64 %1799, 6316704
  %1801 = add i64 %1749, 33
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  store i32 1, i32* %1802, align 4
  %1803 = load i64, i64* %RBP.i, align 8
  %1804 = add i64 %1803, -12
  %1805 = load i64, i64* %3, align 8
  %1806 = add i64 %1805, 3
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1804 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = add i32 %1808, 1
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RAX.i1111, align 8
  %1811 = icmp eq i32 %1808, -1
  %1812 = icmp eq i32 %1809, 0
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %14, align 1
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %21, align 1
  %1820 = xor i32 %1809, %1808
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %27, align 1
  %1824 = zext i1 %1812 to i8
  store i8 %1824, i8* %30, align 1
  %1825 = lshr i32 %1809, 31
  %1826 = trunc i32 %1825 to i8
  store i8 %1826, i8* %33, align 1
  %1827 = lshr i32 %1808, 31
  %1828 = xor i32 %1825, %1827
  %1829 = add nuw nsw i32 %1828, %1825
  %1830 = icmp eq i32 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %39, align 1
  %1832 = add i64 %1805, 9
  store i64 %1832, i64* %3, align 8
  store i32 %1809, i32* %1807, align 4
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, -52
  store i64 %1834, i64* %3, align 8
  br label %block_.L_400cc6

block_.L_400cff:                                  ; preds = %block_.L_400cc6
  %1835 = add i64 %1721, -8
  %1836 = add i64 %1749, 8
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = add i32 %1838, 1
  %1840 = zext i32 %1839 to i64
  store i64 %1840, i64* %RAX.i1111, align 8
  %1841 = icmp eq i32 %1838, -1
  %1842 = icmp eq i32 %1839, 0
  %1843 = or i1 %1841, %1842
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %14, align 1
  %1845 = and i32 %1839, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %21, align 1
  %1850 = xor i32 %1839, %1838
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  store i8 %1853, i8* %27, align 1
  %1854 = zext i1 %1842 to i8
  store i8 %1854, i8* %30, align 1
  %1855 = lshr i32 %1839, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %33, align 1
  %1857 = lshr i32 %1838, 31
  %1858 = xor i32 %1855, %1857
  %1859 = add nuw nsw i32 %1858, %1855
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %39, align 1
  %1862 = add i64 %1749, 14
  store i64 %1862, i64* %3, align 8
  store i32 %1839, i32* %1837, align 4
  %1863 = load i64, i64* %3, align 8
  %1864 = add i64 %1863, -88
  store i64 %1864, i64* %3, align 8
  br label %block_.L_400cb5

block_.L_400d12:                                  ; preds = %block_.L_400cb5
  %1865 = add i64 %1688, -4
  %1866 = add i64 %1716, 8
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = add i32 %1868, 1
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i1111, align 8
  %1871 = icmp eq i32 %1868, -1
  %1872 = icmp eq i32 %1869, 0
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = and i32 %1869, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1
  %1880 = xor i32 %1869, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %27, align 1
  %1884 = zext i1 %1872 to i8
  store i8 %1884, i8* %30, align 1
  %1885 = lshr i32 %1869, 31
  %1886 = trunc i32 %1885 to i8
  store i8 %1886, i8* %33, align 1
  %1887 = lshr i32 %1868, 31
  %1888 = xor i32 %1885, %1887
  %1889 = add nuw nsw i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %39, align 1
  %1892 = add i64 %1716, 14
  store i64 %1892, i64* %3, align 8
  store i32 %1869, i32* %1867, align 4
  %1893 = load i64, i64* %3, align 8
  %1894 = add i64 %1893, -124
  store i64 %1894, i64* %3, align 8
  br label %block_.L_400ca4

block_.L_400d25:                                  ; preds = %block_.L_400ca4
  store i32 0, i32* inttoptr (i64 6394372 to i32*), align 4
  store i32 200, i32* inttoptr (i64 6357604 to i32*), align 4
  %1895 = add i64 %1683, 29
  store i64 %1895, i64* %3, align 8
  store i32 0, i32* %1669, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_400d42

block_.L_400d42:                                  ; preds = %block_.L_400db0, %block_.L_400d25
  %1896 = phi i64 [ %2114, %block_.L_400db0 ], [ %.pre216, %block_.L_400d25 ]
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -4
  %1899 = add i64 %1896, 4
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, -2
  %1903 = icmp ult i32 %1901, 2
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = and i32 %1902, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %21, align 1
  %1910 = xor i32 %1902, %1901
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %27, align 1
  %1914 = icmp eq i32 %1902, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %30, align 1
  %1916 = lshr i32 %1902, 31
  %1917 = trunc i32 %1916 to i8
  store i8 %1917, i8* %33, align 1
  %1918 = lshr i32 %1901, 31
  %1919 = xor i32 %1916, %1918
  %1920 = add nuw nsw i32 %1919, %1918
  %1921 = icmp eq i32 %1920, 2
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %39, align 1
  %1923 = icmp ne i8 %1917, 0
  %1924 = xor i1 %1923, %1921
  %.demorgan273 = or i1 %1914, %1924
  %.v308 = select i1 %.demorgan273, i64 10, i64 129
  %1925 = add i64 %1896, %.v308
  store i64 %1925, i64* %3, align 8
  br i1 %.demorgan273, label %block_400d4c, label %block_.L_400dc3

block_400d4c:                                     ; preds = %block_.L_400d42
  %1926 = add i64 %1897, -8
  %1927 = add i64 %1925, 7
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  store i32 0, i32* %1928, align 4
  %.pre217 = load i64, i64* %3, align 8
  br label %block_.L_400d53

block_.L_400d53:                                  ; preds = %block_.L_400d9d, %block_400d4c
  %1929 = phi i64 [ %2084, %block_.L_400d9d ], [ %.pre217, %block_400d4c ]
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -8
  %1932 = add i64 %1929, 4
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  store i8 0, i8* %14, align 1
  %1935 = and i32 %1934, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1940 = icmp eq i32 %1934, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %30, align 1
  %1942 = lshr i32 %1934, 31
  %1943 = trunc i32 %1942 to i8
  store i8 %1943, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1944 = xor i1 %1940, true
  %1945 = icmp eq i8 %1943, 0
  %1946 = and i1 %1945, %1944
  %.v275 = select i1 %1946, i64 93, i64 10
  %1947 = add i64 %1929, %.v275
  store i64 %1947, i64* %3, align 8
  br i1 %1946, label %block_.L_400db0, label %block_400d5d

block_400d5d:                                     ; preds = %block_.L_400d53
  %1948 = add i64 %1930, -12
  %1949 = add i64 %1947, 7
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  store i32 0, i32* %1950, align 4
  %.pre218 = load i64, i64* %3, align 8
  br label %block_.L_400d64

block_.L_400d64:                                  ; preds = %block_400d6e, %block_400d5d
  %1951 = phi i64 [ %2054, %block_400d6e ], [ %.pre218, %block_400d5d ]
  %1952 = load i64, i64* %RBP.i, align 8
  %1953 = add i64 %1952, -12
  %1954 = add i64 %1951, 4
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  store i8 0, i8* %14, align 1
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1962 = icmp eq i32 %1956, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i32 %1956, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1966 = xor i1 %1962, true
  %1967 = icmp eq i8 %1965, 0
  %1968 = and i1 %1967, %1966
  %.v274 = select i1 %1968, i64 57, i64 10
  %1969 = add i64 %1951, %.v274
  store i64 %1969, i64* %3, align 8
  br i1 %1968, label %block_.L_400d9d, label %block_400d6e

block_400d6e:                                     ; preds = %block_.L_400d64
  %1970 = add i64 %1952, -4
  %1971 = add i64 %1969, 3
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RAX.i1111, align 8
  %1975 = add i64 %1952, -8
  %1976 = add i64 %1969, 6
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i1079, align 8
  %1980 = add i64 %1969, 9
  store i64 %1980, i64* %3, align 8
  %1981 = load i32, i32* %1955, align 4
  %1982 = shl i32 %1981, 3
  %1983 = zext i32 %1982 to i64
  store i64 %1983, i64* %RDX.i1076, align 8
  %1984 = add i32 %1982, %1978
  %1985 = shl i32 %1984, 3
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i1079, align 8
  %1987 = load i64, i64* %RAX.i1111, align 8
  %1988 = trunc i64 %1987 to i32
  %1989 = add i32 %1985, %1988
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RAX.i1111, align 8
  %1991 = icmp ult i32 %1989, %1988
  %1992 = icmp ult i32 %1989, %1985
  %1993 = or i1 %1991, %1992
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %14, align 1
  %1995 = and i32 %1989, 255
  %1996 = tail call i32 @llvm.ctpop.i32(i32 %1995)
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  %1999 = xor i8 %1998, 1
  store i8 %1999, i8* %21, align 1
  %2000 = xor i64 %1986, %1987
  %2001 = trunc i64 %2000 to i32
  %2002 = xor i32 %2001, %1989
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %27, align 1
  %2006 = icmp eq i32 %1989, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %30, align 1
  %2008 = lshr i32 %1989, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %33, align 1
  %2010 = lshr i32 %1988, 31
  %2011 = lshr i32 %1984, 28
  %2012 = and i32 %2011, 1
  %2013 = xor i32 %2008, %2010
  %2014 = xor i32 %2008, %2012
  %2015 = add nuw nsw i32 %2013, %2014
  %2016 = icmp eq i32 %2015, 2
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %39, align 1
  %2018 = sext i32 %1989 to i64
  store i64 %2018, i64* %RSI.i1064, align 8
  %2019 = shl nsw i64 %2018, 2
  %2020 = add nsw i64 %2019, 6318752
  %2021 = add i64 %1969, 33
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i32*
  store i32 1, i32* %2022, align 4
  %2023 = load i64, i64* %RBP.i, align 8
  %2024 = add i64 %2023, -12
  %2025 = load i64, i64* %3, align 8
  %2026 = add i64 %2025, 3
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2024 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = add i32 %2028, 1
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RAX.i1111, align 8
  %2031 = icmp eq i32 %2028, -1
  %2032 = icmp eq i32 %2029, 0
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %14, align 1
  %2035 = and i32 %2029, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %21, align 1
  %2040 = xor i32 %2029, %2028
  %2041 = lshr i32 %2040, 4
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  store i8 %2043, i8* %27, align 1
  %2044 = zext i1 %2032 to i8
  store i8 %2044, i8* %30, align 1
  %2045 = lshr i32 %2029, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %33, align 1
  %2047 = lshr i32 %2028, 31
  %2048 = xor i32 %2045, %2047
  %2049 = add nuw nsw i32 %2048, %2045
  %2050 = icmp eq i32 %2049, 2
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %39, align 1
  %2052 = add i64 %2025, 9
  store i64 %2052, i64* %3, align 8
  store i32 %2029, i32* %2027, align 4
  %2053 = load i64, i64* %3, align 8
  %2054 = add i64 %2053, -52
  store i64 %2054, i64* %3, align 8
  br label %block_.L_400d64

block_.L_400d9d:                                  ; preds = %block_.L_400d64
  %2055 = add i64 %1952, -8
  %2056 = add i64 %1969, 8
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = add i32 %2058, 1
  %2060 = zext i32 %2059 to i64
  store i64 %2060, i64* %RAX.i1111, align 8
  %2061 = icmp eq i32 %2058, -1
  %2062 = icmp eq i32 %2059, 0
  %2063 = or i1 %2061, %2062
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %14, align 1
  %2065 = and i32 %2059, 255
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  %2070 = xor i32 %2059, %2058
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %27, align 1
  %2074 = zext i1 %2062 to i8
  store i8 %2074, i8* %30, align 1
  %2075 = lshr i32 %2059, 31
  %2076 = trunc i32 %2075 to i8
  store i8 %2076, i8* %33, align 1
  %2077 = lshr i32 %2058, 31
  %2078 = xor i32 %2075, %2077
  %2079 = add nuw nsw i32 %2078, %2075
  %2080 = icmp eq i32 %2079, 2
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %39, align 1
  %2082 = add i64 %1969, 14
  store i64 %2082, i64* %3, align 8
  store i32 %2059, i32* %2057, align 4
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, -88
  store i64 %2084, i64* %3, align 8
  br label %block_.L_400d53

block_.L_400db0:                                  ; preds = %block_.L_400d53
  %2085 = add i64 %1930, -4
  %2086 = add i64 %1947, 8
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = add i32 %2088, 1
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RAX.i1111, align 8
  %2091 = icmp eq i32 %2088, -1
  %2092 = icmp eq i32 %2089, 0
  %2093 = or i1 %2091, %2092
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %14, align 1
  %2095 = and i32 %2089, 255
  %2096 = tail call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  store i8 %2099, i8* %21, align 1
  %2100 = xor i32 %2089, %2088
  %2101 = lshr i32 %2100, 4
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  store i8 %2103, i8* %27, align 1
  %2104 = zext i1 %2092 to i8
  store i8 %2104, i8* %30, align 1
  %2105 = lshr i32 %2089, 31
  %2106 = trunc i32 %2105 to i8
  store i8 %2106, i8* %33, align 1
  %2107 = lshr i32 %2088, 31
  %2108 = xor i32 %2105, %2107
  %2109 = add nuw nsw i32 %2108, %2105
  %2110 = icmp eq i32 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %39, align 1
  %2112 = add i64 %1947, 14
  store i64 %2112, i64* %3, align 8
  store i32 %2089, i32* %2087, align 4
  %2113 = load i64, i64* %3, align 8
  %2114 = add i64 %2113, -124
  store i64 %2114, i64* %3, align 8
  br label %block_.L_400d42

block_.L_400dc3:                                  ; preds = %block_.L_400d42
  store i32 1, i32* inttoptr (i64 6394376 to i32*), align 8
  store i32 2, i32* inttoptr (i64 6357608 to i32*), align 8
  %2115 = add i64 %1925, 29
  store i64 %2115, i64* %3, align 8
  store i32 0, i32* %1900, align 4
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_400de0

block_.L_400de0:                                  ; preds = %block_.L_400e4e, %block_.L_400dc3
  %2116 = phi i64 [ %2334, %block_.L_400e4e ], [ %.pre219, %block_.L_400dc3 ]
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -4
  %2119 = add i64 %2116, 4
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  store i8 0, i8* %14, align 1
  %2122 = and i32 %2121, 255
  %2123 = tail call i32 @llvm.ctpop.i32(i32 %2122)
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  %2126 = xor i8 %2125, 1
  store i8 %2126, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2127 = icmp eq i32 %2121, 0
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %30, align 1
  %2129 = lshr i32 %2121, 31
  %2130 = trunc i32 %2129 to i8
  store i8 %2130, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2131 = xor i1 %2127, true
  %2132 = icmp eq i8 %2130, 0
  %2133 = and i1 %2132, %2131
  %.v309 = select i1 %2133, i64 129, i64 10
  %2134 = add i64 %2116, %.v309
  store i64 %2134, i64* %3, align 8
  br i1 %2133, label %block_.L_400e61, label %block_400dea

block_400dea:                                     ; preds = %block_.L_400de0
  %2135 = add i64 %2117, -8
  %2136 = add i64 %2134, 7
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  store i32 0, i32* %2137, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_400df1

block_.L_400df1:                                  ; preds = %block_.L_400e3b, %block_400dea
  %2138 = phi i64 [ %2304, %block_.L_400e3b ], [ %.pre220, %block_400dea ]
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -8
  %2141 = add i64 %2138, 4
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = add i32 %2143, -2
  %2145 = icmp ult i32 %2143, 2
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %14, align 1
  %2147 = and i32 %2144, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %21, align 1
  %2152 = xor i32 %2144, %2143
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %27, align 1
  %2156 = icmp eq i32 %2144, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %30, align 1
  %2158 = lshr i32 %2144, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %33, align 1
  %2160 = lshr i32 %2143, 31
  %2161 = xor i32 %2158, %2160
  %2162 = add nuw nsw i32 %2161, %2160
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %39, align 1
  %2165 = icmp ne i8 %2159, 0
  %2166 = xor i1 %2165, %2163
  %.demorgan276 = or i1 %2156, %2166
  %.v278 = select i1 %.demorgan276, i64 10, i64 93
  %2167 = add i64 %2138, %.v278
  store i64 %2167, i64* %3, align 8
  br i1 %.demorgan276, label %block_400dfb, label %block_.L_400e4e

block_400dfb:                                     ; preds = %block_.L_400df1
  %2168 = add i64 %2139, -12
  %2169 = add i64 %2167, 7
  store i64 %2169, i64* %3, align 8
  %2170 = inttoptr i64 %2168 to i32*
  store i32 0, i32* %2170, align 4
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_400e02

block_.L_400e02:                                  ; preds = %block_400e0c, %block_400dfb
  %2171 = phi i64 [ %2274, %block_400e0c ], [ %.pre221, %block_400dfb ]
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -12
  %2174 = add i64 %2171, 4
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  store i8 0, i8* %14, align 1
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2182 = icmp eq i32 %2176, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %30, align 1
  %2184 = lshr i32 %2176, 31
  %2185 = trunc i32 %2184 to i8
  store i8 %2185, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2186 = xor i1 %2182, true
  %2187 = icmp eq i8 %2185, 0
  %2188 = and i1 %2187, %2186
  %.v277 = select i1 %2188, i64 57, i64 10
  %2189 = add i64 %2171, %.v277
  store i64 %2189, i64* %3, align 8
  br i1 %2188, label %block_.L_400e3b, label %block_400e0c

block_400e0c:                                     ; preds = %block_.L_400e02
  %2190 = add i64 %2172, -4
  %2191 = add i64 %2189, 3
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %RAX.i1111, align 8
  %2195 = add i64 %2172, -8
  %2196 = add i64 %2189, 6
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  %2198 = load i32, i32* %2197, align 4
  %2199 = zext i32 %2198 to i64
  store i64 %2199, i64* %RCX.i1079, align 8
  %2200 = add i64 %2189, 9
  store i64 %2200, i64* %3, align 8
  %2201 = load i32, i32* %2175, align 4
  %2202 = shl i32 %2201, 3
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RDX.i1076, align 8
  %2204 = add i32 %2202, %2198
  %2205 = shl i32 %2204, 3
  %2206 = zext i32 %2205 to i64
  store i64 %2206, i64* %RCX.i1079, align 8
  %2207 = load i64, i64* %RAX.i1111, align 8
  %2208 = trunc i64 %2207 to i32
  %2209 = add i32 %2205, %2208
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RAX.i1111, align 8
  %2211 = icmp ult i32 %2209, %2208
  %2212 = icmp ult i32 %2209, %2205
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %14, align 1
  %2215 = and i32 %2209, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  %2220 = xor i64 %2206, %2207
  %2221 = trunc i64 %2220 to i32
  %2222 = xor i32 %2221, %2209
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %27, align 1
  %2226 = icmp eq i32 %2209, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %30, align 1
  %2228 = lshr i32 %2209, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %33, align 1
  %2230 = lshr i32 %2208, 31
  %2231 = lshr i32 %2204, 28
  %2232 = and i32 %2231, 1
  %2233 = xor i32 %2228, %2230
  %2234 = xor i32 %2228, %2232
  %2235 = add nuw nsw i32 %2233, %2234
  %2236 = icmp eq i32 %2235, 2
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %39, align 1
  %2238 = sext i32 %2209 to i64
  store i64 %2238, i64* %RSI.i1064, align 8
  %2239 = shl nsw i64 %2238, 2
  %2240 = add nsw i64 %2239, 6320800
  %2241 = add i64 %2189, 33
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  store i32 1, i32* %2242, align 4
  %2243 = load i64, i64* %RBP.i, align 8
  %2244 = add i64 %2243, -12
  %2245 = load i64, i64* %3, align 8
  %2246 = add i64 %2245, 3
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2244 to i32*
  %2248 = load i32, i32* %2247, align 4
  %2249 = add i32 %2248, 1
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RAX.i1111, align 8
  %2251 = icmp eq i32 %2248, -1
  %2252 = icmp eq i32 %2249, 0
  %2253 = or i1 %2251, %2252
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %14, align 1
  %2255 = and i32 %2249, 255
  %2256 = tail call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  store i8 %2259, i8* %21, align 1
  %2260 = xor i32 %2249, %2248
  %2261 = lshr i32 %2260, 4
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  store i8 %2263, i8* %27, align 1
  %2264 = zext i1 %2252 to i8
  store i8 %2264, i8* %30, align 1
  %2265 = lshr i32 %2249, 31
  %2266 = trunc i32 %2265 to i8
  store i8 %2266, i8* %33, align 1
  %2267 = lshr i32 %2248, 31
  %2268 = xor i32 %2265, %2267
  %2269 = add nuw nsw i32 %2268, %2265
  %2270 = icmp eq i32 %2269, 2
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %39, align 1
  %2272 = add i64 %2245, 9
  store i64 %2272, i64* %3, align 8
  store i32 %2249, i32* %2247, align 4
  %2273 = load i64, i64* %3, align 8
  %2274 = add i64 %2273, -52
  store i64 %2274, i64* %3, align 8
  br label %block_.L_400e02

block_.L_400e3b:                                  ; preds = %block_.L_400e02
  %2275 = add i64 %2172, -8
  %2276 = add i64 %2189, 8
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i32*
  %2278 = load i32, i32* %2277, align 4
  %2279 = add i32 %2278, 1
  %2280 = zext i32 %2279 to i64
  store i64 %2280, i64* %RAX.i1111, align 8
  %2281 = icmp eq i32 %2278, -1
  %2282 = icmp eq i32 %2279, 0
  %2283 = or i1 %2281, %2282
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %14, align 1
  %2285 = and i32 %2279, 255
  %2286 = tail call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  store i8 %2289, i8* %21, align 1
  %2290 = xor i32 %2279, %2278
  %2291 = lshr i32 %2290, 4
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  store i8 %2293, i8* %27, align 1
  %2294 = zext i1 %2282 to i8
  store i8 %2294, i8* %30, align 1
  %2295 = lshr i32 %2279, 31
  %2296 = trunc i32 %2295 to i8
  store i8 %2296, i8* %33, align 1
  %2297 = lshr i32 %2278, 31
  %2298 = xor i32 %2295, %2297
  %2299 = add nuw nsw i32 %2298, %2295
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %39, align 1
  %2302 = add i64 %2189, 14
  store i64 %2302, i64* %3, align 8
  store i32 %2279, i32* %2277, align 4
  %2303 = load i64, i64* %3, align 8
  %2304 = add i64 %2303, -88
  store i64 %2304, i64* %3, align 8
  br label %block_.L_400df1

block_.L_400e4e:                                  ; preds = %block_.L_400df1
  %2305 = add i64 %2139, -4
  %2306 = add i64 %2167, 8
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = add i32 %2308, 1
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX.i1111, align 8
  %2311 = icmp eq i32 %2308, -1
  %2312 = icmp eq i32 %2309, 0
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %14, align 1
  %2315 = and i32 %2309, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %21, align 1
  %2320 = xor i32 %2309, %2308
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %27, align 1
  %2324 = zext i1 %2312 to i8
  store i8 %2324, i8* %30, align 1
  %2325 = lshr i32 %2309, 31
  %2326 = trunc i32 %2325 to i8
  store i8 %2326, i8* %33, align 1
  %2327 = lshr i32 %2308, 31
  %2328 = xor i32 %2325, %2327
  %2329 = add nuw nsw i32 %2328, %2325
  %2330 = icmp eq i32 %2329, 2
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %39, align 1
  %2332 = add i64 %2167, 14
  store i64 %2332, i64* %3, align 8
  store i32 %2309, i32* %2307, align 4
  %2333 = load i64, i64* %3, align 8
  %2334 = add i64 %2333, -124
  store i64 %2334, i64* %3, align 8
  br label %block_.L_400de0

block_.L_400e61:                                  ; preds = %block_.L_400de0
  store i32 1, i32* inttoptr (i64 6394380 to i32*), align 4
  store i32 16, i32* inttoptr (i64 6357612 to i32*), align 4
  %2335 = add i64 %2134, 29
  store i64 %2335, i64* %3, align 8
  store i32 0, i32* %2120, align 4
  %.pre222 = load i64, i64* %3, align 8
  br label %block_.L_400e7e

block_.L_400e7e:                                  ; preds = %block_.L_400eec, %block_.L_400e61
  %2336 = phi i64 [ %2554, %block_.L_400eec ], [ %.pre222, %block_.L_400e61 ]
  %2337 = load i64, i64* %RBP.i, align 8
  %2338 = add i64 %2337, -4
  %2339 = add i64 %2336, 4
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i32*
  %2341 = load i32, i32* %2340, align 4
  store i8 0, i8* %14, align 1
  %2342 = and i32 %2341, 255
  %2343 = tail call i32 @llvm.ctpop.i32(i32 %2342)
  %2344 = trunc i32 %2343 to i8
  %2345 = and i8 %2344, 1
  %2346 = xor i8 %2345, 1
  store i8 %2346, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2347 = icmp eq i32 %2341, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %30, align 1
  %2349 = lshr i32 %2341, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2351 = xor i1 %2347, true
  %2352 = icmp eq i8 %2350, 0
  %2353 = and i1 %2352, %2351
  %.v310 = select i1 %2353, i64 129, i64 10
  %2354 = add i64 %2336, %.v310
  store i64 %2354, i64* %3, align 8
  br i1 %2353, label %block_.L_400eff, label %block_400e88

block_400e88:                                     ; preds = %block_.L_400e7e
  %2355 = add i64 %2337, -8
  %2356 = add i64 %2354, 7
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  store i32 0, i32* %2357, align 4
  %.pre223 = load i64, i64* %3, align 8
  br label %block_.L_400e8f

block_.L_400e8f:                                  ; preds = %block_.L_400ed9, %block_400e88
  %2358 = phi i64 [ %2524, %block_.L_400ed9 ], [ %.pre223, %block_400e88 ]
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -8
  %2361 = add i64 %2358, 4
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  store i8 0, i8* %14, align 1
  %2364 = and i32 %2363, 255
  %2365 = tail call i32 @llvm.ctpop.i32(i32 %2364)
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  store i8 %2368, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2369 = icmp eq i32 %2363, 0
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %30, align 1
  %2371 = lshr i32 %2363, 31
  %2372 = trunc i32 %2371 to i8
  store i8 %2372, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2373 = xor i1 %2369, true
  %2374 = icmp eq i8 %2372, 0
  %2375 = and i1 %2374, %2373
  %.v281 = select i1 %2375, i64 93, i64 10
  %2376 = add i64 %2358, %.v281
  store i64 %2376, i64* %3, align 8
  br i1 %2375, label %block_.L_400eec, label %block_400e99

block_400e99:                                     ; preds = %block_.L_400e8f
  %2377 = add i64 %2359, -12
  %2378 = add i64 %2376, 7
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  store i32 0, i32* %2379, align 4
  %.pre224 = load i64, i64* %3, align 8
  br label %block_.L_400ea0

block_.L_400ea0:                                  ; preds = %block_400eaa, %block_400e99
  %2380 = phi i64 [ %2494, %block_400eaa ], [ %.pre224, %block_400e99 ]
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -12
  %2383 = add i64 %2380, 4
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = add i32 %2385, -2
  %2387 = icmp ult i32 %2385, 2
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %14, align 1
  %2389 = and i32 %2386, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %21, align 1
  %2394 = xor i32 %2386, %2385
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %27, align 1
  %2398 = icmp eq i32 %2386, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %30, align 1
  %2400 = lshr i32 %2386, 31
  %2401 = trunc i32 %2400 to i8
  store i8 %2401, i8* %33, align 1
  %2402 = lshr i32 %2385, 31
  %2403 = xor i32 %2400, %2402
  %2404 = add nuw nsw i32 %2403, %2402
  %2405 = icmp eq i32 %2404, 2
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %39, align 1
  %2407 = icmp ne i8 %2401, 0
  %2408 = xor i1 %2407, %2405
  %.demorgan279 = or i1 %2398, %2408
  %.v280 = select i1 %.demorgan279, i64 10, i64 57
  %2409 = add i64 %2380, %.v280
  store i64 %2409, i64* %3, align 8
  br i1 %.demorgan279, label %block_400eaa, label %block_.L_400ed9

block_400eaa:                                     ; preds = %block_.L_400ea0
  %2410 = add i64 %2381, -4
  %2411 = add i64 %2409, 3
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RAX.i1111, align 8
  %2415 = add i64 %2381, -8
  %2416 = add i64 %2409, 6
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RCX.i1079, align 8
  %2420 = add i64 %2409, 9
  store i64 %2420, i64* %3, align 8
  %2421 = load i32, i32* %2384, align 4
  %2422 = shl i32 %2421, 3
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RDX.i1076, align 8
  %2424 = add i32 %2422, %2418
  %2425 = shl i32 %2424, 3
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RCX.i1079, align 8
  %2427 = load i64, i64* %RAX.i1111, align 8
  %2428 = trunc i64 %2427 to i32
  %2429 = add i32 %2425, %2428
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RAX.i1111, align 8
  %2431 = icmp ult i32 %2429, %2428
  %2432 = icmp ult i32 %2429, %2425
  %2433 = or i1 %2431, %2432
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %14, align 1
  %2435 = and i32 %2429, 255
  %2436 = tail call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  store i8 %2439, i8* %21, align 1
  %2440 = xor i64 %2426, %2427
  %2441 = trunc i64 %2440 to i32
  %2442 = xor i32 %2441, %2429
  %2443 = lshr i32 %2442, 4
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %27, align 1
  %2446 = icmp eq i32 %2429, 0
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %30, align 1
  %2448 = lshr i32 %2429, 31
  %2449 = trunc i32 %2448 to i8
  store i8 %2449, i8* %33, align 1
  %2450 = lshr i32 %2428, 31
  %2451 = lshr i32 %2424, 28
  %2452 = and i32 %2451, 1
  %2453 = xor i32 %2448, %2450
  %2454 = xor i32 %2448, %2452
  %2455 = add nuw nsw i32 %2453, %2454
  %2456 = icmp eq i32 %2455, 2
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %39, align 1
  %2458 = sext i32 %2429 to i64
  store i64 %2458, i64* %RSI.i1064, align 8
  %2459 = shl nsw i64 %2458, 2
  %2460 = add nsw i64 %2459, 6322848
  %2461 = add i64 %2409, 33
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i32*
  store i32 1, i32* %2462, align 4
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -12
  %2465 = load i64, i64* %3, align 8
  %2466 = add i64 %2465, 3
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2464 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = add i32 %2468, 1
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RAX.i1111, align 8
  %2471 = icmp eq i32 %2468, -1
  %2472 = icmp eq i32 %2469, 0
  %2473 = or i1 %2471, %2472
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %14, align 1
  %2475 = and i32 %2469, 255
  %2476 = tail call i32 @llvm.ctpop.i32(i32 %2475)
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  store i8 %2479, i8* %21, align 1
  %2480 = xor i32 %2469, %2468
  %2481 = lshr i32 %2480, 4
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  store i8 %2483, i8* %27, align 1
  %2484 = zext i1 %2472 to i8
  store i8 %2484, i8* %30, align 1
  %2485 = lshr i32 %2469, 31
  %2486 = trunc i32 %2485 to i8
  store i8 %2486, i8* %33, align 1
  %2487 = lshr i32 %2468, 31
  %2488 = xor i32 %2485, %2487
  %2489 = add nuw nsw i32 %2488, %2485
  %2490 = icmp eq i32 %2489, 2
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %39, align 1
  %2492 = add i64 %2465, 9
  store i64 %2492, i64* %3, align 8
  store i32 %2469, i32* %2467, align 4
  %2493 = load i64, i64* %3, align 8
  %2494 = add i64 %2493, -52
  store i64 %2494, i64* %3, align 8
  br label %block_.L_400ea0

block_.L_400ed9:                                  ; preds = %block_.L_400ea0
  %2495 = add i64 %2381, -8
  %2496 = add i64 %2409, 8
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  %2498 = load i32, i32* %2497, align 4
  %2499 = add i32 %2498, 1
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RAX.i1111, align 8
  %2501 = icmp eq i32 %2498, -1
  %2502 = icmp eq i32 %2499, 0
  %2503 = or i1 %2501, %2502
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %14, align 1
  %2505 = and i32 %2499, 255
  %2506 = tail call i32 @llvm.ctpop.i32(i32 %2505)
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = xor i8 %2508, 1
  store i8 %2509, i8* %21, align 1
  %2510 = xor i32 %2499, %2498
  %2511 = lshr i32 %2510, 4
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  store i8 %2513, i8* %27, align 1
  %2514 = zext i1 %2502 to i8
  store i8 %2514, i8* %30, align 1
  %2515 = lshr i32 %2499, 31
  %2516 = trunc i32 %2515 to i8
  store i8 %2516, i8* %33, align 1
  %2517 = lshr i32 %2498, 31
  %2518 = xor i32 %2515, %2517
  %2519 = add nuw nsw i32 %2518, %2515
  %2520 = icmp eq i32 %2519, 2
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %39, align 1
  %2522 = add i64 %2409, 14
  store i64 %2522, i64* %3, align 8
  store i32 %2499, i32* %2497, align 4
  %2523 = load i64, i64* %3, align 8
  %2524 = add i64 %2523, -88
  store i64 %2524, i64* %3, align 8
  br label %block_.L_400e8f

block_.L_400eec:                                  ; preds = %block_.L_400e8f
  %2525 = add i64 %2359, -4
  %2526 = add i64 %2376, 8
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = add i32 %2528, 1
  %2530 = zext i32 %2529 to i64
  store i64 %2530, i64* %RAX.i1111, align 8
  %2531 = icmp eq i32 %2528, -1
  %2532 = icmp eq i32 %2529, 0
  %2533 = or i1 %2531, %2532
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %14, align 1
  %2535 = and i32 %2529, 255
  %2536 = tail call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  store i8 %2539, i8* %21, align 1
  %2540 = xor i32 %2529, %2528
  %2541 = lshr i32 %2540, 4
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  store i8 %2543, i8* %27, align 1
  %2544 = zext i1 %2532 to i8
  store i8 %2544, i8* %30, align 1
  %2545 = lshr i32 %2529, 31
  %2546 = trunc i32 %2545 to i8
  store i8 %2546, i8* %33, align 1
  %2547 = lshr i32 %2528, 31
  %2548 = xor i32 %2545, %2547
  %2549 = add nuw nsw i32 %2548, %2545
  %2550 = icmp eq i32 %2549, 2
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %39, align 1
  %2552 = add i64 %2376, 14
  store i64 %2552, i64* %3, align 8
  store i32 %2529, i32* %2527, align 4
  %2553 = load i64, i64* %3, align 8
  %2554 = add i64 %2553, -124
  store i64 %2554, i64* %3, align 8
  br label %block_.L_400e7e

block_.L_400eff:                                  ; preds = %block_.L_400e7e
  store i32 1, i32* inttoptr (i64 6394384 to i32*), align 16
  store i32 128, i32* inttoptr (i64 6357616 to i32*), align 16
  %2555 = add i64 %2354, 29
  store i64 %2555, i64* %3, align 8
  store i32 0, i32* %2340, align 4
  %.pre225 = load i64, i64* %3, align 8
  br label %block_.L_400f1c

block_.L_400f1c:                                  ; preds = %block_.L_400f8a, %block_.L_400eff
  %2556 = phi i64 [ %2785, %block_.L_400f8a ], [ %.pre225, %block_.L_400eff ]
  %2557 = load i64, i64* %RBP.i, align 8
  %2558 = add i64 %2557, -4
  %2559 = add i64 %2556, 4
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = add i32 %2561, -1
  %2563 = icmp eq i32 %2561, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %14, align 1
  %2565 = and i32 %2562, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %21, align 1
  %2570 = xor i32 %2562, %2561
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  store i8 %2573, i8* %27, align 1
  %2574 = icmp eq i32 %2562, 0
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %30, align 1
  %2576 = lshr i32 %2562, 31
  %2577 = trunc i32 %2576 to i8
  store i8 %2577, i8* %33, align 1
  %2578 = lshr i32 %2561, 31
  %2579 = xor i32 %2576, %2578
  %2580 = add nuw nsw i32 %2579, %2578
  %2581 = icmp eq i32 %2580, 2
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %39, align 1
  %2583 = icmp ne i8 %2577, 0
  %2584 = xor i1 %2583, %2581
  %.demorgan282 = or i1 %2574, %2584
  %.v311 = select i1 %.demorgan282, i64 10, i64 129
  %2585 = add i64 %2556, %.v311
  store i64 %2585, i64* %3, align 8
  br i1 %.demorgan282, label %block_400f26, label %block_.L_400f9d

block_400f26:                                     ; preds = %block_.L_400f1c
  %2586 = add i64 %2557, -8
  %2587 = add i64 %2585, 7
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  store i32 0, i32* %2588, align 4
  %.pre226 = load i64, i64* %3, align 8
  br label %block_.L_400f2d

block_.L_400f2d:                                  ; preds = %block_.L_400f77, %block_400f26
  %2589 = phi i64 [ %2755, %block_.L_400f77 ], [ %.pre226, %block_400f26 ]
  %2590 = load i64, i64* %RBP.i, align 8
  %2591 = add i64 %2590, -8
  %2592 = add i64 %2589, 4
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = add i32 %2594, -1
  %2596 = icmp eq i32 %2594, 0
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %14, align 1
  %2598 = and i32 %2595, 255
  %2599 = tail call i32 @llvm.ctpop.i32(i32 %2598)
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  %2602 = xor i8 %2601, 1
  store i8 %2602, i8* %21, align 1
  %2603 = xor i32 %2595, %2594
  %2604 = lshr i32 %2603, 4
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  store i8 %2606, i8* %27, align 1
  %2607 = icmp eq i32 %2595, 0
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %30, align 1
  %2609 = lshr i32 %2595, 31
  %2610 = trunc i32 %2609 to i8
  store i8 %2610, i8* %33, align 1
  %2611 = lshr i32 %2594, 31
  %2612 = xor i32 %2609, %2611
  %2613 = add nuw nsw i32 %2612, %2611
  %2614 = icmp eq i32 %2613, 2
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %39, align 1
  %2616 = icmp ne i8 %2610, 0
  %2617 = xor i1 %2616, %2614
  %.demorgan283 = or i1 %2607, %2617
  %.v285 = select i1 %.demorgan283, i64 10, i64 93
  %2618 = add i64 %2589, %.v285
  store i64 %2618, i64* %3, align 8
  br i1 %.demorgan283, label %block_400f37, label %block_.L_400f8a

block_400f37:                                     ; preds = %block_.L_400f2d
  %2619 = add i64 %2590, -12
  %2620 = add i64 %2618, 7
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  store i32 0, i32* %2621, align 4
  %.pre227 = load i64, i64* %3, align 8
  br label %block_.L_400f3e

block_.L_400f3e:                                  ; preds = %block_400f48, %block_400f37
  %2622 = phi i64 [ %2725, %block_400f48 ], [ %.pre227, %block_400f37 ]
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -12
  %2625 = add i64 %2622, 4
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  store i8 0, i8* %14, align 1
  %2628 = and i32 %2627, 255
  %2629 = tail call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  store i8 %2632, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2633 = icmp eq i32 %2627, 0
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %30, align 1
  %2635 = lshr i32 %2627, 31
  %2636 = trunc i32 %2635 to i8
  store i8 %2636, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2637 = xor i1 %2633, true
  %2638 = icmp eq i8 %2636, 0
  %2639 = and i1 %2638, %2637
  %.v284 = select i1 %2639, i64 57, i64 10
  %2640 = add i64 %2622, %.v284
  store i64 %2640, i64* %3, align 8
  br i1 %2639, label %block_.L_400f77, label %block_400f48

block_400f48:                                     ; preds = %block_.L_400f3e
  %2641 = add i64 %2623, -4
  %2642 = add i64 %2640, 3
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RAX.i1111, align 8
  %2646 = add i64 %2623, -8
  %2647 = add i64 %2640, 6
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  %2649 = load i32, i32* %2648, align 4
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RCX.i1079, align 8
  %2651 = add i64 %2640, 9
  store i64 %2651, i64* %3, align 8
  %2652 = load i32, i32* %2626, align 4
  %2653 = shl i32 %2652, 3
  %2654 = zext i32 %2653 to i64
  store i64 %2654, i64* %RDX.i1076, align 8
  %2655 = add i32 %2653, %2649
  %2656 = shl i32 %2655, 3
  %2657 = zext i32 %2656 to i64
  store i64 %2657, i64* %RCX.i1079, align 8
  %2658 = load i64, i64* %RAX.i1111, align 8
  %2659 = trunc i64 %2658 to i32
  %2660 = add i32 %2656, %2659
  %2661 = zext i32 %2660 to i64
  store i64 %2661, i64* %RAX.i1111, align 8
  %2662 = icmp ult i32 %2660, %2659
  %2663 = icmp ult i32 %2660, %2656
  %2664 = or i1 %2662, %2663
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %14, align 1
  %2666 = and i32 %2660, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %21, align 1
  %2671 = xor i64 %2657, %2658
  %2672 = trunc i64 %2671 to i32
  %2673 = xor i32 %2672, %2660
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %27, align 1
  %2677 = icmp eq i32 %2660, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %30, align 1
  %2679 = lshr i32 %2660, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %33, align 1
  %2681 = lshr i32 %2659, 31
  %2682 = lshr i32 %2655, 28
  %2683 = and i32 %2682, 1
  %2684 = xor i32 %2679, %2681
  %2685 = xor i32 %2679, %2683
  %2686 = add nuw nsw i32 %2684, %2685
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %39, align 1
  %2689 = sext i32 %2660 to i64
  store i64 %2689, i64* %RSI.i1064, align 8
  %2690 = shl nsw i64 %2689, 2
  %2691 = add nsw i64 %2690, 6324896
  %2692 = add i64 %2640, 33
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  store i32 1, i32* %2693, align 4
  %2694 = load i64, i64* %RBP.i, align 8
  %2695 = add i64 %2694, -12
  %2696 = load i64, i64* %3, align 8
  %2697 = add i64 %2696, 3
  store i64 %2697, i64* %3, align 8
  %2698 = inttoptr i64 %2695 to i32*
  %2699 = load i32, i32* %2698, align 4
  %2700 = add i32 %2699, 1
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RAX.i1111, align 8
  %2702 = icmp eq i32 %2699, -1
  %2703 = icmp eq i32 %2700, 0
  %2704 = or i1 %2702, %2703
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %14, align 1
  %2706 = and i32 %2700, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706)
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %21, align 1
  %2711 = xor i32 %2700, %2699
  %2712 = lshr i32 %2711, 4
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %27, align 1
  %2715 = zext i1 %2703 to i8
  store i8 %2715, i8* %30, align 1
  %2716 = lshr i32 %2700, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %33, align 1
  %2718 = lshr i32 %2699, 31
  %2719 = xor i32 %2716, %2718
  %2720 = add nuw nsw i32 %2719, %2716
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %39, align 1
  %2723 = add i64 %2696, 9
  store i64 %2723, i64* %3, align 8
  store i32 %2700, i32* %2698, align 4
  %2724 = load i64, i64* %3, align 8
  %2725 = add i64 %2724, -52
  store i64 %2725, i64* %3, align 8
  br label %block_.L_400f3e

block_.L_400f77:                                  ; preds = %block_.L_400f3e
  %2726 = add i64 %2623, -8
  %2727 = add i64 %2640, 8
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = add i32 %2729, 1
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RAX.i1111, align 8
  %2732 = icmp eq i32 %2729, -1
  %2733 = icmp eq i32 %2730, 0
  %2734 = or i1 %2732, %2733
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %14, align 1
  %2736 = and i32 %2730, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %21, align 1
  %2741 = xor i32 %2730, %2729
  %2742 = lshr i32 %2741, 4
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  store i8 %2744, i8* %27, align 1
  %2745 = zext i1 %2733 to i8
  store i8 %2745, i8* %30, align 1
  %2746 = lshr i32 %2730, 31
  %2747 = trunc i32 %2746 to i8
  store i8 %2747, i8* %33, align 1
  %2748 = lshr i32 %2729, 31
  %2749 = xor i32 %2746, %2748
  %2750 = add nuw nsw i32 %2749, %2746
  %2751 = icmp eq i32 %2750, 2
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %39, align 1
  %2753 = add i64 %2640, 14
  store i64 %2753, i64* %3, align 8
  store i32 %2730, i32* %2728, align 4
  %2754 = load i64, i64* %3, align 8
  %2755 = add i64 %2754, -88
  store i64 %2755, i64* %3, align 8
  br label %block_.L_400f2d

block_.L_400f8a:                                  ; preds = %block_.L_400f2d
  %2756 = add i64 %2590, -4
  %2757 = add i64 %2618, 8
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i32*
  %2759 = load i32, i32* %2758, align 4
  %2760 = add i32 %2759, 1
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RAX.i1111, align 8
  %2762 = icmp eq i32 %2759, -1
  %2763 = icmp eq i32 %2760, 0
  %2764 = or i1 %2762, %2763
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %14, align 1
  %2766 = and i32 %2760, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i32 %2760, %2759
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %27, align 1
  %2775 = zext i1 %2763 to i8
  store i8 %2775, i8* %30, align 1
  %2776 = lshr i32 %2760, 31
  %2777 = trunc i32 %2776 to i8
  store i8 %2777, i8* %33, align 1
  %2778 = lshr i32 %2759, 31
  %2779 = xor i32 %2776, %2778
  %2780 = add nuw nsw i32 %2779, %2776
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %39, align 1
  %2783 = add i64 %2618, 14
  store i64 %2783, i64* %3, align 8
  store i32 %2760, i32* %2758, align 4
  %2784 = load i64, i64* %3, align 8
  %2785 = add i64 %2784, -124
  store i64 %2785, i64* %3, align 8
  br label %block_.L_400f1c

block_.L_400f9d:                                  ; preds = %block_.L_400f1c
  store i32 2, i32* inttoptr (i64 6394388 to i32*), align 4
  store i32 9, i32* inttoptr (i64 6357620 to i32*), align 4
  %2786 = add i64 %2585, 29
  store i64 %2786, i64* %3, align 8
  store i32 0, i32* %2560, align 4
  %.pre228 = load i64, i64* %3, align 8
  br label %block_.L_400fba

block_.L_400fba:                                  ; preds = %block_.L_401028, %block_.L_400f9d
  %2787 = phi i64 [ %3016, %block_.L_401028 ], [ %.pre228, %block_.L_400f9d ]
  %2788 = load i64, i64* %RBP.i, align 8
  %2789 = add i64 %2788, -4
  %2790 = add i64 %2787, 4
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = add i32 %2792, -1
  %2794 = icmp eq i32 %2792, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %14, align 1
  %2796 = and i32 %2793, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  %2801 = xor i32 %2793, %2792
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %27, align 1
  %2805 = icmp eq i32 %2793, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %30, align 1
  %2807 = lshr i32 %2793, 31
  %2808 = trunc i32 %2807 to i8
  store i8 %2808, i8* %33, align 1
  %2809 = lshr i32 %2792, 31
  %2810 = xor i32 %2807, %2809
  %2811 = add nuw nsw i32 %2810, %2809
  %2812 = icmp eq i32 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %39, align 1
  %2814 = icmp ne i8 %2808, 0
  %2815 = xor i1 %2814, %2812
  %.demorgan286 = or i1 %2805, %2815
  %.v312 = select i1 %.demorgan286, i64 10, i64 129
  %2816 = add i64 %2787, %.v312
  store i64 %2816, i64* %3, align 8
  br i1 %.demorgan286, label %block_400fc4, label %block_.L_40103b

block_400fc4:                                     ; preds = %block_.L_400fba
  %2817 = add i64 %2788, -8
  %2818 = add i64 %2816, 7
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i32*
  store i32 0, i32* %2819, align 4
  %.pre229 = load i64, i64* %3, align 8
  br label %block_.L_400fcb

block_.L_400fcb:                                  ; preds = %block_.L_401015, %block_400fc4
  %2820 = phi i64 [ %2986, %block_.L_401015 ], [ %.pre229, %block_400fc4 ]
  %2821 = load i64, i64* %RBP.i, align 8
  %2822 = add i64 %2821, -8
  %2823 = add i64 %2820, 4
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  store i8 0, i8* %14, align 1
  %2826 = and i32 %2825, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2831 = icmp eq i32 %2825, 0
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %30, align 1
  %2833 = lshr i32 %2825, 31
  %2834 = trunc i32 %2833 to i8
  store i8 %2834, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2835 = xor i1 %2831, true
  %2836 = icmp eq i8 %2834, 0
  %2837 = and i1 %2836, %2835
  %.v289 = select i1 %2837, i64 93, i64 10
  %2838 = add i64 %2820, %.v289
  store i64 %2838, i64* %3, align 8
  br i1 %2837, label %block_.L_401028, label %block_400fd5

block_400fd5:                                     ; preds = %block_.L_400fcb
  %2839 = add i64 %2821, -12
  %2840 = add i64 %2838, 7
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  store i32 0, i32* %2841, align 4
  %.pre230 = load i64, i64* %3, align 8
  br label %block_.L_400fdc

block_.L_400fdc:                                  ; preds = %block_400fe6, %block_400fd5
  %2842 = phi i64 [ %2956, %block_400fe6 ], [ %.pre230, %block_400fd5 ]
  %2843 = load i64, i64* %RBP.i, align 8
  %2844 = add i64 %2843, -12
  %2845 = add i64 %2842, 4
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = add i32 %2847, -1
  %2849 = icmp eq i32 %2847, 0
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %14, align 1
  %2851 = and i32 %2848, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %21, align 1
  %2856 = xor i32 %2848, %2847
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %27, align 1
  %2860 = icmp eq i32 %2848, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %30, align 1
  %2862 = lshr i32 %2848, 31
  %2863 = trunc i32 %2862 to i8
  store i8 %2863, i8* %33, align 1
  %2864 = lshr i32 %2847, 31
  %2865 = xor i32 %2862, %2864
  %2866 = add nuw nsw i32 %2865, %2864
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %39, align 1
  %2869 = icmp ne i8 %2863, 0
  %2870 = xor i1 %2869, %2867
  %.demorgan287 = or i1 %2860, %2870
  %.v288 = select i1 %.demorgan287, i64 10, i64 57
  %2871 = add i64 %2842, %.v288
  store i64 %2871, i64* %3, align 8
  br i1 %.demorgan287, label %block_400fe6, label %block_.L_401015

block_400fe6:                                     ; preds = %block_.L_400fdc
  %2872 = add i64 %2843, -4
  %2873 = add i64 %2871, 3
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i32*
  %2875 = load i32, i32* %2874, align 4
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX.i1111, align 8
  %2877 = add i64 %2843, -8
  %2878 = add i64 %2871, 6
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RCX.i1079, align 8
  %2882 = add i64 %2871, 9
  store i64 %2882, i64* %3, align 8
  %2883 = load i32, i32* %2846, align 4
  %2884 = shl i32 %2883, 3
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RDX.i1076, align 8
  %2886 = add i32 %2884, %2880
  %2887 = shl i32 %2886, 3
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RCX.i1079, align 8
  %2889 = load i64, i64* %RAX.i1111, align 8
  %2890 = trunc i64 %2889 to i32
  %2891 = add i32 %2887, %2890
  %2892 = zext i32 %2891 to i64
  store i64 %2892, i64* %RAX.i1111, align 8
  %2893 = icmp ult i32 %2891, %2890
  %2894 = icmp ult i32 %2891, %2887
  %2895 = or i1 %2893, %2894
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %14, align 1
  %2897 = and i32 %2891, 255
  %2898 = tail call i32 @llvm.ctpop.i32(i32 %2897)
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = xor i8 %2900, 1
  store i8 %2901, i8* %21, align 1
  %2902 = xor i64 %2888, %2889
  %2903 = trunc i64 %2902 to i32
  %2904 = xor i32 %2903, %2891
  %2905 = lshr i32 %2904, 4
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  store i8 %2907, i8* %27, align 1
  %2908 = icmp eq i32 %2891, 0
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %30, align 1
  %2910 = lshr i32 %2891, 31
  %2911 = trunc i32 %2910 to i8
  store i8 %2911, i8* %33, align 1
  %2912 = lshr i32 %2890, 31
  %2913 = lshr i32 %2886, 28
  %2914 = and i32 %2913, 1
  %2915 = xor i32 %2910, %2912
  %2916 = xor i32 %2910, %2914
  %2917 = add nuw nsw i32 %2915, %2916
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %39, align 1
  %2920 = sext i32 %2891 to i64
  store i64 %2920, i64* %RSI.i1064, align 8
  %2921 = shl nsw i64 %2920, 2
  %2922 = add nsw i64 %2921, 6326944
  %2923 = add i64 %2871, 33
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i32*
  store i32 1, i32* %2924, align 4
  %2925 = load i64, i64* %RBP.i, align 8
  %2926 = add i64 %2925, -12
  %2927 = load i64, i64* %3, align 8
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2926 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = add i32 %2930, 1
  %2932 = zext i32 %2931 to i64
  store i64 %2932, i64* %RAX.i1111, align 8
  %2933 = icmp eq i32 %2930, -1
  %2934 = icmp eq i32 %2931, 0
  %2935 = or i1 %2933, %2934
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %14, align 1
  %2937 = and i32 %2931, 255
  %2938 = tail call i32 @llvm.ctpop.i32(i32 %2937)
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  %2941 = xor i8 %2940, 1
  store i8 %2941, i8* %21, align 1
  %2942 = xor i32 %2931, %2930
  %2943 = lshr i32 %2942, 4
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  store i8 %2945, i8* %27, align 1
  %2946 = zext i1 %2934 to i8
  store i8 %2946, i8* %30, align 1
  %2947 = lshr i32 %2931, 31
  %2948 = trunc i32 %2947 to i8
  store i8 %2948, i8* %33, align 1
  %2949 = lshr i32 %2930, 31
  %2950 = xor i32 %2947, %2949
  %2951 = add nuw nsw i32 %2950, %2947
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %39, align 1
  %2954 = add i64 %2927, 9
  store i64 %2954, i64* %3, align 8
  store i32 %2931, i32* %2929, align 4
  %2955 = load i64, i64* %3, align 8
  %2956 = add i64 %2955, -52
  store i64 %2956, i64* %3, align 8
  br label %block_.L_400fdc

block_.L_401015:                                  ; preds = %block_.L_400fdc
  %2957 = add i64 %2843, -8
  %2958 = add i64 %2871, 8
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = add i32 %2960, 1
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RAX.i1111, align 8
  %2963 = icmp eq i32 %2960, -1
  %2964 = icmp eq i32 %2961, 0
  %2965 = or i1 %2963, %2964
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %14, align 1
  %2967 = and i32 %2961, 255
  %2968 = tail call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  store i8 %2971, i8* %21, align 1
  %2972 = xor i32 %2961, %2960
  %2973 = lshr i32 %2972, 4
  %2974 = trunc i32 %2973 to i8
  %2975 = and i8 %2974, 1
  store i8 %2975, i8* %27, align 1
  %2976 = zext i1 %2964 to i8
  store i8 %2976, i8* %30, align 1
  %2977 = lshr i32 %2961, 31
  %2978 = trunc i32 %2977 to i8
  store i8 %2978, i8* %33, align 1
  %2979 = lshr i32 %2960, 31
  %2980 = xor i32 %2977, %2979
  %2981 = add nuw nsw i32 %2980, %2977
  %2982 = icmp eq i32 %2981, 2
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %39, align 1
  %2984 = add i64 %2871, 14
  store i64 %2984, i64* %3, align 8
  store i32 %2961, i32* %2959, align 4
  %2985 = load i64, i64* %3, align 8
  %2986 = add i64 %2985, -88
  store i64 %2986, i64* %3, align 8
  br label %block_.L_400fcb

block_.L_401028:                                  ; preds = %block_.L_400fcb
  %2987 = add i64 %2821, -4
  %2988 = add i64 %2838, 8
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i32*
  %2990 = load i32, i32* %2989, align 4
  %2991 = add i32 %2990, 1
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RAX.i1111, align 8
  %2993 = icmp eq i32 %2990, -1
  %2994 = icmp eq i32 %2991, 0
  %2995 = or i1 %2993, %2994
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %14, align 1
  %2997 = and i32 %2991, 255
  %2998 = tail call i32 @llvm.ctpop.i32(i32 %2997)
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  %3001 = xor i8 %3000, 1
  store i8 %3001, i8* %21, align 1
  %3002 = xor i32 %2991, %2990
  %3003 = lshr i32 %3002, 4
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  store i8 %3005, i8* %27, align 1
  %3006 = zext i1 %2994 to i8
  store i8 %3006, i8* %30, align 1
  %3007 = lshr i32 %2991, 31
  %3008 = trunc i32 %3007 to i8
  store i8 %3008, i8* %33, align 1
  %3009 = lshr i32 %2990, 31
  %3010 = xor i32 %3007, %3009
  %3011 = add nuw nsw i32 %3010, %3007
  %3012 = icmp eq i32 %3011, 2
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %39, align 1
  %3014 = add i64 %2838, 14
  store i64 %3014, i64* %3, align 8
  store i32 %2991, i32* %2989, align 4
  %3015 = load i64, i64* %3, align 8
  %3016 = add i64 %3015, -124
  store i64 %3016, i64* %3, align 8
  br label %block_.L_400fba

block_.L_40103b:                                  ; preds = %block_.L_400fba
  store i32 2, i32* inttoptr (i64 6394392 to i32*), align 8
  store i32 65, i32* inttoptr (i64 6357624 to i32*), align 8
  %3017 = add i64 %2816, 29
  store i64 %3017, i64* %3, align 8
  store i32 0, i32* %2791, align 4
  %.pre231 = load i64, i64* %3, align 8
  br label %block_.L_401058

block_.L_401058:                                  ; preds = %block_.L_4010c6, %block_.L_40103b
  %3018 = phi i64 [ %3247, %block_.L_4010c6 ], [ %.pre231, %block_.L_40103b ]
  %3019 = load i64, i64* %RBP.i, align 8
  %3020 = add i64 %3019, -4
  %3021 = add i64 %3018, 4
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  store i8 0, i8* %14, align 1
  %3024 = and i32 %3023, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3029 = icmp eq i32 %3023, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %30, align 1
  %3031 = lshr i32 %3023, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3033 = xor i1 %3029, true
  %3034 = icmp eq i8 %3032, 0
  %3035 = and i1 %3034, %3033
  %.v313 = select i1 %3035, i64 129, i64 10
  %3036 = add i64 %3018, %.v313
  store i64 %3036, i64* %3, align 8
  br i1 %3035, label %block_.L_4010d9, label %block_401062

block_401062:                                     ; preds = %block_.L_401058
  %3037 = add i64 %3019, -8
  %3038 = add i64 %3036, 7
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  store i32 0, i32* %3039, align 4
  %.pre232 = load i64, i64* %3, align 8
  br label %block_.L_401069

block_.L_401069:                                  ; preds = %block_.L_4010b3, %block_401062
  %3040 = phi i64 [ %3217, %block_.L_4010b3 ], [ %.pre232, %block_401062 ]
  %3041 = load i64, i64* %RBP.i, align 8
  %3042 = add i64 %3041, -8
  %3043 = add i64 %3040, 4
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = add i32 %3045, -1
  %3047 = icmp eq i32 %3045, 0
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %14, align 1
  %3049 = and i32 %3046, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %21, align 1
  %3054 = xor i32 %3046, %3045
  %3055 = lshr i32 %3054, 4
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  store i8 %3057, i8* %27, align 1
  %3058 = icmp eq i32 %3046, 0
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %30, align 1
  %3060 = lshr i32 %3046, 31
  %3061 = trunc i32 %3060 to i8
  store i8 %3061, i8* %33, align 1
  %3062 = lshr i32 %3045, 31
  %3063 = xor i32 %3060, %3062
  %3064 = add nuw nsw i32 %3063, %3062
  %3065 = icmp eq i32 %3064, 2
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %39, align 1
  %3067 = icmp ne i8 %3061, 0
  %3068 = xor i1 %3067, %3065
  %.demorgan290 = or i1 %3058, %3068
  %.v293 = select i1 %.demorgan290, i64 10, i64 93
  %3069 = add i64 %3040, %.v293
  store i64 %3069, i64* %3, align 8
  br i1 %.demorgan290, label %block_401073, label %block_.L_4010c6

block_401073:                                     ; preds = %block_.L_401069
  %3070 = add i64 %3041, -12
  %3071 = add i64 %3069, 7
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i32*
  store i32 0, i32* %3072, align 4
  %.pre233 = load i64, i64* %3, align 8
  br label %block_.L_40107a

block_.L_40107a:                                  ; preds = %block_401084, %block_401073
  %3073 = phi i64 [ %3187, %block_401084 ], [ %.pre233, %block_401073 ]
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = add i64 %3074, -12
  %3076 = add i64 %3073, 4
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  %3079 = add i32 %3078, -1
  %3080 = icmp eq i32 %3078, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %14, align 1
  %3082 = and i32 %3079, 255
  %3083 = tail call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  store i8 %3086, i8* %21, align 1
  %3087 = xor i32 %3079, %3078
  %3088 = lshr i32 %3087, 4
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  store i8 %3090, i8* %27, align 1
  %3091 = icmp eq i32 %3079, 0
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %30, align 1
  %3093 = lshr i32 %3079, 31
  %3094 = trunc i32 %3093 to i8
  store i8 %3094, i8* %33, align 1
  %3095 = lshr i32 %3078, 31
  %3096 = xor i32 %3093, %3095
  %3097 = add nuw nsw i32 %3096, %3095
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %39, align 1
  %3100 = icmp ne i8 %3094, 0
  %3101 = xor i1 %3100, %3098
  %.demorgan291 = or i1 %3091, %3101
  %.v292 = select i1 %.demorgan291, i64 10, i64 57
  %3102 = add i64 %3073, %.v292
  store i64 %3102, i64* %3, align 8
  br i1 %.demorgan291, label %block_401084, label %block_.L_4010b3

block_401084:                                     ; preds = %block_.L_40107a
  %3103 = add i64 %3074, -4
  %3104 = add i64 %3102, 3
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3103 to i32*
  %3106 = load i32, i32* %3105, align 4
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RAX.i1111, align 8
  %3108 = add i64 %3074, -8
  %3109 = add i64 %3102, 6
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RCX.i1079, align 8
  %3113 = add i64 %3102, 9
  store i64 %3113, i64* %3, align 8
  %3114 = load i32, i32* %3077, align 4
  %3115 = shl i32 %3114, 3
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RDX.i1076, align 8
  %3117 = add i32 %3115, %3111
  %3118 = shl i32 %3117, 3
  %3119 = zext i32 %3118 to i64
  store i64 %3119, i64* %RCX.i1079, align 8
  %3120 = load i64, i64* %RAX.i1111, align 8
  %3121 = trunc i64 %3120 to i32
  %3122 = add i32 %3118, %3121
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RAX.i1111, align 8
  %3124 = icmp ult i32 %3122, %3121
  %3125 = icmp ult i32 %3122, %3118
  %3126 = or i1 %3124, %3125
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %14, align 1
  %3128 = and i32 %3122, 255
  %3129 = tail call i32 @llvm.ctpop.i32(i32 %3128)
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = xor i8 %3131, 1
  store i8 %3132, i8* %21, align 1
  %3133 = xor i64 %3119, %3120
  %3134 = trunc i64 %3133 to i32
  %3135 = xor i32 %3134, %3122
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  store i8 %3138, i8* %27, align 1
  %3139 = icmp eq i32 %3122, 0
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %30, align 1
  %3141 = lshr i32 %3122, 31
  %3142 = trunc i32 %3141 to i8
  store i8 %3142, i8* %33, align 1
  %3143 = lshr i32 %3121, 31
  %3144 = lshr i32 %3117, 28
  %3145 = and i32 %3144, 1
  %3146 = xor i32 %3141, %3143
  %3147 = xor i32 %3141, %3145
  %3148 = add nuw nsw i32 %3146, %3147
  %3149 = icmp eq i32 %3148, 2
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %39, align 1
  %3151 = sext i32 %3122 to i64
  store i64 %3151, i64* %RSI.i1064, align 8
  %3152 = shl nsw i64 %3151, 2
  %3153 = add nsw i64 %3152, 6328992
  %3154 = add i64 %3102, 33
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i32*
  store i32 1, i32* %3155, align 4
  %3156 = load i64, i64* %RBP.i, align 8
  %3157 = add i64 %3156, -12
  %3158 = load i64, i64* %3, align 8
  %3159 = add i64 %3158, 3
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3157 to i32*
  %3161 = load i32, i32* %3160, align 4
  %3162 = add i32 %3161, 1
  %3163 = zext i32 %3162 to i64
  store i64 %3163, i64* %RAX.i1111, align 8
  %3164 = icmp eq i32 %3161, -1
  %3165 = icmp eq i32 %3162, 0
  %3166 = or i1 %3164, %3165
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %14, align 1
  %3168 = and i32 %3162, 255
  %3169 = tail call i32 @llvm.ctpop.i32(i32 %3168)
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = xor i8 %3171, 1
  store i8 %3172, i8* %21, align 1
  %3173 = xor i32 %3162, %3161
  %3174 = lshr i32 %3173, 4
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  store i8 %3176, i8* %27, align 1
  %3177 = zext i1 %3165 to i8
  store i8 %3177, i8* %30, align 1
  %3178 = lshr i32 %3162, 31
  %3179 = trunc i32 %3178 to i8
  store i8 %3179, i8* %33, align 1
  %3180 = lshr i32 %3161, 31
  %3181 = xor i32 %3178, %3180
  %3182 = add nuw nsw i32 %3181, %3178
  %3183 = icmp eq i32 %3182, 2
  %3184 = zext i1 %3183 to i8
  store i8 %3184, i8* %39, align 1
  %3185 = add i64 %3158, 9
  store i64 %3185, i64* %3, align 8
  store i32 %3162, i32* %3160, align 4
  %3186 = load i64, i64* %3, align 8
  %3187 = add i64 %3186, -52
  store i64 %3187, i64* %3, align 8
  br label %block_.L_40107a

block_.L_4010b3:                                  ; preds = %block_.L_40107a
  %3188 = add i64 %3074, -8
  %3189 = add i64 %3102, 8
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = add i32 %3191, 1
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RAX.i1111, align 8
  %3194 = icmp eq i32 %3191, -1
  %3195 = icmp eq i32 %3192, 0
  %3196 = or i1 %3194, %3195
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %14, align 1
  %3198 = and i32 %3192, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %21, align 1
  %3203 = xor i32 %3192, %3191
  %3204 = lshr i32 %3203, 4
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  store i8 %3206, i8* %27, align 1
  %3207 = zext i1 %3195 to i8
  store i8 %3207, i8* %30, align 1
  %3208 = lshr i32 %3192, 31
  %3209 = trunc i32 %3208 to i8
  store i8 %3209, i8* %33, align 1
  %3210 = lshr i32 %3191, 31
  %3211 = xor i32 %3208, %3210
  %3212 = add nuw nsw i32 %3211, %3208
  %3213 = icmp eq i32 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %39, align 1
  %3215 = add i64 %3102, 14
  store i64 %3215, i64* %3, align 8
  store i32 %3192, i32* %3190, align 4
  %3216 = load i64, i64* %3, align 8
  %3217 = add i64 %3216, -88
  store i64 %3217, i64* %3, align 8
  br label %block_.L_401069

block_.L_4010c6:                                  ; preds = %block_.L_401069
  %3218 = add i64 %3041, -4
  %3219 = add i64 %3069, 8
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = add i32 %3221, 1
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RAX.i1111, align 8
  %3224 = icmp eq i32 %3221, -1
  %3225 = icmp eq i32 %3222, 0
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %14, align 1
  %3228 = and i32 %3222, 255
  %3229 = tail call i32 @llvm.ctpop.i32(i32 %3228)
  %3230 = trunc i32 %3229 to i8
  %3231 = and i8 %3230, 1
  %3232 = xor i8 %3231, 1
  store i8 %3232, i8* %21, align 1
  %3233 = xor i32 %3222, %3221
  %3234 = lshr i32 %3233, 4
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  store i8 %3236, i8* %27, align 1
  %3237 = zext i1 %3225 to i8
  store i8 %3237, i8* %30, align 1
  %3238 = lshr i32 %3222, 31
  %3239 = trunc i32 %3238 to i8
  store i8 %3239, i8* %33, align 1
  %3240 = lshr i32 %3221, 31
  %3241 = xor i32 %3238, %3240
  %3242 = add nuw nsw i32 %3241, %3238
  %3243 = icmp eq i32 %3242, 2
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %39, align 1
  %3245 = add i64 %3069, 14
  store i64 %3245, i64* %3, align 8
  store i32 %3222, i32* %3220, align 4
  %3246 = load i64, i64* %3, align 8
  %3247 = add i64 %3246, -124
  store i64 %3247, i64* %3, align 8
  br label %block_.L_401058

block_.L_4010d9:                                  ; preds = %block_.L_401058
  store i32 2, i32* inttoptr (i64 6394396 to i32*), align 4
  store i32 72, i32* inttoptr (i64 6357628 to i32*), align 4
  %3248 = add i64 %3036, 29
  store i64 %3248, i64* %3, align 8
  store i32 0, i32* %3022, align 4
  %.pre234 = load i64, i64* %3, align 8
  br label %block_.L_4010f6

block_.L_4010f6:                                  ; preds = %block_.L_401164, %block_.L_4010d9
  %3249 = phi i64 [ %3489, %block_.L_401164 ], [ %.pre234, %block_.L_4010d9 ]
  %3250 = load i64, i64* %RBP.i, align 8
  %3251 = add i64 %3250, -4
  %3252 = add i64 %3249, 4
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3251 to i32*
  %3254 = load i32, i32* %3253, align 4
  %3255 = add i32 %3254, -1
  %3256 = icmp eq i32 %3254, 0
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %14, align 1
  %3258 = and i32 %3255, 255
  %3259 = tail call i32 @llvm.ctpop.i32(i32 %3258)
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  %3262 = xor i8 %3261, 1
  store i8 %3262, i8* %21, align 1
  %3263 = xor i32 %3255, %3254
  %3264 = lshr i32 %3263, 4
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  store i8 %3266, i8* %27, align 1
  %3267 = icmp eq i32 %3255, 0
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %30, align 1
  %3269 = lshr i32 %3255, 31
  %3270 = trunc i32 %3269 to i8
  store i8 %3270, i8* %33, align 1
  %3271 = lshr i32 %3254, 31
  %3272 = xor i32 %3269, %3271
  %3273 = add nuw nsw i32 %3272, %3271
  %3274 = icmp eq i32 %3273, 2
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %39, align 1
  %3276 = icmp ne i8 %3270, 0
  %3277 = xor i1 %3276, %3274
  %.demorgan294 = or i1 %3267, %3277
  %.v314 = select i1 %.demorgan294, i64 10, i64 129
  %3278 = add i64 %3249, %.v314
  store i64 %3278, i64* %3, align 8
  br i1 %.demorgan294, label %block_401100, label %block_.L_401177

block_401100:                                     ; preds = %block_.L_4010f6
  %3279 = add i64 %3250, -8
  %3280 = add i64 %3278, 7
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i32*
  store i32 0, i32* %3281, align 4
  %.pre235 = load i64, i64* %3, align 8
  br label %block_.L_401107

block_.L_401107:                                  ; preds = %block_.L_401151, %block_401100
  %3282 = phi i64 [ %3459, %block_.L_401151 ], [ %.pre235, %block_401100 ]
  %3283 = load i64, i64* %RBP.i, align 8
  %3284 = add i64 %3283, -8
  %3285 = add i64 %3282, 4
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = add i32 %3287, -1
  %3289 = icmp eq i32 %3287, 0
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %14, align 1
  %3291 = and i32 %3288, 255
  %3292 = tail call i32 @llvm.ctpop.i32(i32 %3291)
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = xor i8 %3294, 1
  store i8 %3295, i8* %21, align 1
  %3296 = xor i32 %3288, %3287
  %3297 = lshr i32 %3296, 4
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  store i8 %3299, i8* %27, align 1
  %3300 = icmp eq i32 %3288, 0
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %30, align 1
  %3302 = lshr i32 %3288, 31
  %3303 = trunc i32 %3302 to i8
  store i8 %3303, i8* %33, align 1
  %3304 = lshr i32 %3287, 31
  %3305 = xor i32 %3302, %3304
  %3306 = add nuw nsw i32 %3305, %3304
  %3307 = icmp eq i32 %3306, 2
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %39, align 1
  %3309 = icmp ne i8 %3303, 0
  %3310 = xor i1 %3309, %3307
  %.demorgan295 = or i1 %3300, %3310
  %.v298 = select i1 %.demorgan295, i64 10, i64 93
  %3311 = add i64 %3282, %.v298
  store i64 %3311, i64* %3, align 8
  br i1 %.demorgan295, label %block_401111, label %block_.L_401164

block_401111:                                     ; preds = %block_.L_401107
  %3312 = add i64 %3283, -12
  %3313 = add i64 %3311, 7
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i32*
  store i32 0, i32* %3314, align 4
  %.pre236 = load i64, i64* %3, align 8
  br label %block_.L_401118

block_.L_401118:                                  ; preds = %block_401122, %block_401111
  %3315 = phi i64 [ %3429, %block_401122 ], [ %.pre236, %block_401111 ]
  %3316 = load i64, i64* %RBP.i, align 8
  %3317 = add i64 %3316, -12
  %3318 = add i64 %3315, 4
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = add i32 %3320, -1
  %3322 = icmp eq i32 %3320, 0
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %14, align 1
  %3324 = and i32 %3321, 255
  %3325 = tail call i32 @llvm.ctpop.i32(i32 %3324)
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  store i8 %3328, i8* %21, align 1
  %3329 = xor i32 %3321, %3320
  %3330 = lshr i32 %3329, 4
  %3331 = trunc i32 %3330 to i8
  %3332 = and i8 %3331, 1
  store i8 %3332, i8* %27, align 1
  %3333 = icmp eq i32 %3321, 0
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %30, align 1
  %3335 = lshr i32 %3321, 31
  %3336 = trunc i32 %3335 to i8
  store i8 %3336, i8* %33, align 1
  %3337 = lshr i32 %3320, 31
  %3338 = xor i32 %3335, %3337
  %3339 = add nuw nsw i32 %3338, %3337
  %3340 = icmp eq i32 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %39, align 1
  %3342 = icmp ne i8 %3336, 0
  %3343 = xor i1 %3342, %3340
  %.demorgan296 = or i1 %3333, %3343
  %.v297 = select i1 %.demorgan296, i64 10, i64 57
  %3344 = add i64 %3315, %.v297
  store i64 %3344, i64* %3, align 8
  br i1 %.demorgan296, label %block_401122, label %block_.L_401151

block_401122:                                     ; preds = %block_.L_401118
  %3345 = add i64 %3316, -4
  %3346 = add i64 %3344, 3
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i32*
  %3348 = load i32, i32* %3347, align 4
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RAX.i1111, align 8
  %3350 = add i64 %3316, -8
  %3351 = add i64 %3344, 6
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3350 to i32*
  %3353 = load i32, i32* %3352, align 4
  %3354 = zext i32 %3353 to i64
  store i64 %3354, i64* %RCX.i1079, align 8
  %3355 = add i64 %3344, 9
  store i64 %3355, i64* %3, align 8
  %3356 = load i32, i32* %3319, align 4
  %3357 = shl i32 %3356, 3
  %3358 = zext i32 %3357 to i64
  store i64 %3358, i64* %RDX.i1076, align 8
  %3359 = add i32 %3357, %3353
  %3360 = shl i32 %3359, 3
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RCX.i1079, align 8
  %3362 = load i64, i64* %RAX.i1111, align 8
  %3363 = trunc i64 %3362 to i32
  %3364 = add i32 %3360, %3363
  %3365 = zext i32 %3364 to i64
  store i64 %3365, i64* %RAX.i1111, align 8
  %3366 = icmp ult i32 %3364, %3363
  %3367 = icmp ult i32 %3364, %3360
  %3368 = or i1 %3366, %3367
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %14, align 1
  %3370 = and i32 %3364, 255
  %3371 = tail call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  store i8 %3374, i8* %21, align 1
  %3375 = xor i64 %3361, %3362
  %3376 = trunc i64 %3375 to i32
  %3377 = xor i32 %3376, %3364
  %3378 = lshr i32 %3377, 4
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  store i8 %3380, i8* %27, align 1
  %3381 = icmp eq i32 %3364, 0
  %3382 = zext i1 %3381 to i8
  store i8 %3382, i8* %30, align 1
  %3383 = lshr i32 %3364, 31
  %3384 = trunc i32 %3383 to i8
  store i8 %3384, i8* %33, align 1
  %3385 = lshr i32 %3363, 31
  %3386 = lshr i32 %3359, 28
  %3387 = and i32 %3386, 1
  %3388 = xor i32 %3383, %3385
  %3389 = xor i32 %3383, %3387
  %3390 = add nuw nsw i32 %3388, %3389
  %3391 = icmp eq i32 %3390, 2
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %39, align 1
  %3393 = sext i32 %3364 to i64
  store i64 %3393, i64* %RSI.i1064, align 8
  %3394 = shl nsw i64 %3393, 2
  %3395 = add nsw i64 %3394, 6331040
  %3396 = add i64 %3344, 33
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i32*
  store i32 1, i32* %3397, align 4
  %3398 = load i64, i64* %RBP.i, align 8
  %3399 = add i64 %3398, -12
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402, align 4
  %3404 = add i32 %3403, 1
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %RAX.i1111, align 8
  %3406 = icmp eq i32 %3403, -1
  %3407 = icmp eq i32 %3404, 0
  %3408 = or i1 %3406, %3407
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %14, align 1
  %3410 = and i32 %3404, 255
  %3411 = tail call i32 @llvm.ctpop.i32(i32 %3410)
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = xor i8 %3413, 1
  store i8 %3414, i8* %21, align 1
  %3415 = xor i32 %3404, %3403
  %3416 = lshr i32 %3415, 4
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  store i8 %3418, i8* %27, align 1
  %3419 = zext i1 %3407 to i8
  store i8 %3419, i8* %30, align 1
  %3420 = lshr i32 %3404, 31
  %3421 = trunc i32 %3420 to i8
  store i8 %3421, i8* %33, align 1
  %3422 = lshr i32 %3403, 31
  %3423 = xor i32 %3420, %3422
  %3424 = add nuw nsw i32 %3423, %3420
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %39, align 1
  %3427 = add i64 %3400, 9
  store i64 %3427, i64* %3, align 8
  store i32 %3404, i32* %3402, align 4
  %3428 = load i64, i64* %3, align 8
  %3429 = add i64 %3428, -52
  store i64 %3429, i64* %3, align 8
  br label %block_.L_401118

block_.L_401151:                                  ; preds = %block_.L_401118
  %3430 = add i64 %3316, -8
  %3431 = add i64 %3344, 8
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3430 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = add i32 %3433, 1
  %3435 = zext i32 %3434 to i64
  store i64 %3435, i64* %RAX.i1111, align 8
  %3436 = icmp eq i32 %3433, -1
  %3437 = icmp eq i32 %3434, 0
  %3438 = or i1 %3436, %3437
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %14, align 1
  %3440 = and i32 %3434, 255
  %3441 = tail call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  store i8 %3444, i8* %21, align 1
  %3445 = xor i32 %3434, %3433
  %3446 = lshr i32 %3445, 4
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  store i8 %3448, i8* %27, align 1
  %3449 = zext i1 %3437 to i8
  store i8 %3449, i8* %30, align 1
  %3450 = lshr i32 %3434, 31
  %3451 = trunc i32 %3450 to i8
  store i8 %3451, i8* %33, align 1
  %3452 = lshr i32 %3433, 31
  %3453 = xor i32 %3450, %3452
  %3454 = add nuw nsw i32 %3453, %3450
  %3455 = icmp eq i32 %3454, 2
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %39, align 1
  %3457 = add i64 %3344, 14
  store i64 %3457, i64* %3, align 8
  store i32 %3434, i32* %3432, align 4
  %3458 = load i64, i64* %3, align 8
  %3459 = add i64 %3458, -88
  store i64 %3459, i64* %3, align 8
  br label %block_.L_401107

block_.L_401164:                                  ; preds = %block_.L_401107
  %3460 = add i64 %3283, -4
  %3461 = add i64 %3311, 8
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i32*
  %3463 = load i32, i32* %3462, align 4
  %3464 = add i32 %3463, 1
  %3465 = zext i32 %3464 to i64
  store i64 %3465, i64* %RAX.i1111, align 8
  %3466 = icmp eq i32 %3463, -1
  %3467 = icmp eq i32 %3464, 0
  %3468 = or i1 %3466, %3467
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %14, align 1
  %3470 = and i32 %3464, 255
  %3471 = tail call i32 @llvm.ctpop.i32(i32 %3470)
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = xor i8 %3473, 1
  store i8 %3474, i8* %21, align 1
  %3475 = xor i32 %3464, %3463
  %3476 = lshr i32 %3475, 4
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  store i8 %3478, i8* %27, align 1
  %3479 = zext i1 %3467 to i8
  store i8 %3479, i8* %30, align 1
  %3480 = lshr i32 %3464, 31
  %3481 = trunc i32 %3480 to i8
  store i8 %3481, i8* %33, align 1
  %3482 = lshr i32 %3463, 31
  %3483 = xor i32 %3480, %3482
  %3484 = add nuw nsw i32 %3483, %3480
  %3485 = icmp eq i32 %3484, 2
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %39, align 1
  %3487 = add i64 %3311, 14
  store i64 %3487, i64* %3, align 8
  store i32 %3464, i32* %3462, align 4
  %3488 = load i64, i64* %3, align 8
  %3489 = add i64 %3488, -124
  store i64 %3489, i64* %3, align 8
  br label %block_.L_4010f6

block_.L_401177:                                  ; preds = %block_.L_4010f6
  %RDI.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 0, i64* %RDI.i82, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i32 3, i32* inttoptr (i64 6394400 to i32*), align 32
  store i32 73, i32* inttoptr (i64 6357632 to i32*), align 128
  store i32 13, i32* inttoptr (i64 6394336 to i32*), align 32
  store i32 3, i32* inttoptr (i64 6394340 to i32*), align 4
  store i32 1, i32* inttoptr (i64 6394344 to i32*), align 8
  store i32 1, i32* inttoptr (i64 6394348 to i32*), align 4
  %3490 = add i64 %3250, -16
  %3491 = add i64 %3278, 75
  store i64 %3491, i64* %3, align 8
  %3492 = inttoptr i64 %3490 to i32*
  store i32 73, i32* %3492, align 4
  %3493 = load i64, i64* %3, align 8
  store i32 0, i32* inttoptr (i64 6394308 to i32*), align 4
  %3494 = load i64, i64* %RBP.i, align 8
  %3495 = add i64 %3494, -16
  %3496 = add i64 %3493, 14
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i32*
  %3498 = load i32, i32* %3497, align 4
  %3499 = zext i32 %3498 to i64
  store i64 %3499, i64* %RSI.i1064, align 8
  %3500 = add i64 %3493, -3154
  %3501 = add i64 %3493, 19
  %3502 = load i64, i64* %6, align 8
  %3503 = add i64 %3502, -8
  %3504 = inttoptr i64 %3503 to i64*
  store i64 %3501, i64* %3504, align 8
  store i64 %3503, i64* %6, align 8
  store i64 %3500, i64* %3, align 8
  %call2_4011d0 = tail call %struct.Memory* @sub_400570.Fit(%struct.State* nonnull %0, i64 %3500, %struct.Memory* %2)
  %3505 = load i32, i32* %EAX.i1101, align 4
  %3506 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3507 = and i32 %3505, 255
  %3508 = tail call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  store i8 %3511, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3512 = icmp eq i32 %3505, 0
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %30, align 1
  %3514 = lshr i32 %3505, 31
  %3515 = trunc i32 %3514 to i8
  store i8 %3515, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v315 = select i1 %3512, i64 31, i64 9
  %3516 = add i64 %3506, %.v315
  store i64 %3516, i64* %3, align 8
  br i1 %3512, label %block_.L_4011f4, label %block_4011de

block_4011de:                                     ; preds = %block_.L_401177
  store i64 0, i64* %RDI.i82, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3517 = load i64, i64* %RBP.i, align 8
  %3518 = add i64 %3517, -16
  %3519 = add i64 %3516, 5
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RSI.i1064, align 8
  %3523 = add i64 %3516, -3038
  %3524 = add i64 %3516, 10
  %3525 = load i64, i64* %6, align 8
  %3526 = add i64 %3525, -8
  %3527 = inttoptr i64 %3526 to i64*
  store i64 %3524, i64* %3527, align 8
  store i64 %3526, i64* %6, align 8
  store i64 %3523, i64* %3, align 8
  %call2_4011e3 = tail call %struct.Memory* @sub_400600.Place(%struct.State* nonnull %0, i64 %3523, %struct.Memory* %call2_4011d0)
  %3528 = load i32, i32* %EAX.i1101, align 4
  %3529 = load i64, i64* %3, align 8
  store i32 %3528, i32* inttoptr (i64 6306452 to i32*), align 4
  %3530 = add i64 %3529, 32
  store i64 %3530, i64* %3, align 8
  br label %block_.L_401208

block_.L_4011f4:                                  ; preds = %block_.L_401177
  store i64 4199268, i64* %RDI.i82, align 8
  %AL.i52 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i52, align 1
  %3531 = add i64 %3516, -3556
  %3532 = add i64 %3516, 17
  %3533 = load i64, i64* %6, align 8
  %3534 = add i64 %3533, -8
  %3535 = inttoptr i64 %3534 to i64*
  store i64 %3532, i64* %3535, align 8
  store i64 %3534, i64* %6, align 8
  store i64 %3531, i64* %3, align 8
  %call2_401200 = tail call %struct.Memory* @sub_400410.printf_plt(%struct.State* nonnull %0, i64 %3531, %struct.Memory* %call2_4011d0)
  %3536 = load i64, i64* %RBP.i, align 8
  %3537 = add i64 %3536, -20
  %3538 = load i32, i32* %EAX.i1101, align 4
  %3539 = load i64, i64* %3, align 8
  %3540 = add i64 %3539, 3
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3537 to i32*
  store i32 %3538, i32* %3541, align 4
  %.pre237 = load i64, i64* %3, align 8
  %.pre238 = load i32, i32* inttoptr (i64 6306452 to i32*), align 4
  br label %block_.L_401208

block_.L_401208:                                  ; preds = %block_.L_4011f4, %block_4011de
  %3542 = phi i32 [ %.pre238, %block_.L_4011f4 ], [ %3528, %block_4011de ]
  %3543 = phi i64 [ %.pre237, %block_.L_4011f4 ], [ %3530, %block_4011de ]
  %MEMORY.45 = phi %struct.Memory* [ %call2_401200, %block_.L_4011f4 ], [ %call2_4011e3, %block_4011de ]
  %3544 = zext i32 %3542 to i64
  store i64 %3544, i64* %RDI.i82, align 8
  %3545 = add i64 %3543, -2680
  %3546 = add i64 %3543, 12
  %3547 = load i64, i64* %6, align 8
  %3548 = add i64 %3547, -8
  %3549 = inttoptr i64 %3548 to i64*
  store i64 %3546, i64* %3549, align 8
  store i64 %3548, i64* %6, align 8
  store i64 %3545, i64* %3, align 8
  %call2_40120f = tail call %struct.Memory* @sub_400790.Trial(%struct.State* nonnull %0, i64 %3545, %struct.Memory* %MEMORY.45)
  %3550 = load i32, i32* %EAX.i1101, align 4
  %3551 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3552 = and i32 %3550, 255
  %3553 = tail call i32 @llvm.ctpop.i32(i32 %3552)
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  %3556 = xor i8 %3555, 1
  store i8 %3556, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3557 = icmp eq i32 %3550, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %30, align 1
  %3559 = lshr i32 %3550, 31
  %3560 = trunc i32 %3559 to i8
  store i8 %3560, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v316 = select i1 %3557, i64 9, i64 34
  %3561 = add i64 %3551, %.v316
  store i64 %3561, i64* %3, align 8
  br i1 %3557, label %block_40121d, label %block_.L_401236

block_40121d:                                     ; preds = %block_.L_401208
  store i64 4199286, i64* %RDI.i82, align 8
  %AL.i38 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i38, align 1
  %3562 = add i64 %3561, -3597
  %3563 = add i64 %3561, 17
  %3564 = load i64, i64* %6, align 8
  %3565 = add i64 %3564, -8
  %3566 = inttoptr i64 %3565 to i64*
  store i64 %3563, i64* %3566, align 8
  store i64 %3565, i64* %6, align 8
  store i64 %3562, i64* %3, align 8
  %call2_401229 = tail call %struct.Memory* @sub_400410.printf_plt(%struct.State* nonnull %0, i64 %3562, %struct.Memory* %call2_40120f)
  %3567 = load i64, i64* %RBP.i, align 8
  %3568 = add i64 %3567, -24
  %3569 = load i32, i32* %EAX.i1101, align 4
  %3570 = load i64, i64* %3, align 8
  %3571 = add i64 %3570, 3
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3568 to i32*
  store i32 %3569, i32* %3572, align 4
  %3573 = load i64, i64* %3, align 8
  %3574 = add i64 %3573, 47
  br label %block_.L_401260

block_.L_401236:                                  ; preds = %block_.L_401208
  %3575 = load i32, i32* inttoptr (i64 6394308 to i32*), align 4
  %3576 = add i32 %3575, -2005
  %3577 = icmp ult i32 %3575, 2005
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %14, align 1
  %3579 = and i32 %3576, 255
  %3580 = tail call i32 @llvm.ctpop.i32(i32 %3579)
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  %3583 = xor i8 %3582, 1
  store i8 %3583, i8* %21, align 1
  %3584 = xor i32 %3575, 16
  %3585 = xor i32 %3584, %3576
  %3586 = lshr i32 %3585, 4
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  store i8 %3588, i8* %27, align 1
  %3589 = icmp eq i32 %3576, 0
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %30, align 1
  %3591 = lshr i32 %3576, 31
  %3592 = trunc i32 %3591 to i8
  store i8 %3592, i8* %33, align 1
  %3593 = lshr i32 %3575, 31
  %3594 = xor i32 %3591, %3593
  %3595 = add nuw nsw i32 %3594, %3593
  %3596 = icmp eq i32 %3595, 2
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %39, align 1
  %.v317 = select i1 %3589, i64 37, i64 17
  %3598 = add i64 %3561, %.v317
  store i64 %3598, i64* %3, align 8
  br i1 %3589, label %block_.L_401236.block_.L_40125b_crit_edge, label %block_401247

block_.L_401236.block_.L_40125b_crit_edge:        ; preds = %block_.L_401236
  %.pre241 = bitcast %union.anon* %43 to i8*
  br label %block_.L_40125b

block_401247:                                     ; preds = %block_.L_401236
  store i64 4199305, i64* %RDI.i82, align 8
  %AL.i27 = bitcast %union.anon* %43 to i8*
  store i8 0, i8* %AL.i27, align 1
  %3599 = add i64 %3598, -3639
  %3600 = add i64 %3598, 17
  %3601 = load i64, i64* %6, align 8
  %3602 = add i64 %3601, -8
  %3603 = inttoptr i64 %3602 to i64*
  store i64 %3600, i64* %3603, align 8
  store i64 %3602, i64* %6, align 8
  store i64 %3599, i64* %3, align 8
  %call2_401253 = tail call %struct.Memory* @sub_400410.printf_plt(%struct.State* nonnull %0, i64 %3599, %struct.Memory* %call2_40120f)
  %3604 = load i64, i64* %RBP.i, align 8
  %3605 = add i64 %3604, -28
  %3606 = load i32, i32* %EAX.i1101, align 4
  %3607 = load i64, i64* %3, align 8
  %3608 = add i64 %3607, 3
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3605 to i32*
  store i32 %3606, i32* %3609, align 4
  %.pre239 = load i64, i64* %3, align 8
  br label %block_.L_40125b

block_.L_40125b:                                  ; preds = %block_.L_401236.block_.L_40125b_crit_edge, %block_401247
  %.pre240.pre-phi = phi i8* [ %.pre241, %block_.L_401236.block_.L_40125b_crit_edge ], [ %AL.i27, %block_401247 ]
  %3610 = phi i64 [ %3598, %block_.L_401236.block_.L_40125b_crit_edge ], [ %.pre239, %block_401247 ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_40120f, %block_.L_401236.block_.L_40125b_crit_edge ], [ %call2_401253, %block_401247 ]
  %3611 = add i64 %3610, 5
  store i64 %3611, i64* %3, align 8
  br label %block_.L_401260

block_.L_401260:                                  ; preds = %block_.L_40125b, %block_40121d
  %AL.i16.pre-phi = phi i8* [ %.pre240.pre-phi, %block_.L_40125b ], [ %AL.i38, %block_40121d ]
  %storemerge = phi i64 [ %3611, %block_.L_40125b ], [ %3574, %block_40121d ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_40125b ], [ %call2_401229, %block_40121d ]
  store i64 4199324, i64* %RDI.i82, align 8
  %3612 = load i32, i32* inttoptr (i64 6306452 to i32*), align 4
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RSI.i1064, align 8
  store i8 0, i8* %AL.i16.pre-phi, align 1
  %3614 = add i64 %storemerge, -3664
  %3615 = add i64 %storemerge, 24
  %3616 = load i64, i64* %6, align 8
  %3617 = add i64 %3616, -8
  %3618 = inttoptr i64 %3617 to i64*
  store i64 %3615, i64* %3618, align 8
  store i64 %3617, i64* %6, align 8
  store i64 %3614, i64* %3, align 8
  %call2_401273 = tail call %struct.Memory* @sub_400410.printf_plt(%struct.State* nonnull %0, i64 %3614, %struct.Memory* %MEMORY.47)
  %3619 = load i64, i64* %3, align 8
  store i64 4199324, i64* %RDI.i82, align 8
  %3620 = load i32, i32* inttoptr (i64 6394308 to i32*), align 4
  %3621 = zext i32 %3620 to i64
  store i64 %3621, i64* %RSI.i1064, align 8
  %3622 = load i64, i64* %RBP.i, align 8
  %3623 = add i64 %3622, -32
  %3624 = load i32, i32* %EAX.i1101, align 4
  %3625 = add i64 %3619, 20
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3623 to i32*
  store i32 %3624, i32* %3626, align 4
  %3627 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i16.pre-phi, align 1
  %3628 = add i64 %3627, -3708
  %3629 = add i64 %3627, 7
  %3630 = load i64, i64* %6, align 8
  %3631 = add i64 %3630, -8
  %3632 = inttoptr i64 %3631 to i64*
  store i64 %3629, i64* %3632, align 8
  store i64 %3631, i64* %6, align 8
  store i64 %3628, i64* %3, align 8
  %call2_40128e = tail call %struct.Memory* @sub_400410.printf_plt(%struct.State* nonnull %0, i64 %3628, %struct.Memory* %call2_401273)
  %3633 = load i64, i64* %RBP.i, align 8
  %3634 = add i64 %3633, -36
  %3635 = load i32, i32* %EAX.i1101, align 4
  %3636 = load i64, i64* %3, align 8
  %3637 = add i64 %3636, 3
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3634 to i32*
  store i32 %3635, i32* %3638, align 4
  %3639 = load i64, i64* %6, align 8
  %3640 = load i64, i64* %3, align 8
  %3641 = add i64 %3639, 48
  store i64 %3641, i64* %6, align 8
  %3642 = icmp ugt i64 %3639, -49
  %3643 = zext i1 %3642 to i8
  store i8 %3643, i8* %14, align 1
  %3644 = trunc i64 %3641 to i32
  %3645 = and i32 %3644, 255
  %3646 = tail call i32 @llvm.ctpop.i32(i32 %3645)
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  %3649 = xor i8 %3648, 1
  store i8 %3649, i8* %21, align 1
  %3650 = xor i64 %3639, 16
  %3651 = xor i64 %3650, %3641
  %3652 = lshr i64 %3651, 4
  %3653 = trunc i64 %3652 to i8
  %3654 = and i8 %3653, 1
  store i8 %3654, i8* %27, align 1
  %3655 = icmp eq i64 %3641, 0
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %30, align 1
  %3657 = lshr i64 %3641, 63
  %3658 = trunc i64 %3657 to i8
  store i8 %3658, i8* %33, align 1
  %3659 = lshr i64 %3639, 63
  %3660 = xor i64 %3657, %3659
  %3661 = add nuw nsw i64 %3660, %3657
  %3662 = icmp eq i64 %3661, 2
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %39, align 1
  %3664 = add i64 %3640, 5
  store i64 %3664, i64* %3, align 8
  %3665 = add i64 %3639, 56
  %3666 = inttoptr i64 %3641 to i64*
  %3667 = load i64, i64* %3666, align 8
  store i64 %3667, i64* %RBP.i, align 8
  store i64 %3665, i64* %6, align 8
  %3668 = add i64 %3640, 6
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3665 to i64*
  %3670 = load i64, i64* %3669, align 8
  store i64 %3670, i64* %3, align 8
  %3671 = add i64 %3639, 64
  store i64 %3671, i64* %6, align 8
  ret %struct.Memory* %call2_40128e
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -511
  %10 = icmp ult i32 %8, 511
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
define %struct.Memory* @routine_jg_.L_400899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__0x1__0x60df50___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40086f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400921(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jg_.L_40090e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_4008fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
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
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_shll__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
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
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x0__0x60df50___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6348624
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
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
define %struct.Memory* @routine_jmpq_.L_4008c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400900(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400913(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_jg_.L_400987(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x603aa0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6306464, i64* %RAX, align 8
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
define %struct.Memory* @routine_shlq__0xb___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 11
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 53
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 52
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400979(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400928(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400a0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jg_.L_4009fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_4009e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x603aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6306464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4009ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40099f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40098e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394352 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb__0x610250(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 11, i32* inttoptr (i64 6357584 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400aad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jg_.L_400a9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400a87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6042a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6308512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394356 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc1__0x610254(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 193, i32* inttoptr (i64 6357588 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400b4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400b38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_400b25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x604aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6310560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400aec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400adb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400aca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394360 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x58__0x610258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 88, i32* inttoptr (i64 6357592 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400be9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400bd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6052a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6312608
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394364 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x19__0x61025c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 25, i32* inttoptr (i64 6357596 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400c87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400c74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x605aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6314656
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x619200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394368 to i32*), align 512
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x43__0x610260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 67, i32* inttoptr (i64 6357600 to i32*), align 32
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400d25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400d12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6062a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6316704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ca4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x619204(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394372 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x610264(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* inttoptr (i64 6357604 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jg_.L_400dc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400db0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400d9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x606aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6318752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400da2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400db5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x619208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6394376 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x610268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6357608 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400e61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jg_.L_400e4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400e3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6072a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6320800
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400df1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400de0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x61920c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6394380 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10__0x61026c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 16, i32* inttoptr (i64 6357612 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400eff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jg_.L_400ed9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x607aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6322848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ea0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ef1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x619210(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6394384 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x80__0x610270(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 128, i32* inttoptr (i64 6357616 to i32*), align 16
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400f9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400f8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_400f77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6082a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6324896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x619214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6394388 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9__0x610274(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 9, i32* inttoptr (i64 6357620 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40103b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401015(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x608aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6326944
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40101a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40102d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x619218(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6394392 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41__0x610278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 65, i32* inttoptr (i64 6357624 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4010d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4010c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4010b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x6092a0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6328992
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40107a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x61921c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* inttoptr (i64 6394396 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x48__0x61027c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 72, i32* inttoptr (i64 6357628 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_401177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_401151(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x609aa0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6331040
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401118(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401156(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401169(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_movl__0x3__0x619220(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* inttoptr (i64 6394400 to i32*), align 32
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x49__0x610280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 73, i32* inttoptr (i64 6357632 to i32*), align 128
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x6191e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* inttoptr (i64 6394336 to i32*), align 32
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x6191e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* inttoptr (i64 6394340 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x6191e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6394344 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x6191ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 6394348 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x49__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 73, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x6191c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 6394308 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_callq_.Fit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4011f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Place(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x603a94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6306452 to i32*), align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x401364___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199268, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x603a94___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6306452 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Trial(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401236(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401376___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199286, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7d5__0x6191c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6394308 to i32*), align 4
  %6 = add i32 %5, -2005
  %7 = icmp ult i32 %5, 2005
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40125b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x401389___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199305, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x40139c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199324, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x603a94___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6306452 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6191c4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6394308 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
